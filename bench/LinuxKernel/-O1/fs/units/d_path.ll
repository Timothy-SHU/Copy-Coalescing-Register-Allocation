; ModuleID = 'fs/d_path.c'
source_filename = "fs/d_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_d_path: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad d_path ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dentry_path_raw: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dentry_path_raw ; .previous"

%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pcpu_hot = type { %union.anon.29 }
%union.anon.29 = type { %struct.anon.30, [16 x i8] }
%struct.anon.30 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.prepend_buffer = type { ptr, i32 }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.23, %struct.list_head, %struct.list_head, %union.anon.24 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.19, ptr }
%union.anon.19 = type { i64 }
%struct.lockref = type { %union.anon.21 }
%union.anon.21 = type { i64 }
%union.anon.23 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.24 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8] }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
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
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.anon.20 = type { i32, i32 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.25, i64, i64, %union.anon.26 }
%union.anon.25 = type { i64 }
%union.anon.26 = type { i64 }
%struct.mount = type { %struct.hlist_node, ptr, ptr, %struct.vfsmount, %union.anon.27, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %union.anon.28, %struct.list_head, ptr, i32, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%union.anon.27 = type { %struct.callback_head }
%union.anon.28 = type { %struct.hlist_node }
%struct.hlist_head = type { ptr }
%struct.mnt_namespace = type { %struct.ns_common, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@.str = private unnamed_addr constant [11 x i8] c" (deleted)\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_d_path323 = internal global ptr @d_path, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_dentry_path_raw324 = internal global ptr @dentry_path_raw, section ".discard.addressable", align 8, !dbg !5888
@.str.1 = private unnamed_addr constant [10 x i8] c"//deleted\00", align 1, !dbg !5890
@mount_lock = external dso_local global %struct.seqlock_t, align 4
@rename_lock = external dso_local global %struct.seqlock_t, align 4
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@names_cachep = external dso_local global ptr, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"(unreachable)\00", align 1, !dbg !5893
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !5896
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_d_path323, ptr @__UNIQUE_ID___addressable_dentry_path_raw324], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__d_path(ptr noundef %path, ptr noundef %root, ptr noundef %buf, i32 noundef %buflen) #0 align 16 !dbg !5911 {
entry:
  %retval = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i32, align 4
  %b = alloca %struct.prepend_buffer, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !5915, metadata !DIExpression()), !dbg !5924
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5916, metadata !DIExpression()), !dbg !5925
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5917, metadata !DIExpression()), !dbg !5926
  store i32 %buflen, ptr %buflen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !5918, metadata !DIExpression()), !dbg !5927
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #14, !dbg !5928
  call void @llvm.dbg.declare(metadata ptr %b, metadata !5919, metadata !DIExpression()), !dbg !5928
  %buf1 = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 0, !dbg !5928
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5928
  %1 = load i32, ptr %buflen.addr, align 4, !dbg !5928
  %idx.ext = sext i32 %1 to i64, !dbg !5928
  %add.ptr = getelementptr i8, ptr %0, i64 %idx.ext, !dbg !5928
  store ptr %add.ptr, ptr %buf1, align 8, !dbg !5928
  %len = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 1, !dbg !5928
  %2 = load i32, ptr %buflen.addr, align 4, !dbg !5928
  store i32 %2, ptr %len, align 8, !dbg !5928
  %call = call zeroext i1 @prepend_char(ptr noundef %b, i8 noundef zeroext 0) #15, !dbg !5929
  %3 = load ptr, ptr %path.addr, align 8, !dbg !5930
  %4 = load ptr, ptr %root.addr, align 8, !dbg !5930
  %call2 = call i32 @prepend_path(ptr noundef %3, ptr noundef %4, ptr noundef %b) #15, !dbg !5930
  %cmp = icmp sgt i32 %call2, 0, !dbg !5930
  %lnot = xor i1 %cmp, true, !dbg !5930
  %lnot3 = xor i1 %lnot, true, !dbg !5930
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5930
  %conv = sext i32 %lnot.ext to i64, !dbg !5930
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5930
  %tobool = icmp ne i64 %expval, 0, !dbg !5930
  br i1 %tobool, label %if.then, label %if.end, !dbg !5932

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5933

if.end:                                           ; preds = %entry
  %call4 = call ptr @extract_string(ptr noundef %b) #15, !dbg !5934
  store ptr %call4, ptr %retval, align 8, !dbg !5935
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5935

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #14, !dbg !5936
  %5 = load ptr, ptr %retval, align 8, !dbg !5936
  ret ptr %5, !dbg !5936
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @prepend_char(ptr noundef %p, i8 noundef zeroext %c) #0 align 16 !dbg !5937 {
entry:
  %retval = alloca i1, align 1
  %p.addr = alloca ptr, align 8
  %c.addr = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5942, metadata !DIExpression()), !dbg !5944
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !5943, metadata !DIExpression()), !dbg !5945
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5946
  %len = getelementptr inbounds %struct.prepend_buffer, ptr %0, i32 0, i32 1, !dbg !5946
  %1 = load i32, ptr %len, align 8, !dbg !5946
  %cmp = icmp sgt i32 %1, 0, !dbg !5946
  %lnot = xor i1 %cmp, true, !dbg !5946
  %lnot1 = xor i1 %lnot, true, !dbg !5946
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5946
  %conv = sext i32 %lnot.ext to i64, !dbg !5946
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5946
  %tobool = icmp ne i64 %expval, 0, !dbg !5946
  br i1 %tobool, label %if.then, label %if.end, !dbg !5948

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !5949
  %len2 = getelementptr inbounds %struct.prepend_buffer, ptr %2, i32 0, i32 1, !dbg !5951
  %3 = load i32, ptr %len2, align 8, !dbg !5952
  %dec = add i32 %3, -1, !dbg !5952
  store i32 %dec, ptr %len2, align 8, !dbg !5952
  %4 = load i8, ptr %c.addr, align 1, !dbg !5953
  %5 = load ptr, ptr %p.addr, align 8, !dbg !5954
  %buf = getelementptr inbounds %struct.prepend_buffer, ptr %5, i32 0, i32 0, !dbg !5955
  %6 = load ptr, ptr %buf, align 8, !dbg !5956
  %incdec.ptr = getelementptr i8, ptr %6, i32 -1, !dbg !5956
  store ptr %incdec.ptr, ptr %buf, align 8, !dbg !5956
  store i8 %4, ptr %incdec.ptr, align 1, !dbg !5957
  store i1 true, ptr %retval, align 1, !dbg !5958
  br label %return, !dbg !5958

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %p.addr, align 8, !dbg !5959
  %len3 = getelementptr inbounds %struct.prepend_buffer, ptr %7, i32 0, i32 1, !dbg !5960
  store i32 -1, ptr %len3, align 8, !dbg !5961
  store i1 false, ptr %retval, align 1, !dbg !5962
  br label %return, !dbg !5962

return:                                           ; preds = %if.end, %if.then
  %8 = load i1, ptr %retval, align 1, !dbg !5963
  ret i1 %8, !dbg !5963
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @prepend_path(ptr noundef %path, ptr noundef %root, ptr noundef %p) #0 align 16 !dbg !5964 {
entry:
  %path.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %seq = alloca i32, align 4
  %m_seq = alloca i32, align 4
  %b = alloca %struct.prepend_buffer, align 8
  %error = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !5968, metadata !DIExpression()), !dbg !5977
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5969, metadata !DIExpression()), !dbg !5978
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5970, metadata !DIExpression()), !dbg !5979
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #14, !dbg !5980
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !5971, metadata !DIExpression()), !dbg !5981
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_seq) #14, !dbg !5980
  call void @llvm.dbg.declare(metadata ptr %m_seq, metadata !5972, metadata !DIExpression()), !dbg !5982
  store i32 0, ptr %m_seq, align 4, !dbg !5982
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #14, !dbg !5983
  call void @llvm.dbg.declare(metadata ptr %b, metadata !5973, metadata !DIExpression()), !dbg !5984
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #14, !dbg !5985
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5974, metadata !DIExpression()), !dbg !5986
  call void @rcu_read_lock() #15, !dbg !5987
  br label %restart_mnt, !dbg !5987

restart_mnt:                                      ; preds = %if.then12, %entry
  call void @llvm.dbg.label(metadata !5975), !dbg !5988
  call void @read_seqbegin_or_lock(ptr noundef @mount_lock, ptr noundef %m_seq) #15, !dbg !5989
  store i32 0, ptr %seq, align 4, !dbg !5990
  call void @rcu_read_lock() #15, !dbg !5991
  br label %restart, !dbg !5991

restart:                                          ; preds = %if.then4, %restart_mnt
  call void @llvm.dbg.label(metadata !5976), !dbg !5992
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5993
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %b, ptr align 8 %0, i64 16, i1 false), !dbg !5994
  call void @read_seqbegin_or_lock(ptr noundef @rename_lock, ptr noundef %seq) #15, !dbg !5995
  %1 = load ptr, ptr %path.addr, align 8, !dbg !5996
  %dentry = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1, !dbg !5997
  %2 = load ptr, ptr %dentry, align 8, !dbg !5997
  %3 = load ptr, ptr %path.addr, align 8, !dbg !5998
  %mnt = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 0, !dbg !5999
  %4 = load ptr, ptr %mnt, align 8, !dbg !5999
  %call = call ptr @real_mount(ptr noundef %4) #15, !dbg !6000
  %5 = load ptr, ptr %root.addr, align 8, !dbg !6001
  %call1 = call i32 @__prepend_path(ptr noundef %2, ptr noundef %call, ptr noundef %5, ptr noundef %b) #15, !dbg !6002
  store i32 %call1, ptr %error, align 4, !dbg !6003
  %6 = load i32, ptr %seq, align 4, !dbg !6004
  %and = and i32 %6, 1, !dbg !6006
  %tobool = icmp ne i32 %and, 0, !dbg !6006
  br i1 %tobool, label %if.end, label %if.then, !dbg !6007

if.then:                                          ; preds = %restart
  call void @rcu_read_unlock() #15, !dbg !6008
  br label %if.end, !dbg !6008

if.end:                                           ; preds = %if.then, %restart
  %7 = load i32, ptr %seq, align 4, !dbg !6009
  %call2 = call i32 @need_seqretry(ptr noundef @rename_lock, i32 noundef %7) #15, !dbg !6011
  %tobool3 = icmp ne i32 %call2, 0, !dbg !6011
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6012

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %seq, align 4, !dbg !6013
  br label %restart, !dbg !6015

if.end5:                                          ; preds = %if.end
  %8 = load i32, ptr %seq, align 4, !dbg !6016
  call void @done_seqretry(ptr noundef @rename_lock, i32 noundef %8) #15, !dbg !6017
  %9 = load i32, ptr %m_seq, align 4, !dbg !6018
  %and6 = and i32 %9, 1, !dbg !6020
  %tobool7 = icmp ne i32 %and6, 0, !dbg !6020
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !6021

if.then8:                                         ; preds = %if.end5
  call void @rcu_read_unlock() #15, !dbg !6022
  br label %if.end9, !dbg !6022

if.end9:                                          ; preds = %if.then8, %if.end5
  %10 = load i32, ptr %m_seq, align 4, !dbg !6023
  %call10 = call i32 @need_seqretry(ptr noundef @mount_lock, i32 noundef %10) #15, !dbg !6025
  %tobool11 = icmp ne i32 %call10, 0, !dbg !6025
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !6026

if.then12:                                        ; preds = %if.end9
  store i32 1, ptr %m_seq, align 4, !dbg !6027
  br label %restart_mnt, !dbg !6029

if.end13:                                         ; preds = %if.end9
  %11 = load i32, ptr %m_seq, align 4, !dbg !6030
  call void @done_seqretry(ptr noundef @mount_lock, i32 noundef %11) #15, !dbg !6031
  %12 = load i32, ptr %error, align 4, !dbg !6032
  %cmp = icmp eq i32 %12, 3, !dbg !6032
  %lnot = xor i1 %cmp, true, !dbg !6032
  %lnot14 = xor i1 %lnot, true, !dbg !6032
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6032
  %conv = sext i32 %lnot.ext to i64, !dbg !6032
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6032
  %tobool15 = icmp ne i64 %expval, 0, !dbg !6032
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6034

if.then16:                                        ; preds = %if.end13
  %13 = load ptr, ptr %p.addr, align 8, !dbg !6035
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %b, ptr align 8 %13, i64 16, i1 false), !dbg !6036
  br label %if.end17, !dbg !6037

if.end17:                                         ; preds = %if.then16, %if.end13
  %len = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 1, !dbg !6038
  %14 = load i32, ptr %len, align 8, !dbg !6038
  %15 = load ptr, ptr %p.addr, align 8, !dbg !6040
  %len18 = getelementptr inbounds %struct.prepend_buffer, ptr %15, i32 0, i32 1, !dbg !6041
  %16 = load i32, ptr %len18, align 8, !dbg !6041
  %cmp19 = icmp eq i32 %14, %16, !dbg !6042
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !6043

if.then21:                                        ; preds = %if.end17
  %call22 = call zeroext i1 @prepend_char(ptr noundef %b, i8 noundef zeroext 47) #15, !dbg !6044
  br label %if.end23, !dbg !6044

if.end23:                                         ; preds = %if.then21, %if.end17
  %17 = load ptr, ptr %p.addr, align 8, !dbg !6045
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %17, ptr align 8 %b, i64 16, i1 false), !dbg !6046
  %18 = load i32, ptr %error, align 4, !dbg !6047
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #14, !dbg !6048
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #14, !dbg !6048
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_seq) #14, !dbg !6048
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #14, !dbg !6048
  ret i32 %18, !dbg !6049
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @extract_string(ptr noundef %p) #0 align 16 !dbg !6050 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6054, metadata !DIExpression()), !dbg !6055
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6056
  %len = getelementptr inbounds %struct.prepend_buffer, ptr %0, i32 0, i32 1, !dbg !6056
  %1 = load i32, ptr %len, align 8, !dbg !6056
  %cmp = icmp sge i32 %1, 0, !dbg !6056
  %lnot = xor i1 %cmp, true, !dbg !6056
  %lnot1 = xor i1 %lnot, true, !dbg !6056
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6056
  %conv = sext i32 %lnot.ext to i64, !dbg !6056
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6056
  %tobool = icmp ne i64 %expval, 0, !dbg !6056
  br i1 %tobool, label %if.then, label %if.end, !dbg !6058

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !6059
  %buf = getelementptr inbounds %struct.prepend_buffer, ptr %2, i32 0, i32 0, !dbg !6060
  %3 = load ptr, ptr %buf, align 8, !dbg !6060
  store ptr %3, ptr %retval, align 8, !dbg !6061
  br label %return, !dbg !6061

if.end:                                           ; preds = %entry
  %call = call ptr @ERR_PTR(i64 noundef -36) #15, !dbg !6062
  store ptr %call, ptr %retval, align 8, !dbg !6063
  br label %return, !dbg !6063

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8, !dbg !6064
  ret ptr %4, !dbg !6064
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @d_absolute_path(ptr noundef %path, ptr noundef %buf, i32 noundef %buflen) #0 align 16 !dbg !6065 {
entry:
  %retval = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i32, align 4
  %root = alloca %struct.path, align 8
  %b = alloca %struct.prepend_buffer, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6069, metadata !DIExpression()), !dbg !6074
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6070, metadata !DIExpression()), !dbg !6075
  store i32 %buflen, ptr %buflen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !6071, metadata !DIExpression()), !dbg !6076
  call void @llvm.lifetime.start.p0(i64 16, ptr %root) #14, !dbg !6077
  call void @llvm.dbg.declare(metadata ptr %root, metadata !6072, metadata !DIExpression()), !dbg !6078
  call void @llvm.memset.p0.i64(ptr align 8 %root, i8 0, i64 16, i1 false), !dbg !6078
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #14, !dbg !6079
  call void @llvm.dbg.declare(metadata ptr %b, metadata !6073, metadata !DIExpression()), !dbg !6079
  %buf1 = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 0, !dbg !6079
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6079
  %1 = load i32, ptr %buflen.addr, align 4, !dbg !6079
  %idx.ext = sext i32 %1 to i64, !dbg !6079
  %add.ptr = getelementptr i8, ptr %0, i64 %idx.ext, !dbg !6079
  store ptr %add.ptr, ptr %buf1, align 8, !dbg !6079
  %len = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 1, !dbg !6079
  %2 = load i32, ptr %buflen.addr, align 4, !dbg !6079
  store i32 %2, ptr %len, align 8, !dbg !6079
  %call = call zeroext i1 @prepend_char(ptr noundef %b, i8 noundef zeroext 0) #15, !dbg !6080
  %3 = load ptr, ptr %path.addr, align 8, !dbg !6081
  %call2 = call i32 @prepend_path(ptr noundef %3, ptr noundef %root, ptr noundef %b) #15, !dbg !6081
  %cmp = icmp sgt i32 %call2, 1, !dbg !6081
  %lnot = xor i1 %cmp, true, !dbg !6081
  %lnot3 = xor i1 %lnot, true, !dbg !6081
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6081
  %conv = sext i32 %lnot.ext to i64, !dbg !6081
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6081
  %tobool = icmp ne i64 %expval, 0, !dbg !6081
  br i1 %tobool, label %if.then, label %if.end, !dbg !6083

if.then:                                          ; preds = %entry
  %call4 = call ptr @ERR_PTR(i64 noundef -22) #15, !dbg !6084
  store ptr %call4, ptr %retval, align 8, !dbg !6085
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6085

if.end:                                           ; preds = %entry
  %call5 = call ptr @extract_string(ptr noundef %b) #15, !dbg !6086
  store ptr %call5, ptr %retval, align 8, !dbg !6087
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6087

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #14, !dbg !6088
  call void @llvm.lifetime.end.p0(i64 16, ptr %root) #14, !dbg !6088
  %4 = load ptr, ptr %retval, align 8, !dbg !6088
  ret ptr %4, !dbg !6088
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !6089 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6094, metadata !DIExpression()), !dbg !6095
  %0 = load i64, ptr %error.addr, align 8, !dbg !6096
  %1 = inttoptr i64 %0 to ptr, !dbg !6097
  ret ptr %1, !dbg !6098
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @d_path(ptr noundef %path, ptr noundef %buf, i32 noundef %buflen) #0 align 16 !dbg !6099 {
entry:
  %retval = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i32, align 4
  %b = alloca %struct.prepend_buffer, align 8
  %root = alloca %struct.path, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !6101, metadata !DIExpression()), !dbg !6106
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6102, metadata !DIExpression()), !dbg !6107
  store i32 %buflen, ptr %buflen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !6103, metadata !DIExpression()), !dbg !6108
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #14, !dbg !6109
  call void @llvm.dbg.declare(metadata ptr %b, metadata !6104, metadata !DIExpression()), !dbg !6109
  %buf1 = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 0, !dbg !6109
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6109
  %1 = load i32, ptr %buflen.addr, align 4, !dbg !6109
  %idx.ext = sext i32 %1 to i64, !dbg !6109
  %add.ptr = getelementptr i8, ptr %0, i64 %idx.ext, !dbg !6109
  store ptr %add.ptr, ptr %buf1, align 8, !dbg !6109
  %len = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 1, !dbg !6109
  %2 = load i32, ptr %buflen.addr, align 4, !dbg !6109
  store i32 %2, ptr %len, align 8, !dbg !6109
  call void @llvm.lifetime.start.p0(i64 16, ptr %root) #14, !dbg !6110
  call void @llvm.dbg.declare(metadata ptr %root, metadata !6105, metadata !DIExpression()), !dbg !6111
  %3 = load ptr, ptr %path.addr, align 8, !dbg !6112
  %dentry = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1, !dbg !6114
  %4 = load ptr, ptr %dentry, align 8, !dbg !6114
  %d_op = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 8, !dbg !6115
  %5 = load ptr, ptr %d_op, align 8, !dbg !6115
  %tobool = icmp ne ptr %5, null, !dbg !6112
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6116

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %path.addr, align 8, !dbg !6117
  %dentry2 = getelementptr inbounds %struct.path, ptr %6, i32 0, i32 1, !dbg !6118
  %7 = load ptr, ptr %dentry2, align 8, !dbg !6118
  %d_op3 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 8, !dbg !6119
  %8 = load ptr, ptr %d_op3, align 8, !dbg !6119
  %d_dname = getelementptr inbounds %struct.dentry_operations, ptr %8, i32 0, i32 9, !dbg !6120
  %9 = load ptr, ptr %d_dname, align 8, !dbg !6120
  %tobool4 = icmp ne ptr %9, null, !dbg !6117
  br i1 %tobool4, label %land.lhs.true5, label %if.end, !dbg !6121

land.lhs.true5:                                   ; preds = %land.lhs.true
  %10 = load ptr, ptr %path.addr, align 8, !dbg !6122
  %dentry6 = getelementptr inbounds %struct.path, ptr %10, i32 0, i32 1, !dbg !6122
  %11 = load ptr, ptr %dentry6, align 8, !dbg !6122
  %12 = load ptr, ptr %path.addr, align 8, !dbg !6122
  %dentry7 = getelementptr inbounds %struct.path, ptr %12, i32 0, i32 1, !dbg !6122
  %13 = load ptr, ptr %dentry7, align 8, !dbg !6122
  %d_parent = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 3, !dbg !6122
  %14 = load ptr, ptr %d_parent, align 8, !dbg !6122
  %cmp = icmp eq ptr %11, %14, !dbg !6122
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !6123

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %15 = load ptr, ptr %path.addr, align 8, !dbg !6124
  %dentry8 = getelementptr inbounds %struct.path, ptr %15, i32 0, i32 1, !dbg !6125
  %16 = load ptr, ptr %dentry8, align 8, !dbg !6125
  %17 = load ptr, ptr %path.addr, align 8, !dbg !6126
  %mnt = getelementptr inbounds %struct.path, ptr %17, i32 0, i32 0, !dbg !6127
  %18 = load ptr, ptr %mnt, align 8, !dbg !6127
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %18, i32 0, i32 0, !dbg !6128
  %19 = load ptr, ptr %mnt_root, align 8, !dbg !6128
  %cmp9 = icmp ne ptr %16, %19, !dbg !6129
  br i1 %cmp9, label %if.then, label %if.end, !dbg !6130

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true5
  %20 = load ptr, ptr %path.addr, align 8, !dbg !6131
  %dentry10 = getelementptr inbounds %struct.path, ptr %20, i32 0, i32 1, !dbg !6132
  %21 = load ptr, ptr %dentry10, align 8, !dbg !6132
  %d_op11 = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 8, !dbg !6133
  %22 = load ptr, ptr %d_op11, align 8, !dbg !6133
  %d_dname12 = getelementptr inbounds %struct.dentry_operations, ptr %22, i32 0, i32 9, !dbg !6134
  %23 = load ptr, ptr %d_dname12, align 8, !dbg !6134
  %24 = load ptr, ptr %path.addr, align 8, !dbg !6135
  %dentry13 = getelementptr inbounds %struct.path, ptr %24, i32 0, i32 1, !dbg !6136
  %25 = load ptr, ptr %dentry13, align 8, !dbg !6136
  %26 = load ptr, ptr %buf.addr, align 8, !dbg !6137
  %27 = load i32, ptr %buflen.addr, align 4, !dbg !6138
  %call = call ptr %23(ptr noundef %25, ptr noundef %26, i32 noundef %27) #15, !dbg !6131
  store ptr %call, ptr %retval, align 8, !dbg !6139
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6139

if.end:                                           ; preds = %lor.lhs.false, %land.lhs.true, %entry
  call void @rcu_read_lock() #15, !dbg !6140
  %call14 = call ptr @get_current() #15, !dbg !6141
  %fs = getelementptr inbounds %struct.task_struct, ptr %call14, i32 0, i32 100, !dbg !6142
  %28 = load ptr, ptr %fs, align 32, !dbg !6142
  call void @get_fs_root_rcu(ptr noundef %28, ptr noundef %root) #15, !dbg !6143
  %29 = load ptr, ptr %path.addr, align 8, !dbg !6144
  %dentry15 = getelementptr inbounds %struct.path, ptr %29, i32 0, i32 1, !dbg !6144
  %30 = load ptr, ptr %dentry15, align 8, !dbg !6144
  %call16 = call i32 @d_unlinked(ptr noundef %30) #15, !dbg !6144
  %tobool17 = icmp ne i32 %call16, 0, !dbg !6144
  %lnot = xor i1 %tobool17, true, !dbg !6144
  %lnot18 = xor i1 %lnot, true, !dbg !6144
  %lnot.ext = zext i1 %lnot18 to i32, !dbg !6144
  %conv = sext i32 %lnot.ext to i64, !dbg !6144
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6144
  %tobool19 = icmp ne i64 %expval, 0, !dbg !6144
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !6146

if.then20:                                        ; preds = %if.end
  %call21 = call zeroext i1 @prepend(ptr noundef %b, ptr noundef @.str, i32 noundef 11) #15, !dbg !6147
  br label %if.end23, !dbg !6147

if.else:                                          ; preds = %if.end
  %call22 = call zeroext i1 @prepend_char(ptr noundef %b, i8 noundef zeroext 0) #15, !dbg !6148
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  %31 = load ptr, ptr %path.addr, align 8, !dbg !6149
  %call24 = call i32 @prepend_path(ptr noundef %31, ptr noundef %root, ptr noundef %b) #15, !dbg !6150
  call void @rcu_read_unlock() #15, !dbg !6151
  %call25 = call ptr @extract_string(ptr noundef %b) #15, !dbg !6152
  store ptr %call25, ptr %retval, align 8, !dbg !6153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6153

cleanup:                                          ; preds = %if.end23, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %root) #14, !dbg !6154
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #14, !dbg !6154
  %32 = load ptr, ptr %retval, align 8, !dbg !6154
  ret ptr %32, !dbg !6154
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #6 align 16 !dbg !6155 {
entry:
  call void @__rcu_read_lock() #15, !dbg !6157
  br label %do.body, !dbg !6158

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6159

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !6161

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6162

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !6164
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @get_fs_root_rcu(ptr noundef %fs, ptr noundef %root) #0 align 16 !dbg !6165 {
entry:
  %fs.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %seq = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_seq = alloca i32, align 4
  %__seq = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  store ptr %fs, ptr %fs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs.addr, metadata !6169, metadata !DIExpression()), !dbg !6178
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !6170, metadata !DIExpression()), !dbg !6179
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #14, !dbg !6180
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !6171, metadata !DIExpression()), !dbg !6181
  br label %do.body, !dbg !6182

do.body:                                          ; preds = %do.cond15, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %_seq) #14, !dbg !6183
  call void @llvm.dbg.declare(metadata ptr %_seq, metadata !6172, metadata !DIExpression()), !dbg !6183
  call void @llvm.lifetime.start.p0(i64 4, ptr %__seq) #14, !dbg !6184
  call void @llvm.dbg.declare(metadata ptr %__seq, metadata !6176, metadata !DIExpression()), !dbg !6184
  br label %while.cond, !dbg !6184

while.cond:                                       ; preds = %while.body, %do.body
  %0 = load ptr, ptr %fs.addr, align 8, !dbg !6184
  %seq1 = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 2, !dbg !6184
  %call = call i32 @__seqprop_spinlock_sequence(ptr noundef %seq1) #15, !dbg !6184
  store i32 %call, ptr %__seq, align 4, !dbg !6184
  %and = and i32 %call, 1, !dbg !6184
  %tobool = icmp ne i32 %and, 0, !dbg !6184
  br i1 %tobool, label %while.body, label %while.end, !dbg !6184

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #15, !dbg !6184
  br label %while.cond, !dbg !6184, !llvm.loop !6185

while.end:                                        ; preds = %while.cond
  call void @kcsan_atomic_next(i32 noundef 1000) #15, !dbg !6184
  %1 = load i32, ptr %__seq, align 4, !dbg !6184
  store i32 %1, ptr %tmp2, align 4, !dbg !6184
  call void @llvm.lifetime.end.p0(i64 4, ptr %__seq) #14, !dbg !6183
  %2 = load i32, ptr %tmp2, align 4, !dbg !6184
  store i32 %2, ptr %_seq, align 4, !dbg !6183
  br label %do.body3, !dbg !6183

do.body3:                                         ; preds = %while.end
  br label %do.body4, !dbg !6188

do.body4:                                         ; preds = %do.body3
  br label %do.cond, !dbg !6190

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !6190

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !6188

do.body5:                                         ; preds = %do.end
  br label %do.body6, !dbg !6192

do.body6:                                         ; preds = %do.body5
  br label %do.cond7, !dbg !6194

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !6194

do.end8:                                          ; preds = %do.cond7
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6192, !srcloc !6196
  br label %do.cond9, !dbg !6192

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6192

do.end10:                                         ; preds = %do.cond9
  br label %do.cond11, !dbg !6188

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !6188

do.end12:                                         ; preds = %do.cond11
  %3 = load i32, ptr %_seq, align 4, !dbg !6183
  store i32 %3, ptr %tmp13, align 4, !dbg !6188
  call void @llvm.lifetime.end.p0(i64 4, ptr %_seq) #14, !dbg !6197
  %4 = load i32, ptr %tmp13, align 4, !dbg !6183
  store i32 %4, ptr %tmp, align 4, !dbg !6198
  %5 = load i32, ptr %tmp, align 4, !dbg !6197
  store i32 %5, ptr %seq, align 4, !dbg !6199
  %6 = load ptr, ptr %root.addr, align 8, !dbg !6200
  %7 = load ptr, ptr %fs.addr, align 8, !dbg !6201
  %root14 = getelementptr inbounds %struct.fs_struct, ptr %7, i32 0, i32 5, !dbg !6202
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %root14, i64 16, i1 false), !dbg !6202
  br label %do.cond15, !dbg !6203

do.cond15:                                        ; preds = %do.end12
  %8 = load ptr, ptr %fs.addr, align 8, !dbg !6204
  %seq16 = getelementptr inbounds %struct.fs_struct, ptr %8, i32 0, i32 2, !dbg !6204
  %call17 = call ptr @__seqprop_spinlock_ptr(ptr noundef %seq16) #15, !dbg !6204
  %9 = load i32, ptr %seq, align 4, !dbg !6204
  %call18 = call i32 @do_read_seqcount_retry(ptr noundef %call17, i32 noundef %9) #15, !dbg !6204
  %tobool19 = icmp ne i32 %call18, 0, !dbg !6203
  br i1 %tobool19, label %do.body, label %do.end20, !dbg !6203, !llvm.loop !6205

do.end20:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #14, !dbg !6207
  ret void, !dbg !6207
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !6208 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !6219
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6213, metadata !DIExpression()), !dbg !6219
  br label %do.body, !dbg !6219

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6220
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6215, metadata !DIExpression()), !dbg !6220
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6220
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6220
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6219
  br label %do.cond, !dbg !6220

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6220

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !6221
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6217, metadata !DIExpression()), !dbg !6221
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #16, !dbg !6221, !srcloc !6222
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6221
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6221
  %3 = inttoptr i64 %2 to ptr, !dbg !6221
  store ptr %3, ptr %tmp, align 8, !dbg !6221
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !6219
  %4 = load ptr, ptr %tmp, align 8, !dbg !6221
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6219
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6219
  store ptr %5, ptr %tmp1, align 8, !dbg !6219
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !6223
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6219
  ret ptr %6, !dbg !6224
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @d_unlinked(ptr noundef %dentry) #5 align 16 !dbg !6225 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6227, metadata !DIExpression()), !dbg !6228
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6229
  %call = call i32 @d_unhashed(ptr noundef %0) #15, !dbg !6230
  %tobool = icmp ne i32 %call, 0, !dbg !6230
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6231

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !6232
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !6232
  %d_parent = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 3, !dbg !6232
  %3 = load ptr, ptr %d_parent, align 8, !dbg !6232
  %cmp = icmp eq ptr %1, %3, !dbg !6232
  %lnot = xor i1 %cmp, true, !dbg !6233
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !6234
  %land.ext = zext i1 %4 to i32, !dbg !6231
  ret i32 %land.ext, !dbg !6235
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @prepend(ptr noundef %p, ptr noundef %str, i32 noundef %namelen) #0 align 16 !dbg !6236 {
entry:
  %retval = alloca i1, align 1
  %p.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %namelen.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6240, metadata !DIExpression()), !dbg !6243
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !6241, metadata !DIExpression()), !dbg !6244
  store i32 %namelen, ptr %namelen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %namelen.addr, metadata !6242, metadata !DIExpression()), !dbg !6245
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6246
  %len = getelementptr inbounds %struct.prepend_buffer, ptr %0, i32 0, i32 1, !dbg !6248
  %1 = load i32, ptr %len, align 8, !dbg !6248
  %cmp = icmp slt i32 %1, 0, !dbg !6249
  br i1 %cmp, label %if.then, label %if.end, !dbg !6250

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6251
  br label %return, !dbg !6251

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !6252
  %len1 = getelementptr inbounds %struct.prepend_buffer, ptr %2, i32 0, i32 1, !dbg !6254
  %3 = load i32, ptr %len1, align 8, !dbg !6254
  %4 = load i32, ptr %namelen.addr, align 4, !dbg !6255
  %cmp2 = icmp slt i32 %3, %4, !dbg !6256
  br i1 %cmp2, label %if.then3, label %if.end11, !dbg !6257

if.then3:                                         ; preds = %if.end
  %5 = load i32, ptr %namelen.addr, align 4, !dbg !6258
  %6 = load ptr, ptr %p.addr, align 8, !dbg !6260
  %len4 = getelementptr inbounds %struct.prepend_buffer, ptr %6, i32 0, i32 1, !dbg !6261
  %7 = load i32, ptr %len4, align 8, !dbg !6261
  %sub = sub i32 %5, %7, !dbg !6262
  %8 = load ptr, ptr %str.addr, align 8, !dbg !6263
  %idx.ext = sext i32 %sub to i64, !dbg !6263
  %add.ptr = getelementptr i8, ptr %8, i64 %idx.ext, !dbg !6263
  store ptr %add.ptr, ptr %str.addr, align 8, !dbg !6263
  %9 = load ptr, ptr %p.addr, align 8, !dbg !6264
  %len5 = getelementptr inbounds %struct.prepend_buffer, ptr %9, i32 0, i32 1, !dbg !6265
  %10 = load i32, ptr %len5, align 8, !dbg !6265
  %11 = load ptr, ptr %p.addr, align 8, !dbg !6266
  %buf = getelementptr inbounds %struct.prepend_buffer, ptr %11, i32 0, i32 0, !dbg !6267
  %12 = load ptr, ptr %buf, align 8, !dbg !6268
  %idx.ext6 = sext i32 %10 to i64, !dbg !6268
  %idx.neg = sub i64 0, %idx.ext6, !dbg !6268
  %add.ptr7 = getelementptr i8, ptr %12, i64 %idx.neg, !dbg !6268
  store ptr %add.ptr7, ptr %buf, align 8, !dbg !6268
  %13 = load ptr, ptr %p.addr, align 8, !dbg !6269
  %buf8 = getelementptr inbounds %struct.prepend_buffer, ptr %13, i32 0, i32 0, !dbg !6270
  %14 = load ptr, ptr %buf8, align 8, !dbg !6270
  %15 = load ptr, ptr %str.addr, align 8, !dbg !6271
  %16 = load ptr, ptr %p.addr, align 8, !dbg !6272
  %len9 = getelementptr inbounds %struct.prepend_buffer, ptr %16, i32 0, i32 1, !dbg !6273
  %17 = load i32, ptr %len9, align 8, !dbg !6273
  %call = call zeroext i1 @prepend_copy(ptr noundef %14, ptr noundef %15, i32 noundef %17) #15, !dbg !6274
  %18 = load ptr, ptr %p.addr, align 8, !dbg !6275
  %len10 = getelementptr inbounds %struct.prepend_buffer, ptr %18, i32 0, i32 1, !dbg !6276
  store i32 -1, ptr %len10, align 8, !dbg !6277
  store i1 false, ptr %retval, align 1, !dbg !6278
  br label %return, !dbg !6278

if.end11:                                         ; preds = %if.end
  %19 = load i32, ptr %namelen.addr, align 4, !dbg !6279
  %20 = load ptr, ptr %p.addr, align 8, !dbg !6280
  %len12 = getelementptr inbounds %struct.prepend_buffer, ptr %20, i32 0, i32 1, !dbg !6281
  %21 = load i32, ptr %len12, align 8, !dbg !6282
  %sub13 = sub i32 %21, %19, !dbg !6282
  store i32 %sub13, ptr %len12, align 8, !dbg !6282
  %22 = load i32, ptr %namelen.addr, align 4, !dbg !6283
  %23 = load ptr, ptr %p.addr, align 8, !dbg !6284
  %buf14 = getelementptr inbounds %struct.prepend_buffer, ptr %23, i32 0, i32 0, !dbg !6285
  %24 = load ptr, ptr %buf14, align 8, !dbg !6286
  %idx.ext15 = sext i32 %22 to i64, !dbg !6286
  %idx.neg16 = sub i64 0, %idx.ext15, !dbg !6286
  %add.ptr17 = getelementptr i8, ptr %24, i64 %idx.neg16, !dbg !6286
  store ptr %add.ptr17, ptr %buf14, align 8, !dbg !6286
  %25 = load ptr, ptr %p.addr, align 8, !dbg !6287
  %buf18 = getelementptr inbounds %struct.prepend_buffer, ptr %25, i32 0, i32 0, !dbg !6288
  %26 = load ptr, ptr %buf18, align 8, !dbg !6288
  %27 = load ptr, ptr %str.addr, align 8, !dbg !6289
  %28 = load i32, ptr %namelen.addr, align 4, !dbg !6290
  %call19 = call zeroext i1 @prepend_copy(ptr noundef %26, ptr noundef %27, i32 noundef %28) #15, !dbg !6291
  store i1 %call19, ptr %retval, align 1, !dbg !6292
  br label %return, !dbg !6292

return:                                           ; preds = %if.end11, %if.then3, %if.then
  %29 = load i1, ptr %retval, align 1, !dbg !6293
  ret i1 %29, !dbg !6293
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #5 align 16 !dbg !6294 {
entry:
  br label %do.body, !dbg !6295

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6296

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #15, !dbg !6298
  br label %do.body1, !dbg !6299

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !6300

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !6302
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dynamic_dname(ptr noundef %buffer, i32 noundef %buflen, ptr noundef %fmt, ...) #0 align 16 !dbg !6303 {
entry:
  %retval = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %buflen.addr = alloca i32, align 4
  %fmt.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %temp = alloca [64 x i8], align 16
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !6307, metadata !DIExpression()), !dbg !6323
  store i32 %buflen, ptr %buflen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !6308, metadata !DIExpression()), !dbg !6324
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !6309, metadata !DIExpression()), !dbg !6325
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #14, !dbg !6326
  call void @llvm.dbg.declare(metadata ptr %args, metadata !6310, metadata !DIExpression()), !dbg !6327
  call void @llvm.lifetime.start.p0(i64 64, ptr %temp) #14, !dbg !6328
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !6321, metadata !DIExpression()), !dbg !6329
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #14, !dbg !6330
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6322, metadata !DIExpression()), !dbg !6331
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !6332
  call void @llvm.va_start(ptr %arraydecay), !dbg !6332
  %arraydecay1 = getelementptr inbounds [64 x i8], ptr %temp, i64 0, i64 0, !dbg !6333
  %0 = load ptr, ptr %fmt.addr, align 8, !dbg !6334
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !6335
  %call = call i32 @vsnprintf(ptr noundef %arraydecay1, i64 noundef 64, ptr noundef %0, ptr noundef %arraydecay2) #15, !dbg !6336
  %add = add i32 %call, 1, !dbg !6337
  store i32 %add, ptr %sz, align 4, !dbg !6338
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !6339
  call void @llvm.va_end(ptr %arraydecay3), !dbg !6339
  %1 = load i32, ptr %sz, align 4, !dbg !6340
  %conv = sext i32 %1 to i64, !dbg !6340
  %cmp = icmp ugt i64 %conv, 64, !dbg !6342
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6343

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %sz, align 4, !dbg !6344
  %3 = load i32, ptr %buflen.addr, align 4, !dbg !6345
  %cmp5 = icmp sgt i32 %2, %3, !dbg !6346
  br i1 %cmp5, label %if.then, label %if.end, !dbg !6347

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call7 = call ptr @ERR_PTR(i64 noundef -36) #15, !dbg !6348
  store ptr %call7, ptr %retval, align 8, !dbg !6349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6349

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, ptr %buflen.addr, align 4, !dbg !6350
  %5 = load i32, ptr %sz, align 4, !dbg !6351
  %sub = sub i32 %4, %5, !dbg !6352
  %6 = load ptr, ptr %buffer.addr, align 8, !dbg !6353
  %idx.ext = sext i32 %sub to i64, !dbg !6353
  %add.ptr = getelementptr i8, ptr %6, i64 %idx.ext, !dbg !6353
  store ptr %add.ptr, ptr %buffer.addr, align 8, !dbg !6353
  %7 = load ptr, ptr %buffer.addr, align 8, !dbg !6354
  %arraydecay8 = getelementptr inbounds [64 x i8], ptr %temp, i64 0, i64 0, !dbg !6355
  %8 = load i32, ptr %sz, align 4, !dbg !6356
  %conv9 = sext i32 %8 to i64, !dbg !6356
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 16 %arraydecay8, i64 %conv9, i1 false), !dbg !6355
  store ptr %7, ptr %retval, align 8, !dbg !6357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6357

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #14, !dbg !6358
  call void @llvm.lifetime.end.p0(i64 64, ptr %temp) #14, !dbg !6358
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #14, !dbg !6358
  %9 = load ptr, ptr %retval, align 8, !dbg !6358
  ret ptr %9, !dbg !6358
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6359 dso_local i32 @vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @simple_dname(ptr noundef %dentry, ptr noundef %buffer, i32 noundef %buflen) #0 align 16 !dbg !6364 {
entry:
  %dentry.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %buflen.addr = alloca i32, align 4
  %b = alloca %struct.prepend_buffer, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6366, metadata !DIExpression()), !dbg !6370
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !6367, metadata !DIExpression()), !dbg !6371
  store i32 %buflen, ptr %buflen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !6368, metadata !DIExpression()), !dbg !6372
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #14, !dbg !6373
  call void @llvm.dbg.declare(metadata ptr %b, metadata !6369, metadata !DIExpression()), !dbg !6373
  %buf = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 0, !dbg !6373
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !6373
  %1 = load i32, ptr %buflen.addr, align 4, !dbg !6373
  %idx.ext = sext i32 %1 to i64, !dbg !6373
  %add.ptr = getelementptr i8, ptr %0, i64 %idx.ext, !dbg !6373
  store ptr %add.ptr, ptr %buf, align 8, !dbg !6373
  %len = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 1, !dbg !6373
  %2 = load i32, ptr %buflen.addr, align 4, !dbg !6373
  store i32 %2, ptr %len, align 8, !dbg !6373
  %call = call zeroext i1 @prepend(ptr noundef %b, ptr noundef @.str, i32 noundef 11) #15, !dbg !6374
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !6375
  %d_name = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 4, !dbg !6376
  %name = getelementptr inbounds %struct.qstr, ptr %d_name, i32 0, i32 1, !dbg !6377
  %4 = load ptr, ptr %name, align 8, !dbg !6377
  %5 = load ptr, ptr %dentry.addr, align 8, !dbg !6378
  %d_name1 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 4, !dbg !6379
  %6 = getelementptr inbounds %struct.qstr, ptr %d_name1, i32 0, i32 0, !dbg !6380
  %len2 = getelementptr inbounds %struct.anon.20, ptr %6, i32 0, i32 1, !dbg !6380
  %7 = load i32, ptr %len2, align 4, !dbg !6380
  %call3 = call zeroext i1 @prepend(ptr noundef %b, ptr noundef %4, i32 noundef %7) #15, !dbg !6381
  %call4 = call zeroext i1 @prepend_char(ptr noundef %b, i8 noundef zeroext 47) #15, !dbg !6382
  %call5 = call ptr @extract_string(ptr noundef %b) #15, !dbg !6383
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #14, !dbg !6384
  ret ptr %call5, !dbg !6385
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dentry_path_raw(ptr noundef %dentry, ptr noundef %buf, i32 noundef %buflen) #0 align 16 !dbg !6386 {
entry:
  %dentry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i32, align 4
  %b = alloca %struct.prepend_buffer, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6390, metadata !DIExpression()), !dbg !6394
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6391, metadata !DIExpression()), !dbg !6395
  store i32 %buflen, ptr %buflen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !6392, metadata !DIExpression()), !dbg !6396
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #14, !dbg !6397
  call void @llvm.dbg.declare(metadata ptr %b, metadata !6393, metadata !DIExpression()), !dbg !6397
  %buf1 = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 0, !dbg !6397
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6397
  %1 = load i32, ptr %buflen.addr, align 4, !dbg !6397
  %idx.ext = sext i32 %1 to i64, !dbg !6397
  %add.ptr = getelementptr i8, ptr %0, i64 %idx.ext, !dbg !6397
  store ptr %add.ptr, ptr %buf1, align 8, !dbg !6397
  %len = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 1, !dbg !6397
  %2 = load i32, ptr %buflen.addr, align 4, !dbg !6397
  store i32 %2, ptr %len, align 8, !dbg !6397
  %call = call zeroext i1 @prepend_char(ptr noundef %b, i8 noundef zeroext 0) #15, !dbg !6398
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !6399
  %call2 = call ptr @__dentry_path(ptr noundef %3, ptr noundef %b) #15, !dbg !6400
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #14, !dbg !6401
  ret ptr %call2, !dbg !6402
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__dentry_path(ptr noundef %d, ptr noundef %p) #0 align 16 !dbg !6403 {
entry:
  %d.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %dentry = alloca ptr, align 8
  %b = alloca %struct.prepend_buffer, align 8
  %seq = alloca i32, align 4
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !6407, metadata !DIExpression()), !dbg !6415
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6408, metadata !DIExpression()), !dbg !6416
  call void @llvm.lifetime.start.p0(i64 8, ptr %dentry) #14, !dbg !6417
  call void @llvm.dbg.declare(metadata ptr %dentry, metadata !6409, metadata !DIExpression()), !dbg !6418
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #14, !dbg !6419
  call void @llvm.dbg.declare(metadata ptr %b, metadata !6410, metadata !DIExpression()), !dbg !6420
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #14, !dbg !6421
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !6411, metadata !DIExpression()), !dbg !6422
  store i32 0, ptr %seq, align 4, !dbg !6422
  call void @rcu_read_lock() #15, !dbg !6423
  br label %restart, !dbg !6423

restart:                                          ; preds = %if.then6, %entry
  call void @llvm.dbg.label(metadata !6412), !dbg !6424
  %0 = load ptr, ptr %d.addr, align 8, !dbg !6425
  store ptr %0, ptr %dentry, align 8, !dbg !6426
  %1 = load ptr, ptr %p.addr, align 8, !dbg !6427
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %b, ptr align 8 %1, i64 16, i1 false), !dbg !6428
  call void @read_seqbegin_or_lock(ptr noundef @rename_lock, ptr noundef %seq) #15, !dbg !6429
  br label %while.cond, !dbg !6430

while.cond:                                       ; preds = %cleanup.cont, %restart
  %2 = load ptr, ptr %dentry, align 8, !dbg !6431
  %3 = load ptr, ptr %dentry, align 8, !dbg !6431
  %d_parent = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 3, !dbg !6431
  %4 = load ptr, ptr %d_parent, align 8, !dbg !6431
  %cmp = icmp eq ptr %2, %4, !dbg !6431
  %lnot = xor i1 %cmp, true, !dbg !6432
  br i1 %lnot, label %while.body, label %while.end, !dbg !6430

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #14, !dbg !6433
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !6413, metadata !DIExpression()), !dbg !6434
  %5 = load ptr, ptr %dentry, align 8, !dbg !6435
  %d_parent1 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 3, !dbg !6436
  %6 = load ptr, ptr %d_parent1, align 8, !dbg !6436
  store ptr %6, ptr %parent, align 8, !dbg !6434
  %7 = load ptr, ptr %parent, align 8, !dbg !6437
  call void @llvm.prefetch.p0(ptr %7, i32 0, i32 3, i32 1), !dbg !6437
  %8 = load ptr, ptr %dentry, align 8, !dbg !6438
  %d_name = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 4, !dbg !6440
  %call = call zeroext i1 @prepend_name(ptr noundef %b, ptr noundef %d_name) #15, !dbg !6441
  br i1 %call, label %if.end, label %if.then, !dbg !6442

if.then:                                          ; preds = %while.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6443

if.end:                                           ; preds = %while.body
  %9 = load ptr, ptr %parent, align 8, !dbg !6444
  store ptr %9, ptr %dentry, align 8, !dbg !6445
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6446
  br label %cleanup, !dbg !6446

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #14, !dbg !6446
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !6430, !llvm.loop !6447

while.end:                                        ; preds = %cleanup, %while.cond
  %10 = load i32, ptr %seq, align 4, !dbg !6448
  %and = and i32 %10, 1, !dbg !6450
  %tobool = icmp ne i32 %and, 0, !dbg !6450
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !6451

if.then2:                                         ; preds = %while.end
  call void @rcu_read_unlock() #15, !dbg !6452
  br label %if.end3, !dbg !6452

if.end3:                                          ; preds = %if.then2, %while.end
  %11 = load i32, ptr %seq, align 4, !dbg !6453
  %call4 = call i32 @need_seqretry(ptr noundef @rename_lock, i32 noundef %11) #15, !dbg !6455
  %tobool5 = icmp ne i32 %call4, 0, !dbg !6455
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6456

if.then6:                                         ; preds = %if.end3
  store i32 1, ptr %seq, align 4, !dbg !6457
  br label %restart, !dbg !6459

if.end7:                                          ; preds = %if.end3
  %12 = load i32, ptr %seq, align 4, !dbg !6460
  call void @done_seqretry(ptr noundef @rename_lock, i32 noundef %12) #15, !dbg !6461
  %len = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 1, !dbg !6462
  %13 = load i32, ptr %len, align 8, !dbg !6462
  %14 = load ptr, ptr %p.addr, align 8, !dbg !6464
  %len8 = getelementptr inbounds %struct.prepend_buffer, ptr %14, i32 0, i32 1, !dbg !6465
  %15 = load i32, ptr %len8, align 8, !dbg !6465
  %cmp9 = icmp eq i32 %13, %15, !dbg !6466
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !6467

if.then10:                                        ; preds = %if.end7
  %call11 = call zeroext i1 @prepend_char(ptr noundef %b, i8 noundef zeroext 47) #15, !dbg !6468
  br label %if.end12, !dbg !6468

if.end12:                                         ; preds = %if.then10, %if.end7
  %call13 = call ptr @extract_string(ptr noundef %b) #15, !dbg !6469
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #14, !dbg !6470
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #14, !dbg !6470
  call void @llvm.lifetime.end.p0(i64 8, ptr %dentry) #14, !dbg !6470
  ret ptr %call13, !dbg !6471

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @dentry_path(ptr noundef %dentry, ptr noundef %buf, i32 noundef %buflen) #0 align 16 !dbg !6472 {
entry:
  %dentry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i32, align 4
  %b = alloca %struct.prepend_buffer, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6474, metadata !DIExpression()), !dbg !6478
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6475, metadata !DIExpression()), !dbg !6479
  store i32 %buflen, ptr %buflen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !6476, metadata !DIExpression()), !dbg !6480
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #14, !dbg !6481
  call void @llvm.dbg.declare(metadata ptr %b, metadata !6477, metadata !DIExpression()), !dbg !6481
  %buf1 = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 0, !dbg !6481
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6481
  %1 = load i32, ptr %buflen.addr, align 4, !dbg !6481
  %idx.ext = sext i32 %1 to i64, !dbg !6481
  %add.ptr = getelementptr i8, ptr %0, i64 %idx.ext, !dbg !6481
  store ptr %add.ptr, ptr %buf1, align 8, !dbg !6481
  %len = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 1, !dbg !6481
  %2 = load i32, ptr %buflen.addr, align 4, !dbg !6481
  store i32 %2, ptr %len, align 8, !dbg !6481
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !6482
  %call = call i32 @d_unlinked(ptr noundef %3) #15, !dbg !6482
  %tobool = icmp ne i32 %call, 0, !dbg !6482
  %lnot = xor i1 %tobool, true, !dbg !6482
  %lnot2 = xor i1 %lnot, true, !dbg !6482
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6482
  %conv = sext i32 %lnot.ext to i64, !dbg !6482
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6482
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6482
  br i1 %tobool3, label %if.then, label %if.else, !dbg !6484

if.then:                                          ; preds = %entry
  %call4 = call zeroext i1 @prepend(ptr noundef %b, ptr noundef @.str.1, i32 noundef 10) #15, !dbg !6485
  br label %if.end, !dbg !6485

if.else:                                          ; preds = %entry
  %call5 = call zeroext i1 @prepend_char(ptr noundef %b, i8 noundef zeroext 0) #15, !dbg !6486
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load ptr, ptr %dentry.addr, align 8, !dbg !6487
  %call6 = call ptr @__dentry_path(ptr noundef %4, ptr noundef %b) #15, !dbg !6488
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #14, !dbg !6489
  ret ptr %call6, !dbg !6490
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_getcwd(ptr noundef %regs) #0 align 16 !dbg !6491 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6497, metadata !DIExpression()), !dbg !6498
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6498
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6498
  %1 = load i64, ptr %di, align 8, !dbg !6498
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6498
  %si = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 13, !dbg !6498
  %3 = load i64, ptr %si, align 8, !dbg !6498
  %call = call i64 @__se_sys_getcwd(i64 noundef %1, i64 noundef %3) #15, !dbg !6498
  ret i64 %call, !dbg !6498
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_getcwd(i64 noundef %buf, i64 noundef %size) #0 align 16 !dbg !6499 {
entry:
  %buf.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6503, metadata !DIExpression()), !dbg !6506
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6504, metadata !DIExpression()), !dbg !6506
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #14, !dbg !6506
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6505, metadata !DIExpression()), !dbg !6506
  %0 = load i64, ptr %buf.addr, align 8, !dbg !6506
  %1 = inttoptr i64 %0 to ptr, !dbg !6506
  %2 = load i64, ptr %size.addr, align 8, !dbg !6506
  %call = call i64 @__do_sys_getcwd(ptr noundef %1, i64 noundef %2) #15, !dbg !6506
  store i64 %call, ptr %ret, align 8, !dbg !6506
  br label %do.body, !dbg !6506

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6507

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6507

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %ret, align 8, !dbg !6506
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #14, !dbg !6506
  ret i64 %3, !dbg !6506
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_getcwd(ptr noundef %regs) #0 align 16 !dbg !6509 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6511, metadata !DIExpression()), !dbg !6512
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6512
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6512
  %1 = load i64, ptr %bx, align 8, !dbg !6512
  %conv = trunc i64 %1 to i32, !dbg !6512
  %conv1 = zext i32 %conv to i64, !dbg !6512
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !6512
  %cx = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 11, !dbg !6512
  %3 = load i64, ptr %cx, align 8, !dbg !6512
  %conv2 = trunc i64 %3 to i32, !dbg !6512
  %conv3 = zext i32 %conv2 to i64, !dbg !6512
  %call = call i64 @__se_sys_getcwd(i64 noundef %conv1, i64 noundef %conv3) #15, !dbg !6512
  ret i64 %call, !dbg !6512
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @read_seqbegin_or_lock(ptr noundef %lock, ptr noundef %seq) #5 align 16 !dbg !6513 {
entry:
  %lock.addr = alloca ptr, align 8
  %seq.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6518, metadata !DIExpression()), !dbg !6520
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6519, metadata !DIExpression()), !dbg !6521
  %0 = load ptr, ptr %seq.addr, align 8, !dbg !6522
  %1 = load i32, ptr %0, align 4, !dbg !6524
  %and = and i32 %1, 1, !dbg !6525
  %tobool = icmp ne i32 %and, 0, !dbg !6525
  br i1 %tobool, label %if.else, label %if.then, !dbg !6526

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !6527
  %call = call i32 @read_seqbegin(ptr noundef %2) #15, !dbg !6528
  %3 = load ptr, ptr %seq.addr, align 8, !dbg !6529
  store i32 %call, ptr %3, align 4, !dbg !6530
  br label %if.end, !dbg !6531

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !6532
  call void @read_seqlock_excl(ptr noundef %4) #15, !dbg !6533
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6534
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__prepend_path(ptr noundef %dentry, ptr noundef %mnt, ptr noundef %root, ptr noundef %p) #0 align 16 !dbg !6535 {
entry:
  %retval = alloca i32, align 4
  %dentry.addr = alloca ptr, align 8
  %mnt.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %m = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %mnt_ns = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp21 = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6541, metadata !DIExpression()), !dbg !6551
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !6542, metadata !DIExpression()), !dbg !6552
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !6543, metadata !DIExpression()), !dbg !6553
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6544, metadata !DIExpression()), !dbg !6554
  br label %while.cond, !dbg !6555

while.cond:                                       ; preds = %cleanup.cont, %cleanup41, %entry
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6556
  %1 = load ptr, ptr %root.addr, align 8, !dbg !6557
  %dentry1 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1, !dbg !6558
  %2 = load ptr, ptr %dentry1, align 8, !dbg !6558
  %cmp = icmp ne ptr %0, %2, !dbg !6559
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6560

lor.rhs:                                          ; preds = %while.cond
  %3 = load ptr, ptr %mnt.addr, align 8, !dbg !6561
  %mnt2 = getelementptr inbounds %struct.mount, ptr %3, i32 0, i32 3, !dbg !6562
  %4 = load ptr, ptr %root.addr, align 8, !dbg !6563
  %mnt3 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 0, !dbg !6564
  %5 = load ptr, ptr %mnt3, align 8, !dbg !6564
  %cmp4 = icmp ne ptr %mnt2, %5, !dbg !6565
  br label %lor.end, !dbg !6560

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %6 = phi i1 [ true, %while.cond ], [ %cmp4, %lor.rhs ]
  br i1 %6, label %while.body, label %while.end, !dbg !6555

while.body:                                       ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #14, !dbg !6566
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !6545, metadata !DIExpression()), !dbg !6567
  br label %do.body, !dbg !6568

do.body:                                          ; preds = %while.body
  br label %do.cond, !dbg !6570

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6570

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %dentry.addr, align 8, !dbg !6568
  %d_parent = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 3, !dbg !6568
  %8 = load volatile ptr, ptr %d_parent, align 8, !dbg !6568
  store ptr %8, ptr %tmp, align 8, !dbg !6570
  %9 = load ptr, ptr %tmp, align 8, !dbg !6568
  store ptr %9, ptr %parent, align 8, !dbg !6567
  %10 = load ptr, ptr %dentry.addr, align 8, !dbg !6572
  %11 = load ptr, ptr %mnt.addr, align 8, !dbg !6573
  %mnt5 = getelementptr inbounds %struct.mount, ptr %11, i32 0, i32 3, !dbg !6574
  %mnt_root = getelementptr inbounds %struct.vfsmount, ptr %mnt5, i32 0, i32 0, !dbg !6575
  %12 = load ptr, ptr %mnt_root, align 8, !dbg !6575
  %cmp6 = icmp eq ptr %10, %12, !dbg !6576
  br i1 %cmp6, label %if.then, label %if.end26, !dbg !6577

if.then:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #14, !dbg !6578
  call void @llvm.dbg.declare(metadata ptr %m, metadata !6547, metadata !DIExpression()), !dbg !6579
  br label %do.body7, !dbg !6580

do.body7:                                         ; preds = %if.then
  br label %do.cond8, !dbg !6582

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !6582

do.end9:                                          ; preds = %do.cond8
  %13 = load ptr, ptr %mnt.addr, align 8, !dbg !6580
  %mnt_parent = getelementptr inbounds %struct.mount, ptr %13, i32 0, i32 1, !dbg !6580
  %14 = load volatile ptr, ptr %mnt_parent, align 8, !dbg !6580
  store ptr %14, ptr %tmp10, align 8, !dbg !6582
  %15 = load ptr, ptr %tmp10, align 8, !dbg !6580
  store ptr %15, ptr %m, align 8, !dbg !6579
  call void @llvm.lifetime.start.p0(i64 8, ptr %mnt_ns) #14, !dbg !6584
  call void @llvm.dbg.declare(metadata ptr %mnt_ns, metadata !6550, metadata !DIExpression()), !dbg !6585
  %16 = load ptr, ptr %mnt.addr, align 8, !dbg !6586
  %17 = load ptr, ptr %m, align 8, !dbg !6586
  %cmp11 = icmp ne ptr %16, %17, !dbg !6586
  %lnot = xor i1 %cmp11, true, !dbg !6586
  %lnot12 = xor i1 %lnot, true, !dbg !6586
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !6586
  %conv = sext i32 %lnot.ext to i64, !dbg !6586
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6586
  %tobool = icmp ne i64 %expval, 0, !dbg !6586
  br i1 %tobool, label %if.then13, label %if.end, !dbg !6588

if.then13:                                        ; preds = %do.end9
  br label %do.body14, !dbg !6589

do.body14:                                        ; preds = %if.then13
  br label %do.cond15, !dbg !6592

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6592

do.end16:                                         ; preds = %do.cond15
  %18 = load ptr, ptr %mnt.addr, align 8, !dbg !6589
  %mnt_mountpoint = getelementptr inbounds %struct.mount, ptr %18, i32 0, i32 2, !dbg !6589
  %19 = load volatile ptr, ptr %mnt_mountpoint, align 8, !dbg !6589
  store ptr %19, ptr %tmp17, align 8, !dbg !6592
  %20 = load ptr, ptr %tmp17, align 8, !dbg !6589
  store ptr %20, ptr %dentry.addr, align 8, !dbg !6594
  %21 = load ptr, ptr %m, align 8, !dbg !6595
  store ptr %21, ptr %mnt.addr, align 8, !dbg !6596
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6597, !llvm.loop !6598

if.end:                                           ; preds = %do.end9
  br label %do.body18, !dbg !6600

do.body18:                                        ; preds = %if.end
  br label %do.cond19, !dbg !6602

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !6602

do.end20:                                         ; preds = %do.cond19
  %22 = load ptr, ptr %mnt.addr, align 8, !dbg !6600
  %mnt_ns22 = getelementptr inbounds %struct.mount, ptr %22, i32 0, i32 16, !dbg !6600
  %23 = load volatile ptr, ptr %mnt_ns22, align 8, !dbg !6600
  store ptr %23, ptr %tmp21, align 8, !dbg !6602
  %24 = load ptr, ptr %tmp21, align 8, !dbg !6600
  store ptr %24, ptr %mnt_ns, align 8, !dbg !6604
  %25 = load ptr, ptr %mnt_ns, align 8, !dbg !6605
  %call = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %25) #15, !dbg !6607
  br i1 %call, label %if.else, label %land.lhs.true, !dbg !6608

land.lhs.true:                                    ; preds = %do.end20
  %26 = load ptr, ptr %mnt_ns, align 8, !dbg !6609
  %call23 = call zeroext i1 @is_anon_ns(ptr noundef %26) #15, !dbg !6610
  br i1 %call23, label %if.else, label %if.then24, !dbg !6611

if.then24:                                        ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6612

if.else:                                          ; preds = %land.lhs.true, %do.end20
  store i32 2, ptr %retval, align 4, !dbg !6613
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6613

cleanup:                                          ; preds = %if.else, %if.then24, %do.end16
  call void @llvm.lifetime.end.p0(i64 8, ptr %mnt_ns) #14, !dbg !6614
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #14, !dbg !6614
  br label %cleanup41

if.end26:                                         ; preds = %do.end
  %27 = load ptr, ptr %dentry.addr, align 8, !dbg !6615
  %28 = load ptr, ptr %parent, align 8, !dbg !6615
  %cmp27 = icmp eq ptr %27, %28, !dbg !6615
  %lnot29 = xor i1 %cmp27, true, !dbg !6615
  %lnot31 = xor i1 %lnot29, true, !dbg !6615
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !6615
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !6615
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !6615
  %tobool35 = icmp ne i64 %expval34, 0, !dbg !6615
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !6617

if.then36:                                        ; preds = %if.end26
  store i32 3, ptr %retval, align 4, !dbg !6618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !6618

if.end37:                                         ; preds = %if.end26
  %29 = load ptr, ptr %parent, align 8, !dbg !6619
  call void @llvm.prefetch.p0(ptr %29, i32 0, i32 3, i32 1), !dbg !6619
  %30 = load ptr, ptr %p.addr, align 8, !dbg !6620
  %31 = load ptr, ptr %dentry.addr, align 8, !dbg !6622
  %d_name = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 4, !dbg !6623
  %call38 = call zeroext i1 @prepend_name(ptr noundef %30, ptr noundef %d_name) #15, !dbg !6624
  br i1 %call38, label %if.end40, label %if.then39, !dbg !6625

if.then39:                                        ; preds = %if.end37
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !6626

if.end40:                                         ; preds = %if.end37
  %32 = load ptr, ptr %parent, align 8, !dbg !6627
  store ptr %32, ptr %dentry.addr, align 8, !dbg !6628
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6599
  br label %cleanup41, !dbg !6599

cleanup41:                                        ; preds = %if.end40, %if.then39, %if.then36, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #14, !dbg !6599
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
    i32 1, label %return
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup41
  br label %while.cond, !dbg !6555, !llvm.loop !6598

while.end:                                        ; preds = %cleanup41, %lor.end
  store i32 0, ptr %retval, align 4, !dbg !6629
  br label %return, !dbg !6629

return:                                           ; preds = %while.end, %cleanup41
  %33 = load i32, ptr %retval, align 4, !dbg !6630
  ret i32 %33, !dbg !6630

unreachable:                                      ; preds = %cleanup41
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @real_mount(ptr noundef %mnt) #5 align 16 !dbg !6631 {
entry:
  %mnt.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %mnt, ptr %mnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mnt.addr, metadata !6635, metadata !DIExpression()), !dbg !6638
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !6639
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6636, metadata !DIExpression()), !dbg !6639
  %0 = load ptr, ptr %mnt.addr, align 8, !dbg !6639
  store ptr %0, ptr %__mptr, align 8, !dbg !6639
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6639
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !6639
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6639
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !6640
  %2 = load ptr, ptr %tmp, align 8, !dbg !6639
  ret ptr %2, !dbg !6641
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @need_seqretry(ptr noundef %lock, i32 noundef %seq) #5 align 16 !dbg !6642 {
entry:
  %lock.addr = alloca ptr, align 8
  %seq.addr = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6646, metadata !DIExpression()), !dbg !6648
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6647, metadata !DIExpression()), !dbg !6649
  %0 = load i32, ptr %seq.addr, align 4, !dbg !6650
  %and = and i32 %0, 1, !dbg !6651
  %tobool = icmp ne i32 %and, 0, !dbg !6651
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !6652

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6653
  %2 = load i32, ptr %seq.addr, align 4, !dbg !6654
  %call = call i32 @read_seqretry(ptr noundef %1, i32 noundef %2) #15, !dbg !6655
  %tobool1 = icmp ne i32 %call, 0, !dbg !6652
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !6656
  %land.ext = zext i1 %3 to i32, !dbg !6652
  ret i32 %land.ext, !dbg !6657
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @done_seqretry(ptr noundef %lock, i32 noundef %seq) #5 align 16 !dbg !6658 {
entry:
  %lock.addr = alloca ptr, align 8
  %seq.addr = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6662, metadata !DIExpression()), !dbg !6664
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6663, metadata !DIExpression()), !dbg !6665
  %0 = load i32, ptr %seq.addr, align 4, !dbg !6666
  %and = and i32 %0, 1, !dbg !6668
  %tobool = icmp ne i32 %and, 0, !dbg !6668
  br i1 %tobool, label %if.then, label %if.end, !dbg !6669

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6670
  call void @read_sequnlock_excl(ptr noundef %1) #15, !dbg !6671
  br label %if.end, !dbg !6671

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6672
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @read_seqbegin(ptr noundef %sl) #5 align 16 !dbg !6673 {
entry:
  %sl.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %_seq = alloca i32, align 4
  %__seq = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  store ptr %sl, ptr %sl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sl.addr, metadata !6679, metadata !DIExpression()), !dbg !6685
  call void @llvm.lifetime.start.p0(i64 4, ptr %_seq) #14, !dbg !6686
  call void @llvm.dbg.declare(metadata ptr %_seq, metadata !6680, metadata !DIExpression()), !dbg !6686
  call void @llvm.lifetime.start.p0(i64 4, ptr %__seq) #14, !dbg !6687
  call void @llvm.dbg.declare(metadata ptr %__seq, metadata !6683, metadata !DIExpression()), !dbg !6687
  br label %while.cond, !dbg !6687

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %sl.addr, align 8, !dbg !6687
  %seqcount = getelementptr inbounds %struct.seqlock_t, ptr %0, i32 0, i32 0, !dbg !6687
  %call = call i32 @__seqprop_spinlock_sequence(ptr noundef %seqcount) #15, !dbg !6687
  store i32 %call, ptr %__seq, align 4, !dbg !6687
  %and = and i32 %call, 1, !dbg !6687
  %tobool = icmp ne i32 %and, 0, !dbg !6687
  br i1 %tobool, label %while.body, label %while.end, !dbg !6687

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #15, !dbg !6687
  br label %while.cond, !dbg !6687, !llvm.loop !6688

while.end:                                        ; preds = %while.cond
  call void @kcsan_atomic_next(i32 noundef 1000) #15, !dbg !6687
  %1 = load i32, ptr %__seq, align 4, !dbg !6687
  store i32 %1, ptr %tmp1, align 4, !dbg !6687
  call void @llvm.lifetime.end.p0(i64 4, ptr %__seq) #14, !dbg !6686
  %2 = load i32, ptr %tmp1, align 4, !dbg !6687
  store i32 %2, ptr %_seq, align 4, !dbg !6686
  br label %do.body, !dbg !6686

do.body:                                          ; preds = %while.end
  br label %do.body2, !dbg !6689

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6691

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6691

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6689

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6693

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6695

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6695

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6693, !srcloc !6697
  br label %do.cond7, !dbg !6693

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6693

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6689

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6689

do.end10:                                         ; preds = %do.cond9
  %3 = load i32, ptr %_seq, align 4, !dbg !6686
  store i32 %3, ptr %tmp11, align 4, !dbg !6689
  call void @llvm.lifetime.end.p0(i64 4, ptr %_seq) #14, !dbg !6698
  %4 = load i32, ptr %tmp11, align 4, !dbg !6686
  store i32 %4, ptr %tmp, align 4, !dbg !6699
  %5 = load i32, ptr %tmp, align 4, !dbg !6698
  ret i32 %5, !dbg !6700
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @read_seqlock_excl(ptr noundef %sl) #5 align 16 !dbg !6701 {
entry:
  %sl.addr = alloca ptr, align 8
  store ptr %sl, ptr %sl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sl.addr, metadata !6705, metadata !DIExpression()), !dbg !6706
  %0 = load ptr, ptr %sl.addr, align 8, !dbg !6707
  %lock = getelementptr inbounds %struct.seqlock_t, ptr %0, i32 0, i32 1, !dbg !6708
  call void @spin_lock(ptr noundef %lock) #15, !dbg !6709
  ret void, !dbg !6710
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__seqprop_spinlock_sequence(ptr noundef %s) #6 align 16 !dbg !6711 {
entry:
  %s.addr = alloca ptr, align 8
  %seq = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6717, metadata !DIExpression()), !dbg !6719
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #14, !dbg !6719
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !6718, metadata !DIExpression()), !dbg !6719
  br label %do.body, !dbg !6720

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6722

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6722

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6720
  %seqcount = getelementptr inbounds %struct.seqcount_spinlock, ptr %0, i32 0, i32 0, !dbg !6720
  %sequence = getelementptr inbounds %struct.seqcount, ptr %seqcount, i32 0, i32 0, !dbg !6720
  %1 = load volatile i32, ptr %sequence, align 4, !dbg !6720
  store i32 %1, ptr %tmp, align 4, !dbg !6722
  %2 = load i32, ptr %tmp, align 4, !dbg !6720
  store i32 %2, ptr %seq, align 4, !dbg !6719
  %3 = load i32, ptr %seq, align 4, !dbg !6724
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #14, !dbg !6719
  ret i32 %3, !dbg !6724
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #6 align 16 !dbg !6726 {
entry:
  call void @rep_nop() #15, !dbg !6728
  ret void, !dbg !6729
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_atomic_next(i32 noundef %n) #5 align 16 !dbg !6730 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6733, metadata !DIExpression()), !dbg !6734
  ret void, !dbg !6735
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #6 align 16 !dbg !6736 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6737, !srcloc !6738
  ret void, !dbg !6739
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #6 align 16 !dbg !6740 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6745, metadata !DIExpression()), !dbg !6746
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6747
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6747
  call void @_raw_spin_lock(ptr noundef %1) #15, !dbg !6747
  ret void, !dbg !6748
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6749 dso_local void @_raw_spin_lock(ptr noundef) #8 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %ptr) #5 align 16 !dbg !6754 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6758, metadata !DIExpression()), !dbg !6759
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6760
  %tobool = icmp ne ptr %0, null, !dbg !6760
  %lnot = xor i1 %tobool, true, !dbg !6760
  %lnot1 = xor i1 %lnot, true, !dbg !6760
  %lnot2 = xor i1 %lnot1, true, !dbg !6760
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6760
  %conv = sext i32 %lnot.ext to i64, !dbg !6760
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6760
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6760
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !6761

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !6762
  %2 = ptrtoint ptr %1 to i64, !dbg !6762
  %3 = inttoptr i64 %2 to ptr, !dbg !6762
  %4 = ptrtoint ptr %3 to i64, !dbg !6762
  %cmp = icmp uge i64 %4, -4095, !dbg !6762
  %lnot5 = xor i1 %cmp, true, !dbg !6762
  %lnot7 = xor i1 %lnot5, true, !dbg !6762
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !6762
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !6762
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !6762
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !6761
  br label %lor.end, !dbg !6761

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  ret i1 %5, !dbg !6763
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_anon_ns(ptr noundef %ns) #5 align 16 !dbg !6764 {
entry:
  %ns.addr = alloca ptr, align 8
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !6768, metadata !DIExpression()), !dbg !6769
  %0 = load ptr, ptr %ns.addr, align 8, !dbg !6770
  %seq = getelementptr inbounds %struct.mnt_namespace, ptr %0, i32 0, i32 6, !dbg !6771
  %1 = load i64, ptr %seq, align 8, !dbg !6771
  %cmp = icmp eq i64 %1, 0, !dbg !6772
  ret i1 %cmp, !dbg !6773
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @prepend_name(ptr noundef %p, ptr noundef %name) #0 align 16 !dbg !6774 {
entry:
  %p.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %dname = alloca ptr, align 8
  %___p1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %dlen = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6778, metadata !DIExpression()), !dbg !6785
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6779, metadata !DIExpression()), !dbg !6786
  call void @llvm.lifetime.start.p0(i64 8, ptr %dname) #14, !dbg !6787
  call void @llvm.dbg.declare(metadata ptr %dname, metadata !6780, metadata !DIExpression()), !dbg !6788
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #14, !dbg !6789
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !6781, metadata !DIExpression()), !dbg !6789
  br label %do.body, !dbg !6790

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6792

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6792

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %name.addr, align 8, !dbg !6790
  %name1 = getelementptr inbounds %struct.qstr, ptr %0, i32 0, i32 1, !dbg !6790
  %1 = load volatile ptr, ptr %name1, align 8, !dbg !6790
  store ptr %1, ptr %tmp, align 8, !dbg !6792
  %2 = load ptr, ptr %tmp, align 8, !dbg !6790
  store ptr %2, ptr %___p1, align 8, !dbg !6789
  br label %do.body2, !dbg !6789

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !6794

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6794

do.end4:                                          ; preds = %do.cond3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6789, !srcloc !6796
  %3 = load ptr, ptr %___p1, align 8, !dbg !6789
  store ptr %3, ptr %tmp5, align 8, !dbg !6789
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #14, !dbg !6797
  %4 = load ptr, ptr %tmp5, align 8, !dbg !6789
  store ptr %4, ptr %dname, align 8, !dbg !6788
  call void @llvm.lifetime.start.p0(i64 4, ptr %dlen) #14, !dbg !6798
  call void @llvm.dbg.declare(metadata ptr %dlen, metadata !6784, metadata !DIExpression()), !dbg !6799
  br label %do.body6, !dbg !6800

do.body6:                                         ; preds = %do.end4
  br label %do.cond7, !dbg !6802

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !6802

do.end8:                                          ; preds = %do.cond7
  %5 = load ptr, ptr %name.addr, align 8, !dbg !6800
  %6 = getelementptr inbounds %struct.qstr, ptr %5, i32 0, i32 0, !dbg !6800
  %len = getelementptr inbounds %struct.anon.20, ptr %6, i32 0, i32 1, !dbg !6800
  %7 = load volatile i32, ptr %len, align 4, !dbg !6800
  store i32 %7, ptr %tmp9, align 4, !dbg !6802
  %8 = load i32, ptr %tmp9, align 4, !dbg !6800
  store i32 %8, ptr %dlen, align 4, !dbg !6799
  %9 = load ptr, ptr %p.addr, align 8, !dbg !6804
  %10 = load ptr, ptr %dname, align 8, !dbg !6805
  %11 = load i32, ptr %dlen, align 4, !dbg !6806
  %call = call zeroext i1 @prepend(ptr noundef %9, ptr noundef %10, i32 noundef %11) #15, !dbg !6807
  br i1 %call, label %land.rhs, label %land.end, !dbg !6808

land.rhs:                                         ; preds = %do.end8
  %12 = load ptr, ptr %p.addr, align 8, !dbg !6809
  %call10 = call zeroext i1 @prepend_char(ptr noundef %12, i8 noundef zeroext 47) #15, !dbg !6810
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end8
  %13 = phi i1 [ false, %do.end8 ], [ %call10, %land.rhs ], !dbg !6811
  call void @llvm.lifetime.end.p0(i64 4, ptr %dlen) #14, !dbg !6812
  call void @llvm.lifetime.end.p0(i64 8, ptr %dname) #14, !dbg !6812
  ret i1 %13, !dbg !6813
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @read_seqretry(ptr noundef %sl, i32 noundef %start) #5 align 16 !dbg !6814 {
entry:
  %sl.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  store ptr %sl, ptr %sl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sl.addr, metadata !6818, metadata !DIExpression()), !dbg !6820
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6819, metadata !DIExpression()), !dbg !6821
  %0 = load ptr, ptr %sl.addr, align 8, !dbg !6822
  %seqcount = getelementptr inbounds %struct.seqlock_t, ptr %0, i32 0, i32 0, !dbg !6822
  %call = call ptr @__seqprop_spinlock_ptr(ptr noundef %seqcount) #15, !dbg !6822
  %1 = load i32, ptr %start.addr, align 4, !dbg !6822
  %call1 = call i32 @do_read_seqcount_retry(ptr noundef %call, i32 noundef %1) #15, !dbg !6822
  ret i32 %call1, !dbg !6823
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_read_seqcount_retry(ptr noundef %s, i32 noundef %start) #5 align 16 !dbg !6824 {
entry:
  %s.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6830, metadata !DIExpression()), !dbg !6832
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6831, metadata !DIExpression()), !dbg !6833
  br label %do.body, !dbg !6834

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6835

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6837

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6835

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !6839

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6841

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6839, !srcloc !6843
  br label %do.end5, !dbg !6839

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !6835

do.end6:                                          ; preds = %do.end5
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6844
  %1 = load i32, ptr %start.addr, align 4, !dbg !6845
  %call = call i32 @do___read_seqcount_retry(ptr noundef %0, i32 noundef %1) #15, !dbg !6846
  ret i32 %call, !dbg !6847
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__seqprop_spinlock_ptr(ptr noundef %s) #6 align 16 !dbg !6848 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6854, metadata !DIExpression()), !dbg !6855
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6855
  %seqcount = getelementptr inbounds %struct.seqcount_spinlock, ptr %0, i32 0, i32 0, !dbg !6855
  ret ptr %seqcount, !dbg !6855
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do___read_seqcount_retry(ptr noundef %s, i32 noundef %start) #5 align 16 !dbg !6856 {
entry:
  %s.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6858, metadata !DIExpression()), !dbg !6860
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6859, metadata !DIExpression()), !dbg !6861
  call void @kcsan_atomic_next(i32 noundef 0) #15, !dbg !6862
  br label %do.body, !dbg !6863

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6865

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6863
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !6863
  %1 = load volatile i32, ptr %sequence, align 4, !dbg !6863
  store i32 %1, ptr %tmp, align 4, !dbg !6865
  %2 = load i32, ptr %tmp, align 4, !dbg !6863
  %3 = load i32, ptr %start.addr, align 4, !dbg !6867
  %cmp = icmp ne i32 %2, %3, !dbg !6867
  %lnot = xor i1 %cmp, true, !dbg !6867
  %lnot1 = xor i1 %lnot, true, !dbg !6867
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6867
  %conv = sext i32 %lnot.ext to i64, !dbg !6867
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6867
  %conv2 = trunc i64 %expval to i32, !dbg !6867
  ret i32 %conv2, !dbg !6868
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @read_sequnlock_excl(ptr noundef %sl) #5 align 16 !dbg !6869 {
entry:
  %sl.addr = alloca ptr, align 8
  store ptr %sl, ptr %sl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sl.addr, metadata !6871, metadata !DIExpression()), !dbg !6872
  %0 = load ptr, ptr %sl.addr, align 8, !dbg !6873
  %lock = getelementptr inbounds %struct.seqlock_t, ptr %0, i32 0, i32 1, !dbg !6874
  call void @spin_unlock(ptr noundef %lock) #15, !dbg !6875
  ret void, !dbg !6876
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !6877 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6879, metadata !DIExpression()), !dbg !6880
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6881
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6881
  call void @_raw_spin_unlock(ptr noundef %1) #15, !dbg !6881
  ret void, !dbg !6882
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6883 dso_local void @_raw_spin_unlock(ptr noundef) #8 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6884 dso_local void @__rcu_read_lock() #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @d_unhashed(ptr noundef %dentry) #5 align 16 !dbg !6885 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6887, metadata !DIExpression()), !dbg !6888
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6889
  %d_hash = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, !dbg !6890
  %call = call zeroext i1 @hlist_bl_unhashed(ptr noundef %d_hash) #15, !dbg !6891
  %conv = zext i1 %call to i32, !dbg !6891
  ret i32 %conv, !dbg !6892
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @hlist_bl_unhashed(ptr noundef %h) #5 align 16 !dbg !6893 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !6899, metadata !DIExpression()), !dbg !6900
  %0 = load ptr, ptr %h.addr, align 8, !dbg !6901
  %pprev = getelementptr inbounds %struct.hlist_bl_node, ptr %0, i32 0, i32 1, !dbg !6902
  %1 = load ptr, ptr %pprev, align 8, !dbg !6902
  %tobool = icmp ne ptr %1, null, !dbg !6903
  %lnot = xor i1 %tobool, true, !dbg !6903
  ret i1 %lnot, !dbg !6904
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @prepend_copy(ptr noundef %dst, ptr noundef %src, i32 noundef %len) #0 align 16 !dbg !6905 {
entry:
  %retval = alloca i1, align 1
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !6909, metadata !DIExpression()), !dbg !6912
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !6910, metadata !DIExpression()), !dbg !6913
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6911, metadata !DIExpression()), !dbg !6914
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !6915
  %1 = load ptr, ptr %src.addr, align 8, !dbg !6915
  %2 = load i32, ptr %len.addr, align 4, !dbg !6915
  %conv = sext i32 %2 to i64, !dbg !6915
  %call = call i64 @copy_from_kernel_nofault(ptr noundef %0, ptr noundef %1, i64 noundef %conv) #15, !dbg !6915
  %tobool = icmp ne i64 %call, 0, !dbg !6915
  %lnot = xor i1 %tobool, true, !dbg !6915
  %lnot1 = xor i1 %lnot, true, !dbg !6915
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6915
  %conv2 = sext i32 %lnot.ext to i64, !dbg !6915
  %expval = call i64 @llvm.expect.i64(i64 %conv2, i64 0), !dbg !6915
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6915
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6917

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !6918
  %4 = load i32, ptr %len.addr, align 4, !dbg !6920
  %conv4 = sext i32 %4 to i64, !dbg !6920
  call void @llvm.memset.p0.i64(ptr align 1 %3, i8 120, i64 %conv4, i1 false), !dbg !6921
  store i1 false, ptr %retval, align 1, !dbg !6922
  br label %return, !dbg !6922

if.end:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !6923
  br label %return, !dbg !6923

return:                                           ; preds = %if.end, %if.then
  %5 = load i1, ptr %retval, align 1, !dbg !6924
  ret i1 %5, !dbg !6924
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6925 dso_local i64 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i64 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6929 dso_local void @__rcu_read_unlock() #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_getcwd(ptr noundef %buf, i64 noundef %size) #5 align 16 !dbg !6930 {
entry:
  %retval = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %error = alloca i32, align 4
  %pwd = alloca %struct.path, align 8
  %root = alloca %struct.path, align 8
  %page = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %len = alloca i32, align 4
  %b = alloca %struct.prepend_buffer, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6934, metadata !DIExpression()), !dbg !6945
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6935, metadata !DIExpression()), !dbg !6945
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #14, !dbg !6946
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6936, metadata !DIExpression()), !dbg !6947
  call void @llvm.lifetime.start.p0(i64 16, ptr %pwd) #14, !dbg !6948
  call void @llvm.dbg.declare(metadata ptr %pwd, metadata !6937, metadata !DIExpression()), !dbg !6949
  call void @llvm.lifetime.start.p0(i64 16, ptr %root) #14, !dbg !6948
  call void @llvm.dbg.declare(metadata ptr %root, metadata !6938, metadata !DIExpression()), !dbg !6950
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #14, !dbg !6951
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6939, metadata !DIExpression()), !dbg !6952
  %0 = load ptr, ptr @names_cachep, align 8, !dbg !6953
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #15, !dbg !6953
  store ptr %call, ptr %page, align 8, !dbg !6952
  %1 = load ptr, ptr %page, align 8, !dbg !6954
  %tobool = icmp ne ptr %1, null, !dbg !6954
  br i1 %tobool, label %if.end, label %if.then, !dbg !6956

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !6957
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6957

if.end:                                           ; preds = %entry
  call void @rcu_read_lock() #15, !dbg !6958
  %call1 = call ptr @get_current() #15, !dbg !6959
  %fs = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 100, !dbg !6960
  %2 = load ptr, ptr %fs, align 32, !dbg !6960
  call void @get_fs_root_and_pwd_rcu(ptr noundef %2, ptr noundef %root, ptr noundef %pwd) #15, !dbg !6961
  %dentry = getelementptr inbounds %struct.path, ptr %pwd, i32 0, i32 1, !dbg !6962
  %3 = load ptr, ptr %dentry, align 8, !dbg !6962
  %call2 = call i32 @d_unlinked(ptr noundef %3) #15, !dbg !6962
  %tobool3 = icmp ne i32 %call2, 0, !dbg !6962
  %lnot = xor i1 %tobool3, true, !dbg !6962
  %lnot4 = xor i1 %lnot, true, !dbg !6962
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6962
  %conv = sext i32 %lnot.ext to i64, !dbg !6962
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6962
  %tobool5 = icmp ne i64 %expval, 0, !dbg !6962
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !6963

if.then6:                                         ; preds = %if.end
  call void @rcu_read_unlock() #15, !dbg !6964
  store i32 -2, ptr %error, align 4, !dbg !6966
  br label %if.end55, !dbg !6967

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #14, !dbg !6968
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6940, metadata !DIExpression()), !dbg !6969
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #14, !dbg !6970
  call void @llvm.dbg.declare(metadata ptr %b, metadata !6944, metadata !DIExpression()), !dbg !6970
  %buf7 = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 0, !dbg !6970
  %4 = load ptr, ptr %page, align 8, !dbg !6970
  %add.ptr = getelementptr i8, ptr %4, i64 4096, !dbg !6970
  store ptr %add.ptr, ptr %buf7, align 8, !dbg !6970
  %len8 = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 1, !dbg !6970
  store i32 4096, ptr %len8, align 8, !dbg !6970
  %call9 = call zeroext i1 @prepend_char(ptr noundef %b, i8 noundef zeroext 0) #15, !dbg !6971
  %call10 = call i32 @prepend_path(ptr noundef %pwd, ptr noundef %root, ptr noundef %b) #15, !dbg !6972
  %cmp = icmp sgt i32 %call10, 0, !dbg !6972
  %lnot12 = xor i1 %cmp, true, !dbg !6972
  %lnot14 = xor i1 %lnot12, true, !dbg !6972
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !6972
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !6972
  %expval17 = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !6972
  %tobool18 = icmp ne i64 %expval17, 0, !dbg !6972
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !6974

if.then19:                                        ; preds = %if.else
  %call20 = call zeroext i1 @prepend(ptr noundef %b, ptr noundef @.str.2, i32 noundef 13) #15, !dbg !6975
  br label %if.end21, !dbg !6975

if.end21:                                         ; preds = %if.then19, %if.else
  call void @rcu_read_unlock() #15, !dbg !6976
  %len22 = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 1, !dbg !6977
  %5 = load i32, ptr %len22, align 8, !dbg !6977
  %sub = sub i32 4096, %5, !dbg !6978
  store i32 %sub, ptr %len, align 4, !dbg !6979
  %6 = load i32, ptr %len, align 4, !dbg !6980
  %cmp23 = icmp ugt i32 %6, 4096, !dbg !6980
  %lnot25 = xor i1 %cmp23, true, !dbg !6980
  %lnot27 = xor i1 %lnot25, true, !dbg !6980
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6980
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6980
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6980
  %tobool31 = icmp ne i64 %expval30, 0, !dbg !6980
  br i1 %tobool31, label %if.then32, label %if.else33, !dbg !6982

if.then32:                                        ; preds = %if.end21
  store i32 -36, ptr %error, align 4, !dbg !6983
  br label %if.end54, !dbg !6984

if.else33:                                        ; preds = %if.end21
  %7 = load i32, ptr %len, align 4, !dbg !6985
  %conv34 = zext i32 %7 to i64, !dbg !6985
  %8 = load i64, ptr %size.addr, align 8, !dbg !6985
  %cmp35 = icmp ugt i64 %conv34, %8, !dbg !6985
  %lnot37 = xor i1 %cmp35, true, !dbg !6985
  %lnot39 = xor i1 %lnot37, true, !dbg !6985
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !6985
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !6985
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 0), !dbg !6985
  %tobool43 = icmp ne i64 %expval42, 0, !dbg !6985
  br i1 %tobool43, label %if.then44, label %if.else45, !dbg !6987

if.then44:                                        ; preds = %if.else33
  store i32 -34, ptr %error, align 4, !dbg !6988
  br label %if.end53, !dbg !6989

if.else45:                                        ; preds = %if.else33
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !6990
  %buf46 = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 0, !dbg !6992
  %10 = load ptr, ptr %buf46, align 8, !dbg !6992
  %11 = load i32, ptr %len, align 4, !dbg !6993
  %conv47 = zext i32 %11 to i64, !dbg !6993
  %call48 = call i64 @copy_to_user(ptr noundef %9, ptr noundef %10, i64 noundef %conv47) #15, !dbg !6994
  %tobool49 = icmp ne i64 %call48, 0, !dbg !6994
  br i1 %tobool49, label %if.then50, label %if.else51, !dbg !6995

if.then50:                                        ; preds = %if.else45
  store i32 -14, ptr %error, align 4, !dbg !6996
  br label %if.end52, !dbg !6997

if.else51:                                        ; preds = %if.else45
  %12 = load i32, ptr %len, align 4, !dbg !6998
  store i32 %12, ptr %error, align 4, !dbg !6999
  br label %if.end52

if.end52:                                         ; preds = %if.else51, %if.then50
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then44
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then32
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #14, !dbg !7000
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #14, !dbg !7000
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then6
  %13 = load ptr, ptr @names_cachep, align 8, !dbg !7001
  %14 = load ptr, ptr %page, align 8, !dbg !7001
  call void @kmem_cache_free(ptr noundef %13, ptr noundef %14) #15, !dbg !7001
  %15 = load i32, ptr %error, align 4, !dbg !7002
  %conv56 = sext i32 %15 to i64, !dbg !7002
  store i64 %conv56, ptr %retval, align 8, !dbg !7003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7003

cleanup:                                          ; preds = %if.end55, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #14, !dbg !7004
  call void @llvm.lifetime.end.p0(i64 16, ptr %root) #14, !dbg !7004
  call void @llvm.lifetime.end.p0(i64 16, ptr %pwd) #14, !dbg !7004
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #14, !dbg !7004
  %16 = load i64, ptr %retval, align 8, !dbg !7004
  ret i64 %16, !dbg !7004
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7005 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @get_fs_root_and_pwd_rcu(ptr noundef %fs, ptr noundef %root, ptr noundef %pwd) #0 align 16 !dbg !7009 {
entry:
  %fs.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %pwd.addr = alloca ptr, align 8
  %seq = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_seq = alloca i32, align 4
  %__seq = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  store ptr %fs, ptr %fs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fs.addr, metadata !7013, metadata !DIExpression()), !dbg !7023
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !7014, metadata !DIExpression()), !dbg !7024
  store ptr %pwd, ptr %pwd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pwd.addr, metadata !7015, metadata !DIExpression()), !dbg !7025
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #14, !dbg !7026
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !7016, metadata !DIExpression()), !dbg !7027
  br label %do.body, !dbg !7028

do.body:                                          ; preds = %do.cond16, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %_seq) #14, !dbg !7029
  call void @llvm.dbg.declare(metadata ptr %_seq, metadata !7017, metadata !DIExpression()), !dbg !7029
  call void @llvm.lifetime.start.p0(i64 4, ptr %__seq) #14, !dbg !7030
  call void @llvm.dbg.declare(metadata ptr %__seq, metadata !7021, metadata !DIExpression()), !dbg !7030
  br label %while.cond, !dbg !7030

while.cond:                                       ; preds = %while.body, %do.body
  %0 = load ptr, ptr %fs.addr, align 8, !dbg !7030
  %seq1 = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 2, !dbg !7030
  %call = call i32 @__seqprop_spinlock_sequence(ptr noundef %seq1) #15, !dbg !7030
  store i32 %call, ptr %__seq, align 4, !dbg !7030
  %and = and i32 %call, 1, !dbg !7030
  %tobool = icmp ne i32 %and, 0, !dbg !7030
  br i1 %tobool, label %while.body, label %while.end, !dbg !7030

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #15, !dbg !7030
  br label %while.cond, !dbg !7030, !llvm.loop !7031

while.end:                                        ; preds = %while.cond
  call void @kcsan_atomic_next(i32 noundef 1000) #15, !dbg !7030
  %1 = load i32, ptr %__seq, align 4, !dbg !7030
  store i32 %1, ptr %tmp2, align 4, !dbg !7030
  call void @llvm.lifetime.end.p0(i64 4, ptr %__seq) #14, !dbg !7029
  %2 = load i32, ptr %tmp2, align 4, !dbg !7030
  store i32 %2, ptr %_seq, align 4, !dbg !7029
  br label %do.body3, !dbg !7029

do.body3:                                         ; preds = %while.end
  br label %do.body4, !dbg !7032

do.body4:                                         ; preds = %do.body3
  br label %do.cond, !dbg !7034

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !7034

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !7032

do.body5:                                         ; preds = %do.end
  br label %do.body6, !dbg !7036

do.body6:                                         ; preds = %do.body5
  br label %do.cond7, !dbg !7038

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !7038

do.end8:                                          ; preds = %do.cond7
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !7036, !srcloc !7040
  br label %do.cond9, !dbg !7036

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !7036

do.end10:                                         ; preds = %do.cond9
  br label %do.cond11, !dbg !7032

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !7032

do.end12:                                         ; preds = %do.cond11
  %3 = load i32, ptr %_seq, align 4, !dbg !7029
  store i32 %3, ptr %tmp13, align 4, !dbg !7032
  call void @llvm.lifetime.end.p0(i64 4, ptr %_seq) #14, !dbg !7041
  %4 = load i32, ptr %tmp13, align 4, !dbg !7029
  store i32 %4, ptr %tmp, align 4, !dbg !7042
  %5 = load i32, ptr %tmp, align 4, !dbg !7041
  store i32 %5, ptr %seq, align 4, !dbg !7043
  %6 = load ptr, ptr %root.addr, align 8, !dbg !7044
  %7 = load ptr, ptr %fs.addr, align 8, !dbg !7045
  %root14 = getelementptr inbounds %struct.fs_struct, ptr %7, i32 0, i32 5, !dbg !7046
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %root14, i64 16, i1 false), !dbg !7046
  %8 = load ptr, ptr %pwd.addr, align 8, !dbg !7047
  %9 = load ptr, ptr %fs.addr, align 8, !dbg !7048
  %pwd15 = getelementptr inbounds %struct.fs_struct, ptr %9, i32 0, i32 6, !dbg !7049
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %pwd15, i64 16, i1 false), !dbg !7049
  br label %do.cond16, !dbg !7050

do.cond16:                                        ; preds = %do.end12
  %10 = load ptr, ptr %fs.addr, align 8, !dbg !7051
  %seq17 = getelementptr inbounds %struct.fs_struct, ptr %10, i32 0, i32 2, !dbg !7051
  %call18 = call ptr @__seqprop_spinlock_ptr(ptr noundef %seq17) #15, !dbg !7051
  %11 = load i32, ptr %seq, align 4, !dbg !7051
  %call19 = call i32 @do_read_seqcount_retry(ptr noundef %call18, i32 noundef %11) #15, !dbg !7051
  %tobool20 = icmp ne i32 %call19, 0, !dbg !7050
  br i1 %tobool20, label %do.body, label %do.end21, !dbg !7050, !llvm.loop !7052

do.end21:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #14, !dbg !7054
  ret void, !dbg !7054
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #6 align 16 !dbg !7055 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !7059, metadata !DIExpression()), !dbg !7062
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !7060, metadata !DIExpression()), !dbg !7063
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7061, metadata !DIExpression()), !dbg !7064
  %0 = load ptr, ptr %from.addr, align 8, !dbg !7065
  %1 = load i64, ptr %n.addr, align 8, !dbg !7067
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #15, !dbg !7068
  br i1 %call, label %if.then, label %if.end, !dbg !7069

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !7070
  %3 = load ptr, ptr %from.addr, align 8, !dbg !7071
  %4 = load i64, ptr %n.addr, align 8, !dbg !7072
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #15, !dbg !7073
  store i64 %call1, ptr %n.addr, align 8, !dbg !7074
  br label %if.end, !dbg !7075

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !7076
  ret i64 %5, !dbg !7077
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7078 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #6 align 16 !dbg !7081 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7085, metadata !DIExpression()), !dbg !7095
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !7086, metadata !DIExpression()), !dbg !7096
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !7087, metadata !DIExpression()), !dbg !7097
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #14, !dbg !7098
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !7088, metadata !DIExpression()), !dbg !7099
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7100
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !7101
  %conv = trunc i64 %1 to i32, !dbg !7101
  store i32 %conv, ptr %sz, align 4, !dbg !7099
  %2 = load i32, ptr %sz, align 4, !dbg !7102
  %cmp = icmp sge i32 %2, 0, !dbg !7102
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !7102

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !7102
  %conv2 = sext i32 %3 to i64, !dbg !7102
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !7102
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !7102
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !7104
  %lnot = xor i1 %5, true, !dbg !7102
  %lnot5 = xor i1 %lnot, true, !dbg !7102
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !7102
  %conv6 = sext i32 %lnot.ext to i64, !dbg !7102
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !7102
  %tobool = icmp ne i64 %expval, 0, !dbg !7102
  br i1 %tobool, label %if.then, label %if.end12, !dbg !7105

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !7106
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !7109
  br i1 %7, label %if.else, label %if.then7, !dbg !7110

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !7111
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !7112
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #15, !dbg !7113
  br label %if.end11, !dbg !7113

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !7114, !range !7116, !noundef !907
  %tobool8 = trunc i8 %10 to i1, !dbg !7114
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !7117

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #15, !dbg !7118, !srcloc !7119
  br label %if.end, !dbg !7118

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #15, !dbg !7120, !srcloc !7121
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !7122
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7122

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !7123
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7089, metadata !DIExpression()), !dbg !7123
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !7123
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !7123
  %lnot15 = xor i1 %cmp13, true, !dbg !7123
  %lnot17 = xor i1 %lnot15, true, !dbg !7123
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !7123
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !7123
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !7124
  %tobool19 = icmp ne i32 %12, 0, !dbg !7124
  %lnot20 = xor i1 %tobool19, true, !dbg !7124
  %lnot22 = xor i1 %lnot20, true, !dbg !7124
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !7124
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !7124
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !7124
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !7124
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !7123

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !7124

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !7125
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7092, metadata !DIExpression()), !dbg !7125
  store i32 2307, ptr %__flags, align 4, !dbg !7125
  br label %do.body28, !dbg !7125

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !7126

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !7126

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !7125

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !7128
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 249, i32 %13, i64 12) #14, !dbg !7128, !srcloc !7130
  br label %do.cond30, !dbg !7128

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !7128

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !7125

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !7131

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !7131

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !7124
  br label %do.cond35, !dbg !7125

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !7125

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !7125

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !7123
  %tobool38 = icmp ne i32 %14, 0, !dbg !7123
  %lnot39 = xor i1 %tobool38, true, !dbg !7123
  %lnot41 = xor i1 %lnot39, true, !dbg !7123
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !7123
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !7123
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !7123
  store i64 %expval44, ptr %tmp, align 8, !dbg !7124
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !7133
  %15 = load i64, ptr %tmp, align 8, !dbg !7123
  %tobool45 = icmp ne i64 %15, 0, !dbg !7133
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !7134

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !7135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7135

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !7136
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !7137
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !7138, !range !7116, !noundef !907
  %tobool48 = trunc i8 %18 to i1, !dbg !7138
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #15, !dbg !7139
  store i1 true, ptr %retval, align 1, !dbg !7140
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7140

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #14, !dbg !7141
  %19 = load i1, ptr %retval, align 1, !dbg !7141
  ret i1 %19, !dbg !7141
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7142 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #5 align 16 !dbg !7143 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7147, metadata !DIExpression()), !dbg !7149
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7148, metadata !DIExpression()), !dbg !7150
  %0 = load i32, ptr %size.addr, align 4, !dbg !7151
  %1 = load i64, ptr %count.addr, align 8, !dbg !7153
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #15, !dbg !7154
  ret void, !dbg !7155
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7156 dso_local void @__bad_copy_from() #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7157 dso_local void @__bad_copy_to() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #5 align 16 !dbg !7158 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7162, metadata !DIExpression()), !dbg !7165
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7163, metadata !DIExpression()), !dbg !7166
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !7164, metadata !DIExpression()), !dbg !7167
  ret void, !dbg !7168
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7169 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { nounwind memory(none) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!5902, !5903, !5904, !5905, !5906, !5907, !5908, !5909}
!llvm.ident = !{!5910}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 288, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/d_path.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8c465077dd313c9cac9c9c6d9f06df3")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 11)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_d_path323", scope: !9, file: !2, line: 296, type: !25, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.d_path.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/d_path\22 -D KBUILD_BASENAME=\22d_path\22 -D KBUILD_MODNAME=\22d_path\22 -D __KBUILD_MODNAME=kmod_d_path -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/d_path.ll fs/d_path.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !272, globals: !5887, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !17, !112, !118, !134, !141, !149, !156, !163, !169, !180, !186, !192, !199, !207, !214, !223, !228, !233, !239, !248, !256, !261, !267}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !12, line: 65, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!16 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !19, file: !18, line: 147, baseType: !13, size: 32, elements: !109)
!18 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !18, line: 135, size: 512, elements: !20)
!20 = !{!21, !24, !26, !28, !32, !33, !49, !107, !108}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !19, file: !18, line: 136, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !19, file: !18, line: 137, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !19, file: !18, line: 138, baseType: !27, size: 32, offset: 128)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !19, file: !18, line: 139, baseType: !29, size: 16, offset: 160)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !30, line: 24, baseType: !31)
!30 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !19, file: !18, line: 150, baseType: !17, size: 32, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !19, file: !18, line: 151, baseType: !34, size: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !18, line: 64, baseType: !36)
!36 = !DISubroutineType(types: !37)
!37 = !{!27, !38, !27, !25, !39, !45}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 61, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !42, line: 72, baseType: !43)
!42 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !42, line: 16, baseType: !44)
!44 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !30, line: 52, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !42, line: 88, baseType: !48)
!48 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !19, file: !18, line: 152, baseType: !50, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !18, line: 117, size: 256, elements: !52)
!52 = !{!53, !58}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !51, file: !18, line: 118, baseType: !54, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !30, line: 174, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 172, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !55, file: !30, line: 173, baseType: !27, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !51, file: !18, line: 119, baseType: !59, size: 192, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !60, line: 41, baseType: !61)
!60 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !60, line: 37, size: 192, elements: !62)
!62 = !{!63, !101}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !61, file: !60, line: 38, baseType: !64, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !65, line: 29, baseType: !66)
!65 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !65, line: 17, size: 32, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, scope: !66, file: !65, line: 18, baseType: !69, size: 32)
!69 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !66, file: !65, line: 18, size: 32, elements: !70)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !69, file: !65, line: 19, baseType: !72, size: 32)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !73, line: 14, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !72, file: !73, line: 15, baseType: !76, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !77, line: 44, baseType: !78)
!77 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !77, line: 14, size: 32, elements: !79)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, scope: !78, file: !77, line: 15, baseType: !81, size: 32)
!81 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !78, file: !77, line: 15, size: 32, elements: !82)
!82 = !{!83, !84, !94}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !81, file: !77, line: 16, baseType: !54, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !77, line: 24, baseType: !85, size: 16)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !77, line: 24, size: 16, elements: !86)
!86 = !{!87, !93}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !85, file: !77, line: 25, baseType: !88, size: 8)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !89, line: 17, baseType: !90)
!89 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !91, line: 21, baseType: !92)
!91 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !85, file: !77, line: 26, baseType: !88, size: 8, offset: 8)
!94 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !77, line: 28, baseType: !95, size: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !77, line: 28, size: 32, elements: !96)
!96 = !{!97, !100}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !95, file: !77, line: 29, baseType: !98, size: 16)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !89, line: 19, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !91, line: 24, baseType: !31)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !95, file: !77, line: 30, baseType: !98, size: 16, offset: 16)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !61, file: !60, line: 39, baseType: !102, size: 128, offset: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !30, line: 190, size: 128, elements: !103)
!103 = !{!104, !106}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !102, file: !30, line: 191, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !102, file: !30, line: 191, baseType: !105, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !19, file: !18, line: 153, baseType: !25, size: 64, offset: 384)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !19, file: !18, line: 154, baseType: !25, size: 64, offset: 448)
!109 = !{!110, !111}
!110 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!111 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !113, line: 16, baseType: !13, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!114 = !{!115, !116, !117}
!115 = !DIEnumerator(name: "TT_NONE", value: 0)
!116 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!117 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !119, line: 1325, baseType: !13, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!121 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!122 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!123 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!124 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!125 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!126 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!127 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!128 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!129 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!130 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!131 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!132 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!133 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !135, line: 15, baseType: !13, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!138 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!139 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!140 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !142, line: 68, baseType: !13, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!143 = !{!144, !145, !146, !147, !148}
!144 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!145 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!146 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!147 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!148 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !150, line: 51, baseType: !13, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!151 = !{!152, !153, !154, !155}
!152 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!153 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!154 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!155 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !157, line: 312, baseType: !13, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!158 = !{!159, !160, !161, !162}
!159 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!160 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!161 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!162 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !164, line: 26, baseType: !13, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!165 = !{!166, !167, !168}
!166 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!167 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!168 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !170, line: 253, baseType: !13, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179}
!172 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!173 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!174 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!175 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!176 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!177 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!178 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!179 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !170, line: 158, baseType: !13, size: 32, elements: !181)
!181 = !{!182, !183, !184, !185}
!182 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!183 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!184 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!185 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !187, line: 45, baseType: !13, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!188 = !{!189, !190, !191}
!189 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!190 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!191 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !193, line: 487, baseType: !13, size: 32, elements: !194)
!193 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!194 = !{!195, !196, !197, !198}
!195 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!196 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!197 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!198 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !200, line: 620, baseType: !13, size: 32, elements: !201)
!200 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!201 = !{!202, !203, !204, !205, !206}
!202 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!203 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!204 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!205 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!206 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !200, line: 597, baseType: !27, size: 32, elements: !208)
!208 = !{!209, !210, !211, !212, !213}
!209 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!210 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!211 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!212 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!213 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !193, line: 547, baseType: !13, size: 32, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222}
!216 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!217 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!218 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!219 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!220 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!221 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!222 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !193, line: 564, baseType: !13, size: 32, elements: !224)
!224 = !{!225, !226, !227}
!225 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!226 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!227 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !193, line: 577, baseType: !13, size: 32, elements: !229)
!229 = !{!230, !231, !232}
!230 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!231 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!232 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !193, line: 503, baseType: !13, size: 32, elements: !234)
!234 = !{!235, !236, !237, !238}
!235 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!236 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!237 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!238 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !240, line: 593, baseType: !27, size: 32, elements: !241)
!240 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!241 = !{!242, !243, !244, !245, !246, !247}
!242 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!243 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!244 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!245 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!246 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!247 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !249, line: 9, baseType: !13, size: 32, elements: !250)
!249 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!250 = !{!251, !252, !253, !254, !255}
!251 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!252 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!253 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!254 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!255 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !257, line: 2052, baseType: !13, size: 32, elements: !258)
!257 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!258 = !{!259, !260}
!259 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!260 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !262, line: 54, baseType: !13, size: 32, elements: !263)
!262 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!263 = !{!264, !265, !266}
!264 = !DIEnumerator(name: "USRQUOTA", value: 0)
!265 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!266 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !268, line: 10, baseType: !13, size: 32, elements: !269)
!268 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!269 = !{!270, !271}
!270 = !DIEnumerator(name: "false", value: 0)
!271 = !DIEnumerator(name: "true", value: 1)
!272 = !{!25, !13, !273, !276, !5877, !5880, !44, !5883, !4735, !5886, !591, !389, !27, !584}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !13)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !281, line: 82, size: 1536, elements: !282)
!281 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!282 = !{!283, !284, !294, !302, !303, !323, !5845, !5847, !5860, !5861, !5862, !5863, !5864, !5869, !5870, !5871}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !280, file: !281, line: 84, baseType: !13, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !280, file: !281, line: 85, baseType: !285, size: 32, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !286, line: 275, baseType: !287)
!286 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !286, line: 275, size: 32, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !287, file: !286, line: 275, baseType: !290, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !286, line: 69, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !286, line: 64, size: 32, elements: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !291, file: !286, line: 65, baseType: !13, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !280, file: !281, line: 86, baseType: !295, size: 128, offset: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !296, line: 38, size: 128, elements: !297)
!296 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!297 = !{!298, !300}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !296, line: 39, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !295, file: !296, line: 39, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !280, file: !281, line: 87, baseType: !279, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !280, file: !281, line: 88, baseType: !304, size: 128, offset: 256)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !281, line: 49, size: 128, elements: !305)
!305 = !{!306, !320}
!306 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !281, line: 50, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !281, line: 50, size: 64, elements: !308)
!308 = !{!309, !316}
!309 = !DIDerivedType(tag: DW_TAG_member, scope: !307, file: !281, line: 51, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !307, file: !281, line: 51, size: 64, elements: !311)
!311 = !{!312, !315}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !310, file: !281, line: 52, baseType: !313, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !89, line: 21, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !91, line: 27, baseType: !13)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !310, file: !281, line: 52, baseType: !313, size: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !307, file: !281, line: 54, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !89, line: 23, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !91, line: 31, baseType: !319)
!319 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !281, line: 56, baseType: !321, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !280, file: !281, line: 89, baseType: !324, size: 64, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !257, line: 641, size: 4800, elements: !326)
!326 = !{!327, !328, !329, !337, !338, !345, !346, !349, !350, !5784, !5785, !5786, !5787, !5788, !5793, !5794, !5795, !5796, !5797, !5798, !5799, !5800, !5801, !5802, !5803, !5804, !5805, !5806, !5807, !5808, !5809, !5810, !5811, !5816, !5817, !5818, !5819, !5820, !5821, !5822, !5827, !5830, !5831, !5832, !5841, !5842, !5843, !5844}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !325, file: !257, line: 642, baseType: !29, size: 16)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !325, file: !257, line: 643, baseType: !31, size: 16, offset: 16)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !325, file: !257, line: 644, baseType: !330, size: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !331, line: 23, baseType: !332)
!331 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !331, line: 21, size: 32, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !332, file: !331, line: 22, baseType: !335, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !30, line: 37, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !42, line: 49, baseType: !13)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !325, file: !257, line: 645, baseType: !102, size: 128, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !325, file: !257, line: 646, baseType: !339, size: 32, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !331, line: 28, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !331, line: 26, size: 32, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !340, file: !331, line: 27, baseType: !343, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !30, line: 38, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !42, line: 50, baseType: !13)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !325, file: !257, line: 647, baseType: !13, size: 32, offset: 224)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !325, file: !257, line: 650, baseType: !347, size: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !257, line: 607, flags: DIFlagFwdDecl)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !325, file: !257, line: 651, baseType: !347, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !325, file: !257, line: 654, baseType: !351, size: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !257, line: 1966, size: 2048, align: 512, elements: !354)
!354 = !{!355, !359, !372, !379, !385, !390, !394, !398, !402, !406, !410, !411, !417, !421, !5706, !5735, !5739, !5745, !5749, !5753, !5757, !5761, !5765, !5771, !5775}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !353, file: !257, line: 1967, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!279, !324, !279, !13}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !353, file: !257, line: 1968, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!22, !279, !324, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !365, line: 10, size: 128, elements: !366)
!365 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!366 = !{!367, !371}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !364, file: !365, line: 11, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !25}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !364, file: !365, line: 12, baseType: !25, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !353, file: !257, line: 1969, baseType: !373, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!27, !376, !324, !27}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !378, line: 42, flags: DIFlagFwdDecl)
!378 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!379 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !353, file: !257, line: 1970, baseType: !380, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!347, !324, !27, !383}
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !30, line: 35, baseType: !384)
!384 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !353, file: !257, line: 1972, baseType: !386, size: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!27, !279, !389, !27}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !353, file: !257, line: 1974, baseType: !391, size: 64, offset: 320)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!27, !376, !324, !279, !29, !383}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !353, file: !257, line: 1976, baseType: !395, size: 64, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!27, !279, !324, !279}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !353, file: !257, line: 1977, baseType: !399, size: 64, offset: 448)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!27, !324, !279}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !353, file: !257, line: 1978, baseType: !403, size: 64, offset: 512)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!27, !376, !324, !279, !22}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !353, file: !257, line: 1980, baseType: !407, size: 64, offset: 576)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!27, !376, !324, !279, !29}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !353, file: !257, line: 1982, baseType: !399, size: 64, offset: 640)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !353, file: !257, line: 1983, baseType: !412, size: 64, offset: 704)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!27, !376, !324, !279, !29, !415}
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !30, line: 21, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !30, line: 18, baseType: !313)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !353, file: !257, line: 1985, baseType: !418, size: 64, offset: 768)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!27, !376, !324, !279, !324, !279, !13}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !353, file: !257, line: 1987, baseType: !422, size: 64, offset: 832)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!27, !376, !279, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !257, line: 226, size: 640, elements: !427)
!427 = !{!428, !429, !430, !440, !449, !450, !459, !460, !461}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !426, file: !257, line: 227, baseType: !13, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !426, file: !257, line: 228, baseType: !29, size: 16, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !257, line: 241, baseType: !431, size: 32, offset: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !257, line: 241, size: 32, elements: !432)
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !431, file: !257, line: 242, baseType: !330, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !431, file: !257, line: 243, baseType: !435, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !436, line: 16, baseType: !437)
!436 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 14, size: 32, elements: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !437, file: !436, line: 15, baseType: !335, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !257, line: 245, baseType: !441, size: 32, offset: 96)
!441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !257, line: 245, size: 32, elements: !442)
!442 = !{!443, !444}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !441, file: !257, line: 246, baseType: !339, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !441, file: !257, line: 247, baseType: !445, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !436, line: 20, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 18, size: 32, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !446, file: !436, line: 19, baseType: !343, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !426, file: !257, line: 249, baseType: !46, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !426, file: !257, line: 250, baseType: !451, size: 128, offset: 192)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !452, line: 13, size: 128, elements: !453)
!452 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!453 = !{!454, !457}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !451, file: !452, line: 14, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !452, line: 8, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !91, line: 30, baseType: !48)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !451, file: !452, line: 15, baseType: !458, size: 64, offset: 64)
!458 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !426, file: !257, line: 251, baseType: !451, size: 128, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !426, file: !257, line: 252, baseType: !451, size: 128, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !426, file: !257, line: 259, baseType: !462, size: 64, offset: 576)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !257, line: 994, size: 1856, align: 64, elements: !464)
!464 = !{!465, !484, !485, !487, !495, !508, !509, !510, !5563, !5564, !5573, !5574, !5575, !5699, !5700, !5701, !5702, !5703, !5704, !5705}
!465 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !257, line: 995, baseType: !466, size: 128)
!466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !463, file: !257, line: 995, size: 128, elements: !467)
!467 = !{!468, !474, !483}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !466, file: !257, line: 996, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !470, line: 60, size: 64, elements: !471)
!470 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!471 = !{!472}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !470, line: 61, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !466, file: !257, line: 997, baseType: !475, size: 128, align: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !30, line: 232, size: 128, align: 64, elements: !476)
!476 = !{!477, !479}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !475, file: !30, line: 233, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !475, file: !30, line: 234, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !478}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !466, file: !257, line: 998, baseType: !13, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !463, file: !257, line: 1005, baseType: !64, size: 32, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !463, file: !257, line: 1006, baseType: !486, size: 32, offset: 160)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !30, line: 156, baseType: !13)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !463, file: !257, line: 1007, baseType: !488, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !489, line: 13, baseType: !490)
!489 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !30, line: 181, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 179, size: 64, elements: !492)
!492 = !{!493}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !491, file: !30, line: 180, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !89, line: 22, baseType: !456)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !463, file: !257, line: 1008, baseType: !496, size: 256, offset: 256)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !497, line: 66, size: 256, elements: !498)
!497 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!498 = !{!499, !500, !502, !507}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !496, file: !497, line: 67, baseType: !488, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !496, file: !497, line: 68, baseType: !501, size: 32, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !73, line: 23, baseType: !72)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !496, file: !497, line: 70, baseType: !503, size: 32, offset: 96)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !504, line: 15, size: 32, elements: !505)
!504 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !503, file: !504, line: 20, baseType: !54, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !496, file: !497, line: 72, baseType: !102, size: 128, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !463, file: !257, line: 1009, baseType: !46, size: 64, offset: 512)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !463, file: !257, line: 1010, baseType: !13, size: 32, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !463, file: !257, line: 1011, baseType: !511, size: 256, offset: 640)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !257, line: 948, size: 256, elements: !512)
!512 = !{!513, !536, !5559, !5560, !5561, !5562}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !511, file: !257, line: 949, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !515, line: 34, baseType: !516)
!515 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !515, line: 25, size: 64, elements: !517)
!517 = !{!518}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !516, file: !515, line: 26, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !520, line: 27, baseType: !521)
!520 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !520, line: 13, size: 64, elements: !522)
!522 = !{!523, !535}
!523 = !DIDerivedType(tag: DW_TAG_member, scope: !521, file: !520, line: 14, baseType: !524, size: 32)
!524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !521, file: !520, line: 14, size: 32, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !524, file: !520, line: 15, baseType: !54, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, scope: !524, file: !520, line: 16, baseType: !528, size: 32)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !524, file: !520, line: 16, size: 32, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !528, file: !520, line: 18, baseType: !88, size: 8)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !528, file: !520, line: 19, baseType: !532, size: 24, offset: 8)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 24, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 3)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !521, file: !520, line: 26, baseType: !76, size: 32, offset: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !511, file: !257, line: 950, baseType: !537, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !249, line: 59, size: 768, elements: !539)
!539 = !{!540, !546, !547, !548, !561, !562, !563, !564}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !538, file: !249, line: 61, baseType: !541, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !542, line: 113, baseType: !543)
!542 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !542, line: 111, size: 32, elements: !544)
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !543, file: !542, line: 112, baseType: !54, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !538, file: !249, line: 62, baseType: !13, size: 32, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !538, file: !249, line: 63, baseType: !64, size: 32, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !538, file: !249, line: 65, baseType: !549, size: 256, offset: 128)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 256, elements: !559)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !30, line: 194, size: 64, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !550, file: !30, line: 195, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !30, line: 198, size: 128, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !554, file: !30, line: 199, baseType: !553, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !554, file: !30, line: 199, baseType: !558, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!559 = !{!560}
!560 = !DISubrange(count: 4)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !538, file: !249, line: 66, baseType: !550, size: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !538, file: !249, line: 68, baseType: !59, size: 192, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !538, file: !249, line: 69, baseType: !475, size: 128, align: 64, offset: 640)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !538, file: !249, line: 70, baseType: !565, offset: 768)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, elements: !1318)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !249, line: 54, size: 128, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !566, file: !249, line: 55, baseType: !27, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !566, file: !249, line: 56, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !572, line: 26, size: 1152, elements: !573)
!572 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!573 = !{!574, !588, !589, !590, !5538, !5539, !5540, !5541, !5554, !5555, !5556, !5557, !5558}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !571, file: !572, line: 27, baseType: !575, size: 192)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !576, line: 19, size: 192, elements: !577)
!576 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!577 = !{!578, !586, !587}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !575, file: !576, line: 20, baseType: !579, size: 128)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !580, line: 296, size: 128, elements: !581)
!580 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!581 = !{!582, !583, !585}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !579, file: !580, line: 297, baseType: !64, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !579, file: !580, line: 299, baseType: !584, size: 32, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !30, line: 154, baseType: !13)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !579, file: !580, line: 300, baseType: !25, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !575, file: !576, line: 21, baseType: !13, size: 32, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !575, file: !576, line: 22, baseType: !13, size: 32, offset: 160)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !571, file: !572, line: 28, baseType: !475, size: 128, align: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !571, file: !572, line: 29, baseType: !13, size: 32, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !571, file: !572, line: 30, baseType: !591, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !593, line: 746, size: 58368, elements: !594)
!593 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!594 = !{!595, !603, !604, !605, !606, !607, !608, !609, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !682, !693, !788, !792, !795, !826, !827, !828, !829, !840, !842, !843, !844, !845, !846, !847, !858, !859, !862, !863, !864, !865, !866, !867, !868, !869, !876, !877, !884, !885, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1404, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1419, !1420, !1421, !1422, !1424, !1425, !1426, !1427, !1428, !1429, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1453, !1459, !1528, !1529, !1530, !1531, !1535, !1538, !1545, !1550, !4710, !4713, !4716, !4811, !5009, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5047, !5048, !5049, !5058, !5066, !5067, !5068, !5069, !5070, !5075, !5076, !5077, !5080, !5081, !5084, !5087, !5090, !5098, !5101, !5102, !5188, !5189, !5190, !5191, !5192, !5198, !5199, !5200, !5201, !5202, !5203, !5207, !5210, !5211, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5254, !5257, !5263, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5275, !5347, !5349, !5350, !5351, !5352, !5353, !5354, !5357, !5358, !5359, !5360, !5361, !5362, !5363, !5364, !5365, !5366, !5367, !5371, !5372, !5373}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !592, file: !593, line: 752, baseType: !596, size: 192)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !597, line: 56, size: 192, elements: !598)
!597 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!598 = !{!599, !600, !601, !602}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !596, file: !597, line: 57, baseType: !44, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !596, file: !597, line: 58, baseType: !44, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !596, file: !597, line: 59, baseType: !313, size: 32, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !596, file: !597, line: 61, baseType: !313, size: 32, offset: 160)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !592, file: !593, line: 754, baseType: !13, size: 32, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !592, file: !593, line: 767, baseType: !25, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !592, file: !593, line: 768, baseType: !541, size: 32, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !593, line: 770, baseType: !13, size: 32, offset: 352)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !592, file: !593, line: 771, baseType: !13, size: 32, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !592, file: !593, line: 774, baseType: !27, size: 32, offset: 416)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !592, file: !593, line: 775, baseType: !610, size: 128, offset: 448)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !611, line: 58, size: 128, elements: !612)
!611 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!612 = !{!613, !614, !619, !620}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !610, file: !611, line: 59, baseType: !469, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !611, line: 60, baseType: !615, size: 32, offset: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !611, line: 60, size: 32, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !615, file: !611, line: 61, baseType: !13, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !615, file: !611, line: 62, baseType: !54, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !610, file: !611, line: 65, baseType: !98, size: 16, offset: 96)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !610, file: !611, line: 65, baseType: !98, size: 16, offset: 112)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !592, file: !593, line: 776, baseType: !13, size: 32, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !592, file: !593, line: 777, baseType: !44, size: 64, offset: 640)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !592, file: !593, line: 778, baseType: !591, size: 64, offset: 704)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !592, file: !593, line: 787, baseType: !27, size: 32, offset: 768)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !592, file: !593, line: 788, baseType: !27, size: 32, offset: 800)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !592, file: !593, line: 790, baseType: !27, size: 32, offset: 832)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !592, file: !593, line: 792, baseType: !27, size: 32, offset: 864)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !592, file: !593, line: 793, baseType: !27, size: 32, offset: 896)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !592, file: !593, line: 794, baseType: !27, size: 32, offset: 928)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !592, file: !593, line: 795, baseType: !13, size: 32, offset: 960)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !592, file: !593, line: 797, baseType: !632, size: 2048, offset: 1024)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !593, line: 551, size: 2048, elements: !633)
!633 = !{!634, !639, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !661, !664, !665, !666}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !632, file: !593, line: 553, baseType: !635, size: 128)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !593, line: 411, size: 128, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !635, file: !593, line: 412, baseType: !44, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !635, file: !593, line: 413, baseType: !313, size: 32, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !632, file: !593, line: 554, baseType: !640, size: 192, align: 64, offset: 128)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !641, line: 5, size: 192, align: 64, elements: !642)
!641 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!642 = !{!643, !644, !646}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !640, file: !641, line: 6, baseType: !44, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !640, file: !641, line: 7, baseType: !645, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !640, file: !641, line: 8, baseType: !645, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !632, file: !593, line: 555, baseType: !317, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !632, file: !593, line: 556, baseType: !317, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !632, file: !593, line: 558, baseType: !102, size: 128, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !632, file: !593, line: 559, baseType: !13, size: 32, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !632, file: !593, line: 561, baseType: !317, size: 64, offset: 640)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !632, file: !593, line: 562, baseType: !317, size: 64, offset: 704)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !632, file: !593, line: 563, baseType: !317, size: 64, offset: 768)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !632, file: !593, line: 564, baseType: !317, size: 64, offset: 832)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !632, file: !593, line: 565, baseType: !494, size: 64, offset: 896)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !632, file: !593, line: 566, baseType: !317, size: 64, offset: 960)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !632, file: !593, line: 568, baseType: !317, size: 64, offset: 1024)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !632, file: !593, line: 571, baseType: !27, size: 32, offset: 1088)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !632, file: !593, line: 572, baseType: !660, size: 64, offset: 1152)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !632, file: !593, line: 574, baseType: !662, size: 64, offset: 1216)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !593, line: 49, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !632, file: !593, line: 576, baseType: !662, size: 64, offset: 1280)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !632, file: !593, line: 578, baseType: !44, size: 64, offset: 1344)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !632, file: !593, line: 588, baseType: !667, size: 512, align: 512, offset: 1536)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !593, line: 497, size: 512, align: 512, elements: !668)
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !677}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !667, file: !593, line: 498, baseType: !317, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !667, file: !593, line: 499, baseType: !317, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !667, file: !593, line: 500, baseType: !317, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !667, file: !593, line: 501, baseType: !313, size: 32, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !667, file: !593, line: 502, baseType: !313, size: 32, offset: 224)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !667, file: !593, line: 503, baseType: !44, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !667, file: !593, line: 504, baseType: !44, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !667, file: !593, line: 505, baseType: !44, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !667, file: !593, line: 506, baseType: !678, size: 64, align: 64, offset: 448)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !593, line: 445, size: 64, align: 64, elements: !679)
!679 = !{!680, !681}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !678, file: !593, line: 446, baseType: !13, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !678, file: !593, line: 447, baseType: !13, size: 32, offset: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !592, file: !593, line: 798, baseType: !683, size: 384, offset: 3072)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !593, line: 592, size: 384, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !683, file: !593, line: 593, baseType: !102, size: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !683, file: !593, line: 594, baseType: !44, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !683, file: !593, line: 595, baseType: !44, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !683, file: !593, line: 596, baseType: !13, size: 32, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !683, file: !593, line: 597, baseType: !31, size: 16, offset: 288)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !683, file: !593, line: 598, baseType: !31, size: 16, offset: 304)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !683, file: !593, line: 600, baseType: !692, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !592, file: !593, line: 799, baseType: !694, size: 1792, offset: 3456)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !593, line: 610, size: 1792, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !785, !786}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !694, file: !593, line: 611, baseType: !640, size: 192, align: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !694, file: !593, line: 618, baseType: !317, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !694, file: !593, line: 619, baseType: !317, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !694, file: !593, line: 620, baseType: !317, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !694, file: !593, line: 621, baseType: !317, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !694, file: !593, line: 622, baseType: !317, size: 64, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !694, file: !593, line: 629, baseType: !494, size: 64, offset: 512)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !694, file: !593, line: 630, baseType: !317, size: 64, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !593, line: 631, baseType: !13, size: 32, offset: 640)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !694, file: !593, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !694, file: !593, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !694, file: !593, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !694, file: !593, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !694, file: !593, line: 662, baseType: !710, size: 512, offset: 704)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !711)
!711 = !{!712, !720, !721, !726, !781, !782, !783, !784}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !710, file: !12, line: 119, baseType: !713, size: 256)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !714, line: 9, size: 256, elements: !715)
!714 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !713, file: !714, line: 10, baseType: !640, size: 192, align: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !713, file: !714, line: 11, baseType: !718, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !719, line: 29, baseType: !494)
!719 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !710, file: !12, line: 120, baseType: !718, size: 64, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !710, file: !12, line: 121, baseType: !722, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!11, !725}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !710, file: !12, line: 122, baseType: !727, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !729)
!729 = !{!730, !755, !756, !759, !764, !765, !776, !780}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !728, file: !12, line: 160, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 215, size: 4608, align: 512, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !732, file: !12, line: 216, baseType: !501, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !732, file: !12, line: 217, baseType: !13, size: 32, offset: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !732, file: !12, line: 218, baseType: !13, size: 32, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !732, file: !12, line: 219, baseType: !13, size: 32, offset: 96)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !732, file: !12, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !732, file: !12, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !732, file: !12, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !732, file: !12, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !732, file: !12, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !732, file: !12, line: 226, baseType: !13, size: 32, offset: 160)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !732, file: !12, line: 227, baseType: !31, size: 16, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !732, file: !12, line: 228, baseType: !31, size: 16, offset: 208)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !732, file: !12, line: 229, baseType: !13, size: 32, offset: 224)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !732, file: !12, line: 235, baseType: !718, size: 64, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !732, file: !12, line: 236, baseType: !725, size: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !732, file: !12, line: 237, baseType: !718, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !732, file: !12, line: 238, baseType: !725, size: 64, offset: 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !732, file: !12, line: 239, baseType: !752, size: 4096, align: 512, offset: 512)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 4096, align: 512, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 8)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !728, file: !12, line: 161, baseType: !13, size: 32, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !728, file: !12, line: 162, baseType: !757, size: 32, offset: 96)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !30, line: 32, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !42, line: 96, baseType: !27)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !728, file: !12, line: 163, baseType: !760, size: 32, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !286, line: 274, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !286, line: 274, size: 32, elements: !762)
!762 = !{!763}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !761, file: !286, line: 274, baseType: !290, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !728, file: !12, line: 164, baseType: !725, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !728, file: !12, line: 165, baseType: !766, size: 128, offset: 256)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !714, line: 14, size: 128, elements: !767)
!767 = !{!768}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !766, file: !714, line: 15, baseType: !769, size: 128)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !641, line: 26, size: 128, elements: !770)
!770 = !{!771, !775}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !769, file: !641, line: 27, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !641, line: 12, size: 64, elements: !773)
!773 = !{!774}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !772, file: !641, line: 13, baseType: !645, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !769, file: !641, line: 28, baseType: !645, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !728, file: !12, line: 166, baseType: !777, size: 64, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!718}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !728, file: !12, line: 167, baseType: !718, size: 64, offset: 448)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !710, file: !12, line: 123, baseType: !88, size: 8, offset: 448)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !710, file: !12, line: 124, baseType: !88, size: 8, offset: 456)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !710, file: !12, line: 125, baseType: !88, size: 8, offset: 464)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !710, file: !12, line: 126, baseType: !88, size: 8, offset: 472)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !694, file: !593, line: 671, baseType: !710, size: 512, offset: 1216)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !694, file: !593, line: 679, baseType: !787, size: 64, offset: 1728)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !592, file: !593, line: 800, baseType: !789, size: 64, offset: 5248)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !593, line: 800, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !592, file: !593, line: 809, baseType: !793, size: 64, offset: 5312)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !593, line: 70, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !592, file: !593, line: 825, baseType: !796, size: 2048, align: 512, offset: 5632)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !593, line: 509, size: 2048, align: 512, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !796, file: !593, line: 511, baseType: !317, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !796, file: !593, line: 512, baseType: !317, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !796, file: !593, line: 513, baseType: !317, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !796, file: !593, line: 514, baseType: !317, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !796, file: !593, line: 515, baseType: !317, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !796, file: !593, line: 516, baseType: !317, size: 64, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !796, file: !593, line: 518, baseType: !317, size: 64, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !796, file: !593, line: 519, baseType: !317, size: 64, offset: 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !796, file: !593, line: 520, baseType: !494, size: 64, offset: 512)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !796, file: !593, line: 522, baseType: !317, size: 64, offset: 576)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !796, file: !593, line: 523, baseType: !317, size: 64, offset: 640)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !796, file: !593, line: 524, baseType: !494, size: 64, offset: 704)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !796, file: !593, line: 526, baseType: !494, size: 64, offset: 768)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !796, file: !593, line: 527, baseType: !317, size: 64, offset: 832)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !796, file: !593, line: 529, baseType: !317, size: 64, offset: 896)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !796, file: !593, line: 530, baseType: !317, size: 64, offset: 960)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !796, file: !593, line: 531, baseType: !317, size: 64, offset: 1024)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !796, file: !593, line: 532, baseType: !317, size: 64, offset: 1088)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !796, file: !593, line: 533, baseType: !317, size: 64, offset: 1152)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !796, file: !593, line: 535, baseType: !317, size: 64, offset: 1216)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !796, file: !593, line: 536, baseType: !317, size: 64, offset: 1280)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !796, file: !593, line: 537, baseType: !317, size: 64, offset: 1344)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !796, file: !593, line: 538, baseType: !317, size: 64, offset: 1408)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !796, file: !593, line: 539, baseType: !317, size: 64, offset: 1472)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !796, file: !593, line: 540, baseType: !317, size: 64, offset: 1536)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !796, file: !593, line: 541, baseType: !317, size: 64, offset: 1600)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !796, file: !593, line: 542, baseType: !317, size: 64, offset: 1664)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !796, file: !593, line: 543, baseType: !317, size: 64, offset: 1728)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !592, file: !593, line: 833, baseType: !13, size: 32, offset: 7680)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !592, file: !593, line: 836, baseType: !13, size: 32, offset: 7712)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !592, file: !593, line: 837, baseType: !27, size: 32, offset: 7744)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !592, file: !593, line: 838, baseType: !830, size: 64, offset: 7808)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !832)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !833, line: 19, baseType: !834)
!833 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !833, line: 19, size: 64, elements: !835)
!835 = !{!836}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !834, file: !833, line: 19, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 1)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !592, file: !593, line: 839, baseType: !841, size: 64, offset: 7872)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !592, file: !593, line: 840, baseType: !832, size: 64, offset: 7936)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !592, file: !593, line: 841, baseType: !25, size: 64, offset: 8000)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !592, file: !593, line: 843, baseType: !31, size: 16, offset: 8064)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !592, file: !593, line: 845, baseType: !31, size: 16, offset: 8080)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !592, file: !593, line: 848, baseType: !27, size: 32, offset: 8096)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !592, file: !593, line: 849, baseType: !848, size: 32, offset: 8128)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !593, line: 718, size: 32, elements: !849)
!849 = !{!850, !857}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !848, file: !593, line: 724, baseType: !851, size: 32)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !848, file: !593, line: 719, size: 32, elements: !852)
!852 = !{!853, !854, !855, !856}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !851, file: !593, line: 720, baseType: !88, size: 8)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !851, file: !593, line: 721, baseType: !88, size: 8, offset: 8)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !851, file: !593, line: 722, baseType: !88, size: 8, offset: 16)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !851, file: !593, line: 723, baseType: !88, size: 8, offset: 24)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !848, file: !593, line: 725, baseType: !313, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !592, file: !593, line: 850, baseType: !102, size: 128, offset: 8192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !592, file: !593, line: 851, baseType: !860, size: 64, offset: 8320)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !593, line: 60, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !592, file: !593, line: 855, baseType: !44, size: 64, offset: 8384)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !592, file: !593, line: 856, baseType: !88, size: 8, offset: 8448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !592, file: !593, line: 857, baseType: !88, size: 8, offset: 8456)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !592, file: !593, line: 858, baseType: !27, size: 32, offset: 8480)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !592, file: !593, line: 859, baseType: !102, size: 128, offset: 8512)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !592, file: !593, line: 860, baseType: !27, size: 32, offset: 8640)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !592, file: !593, line: 861, baseType: !102, size: 128, offset: 8704)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !592, file: !593, line: 873, baseType: !870, size: 256, offset: 8832)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !593, line: 376, size: 256, elements: !871)
!871 = !{!872, !873, !874, !875}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !870, file: !593, line: 381, baseType: !44, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !870, file: !593, line: 384, baseType: !319, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !870, file: !593, line: 389, baseType: !319, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !870, file: !593, line: 392, baseType: !319, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !592, file: !593, line: 875, baseType: !102, size: 128, offset: 9088)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !592, file: !593, line: 877, baseType: !878, size: 320, offset: 9216)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !879, line: 86, size: 320, elements: !880)
!879 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!880 = !{!881, !882, !883}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !878, file: !879, line: 87, baseType: !27, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !878, file: !879, line: 88, baseType: !102, size: 128, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !878, file: !879, line: 89, baseType: !102, size: 128, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !592, file: !593, line: 878, baseType: !640, size: 192, align: 64, offset: 9536)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !592, file: !593, line: 881, baseType: !886, size: 64, offset: 9728)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !119, line: 733, size: 10240, elements: !888)
!888 = !{!889, !1316}
!889 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !119, line: 734, baseType: !890, size: 10240)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !119, line: 734, size: 10240, elements: !891)
!891 = !{!892, !896, !910, !914, !915, !916, !917, !918, !919, !928, !929, !930, !936, !937, !938, !939, !940, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !977, !989, !992, !1040, !1041, !1042, !1045, !1302, !1303, !1306, !1307, !1308, !1314, !1315}
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !119, line: 739, baseType: !893, size: 512, align: 512)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !119, line: 739, size: 512, align: 512, elements: !894)
!894 = !{!895}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !893, file: !119, line: 747, baseType: !54, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !890, file: !119, line: 750, baseType: !897, size: 128, offset: 512)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !898, line: 218, size: 128, elements: !899)
!898 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!899 = !{!900, !908, !909}
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !897, file: !898, line: 219, baseType: !901, size: 32)
!901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !897, file: !898, line: 219, size: 32, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !901, file: !898, line: 220, baseType: !64, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !901, file: !898, line: 221, baseType: !905)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !898, line: 197, baseType: !906)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !898, line: 197, elements: !907)
!907 = !{}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !897, file: !898, line: 223, baseType: !13, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !897, file: !898, line: 224, baseType: !25, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !890, file: !119, line: 752, baseType: !911, size: 64, offset: 640)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!44, !462, !44, !44, !44, !44}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !890, file: !119, line: 756, baseType: !44, size: 64, offset: 704)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !890, file: !119, line: 757, baseType: !44, size: 64, offset: 768)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !890, file: !119, line: 760, baseType: !44, size: 64, offset: 832)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !890, file: !119, line: 761, baseType: !44, size: 64, offset: 896)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !890, file: !119, line: 763, baseType: !44, size: 64, offset: 960)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !890, file: !119, line: 764, baseType: !920, size: 64, offset: 1024)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !922, line: 299, baseType: !923)
!922 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !922, line: 299, size: 64, elements: !924)
!924 = !{!925}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !923, file: !922, line: 299, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !927, line: 18, baseType: !44)
!927 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!928 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !890, file: !119, line: 773, baseType: !54, size: 32, offset: 1088)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !890, file: !119, line: 785, baseType: !54, size: 32, offset: 1120)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !890, file: !119, line: 795, baseType: !931, size: 64, offset: 1152)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !119, line: 726, size: 128, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !932, file: !119, line: 727, baseType: !317, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !932, file: !119, line: 728, baseType: !27, size: 32, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !890, file: !119, line: 801, baseType: !44, size: 64, offset: 1216)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !890, file: !119, line: 804, baseType: !488, size: 64, offset: 1280)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !890, file: !119, line: 806, baseType: !27, size: 32, offset: 1344)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !890, file: !119, line: 808, baseType: !64, size: 32, offset: 1376)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !890, file: !119, line: 823, baseType: !941, size: 320, offset: 1408)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !942, line: 48, size: 320, elements: !943)
!942 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!943 = !{!944, !945, !946, !947, !948}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !941, file: !942, line: 49, baseType: !488, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !941, file: !942, line: 55, baseType: !488, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !941, file: !942, line: 57, baseType: !503, size: 32, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !941, file: !942, line: 59, baseType: !501, size: 32, offset: 160)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !941, file: !942, line: 60, baseType: !102, size: 128, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !890, file: !119, line: 825, baseType: !102, size: 128, offset: 1728)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !890, file: !119, line: 845, baseType: !27, size: 32, offset: 1856)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !890, file: !119, line: 849, baseType: !44, size: 64, offset: 1920)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !890, file: !119, line: 850, baseType: !44, size: 64, offset: 1984)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !890, file: !119, line: 852, baseType: !44, size: 64, offset: 2048)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !890, file: !119, line: 853, baseType: !44, size: 64, offset: 2112)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !890, file: !119, line: 854, baseType: !490, size: 64, offset: 2176)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !890, file: !119, line: 855, baseType: !44, size: 64, offset: 2240)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !890, file: !119, line: 856, baseType: !44, size: 64, offset: 2304)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !890, file: !119, line: 857, baseType: !44, size: 64, offset: 2368)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !890, file: !119, line: 858, baseType: !44, size: 64, offset: 2432)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !890, file: !119, line: 865, baseType: !290, size: 32, offset: 2496)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !890, file: !119, line: 867, baseType: !64, size: 32, offset: 2528)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !890, file: !119, line: 869, baseType: !44, size: 64, offset: 2560)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !890, file: !119, line: 869, baseType: !44, size: 64, offset: 2624)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !890, file: !119, line: 869, baseType: !44, size: 64, offset: 2688)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !890, file: !119, line: 869, baseType: !44, size: 64, offset: 2752)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !890, file: !119, line: 870, baseType: !44, size: 64, offset: 2816)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !890, file: !119, line: 870, baseType: !44, size: 64, offset: 2880)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !890, file: !119, line: 870, baseType: !44, size: 64, offset: 2944)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !890, file: !119, line: 871, baseType: !44, size: 64, offset: 3008)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !890, file: !119, line: 871, baseType: !44, size: 64, offset: 3072)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !890, file: !119, line: 871, baseType: !44, size: 64, offset: 3136)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !890, file: !119, line: 871, baseType: !44, size: 64, offset: 3200)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !890, file: !119, line: 873, baseType: !974, size: 3328, offset: 3264)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 3328, elements: !975)
!975 = !{!976}
!976 = !DISubrange(count: 52)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !890, file: !119, line: 875, baseType: !978, size: 1280, offset: 6592)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !979, size: 1280, elements: !559)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !980, line: 22, size: 320, elements: !981)
!980 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!981 = !{!982, !983, !984, !985}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !979, file: !980, line: 23, baseType: !501, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !979, file: !980, line: 24, baseType: !494, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !979, file: !980, line: 26, baseType: !102, size: 128, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !979, file: !980, line: 28, baseType: !986, size: 64, offset: 256)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !89, line: 20, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !91, line: 26, baseType: !27)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !890, file: !119, line: 877, baseType: !990, size: 64, offset: 7872)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !119, line: 877, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !890, file: !119, line: 880, baseType: !993, size: 1088, offset: 7936)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !994, line: 72, baseType: !995)
!994 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !994, line: 23, size: 1088, elements: !996)
!996 = !{!997, !998, !999, !1000, !1001, !1004, !1005, !1006, !1007, !1034, !1035, !1036}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !995, file: !994, line: 28, baseType: !317, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !995, file: !994, line: 38, baseType: !490, size: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !995, file: !994, line: 40, baseType: !44, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !995, file: !994, line: 43, baseType: !941, size: 320, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !995, file: !994, line: 44, baseType: !1002, size: 64, offset: 512)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !994, line: 44, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !995, file: !994, line: 48, baseType: !44, size: 64, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !995, file: !994, line: 59, baseType: !496, size: 256, offset: 640)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !995, file: !994, line: 60, baseType: !25, size: 64, offset: 896)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !995, file: !994, line: 61, baseType: !1008, size: 64, offset: 960)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1010)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1011, line: 13, size: 1216, elements: !1012)
!1011 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1012 = !{!1013, !1014, !1015, !1016, !1017, !1018, !1019, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1010, file: !1011, line: 14, baseType: !25, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1010, file: !1011, line: 15, baseType: !44, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1010, file: !1011, line: 17, baseType: !44, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1010, file: !1011, line: 17, baseType: !44, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1010, file: !1011, line: 18, baseType: !44, size: 64, offset: 256)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1010, file: !1011, line: 18, baseType: !44, size: 64, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1010, file: !1011, line: 19, baseType: !1020, size: 64, offset: 384)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1010, file: !1011, line: 21, baseType: !458, size: 64, offset: 448)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1010, file: !1011, line: 23, baseType: !458, size: 64, offset: 512)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1010, file: !1011, line: 24, baseType: !458, size: 64, offset: 576)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1010, file: !1011, line: 25, baseType: !458, size: 64, offset: 640)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1010, file: !1011, line: 26, baseType: !458, size: 64, offset: 704)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1010, file: !1011, line: 27, baseType: !458, size: 64, offset: 768)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1010, file: !1011, line: 28, baseType: !458, size: 64, offset: 832)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1010, file: !1011, line: 29, baseType: !458, size: 64, offset: 896)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1010, file: !1011, line: 30, baseType: !458, size: 64, offset: 960)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1010, file: !1011, line: 31, baseType: !458, size: 64, offset: 1024)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1010, file: !1011, line: 32, baseType: !458, size: 64, offset: 1088)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1010, file: !1011, line: 33, baseType: !458, size: 64, offset: 1152)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !995, file: !994, line: 63, baseType: !54, size: 32, offset: 1024)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !995, file: !994, line: 69, baseType: !98, size: 16, offset: 1056)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !995, file: !994, line: 70, baseType: !1037, size: 16, offset: 1072)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !89, line: 18, baseType: !1038)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !91, line: 23, baseType: !1039)
!1039 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !890, file: !119, line: 882, baseType: !44, size: 64, offset: 9024)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !890, file: !119, line: 885, baseType: !64, size: 32, offset: 9088)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !890, file: !119, line: 886, baseType: !1043, size: 64, offset: 9152)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !119, line: 732, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !890, file: !119, line: 901, baseType: !1046, size: 64, offset: 9216)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1048, line: 68, size: 4800, elements: !1049)
!1048 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1049 = !{!1050, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1089, !1090, !1091, !1092, !1200, !1201, !1213, !1283, !1284, !1298, !1300}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1047, file: !1048, line: 69, baseType: !1051, size: 576)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1048, line: 23, size: 576, elements: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1051, file: !1048, line: 24, baseType: !313, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !1048, line: 25, baseType: !1055, size: 512, offset: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1051, file: !1048, line: 25, size: 512, elements: !1056)
!1056 = !{!1057, !1066}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1055, file: !1048, line: 26, baseType: !1058, size: 480)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1059, size: 480, elements: !1064)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1048, line: 17, size: 96, elements: !1060)
!1060 = !{!1061, !1062, !1063}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1059, file: !1048, line: 18, baseType: !313, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1059, file: !1048, line: 19, baseType: !313, size: 32, offset: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1059, file: !1048, line: 20, baseType: !313, size: 32, offset: 64)
!1064 = !{!1065}
!1065 = !DISubrange(count: 5)
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1055, file: !1048, line: 27, baseType: !1067, size: 128)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1055, file: !1048, line: 27, size: 128, elements: !1068)
!1068 = !{!1069, !1071}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1067, file: !1048, line: 28, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1067, file: !1048, line: 29, baseType: !1070, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1047, file: !1048, line: 70, baseType: !1051, size: 576, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1047, file: !1048, line: 71, baseType: !1051, size: 576, offset: 1152)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1047, file: !1048, line: 72, baseType: !1046, size: 64, offset: 1728)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1047, file: !1048, line: 73, baseType: !27, size: 32, offset: 1792)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1047, file: !1048, line: 74, baseType: !330, size: 32, offset: 1824)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1047, file: !1048, line: 75, baseType: !339, size: 32, offset: 1856)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1047, file: !1048, line: 76, baseType: !1079, size: 192, offset: 1920)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1080, line: 9, size: 192, elements: !1081)
!1080 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1081 = !{!1082, !1083, !1087, !1088}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1079, file: !1080, line: 10, baseType: !488, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1079, file: !1080, line: 11, baseType: !1084, size: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1086)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1080, line: 7, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1079, file: !1080, line: 12, baseType: !13, size: 32, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1079, file: !1080, line: 13, baseType: !541, size: 32, offset: 160)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1047, file: !1048, line: 77, baseType: !44, size: 64, offset: 2112)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1047, file: !1048, line: 80, baseType: !383, size: 8, offset: 2176)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1047, file: !1048, line: 88, baseType: !102, size: 128, offset: 2240)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1047, file: !1048, line: 89, baseType: !1093, size: 64, offset: 2368)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1095, line: 195, size: 1728, elements: !1096)
!1095 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1096 = !{!1097, !1098, !1101, !1106, !1107, !1110, !1111, !1116, !1117, !1118, !1119, !1122, !1123, !1124, !1125, !1126, !1164, !1185}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1094, file: !1095, line: 196, baseType: !541, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1094, file: !1095, line: 197, baseType: !1099, size: 32, offset: 32)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1095, line: 28, baseType: !1100)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !30, line: 104, baseType: !987)
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !1095, line: 198, baseType: !1102, size: 192, offset: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !1095, line: 198, size: 192, elements: !1103)
!1103 = !{!1104, !1105}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1102, file: !1095, line: 199, baseType: !102, size: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1102, file: !1095, line: 200, baseType: !640, size: 192, align: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1094, file: !1095, line: 205, baseType: !941, size: 320, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1094, file: !1095, line: 206, baseType: !1108, size: 64, offset: 576)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1095, line: 206, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1094, file: !1095, line: 207, baseType: !25, size: 64, offset: 640)
!1111 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !1095, line: 208, baseType: !1112, size: 64, offset: 704)
!1112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !1095, line: 208, size: 64, elements: !1113)
!1113 = !{!1114, !1115}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1112, file: !1095, line: 209, baseType: !455, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1112, file: !1095, line: 210, baseType: !455, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1094, file: !1095, line: 212, baseType: !455, size: 64, offset: 768)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1094, file: !1095, line: 213, baseType: !330, size: 32, offset: 832)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1094, file: !1095, line: 214, baseType: !339, size: 32, offset: 864)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1094, file: !1095, line: 215, baseType: !1120, size: 32, offset: 896)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1095, line: 31, baseType: !1121)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !30, line: 110, baseType: !313)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1094, file: !1095, line: 216, baseType: !31, size: 16, offset: 928)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1094, file: !1095, line: 217, baseType: !31, size: 16, offset: 944)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1094, file: !1095, line: 221, baseType: !1039, size: 16, offset: 960)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1094, file: !1095, line: 228, baseType: !44, size: 64, offset: 1024)
!1126 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !1095, line: 245, baseType: !1127, size: 320, offset: 1088)
!1127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !1095, line: 245, size: 320, elements: !1128)
!1128 = !{!1129, !1156}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1127, file: !1095, line: 246, baseType: !1130, size: 320)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1095, line: 114, size: 320, elements: !1131)
!1131 = !{!1132, !1133, !1145, !1148, !1155}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1130, file: !1095, line: 116, baseType: !44, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, scope: !1130, file: !1095, line: 117, baseType: !1134, size: 64, offset: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1130, file: !1095, line: 117, size: 64, elements: !1135)
!1135 = !{!1136, !1144}
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !1134, file: !1095, line: 118, baseType: !1137, size: 64)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1134, file: !1095, line: 118, size: 64, elements: !1138)
!1138 = !{!1139, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1137, file: !1095, line: 120, baseType: !98, size: 16)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1137, file: !1095, line: 121, baseType: !1141, size: 48, offset: 16)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1142)
!1142 = !{!1143}
!1143 = !DISubrange(count: 6)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1134, file: !1095, line: 127, baseType: !44, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1130, file: !1095, line: 129, baseType: !1146, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1095, line: 102, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1130, file: !1095, line: 130, baseType: !1149, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1095, line: 108, size: 192, elements: !1151)
!1151 = !{!1152, !1153, !1154}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1150, file: !1095, line: 109, baseType: !475, size: 128, align: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1150, file: !1095, line: 110, baseType: !541, size: 32, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1150, file: !1095, line: 111, baseType: !383, size: 8, offset: 160)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1130, file: !1095, line: 131, baseType: !22, size: 64, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !1095, line: 247, baseType: !1157, size: 320)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1127, file: !1095, line: 247, size: 320, elements: !1158)
!1158 = !{!1159, !1160, !1161, !1162, !1163}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1157, file: !1095, line: 248, baseType: !44, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1157, file: !1095, line: 249, baseType: !44, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1157, file: !1095, line: 250, baseType: !1146, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1157, file: !1095, line: 251, baseType: !1149, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1157, file: !1095, line: 252, baseType: !389, size: 64, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !1095, line: 260, baseType: !1165, size: 256, offset: 1408)
!1165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !1095, line: 260, size: 256, elements: !1166)
!1166 = !{!1167, !1173}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1165, file: !1095, line: 261, baseType: !1168, size: 256)
!1168 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1095, line: 134, size: 256, elements: !1169)
!1169 = !{!1170, !1171}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1168, file: !1095, line: 135, baseType: !25, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1168, file: !1095, line: 136, baseType: !1172, size: 256)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 256, elements: !559)
!1173 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !1095, line: 262, baseType: !1174, size: 256)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1165, file: !1095, line: 262, size: 256, elements: !1175)
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1174, file: !1095, line: 264, baseType: !102, size: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1174, file: !1095, line: 265, baseType: !1178, size: 128, offset: 128)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1179, line: 22, size: 128, elements: !1180)
!1179 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1180 = !{!1181, !1184}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1178, file: !1179, line: 23, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1179, line: 23, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1178, file: !1179, line: 24, baseType: !44, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1094, file: !1095, line: 280, baseType: !1186, size: 64, offset: 1664)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1095, line: 176, size: 192, elements: !1188)
!1188 = !{!1189, !1198, !1199}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1187, file: !1095, line: 177, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1095, line: 171, baseType: !1191)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!27, !1093, !1194, !1196, !1093}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1147)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1168)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1187, file: !1095, line: 178, baseType: !1093, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1187, file: !1095, line: 179, baseType: !1146, size: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1047, file: !1048, line: 90, baseType: !941, size: 320, offset: 2432)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1047, file: !1048, line: 97, baseType: !1202, size: 256, offset: 2752)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1203, line: 98, size: 256, elements: !1204)
!1203 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1204 = !{!1205, !1206, !1207}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1202, file: !1203, line: 99, baseType: !488, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1202, file: !1203, line: 100, baseType: !102, size: 128, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1202, file: !1203, line: 101, baseType: !1208, size: 64, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1203, line: 21, baseType: !1209)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{null, !1212}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1047, file: !1048, line: 99, baseType: !1214, size: 768, offset: 3008)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !18, line: 199, size: 768, elements: !1215)
!1215 = !{!1216, !1221}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1214, file: !18, line: 200, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!27, !1220}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1214, file: !18, line: 201, baseType: !1222, size: 704, offset: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !18, line: 193, size: 704, elements: !1223)
!1223 = !{!1224, !1282}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1222, file: !18, line: 195, baseType: !1225, size: 640)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !18, line: 173, size: 640, elements: !1226)
!1226 = !{!1227, !1239, !1251, !1252, !1272, !1273, !1275, !1281}
!1227 = !DIDerivedType(tag: DW_TAG_member, scope: !1225, file: !18, line: 174, baseType: !1228, size: 192)
!1228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1225, file: !18, line: 174, size: 192, elements: !1229)
!1229 = !{!1230, !1238}
!1230 = !DIDerivedType(tag: DW_TAG_member, scope: !1228, file: !18, line: 175, baseType: !1231, size: 192)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1228, file: !18, line: 175, size: 192, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1236, !1237}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1231, file: !18, line: 176, baseType: !38, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1231, file: !18, line: 177, baseType: !27, size: 32, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1231, file: !18, line: 178, baseType: !27, size: 32, offset: 96)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1231, file: !18, line: 179, baseType: !27, size: 32, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1231, file: !18, line: 180, baseType: !27, size: 32, offset: 160)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1228, file: !18, line: 182, baseType: !475, size: 128, align: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1225, file: !18, line: 184, baseType: !1240, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1242, line: 26, size: 256, elements: !1243)
!1242 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1243 = !{!1244, !1245}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1241, file: !1242, line: 27, baseType: !13, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1241, file: !1242, line: 28, baseType: !1246, size: 192, offset: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1247, line: 43, size: 192, elements: !1248)
!1247 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1246, file: !1247, line: 44, baseType: !501, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1246, file: !1247, line: 45, baseType: !102, size: 128, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1225, file: !18, line: 185, baseType: !38, size: 64, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1225, file: !18, line: 186, baseType: !1253, size: 64, offset: 320)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !18, line: 204, size: 960, elements: !1255)
!1255 = !{!1256, !1257, !1261, !1268}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1254, file: !18, line: 205, baseType: !1214, size: 768)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1254, file: !18, line: 206, baseType: !1258, size: 64, offset: 768)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!1220, !1253}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1254, file: !18, line: 207, baseType: !1262, size: 64, offset: 832)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !1265, !1266, !1267}
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1254, file: !18, line: 209, baseType: !1269, size: 64, offset: 896)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!27, !1265, !38}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1225, file: !18, line: 187, baseType: !1220, size: 64, offset: 384)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1225, file: !18, line: 188, baseType: !1274, size: 64, offset: 448)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1225, file: !18, line: 189, baseType: !1276, size: 64, offset: 512)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !18, line: 157, size: 256, elements: !1278)
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1277, file: !18, line: 158, baseType: !640, size: 192, align: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1277, file: !18, line: 159, baseType: !1265, size: 64, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1225, file: !18, line: 190, baseType: !550, size: 64, offset: 576)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1222, file: !18, line: 196, baseType: !772, size: 64, offset: 640)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1047, file: !1048, line: 100, baseType: !1265, size: 64, offset: 3776)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1047, file: !1048, line: 102, baseType: !1285, size: 64, offset: 3840)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1048, line: 107, size: 1152, elements: !1287)
!1287 = !{!1288, !1289, !1290, !1291, !1292, !1296}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1286, file: !1048, line: 108, baseType: !554, size: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1286, file: !1048, line: 109, baseType: !1046, size: 64, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1286, file: !1048, line: 110, baseType: !330, size: 32, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1286, file: !1048, line: 111, baseType: !54, size: 32, offset: 224)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1286, file: !1048, line: 112, baseType: !1293, size: 640, offset: 256)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 640, elements: !1294)
!1294 = !{!1295}
!1295 = !DISubrange(count: 10)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1286, file: !1048, line: 113, baseType: !1297, size: 256, offset: 896)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 256, elements: !559)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1047, file: !1048, line: 103, baseType: !1299, size: 640, offset: 3904)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 640, elements: !1294)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1047, file: !1048, line: 104, baseType: !1301, size: 256, offset: 4544)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 256, elements: !559)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !890, file: !119, line: 904, baseType: !462, size: 64, offset: 9280)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !890, file: !119, line: 906, baseType: !1304, size: 64, offset: 9344)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !119, line: 906, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !890, file: !119, line: 930, baseType: !54, size: 32, offset: 9408)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !890, file: !119, line: 933, baseType: !54, size: 32, offset: 9440)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !890, file: !119, line: 935, baseType: !1309, size: 64, offset: 9472)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !150, line: 103, size: 64, elements: !1310)
!1310 = !{!1311}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1309, file: !150, line: 104, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !150, line: 101, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !890, file: !119, line: 940, baseType: !488, size: 64, offset: 9536)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !890, file: !119, line: 942, baseType: !1202, size: 256, offset: 9600)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !887, file: !119, line: 986, baseType: !1317, offset: 10240)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, elements: !1318)
!1318 = !{!1319}
!1319 = !DISubrange(count: -1)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !592, file: !593, line: 882, baseType: !886, size: 64, offset: 9792)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !592, file: !593, line: 884, baseType: !27, size: 32, offset: 9856)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !592, file: !593, line: 885, baseType: !27, size: 32, offset: 9888)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !592, file: !593, line: 886, baseType: !27, size: 32, offset: 9920)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !592, file: !593, line: 888, baseType: !27, size: 32, offset: 9952)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !592, file: !593, line: 890, baseType: !44, size: 64, offset: 9984)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !592, file: !593, line: 893, baseType: !13, size: 32, offset: 10048)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !592, file: !593, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !592, file: !593, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !592, file: !593, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !592, file: !593, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !592, file: !593, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !592, file: !593, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !592, file: !593, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !592, file: !593, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !592, file: !593, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !592, file: !593, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !592, file: !593, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !592, file: !593, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !592, file: !593, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !592, file: !593, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !592, file: !593, line: 969, baseType: !44, size: 64, offset: 10176)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !592, file: !593, line: 971, baseType: !1343, size: 448, offset: 10240)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !113, line: 25, size: 448, elements: !1344)
!1344 = !{!1345, !1346, !1351}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1343, file: !113, line: 26, baseType: !44, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1343, file: !113, line: 27, baseType: !1347, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!458, !1350}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !113, line: 28, baseType: !1352, size: 320, offset: 128)
!1352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1343, file: !113, line: 28, size: 320, elements: !1353)
!1353 = !{!1354, !1364, !1389}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1352, file: !113, line: 37, baseType: !1355, size: 320)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1352, file: !113, line: 30, size: 320, elements: !1356)
!1356 = !{!1357, !1359, !1360, !1361, !1362, !1363}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1355, file: !113, line: 31, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1355, file: !113, line: 32, baseType: !313, size: 32, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1355, file: !113, line: 33, baseType: !313, size: 32, offset: 96)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1355, file: !113, line: 34, baseType: !313, size: 32, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1355, file: !113, line: 35, baseType: !317, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1355, file: !113, line: 36, baseType: !1358, size: 64, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1352, file: !113, line: 47, baseType: !1365, size: 192)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1352, file: !113, line: 39, size: 192, elements: !1366)
!1366 = !{!1367, !1368, !1369, !1388}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1365, file: !113, line: 40, baseType: !757, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1365, file: !113, line: 41, baseType: !112, size: 32, offset: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !113, line: 42, baseType: !1370, size: 64, offset: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1365, file: !113, line: 42, size: 64, elements: !1371)
!1371 = !{!1372, !1380}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1370, file: !113, line: 43, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1375, line: 7, size: 128, elements: !1376)
!1375 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1376 = !{!1377, !1379}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1374, file: !1375, line: 8, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !42, line: 93, baseType: !48)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1374, file: !1375, line: 9, baseType: !48, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1370, file: !113, line: 44, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1383, line: 7, size: 64, elements: !1384)
!1383 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1384 = !{!1385, !1387}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1382, file: !1383, line: 8, baseType: !1386, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1383, line: 5, baseType: !987)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1382, file: !1383, line: 9, baseType: !987, size: 32, offset: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1365, file: !113, line: 46, baseType: !317, size: 64, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1352, file: !113, line: 55, baseType: !1390, size: 256)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1352, file: !113, line: 49, size: 256, elements: !1391)
!1391 = !{!1392, !1400, !1401, !1402, !1403}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1390, file: !113, line: 50, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1395, line: 36, size: 64, elements: !1396)
!1395 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1396 = !{!1397, !1398, !1399}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1394, file: !1395, line: 37, baseType: !27, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1394, file: !1395, line: 38, baseType: !1039, size: 16, offset: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1394, file: !1395, line: 39, baseType: !1039, size: 16, offset: 48)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1390, file: !113, line: 51, baseType: !27, size: 32, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1390, file: !113, line: 52, baseType: !27, size: 32, offset: 96)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1390, file: !113, line: 53, baseType: !44, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1390, file: !113, line: 54, baseType: !44, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !592, file: !593, line: 973, baseType: !1405, size: 32, offset: 10688)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !30, line: 27, baseType: !1406)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !42, line: 28, baseType: !27)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !592, file: !593, line: 974, baseType: !1405, size: 32, offset: 10720)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !592, file: !593, line: 978, baseType: !44, size: 64, offset: 10752)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !592, file: !593, line: 987, baseType: !591, size: 64, offset: 10816)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !592, file: !593, line: 990, baseType: !591, size: 64, offset: 10880)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !592, file: !593, line: 995, baseType: !102, size: 128, offset: 10944)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !592, file: !593, line: 996, baseType: !102, size: 128, offset: 11072)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !592, file: !593, line: 997, baseType: !591, size: 64, offset: 11200)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !592, file: !593, line: 1005, baseType: !102, size: 128, offset: 11264)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !592, file: !593, line: 1006, baseType: !102, size: 128, offset: 11392)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !592, file: !593, line: 1009, baseType: !537, size: 64, offset: 11520)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !592, file: !593, line: 1010, baseType: !1418, size: 512, offset: 11584)
!1418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 512, elements: !559)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !592, file: !593, line: 1011, baseType: !102, size: 128, offset: 12096)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !592, file: !593, line: 1012, baseType: !102, size: 128, offset: 12224)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !592, file: !593, line: 1014, baseType: !1240, size: 64, offset: 12352)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !592, file: !593, line: 1017, baseType: !1423, size: 64, offset: 12416)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !592, file: !593, line: 1020, baseType: !1423, size: 64, offset: 12480)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !592, file: !593, line: 1023, baseType: !25, size: 64, offset: 12544)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !592, file: !593, line: 1025, baseType: !317, size: 64, offset: 12608)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !592, file: !593, line: 1026, baseType: !317, size: 64, offset: 12672)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !592, file: !593, line: 1031, baseType: !317, size: 64, offset: 12736)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !592, file: !593, line: 1032, baseType: !1430, size: 192, offset: 12800)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !593, line: 324, size: 192, elements: !1431)
!1431 = !{!1432, !1433, !1434}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1430, file: !593, line: 326, baseType: !317, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1430, file: !593, line: 327, baseType: !317, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1430, file: !593, line: 328, baseType: !501, size: 32, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !592, file: !593, line: 1041, baseType: !44, size: 64, offset: 12992)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !592, file: !593, line: 1042, baseType: !44, size: 64, offset: 13056)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !592, file: !593, line: 1045, baseType: !317, size: 64, offset: 13120)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !592, file: !593, line: 1048, baseType: !317, size: 64, offset: 13184)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !592, file: !593, line: 1051, baseType: !44, size: 64, offset: 13248)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !592, file: !593, line: 1052, baseType: !44, size: 64, offset: 13312)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !592, file: !593, line: 1055, baseType: !1442, size: 640, offset: 13376)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1443, line: 132, size: 640, elements: !1444)
!1443 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1444 = !{!1445, !1451, !1452}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1442, file: !1443, line: 133, baseType: !1446, size: 576)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1447, size: 576, elements: !533)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1443, line: 117, size: 192, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1447, file: !1443, line: 118, baseType: !317, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1447, file: !1443, line: 119, baseType: !766, size: 128, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1442, file: !1443, line: 134, baseType: !13, size: 32, offset: 576)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1442, file: !1443, line: 135, baseType: !13, size: 32, offset: 608)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !592, file: !593, line: 1058, baseType: !1454, size: 448, offset: 14016)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1443, line: 144, size: 448, elements: !1455)
!1455 = !{!1456, !1457, !1458}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1454, file: !1443, line: 145, baseType: !475, size: 128, align: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1454, file: !1443, line: 146, baseType: !496, size: 256, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1454, file: !1443, line: 147, baseType: !13, size: 32, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !592, file: !593, line: 1064, baseType: !1460, size: 64, offset: 14464)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1462)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1463, line: 110, size: 1472, elements: !1464)
!1463 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1464 = !{!1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1513, !1514, !1515, !1523}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1462, file: !1463, line: 111, baseType: !488, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1462, file: !1463, line: 112, baseType: !330, size: 32, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1462, file: !1463, line: 113, baseType: !339, size: 32, offset: 96)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1462, file: !1463, line: 114, baseType: !330, size: 32, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1462, file: !1463, line: 115, baseType: !339, size: 32, offset: 160)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1462, file: !1463, line: 116, baseType: !330, size: 32, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1462, file: !1463, line: 117, baseType: !339, size: 32, offset: 224)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1462, file: !1463, line: 118, baseType: !330, size: 32, offset: 256)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1462, file: !1463, line: 119, baseType: !339, size: 32, offset: 288)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1462, file: !1463, line: 120, baseType: !13, size: 32, offset: 320)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1462, file: !1463, line: 121, baseType: !1476, size: 64, offset: 384)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !378, line: 24, baseType: !1477)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 24, size: 64, elements: !1478)
!1478 = !{!1479}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1477, file: !378, line: 24, baseType: !317, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1462, file: !1463, line: 122, baseType: !1476, size: 64, offset: 448)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1462, file: !1463, line: 123, baseType: !1476, size: 64, offset: 512)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1462, file: !1463, line: 124, baseType: !1476, size: 64, offset: 576)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1462, file: !1463, line: 125, baseType: !1476, size: 64, offset: 640)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1462, file: !1463, line: 127, baseType: !92, size: 8, offset: 704)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1462, file: !1463, line: 129, baseType: !1093, size: 64, offset: 768)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1462, file: !1463, line: 130, baseType: !1093, size: 64, offset: 832)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1462, file: !1463, line: 131, baseType: !1093, size: 64, offset: 896)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1462, file: !1463, line: 132, baseType: !1093, size: 64, offset: 960)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1462, file: !1463, line: 135, baseType: !25, size: 64, offset: 1024)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1462, file: !1463, line: 137, baseType: !1491, size: 64, offset: 1088)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1493, line: 14, size: 1088, elements: !1494)
!1493 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1494 = !{!1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1492, file: !1493, line: 15, baseType: !541, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1492, file: !1493, line: 17, baseType: !979, size: 320, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1492, file: !1493, line: 19, baseType: !44, size: 64, offset: 384)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1492, file: !1493, line: 20, baseType: !488, size: 64, offset: 448)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1492, file: !1493, line: 23, baseType: !554, size: 128, offset: 512)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1492, file: !1493, line: 24, baseType: !330, size: 32, offset: 640)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1492, file: !1493, line: 29, baseType: !488, size: 64, offset: 704)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1492, file: !1493, line: 36, baseType: !1503, size: 320, offset: 768)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1504, line: 15, size: 320, elements: !1505)
!1504 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1505 = !{!1506, !1507, !1508, !1509, !1510, !1511, !1512}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1503, file: !1504, line: 16, baseType: !501, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1503, file: !1504, line: 18, baseType: !27, size: 32, offset: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1503, file: !1504, line: 19, baseType: !27, size: 32, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1503, file: !1504, line: 20, baseType: !27, size: 32, offset: 96)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1503, file: !1504, line: 21, baseType: !27, size: 32, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1503, file: !1504, line: 22, baseType: !44, size: 64, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1503, file: !1504, line: 23, baseType: !44, size: 64, offset: 256)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1462, file: !1463, line: 138, baseType: !1046, size: 64, offset: 1152)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1462, file: !1463, line: 139, baseType: !1285, size: 64, offset: 1216)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1462, file: !1463, line: 140, baseType: !1516, size: 64, offset: 1280)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1463, line: 25, size: 64, elements: !1518)
!1518 = !{!1519, !1520, !1521}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1517, file: !1463, line: 26, baseType: !54, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1517, file: !1463, line: 27, baseType: !27, size: 32, offset: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1517, file: !1463, line: 28, baseType: !1522, offset: 64)
!1522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, elements: !1318)
!1523 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !1463, line: 142, baseType: !1524, size: 128, offset: 1344)
!1524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !1463, line: 142, size: 128, elements: !1525)
!1525 = !{!1526, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1524, file: !1463, line: 143, baseType: !27, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1524, file: !1463, line: 144, baseType: !475, size: 128, align: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !592, file: !593, line: 1067, baseType: !1460, size: 64, offset: 14528)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !592, file: !593, line: 1070, baseType: !1460, size: 64, offset: 14592)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !592, file: !593, line: 1074, baseType: !1093, size: 64, offset: 14656)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !592, file: !593, line: 1084, baseType: !1532, size: 128, offset: 14720)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1533)
!1533 = !{!1534}
!1534 = !DISubrange(count: 16)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !592, file: !593, line: 1086, baseType: !1536, size: 64, offset: 14848)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !593, line: 55, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !592, file: !593, line: 1089, baseType: !1539, size: 64, offset: 14912)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1540, line: 12, size: 64, elements: !1541)
!1540 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1541 = !{!1542}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1539, file: !1540, line: 13, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1540, line: 8, flags: DIFlagFwdDecl)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !592, file: !593, line: 1090, baseType: !1546, size: 128, offset: 14976)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1547, line: 13, size: 128, elements: !1548)
!1547 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1548 = !{!1549}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1546, file: !1547, line: 14, baseType: !102, size: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !592, file: !593, line: 1097, baseType: !1551, size: 64, offset: 15104)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1553, line: 9, size: 448, elements: !1554)
!1553 = !DIFile(filename: "./include/linux/fs_struct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "974310bb6a29a53024699f0fa1ab259a")
!1554 = !{!1555, !1556, !1557, !1558, !1559, !1560, !4709}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !1552, file: !1553, line: 10, baseType: !27, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1552, file: !1553, line: 11, baseType: !64, size: 32, offset: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1552, file: !1553, line: 12, baseType: !285, size: 32, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "umask", scope: !1552, file: !1553, line: 13, baseType: !27, size: 32, offset: 96)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "in_exec", scope: !1552, file: !1553, line: 14, baseType: !27, size: 32, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1552, file: !1553, line: 15, baseType: !1561, size: 128, offset: 192)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1562, line: 8, size: 128, elements: !1563)
!1562 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1563 = !{!1564, !4708}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1561, file: !1562, line: 9, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1567, line: 70, size: 256, elements: !1568)
!1567 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1568 = !{!1569, !1570, !4706, !4707}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1566, file: !1567, line: 71, baseType: !279, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1566, file: !1567, line: 72, baseType: !1571, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !257, line: 1190, size: 10752, elements: !1573)
!1573 = !{!1574, !1575, !1576, !1577, !1578, !1579, !4223, !4355, !4395, !4480, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4497, !4501, !4502, !4505, !4508, !4511, !4514, !4515, !4516, !4557, !4579, !4580, !4581, !4582, !4583, !4584, !4587, !4591, !4598, !4599, !4600, !4601, !4660, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1572, file: !257, line: 1191, baseType: !102, size: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1572, file: !257, line: 1192, baseType: !415, size: 32, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1572, file: !257, line: 1193, baseType: !92, size: 8, offset: 160)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1572, file: !257, line: 1194, baseType: !44, size: 64, offset: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1572, file: !257, line: 1195, baseType: !46, size: 64, offset: 256)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1572, file: !257, line: 1196, baseType: !1580, size: 64, offset: 320)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !257, line: 2366, size: 576, elements: !1582)
!1582 = !{!1583, !1584, !1585, !1591, !1595, !1599, !1603, !4211, !4212, !4213, !4215, !4216, !4217, !4219, !4220, !4221, !4222}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1581, file: !257, line: 2367, baseType: !22, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1581, file: !257, line: 2368, baseType: !27, size: 32, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1581, file: !257, line: 2376, baseType: !1586, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!27, !1589}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1567, line: 21, flags: DIFlagFwdDecl)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1581, file: !257, line: 2377, baseType: !1592, size: 64, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1594)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !257, line: 75, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1581, file: !257, line: 2378, baseType: !1596, size: 64, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!279, !1580, !27, !22, !25}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1581, file: !257, line: 2380, baseType: !1600, size: 64, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{null, !1571}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1581, file: !257, line: 2381, baseType: !1604, size: 64, offset: 384)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !157, line: 402, size: 9216, align: 512, elements: !1606)
!1606 = !{!1607, !1608, !1609, !1613, !2422, !2448, !2449, !2450, !2451, !2455, !2458, !2459, !2460, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2528, !2532, !2552, !2569, !2570, !2571, !2572, !2581, !2604, !2605, !2608, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2622, !2623, !2722, !2730, !2731, !2732, !2734, !4189, !4190, !4199, !4200, !4201, !4202, !4204, !4205, !4206, !4207, !4208, !4209, !4210}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1605, file: !157, line: 403, baseType: !156, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1605, file: !157, line: 406, baseType: !102, size: 128, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1605, file: !157, line: 409, baseType: !1610, size: 448, offset: 192)
!1610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1611)
!1611 = !{!1612}
!1612 = !DISubrange(count: 56)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1605, file: !157, line: 417, baseType: !1614, size: 768, offset: 640)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !157, line: 45, size: 768, elements: !1615)
!1615 = !{!1616, !2416, !2417, !2418, !2421}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1614, file: !157, line: 46, baseType: !1617, size: 512)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1618, line: 64, size: 512, elements: !1619)
!1618 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1619 = !{!1620, !1621, !1622, !1624, !1668, !2263, !2406, !2411, !2412, !2413, !2414, !2415}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1617, file: !1618, line: 65, baseType: !22, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1617, file: !1618, line: 66, baseType: !102, size: 128, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1617, file: !1618, line: 67, baseType: !1623, size: 64, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1617, file: !1618, line: 68, baseType: !1625, size: 64, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1618, line: 168, size: 768, elements: !1627)
!1627 = !{!1628, !1629, !1630, !1631}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1626, file: !1618, line: 169, baseType: !102, size: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1626, file: !1618, line: 170, baseType: !64, size: 32, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1626, file: !1618, line: 171, baseType: !1617, size: 512, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1626, file: !1618, line: 172, baseType: !1632, size: 64, offset: 704)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1634)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1618, line: 133, size: 192, elements: !1635)
!1635 = !{!1636, !1643, !1648}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1634, file: !1618, line: 134, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1638)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!27, !1641}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1617)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1634, file: !1618, line: 135, baseType: !1644, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1645)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!22, !1641}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1634, file: !1618, line: 136, baseType: !1649, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1650)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!27, !1641, !1653}
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1618, line: 125, size: 20736, elements: !1655)
!1655 = !{!1656, !1658, !1662, !1663, !1667}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1654, file: !1618, line: 126, baseType: !1657, size: 192)
!1657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 192, elements: !533)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1654, file: !1618, line: 127, baseType: !1659, size: 4096, offset: 192)
!1659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 4096, elements: !1660)
!1660 = !{!1661}
!1661 = !DISubrange(count: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1654, file: !1618, line: 128, baseType: !27, size: 32, offset: 4288)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1654, file: !1618, line: 129, baseType: !1664, size: 16384, offset: 4320)
!1664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1665)
!1665 = !{!1666}
!1666 = !DISubrange(count: 2048)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1654, file: !1618, line: 130, baseType: !27, size: 32, offset: 20704)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1617, file: !1618, line: 69, baseType: !1669, size: 64, offset: 320)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1671)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1618, line: 116, size: 384, elements: !1672)
!1672 = !{!1673, !1677, !1699, !2227, !2255, !2259}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1671, file: !1618, line: 117, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{null, !1623}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1671, file: !1618, line: 118, baseType: !1678, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1680)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1681, line: 254, size: 128, elements: !1682)
!1681 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1682 = !{!1683, !1695}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1680, file: !1681, line: 255, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!1687, !1623, !1690, !389}
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !30, line: 66, baseType: !1688)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !42, line: 73, baseType: !1689)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !42, line: 15, baseType: !458)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1681, line: 30, size: 128, elements: !1692)
!1692 = !{!1693, !1694}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1691, file: !1681, line: 31, baseType: !22, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1691, file: !1681, line: 32, baseType: !29, size: 16, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1680, file: !1681, line: 256, baseType: !1696, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!1687, !1623, !1690, !22, !40}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1671, file: !1618, line: 119, baseType: !1700, size: 64, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1703)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1681, line: 84, size: 320, elements: !1704)
!1704 = !{!1705, !1706, !1710, !2223, !2225}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1703, file: !1681, line: 85, baseType: !22, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1703, file: !1681, line: 86, baseType: !1707, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!29, !1623, !1690, !27}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1703, file: !1681, line: 88, baseType: !1711, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!29, !1623, !1714, !27}
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1681, line: 175, size: 512, elements: !1716)
!1716 = !{!1717, !1718, !1719, !1720, !2214, !2218, !2219}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1715, file: !1681, line: 176, baseType: !1691, size: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1715, file: !1681, line: 177, baseType: !40, size: 64, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1715, file: !1681, line: 178, baseType: !25, size: 64, offset: 192)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1715, file: !1681, line: 179, baseType: !1721, size: 64, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!1724}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !257, line: 472, size: 1536, align: 64, elements: !1726)
!1726 = !{!1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !2206, !2207, !2208, !2211, !2212, !2213}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1725, file: !257, line: 473, baseType: !324, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1725, file: !257, line: 474, baseType: !579, size: 128, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1725, file: !257, line: 475, baseType: !941, size: 320, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1725, file: !257, line: 476, baseType: !584, size: 32, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1725, file: !257, line: 477, baseType: !54, size: 32, offset: 544)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1725, file: !257, line: 482, baseType: !769, size: 128, offset: 576)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1725, file: !257, line: 483, baseType: !44, size: 64, offset: 704)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1725, file: !257, line: 484, baseType: !44, size: 64, offset: 768)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1725, file: !257, line: 485, baseType: !1736, size: 64, offset: 832)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1738)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !257, line: 404, size: 1280, elements: !1739)
!1739 = !{!1740, !2031, !2101, !2105, !2109, !2115, !2121, !2125, !2130, !2134, !2138, !2142, !2170, !2174, !2178, !2182, !2187, !2191, !2198, !2202}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1738, file: !257, line: 405, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!27, !1744, !2029}
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !119, line: 74, size: 512, align: 128, elements: !1746)
!1746 = !{!1747, !1748, !2023, !2028}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1745, file: !119, line: 75, baseType: !44, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, scope: !1745, file: !119, line: 83, baseType: !1749, size: 320, offset: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1745, file: !119, line: 83, size: 320, elements: !1750)
!1750 = !{!1751, !1772, !1786, !1790, !2022}
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !119, line: 84, baseType: !1752, size: 320)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !119, line: 84, size: 320, elements: !1753)
!1753 = !{!1754, !1765, !1766, !1771}
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !119, line: 90, baseType: !1755, size: 128)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1752, file: !119, line: 90, size: 128, elements: !1756)
!1756 = !{!1757, !1758, !1763, !1764}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1755, file: !119, line: 91, baseType: !102, size: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1755, file: !119, line: 94, baseType: !1759, size: 128)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1755, file: !119, line: 94, size: 128, elements: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1759, file: !119, line: 96, baseType: !25, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1759, file: !119, line: 98, baseType: !13, size: 32, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1755, file: !119, line: 102, baseType: !102, size: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1755, file: !119, line: 103, baseType: !102, size: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1752, file: !119, line: 106, baseType: !1724, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !119, line: 107, baseType: !1767, size: 64, offset: 192)
!1767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1752, file: !119, line: 107, size: 64, elements: !1768)
!1768 = !{!1769, !1770}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1767, file: !119, line: 108, baseType: !44, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1767, file: !119, line: 109, baseType: !44, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1752, file: !119, line: 117, baseType: !44, size: 64, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !119, line: 119, baseType: !1773, size: 320)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !119, line: 119, size: 320, elements: !1774)
!1774 = !{!1775, !1776, !1779, !1780, !1781}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1773, file: !119, line: 124, baseType: !44, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1773, file: !119, line: 125, baseType: !1777, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !119, line: 125, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1773, file: !119, line: 126, baseType: !44, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1773, file: !119, line: 127, baseType: !44, size: 64, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !119, line: 128, baseType: !1782, size: 64, offset: 256)
!1782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !119, line: 128, size: 64, elements: !1783)
!1783 = !{!1784, !1785}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1782, file: !119, line: 133, baseType: !44, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1782, file: !119, line: 138, baseType: !488, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !119, line: 141, baseType: !1787, size: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !119, line: 141, size: 64, elements: !1788)
!1788 = !{!1789}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1787, file: !119, line: 142, baseType: !44, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !119, line: 144, baseType: !1791, size: 128)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !119, line: 144, size: 128, elements: !1792)
!1792 = !{!1793, !2021}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1791, file: !119, line: 146, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !142, line: 126, size: 1216, elements: !1796)
!1796 = !{!1797, !1807, !1828, !1829, !1830, !1831, !1832, !2003, !2004, !2005}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1795, file: !142, line: 127, baseType: !1798, size: 384)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !142, line: 21, size: 384, elements: !1799)
!1799 = !{!1800, !1801, !1803, !1804, !1805, !1806}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1798, file: !142, line: 22, baseType: !44, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1798, file: !142, line: 23, baseType: !1802, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1798, file: !142, line: 24, baseType: !1802, size: 64, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1798, file: !142, line: 25, baseType: !44, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1798, file: !142, line: 26, baseType: !44, size: 64, offset: 256)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1798, file: !142, line: 27, baseType: !44, size: 64, offset: 320)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1795, file: !142, line: 128, baseType: !1808, size: 128, offset: 384)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1809, line: 105, size: 128, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1808, file: !1809, line: 110, baseType: !44, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1808, file: !1809, line: 118, baseType: !1813, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1809, line: 95, size: 448, elements: !1815)
!1815 = !{!1816, !1817, !1823, !1824, !1825, !1826, !1827}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1814, file: !1809, line: 96, baseType: !488, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1814, file: !1809, line: 97, baseType: !1818, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1809, line: 60, baseType: !1820)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{null, !1822}
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1814, file: !1809, line: 98, baseType: !1818, size: 64, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1814, file: !1809, line: 99, baseType: !383, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1814, file: !1809, line: 100, baseType: !383, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1814, file: !1809, line: 101, baseType: !475, size: 128, align: 64, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1814, file: !1809, line: 102, baseType: !1822, size: 64, offset: 384)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1795, file: !142, line: 129, baseType: !1241, size: 256, offset: 512)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1795, file: !142, line: 130, baseType: !141, size: 32, offset: 768)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1795, file: !142, line: 131, baseType: !13, size: 32, offset: 800)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1795, file: !142, line: 132, baseType: !44, size: 64, offset: 832)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1795, file: !142, line: 133, baseType: !1833, size: 64, offset: 896)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1835)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !142, line: 77, size: 192, elements: !1836)
!1836 = !{!1837, !1841, !1999}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1835, file: !142, line: 83, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{null, !1744}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1835, file: !142, line: 89, baseType: !1842, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!1845, !1846}
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !119, line: 1184, baseType: !13)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1848, line: 512, size: 896, elements: !1849)
!1848 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1849 = !{!1850, !1966, !1967, !1974, !1981, !1991, !1992, !1993, !1995, !1997}
!1850 = !DIDerivedType(tag: DW_TAG_member, scope: !1847, file: !1848, line: 513, baseType: !1851, size: 320)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1847, file: !1848, line: 513, size: 320, elements: !1852)
!1852 = !{!1853, !1962, !1963, !1964, !1965}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1851, file: !1848, line: 514, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !119, line: 625, size: 1344, elements: !1856)
!1856 = !{!1857, !1866, !1867, !1873, !1880, !1881, !1886, !1887, !1892, !1893, !1896, !1955, !1956, !1957, !1958, !1959, !1960}
!1857 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !119, line: 628, baseType: !1858, size: 128)
!1858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1855, file: !119, line: 628, size: 128, elements: !1859)
!1859 = !{!1860, !1865}
!1860 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !119, line: 629, baseType: !1861, size: 128)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !119, line: 629, size: 128, elements: !1862)
!1862 = !{!1863, !1864}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1861, file: !119, line: 631, baseType: !44, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1861, file: !119, line: 632, baseType: !44, size: 64, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1858, file: !119, line: 635, baseType: !475, size: 128, align: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1855, file: !119, line: 639, baseType: !886, size: 64, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1855, file: !119, line: 640, baseType: !1868, size: 64, offset: 192)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !922, line: 297, baseType: !1869)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !922, line: 297, size: 64, elements: !1870)
!1870 = !{!1871}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1869, file: !922, line: 297, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !927, line: 19, baseType: !44)
!1873 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !119, line: 646, baseType: !1874, size: 64, offset: 256)
!1874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1855, file: !119, line: 646, size: 64, elements: !1875)
!1875 = !{!1876, !1879}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1874, file: !119, line: 647, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1878)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !119, line: 542, baseType: !44)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1874, file: !119, line: 648, baseType: !1878, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1855, file: !119, line: 666, baseType: !27, size: 32, offset: 320)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1855, file: !119, line: 667, baseType: !1882, size: 64, offset: 384)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !119, line: 579, size: 320, elements: !1884)
!1884 = !{!1885}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1883, file: !119, line: 580, baseType: !941, size: 320)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1855, file: !119, line: 670, baseType: !383, size: 8, offset: 448)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1855, file: !119, line: 681, baseType: !1888, size: 256, offset: 512)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !119, line: 678, size: 256, elements: !1889)
!1889 = !{!1890, !1891}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1888, file: !119, line: 679, baseType: !640, size: 192, align: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1888, file: !119, line: 680, baseType: !44, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1855, file: !119, line: 689, baseType: !102, size: 128, offset: 768)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1855, file: !119, line: 691, baseType: !1894, size: 64, offset: 896)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !119, line: 691, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1855, file: !119, line: 694, baseType: !1897, size: 64, offset: 960)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1899)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1848, line: 563, size: 1024, elements: !1900)
!1900 = !{!1901, !1905, !1906, !1910, !1914, !1918, !1919, !1923, !1927, !1931, !1932, !1933, !1937, !1941, !1947, !1951}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1899, file: !1848, line: 564, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{null, !1854}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1899, file: !1848, line: 569, baseType: !1902, size: 64, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1899, file: !1848, line: 571, baseType: !1907, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!27, !1854, !44}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1899, file: !1848, line: 572, baseType: !1911, size: 64, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!27, !1854}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1899, file: !1848, line: 578, baseType: !1915, size: 64, offset: 256)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!27, !1854, !44, !44, !44}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1899, file: !1848, line: 580, baseType: !1842, size: 64, offset: 320)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1899, file: !1848, line: 581, baseType: !1920, size: 64, offset: 384)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!1845, !1846, !13}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1899, file: !1848, line: 582, baseType: !1924, size: 64, offset: 448)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!1845, !1846, !44, !44}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1899, file: !1848, line: 584, baseType: !1928, size: 64, offset: 512)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!44, !1854}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1899, file: !1848, line: 588, baseType: !1842, size: 64, offset: 576)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1899, file: !1848, line: 591, baseType: !1842, size: 64, offset: 640)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1899, file: !1848, line: 597, baseType: !1934, size: 64, offset: 704)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!27, !1854, !44, !25, !27, !27}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1899, file: !1848, line: 603, baseType: !1938, size: 64, offset: 768)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!22, !1854}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1899, file: !1848, line: 613, baseType: !1942, size: 64, offset: 832)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!27, !1854, !1945}
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !119, line: 717, flags: DIFlagFwdDecl)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1899, file: !1848, line: 625, baseType: !1948, size: 64, offset: 896)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!1945, !1854, !44}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1899, file: !1848, line: 633, baseType: !1952, size: 64, offset: 960)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!1744, !1854, !44}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1855, file: !119, line: 697, baseType: !44, size: 64, offset: 1024)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1855, file: !119, line: 699, baseType: !462, size: 64, offset: 1088)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1855, file: !119, line: 700, baseType: !25, size: 64, offset: 1152)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1855, file: !119, line: 711, baseType: !488, size: 64, offset: 1216)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1855, file: !119, line: 717, baseType: !1945, size: 64, offset: 1280)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1855, file: !119, line: 722, baseType: !1961, offset: 1344)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !119, line: 570, elements: !907)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1851, file: !1848, line: 515, baseType: !584, size: 32, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1851, file: !1848, line: 516, baseType: !44, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1851, file: !1848, line: 517, baseType: !44, size: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1851, file: !1848, line: 518, baseType: !44, size: 64, offset: 256)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1847, file: !1848, line: 520, baseType: !118, size: 32, offset: 320)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1847, file: !1848, line: 522, baseType: !1968, size: 64, offset: 384)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !927, line: 22, baseType: !1970)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !927, line: 22, size: 64, elements: !1971)
!1971 = !{!1972}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1970, file: !927, line: 22, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !927, line: 15, baseType: !44)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1847, file: !1848, line: 524, baseType: !1975, size: 64, offset: 448)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !922, line: 372, baseType: !1977)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !922, line: 372, size: 64, elements: !1978)
!1978 = !{!1979}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1977, file: !922, line: 372, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !927, line: 16, baseType: !44)
!1981 = !DIDerivedType(tag: DW_TAG_member, scope: !1847, file: !1848, line: 527, baseType: !1982, size: 64, offset: 512)
!1982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1847, file: !1848, line: 527, size: 64, elements: !1983)
!1983 = !{!1984, !1990}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1982, file: !1848, line: 528, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !927, line: 21, baseType: !1986)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !927, line: 21, size: 64, elements: !1987)
!1987 = !{!1988}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1986, file: !927, line: 21, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !927, line: 14, baseType: !44)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1982, file: !1848, line: 529, baseType: !1969, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1847, file: !1848, line: 534, baseType: !1744, size: 64, offset: 576)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1847, file: !1848, line: 535, baseType: !1744, size: 64, offset: 640)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1847, file: !1848, line: 541, baseType: !1994, size: 64, offset: 704)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1847, file: !1848, line: 545, baseType: !1996, size: 64, offset: 768)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1847, file: !1848, line: 549, baseType: !1998, size: 64, offset: 832)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !922, line: 520, baseType: !1744)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1835, file: !142, line: 100, baseType: !2000, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!27, !1794, !44, !44, !27}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1795, file: !142, line: 134, baseType: !25, size: 64, offset: 960)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1795, file: !142, line: 135, baseType: !27, size: 32, offset: 1024)
!2005 = !DIDerivedType(tag: DW_TAG_member, scope: !1795, file: !142, line: 136, baseType: !2006, size: 128, offset: 1088)
!2006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1795, file: !142, line: 136, size: 128, elements: !2007)
!2007 = !{!2008, !2014}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2006, file: !142, line: 137, baseType: !2009, size: 128)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2010, line: 6, size: 128, elements: !2011)
!2010 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2011 = !{!2012, !2013}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2009, file: !2010, line: 7, baseType: !317, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2009, file: !2010, line: 8, baseType: !317, size: 64, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, scope: !2006, file: !142, line: 138, baseType: !2015)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2006, file: !142, line: 138, elements: !2016)
!2016 = !{!2017, !2019}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2015, file: !142, line: 138, baseType: !2018)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2015, file: !142, line: 138, elements: !907)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2015, file: !142, line: 138, baseType: !2020)
!2020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2009, elements: !1318)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1791, file: !119, line: 147, baseType: !25, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1749, file: !119, line: 161, baseType: !475, size: 128, align: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, scope: !1745, file: !119, line: 164, baseType: !2024, size: 32, offset: 384)
!2024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1745, file: !119, line: 164, size: 32, elements: !2025)
!2025 = !{!2026, !2027}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2024, file: !119, line: 169, baseType: !54, size: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2024, file: !119, line: 177, baseType: !13, size: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1745, file: !119, line: 181, baseType: !54, size: 32, offset: 416)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !257, line: 309, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1738, file: !257, line: 406, baseType: !2032, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!27, !462, !2035}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !119, line: 293, size: 1536, elements: !2037)
!2037 = !{!2038, !2068, !2082}
!2038 = !DIDerivedType(tag: DW_TAG_member, scope: !2036, file: !119, line: 295, baseType: !2039, size: 512)
!2039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2036, file: !119, line: 295, size: 512, elements: !2040)
!2040 = !{!2041, !2067}
!2041 = !DIDerivedType(tag: DW_TAG_member, scope: !2039, file: !119, line: 296, baseType: !2042, size: 448)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2039, file: !119, line: 296, size: 448, elements: !2043)
!2043 = !{!2044, !2045, !2054, !2055, !2056, !2065, !2066}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2042, file: !119, line: 298, baseType: !44, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, scope: !2042, file: !119, line: 299, baseType: !2046, size: 128, offset: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2042, file: !119, line: 299, size: 128, elements: !2047)
!2047 = !{!2048, !2049}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2046, file: !119, line: 300, baseType: !102, size: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, scope: !2046, file: !119, line: 302, baseType: !2050, size: 128)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2046, file: !119, line: 302, size: 128, elements: !2051)
!2051 = !{!2052, !2053}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2050, file: !119, line: 303, baseType: !25, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2050, file: !119, line: 305, baseType: !13, size: 32, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2042, file: !119, line: 310, baseType: !1724, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2042, file: !119, line: 311, baseType: !44, size: 64, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_member, scope: !2042, file: !119, line: 312, baseType: !2057, size: 64, offset: 320)
!2057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2042, file: !119, line: 312, size: 64, elements: !2058)
!2058 = !{!2059, !2060}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2057, file: !119, line: 313, baseType: !25, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2057, file: !119, line: 314, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !119, line: 257, baseType: !2062)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 255, size: 64, elements: !2063)
!2063 = !{!2064}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2062, file: !119, line: 256, baseType: !44, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2042, file: !119, line: 316, baseType: !54, size: 32, offset: 384)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2042, file: !119, line: 317, baseType: !54, size: 32, offset: 416)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2039, file: !119, line: 323, baseType: !1745, size: 512, align: 128)
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2036, file: !119, line: 325, baseType: !2069, size: 512, offset: 512)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2036, file: !119, line: 325, size: 512, elements: !2070)
!2070 = !{!2071, !2081}
!2071 = !DIDerivedType(tag: DW_TAG_member, scope: !2069, file: !119, line: 326, baseType: !2072, size: 320)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2069, file: !119, line: 326, size: 320, elements: !2073)
!2073 = !{!2074, !2075, !2076, !2077, !2078, !2079, !2080}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2072, file: !119, line: 327, baseType: !44, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2072, file: !119, line: 328, baseType: !44, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2072, file: !119, line: 329, baseType: !44, size: 64, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2072, file: !119, line: 331, baseType: !54, size: 32, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2072, file: !119, line: 332, baseType: !54, size: 32, offset: 224)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2072, file: !119, line: 333, baseType: !54, size: 32, offset: 256)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2072, file: !119, line: 335, baseType: !13, size: 32, offset: 288)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2069, file: !119, line: 339, baseType: !1745, size: 512, align: 128)
!2082 = !DIDerivedType(tag: DW_TAG_member, scope: !2036, file: !119, line: 341, baseType: !2083, size: 512, offset: 1024)
!2083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2036, file: !119, line: 341, size: 512, elements: !2084)
!2084 = !{!2085, !2094, !2100}
!2085 = !DIDerivedType(tag: DW_TAG_member, scope: !2083, file: !119, line: 342, baseType: !2086, size: 384)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2083, file: !119, line: 342, size: 384, elements: !2087)
!2087 = !{!2088, !2089, !2090, !2091, !2092, !2093}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2086, file: !119, line: 343, baseType: !44, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2086, file: !119, line: 344, baseType: !44, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2086, file: !119, line: 346, baseType: !25, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2086, file: !119, line: 347, baseType: !25, size: 64, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2086, file: !119, line: 348, baseType: !25, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2086, file: !119, line: 349, baseType: !25, size: 64, offset: 320)
!2094 = !DIDerivedType(tag: DW_TAG_member, scope: !2083, file: !119, line: 352, baseType: !2095, size: 256)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2083, file: !119, line: 352, size: 256, elements: !2096)
!2096 = !{!2097, !2098, !2099}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2095, file: !119, line: 353, baseType: !44, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2095, file: !119, line: 354, baseType: !44, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2095, file: !119, line: 356, baseType: !102, size: 128, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2083, file: !119, line: 359, baseType: !1745, size: 512, align: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1738, file: !257, line: 409, baseType: !2102, size: 64, offset: 128)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!27, !1724, !2029}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1738, file: !257, line: 412, baseType: !2106, size: 64, offset: 192)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!383, !1724, !2035}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1738, file: !257, line: 414, baseType: !2110, size: 64, offset: 256)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{null, !2113}
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !257, line: 310, flags: DIFlagFwdDecl)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1738, file: !257, line: 416, baseType: !2116, size: 64, offset: 320)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!27, !462, !1724, !46, !13, !2119, !2120}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1738, file: !257, line: 419, baseType: !2122, size: 64, offset: 384)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!27, !462, !1724, !46, !13, !13, !1744, !25}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1738, file: !257, line: 424, baseType: !2126, size: 64, offset: 448)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!2129, !1724, !2129}
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !30, line: 131, baseType: !317)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1738, file: !257, line: 425, baseType: !2131, size: 64, offset: 512)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{null, !2035, !40, !40}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1738, file: !257, line: 426, baseType: !2135, size: 64, offset: 576)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!383, !2035, !584}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1738, file: !257, line: 427, baseType: !2139, size: 64, offset: 640)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !2035}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1738, file: !257, line: 428, baseType: !2143, size: 64, offset: 704)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!1687, !2146, !2168}
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !257, line: 373, size: 384, elements: !2148)
!2148 = !{!2149, !2150, !2151, !2155, !2156, !2157, !2158}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2147, file: !257, line: 374, baseType: !462, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2147, file: !257, line: 375, baseType: !46, size: 64, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2147, file: !257, line: 376, baseType: !2152, size: 64, offset: 128)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{null, !2146, !458}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2147, file: !257, line: 377, baseType: !25, size: 64, offset: 192)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2147, file: !257, line: 378, baseType: !27, size: 32, offset: 256)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2147, file: !257, line: 379, baseType: !98, size: 16, offset: 288)
!2158 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !257, line: 380, baseType: !2159, size: 64, offset: 320)
!2159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2147, file: !257, line: 380, size: 64, elements: !2160)
!2160 = !{!2161, !2164}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2159, file: !257, line: 386, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !257, line: 386, flags: DIFlagFwdDecl)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2159, file: !257, line: 395, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!1687, !25}
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !257, line: 69, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1738, file: !257, line: 433, baseType: !2171, size: 64, offset: 768)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!27, !1724, !2035, !2035, !134}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1738, file: !257, line: 435, baseType: !2175, size: 64, offset: 832)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!27, !2035}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1738, file: !257, line: 436, baseType: !2179, size: 64, offset: 896)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!383, !2035, !40, !40}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1738, file: !257, line: 438, baseType: !2183, size: 64, offset: 960)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{null, !2035, !2186, !2186}
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1738, file: !257, line: 439, baseType: !2188, size: 64, offset: 1024)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!27, !1724, !1744}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1738, file: !257, line: 442, baseType: !2192, size: 64, offset: 1088)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!27, !2195, !462, !2197}
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !257, line: 66, flags: DIFlagFwdDecl)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1738, file: !257, line: 444, baseType: !2199, size: 64, offset: 1152)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{null, !462}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1738, file: !257, line: 445, baseType: !2203, size: 64, offset: 1216)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!27, !2146, !2168}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1725, file: !257, line: 486, baseType: !44, size: 64, offset: 896)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1725, file: !257, line: 487, baseType: !941, size: 320, offset: 960)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1725, file: !257, line: 488, baseType: !2209, size: 32, offset: 1280)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2210, line: 8, baseType: !313)
!2210 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1725, file: !257, line: 489, baseType: !64, size: 32, offset: 1312)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1725, file: !257, line: 490, baseType: !102, size: 128, offset: 1344)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1725, file: !257, line: 491, baseType: !25, size: 64, offset: 1472)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1715, file: !1681, line: 180, baseType: !2215, size: 64, offset: 320)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!1687, !462, !1623, !1714, !389, !46, !40}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1715, file: !1681, line: 182, baseType: !2215, size: 64, offset: 384)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1715, file: !1681, line: 184, baseType: !2220, size: 64, offset: 448)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!27, !462, !1623, !1714, !1854}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1703, file: !1681, line: 90, baseType: !2224, size: 64, offset: 192)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1703, file: !1681, line: 91, baseType: !2226, size: 64, offset: 256)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1671, file: !1618, line: 120, baseType: !2228, size: 64, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!2231, !1641}
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2233)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !164, line: 39, size: 384, elements: !2234)
!2234 = !{!2235, !2236, !2240, !2244, !2250, !2254}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2233, file: !164, line: 40, baseType: !163, size: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2233, file: !164, line: 41, baseType: !2237, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!383}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2233, file: !164, line: 42, baseType: !2241, size: 64, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!25}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2233, file: !164, line: 43, baseType: !2245, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!1020, !2248}
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !164, line: 19, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2233, file: !164, line: 44, baseType: !2251, size: 64, offset: 256)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!1020}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2233, file: !164, line: 45, baseType: !368, size: 64, offset: 320)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1671, file: !1618, line: 121, baseType: !2256, size: 64, offset: 256)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!1020, !1641}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1671, file: !1618, line: 122, baseType: !2260, size: 64, offset: 320)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{null, !1641, !1266, !1267}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1617, file: !1618, line: 70, baseType: !2264, size: 64, offset: 384)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2266, line: 190, size: 1152, elements: !2267)
!2266 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2267 = !{!2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2398, !2399, !2400, !2401, !2402, !2405}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2265, file: !2266, line: 191, baseType: !54, size: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2265, file: !2266, line: 192, baseType: !54, size: 32, offset: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2265, file: !2266, line: 202, baseType: !2264, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2265, file: !2266, line: 203, baseType: !22, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2265, file: !2266, line: 205, baseType: !640, size: 192, align: 64, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2265, file: !2266, line: 207, baseType: !1020, size: 64, offset: 384)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2265, file: !2266, line: 208, baseType: !13, size: 32, offset: 448)
!2275 = !DIDerivedType(tag: DW_TAG_member, scope: !2265, file: !2266, line: 209, baseType: !2276, size: 256, offset: 512)
!2276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2265, file: !2266, line: 209, size: 256, elements: !2277)
!2277 = !{!2278, !2287, !2291}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2276, file: !2266, line: 210, baseType: !2279, size: 256)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2266, line: 153, size: 256, elements: !2280)
!2280 = !{!2281, !2282, !2283, !2286}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2279, file: !2266, line: 154, baseType: !44, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2279, file: !2266, line: 156, baseType: !772, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2279, file: !2266, line: 162, baseType: !2284, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2266, line: 162, flags: DIFlagFwdDecl)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2279, file: !2266, line: 167, baseType: !44, size: 64, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2276, file: !2266, line: 211, baseType: !2288, size: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2266, line: 170, size: 64, elements: !2289)
!2289 = !{!2290}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2288, file: !2266, line: 171, baseType: !2264, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2276, file: !2266, line: 212, baseType: !2292, size: 256)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2266, line: 174, size: 256, elements: !2293)
!2293 = !{!2294, !2393, !2396, !2397}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2292, file: !2266, line: 175, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2297)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2266, line: 271, size: 768, elements: !2298)
!2298 = !{!2299, !2357, !2361, !2362, !2363, !2364, !2365, !2369, !2370, !2371, !2372, !2389}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2297, file: !2266, line: 276, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!27, !2303}
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2266, line: 251, size: 1216, elements: !2305)
!2305 = !{!2306, !2307, !2308, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2304, file: !2266, line: 253, baseType: !2264, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2304, file: !2266, line: 254, baseType: !462, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2304, file: !2266, line: 255, baseType: !2309, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2311, line: 17, size: 960, elements: !2312)
!2311 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2312 = !{!2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2342, !2343, !2346}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2310, file: !2311, line: 18, baseType: !389, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2310, file: !2311, line: 19, baseType: !40, size: 64, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2310, file: !2311, line: 20, baseType: !40, size: 64, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2310, file: !2311, line: 21, baseType: !40, size: 64, offset: 192)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2310, file: !2311, line: 22, baseType: !40, size: 64, offset: 256)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2310, file: !2311, line: 23, baseType: !46, size: 64, offset: 320)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2310, file: !2311, line: 24, baseType: !46, size: 64, offset: 384)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2310, file: !2311, line: 25, baseType: !496, size: 256, offset: 448)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2310, file: !2311, line: 26, baseType: !2322, size: 64, offset: 704)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2324)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2311, line: 32, size: 256, elements: !2325)
!2325 = !{!2326, !2330, !2334, !2338}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2324, file: !2311, line: 33, baseType: !2327, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!25, !2309, !45}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2324, file: !2311, line: 34, baseType: !2331, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{null, !2309, !25}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2324, file: !2311, line: 35, baseType: !2335, size: 64, offset: 128)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!25, !2309, !25, !45}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2324, file: !2311, line: 36, baseType: !2339, size: 64, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!27, !2309, !25}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2310, file: !2311, line: 27, baseType: !27, size: 32, offset: 768)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2310, file: !2311, line: 28, baseType: !2344, size: 64, offset: 832)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2310, file: !2311, line: 29, baseType: !25, size: 64, offset: 896)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2304, file: !2266, line: 256, baseType: !25, size: 64, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2304, file: !2266, line: 259, baseType: !496, size: 256, offset: 256)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2304, file: !2266, line: 260, baseType: !496, size: 256, offset: 512)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2304, file: !2266, line: 261, baseType: !27, size: 32, offset: 768)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2304, file: !2266, line: 262, baseType: !102, size: 128, offset: 832)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2304, file: !2266, line: 263, baseType: !389, size: 64, offset: 960)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2304, file: !2266, line: 265, baseType: !40, size: 64, offset: 1024)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2304, file: !2266, line: 266, baseType: !383, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2304, file: !2266, line: 267, baseType: !383, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2304, file: !2266, line: 268, baseType: !1897, size: 64, offset: 1152)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2297, file: !2266, line: 277, baseType: !2358, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{null, !2303}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2297, file: !2266, line: 290, baseType: !2339, size: 64, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2297, file: !2266, line: 292, baseType: !2327, size: 64, offset: 192)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2297, file: !2266, line: 293, baseType: !2335, size: 64, offset: 256)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2297, file: !2266, line: 294, baseType: !2331, size: 64, offset: 320)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2297, file: !2266, line: 296, baseType: !2366, size: 64, offset: 384)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!1687, !2303, !389, !40, !46}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2297, file: !2266, line: 306, baseType: !40, size: 64, offset: 448)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2297, file: !2266, line: 313, baseType: !383, size: 8, offset: 512)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2297, file: !2266, line: 314, baseType: !2366, size: 64, offset: 576)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2297, file: !2266, line: 317, baseType: !2373, size: 64, offset: 640)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!2376, !2303, !2378}
!2376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2377, line: 59, baseType: !13)
!2377 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2380, line: 37, size: 128, elements: !2381)
!2380 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2381 = !{!2382, !2388}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2379, file: !2380, line: 38, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2380, line: 31, baseType: !2384)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{null, !462, !2387, !2378}
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2379, file: !2380, line: 39, baseType: !2376, size: 32, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2297, file: !2266, line: 320, baseType: !2390, size: 64, offset: 704)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!27, !2303, !1854}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2292, file: !2266, line: 176, baseType: !2394, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2266, line: 35, flags: DIFlagFwdDecl)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2292, file: !2266, line: 177, baseType: !46, size: 64, offset: 128)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2292, file: !2266, line: 178, baseType: !2264, size: 64, offset: 192)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2265, file: !2266, line: 215, baseType: !25, size: 64, offset: 768)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2265, file: !2266, line: 221, baseType: !317, size: 64, offset: 832)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2265, file: !2266, line: 223, baseType: !31, size: 16, offset: 896)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2265, file: !2266, line: 224, baseType: !29, size: 16, offset: 912)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2265, file: !2266, line: 225, baseType: !2403, size: 64, offset: 960)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2266, line: 36, flags: DIFlagFwdDecl)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2265, file: !2266, line: 227, baseType: !475, size: 128, align: 64, offset: 1024)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1617, file: !1618, line: 71, baseType: !2407, size: 32, offset: 448)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2408, line: 19, size: 32, elements: !2409)
!2408 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2409 = !{!2410}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2407, file: !2408, line: 20, baseType: !541, size: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1617, file: !1618, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1617, file: !1618, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1617, file: !1618, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1617, file: !1618, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1617, file: !1618, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1614, file: !157, line: 47, baseType: !1604, size: 64, offset: 512)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1614, file: !157, line: 48, baseType: !1623, size: 64, offset: 576)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1614, file: !157, line: 49, baseType: !2419, size: 64, offset: 640)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !157, line: 49, flags: DIFlagFwdDecl)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1614, file: !157, line: 50, baseType: !1240, size: 64, offset: 704)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1605, file: !157, line: 418, baseType: !2423, size: 64, offset: 1408)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !157, line: 53, size: 448, elements: !2425)
!2425 = !{!2426, !2427, !2432, !2436, !2440, !2444}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2424, file: !157, line: 54, baseType: !1691, size: 128)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2424, file: !157, line: 55, baseType: !2428, size: 64, offset: 128)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!1687, !2423, !2431, !389}
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2424, file: !157, line: 57, baseType: !2433, size: 64, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!1687, !2423, !2431, !22, !40}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2424, file: !157, line: 59, baseType: !2437, size: 64, offset: 256)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{null, !1604, !22}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2424, file: !157, line: 60, baseType: !2441, size: 64, offset: 320)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!27, !1604}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2424, file: !157, line: 61, baseType: !2445, size: 64, offset: 384)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{null, !1604}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1605, file: !157, line: 419, baseType: !22, size: 64, offset: 1472)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1605, file: !157, line: 420, baseType: !22, size: 64, offset: 1536)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1605, file: !157, line: 421, baseType: !1623, size: 64, offset: 1600)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1605, file: !157, line: 424, baseType: !2452, size: 64, offset: 1664)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2454)
!2454 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !157, line: 424, flags: DIFlagFwdDecl)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1605, file: !157, line: 425, baseType: !2456, size: 64, offset: 1728)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !987)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1605, file: !157, line: 426, baseType: !13, size: 32, offset: 1792)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1605, file: !157, line: 435, baseType: !496, size: 256, offset: 1856)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1605, file: !157, line: 437, baseType: !2461, size: 64, offset: 2112)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2463, line: 69, size: 320, elements: !2464)
!2463 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2464 = !{!2465, !2466, !2467, !2484, !2486, !2490, !2491}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2462, file: !2463, line: 70, baseType: !22, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2462, file: !2463, line: 71, baseType: !1604, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2462, file: !2463, line: 72, baseType: !2468, size: 64, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2470)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2463, line: 47, size: 256, elements: !2471)
!2471 = !{!2472, !2473, !2479, !2483}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2470, file: !2463, line: 49, baseType: !13, size: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2470, file: !2463, line: 51, baseType: !2474, size: 64, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!27, !22, !2477}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2462)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2470, file: !2463, line: 53, baseType: !2480, size: 64, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!27, !389, !2477}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2470, file: !2463, line: 55, baseType: !368, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2462, file: !2463, line: 73, baseType: !2485, size: 16, offset: 192)
!2485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2462, file: !2463, line: 74, baseType: !2487, size: 8, offset: 208)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !89, line: 16, baseType: !2488)
!2488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !91, line: 20, baseType: !2489)
!2489 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2462, file: !2463, line: 75, baseType: !88, size: 8, offset: 216)
!2491 = !DIDerivedType(tag: DW_TAG_member, scope: !2462, file: !2463, line: 76, baseType: !2492, size: 64, offset: 256)
!2492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2462, file: !2463, line: 76, size: 64, elements: !2493)
!2493 = !{!2494, !2495, !2502}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2492, file: !2463, line: 77, baseType: !25, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2492, file: !2463, line: 78, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2498)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2463, line: 86, size: 128, elements: !2499)
!2499 = !{!2500, !2501}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2498, file: !2463, line: 87, baseType: !13, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2498, file: !2463, line: 88, baseType: !389, size: 64, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2492, file: !2463, line: 79, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2505)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2463, line: 92, size: 256, elements: !2506)
!2506 = !{!2507, !2508, !2509, !2511, !2512}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2505, file: !2463, line: 94, baseType: !13, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2505, file: !2463, line: 95, baseType: !13, size: 32, offset: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2505, file: !2463, line: 96, baseType: !2510, size: 64, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2505, file: !2463, line: 97, baseType: !2468, size: 64, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2505, file: !2463, line: 98, baseType: !25, size: 64, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1605, file: !157, line: 438, baseType: !13, size: 32, offset: 2176)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1605, file: !157, line: 441, baseType: !13, size: 32, offset: 2208)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1605, file: !157, line: 442, baseType: !2452, size: 64, offset: 2240)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1605, file: !157, line: 443, baseType: !2456, size: 64, offset: 2304)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1605, file: !157, line: 444, baseType: !383, size: 8, offset: 2368)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1605, file: !157, line: 451, baseType: !383, size: 8, offset: 2376)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1605, file: !157, line: 454, baseType: !13, size: 32, offset: 2400)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1605, file: !157, line: 455, baseType: !2521, size: 64, offset: 2432)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2523, line: 23, size: 96, elements: !2524)
!2523 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2524 = !{!2525, !2526, !2527}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2522, file: !2523, line: 24, baseType: !27, size: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2522, file: !2523, line: 24, baseType: !27, size: 32, offset: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2522, file: !2523, line: 24, baseType: !27, size: 32, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1605, file: !157, line: 458, baseType: !2529, size: 64, offset: 2496)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!27}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1605, file: !157, line: 460, baseType: !2533, size: 4032, align: 512, offset: 2560)
!2533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2534, size: 4032, elements: !2550)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !157, line: 362, size: 576, elements: !2535)
!2535 = !{!2536, !2537, !2538}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2534, file: !157, line: 363, baseType: !25, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2534, file: !157, line: 364, baseType: !13, size: 32, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2534, file: !157, line: 367, baseType: !2539, size: 448, offset: 128)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !157, line: 319, size: 448, elements: !2540)
!2540 = !{!2541, !2542}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2539, file: !157, line: 320, baseType: !1604, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2539, file: !157, line: 321, baseType: !2543, size: 384, offset: 64)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2544, line: 40, size: 384, elements: !2545)
!2544 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2545 = !{!2546}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2543, file: !2544, line: 41, baseType: !2547, size: 384, align: 64)
!2547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 384, align: 64, elements: !2548)
!2548 = !{!2549}
!2549 = !DISubrange(count: 2)
!2550 = !{!2551}
!2551 = !DISubrange(count: 7)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1605, file: !157, line: 463, baseType: !2553, size: 192, offset: 6592)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2554, line: 8, size: 192, elements: !2555)
!2554 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2555 = !{!2556, !2557, !2558}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2553, file: !2554, line: 10, baseType: !13, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2553, file: !2554, line: 11, baseType: !1423, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2553, file: !2554, line: 12, baseType: !2559, size: 64, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2561, line: 59, size: 48, elements: !2562)
!2561 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2562 = !{!2563, !2564, !2565, !2566, !2567, !2568}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2560, file: !2561, line: 60, baseType: !1037, size: 16)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2560, file: !2561, line: 61, baseType: !1037, size: 16, offset: 16)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2560, file: !2561, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2560, file: !2561, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2560, file: !2561, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2560, file: !2561, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1605, file: !157, line: 465, baseType: !44, size: 64, offset: 6784)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1605, file: !157, line: 469, baseType: !13, size: 32, offset: 6848)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1605, file: !157, line: 470, baseType: !102, size: 128, offset: 6912)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1605, file: !157, line: 471, baseType: !2573, size: 64, offset: 7040)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2575, line: 33, size: 96, elements: !2576)
!2575 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2576 = !{!2577, !2578, !2579, !2580}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2574, file: !2575, line: 37, baseType: !27, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2574, file: !2575, line: 43, baseType: !27, size: 32, offset: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2574, file: !2575, line: 45, baseType: !31, size: 16, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2574, file: !2575, line: 47, baseType: !31, size: 16, offset: 80)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1605, file: !157, line: 476, baseType: !2582, size: 64, offset: 7104)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !157, line: 378, size: 256, elements: !2584)
!2584 = !{!2585, !2601, !2602, !2603}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2583, file: !157, line: 379, baseType: !2586, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2588, line: 204, baseType: !2589)
!2588 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2588, line: 197, size: 192, elements: !2590)
!2590 = !{!2591, !2593, !2594, !2595, !2597, !2599}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2589, file: !2588, line: 198, baseType: !2592, size: 32)
!2592 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2588, line: 21, baseType: !314)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2589, file: !2588, line: 199, baseType: !92, size: 8, offset: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2589, file: !2588, line: 200, baseType: !92, size: 8, offset: 40)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2589, file: !2588, line: 201, baseType: !2596, size: 16, offset: 48)
!2596 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2588, line: 17, baseType: !99)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2589, file: !2588, line: 202, baseType: !2598, size: 64, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2588, line: 16, baseType: !318)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2589, file: !2588, line: 203, baseType: !2600, size: 64, offset: 128)
!2600 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2588, line: 22, baseType: !318)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2583, file: !157, line: 380, baseType: !13, size: 32, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2583, file: !157, line: 381, baseType: !389, size: 64, offset: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2583, file: !157, line: 382, baseType: !389, size: 64, offset: 192)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1605, file: !157, line: 477, baseType: !2583, size: 256, offset: 7168)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1605, file: !157, line: 480, baseType: !2606, size: 64, offset: 7424)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !157, line: 480, flags: DIFlagFwdDecl)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1605, file: !157, line: 483, baseType: !2609, size: 64, offset: 7488)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !157, line: 483, flags: DIFlagFwdDecl)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1605, file: !157, line: 488, baseType: !389, size: 64, offset: 7552)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1605, file: !157, line: 492, baseType: !25, size: 64, offset: 7616)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1605, file: !157, line: 493, baseType: !13, size: 32, offset: 7680)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1605, file: !157, line: 495, baseType: !25, size: 64, offset: 7744)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1605, file: !157, line: 496, baseType: !13, size: 32, offset: 7808)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1605, file: !157, line: 499, baseType: !13, size: 32, offset: 7840)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1605, file: !157, line: 500, baseType: !2618, size: 64, offset: 7872)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2620, line: 45, baseType: !2621)
!2620 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1605, file: !157, line: 503, baseType: !13, size: 32, offset: 7936)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1605, file: !157, line: 504, baseType: !2624, size: 64, offset: 8000)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2627, line: 96, size: 192, elements: !2628)
!2627 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2628 = !{!2629, !2630, !2683, !2686}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2626, file: !2627, line: 97, baseType: !13, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2626, file: !2627, line: 98, baseType: !2631, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2627, line: 24, size: 3072, elements: !2633)
!2633 = !{!2634, !2636, !2637, !2638, !2639, !2652, !2653, !2654, !2655, !2667, !2668, !2669, !2680, !2681, !2682}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2632, file: !2627, line: 26, baseType: !2635, size: 128)
!2635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 128, elements: !2548)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2632, file: !2627, line: 27, baseType: !2635, size: 128, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2632, file: !2627, line: 28, baseType: !27, size: 32, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2632, file: !2627, line: 31, baseType: !64, size: 32, align: 512, offset: 512)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2632, file: !2627, line: 32, baseType: !2640, size: 960, offset: 576)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2641, line: 206, size: 960, elements: !2642)
!2641 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2642 = !{!2643, !2644, !2647, !2649, !2650, !2651}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2640, file: !2641, line: 207, baseType: !478, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2640, file: !2641, line: 208, baseType: !2645, size: 256, offset: 64)
!2645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2646, size: 256, elements: !559)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2640, file: !2641, line: 209, baseType: !2648, size: 256, offset: 320)
!2648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 256, elements: !559)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2640, file: !2641, line: 213, baseType: !458, size: 64, offset: 576)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2640, file: !2641, line: 215, baseType: !1301, size: 256, offset: 640)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2640, file: !2641, line: 216, baseType: !88, size: 8, offset: 896)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2632, file: !2627, line: 33, baseType: !44, size: 64, offset: 1536)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2632, file: !2627, line: 34, baseType: !44, size: 64, offset: 1600)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2632, file: !2627, line: 35, baseType: !383, size: 8, offset: 1664)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2632, file: !2627, line: 36, baseType: !2656, size: 320, offset: 1728)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2657, line: 11, size: 320, elements: !2658)
!2657 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2658 = !{!2659, !2660, !2661, !2666}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2656, file: !2657, line: 16, baseType: !554, size: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2656, file: !2657, line: 17, baseType: !44, size: 64, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2656, file: !2657, line: 18, baseType: !2662, size: 64, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{null, !2665}
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2656, file: !2657, line: 19, baseType: !313, size: 32, offset: 256)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2632, file: !2627, line: 37, baseType: !1202, size: 256, offset: 2048)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2632, file: !2627, line: 38, baseType: !475, size: 128, align: 64, offset: 2304)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2632, file: !2627, line: 39, baseType: !2670, size: 64, offset: 2432)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2627, line: 49, size: 768, elements: !2672)
!2672 = !{!2673, !2674, !2675, !2676, !2677, !2678, !2679}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2671, file: !2627, line: 50, baseType: !64, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2671, file: !2627, line: 51, baseType: !2648, size: 256, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2671, file: !2627, line: 53, baseType: !2648, size: 256, offset: 320)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2671, file: !2627, line: 54, baseType: !44, size: 64, offset: 576)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2671, file: !2627, line: 55, baseType: !2670, size: 64, offset: 640)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2671, file: !2627, line: 56, baseType: !27, size: 32, offset: 704)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2671, file: !2627, line: 57, baseType: !27, size: 32, offset: 736)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2632, file: !2627, line: 40, baseType: !44, size: 64, offset: 2496)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2632, file: !2627, line: 42, baseType: !27, size: 32, offset: 2560)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2632, file: !2627, line: 43, baseType: !2625, size: 64, offset: 2624)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2626, file: !2627, line: 99, baseType: !2684, offset: 128)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2685, line: 211, elements: !907)
!2685 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2626, file: !2627, line: 100, baseType: !2687, size: 64, offset: 128)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2627, line: 63, size: 3008, elements: !2689)
!2689 = !{!2690, !2691, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2721}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2688, file: !2627, line: 64, baseType: !2670, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2688, file: !2627, line: 65, baseType: !2692, size: 192, offset: 64)
!2692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2670, size: 192, elements: !533)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2688, file: !2627, line: 67, baseType: !27, size: 32, offset: 256)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2688, file: !2627, line: 68, baseType: !496, size: 256, offset: 320)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2688, file: !2627, line: 69, baseType: !64, size: 32, offset: 576)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2688, file: !2627, line: 70, baseType: !496, size: 256, offset: 640)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2688, file: !2627, line: 71, baseType: !44, size: 64, offset: 896)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2688, file: !2627, line: 72, baseType: !44, size: 64, offset: 960)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2688, file: !2627, line: 73, baseType: !44, size: 64, offset: 1024)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2688, file: !2627, line: 74, baseType: !44, size: 64, offset: 1088)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2688, file: !2627, line: 75, baseType: !44, size: 64, offset: 1152)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2688, file: !2627, line: 76, baseType: !44, size: 64, offset: 1216)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2688, file: !2627, line: 77, baseType: !44, size: 64, offset: 1280)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2688, file: !2627, line: 78, baseType: !44, size: 64, offset: 1344)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2688, file: !2627, line: 79, baseType: !383, size: 8, offset: 1408)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2688, file: !2627, line: 80, baseType: !44, size: 64, offset: 1472)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2688, file: !2627, line: 81, baseType: !496, size: 256, offset: 1536)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2688, file: !2627, line: 82, baseType: !1241, size: 256, offset: 1792)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2688, file: !2627, line: 84, baseType: !54, size: 32, offset: 2048)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2688, file: !2627, line: 87, baseType: !44, size: 64, offset: 2112)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2688, file: !2627, line: 88, baseType: !44, size: 64, offset: 2176)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2688, file: !2627, line: 89, baseType: !2713, size: 704, offset: 2240)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1203, line: 111, size: 704, elements: !2714)
!2714 = !{!2715, !2716, !2717, !2720}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2713, file: !1203, line: 112, baseType: !1202, size: 256)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2713, file: !1203, line: 113, baseType: !2656, size: 320, offset: 256)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2713, file: !1203, line: 116, baseType: !2718, size: 64, offset: 576)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1203, line: 18, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2713, file: !1203, line: 117, baseType: !27, size: 32, offset: 640)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2688, file: !2627, line: 90, baseType: !2625, size: 64, offset: 2944)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1605, file: !157, line: 515, baseType: !2723, size: 64, offset: 8064)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2725, line: 117, size: 128, elements: !2726)
!2725 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2726 = !{!2727, !2728, !2729}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2724, file: !2725, line: 118, baseType: !987, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2724, file: !2725, line: 119, baseType: !987, size: 32, offset: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2724, file: !2725, line: 120, baseType: !458, size: 64, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1605, file: !157, line: 516, baseType: !13, size: 32, offset: 8128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1605, file: !157, line: 519, baseType: !13, size: 32, offset: 8160)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1605, file: !157, line: 520, baseType: !2733, size: 64, offset: 8192)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1605, file: !157, line: 523, baseType: !2735, size: 64, offset: 8256)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !170, line: 372, size: 1024, elements: !2738)
!2738 = !{!2739, !2740, !2780, !2840, !2921, !2922, !2925, !2930, !2931, !2932, !2933, !2935, !2938}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2737, file: !170, line: 373, baseType: !102, size: 128)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2737, file: !170, line: 374, baseType: !2741, size: 64, offset: 128)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !170, line: 291, size: 576, elements: !2743)
!2743 = !{!2744, !2745, !2746, !2747, !2751, !2774, !2778, !2779}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2742, file: !170, line: 292, baseType: !22, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2742, file: !170, line: 293, baseType: !25, size: 64, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2742, file: !170, line: 295, baseType: !25, size: 64, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2742, file: !170, line: 297, baseType: !2748, size: 64, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!27, !2736, !169, !25}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2742, file: !170, line: 299, baseType: !2752, size: 64, offset: 256)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !170, line: 275, size: 320, elements: !2754)
!2754 = !{!2755, !2756}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2753, file: !170, line: 276, baseType: !22, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, scope: !2753, file: !170, line: 277, baseType: !2757, size: 256, offset: 64)
!2757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2753, file: !170, line: 277, size: 256, elements: !2758)
!2758 = !{!2759, !2770}
!2759 = !DIDerivedType(tag: DW_TAG_member, scope: !2757, file: !170, line: 278, baseType: !2760, size: 256)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2757, file: !170, line: 278, size: 256, elements: !2761)
!2761 = !{!2762, !2763, !2764, !2765, !2767, !2768, !2769}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2760, file: !170, line: 279, baseType: !22, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2760, file: !170, line: 280, baseType: !2621, size: 32, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2760, file: !170, line: 281, baseType: !2621, size: 32, offset: 96)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2760, file: !170, line: 282, baseType: !2766, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2760, file: !170, line: 283, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2760, file: !170, line: 284, baseType: !2621, size: 32, offset: 160)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2760, file: !170, line: 285, baseType: !2621, size: 32, offset: 192)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2757, file: !170, line: 287, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!27, !2736}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2742, file: !170, line: 300, baseType: !2775, size: 64, offset: 320)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!105, !2736}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2742, file: !170, line: 301, baseType: !102, size: 128, offset: 384)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2742, file: !170, line: 302, baseType: !2771, size: 64, offset: 512)
!2780 = !DIDerivedType(tag: DW_TAG_member, scope: !2737, file: !170, line: 375, baseType: !2781, size: 64, offset: 192)
!2781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2737, file: !170, line: 375, size: 64, elements: !2782)
!2782 = !{!2783, !2784}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2781, file: !170, line: 376, baseType: !22, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2781, file: !170, line: 378, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2620, line: 32, size: 640, elements: !2787)
!2787 = !{!2788, !2789, !2801, !2825, !2826, !2827, !2828, !2829, !2833}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2786, file: !2620, line: 33, baseType: !22, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2786, file: !2620, line: 34, baseType: !2790, size: 128, offset: 64)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2725, line: 85, size: 128, elements: !2791)
!2791 = !{!2792, !2793}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2790, file: !2725, line: 86, baseType: !54, size: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, scope: !2790, file: !2725, line: 101, baseType: !2794, size: 64, offset: 64)
!2794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2790, file: !2725, line: 101, size: 64, elements: !2795)
!2795 = !{!2796, !2797, !2798}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2794, file: !2725, line: 102, baseType: !44, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2794, file: !2725, line: 103, baseType: !2723, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2794, file: !2725, line: 104, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2725, line: 104, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2786, file: !2620, line: 35, baseType: !2802, size: 64, offset: 192)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2804, line: 61, size: 128, elements: !2805)
!2804 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2805 = !{!2806, !2807}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2803, file: !2804, line: 62, baseType: !25, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, scope: !2803, file: !2804, line: 63, baseType: !2808, size: 64, offset: 64)
!2808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2803, file: !2804, line: 63, size: 64, elements: !2809)
!2809 = !{!2810, !2811, !2824}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2808, file: !2804, line: 65, baseType: !44, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2808, file: !2804, line: 66, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2814, line: 169, size: 192, elements: !2815)
!2814 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2815 = !{!2816, !2817, !2818}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2813, file: !2814, line: 170, baseType: !2812, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2813, file: !2814, line: 171, baseType: !1604, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2813, file: !2814, line: 172, baseType: !2819, size: 64, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2804, line: 32, size: 64, elements: !2821)
!2821 = !{!2822, !2823}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2820, file: !2804, line: 33, baseType: !987, size: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2820, file: !2804, line: 34, baseType: !987, size: 32, offset: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2808, file: !2804, line: 67, baseType: !2819, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2786, file: !2620, line: 36, baseType: !25, size: 64, offset: 256)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2786, file: !2620, line: 37, baseType: !25, size: 64, offset: 320)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2786, file: !2620, line: 38, baseType: !25, size: 64, offset: 384)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2786, file: !2620, line: 39, baseType: !2529, size: 64, offset: 448)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2786, file: !2620, line: 40, baseType: !2830, size: 64, offset: 512)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{null}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2786, file: !2620, line: 41, baseType: !2834, size: 64, offset: 576)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2620, line: 26, size: 192, elements: !2836)
!2836 = !{!2837, !2838, !2839}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2835, file: !2620, line: 27, baseType: !25, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2835, file: !2620, line: 28, baseType: !25, size: 64, offset: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2835, file: !2620, line: 29, baseType: !27, size: 32, offset: 128)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2737, file: !170, line: 380, baseType: !2841, size: 256, offset: 256)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !170, line: 148, size: 256, elements: !2842)
!2842 = !{!2843, !2844, !2845}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2841, file: !170, line: 149, baseType: !554, size: 128)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2841, file: !170, line: 150, baseType: !27, size: 32, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2841, file: !170, line: 151, baseType: !2846, size: 64, offset: 192)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !170, line: 141, size: 256, elements: !2848)
!2848 = !{!2849, !2918, !2919, !2920}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2847, file: !170, line: 142, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !170, line: 138, baseType: !2851)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!180, !2854, !27, !2917}
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !170, line: 93, size: 67776, elements: !2856)
!2856 = !{!2857, !2860, !2863, !2866, !2867, !2868, !2869, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2897, !2900, !2901, !2902, !2910, !2911, !2912, !2913, !2914, !2915, !2916}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2855, file: !170, line: 94, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !170, line: 13, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2855, file: !170, line: 95, baseType: !2861, size: 64, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !170, line: 15, flags: DIFlagFwdDecl)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2855, file: !170, line: 96, baseType: !2864, size: 64, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !170, line: 14, flags: DIFlagFwdDecl)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2855, file: !170, line: 97, baseType: !25, size: 64, offset: 192)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2855, file: !170, line: 98, baseType: !27, size: 32, offset: 256)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2855, file: !170, line: 99, baseType: !496, size: 256, offset: 320)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2855, file: !170, line: 100, baseType: !2870, size: 64, offset: 576)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2873, line: 10, flags: DIFlagFwdDecl)
!2873 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2855, file: !170, line: 101, baseType: !44, size: 64, offset: 640)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2855, file: !170, line: 102, baseType: !25, size: 64, offset: 704)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2855, file: !170, line: 103, baseType: !13, size: 32, offset: 768)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2855, file: !170, line: 104, baseType: !389, size: 64, offset: 832)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2855, file: !170, line: 105, baseType: !13, size: 32, offset: 896)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2855, file: !170, line: 106, baseType: !458, size: 64, offset: 960)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2855, file: !170, line: 109, baseType: !2881, size: 33088, offset: 1024)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2882, line: 14, size: 33088, elements: !2883)
!2882 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2883 = !{!2884, !2888, !2895, !2896}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2881, file: !2882, line: 15, baseType: !2885, size: 32768)
!2885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !2886)
!2886 = !{!2887}
!2887 = !DISubrange(count: 4096)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2881, file: !2882, line: 16, baseType: !2889, size: 192, offset: 32768)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2890, line: 18, size: 192, elements: !2891)
!2890 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2891 = !{!2892, !2893, !2894}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2889, file: !2890, line: 19, baseType: !389, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2889, file: !2890, line: 20, baseType: !40, size: 64, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2889, file: !2890, line: 21, baseType: !40, size: 64, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2881, file: !2882, line: 17, baseType: !40, size: 64, offset: 32960)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2881, file: !2882, line: 18, baseType: !27, size: 32, offset: 33024)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2855, file: !170, line: 111, baseType: !2898, size: 64, offset: 34112)
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !833, line: 913, baseType: !2899)
!2899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !834, size: 64, elements: !838)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2855, file: !170, line: 114, baseType: !383, size: 8, offset: 34176)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2855, file: !170, line: 117, baseType: !2881, size: 33088, offset: 34240)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2855, file: !170, line: 118, baseType: !2903, size: 64, offset: 67328)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !170, line: 79, size: 64, elements: !2905)
!2905 = !{!2906, !2907, !2908, !2909}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2904, file: !170, line: 80, baseType: !31, size: 16)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2904, file: !170, line: 81, baseType: !92, size: 8, offset: 16)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2904, file: !170, line: 82, baseType: !92, size: 8, offset: 24)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2904, file: !170, line: 83, baseType: !27, size: 32, offset: 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2855, file: !170, line: 119, baseType: !44, size: 64, offset: 67392)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2855, file: !170, line: 120, baseType: !27, size: 32, offset: 67456)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2855, file: !170, line: 121, baseType: !27, size: 32, offset: 67488)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2855, file: !170, line: 122, baseType: !27, size: 32, offset: 67520)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2855, file: !170, line: 123, baseType: !317, size: 64, offset: 67584)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2855, file: !170, line: 125, baseType: !46, size: 64, offset: 67648)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2855, file: !170, line: 126, baseType: !458, size: 64, offset: 67712)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2847, file: !170, line: 143, baseType: !2850, size: 64, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2847, file: !170, line: 144, baseType: !2850, size: 64, offset: 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2847, file: !170, line: 145, baseType: !2850, size: 64, offset: 192)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2737, file: !170, line: 381, baseType: !389, size: 64, offset: 512)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2737, file: !170, line: 382, baseType: !2923, size: 64, offset: 576)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !240, line: 821, flags: DIFlagFwdDecl)
!2925 = !DIDerivedType(tag: DW_TAG_member, scope: !2737, file: !170, line: 387, baseType: !2926, size: 64, offset: 640)
!2926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2737, file: !170, line: 387, size: 64, elements: !2927)
!2927 = !{!2928, !2929}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2926, file: !170, line: 388, baseType: !25, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2926, file: !170, line: 389, baseType: !54, size: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2737, file: !170, line: 391, baseType: !25, size: 64, offset: 704)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2737, file: !170, line: 394, baseType: !27, size: 32, offset: 768)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2737, file: !170, line: 397, baseType: !27, size: 32, offset: 800)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2737, file: !170, line: 398, baseType: !2934, size: 64, offset: 832)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2737, file: !170, line: 399, baseType: !2936, size: 64, offset: 896)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !170, line: 399, flags: DIFlagFwdDecl)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2737, file: !170, line: 401, baseType: !2939, size: 64, offset: 960)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!27, !2736, !2942}
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !240, line: 671, size: 8512, elements: !2944)
!2944 = !{!2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !3480, !3481, !3482, !3483, !3489, !3490, !3491, !3492, !3493, !3577, !3578, !3579, !3580, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3700, !3701, !3702, !3703, !3704, !3705, !3720, !3721, !3722, !3723, !3724, !3730, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3747, !3918, !3919, !3920, !3921, !4186, !4187, !4188}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2943, file: !240, line: 678, baseType: !102, size: 128)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2943, file: !240, line: 684, baseType: !102, size: 128, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2943, file: !240, line: 685, baseType: !102, size: 128, offset: 256)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2943, file: !240, line: 689, baseType: !640, size: 192, align: 64, offset: 384)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2943, file: !240, line: 690, baseType: !317, size: 64, offset: 576)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2943, file: !240, line: 696, baseType: !102, size: 128, offset: 640)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2943, file: !240, line: 698, baseType: !554, size: 128, offset: 768)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2943, file: !240, line: 699, baseType: !102, size: 128, offset: 896)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2943, file: !240, line: 700, baseType: !27, size: 32, offset: 1024)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2943, file: !240, line: 703, baseType: !27, size: 32, offset: 1056)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2943, file: !240, line: 705, baseType: !27, size: 32, offset: 1088)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2943, file: !240, line: 707, baseType: !13, size: 32, offset: 1120)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2943, file: !240, line: 708, baseType: !2942, size: 64, offset: 1152)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2943, file: !240, line: 714, baseType: !2959, size: 64, offset: 1216)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !240, line: 302, size: 2432, elements: !2961)
!2961 = !{!2962, !2963, !2964, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3387, !3388, !3389, !3390, !3391, !3395, !3396, !3400, !3404, !3405, !3409, !3413, !3414, !3415, !3419, !3423, !3427, !3428, !3429, !3433, !3437, !3441, !3445, !3446, !3466, !3470, !3471, !3472, !3476}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2960, file: !240, line: 303, baseType: !102, size: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2960, file: !240, line: 305, baseType: !1604, size: 64, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2960, file: !240, line: 306, baseType: !2965, size: 64, offset: 192)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !193, line: 705, size: 5824, elements: !2967)
!2967 = !{!2968, !2969, !2970, !2973, !2974, !3027, !3097, !3098, !3099, !3100, !3101, !3108, !3200, !3213, !3223, !3227, !3229, !3230, !3231, !3235, !3242, !3243, !3246, !3249, !3253, !3256, !3257, !3258, !3259, !3260, !3261, !3291, !3292, !3293, !3296, !3299, !3308, !3309, !3310, !3311, !3312, !3313}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2966, file: !193, line: 706, baseType: !1617, size: 512)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2966, file: !193, line: 707, baseType: !2965, size: 64, offset: 512)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2966, file: !193, line: 709, baseType: !2971, size: 64, offset: 576)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !193, line: 37, flags: DIFlagFwdDecl)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2966, file: !193, line: 711, baseType: !22, size: 64, offset: 640)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2966, file: !193, line: 712, baseType: !2975, size: 64, offset: 704)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2977)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !193, line: 89, size: 384, elements: !2978)
!2978 = !{!2979, !2980, !2981, !2987, !2992, !2996}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2977, file: !193, line: 90, baseType: !22, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2977, file: !193, line: 91, baseType: !1700, size: 64, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2977, file: !193, line: 92, baseType: !2982, size: 64, offset: 128)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!27, !2985, !1653}
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2966)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2977, file: !193, line: 93, baseType: !2988, size: 64, offset: 192)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!389, !2985, !2991, !1266, !1267}
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2977, file: !193, line: 95, baseType: !2993, size: 64, offset: 256)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null, !2965}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2977, file: !193, line: 97, baseType: !2997, size: 64, offset: 320)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2999)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !200, line: 286, size: 1472, elements: !3000)
!3000 = !{!3001, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2999, file: !200, line: 287, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!27, !2965}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2999, file: !200, line: 288, baseType: !2993, size: 64, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2999, file: !200, line: 289, baseType: !3002, size: 64, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2999, file: !200, line: 290, baseType: !3002, size: 64, offset: 192)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2999, file: !200, line: 291, baseType: !3002, size: 64, offset: 256)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2999, file: !200, line: 292, baseType: !3002, size: 64, offset: 320)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2999, file: !200, line: 293, baseType: !3002, size: 64, offset: 384)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2999, file: !200, line: 294, baseType: !3002, size: 64, offset: 448)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2999, file: !200, line: 295, baseType: !3002, size: 64, offset: 512)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2999, file: !200, line: 296, baseType: !3002, size: 64, offset: 576)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2999, file: !200, line: 297, baseType: !3002, size: 64, offset: 640)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2999, file: !200, line: 298, baseType: !3002, size: 64, offset: 704)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2999, file: !200, line: 299, baseType: !3002, size: 64, offset: 768)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2999, file: !200, line: 300, baseType: !3002, size: 64, offset: 832)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2999, file: !200, line: 301, baseType: !3002, size: 64, offset: 896)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2999, file: !200, line: 302, baseType: !3002, size: 64, offset: 960)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2999, file: !200, line: 303, baseType: !3002, size: 64, offset: 1024)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2999, file: !200, line: 304, baseType: !3002, size: 64, offset: 1088)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2999, file: !200, line: 305, baseType: !3002, size: 64, offset: 1152)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2999, file: !200, line: 306, baseType: !3002, size: 64, offset: 1216)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2999, file: !200, line: 307, baseType: !3002, size: 64, offset: 1280)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2999, file: !200, line: 308, baseType: !3002, size: 64, offset: 1344)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2999, file: !200, line: 309, baseType: !3002, size: 64, offset: 1408)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2966, file: !193, line: 714, baseType: !3028, size: 64, offset: 768)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3030)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3031, line: 80, size: 1344, elements: !3032)
!3031 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3032 = !{!3033, !3034, !3035, !3036, !3037, !3038, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3096}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3030, file: !3031, line: 81, baseType: !22, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3030, file: !3031, line: 82, baseType: !22, size: 64, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3030, file: !3031, line: 83, baseType: !1700, size: 64, offset: 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3030, file: !3031, line: 84, baseType: !1700, size: 64, offset: 192)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3030, file: !3031, line: 85, baseType: !1700, size: 64, offset: 256)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3030, file: !3031, line: 87, baseType: !3039, size: 64, offset: 320)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!27, !2965, !3042}
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !187, line: 96, size: 1152, elements: !3044)
!3044 = !{!3045, !3046, !3047, !3048, !3049, !3050, !3051, !3055, !3059, !3060, !3061, !3062, !3063, !3071, !3072, !3073, !3074, !3075, !3076}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3043, file: !187, line: 97, baseType: !22, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3043, file: !187, line: 98, baseType: !3028, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3043, file: !187, line: 100, baseType: !1604, size: 64, offset: 128)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3043, file: !187, line: 101, baseType: !22, size: 64, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3043, file: !187, line: 103, baseType: !383, size: 8, offset: 256)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3043, file: !187, line: 104, baseType: !186, size: 32, offset: 288)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3043, file: !187, line: 106, baseType: !3052, size: 64, offset: 320)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3054)
!3054 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !187, line: 106, flags: DIFlagFwdDecl)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3043, file: !187, line: 107, baseType: !3056, size: 64, offset: 384)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3058)
!3058 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !187, line: 107, flags: DIFlagFwdDecl)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3043, file: !187, line: 109, baseType: !3002, size: 64, offset: 448)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3043, file: !187, line: 110, baseType: !2993, size: 64, offset: 512)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3043, file: !187, line: 111, baseType: !3002, size: 64, offset: 576)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3043, file: !187, line: 112, baseType: !2993, size: 64, offset: 640)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3043, file: !187, line: 113, baseType: !3064, size: 64, offset: 704)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!27, !2965, !3067}
!3067 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !200, line: 60, baseType: !3068)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !200, line: 58, size: 32, elements: !3069)
!3069 = !{!3070}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3068, file: !200, line: 59, baseType: !27, size: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3043, file: !187, line: 114, baseType: !3002, size: 64, offset: 768)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3043, file: !187, line: 115, baseType: !1700, size: 64, offset: 832)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3043, file: !187, line: 116, baseType: !1700, size: 64, offset: 896)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3043, file: !187, line: 118, baseType: !2997, size: 64, offset: 960)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3043, file: !187, line: 119, baseType: !2993, size: 64, offset: 1024)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3043, file: !187, line: 121, baseType: !3077, size: 64, offset: 1088)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !187, line: 121, flags: DIFlagFwdDecl)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3030, file: !3031, line: 88, baseType: !2982, size: 64, offset: 384)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3030, file: !3031, line: 89, baseType: !3002, size: 64, offset: 448)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3030, file: !3031, line: 90, baseType: !2993, size: 64, offset: 512)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3030, file: !3031, line: 91, baseType: !2993, size: 64, offset: 576)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3030, file: !3031, line: 92, baseType: !2993, size: 64, offset: 640)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3030, file: !3031, line: 94, baseType: !3002, size: 64, offset: 704)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3030, file: !3031, line: 95, baseType: !3002, size: 64, offset: 768)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3030, file: !3031, line: 97, baseType: !3064, size: 64, offset: 832)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3030, file: !3031, line: 98, baseType: !3002, size: 64, offset: 896)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3030, file: !3031, line: 100, baseType: !3002, size: 64, offset: 960)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3030, file: !3031, line: 102, baseType: !3002, size: 64, offset: 1024)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3030, file: !3031, line: 103, baseType: !2993, size: 64, offset: 1088)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3030, file: !3031, line: 105, baseType: !2997, size: 64, offset: 1152)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3030, file: !3031, line: 107, baseType: !3093, size: 64, offset: 1216)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3095)
!3095 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3031, line: 107, flags: DIFlagFwdDecl)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3030, file: !3031, line: 109, baseType: !383, size: 8, offset: 1280)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2966, file: !193, line: 715, baseType: !3042, size: 64, offset: 832)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2966, file: !193, line: 717, baseType: !25, size: 64, offset: 896)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2966, file: !193, line: 719, baseType: !25, size: 64, offset: 960)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2966, file: !193, line: 721, baseType: !496, size: 256, offset: 1024)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2966, file: !193, line: 725, baseType: !3102, size: 448, offset: 1280)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !193, line: 517, size: 448, elements: !3103)
!3103 = !{!3104, !3105, !3106, !3107}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3102, file: !193, line: 518, baseType: !102, size: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3102, file: !193, line: 519, baseType: !102, size: 128, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3102, file: !193, line: 520, baseType: !102, size: 128, offset: 256)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3102, file: !193, line: 521, baseType: !192, size: 32, offset: 384)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2966, file: !193, line: 726, baseType: !3109, size: 2496, offset: 1728)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !200, line: 663, size: 2496, elements: !3110)
!3110 = !{!3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3193, !3197}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3109, file: !200, line: 664, baseType: !3067, size: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3109, file: !200, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3109, file: !200, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3109, file: !200, line: 667, baseType: !383, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3109, file: !200, line: 668, baseType: !383, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3109, file: !200, line: 669, baseType: !383, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3109, file: !200, line: 670, baseType: !383, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3109, file: !200, line: 671, baseType: !383, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3109, file: !200, line: 672, baseType: !383, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3109, file: !200, line: 673, baseType: !383, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3109, file: !200, line: 674, baseType: !383, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3109, file: !200, line: 675, baseType: !313, size: 32, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3109, file: !200, line: 676, baseType: !64, size: 32, offset: 96)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3109, file: !200, line: 678, baseType: !102, size: 128, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3109, file: !200, line: 679, baseType: !1241, size: 256, offset: 256)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3109, file: !200, line: 680, baseType: !3127, size: 64, offset: 512)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3129, line: 43, size: 1536, elements: !3130)
!3129 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3130 = !{!3131, !3132, !3133, !3134, !3135, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3128, file: !3129, line: 44, baseType: !22, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3128, file: !3129, line: 45, baseType: !27, size: 32, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3128, file: !3129, line: 46, baseType: !102, size: 128, offset: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3128, file: !3129, line: 47, baseType: !64, size: 32, offset: 256)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3128, file: !3129, line: 48, baseType: !3136, size: 64, offset: 320)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !200, line: 629, flags: DIFlagFwdDecl)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3128, file: !3129, line: 49, baseType: !2656, size: 320, offset: 384)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3128, file: !3129, line: 50, baseType: !44, size: 64, offset: 704)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3128, file: !3129, line: 51, baseType: !718, size: 64, offset: 768)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3128, file: !3129, line: 52, baseType: !718, size: 64, offset: 832)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3128, file: !3129, line: 53, baseType: !718, size: 64, offset: 896)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3128, file: !3129, line: 54, baseType: !718, size: 64, offset: 960)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3128, file: !3129, line: 55, baseType: !718, size: 64, offset: 1024)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3128, file: !3129, line: 56, baseType: !44, size: 64, offset: 1088)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3128, file: !3129, line: 57, baseType: !44, size: 64, offset: 1152)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3128, file: !3129, line: 58, baseType: !44, size: 64, offset: 1216)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3128, file: !3129, line: 59, baseType: !44, size: 64, offset: 1280)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3128, file: !3129, line: 60, baseType: !44, size: 64, offset: 1344)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3128, file: !3129, line: 61, baseType: !2965, size: 64, offset: 1408)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3128, file: !3129, line: 62, baseType: !383, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3128, file: !3129, line: 63, baseType: !383, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3109, file: !200, line: 681, baseType: !383, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3109, file: !200, line: 682, baseType: !383, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3109, file: !200, line: 683, baseType: !383, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3109, file: !200, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3109, file: !200, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3109, file: !200, line: 690, baseType: !710, size: 512, offset: 640)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3109, file: !200, line: 691, baseType: !317, size: 64, offset: 1152)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3109, file: !200, line: 692, baseType: !1202, size: 256, offset: 1216)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3109, file: !200, line: 693, baseType: !59, size: 192, offset: 1472)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3109, file: !200, line: 694, baseType: !3136, size: 64, offset: 1664)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3109, file: !200, line: 695, baseType: !54, size: 32, offset: 1728)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3109, file: !200, line: 696, baseType: !54, size: 32, offset: 1760)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3109, file: !200, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3109, file: !200, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3109, file: !200, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3109, file: !200, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3109, file: !200, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3109, file: !200, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3109, file: !200, line: 703, baseType: !383, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3109, file: !200, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3109, file: !200, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3109, file: !200, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3109, file: !200, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3109, file: !200, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3109, file: !200, line: 709, baseType: !13, size: 32, offset: 1824)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3109, file: !200, line: 710, baseType: !199, size: 32, offset: 1856)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3109, file: !200, line: 711, baseType: !207, size: 32, offset: 1888)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3109, file: !200, line: 712, baseType: !207, size: 32, offset: 1920)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3109, file: !200, line: 713, baseType: !27, size: 32, offset: 1952)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3109, file: !200, line: 714, baseType: !27, size: 32, offset: 1984)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3109, file: !200, line: 715, baseType: !317, size: 64, offset: 2048)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3109, file: !200, line: 716, baseType: !317, size: 64, offset: 2112)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3109, file: !200, line: 717, baseType: !317, size: 64, offset: 2176)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3109, file: !200, line: 718, baseType: !317, size: 64, offset: 2240)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3109, file: !200, line: 720, baseType: !3188, size: 64, offset: 2304)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !200, line: 632, size: 64, elements: !3190)
!3190 = !{!3191, !3192}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3189, file: !200, line: 633, baseType: !64, size: 32)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3189, file: !200, line: 634, baseType: !13, size: 32, offset: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3109, file: !200, line: 721, baseType: !3194, size: 64, offset: 2368)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{null, !2965, !987}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3109, file: !200, line: 722, baseType: !3198, size: 64, offset: 2432)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !200, line: 722, flags: DIFlagFwdDecl)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2966, file: !193, line: 727, baseType: !3201, size: 64, offset: 4224)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !200, line: 742, size: 1792, elements: !3203)
!3203 = !{!3204, !3205, !3206, !3210, !3211, !3212}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3202, file: !200, line: 743, baseType: !2999, size: 1472)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3202, file: !200, line: 744, baseType: !3002, size: 64, offset: 1472)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3202, file: !200, line: 745, baseType: !3207, size: 64, offset: 1536)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{null, !2965, !383}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3202, file: !200, line: 746, baseType: !3002, size: 64, offset: 1600)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3202, file: !200, line: 747, baseType: !2993, size: 64, offset: 1664)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3202, file: !200, line: 748, baseType: !2993, size: 64, offset: 1728)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2966, file: !193, line: 736, baseType: !3214, size: 128, offset: 4288)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !193, line: 529, size: 128, elements: !3215)
!3215 = !{!3216, !3220}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3214, file: !193, line: 531, baseType: !3217, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3219, line: 13, flags: DIFlagFwdDecl)
!3219 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3214, file: !193, line: 532, baseType: !3221, size: 64, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !193, line: 49, flags: DIFlagFwdDecl)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2966, file: !193, line: 738, baseType: !3224, size: 64, offset: 4416)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3226)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !193, line: 738, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2966, file: !193, line: 740, baseType: !3228, size: 64, offset: 4480)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2966, file: !193, line: 741, baseType: !317, size: 64, offset: 4544)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2966, file: !193, line: 746, baseType: !317, size: 64, offset: 4608)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2966, file: !193, line: 747, baseType: !3232, size: 64, offset: 4672)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3234)
!3234 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !193, line: 747, flags: DIFlagFwdDecl)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2966, file: !193, line: 749, baseType: !3236, size: 64, offset: 4736)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !193, line: 428, size: 128, elements: !3238)
!3238 = !{!3239, !3240, !3241}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3237, file: !193, line: 433, baseType: !13, size: 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3237, file: !193, line: 434, baseType: !13, size: 32, offset: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3237, file: !193, line: 435, baseType: !44, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2966, file: !193, line: 751, baseType: !102, size: 128, offset: 4800)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2966, file: !193, line: 762, baseType: !3244, size: 64, offset: 4928)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !193, line: 762, flags: DIFlagFwdDecl)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2966, file: !193, line: 770, baseType: !3247, offset: 4992)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3248, line: 5, elements: !907)
!3248 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2966, file: !193, line: 772, baseType: !3250, size: 64, offset: 4992)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3252, line: 18, flags: DIFlagFwdDecl)
!3252 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2966, file: !193, line: 773, baseType: !3254, size: 64, offset: 5056)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3031, line: 22, flags: DIFlagFwdDecl)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2966, file: !193, line: 776, baseType: !27, size: 32, offset: 5120)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2966, file: !193, line: 778, baseType: !415, size: 32, offset: 5152)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2966, file: !193, line: 779, baseType: !313, size: 32, offset: 5184)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2966, file: !193, line: 781, baseType: !64, size: 32, offset: 5216)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2966, file: !193, line: 782, baseType: !102, size: 128, offset: 5248)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2966, file: !193, line: 784, baseType: !3262, size: 64, offset: 5376)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3264)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3265, line: 52, size: 768, elements: !3266)
!3265 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3266 = !{!3267, !3268, !3269, !3270, !3271, !3275, !3279, !3280, !3281, !3282, !3286, !3290}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3264, file: !3265, line: 53, baseType: !22, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3264, file: !3265, line: 55, baseType: !1700, size: 64, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3264, file: !3265, line: 56, baseType: !1700, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3264, file: !3265, line: 58, baseType: !2982, size: 64, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3264, file: !3265, line: 59, baseType: !3272, size: 64, offset: 256)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!389, !2985, !2991}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3264, file: !3265, line: 61, baseType: !3276, size: 64, offset: 320)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{null, !3262}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3264, file: !3265, line: 62, baseType: !2993, size: 64, offset: 384)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3264, file: !3265, line: 64, baseType: !3002, size: 64, offset: 448)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3264, file: !3265, line: 66, baseType: !2231, size: 64, offset: 512)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3264, file: !3265, line: 67, baseType: !3283, size: 64, offset: 576)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!1020, !2985}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3264, file: !3265, line: 69, baseType: !3287, size: 64, offset: 640)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{null, !2985, !1266, !1267}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3264, file: !3265, line: 71, baseType: !2997, size: 64, offset: 704)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2966, file: !193, line: 785, baseType: !1700, size: 64, offset: 5440)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2966, file: !193, line: 787, baseType: !2993, size: 64, offset: 5504)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2966, file: !193, line: 788, baseType: !3294, size: 64, offset: 5568)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !193, line: 46, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2966, file: !193, line: 789, baseType: !3297, size: 64, offset: 5632)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !193, line: 48, flags: DIFlagFwdDecl)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2966, file: !193, line: 791, baseType: !3300, size: 64, offset: 5696)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !193, line: 597, size: 128, elements: !3302)
!3302 = !{!3303, !3304, !3305, !3306, !3307}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3301, file: !193, line: 598, baseType: !214, size: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3301, file: !193, line: 599, baseType: !223, size: 32, offset: 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3301, file: !193, line: 600, baseType: !228, size: 32, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3301, file: !193, line: 601, baseType: !383, size: 8, offset: 96)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3301, file: !193, line: 602, baseType: !383, size: 8, offset: 104)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2966, file: !193, line: 793, baseType: !233, size: 32, offset: 5760)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2966, file: !193, line: 795, baseType: !383, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2966, file: !193, line: 796, baseType: !383, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2966, file: !193, line: 797, baseType: !383, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2966, file: !193, line: 798, baseType: !383, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2966, file: !193, line: 799, baseType: !383, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2960, file: !240, line: 307, baseType: !2965, size: 64, offset: 256)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2960, file: !240, line: 308, baseType: !1700, size: 64, offset: 320)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2960, file: !240, line: 309, baseType: !1700, size: 64, offset: 384)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2960, file: !240, line: 310, baseType: !22, size: 64, offset: 448)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2960, file: !240, line: 311, baseType: !27, size: 32, offset: 512)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2960, file: !240, line: 316, baseType: !27, size: 32, offset: 544)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2960, file: !240, line: 318, baseType: !1423, size: 64, offset: 576)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2960, file: !240, line: 319, baseType: !3322, size: 64, offset: 640)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !240, line: 977, size: 1856, elements: !3324)
!3324 = !{!3325, !3377, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3323, file: !240, line: 978, baseType: !3326, size: 896)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !240, line: 873, size: 896, elements: !3327)
!3327 = !{!3328, !3329, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3326, file: !240, line: 874, baseType: !2959, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3326, file: !240, line: 875, baseType: !3330, size: 64, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !240, line: 912, size: 1792, elements: !3332)
!3332 = !{!3333, !3334, !3335, !3336, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3331, file: !240, line: 917, baseType: !501, size: 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3331, file: !240, line: 923, baseType: !496, size: 256, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3331, file: !240, line: 925, baseType: !102, size: 128, offset: 320)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3331, file: !240, line: 926, baseType: !3337, size: 128, offset: 448)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !240, line: 901, size: 128, elements: !3338)
!3338 = !{!3339, !3340}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3337, file: !240, line: 902, baseType: !772, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3337, file: !240, line: 903, baseType: !317, size: 64, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3331, file: !240, line: 927, baseType: !3337, size: 128, offset: 576)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3331, file: !240, line: 928, baseType: !102, size: 128, offset: 704)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3331, file: !240, line: 930, baseType: !27, size: 32, offset: 832)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3331, file: !240, line: 931, baseType: !27, size: 32, offset: 864)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3331, file: !240, line: 932, baseType: !27, size: 32, offset: 896)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3331, file: !240, line: 934, baseType: !27, size: 32, offset: 928)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3331, file: !240, line: 935, baseType: !27, size: 32, offset: 960)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3331, file: !240, line: 936, baseType: !27, size: 32, offset: 992)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3331, file: !240, line: 937, baseType: !27, size: 32, offset: 1024)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3331, file: !240, line: 939, baseType: !541, size: 32, offset: 1056)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3331, file: !240, line: 940, baseType: !591, size: 64, offset: 1088)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3331, file: !240, line: 945, baseType: !317, size: 64, offset: 1152)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3331, file: !240, line: 946, baseType: !317, size: 64, offset: 1216)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3331, file: !240, line: 947, baseType: !317, size: 64, offset: 1280)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3331, file: !240, line: 953, baseType: !3330, size: 64, offset: 1344)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3331, file: !240, line: 954, baseType: !317, size: 64, offset: 1408)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3331, file: !240, line: 955, baseType: !317, size: 64, offset: 1472)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3331, file: !240, line: 956, baseType: !27, size: 32, offset: 1536)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3331, file: !240, line: 958, baseType: !27, size: 32, offset: 1568)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3331, file: !240, line: 960, baseType: !475, size: 128, align: 64, offset: 1600)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3331, file: !240, line: 968, baseType: !3362, size: 64, offset: 1728)
!3362 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3363, line: 12, baseType: !3364)
!3363 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3363, line: 10, size: 64, elements: !3365)
!3365 = !{!3366}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3364, file: !3363, line: 11, baseType: !488, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3326, file: !240, line: 877, baseType: !102, size: 128, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3326, file: !240, line: 879, baseType: !102, size: 128, offset: 256)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3326, file: !240, line: 880, baseType: !102, size: 128, offset: 384)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3326, file: !240, line: 883, baseType: !13, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3326, file: !240, line: 885, baseType: !13, size: 32, offset: 544)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3326, file: !240, line: 886, baseType: !13, size: 32, offset: 576)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3326, file: !240, line: 888, baseType: !54, size: 32, offset: 608)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3326, file: !240, line: 889, baseType: !475, size: 128, align: 64, offset: 640)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3326, file: !240, line: 891, baseType: !25, size: 64, offset: 768)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3326, file: !240, line: 898, baseType: !27, size: 32, offset: 832)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3323, file: !240, line: 979, baseType: !3378, size: 64, offset: 896)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3323, file: !240, line: 981, baseType: !102, size: 128, offset: 960)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3323, file: !240, line: 982, baseType: !27, size: 32, offset: 1088)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3323, file: !240, line: 984, baseType: !27, size: 32, offset: 1120)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3323, file: !240, line: 985, baseType: !27, size: 32, offset: 1152)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3323, file: !240, line: 987, baseType: !501, size: 32, offset: 1184)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3323, file: !240, line: 988, baseType: !710, size: 512, offset: 1216)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3323, file: !240, line: 989, baseType: !718, size: 64, offset: 1728)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3323, file: !240, line: 990, baseType: !13, size: 32, offset: 1792)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2960, file: !240, line: 320, baseType: !54, size: 32, offset: 704)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2960, file: !240, line: 321, baseType: !27, size: 32, offset: 736)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2960, file: !240, line: 322, baseType: !27, size: 32, offset: 768)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2960, file: !240, line: 325, baseType: !13, size: 32, offset: 800)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2960, file: !240, line: 331, baseType: !3392, size: 64, offset: 832)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{null, !2959}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2960, file: !240, line: 332, baseType: !3392, size: 64, offset: 896)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2960, file: !240, line: 350, baseType: !3397, size: 64, offset: 960)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!27, !2942}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2960, file: !240, line: 356, baseType: !3401, size: 64, offset: 1024)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{null, !2942, !886}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2960, file: !240, line: 357, baseType: !3401, size: 64, offset: 1088)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2960, file: !240, line: 385, baseType: !3406, size: 64, offset: 1152)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!27, !2942, !27}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2960, file: !240, line: 386, baseType: !3410, size: 64, offset: 1216)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{null, !2942, !27}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2960, file: !240, line: 406, baseType: !3410, size: 64, offset: 1280)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2960, file: !240, line: 407, baseType: !3410, size: 64, offset: 1344)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2960, file: !240, line: 415, baseType: !3416, size: 64, offset: 1408)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{null, !2942}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2960, file: !240, line: 427, baseType: !3420, size: 64, offset: 1472)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{null, !2959, !13}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2960, file: !240, line: 436, baseType: !3424, size: 64, offset: 1536)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!27, !2959}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2960, file: !240, line: 443, baseType: !3392, size: 64, offset: 1600)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2960, file: !240, line: 450, baseType: !3397, size: 64, offset: 1664)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2960, file: !240, line: 455, baseType: !3430, size: 64, offset: 1728)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{null, !3378, !383}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2960, file: !240, line: 461, baseType: !3434, size: 64, offset: 1792)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3436, line: 325, flags: DIFlagFwdDecl)
!3436 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2960, file: !240, line: 469, baseType: !3438, size: 64, offset: 1856)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{null, !3378, !3378}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2960, file: !240, line: 476, baseType: !3442, size: 64, offset: 1920)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!25, !2942, !2120, !27, !383}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2960, file: !240, line: 483, baseType: !368, size: 64, offset: 1984)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2960, file: !240, line: 494, baseType: !3447, size: 64, offset: 2048)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!458, !2942, !3450, !44}
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !240, line: 1014, size: 448, elements: !3452)
!3452 = !{!3453, !3454, !3457, !3458, !3459, !3460, !3465}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3451, file: !240, line: 1015, baseType: !2942, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3451, file: !240, line: 1016, baseType: !3455, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !240, line: 641, flags: DIFlagFwdDecl)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3451, file: !240, line: 1017, baseType: !44, size: 64, offset: 128)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3451, file: !240, line: 1018, baseType: !44, size: 64, offset: 192)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3451, file: !240, line: 1019, baseType: !317, size: 64, offset: 256)
!3460 = !DIDerivedType(tag: DW_TAG_member, scope: !3451, file: !240, line: 1020, baseType: !3461, size: 64, offset: 320)
!3461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3451, file: !240, line: 1020, size: 64, elements: !3462)
!3462 = !{!3463, !3464}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3461, file: !240, line: 1021, baseType: !25, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3461, file: !240, line: 1022, baseType: !44, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3451, file: !240, line: 1024, baseType: !27, size: 32, offset: 384)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2960, file: !240, line: 506, baseType: !3467, size: 64, offset: 2112)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!27, !105}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2960, file: !240, line: 520, baseType: !3416, size: 64, offset: 2176)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2960, file: !240, line: 530, baseType: !3397, size: 64, offset: 2240)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2960, file: !240, line: 537, baseType: !3473, size: 64, offset: 2304)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!383, !2959, !27}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2960, file: !240, line: 542, baseType: !3477, size: 64, offset: 2368)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!27, !2942, !317}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2943, file: !240, line: 715, baseType: !25, size: 64, offset: 1280)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2943, file: !240, line: 717, baseType: !239, size: 32, offset: 1344)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2943, file: !240, line: 718, baseType: !13, size: 32, offset: 1376)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2943, file: !240, line: 719, baseType: !3484, size: 64, offset: 1408)
!3484 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3485, line: 26, baseType: !3486)
!3485 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3485, line: 24, size: 64, elements: !3487)
!3487 = !{!3488}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3486, file: !3485, line: 25, baseType: !3362, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2943, file: !240, line: 720, baseType: !490, size: 64, offset: 1472)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2943, file: !240, line: 728, baseType: !317, size: 64, offset: 1536)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2943, file: !240, line: 729, baseType: !317, size: 64, offset: 1600)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2943, file: !240, line: 730, baseType: !317, size: 64, offset: 1664)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2943, file: !240, line: 732, baseType: !3494, size: 1088, offset: 1728)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3495, line: 385, size: 1088, elements: !3496)
!3495 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3496 = !{!3497, !3498, !3499, !3500, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3550, !3551, !3558, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3494, file: !3495, line: 390, baseType: !314, size: 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3494, file: !3495, line: 395, baseType: !314, size: 32, offset: 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3494, file: !3495, line: 400, baseType: !318, size: 64, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, scope: !3494, file: !3495, line: 402, baseType: !3501, size: 64, offset: 128)
!3501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3494, file: !3495, line: 402, size: 64, elements: !3502)
!3502 = !{!3503, !3504}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3501, file: !3495, line: 403, baseType: !318, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3501, file: !3495, line: 404, baseType: !318, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3494, file: !3495, line: 407, baseType: !318, size: 64, offset: 192)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3494, file: !3495, line: 408, baseType: !318, size: 64, offset: 256)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3494, file: !3495, line: 410, baseType: !318, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3494, file: !3495, line: 411, baseType: !318, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3494, file: !3495, line: 412, baseType: !318, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3494, file: !3495, line: 413, baseType: !318, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3494, file: !3495, line: 414, baseType: !318, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3494, file: !3495, line: 415, baseType: !318, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3494, file: !3495, line: 416, baseType: !318, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3494, file: !3495, line: 417, baseType: !318, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3494, file: !3495, line: 418, baseType: !318, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3494, file: !3495, line: 419, baseType: !318, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3494, file: !3495, line: 420, baseType: !318, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3494, file: !3495, line: 421, baseType: !318, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3494, file: !3495, line: 422, baseType: !318, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3494, file: !3495, line: 423, baseType: !318, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3494, file: !3495, line: 424, baseType: !318, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3494, file: !3495, line: 435, baseType: !318, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3494, file: !3495, line: 436, baseType: !318, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3494, file: !3495, line: 437, baseType: !318, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3494, file: !3495, line: 439, baseType: !318, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3494, file: !3495, line: 440, baseType: !318, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3494, file: !3495, line: 442, baseType: !318, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3494, file: !3495, line: 443, baseType: !318, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3494, file: !3495, line: 444, baseType: !318, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3494, file: !3495, line: 445, baseType: !318, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3494, file: !3495, line: 446, baseType: !318, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3494, file: !3495, line: 447, baseType: !318, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3494, file: !3495, line: 448, baseType: !318, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3494, file: !3495, line: 449, baseType: !318, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3494, file: !3495, line: 450, baseType: !318, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3494, file: !3495, line: 451, baseType: !318, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3494, file: !3495, line: 452, baseType: !318, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3494, file: !3495, line: 453, baseType: !318, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3494, file: !3495, line: 454, baseType: !318, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3494, file: !3495, line: 455, baseType: !318, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3494, file: !3495, line: 456, baseType: !318, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3494, file: !3495, line: 457, baseType: !318, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3494, file: !3495, line: 458, baseType: !318, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3494, file: !3495, line: 459, baseType: !318, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3545 = !DIDerivedType(tag: DW_TAG_member, scope: !3494, file: !3495, line: 461, baseType: !3546, size: 32, offset: 384)
!3546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3494, file: !3495, line: 461, size: 32, elements: !3547)
!3547 = !{!3548, !3549}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3546, file: !3495, line: 462, baseType: !314, size: 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3546, file: !3495, line: 463, baseType: !314, size: 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3494, file: !3495, line: 466, baseType: !314, size: 32, offset: 416)
!3551 = !DIDerivedType(tag: DW_TAG_member, scope: !3494, file: !3495, line: 467, baseType: !3552, size: 64, offset: 448)
!3552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3494, file: !3495, line: 467, size: 64, elements: !3553)
!3553 = !{!3554, !3555, !3556, !3557}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3552, file: !3495, line: 468, baseType: !318, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3552, file: !3495, line: 469, baseType: !318, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3552, file: !3495, line: 470, baseType: !318, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3552, file: !3495, line: 471, baseType: !318, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, scope: !3494, file: !3495, line: 473, baseType: !3559, size: 64, offset: 512)
!3559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3494, file: !3495, line: 473, size: 64, elements: !3560)
!3560 = !{!3561, !3562, !3563, !3564}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3559, file: !3495, line: 474, baseType: !318, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3559, file: !3495, line: 475, baseType: !318, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3559, file: !3495, line: 476, baseType: !318, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3559, file: !3495, line: 477, baseType: !318, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3494, file: !3495, line: 479, baseType: !318, size: 64, offset: 576)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3494, file: !3495, line: 485, baseType: !318, size: 64, offset: 640)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3494, file: !3495, line: 490, baseType: !314, size: 32, offset: 704)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3494, file: !3495, line: 492, baseType: !988, size: 32, offset: 736)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3494, file: !3495, line: 501, baseType: !318, size: 64, offset: 768)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3494, file: !3495, line: 506, baseType: !314, size: 32, offset: 832)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3494, file: !3495, line: 507, baseType: !99, size: 16, offset: 864)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3494, file: !3495, line: 508, baseType: !99, size: 16, offset: 880)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3494, file: !3495, line: 509, baseType: !314, size: 32, offset: 896)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3494, file: !3495, line: 510, baseType: !314, size: 32, offset: 928)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3494, file: !3495, line: 518, baseType: !318, size: 64, offset: 960)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3494, file: !3495, line: 520, baseType: !318, size: 64, offset: 1024)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2943, file: !240, line: 733, baseType: !98, size: 16, offset: 2816)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2943, file: !240, line: 734, baseType: !98, size: 16, offset: 2832)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2943, file: !240, line: 735, baseType: !98, size: 16, offset: 2848)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2943, file: !240, line: 736, baseType: !3581, size: 1536, offset: 2880)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !240, line: 155, size: 1536, elements: !3582)
!3582 = !{!3583, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3667, !3668, !3669, !3670}
!3583 = !DIDerivedType(tag: DW_TAG_member, scope: !3581, file: !240, line: 157, baseType: !3584, size: 768)
!3584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3581, file: !240, line: 157, size: 768, elements: !3585)
!3585 = !{!3586, !3605, !3609, !3613, !3618, !3640}
!3586 = !DIDerivedType(tag: DW_TAG_member, scope: !3584, file: !240, line: 158, baseType: !3587, size: 768)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3584, file: !240, line: 158, size: 768, elements: !3588)
!3588 = !{!3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3604}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3587, file: !240, line: 159, baseType: !317, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3587, file: !240, line: 160, baseType: !317, size: 64, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3587, file: !240, line: 161, baseType: !44, size: 64, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3587, file: !240, line: 162, baseType: !44, size: 64, offset: 192)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3587, file: !240, line: 163, baseType: !27, size: 32, offset: 256)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3587, file: !240, line: 164, baseType: !27, size: 32, offset: 288)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3587, file: !240, line: 165, baseType: !27, size: 32, offset: 320)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3587, file: !240, line: 166, baseType: !27, size: 32, offset: 352)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3587, file: !240, line: 168, baseType: !3598, size: 192, offset: 384)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !240, line: 134, size: 192, elements: !3599)
!3599 = !{!3600, !3601, !3602, !3603}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3598, file: !240, line: 135, baseType: !317, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3598, file: !240, line: 136, baseType: !13, size: 32, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3598, file: !240, line: 137, baseType: !27, size: 32, offset: 96)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3598, file: !240, line: 138, baseType: !27, size: 32, offset: 128)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3587, file: !240, line: 169, baseType: !3598, size: 192, offset: 576)
!3605 = !DIDerivedType(tag: DW_TAG_member, scope: !3584, file: !240, line: 171, baseType: !3606, size: 512)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3584, file: !240, line: 171, size: 512, elements: !3607)
!3607 = !{!3608}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3606, file: !240, line: 172, baseType: !710, size: 512)
!3609 = !DIDerivedType(tag: DW_TAG_member, scope: !3584, file: !240, line: 174, baseType: !3610, size: 128)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3584, file: !240, line: 174, size: 128, elements: !3611)
!3611 = !{!3612}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3610, file: !240, line: 176, baseType: !102, size: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, scope: !3584, file: !240, line: 178, baseType: !3614, size: 128)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3584, file: !240, line: 178, size: 128, elements: !3615)
!3615 = !{!3616, !3617}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3614, file: !240, line: 179, baseType: !317, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3614, file: !240, line: 180, baseType: !317, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, scope: !3584, file: !240, line: 183, baseType: !3619, size: 320)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3584, file: !240, line: 183, size: 320, elements: !3620)
!3620 = !{!3621, !3629}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3619, file: !240, line: 189, baseType: !3622, size: 192)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3623, line: 14, size: 192, elements: !3624)
!3623 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3624 = !{!3625, !3626, !3627, !3628}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3622, file: !3623, line: 15, baseType: !44, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3622, file: !3623, line: 16, baseType: !44, size: 64, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3622, file: !3623, line: 17, baseType: !88, size: 8, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3622, file: !3623, line: 18, baseType: !88, size: 8, offset: 136)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3619, file: !240, line: 190, baseType: !3630, size: 128, offset: 192)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3631, line: 21, size: 128, elements: !3632)
!3631 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3632 = !{!3633, !3638}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3630, file: !3631, line: 22, baseType: !3634, size: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3631, line: 17, size: 64, elements: !3635)
!3635 = !{!3636}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3634, file: !3631, line: 18, baseType: !3637, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3630, file: !3631, line: 23, baseType: !3639, size: 64, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, scope: !3584, file: !240, line: 193, baseType: !3641, size: 192)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3584, file: !240, line: 193, size: 192, elements: !3642)
!3642 = !{!3643, !3644, !3645, !3646, !3647}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3641, file: !240, line: 194, baseType: !88, size: 8)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3641, file: !240, line: 195, baseType: !88, size: 8, offset: 8)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3641, file: !240, line: 196, baseType: !98, size: 16, offset: 16)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3641, file: !240, line: 197, baseType: !317, size: 64, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3641, file: !240, line: 198, baseType: !317, size: 64, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3581, file: !240, line: 205, baseType: !591, size: 64, offset: 768)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3581, file: !240, line: 211, baseType: !25, size: 64, offset: 832)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3581, file: !240, line: 214, baseType: !44, size: 64, offset: 896)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3581, file: !240, line: 223, baseType: !27, size: 32, offset: 960)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3581, file: !240, line: 229, baseType: !3484, size: 64, offset: 1024)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3581, file: !240, line: 234, baseType: !317, size: 64, offset: 1088)
!3654 = !DIDerivedType(tag: DW_TAG_member, scope: !3581, file: !240, line: 236, baseType: !3655, size: 128, offset: 1152)
!3655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3581, file: !240, line: 236, size: 128, elements: !3656)
!3656 = !{!3657, !3662}
!3657 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !240, line: 237, baseType: !3658, size: 128)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3655, file: !240, line: 237, size: 128, elements: !3659)
!3659 = !{!3660, !3661}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3658, file: !240, line: 241, baseType: !317, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3658, file: !240, line: 249, baseType: !3484, size: 64, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !240, line: 251, baseType: !3663, size: 128)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3655, file: !240, line: 251, size: 128, elements: !3664)
!3664 = !{!3665, !3666}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3663, file: !240, line: 252, baseType: !317, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3663, file: !240, line: 253, baseType: !317, size: 64, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3581, file: !240, line: 261, baseType: !317, size: 64, offset: 1280)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3581, file: !240, line: 262, baseType: !317, size: 64, offset: 1344)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3581, file: !240, line: 268, baseType: !317, size: 64, offset: 1408)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3581, file: !240, line: 269, baseType: !317, size: 64, offset: 1472)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2943, file: !240, line: 738, baseType: !3330, size: 64, offset: 4416)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2943, file: !240, line: 744, baseType: !3378, size: 64, offset: 4480)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2943, file: !240, line: 745, baseType: !488, size: 64, offset: 4544)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2943, file: !240, line: 751, baseType: !490, size: 64, offset: 4608)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2943, file: !240, line: 752, baseType: !490, size: 64, offset: 4672)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2943, file: !240, line: 757, baseType: !496, size: 256, offset: 4736)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2943, file: !240, line: 758, baseType: !102, size: 128, offset: 4992)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2943, file: !240, line: 759, baseType: !2942, size: 64, offset: 5120)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2943, file: !240, line: 761, baseType: !27, size: 32, offset: 5184)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2943, file: !240, line: 762, baseType: !27, size: 32, offset: 5216)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2943, file: !240, line: 764, baseType: !102, size: 128, offset: 5248)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2943, file: !240, line: 765, baseType: !591, size: 64, offset: 5376)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2943, file: !240, line: 768, baseType: !496, size: 256, offset: 5440)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2943, file: !240, line: 769, baseType: !54, size: 32, offset: 5696)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2943, file: !240, line: 771, baseType: !3455, size: 64, offset: 5760)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2943, file: !240, line: 772, baseType: !102, size: 128, offset: 5824)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2943, file: !240, line: 773, baseType: !44, size: 64, offset: 5952)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2943, file: !240, line: 774, baseType: !27, size: 32, offset: 6016)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2943, file: !240, line: 777, baseType: !59, size: 192, offset: 6080)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2943, file: !240, line: 778, baseType: !3691, size: 64, offset: 6272)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !257, line: 1083, size: 384, elements: !3693)
!3693 = !{!3694, !3695, !3696, !3697, !3698, !3699}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3692, file: !257, line: 1084, baseType: !514, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3692, file: !257, line: 1085, baseType: !27, size: 32, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3692, file: !257, line: 1086, baseType: !27, size: 32, offset: 96)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3692, file: !257, line: 1087, baseType: !3691, size: 64, offset: 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3692, file: !257, line: 1088, baseType: !462, size: 64, offset: 192)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3692, file: !257, line: 1089, baseType: !475, size: 128, align: 64, offset: 256)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2943, file: !240, line: 781, baseType: !13, size: 32, offset: 6336)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2943, file: !240, line: 782, baseType: !13, size: 32, offset: 6368)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2943, file: !240, line: 783, baseType: !13, size: 32, offset: 6400)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2943, file: !240, line: 784, baseType: !13, size: 32, offset: 6432)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2943, file: !240, line: 785, baseType: !44, size: 64, offset: 6464)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2943, file: !240, line: 786, baseType: !3706, size: 256, offset: 6528)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3707, line: 17, size: 256, elements: !3708)
!3707 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3708 = !{!3709, !3710, !3715}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3706, file: !3707, line: 18, baseType: !610, size: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3706, file: !3707, line: 19, baseType: !3711, size: 64, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{null, !3714}
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3706, file: !3707, line: 20, baseType: !3716, size: 64, offset: 192)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3717, line: 16, size: 64, elements: !3718)
!3717 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3718 = !{!3719}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3716, file: !3717, line: 17, baseType: !591, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2943, file: !240, line: 787, baseType: !475, size: 128, align: 64, offset: 6784)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2943, file: !240, line: 788, baseType: !13, size: 32, offset: 6912)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2943, file: !240, line: 789, baseType: !3716, size: 64, offset: 6976)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2943, file: !240, line: 791, baseType: !54, size: 32, offset: 7040)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2943, file: !240, line: 794, baseType: !3725, size: 192, offset: 7104)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !240, line: 579, size: 192, elements: !3726)
!3726 = !{!3727, !3728, !3729}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3725, file: !240, line: 580, baseType: !102, size: 128)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3725, file: !240, line: 581, baseType: !501, size: 32, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3725, file: !240, line: 582, baseType: !13, size: 32, offset: 160)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2943, file: !240, line: 796, baseType: !3731, size: 64, offset: 7296)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !240, line: 585, size: 128, elements: !3733)
!3733 = !{!3734, !3735}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3732, file: !240, line: 586, baseType: !44, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3732, file: !240, line: 587, baseType: !44, size: 64, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2943, file: !240, line: 797, baseType: !44, size: 64, offset: 7360)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2943, file: !240, line: 800, baseType: !2942, size: 64, offset: 7424)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2943, file: !240, line: 802, baseType: !3416, size: 64, offset: 7488)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2943, file: !240, line: 803, baseType: !475, size: 128, align: 64, offset: 7552)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2943, file: !240, line: 805, baseType: !570, size: 64, offset: 7680)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2943, file: !240, line: 806, baseType: !317, size: 64, offset: 7744)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2943, file: !240, line: 808, baseType: !490, size: 64, offset: 7808)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2943, file: !240, line: 810, baseType: !3744, size: 64, offset: 7872)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!317}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2943, file: !240, line: 811, baseType: !3748, size: 64, offset: 7936)
!3748 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !240, line: 605, baseType: !3749)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{null, !2942, !3752, !3857}
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !240, line: 1148, size: 2048, align: 512, elements: !3754)
!3754 = !{!3755, !3756, !3757, !3758, !3759, !3764, !3765, !3766, !3771, !3772, !3779, !3800, !3822, !3832, !3850, !3851, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3753, file: !240, line: 1153, baseType: !317, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3753, file: !240, line: 1154, baseType: !317, size: 64, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3753, file: !240, line: 1155, baseType: !317, size: 64, offset: 128)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3753, file: !240, line: 1161, baseType: !317, size: 64, offset: 192)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3753, file: !240, line: 1165, baseType: !3760, size: 64, offset: 256)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3753, file: !240, line: 1162, size: 64, elements: !3761)
!3761 = !{!3762, !3763}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3760, file: !240, line: 1163, baseType: !313, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3760, file: !240, line: 1164, baseType: !313, size: 32, offset: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3753, file: !240, line: 1166, baseType: !317, size: 64, offset: 320)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3753, file: !240, line: 1167, baseType: !317, size: 64, offset: 384)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3753, file: !240, line: 1171, baseType: !3767, size: 64, offset: 448)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3753, file: !240, line: 1168, size: 64, elements: !3768)
!3768 = !{!3769, !3770}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3767, file: !240, line: 1169, baseType: !313, size: 32)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3767, file: !240, line: 1170, baseType: !313, size: 32, offset: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3753, file: !240, line: 1177, baseType: !317, size: 64, offset: 512)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3753, file: !240, line: 1178, baseType: !3773, size: 64, offset: 576)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !240, line: 67, size: 64, elements: !3775)
!3775 = !{!3776, !3777}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3774, file: !240, line: 68, baseType: !318, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3774, file: !240, line: 69, baseType: !3778, offset: 64)
!3778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, elements: !1318)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3753, file: !240, line: 1179, baseType: !3780, size: 64, offset: 640)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !240, line: 93, size: 256, elements: !3782)
!3782 = !{!3783, !3799}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3781, file: !240, line: 94, baseType: !3784, size: 224)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !240, line: 83, size: 224, elements: !3785)
!3785 = !{!3786, !3792, !3797, !3798}
!3786 = !DIDerivedType(tag: DW_TAG_member, scope: !3784, file: !240, line: 84, baseType: !3787, size: 64)
!3787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3784, file: !240, line: 84, size: 64, elements: !3788)
!3788 = !{!3789, !3791}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3787, file: !240, line: 85, baseType: !3790, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3787, file: !240, line: 86, baseType: !44, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3784, file: !240, line: 88, baseType: !3793, size: 64, offset: 64)
!3793 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !240, line: 80, baseType: !3794)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!44, !25, !1020, !44, !44}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3784, file: !240, line: 89, baseType: !25, size: 64, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3784, file: !240, line: 90, baseType: !313, size: 32, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3781, file: !240, line: 95, baseType: !313, size: 32, offset: 224)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3753, file: !240, line: 1180, baseType: !3801, size: 64, offset: 704)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !240, line: 123, size: 128, elements: !3803)
!3803 = !{!3804, !3805, !3806}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3802, file: !240, line: 124, baseType: !318, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3802, file: !240, line: 125, baseType: !318, size: 64, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3802, file: !240, line: 126, baseType: !3807, offset: 128)
!3807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3808, elements: !1318)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3495, line: 1415, size: 192, elements: !3809)
!3809 = !{!3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3808, file: !3495, line: 1416, baseType: !318, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3808, file: !3495, line: 1417, baseType: !318, size: 64, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3808, file: !3495, line: 1418, baseType: !318, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3808, file: !3495, line: 1419, baseType: !318, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3808, file: !3495, line: 1420, baseType: !318, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3808, file: !3495, line: 1421, baseType: !318, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3808, file: !3495, line: 1422, baseType: !318, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3808, file: !3495, line: 1423, baseType: !318, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3808, file: !3495, line: 1424, baseType: !318, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3808, file: !3495, line: 1425, baseType: !318, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3808, file: !3495, line: 1426, baseType: !318, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3808, file: !3495, line: 1427, baseType: !318, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3753, file: !240, line: 1181, baseType: !3823, size: 64, offset: 768)
!3823 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3495, line: 1430, size: 64, elements: !3824)
!3824 = !{!3825, !3826}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3823, file: !3495, line: 1431, baseType: !318, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, scope: !3823, file: !3495, line: 1433, baseType: !3827, size: 64)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3823, file: !3495, line: 1433, size: 64, elements: !3828)
!3828 = !{!3829, !3830, !3831}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3827, file: !3495, line: 1434, baseType: !314, size: 32)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3827, file: !3495, line: 1435, baseType: !99, size: 16, offset: 32)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3827, file: !3495, line: 1436, baseType: !99, size: 16, offset: 48)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3753, file: !240, line: 1182, baseType: !3833, size: 64, offset: 832)
!3833 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3495, line: 1267, size: 64, elements: !3834)
!3834 = !{!3835, !3836}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3833, file: !3495, line: 1268, baseType: !318, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, scope: !3833, file: !3495, line: 1269, baseType: !3837, size: 64)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3833, file: !3495, line: 1269, size: 64, elements: !3838)
!3838 = !{!3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3837, file: !3495, line: 1270, baseType: !318, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3837, file: !3495, line: 1271, baseType: !318, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3837, file: !3495, line: 1272, baseType: !318, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3837, file: !3495, line: 1273, baseType: !318, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3837, file: !3495, line: 1274, baseType: !318, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3837, file: !3495, line: 1275, baseType: !318, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3837, file: !3495, line: 1276, baseType: !318, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3837, file: !3495, line: 1277, baseType: !318, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3837, file: !3495, line: 1278, baseType: !318, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3837, file: !3495, line: 1279, baseType: !318, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3837, file: !3495, line: 1280, baseType: !318, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3753, file: !240, line: 1183, baseType: !317, size: 64, offset: 896)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3753, file: !240, line: 1185, baseType: !3852, size: 128, offset: 960)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3853, line: 7, size: 128, elements: !3854)
!3853 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3854 = !{!3855, !3856}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3852, file: !3853, line: 8, baseType: !318, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3852, file: !3853, line: 9, baseType: !3857, size: 64, offset: 64)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3859, line: 103, size: 1344, elements: !3860)
!3859 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3860 = !{!3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3889, !3890, !3891}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3858, file: !3859, line: 109, baseType: !44, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3858, file: !3859, line: 110, baseType: !44, size: 64, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3858, file: !3859, line: 111, baseType: !44, size: 64, offset: 128)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3858, file: !3859, line: 112, baseType: !44, size: 64, offset: 192)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3858, file: !3859, line: 113, baseType: !44, size: 64, offset: 256)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3858, file: !3859, line: 114, baseType: !44, size: 64, offset: 320)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3858, file: !3859, line: 117, baseType: !44, size: 64, offset: 384)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3858, file: !3859, line: 118, baseType: !44, size: 64, offset: 448)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3858, file: !3859, line: 119, baseType: !44, size: 64, offset: 512)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3858, file: !3859, line: 120, baseType: !44, size: 64, offset: 576)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3858, file: !3859, line: 121, baseType: !44, size: 64, offset: 640)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3858, file: !3859, line: 122, baseType: !44, size: 64, offset: 704)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3858, file: !3859, line: 123, baseType: !44, size: 64, offset: 768)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3858, file: !3859, line: 124, baseType: !44, size: 64, offset: 832)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3858, file: !3859, line: 125, baseType: !44, size: 64, offset: 896)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3858, file: !3859, line: 139, baseType: !44, size: 64, offset: 960)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3858, file: !3859, line: 142, baseType: !44, size: 64, offset: 1024)
!3878 = !DIDerivedType(tag: DW_TAG_member, scope: !3858, file: !3859, line: 144, baseType: !3879, size: 64, offset: 1088)
!3879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3858, file: !3859, line: 144, size: 64, elements: !3880)
!3880 = !{!3881, !3882, !3883}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3879, file: !3859, line: 146, baseType: !98, size: 16)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3879, file: !3859, line: 148, baseType: !317, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3879, file: !3859, line: 150, baseType: !3884, size: 64)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3859, line: 59, size: 64, elements: !3885)
!3885 = !{!3886, !3887, !3888}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3884, file: !3859, line: 61, baseType: !317, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3884, file: !3859, line: 63, baseType: !317, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3884, file: !3859, line: 65, baseType: !317, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3858, file: !3859, line: 153, baseType: !44, size: 64, offset: 1152)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3858, file: !3859, line: 154, baseType: !44, size: 64, offset: 1216)
!3891 = !DIDerivedType(tag: DW_TAG_member, scope: !3858, file: !3859, line: 156, baseType: !3892, size: 64, offset: 1280)
!3892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3858, file: !3859, line: 156, size: 64, elements: !3893)
!3893 = !{!3894, !3895, !3896}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3892, file: !3859, line: 158, baseType: !98, size: 16)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3892, file: !3859, line: 160, baseType: !317, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3892, file: !3859, line: 162, baseType: !3897, size: 64)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3859, line: 69, size: 64, elements: !3898)
!3898 = !{!3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3897, file: !3859, line: 71, baseType: !317, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3897, file: !3859, line: 73, baseType: !317, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3897, file: !3859, line: 75, baseType: !317, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3897, file: !3859, line: 77, baseType: !317, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3897, file: !3859, line: 80, baseType: !317, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3897, file: !3859, line: 83, baseType: !317, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3897, file: !3859, line: 86, baseType: !317, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3897, file: !3859, line: 88, baseType: !317, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3897, file: !3859, line: 93, baseType: !317, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3897, file: !3859, line: 100, baseType: !317, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3753, file: !240, line: 1186, baseType: !3852, size: 128, offset: 1088)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3753, file: !240, line: 1187, baseType: !317, size: 64, offset: 1216)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3753, file: !240, line: 1189, baseType: !317, size: 64, offset: 1280)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3753, file: !240, line: 1190, baseType: !317, size: 64, offset: 1344)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3753, file: !240, line: 1191, baseType: !317, size: 64, offset: 1408)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3753, file: !240, line: 1192, baseType: !317, size: 64, offset: 1472)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3753, file: !240, line: 1193, baseType: !317, size: 64, offset: 1536)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3753, file: !240, line: 1194, baseType: !317, size: 64, offset: 1600)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3753, file: !240, line: 1195, baseType: !317, size: 64, offset: 1664)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2943, file: !240, line: 812, baseType: !25, size: 64, offset: 8000)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2943, file: !240, line: 820, baseType: !2736, size: 64, offset: 8064)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2943, file: !240, line: 821, baseType: !2923, size: 64, offset: 8128)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2943, file: !240, line: 828, baseType: !3922, size: 64, offset: 8192)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !240, line: 1046, size: 1664, elements: !3924)
!3924 = !{!3925, !4178}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3923, file: !240, line: 1047, baseType: !3926, size: 1600)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3927, line: 152, size: 1600, elements: !3928)
!3927 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3928 = !{!3929, !4034, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4177}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3926, file: !3927, line: 154, baseType: !3930, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3927, line: 389, size: 7872, elements: !3932)
!3932 = !{!3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3952, !3953, !3957, !3958, !3959, !3960, !3961, !3966, !3982, !3983, !3985, !3986, !3987, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4021, !4024, !4025, !4032}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3931, file: !3927, line: 391, baseType: !3926, size: 1600)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3931, file: !3927, line: 393, baseType: !44, size: 64, offset: 1600)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3931, file: !3927, line: 401, baseType: !27, size: 32, offset: 1664)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3931, file: !3927, line: 404, baseType: !27, size: 32, offset: 1696)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3931, file: !3927, line: 417, baseType: !27, size: 32, offset: 1728)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3931, file: !3927, line: 418, baseType: !27, size: 32, offset: 1760)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3931, file: !3927, line: 419, baseType: !27, size: 32, offset: 1792)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3931, file: !3927, line: 432, baseType: !27, size: 32, offset: 1824)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3931, file: !3927, line: 433, baseType: !27, size: 32, offset: 1856)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3931, file: !3927, line: 434, baseType: !27, size: 32, offset: 1888)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3931, file: !3927, line: 436, baseType: !27, size: 32, offset: 1920)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3931, file: !3927, line: 439, baseType: !13, size: 32, offset: 1952)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3931, file: !3927, line: 441, baseType: !2264, size: 64, offset: 1984)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3931, file: !3927, line: 442, baseType: !3947, size: 448, offset: 2048)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3927, line: 138, size: 448, elements: !3948)
!3948 = !{!3949, !3950, !3951}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3947, file: !3927, line: 140, baseType: !2264, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3947, file: !3927, line: 141, baseType: !44, size: 64, offset: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3947, file: !3927, line: 142, baseType: !2656, size: 320, offset: 128)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3931, file: !3927, line: 443, baseType: !3947, size: 448, offset: 2496)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3931, file: !3927, line: 446, baseType: !3954, offset: 2944)
!3954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3947, elements: !3955)
!3955 = !{!3956}
!3956 = !DISubrange(count: 0)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3931, file: !3927, line: 455, baseType: !98, size: 16, offset: 2944)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3931, file: !3927, line: 456, baseType: !98, size: 16, offset: 2960)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3931, file: !3927, line: 457, baseType: !98, size: 16, offset: 2976)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3931, file: !3927, line: 458, baseType: !98, size: 16, offset: 2992)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3931, file: !3927, line: 461, baseType: !3962, size: 896, offset: 3008)
!3962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3963, size: 896, elements: !3964)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3964 = !{!3965}
!3965 = !DISubrange(count: 14)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3931, file: !3927, line: 463, baseType: !3967, size: 64, offset: 3904)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3927, line: 537, size: 41664, elements: !3969)
!3969 = !{!3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3968, file: !3927, line: 538, baseType: !2284, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3968, file: !3927, line: 541, baseType: !13, size: 32, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3968, file: !3927, line: 544, baseType: !27, size: 32, offset: 96)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3968, file: !3927, line: 547, baseType: !102, size: 128, offset: 128)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3968, file: !3927, line: 548, baseType: !475, size: 128, align: 64, offset: 256)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3968, file: !3927, line: 555, baseType: !3931, size: 7872, offset: 384)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3968, file: !3927, line: 558, baseType: !3930, size: 64, offset: 8256)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3968, file: !3927, line: 561, baseType: !54, size: 32, offset: 8320)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3968, file: !3927, line: 564, baseType: !13, size: 32, offset: 8352)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3968, file: !3927, line: 567, baseType: !2885, size: 32768, offset: 8384)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3968, file: !3927, line: 570, baseType: !3981, size: 512, offset: 41152)
!3981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1660)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3931, file: !3927, line: 469, baseType: !102, size: 128, offset: 3968)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3931, file: !3927, line: 478, baseType: !3984, size: 1792, offset: 4096)
!3984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 1792, elements: !3964)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3931, file: !3927, line: 487, baseType: !3930, size: 64, offset: 5888)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3931, file: !3927, line: 488, baseType: !3930, size: 64, offset: 5952)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3931, file: !3927, line: 491, baseType: !3988, size: 64, offset: 6016)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3927, line: 327, size: 896, elements: !3990)
!3990 = !{!3991, !3994, !4004, !4005, !4006, !4007, !4008}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3989, file: !3927, line: 332, baseType: !3992)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3993, line: 64, elements: !907)
!3993 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3989, file: !3927, line: 333, baseType: !3995, size: 192)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3927, line: 299, size: 192, elements: !3996)
!3996 = !{!3997}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3995, file: !3927, line: 300, baseType: !3998, size: 192)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3999, line: 17, size: 192, elements: !4000)
!3999 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4000 = !{!4001, !4002, !4003}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3998, file: !3999, line: 18, baseType: !317, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3998, file: !3999, line: 19, baseType: !317, size: 64, offset: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3998, file: !3999, line: 20, baseType: !319, size: 64, offset: 128)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3989, file: !3927, line: 339, baseType: !3995, size: 192, offset: 192)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3989, file: !3927, line: 347, baseType: !3995, size: 192, offset: 384)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3989, file: !3927, line: 353, baseType: !3995, size: 192, offset: 576)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3989, file: !3927, line: 366, baseType: !3930, size: 64, offset: 768)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3989, file: !3927, line: 367, baseType: !3930, size: 64, offset: 832)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3931, file: !3927, line: 492, baseType: !102, size: 128, offset: 6080)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3931, file: !3927, line: 495, baseType: !3995, size: 192, offset: 6208)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3931, file: !3927, line: 496, baseType: !3995, size: 192, offset: 6400)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3931, file: !3927, line: 497, baseType: !1430, size: 192, offset: 6592)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3931, file: !3927, line: 503, baseType: !102, size: 128, offset: 6784)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3931, file: !3927, line: 504, baseType: !496, size: 256, offset: 6912)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3931, file: !3927, line: 507, baseType: !59, size: 192, offset: 7168)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3931, file: !3927, line: 510, baseType: !1202, size: 256, offset: 7360)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3931, file: !3927, line: 513, baseType: !4018, size: 64, offset: 7616)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4020, line: 214, elements: !907)
!4020 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3931, file: !3927, line: 516, baseType: !4022, offset: 7680)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4023, line: 76, elements: !907)
!4023 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3931, file: !3927, line: 519, baseType: !54, size: 32, offset: 7680)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3931, file: !3927, line: 522, baseType: !4026, size: 128, offset: 7712)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3927, line: 370, size: 128, elements: !4027)
!4027 = !{!4028, !4029, !4030, !4031}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4026, file: !3927, line: 372, baseType: !383, size: 8)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4026, file: !3927, line: 375, baseType: !27, size: 32, offset: 32)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4026, file: !3927, line: 380, baseType: !27, size: 32, offset: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4026, file: !3927, line: 386, baseType: !27, size: 32, offset: 96)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3931, file: !3927, line: 529, baseType: !4033, offset: 7872)
!4033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3930, elements: !1318)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3926, file: !3927, line: 157, baseType: !4035, size: 64, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3927, line: 669, size: 1984, elements: !4037)
!4037 = !{!4038, !4042, !4046, !4050, !4051, !4052, !4053, !4057, !4061, !4062, !4068, !4072, !4073, !4074, !4103, !4107, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4160, !4161}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4036, file: !3927, line: 670, baseType: !4039, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!3963, !3963}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4036, file: !3927, line: 671, baseType: !4043, size: 64, offset: 64)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!27, !3963}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4036, file: !3927, line: 672, baseType: !4047, size: 64, offset: 128)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !3963}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4036, file: !3927, line: 673, baseType: !4047, size: 64, offset: 192)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4036, file: !3927, line: 674, baseType: !4047, size: 64, offset: 256)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4036, file: !3927, line: 675, baseType: !4047, size: 64, offset: 320)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4036, file: !3927, line: 676, baseType: !4054, size: 64, offset: 384)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{null, !3963, !27}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4036, file: !3927, line: 677, baseType: !4058, size: 64, offset: 448)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!27, !2309, !3963}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4036, file: !3927, line: 679, baseType: !4058, size: 64, offset: 512)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4036, file: !3927, line: 682, baseType: !4063, size: 64, offset: 576)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!27, !4066}
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3927, line: 30, flags: DIFlagFwdDecl)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4036, file: !3927, line: 683, baseType: !4069, size: 64, offset: 640)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{null, !4066}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4036, file: !3927, line: 684, baseType: !4069, size: 64, offset: 704)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4036, file: !3927, line: 685, baseType: !2830, size: 64, offset: 768)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4036, file: !3927, line: 686, baseType: !4075, size: 64, offset: 832)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!27, !591, !4078}
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3927, line: 209, size: 4736, elements: !4080)
!4080 = !{!4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4079, file: !3927, line: 215, baseType: !3962, size: 896)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4079, file: !3927, line: 218, baseType: !541, size: 32, offset: 896)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4079, file: !3927, line: 226, baseType: !4078, size: 64, offset: 960)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4079, file: !3927, line: 229, baseType: !3930, size: 64, offset: 1024)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4079, file: !3927, line: 232, baseType: !27, size: 32, offset: 1088)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4079, file: !3927, line: 241, baseType: !102, size: 128, offset: 1152)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4079, file: !3927, line: 242, baseType: !102, size: 128, offset: 1280)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4079, file: !3927, line: 243, baseType: !102, size: 128, offset: 1408)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4079, file: !3927, line: 246, baseType: !102, size: 128, offset: 1536)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4079, file: !3927, line: 255, baseType: !3984, size: 1792, offset: 1664)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4079, file: !3927, line: 258, baseType: !102, size: 128, offset: 3456)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4079, file: !3927, line: 259, baseType: !102, size: 128, offset: 3584)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4079, file: !3927, line: 265, baseType: !554, size: 128, offset: 3712)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4079, file: !3927, line: 271, baseType: !102, size: 128, offset: 3840)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4079, file: !3927, line: 277, baseType: !102, size: 128, offset: 3968)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4079, file: !3927, line: 278, baseType: !102, size: 128, offset: 4096)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4079, file: !3927, line: 279, baseType: !102, size: 128, offset: 4224)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4079, file: !3927, line: 288, baseType: !3930, size: 64, offset: 4352)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4079, file: !3927, line: 289, baseType: !3930, size: 64, offset: 4416)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4079, file: !3927, line: 290, baseType: !4078, size: 64, offset: 4480)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4079, file: !3927, line: 293, baseType: !383, size: 8, offset: 4544)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4079, file: !3927, line: 296, baseType: !475, size: 128, align: 64, offset: 4608)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4036, file: !3927, line: 688, baseType: !4104, size: 64, offset: 896)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{null, !591, !4078}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4036, file: !3927, line: 689, baseType: !4108, size: 64, offset: 960)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{null, !591}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4036, file: !3927, line: 690, baseType: !4108, size: 64, offset: 1024)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4036, file: !3927, line: 691, baseType: !4108, size: 64, offset: 1088)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4036, file: !3927, line: 692, baseType: !4047, size: 64, offset: 1152)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4036, file: !3927, line: 694, baseType: !383, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4036, file: !3927, line: 707, baseType: !383, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4036, file: !3927, line: 719, baseType: !383, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4036, file: !3927, line: 722, baseType: !27, size: 32, offset: 1248)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4036, file: !3927, line: 723, baseType: !22, size: 64, offset: 1280)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4036, file: !3927, line: 726, baseType: !22, size: 64, offset: 1344)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4036, file: !3927, line: 729, baseType: !3967, size: 64, offset: 1408)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4036, file: !3927, line: 732, baseType: !575, size: 192, offset: 1472)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4036, file: !3927, line: 738, baseType: !102, size: 128, offset: 1664)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4036, file: !3927, line: 744, baseType: !4124, size: 64, offset: 1792)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3927, line: 580, size: 1728, elements: !4126)
!4126 = !{!4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4136, !4137, !4138, !4142, !4146, !4147, !4148, !4149, !4150, !4154, !4158, !4159}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4125, file: !3927, line: 586, baseType: !3981, size: 512)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4125, file: !3927, line: 587, baseType: !44, size: 64, offset: 512)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4125, file: !3927, line: 593, baseType: !40, size: 64, offset: 576)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4125, file: !3927, line: 596, baseType: !13, size: 32, offset: 640)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4125, file: !3927, line: 604, baseType: !13, size: 32, offset: 672)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4125, file: !3927, line: 610, baseType: !4035, size: 64, offset: 704)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4125, file: !3927, line: 611, baseType: !102, size: 128, offset: 768)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4125, file: !3927, line: 612, baseType: !4135, size: 64, offset: 896)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4125, file: !3927, line: 614, baseType: !2300, size: 64, offset: 960)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4125, file: !3927, line: 615, baseType: !2358, size: 64, offset: 1024)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4125, file: !3927, line: 621, baseType: !4139, size: 64, offset: 1088)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!317, !3963, !4124}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4125, file: !3927, line: 625, baseType: !4143, size: 64, offset: 1152)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!494, !3963, !4124}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4125, file: !3927, line: 628, baseType: !2339, size: 64, offset: 1216)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4125, file: !3927, line: 631, baseType: !2327, size: 64, offset: 1280)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4125, file: !3927, line: 632, baseType: !2335, size: 64, offset: 1344)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4125, file: !3927, line: 633, baseType: !2331, size: 64, offset: 1408)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4125, file: !3927, line: 640, baseType: !4151, size: 64, offset: 1472)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!27, !3963, !4124, !317}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4125, file: !3927, line: 645, baseType: !4155, size: 64, offset: 1536)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!27, !3963, !4124, !494}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4125, file: !3927, line: 654, baseType: !2366, size: 64, offset: 1600)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4125, file: !3927, line: 657, baseType: !2373, size: 64, offset: 1664)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4036, file: !3927, line: 745, baseType: !4124, size: 64, offset: 1856)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4036, file: !3927, line: 754, baseType: !13, size: 32, offset: 1920)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3926, file: !3927, line: 160, baseType: !1808, size: 128, offset: 128)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3926, file: !3927, line: 163, baseType: !102, size: 128, offset: 256)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3926, file: !3927, line: 164, baseType: !102, size: 128, offset: 384)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3926, file: !3927, line: 167, baseType: !102, size: 128, offset: 512)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3926, file: !3927, line: 173, baseType: !27, size: 32, offset: 640)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3926, file: !3927, line: 175, baseType: !13, size: 32, offset: 672)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3926, file: !3927, line: 183, baseType: !317, size: 64, offset: 704)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3926, file: !3927, line: 189, baseType: !54, size: 32, offset: 768)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3926, file: !3927, line: 192, baseType: !1202, size: 256, offset: 832)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3926, file: !3927, line: 193, baseType: !4172, size: 448, offset: 1088)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1203, line: 120, size: 448, elements: !4173)
!4173 = !{!4174, !4175, !4176}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4172, file: !1203, line: 121, baseType: !1202, size: 256)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4172, file: !1203, line: 122, baseType: !475, size: 128, align: 64, offset: 256)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4172, file: !1203, line: 125, baseType: !2718, size: 64, offset: 384)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3926, file: !3927, line: 199, baseType: !3963, size: 64, offset: 1536)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3923, file: !240, line: 1048, baseType: !4179, size: 64, offset: 1600)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !240, line: 1039, size: 256, elements: !4181)
!4181 = !{!4182, !4183, !4184, !4185}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4180, file: !240, line: 1040, baseType: !317, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4180, file: !240, line: 1041, baseType: !317, size: 64, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4180, file: !240, line: 1042, baseType: !317, size: 64, offset: 128)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4180, file: !240, line: 1043, baseType: !27, size: 32, offset: 192)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2943, file: !240, line: 832, baseType: !25, size: 64, offset: 8256)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2943, file: !240, line: 834, baseType: !102, size: 128, offset: 8320)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2943, file: !240, line: 842, baseType: !314, size: 32, offset: 8448)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1605, file: !157, line: 524, baseType: !13, size: 32, offset: 8320)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1605, file: !157, line: 525, baseType: !4191, size: 64, offset: 8384)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !4194, line: 28, size: 192, elements: !4195)
!4194 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!4195 = !{!4196, !4197, !4198}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4193, file: !4194, line: 29, baseType: !22, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !4193, file: !4194, line: 30, baseType: !22, size: 64, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !4193, file: !4194, line: 31, baseType: !44, size: 64, offset: 128)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1605, file: !157, line: 526, baseType: !13, size: 32, offset: 8448)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1605, file: !157, line: 533, baseType: !25, size: 64, offset: 8512)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1605, file: !157, line: 534, baseType: !13, size: 32, offset: 8576)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1605, file: !157, line: 535, baseType: !4203, size: 64, offset: 8640)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1605, file: !157, line: 536, baseType: !13, size: 32, offset: 8704)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1605, file: !157, line: 539, baseType: !27, size: 32, offset: 8736)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1605, file: !157, line: 540, baseType: !2819, size: 64, offset: 8768)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1605, file: !157, line: 563, baseType: !102, size: 128, offset: 8832)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1605, file: !157, line: 565, baseType: !102, size: 128, offset: 8960)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1605, file: !157, line: 568, baseType: !2830, size: 64, offset: 9088)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1605, file: !157, line: 570, baseType: !54, size: 32, offset: 9152)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1581, file: !257, line: 2382, baseType: !1580, size: 64, offset: 448)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1581, file: !257, line: 2383, baseType: !550, size: 64, offset: 512)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1581, file: !257, line: 2385, baseType: !4214, offset: 576)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2685, line: 206, elements: !907)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1581, file: !257, line: 2386, baseType: !4214, offset: 576)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1581, file: !257, line: 2387, baseType: !4214, offset: 576)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1581, file: !257, line: 2388, baseType: !4218, offset: 576)
!4218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4214, elements: !533)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1581, file: !257, line: 2390, baseType: !4214, offset: 576)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1581, file: !257, line: 2391, baseType: !4214, offset: 576)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1581, file: !257, line: 2392, baseType: !4214, offset: 576)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1581, file: !257, line: 2393, baseType: !4214, offset: 576)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1572, file: !257, line: 1197, baseType: !4224, size: 64, offset: 384)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4226)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !257, line: 2057, size: 1664, elements: !4227)
!4227 = !{!4228, !4232, !4236, !4237, !4241, !4245, !4249, !4250, !4251, !4255, !4259, !4263, !4264, !4265, !4271, !4275, !4276, !4280, !4281, !4282, !4283, !4287, !4291, !4338, !4353, !4354}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4226, file: !257, line: 2058, baseType: !4229, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!324, !1571}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4226, file: !257, line: 2059, baseType: !4233, size: 64, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{null, !324}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4226, file: !257, line: 2060, baseType: !4233, size: 64, offset: 128)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4226, file: !257, line: 2062, baseType: !4238, size: 64, offset: 192)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{null, !324, !27}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4226, file: !257, line: 2063, baseType: !4242, size: 64, offset: 256)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!27, !324, !2029}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4226, file: !257, line: 2064, baseType: !4246, size: 64, offset: 320)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!27, !324}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4226, file: !257, line: 2065, baseType: !4233, size: 64, offset: 384)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4226, file: !257, line: 2066, baseType: !1600, size: 64, offset: 448)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4226, file: !257, line: 2067, baseType: !4252, size: 64, offset: 512)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!27, !1571, !27}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4226, file: !257, line: 2068, baseType: !4256, size: 64, offset: 576)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!27, !1571, !256}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4226, file: !257, line: 2069, baseType: !4260, size: 64, offset: 640)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!27, !1571}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4226, file: !257, line: 2070, baseType: !4256, size: 64, offset: 704)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4226, file: !257, line: 2071, baseType: !4260, size: 64, offset: 768)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4226, file: !257, line: 2072, baseType: !4266, size: 64, offset: 832)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!27, !279, !4269}
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !257, line: 62, flags: DIFlagFwdDecl)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4226, file: !257, line: 2073, baseType: !4272, size: 64, offset: 896)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!27, !1571, !1423, !389}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4226, file: !257, line: 2074, baseType: !1600, size: 64, offset: 960)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4226, file: !257, line: 2076, baseType: !4277, size: 64, offset: 1024)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!27, !2309, !279}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4226, file: !257, line: 2077, baseType: !4277, size: 64, offset: 1088)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4226, file: !257, line: 2078, baseType: !4277, size: 64, offset: 1152)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4226, file: !257, line: 2079, baseType: !4277, size: 64, offset: 1216)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4226, file: !257, line: 2081, baseType: !4284, size: 64, offset: 1280)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!1687, !1571, !27, !389, !40, !46}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4226, file: !257, line: 2082, baseType: !4288, size: 64, offset: 1344)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!1687, !1571, !27, !22, !40, !46}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4226, file: !257, line: 2083, baseType: !4292, size: 64, offset: 1408)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!4295, !324}
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !262, line: 296, size: 1664, elements: !4298)
!4298 = !{!4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4323, !4324, !4325}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4297, file: !262, line: 297, baseType: !554, size: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4297, file: !262, line: 298, baseType: !102, size: 128, offset: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4297, file: !262, line: 299, baseType: !102, size: 128, offset: 256)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4297, file: !262, line: 300, baseType: !102, size: 128, offset: 384)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4297, file: !262, line: 301, baseType: !496, size: 256, offset: 512)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4297, file: !262, line: 302, baseType: !64, size: 32, offset: 768)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4297, file: !262, line: 303, baseType: !54, size: 32, offset: 800)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4297, file: !262, line: 304, baseType: !1571, size: 64, offset: 832)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4297, file: !262, line: 305, baseType: !4308, size: 64, offset: 896)
!4308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !262, line: 68, size: 64, elements: !4309)
!4309 = !{!4310, !4322}
!4310 = !DIDerivedType(tag: DW_TAG_member, scope: !4308, file: !262, line: 69, baseType: !4311, size: 32)
!4311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4308, file: !262, line: 69, size: 32, elements: !4312)
!4312 = !{!4313, !4314, !4315}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4311, file: !262, line: 70, baseType: !330, size: 32)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4311, file: !262, line: 71, baseType: !339, size: 32)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4311, file: !262, line: 72, baseType: !4316, size: 32)
!4316 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4317, line: 24, baseType: !4318)
!4317 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4317, line: 22, size: 32, elements: !4319)
!4319 = !{!4320}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4318, file: !4317, line: 23, baseType: !4321, size: 32)
!4321 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4317, line: 20, baseType: !336)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4308, file: !262, line: 74, baseType: !261, size: 32, offset: 32)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4297, file: !262, line: 306, baseType: !46, size: 64, offset: 960)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4297, file: !262, line: 307, baseType: !44, size: 64, offset: 1024)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4297, file: !262, line: 308, baseType: !4326, size: 576, offset: 1088)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !262, line: 205, size: 576, elements: !4327)
!4327 = !{!4328, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4326, file: !262, line: 206, baseType: !4329, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !262, line: 66, baseType: !48)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4326, file: !262, line: 207, baseType: !4329, size: 64, offset: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4326, file: !262, line: 208, baseType: !4329, size: 64, offset: 128)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4326, file: !262, line: 209, baseType: !4329, size: 64, offset: 192)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4326, file: !262, line: 210, baseType: !4329, size: 64, offset: 256)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4326, file: !262, line: 211, baseType: !4329, size: 64, offset: 320)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4326, file: !262, line: 212, baseType: !4329, size: 64, offset: 384)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4326, file: !262, line: 213, baseType: !455, size: 64, offset: 448)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4326, file: !262, line: 214, baseType: !455, size: 64, offset: 512)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4226, file: !257, line: 2085, baseType: !4339, size: 64, offset: 1472)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!458, !1571, !4342}
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4344, line: 15, size: 256, elements: !4345)
!4344 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4345 = !{!4346, !4347, !4348, !4349, !4350}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4343, file: !4344, line: 16, baseType: !584, size: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4343, file: !4344, line: 19, baseType: !27, size: 32, offset: 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4343, file: !4344, line: 26, baseType: !44, size: 64, offset: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4343, file: !4344, line: 33, baseType: !44, size: 64, offset: 128)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4343, file: !4344, line: 36, baseType: !4351, size: 64, offset: 192)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !4344, line: 36, flags: DIFlagFwdDecl)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4226, file: !257, line: 2087, baseType: !4339, size: 64, offset: 1536)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4226, file: !257, line: 2089, baseType: !1600, size: 64, offset: 1600)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1572, file: !257, line: 1198, baseType: !4356, size: 64, offset: 448)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4358)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !262, line: 324, size: 704, elements: !4359)
!4359 = !{!4360, !4364, !4368, !4372, !4373, !4374, !4375, !4376, !4381, !4386, !4390}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4358, file: !262, line: 325, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!27, !4296}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4358, file: !262, line: 326, baseType: !4365, size: 64, offset: 64)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!4296, !1571, !27}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4358, file: !262, line: 327, baseType: !4369, size: 64, offset: 128)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{null, !4296}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4358, file: !262, line: 328, baseType: !4361, size: 64, offset: 192)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4358, file: !262, line: 329, baseType: !4361, size: 64, offset: 256)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4358, file: !262, line: 330, baseType: !4361, size: 64, offset: 320)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4358, file: !262, line: 331, baseType: !4252, size: 64, offset: 384)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4358, file: !262, line: 334, baseType: !4377, size: 64, offset: 448)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!4380, !324}
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4358, file: !262, line: 335, baseType: !4382, size: 64, offset: 512)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!27, !324, !4385}
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4358, file: !262, line: 337, baseType: !4387, size: 64, offset: 576)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!27, !324, !4380}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4358, file: !262, line: 339, baseType: !4391, size: 64, offset: 640)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!27, !1571, !4394}
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1572, file: !257, line: 1199, baseType: !4396, size: 64, offset: 512)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4398)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !262, line: 430, size: 704, elements: !4399)
!4399 = !{!4400, !4406, !4407, !4411, !4412, !4413, !4428, !4451, !4455, !4456, !4479}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4398, file: !262, line: 431, baseType: !4401, size: 64)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!27, !1571, !27, !27, !4404}
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1561)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4398, file: !262, line: 432, baseType: !4252, size: 64, offset: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4398, file: !262, line: 433, baseType: !4408, size: 64, offset: 128)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!27, !1571, !13}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4398, file: !262, line: 434, baseType: !4408, size: 64, offset: 192)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4398, file: !262, line: 435, baseType: !4252, size: 64, offset: 256)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4398, file: !262, line: 436, baseType: !4414, size: 64, offset: 320)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!27, !1571, !27, !4417}
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !262, line: 417, size: 256, elements: !4419)
!4419 = !{!4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4418, file: !262, line: 418, baseType: !27, size: 32)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4418, file: !262, line: 419, baseType: !13, size: 32, offset: 32)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4418, file: !262, line: 420, baseType: !13, size: 32, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4418, file: !262, line: 422, baseType: !13, size: 32, offset: 96)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4418, file: !262, line: 423, baseType: !13, size: 32, offset: 128)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4418, file: !262, line: 424, baseType: !13, size: 32, offset: 160)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4418, file: !262, line: 425, baseType: !13, size: 32, offset: 192)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4418, file: !262, line: 426, baseType: !13, size: 32, offset: 224)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4398, file: !262, line: 437, baseType: !4429, size: 64, offset: 384)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!27, !1571, !4308, !4432}
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !262, line: 345, size: 960, elements: !4434)
!4434 = !{!4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4433, file: !262, line: 346, baseType: !27, size: 32)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4433, file: !262, line: 347, baseType: !317, size: 64, offset: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4433, file: !262, line: 348, baseType: !317, size: 64, offset: 128)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4433, file: !262, line: 349, baseType: !317, size: 64, offset: 192)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4433, file: !262, line: 350, baseType: !317, size: 64, offset: 256)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4433, file: !262, line: 351, baseType: !317, size: 64, offset: 320)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4433, file: !262, line: 352, baseType: !317, size: 64, offset: 384)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4433, file: !262, line: 353, baseType: !494, size: 64, offset: 448)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4433, file: !262, line: 355, baseType: !494, size: 64, offset: 512)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4433, file: !262, line: 356, baseType: !27, size: 32, offset: 576)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4433, file: !262, line: 357, baseType: !27, size: 32, offset: 608)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4433, file: !262, line: 358, baseType: !317, size: 64, offset: 640)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4433, file: !262, line: 359, baseType: !317, size: 64, offset: 704)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4433, file: !262, line: 360, baseType: !317, size: 64, offset: 768)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4433, file: !262, line: 361, baseType: !494, size: 64, offset: 832)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4433, file: !262, line: 362, baseType: !27, size: 32, offset: 896)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4398, file: !262, line: 438, baseType: !4452, size: 64, offset: 448)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!27, !1571, !4394, !4432}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4398, file: !262, line: 440, baseType: !4429, size: 64, offset: 512)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4398, file: !262, line: 441, baseType: !4457, size: 64, offset: 576)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!27, !1571, !4460}
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !262, line: 411, size: 1408, elements: !4462)
!4462 = !{!4463, !4464}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4461, file: !262, line: 412, baseType: !13, size: 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4461, file: !262, line: 413, baseType: !4465, size: 1344, offset: 64)
!4465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4466, size: 1344, elements: !533)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !262, line: 397, size: 448, elements: !4467)
!4467 = !{!4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4478}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4466, file: !262, line: 398, baseType: !13, size: 32)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4466, file: !262, line: 399, baseType: !13, size: 32, offset: 32)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4466, file: !262, line: 401, baseType: !13, size: 32, offset: 64)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4466, file: !262, line: 402, baseType: !13, size: 32, offset: 96)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4466, file: !262, line: 403, baseType: !13, size: 32, offset: 128)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4466, file: !262, line: 404, baseType: !13, size: 32, offset: 160)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4466, file: !262, line: 405, baseType: !13, size: 32, offset: 192)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4466, file: !262, line: 406, baseType: !319, size: 64, offset: 256)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4466, file: !262, line: 407, baseType: !4477, size: 64, offset: 320)
!4477 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !30, line: 132, baseType: !317)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4466, file: !262, line: 408, baseType: !4477, size: 64, offset: 384)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4398, file: !262, line: 442, baseType: !4408, size: 64, offset: 640)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1572, file: !257, line: 1200, baseType: !4481, size: 64, offset: 576)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4483)
!4483 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !257, line: 54, flags: DIFlagFwdDecl)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1572, file: !257, line: 1201, baseType: !44, size: 64, offset: 640)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1572, file: !257, line: 1202, baseType: !44, size: 64, offset: 704)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1572, file: !257, line: 1203, baseType: !44, size: 64, offset: 768)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1572, file: !257, line: 1204, baseType: !279, size: 64, offset: 832)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1572, file: !257, line: 1205, baseType: !941, size: 320, offset: 896)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1572, file: !257, line: 1206, baseType: !27, size: 32, offset: 1216)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1572, file: !257, line: 1207, baseType: !54, size: 32, offset: 1248)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1572, file: !257, line: 1209, baseType: !25, size: 64, offset: 1280)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1572, file: !257, line: 1211, baseType: !4493, size: 64, offset: 1344)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4496)
!4496 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !257, line: 1211, flags: DIFlagFwdDecl)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1572, file: !257, line: 1223, baseType: !4498, size: 64, offset: 1408)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !296, line: 34, size: 64, elements: !4499)
!4499 = !{!4500}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4498, file: !296, line: 35, baseType: !299, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1572, file: !257, line: 1224, baseType: !102, size: 128, offset: 1472)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1572, file: !257, line: 1225, baseType: !4503, size: 64, offset: 1600)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !257, line: 1225, flags: DIFlagFwdDecl)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1572, file: !257, line: 1226, baseType: !4506, size: 64, offset: 1664)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !257, line: 1226, flags: DIFlagFwdDecl)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1572, file: !257, line: 1227, baseType: !4509, size: 64, offset: 1728)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !257, line: 50, flags: DIFlagFwdDecl)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1572, file: !257, line: 1228, baseType: !4512, size: 64, offset: 1792)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !257, line: 1228, flags: DIFlagFwdDecl)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1572, file: !257, line: 1229, baseType: !554, size: 128, offset: 1856)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1572, file: !257, line: 1230, baseType: !13, size: 32, offset: 1984)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1572, file: !257, line: 1231, baseType: !4517, size: 2496, offset: 2048)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !262, line: 521, size: 2496, elements: !4518)
!4518 = !{!4519, !4520, !4521, !4523, !4555}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4517, file: !262, line: 522, baseType: !13, size: 32)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4517, file: !262, line: 523, baseType: !941, size: 320, offset: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4517, file: !262, line: 524, baseType: !4522, size: 192, offset: 384)
!4522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 192, elements: !533)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4517, file: !262, line: 525, baseType: !4524, size: 1728, offset: 576)
!4524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4525, size: 1728, elements: !533)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !262, line: 222, size: 576, elements: !4526)
!4526 = !{!4527, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4525, file: !262, line: 223, baseType: !4528, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !262, line: 445, size: 256, elements: !4530)
!4530 = !{!4531, !4532, !4545, !4546}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4529, file: !262, line: 446, baseType: !27, size: 32)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4529, file: !262, line: 447, baseType: !4533, size: 64, offset: 64)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4535)
!4535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !262, line: 312, size: 512, elements: !4536)
!4536 = !{!4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4535, file: !262, line: 313, baseType: !4252, size: 64)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4535, file: !262, line: 314, baseType: !4252, size: 64, offset: 64)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4535, file: !262, line: 315, baseType: !4252, size: 64, offset: 128)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4535, file: !262, line: 316, baseType: !4252, size: 64, offset: 192)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4535, file: !262, line: 317, baseType: !4361, size: 64, offset: 256)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4535, file: !262, line: 318, baseType: !4361, size: 64, offset: 320)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4535, file: !262, line: 319, baseType: !4361, size: 64, offset: 384)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4535, file: !262, line: 320, baseType: !4391, size: 64, offset: 448)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4529, file: !262, line: 448, baseType: !1604, size: 64, offset: 128)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4529, file: !262, line: 449, baseType: !4528, size: 64, offset: 192)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4525, file: !262, line: 224, baseType: !27, size: 32, offset: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4525, file: !262, line: 226, baseType: !102, size: 128, offset: 128)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4525, file: !262, line: 227, baseType: !44, size: 64, offset: 256)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4525, file: !262, line: 228, baseType: !13, size: 32, offset: 320)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4525, file: !262, line: 229, baseType: !13, size: 32, offset: 352)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4525, file: !262, line: 230, baseType: !4329, size: 64, offset: 384)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4525, file: !262, line: 231, baseType: !4329, size: 64, offset: 448)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4525, file: !262, line: 232, baseType: !25, size: 64, offset: 512)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4517, file: !262, line: 526, baseType: !4556, size: 192, offset: 2304)
!4556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4533, size: 192, elements: !533)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1572, file: !257, line: 1233, baseType: !4558, size: 2368, offset: 4544)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !257, line: 1184, size: 2368, elements: !4559)
!4559 = !{!4560, !4561, !4562}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4558, file: !257, line: 1185, baseType: !31, size: 16)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4558, file: !257, line: 1186, baseType: !31, size: 16, offset: 16)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4558, file: !257, line: 1187, baseType: !4563, size: 2304, offset: 64)
!4563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4564, size: 2304, elements: !533)
!4564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4565, line: 12, size: 768, elements: !4566)
!4565 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4566 = !{!4567, !4575, !4576, !4577, !4578}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4564, file: !4565, line: 13, baseType: !4568, size: 384)
!4568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4569, line: 17, size: 384, elements: !4570)
!4569 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4570 = !{!4571, !4572, !4573, !4574}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4568, file: !4569, line: 18, baseType: !27, size: 32)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4568, file: !4569, line: 19, baseType: !27, size: 32, offset: 32)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4568, file: !4569, line: 20, baseType: !59, size: 192, offset: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4568, file: !4569, line: 22, baseType: !475, size: 128, align: 64, offset: 256)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4564, file: !4565, line: 14, baseType: !2510, size: 64, offset: 384)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4564, file: !4565, line: 15, baseType: !3716, size: 64, offset: 448)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4564, file: !4565, line: 16, baseType: !59, size: 192, offset: 512)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4564, file: !4565, line: 17, baseType: !54, size: 32, offset: 704)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1572, file: !257, line: 1240, baseType: !25, size: 64, offset: 6912)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1572, file: !257, line: 1243, baseType: !313, size: 32, offset: 6976)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1572, file: !257, line: 1245, baseType: !455, size: 64, offset: 7040)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1572, file: !257, line: 1246, baseType: !455, size: 64, offset: 7104)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1572, file: !257, line: 1248, baseType: !314, size: 32, offset: 7168)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1572, file: !257, line: 1249, baseType: !4585, size: 64, offset: 7232)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !257, line: 634, flags: DIFlagFwdDecl)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1572, file: !257, line: 1252, baseType: !4588, size: 256, offset: 7296)
!4588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !4589)
!4589 = !{!4590}
!4590 = !DISubrange(count: 32)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1572, file: !257, line: 1253, baseType: !4592, size: 128, offset: 7552)
!4592 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4593, line: 21, baseType: !4594)
!4593 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4593, line: 19, size: 128, elements: !4595)
!4595 = !{!4596}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4594, file: !4593, line: 20, baseType: !4597, size: 128)
!4597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 128, elements: !1533)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1572, file: !257, line: 1255, baseType: !13, size: 32, offset: 7680)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1572, file: !257, line: 1261, baseType: !496, size: 256, offset: 7744)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1572, file: !257, line: 1267, baseType: !22, size: 64, offset: 8000)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1572, file: !257, line: 1269, baseType: !4602, size: 64, offset: 8064)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4604)
!4604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !281, line: 128, size: 1024, align: 512, elements: !4605)
!4605 = !{!4606, !4610, !4611, !4618, !4624, !4628, !4632, !4636, !4637, !4641, !4645, !4650, !4654}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4604, file: !281, line: 129, baseType: !4607, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!27, !279, !13}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4604, file: !281, line: 130, baseType: !4607, size: 64, offset: 64)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4604, file: !281, line: 131, baseType: !4612, size: 64, offset: 128)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!27, !4615, !4617}
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4604, file: !281, line: 132, baseType: !4619, size: 64, offset: 192)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!27, !4615, !13, !22, !4622}
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4604, file: !281, line: 134, baseType: !4625, size: 64, offset: 256)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!27, !4615}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4604, file: !281, line: 135, baseType: !4629, size: 64, offset: 320)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!27, !279}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4604, file: !281, line: 136, baseType: !4633, size: 64, offset: 384)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{null, !279}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4604, file: !281, line: 137, baseType: !4633, size: 64, offset: 448)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4604, file: !281, line: 138, baseType: !4638, size: 64, offset: 512)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{null, !279, !324}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4604, file: !281, line: 139, baseType: !4642, size: 64, offset: 576)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!389, !279, !389, !27}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4604, file: !281, line: 140, baseType: !4646, size: 64, offset: 640)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!1565, !4649}
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4604, file: !281, line: 141, baseType: !4651, size: 64, offset: 704)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!27, !4404, !383}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4604, file: !281, line: 142, baseType: !4655, size: 64, offset: 768)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!279, !279, !4658}
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1572, file: !257, line: 1271, baseType: !4661, size: 448, offset: 8128)
!4661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4344, line: 63, size: 448, elements: !4662)
!4662 = !{!4663, !4668, !4669, !4670, !4671, !4672, !4673}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4661, file: !4344, line: 64, baseType: !4664, size: 64)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{!44, !4667, !4342}
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4661, file: !4344, line: 66, baseType: !4664, size: 64, offset: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4661, file: !4344, line: 69, baseType: !458, size: 64, offset: 128)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4661, file: !4344, line: 70, baseType: !27, size: 32, offset: 192)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4661, file: !4344, line: 71, baseType: !13, size: 32, offset: 224)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4661, file: !4344, line: 74, baseType: !102, size: 128, offset: 256)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4661, file: !4344, line: 85, baseType: !4674, size: 64, offset: 384)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1572, file: !257, line: 1274, baseType: !488, size: 64, offset: 8576)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1572, file: !257, line: 1280, baseType: !488, size: 64, offset: 8640)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1572, file: !257, line: 1283, baseType: !27, size: 32, offset: 8704)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1572, file: !257, line: 1286, baseType: !2209, size: 32, offset: 8736)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1572, file: !257, line: 1289, baseType: !2718, size: 64, offset: 8768)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1572, file: !257, line: 1290, baseType: !550, size: 64, offset: 8832)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1572, file: !257, line: 1297, baseType: !1046, size: 64, offset: 8896)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1572, file: !257, line: 1304, baseType: !4683, size: 64, offset: 8960)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4684, line: 49, size: 64, elements: !4685)
!4684 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4685 = !{!4686}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4683, file: !4684, line: 50, baseType: !4687, size: 64)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4684, line: 41, size: 512, align: 512, elements: !4689)
!4689 = !{!4690, !4691, !4696}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4688, file: !4684, line: 43, baseType: !64, size: 32)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4688, file: !4684, line: 45, baseType: !4692, size: 192, offset: 64)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4684, line: 29, size: 192, elements: !4693)
!4693 = !{!4694, !4695}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4692, file: !4684, line: 30, baseType: !102, size: 128)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4692, file: !4684, line: 32, baseType: !458, size: 64, offset: 128)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4688, file: !4684, line: 46, baseType: !458, size: 64, offset: 256)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1572, file: !257, line: 1305, baseType: !4683, size: 64, offset: 9024)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1572, file: !257, line: 1306, baseType: !475, size: 128, align: 64, offset: 9088)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1572, file: !257, line: 1307, baseType: !1202, size: 256, offset: 9216)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1572, file: !257, line: 1309, baseType: !496, size: 256, offset: 9472)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1572, file: !257, line: 1314, baseType: !27, size: 32, offset: 9728)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1572, file: !257, line: 1317, baseType: !64, size: 32, align: 512, offset: 10240)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1572, file: !257, line: 1318, baseType: !102, size: 128, offset: 10304)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1572, file: !257, line: 1320, baseType: !64, size: 32, offset: 10432)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1572, file: !257, line: 1321, baseType: !102, size: 128, offset: 10496)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1566, file: !1567, line: 73, baseType: !27, size: 32, offset: 128)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1566, file: !1567, line: 74, baseType: !376, size: 64, offset: 192)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1561, file: !1562, line: 10, baseType: !279, size: 64, offset: 64)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "pwd", scope: !1552, file: !1553, line: 15, baseType: !1561, size: 128, offset: 320)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !592, file: !593, line: 1100, baseType: !4711, size: 64, offset: 15168)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !593, line: 1100, flags: DIFlagFwdDecl)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !592, file: !593, line: 1103, baseType: !4714, size: 64, offset: 15232)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !593, line: 53, flags: DIFlagFwdDecl)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !592, file: !593, line: 1107, baseType: !4717, size: 64, offset: 15296)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4719, line: 31, size: 576, elements: !4720)
!4719 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!4720 = !{!4721, !4722, !4725, !4728, !4794, !4795, !4798, !4801, !4802}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4718, file: !4719, line: 32, baseType: !541, size: 32)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !4718, file: !4719, line: 33, baseType: !4723, size: 64, offset: 64)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !4719, line: 9, flags: DIFlagFwdDecl)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !4718, file: !4719, line: 34, baseType: !4726, size: 64, offset: 128)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !4719, line: 10, flags: DIFlagFwdDecl)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !4718, file: !4719, line: 35, baseType: !4729, size: 64, offset: 192)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !4731, line: 8, size: 960, elements: !4732)
!4731 = !DIFile(filename: "fs/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4a5eb1a988fb7c9469e00ad2dc4ac71")
!4732 = !{!4733, !4734, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4730, file: !4731, line: 9, baseType: !1079, size: 192)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4730, file: !4731, line: 10, baseType: !4735, size: 64, offset: 192)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mount", file: !4731, line: 39, size: 2560, elements: !4737)
!4737 = !{!4738, !4739, !4740, !4741, !4742, !4747, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4772, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_hash", scope: !4736, file: !4731, line: 40, baseType: !554, size: 128)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_parent", scope: !4736, file: !4731, line: 41, baseType: !4735, size: 64, offset: 128)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mountpoint", scope: !4736, file: !4731, line: 42, baseType: !279, size: 64, offset: 192)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !4736, file: !4731, line: 43, baseType: !1566, size: 256, offset: 256)
!4742 = !DIDerivedType(tag: DW_TAG_member, scope: !4736, file: !4731, line: 44, baseType: !4743, size: 128, offset: 512)
!4743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4736, file: !4731, line: 44, size: 128, elements: !4744)
!4744 = !{!4745, !4746}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_rcu", scope: !4743, file: !4731, line: 45, baseType: !475, size: 128, align: 64)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_llist", scope: !4743, file: !4731, line: 46, baseType: !469, size: 64)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_pcp", scope: !4736, file: !4731, line: 49, baseType: !4748, size: 64, offset: 640)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_pcp", file: !4731, line: 27, size: 64, elements: !4750)
!4750 = !{!4751, !4752}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_count", scope: !4749, file: !4731, line: 28, baseType: !27, size: 32)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_writers", scope: !4749, file: !4731, line: 29, baseType: !27, size: 32, offset: 32)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mounts", scope: !4736, file: !4731, line: 54, baseType: !102, size: 128, offset: 704)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_child", scope: !4736, file: !4731, line: 55, baseType: !102, size: 128, offset: 832)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_instance", scope: !4736, file: !4731, line: 56, baseType: !102, size: 128, offset: 960)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_devname", scope: !4736, file: !4731, line: 57, baseType: !22, size: 64, offset: 1088)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_list", scope: !4736, file: !4731, line: 58, baseType: !102, size: 128, offset: 1152)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_expire", scope: !4736, file: !4731, line: 59, baseType: !102, size: 128, offset: 1280)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_share", scope: !4736, file: !4731, line: 60, baseType: !102, size: 128, offset: 1408)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_slave_list", scope: !4736, file: !4731, line: 61, baseType: !102, size: 128, offset: 1536)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_slave", scope: !4736, file: !4731, line: 62, baseType: !102, size: 128, offset: 1664)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_master", scope: !4736, file: !4731, line: 63, baseType: !4735, size: 64, offset: 1792)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !4736, file: !4731, line: 64, baseType: !4729, size: 64, offset: 1856)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mp", scope: !4736, file: !4731, line: 65, baseType: !4765, size: 64, offset: 1920)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mountpoint", file: !4731, line: 32, size: 320, elements: !4767)
!4767 = !{!4768, !4769, !4770, !4771}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "m_hash", scope: !4766, file: !4731, line: 33, baseType: !554, size: 128)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "m_dentry", scope: !4766, file: !4731, line: 34, baseType: !279, size: 64, offset: 128)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "m_list", scope: !4766, file: !4731, line: 35, baseType: !550, size: 64, offset: 192)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "m_count", scope: !4766, file: !4731, line: 36, baseType: !27, size: 32, offset: 256)
!4772 = !DIDerivedType(tag: DW_TAG_member, scope: !4736, file: !4731, line: 66, baseType: !4773, size: 128, offset: 1984)
!4773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4736, file: !4731, line: 66, size: 128, elements: !4774)
!4774 = !{!4775, !4776}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mp_list", scope: !4773, file: !4731, line: 67, baseType: !554, size: 128)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_umount", scope: !4773, file: !4731, line: 68, baseType: !554, size: 128)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_umounting", scope: !4736, file: !4731, line: 70, baseType: !102, size: 128, offset: 2112)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsnotify_marks", scope: !4736, file: !4731, line: 72, baseType: !4585, size: 64, offset: 2240)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsnotify_mask", scope: !4736, file: !4731, line: 73, baseType: !314, size: 32, offset: 2304)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4736, file: !4731, line: 75, baseType: !27, size: 32, offset: 2336)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_group_id", scope: !4736, file: !4731, line: 76, baseType: !27, size: 32, offset: 2368)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_expiry_mark", scope: !4736, file: !4731, line: 77, baseType: !27, size: 32, offset: 2400)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_pins", scope: !4736, file: !4731, line: 78, baseType: !550, size: 64, offset: 2432)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_stuck_children", scope: !4736, file: !4731, line: 79, baseType: !550, size: 64, offset: 2496)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4730, file: !4731, line: 16, baseType: !102, size: 128, offset: 256)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "ns_lock", scope: !4730, file: !4731, line: 17, baseType: !64, size: 32, offset: 384)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4730, file: !4731, line: 18, baseType: !1046, size: 64, offset: 448)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4730, file: !4731, line: 19, baseType: !1285, size: 64, offset: 512)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4730, file: !4731, line: 20, baseType: !317, size: 64, offset: 576)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4730, file: !4731, line: 21, baseType: !59, size: 192, offset: 640)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4730, file: !4731, line: 22, baseType: !317, size: 64, offset: 832)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "mounts", scope: !4730, file: !4731, line: 23, baseType: !13, size: 32, offset: 896)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mounts", scope: !4730, file: !4731, line: 24, baseType: !13, size: 32, offset: 928)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !4718, file: !4719, line: 36, baseType: !570, size: 64, offset: 256)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !4718, file: !4719, line: 37, baseType: !4796, size: 64, offset: 320)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1095, line: 34, flags: DIFlagFwdDecl)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !4718, file: !4719, line: 38, baseType: !4799, size: 64, offset: 384)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !4719, line: 38, flags: DIFlagFwdDecl)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !4718, file: !4719, line: 39, baseType: !4799, size: 64, offset: 448)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !4718, file: !4719, line: 40, baseType: !4803, size: 64, offset: 512)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !4805, line: 771, size: 384, elements: !4806)
!4805 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!4806 = !{!4807, !4808, !4809, !4810}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4804, file: !4805, line: 772, baseType: !1079, size: 192)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4804, file: !4805, line: 773, baseType: !1046, size: 64, offset: 192)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4804, file: !4805, line: 774, baseType: !1285, size: 64, offset: 256)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !4804, file: !4805, line: 775, baseType: !4078, size: 64, offset: 320)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !592, file: !593, line: 1110, baseType: !4812, size: 64, offset: 15360)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4814, line: 93, size: 8768, elements: !4815)
!4814 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4815 = !{!4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4864, !4873, !4874, !4876, !4877, !4878, !4881, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4919, !4920, !4927, !4937, !4999, !5000, !5003, !5004, !5005, !5006, !5007, !5008}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4813, file: !4814, line: 94, baseType: !541, size: 32)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4813, file: !4814, line: 95, baseType: !54, size: 32, offset: 32)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4813, file: !4814, line: 96, baseType: !27, size: 32, offset: 64)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4813, file: !4814, line: 97, baseType: !27, size: 32, offset: 96)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4813, file: !4814, line: 98, baseType: !102, size: 128, offset: 128)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4813, file: !4814, line: 100, baseType: !59, size: 192, offset: 256)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4813, file: !4814, line: 103, baseType: !591, size: 64, offset: 448)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4813, file: !4814, line: 106, baseType: !4824, size: 192, offset: 512)
!4824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4825, line: 32, size: 192, elements: !4826)
!4825 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4826 = !{!4827, !4828}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4824, file: !4825, line: 33, baseType: !102, size: 128)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4824, file: !4825, line: 34, baseType: !4829, size: 64, offset: 128)
!4829 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4830, line: 25, baseType: !4831)
!4830 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4830, line: 23, size: 64, elements: !4832)
!4832 = !{!4833}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4831, file: !4830, line: 24, baseType: !837, size: 64)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4813, file: !4814, line: 109, baseType: !550, size: 64, offset: 704)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4813, file: !4814, line: 112, baseType: !27, size: 32, offset: 768)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4813, file: !4814, line: 114, baseType: !27, size: 32, offset: 800)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4813, file: !4814, line: 115, baseType: !591, size: 64, offset: 832)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4813, file: !4814, line: 118, baseType: !27, size: 32, offset: 896)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4813, file: !4814, line: 119, baseType: !13, size: 32, offset: 928)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4813, file: !4814, line: 121, baseType: !4841, size: 64, offset: 960)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4814, line: 80, size: 448, elements: !4843)
!4843 = !{!4844, !4845, !4851}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4842, file: !4814, line: 81, baseType: !54, size: 32)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4842, file: !4814, line: 82, baseType: !4846, size: 128, offset: 64)
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4814, line: 75, size: 128, elements: !4847)
!4847 = !{!4848, !4849}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4846, file: !4814, line: 76, baseType: !591, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4846, file: !4814, line: 77, baseType: !4850, size: 64, offset: 64)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4842, file: !4814, line: 83, baseType: !1241, size: 256, offset: 192)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4813, file: !4814, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4813, file: !4814, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4813, file: !4814, line: 138, baseType: !13, size: 32, offset: 1056)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4813, file: !4814, line: 139, baseType: !102, size: 128, offset: 1088)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4813, file: !4814, line: 142, baseType: !710, size: 512, offset: 1216)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4813, file: !4814, line: 143, baseType: !718, size: 64, offset: 1728)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4813, file: !4814, line: 150, baseType: !4859, size: 256, offset: 1792)
!4859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4860, size: 256, elements: !2548)
!4860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4814, line: 38, size: 128, elements: !4861)
!4861 = !{!4862, !4863}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4860, file: !4814, line: 39, baseType: !317, size: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4860, file: !4814, line: 40, baseType: !317, size: 64, offset: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4813, file: !4814, line: 156, baseType: !4865, size: 192, offset: 2048)
!4865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4814, line: 66, size: 192, elements: !4866)
!4866 = !{!4867}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4865, file: !4814, line: 67, baseType: !4868, size: 192)
!4868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4814, line: 47, size: 192, elements: !4869)
!4869 = !{!4870, !4871, !4872}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4868, file: !4814, line: 48, baseType: !490, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4868, file: !4814, line: 49, baseType: !490, size: 64, offset: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4868, file: !4814, line: 50, baseType: !490, size: 64, offset: 128)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4813, file: !4814, line: 160, baseType: !1442, size: 640, offset: 2240)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4813, file: !4814, line: 163, baseType: !4875, size: 256, offset: 2880)
!4875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 256, elements: !559)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4813, file: !4814, line: 169, baseType: !537, size: 64, offset: 3136)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4813, file: !4814, line: 172, baseType: !27, size: 32, offset: 3200)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4813, file: !4814, line: 174, baseType: !4879, size: 64, offset: 3264)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4814, line: 174, flags: DIFlagFwdDecl)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4813, file: !4814, line: 185, baseType: !4882, size: 64, offset: 3328)
!4882 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !286, line: 860, baseType: !4883)
!4883 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !286, line: 853, size: 64, elements: !4884)
!4884 = !{!4885, !4886}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4883, file: !286, line: 858, baseType: !285, size: 32)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4883, file: !286, line: 859, baseType: !64, size: 32, offset: 32)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4813, file: !4814, line: 186, baseType: !317, size: 64, offset: 3392)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4813, file: !4814, line: 186, baseType: !317, size: 64, offset: 3456)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4813, file: !4814, line: 186, baseType: !317, size: 64, offset: 3520)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4813, file: !4814, line: 186, baseType: !317, size: 64, offset: 3584)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4813, file: !4814, line: 187, baseType: !317, size: 64, offset: 3648)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4813, file: !4814, line: 188, baseType: !317, size: 64, offset: 3712)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4813, file: !4814, line: 189, baseType: !1430, size: 192, offset: 3776)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4813, file: !4814, line: 190, baseType: !44, size: 64, offset: 3968)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4813, file: !4814, line: 190, baseType: !44, size: 64, offset: 4032)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4813, file: !4814, line: 190, baseType: !44, size: 64, offset: 4096)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4813, file: !4814, line: 190, baseType: !44, size: 64, offset: 4160)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4813, file: !4814, line: 191, baseType: !44, size: 64, offset: 4224)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4813, file: !4814, line: 191, baseType: !44, size: 64, offset: 4288)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4813, file: !4814, line: 191, baseType: !44, size: 64, offset: 4352)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4813, file: !4814, line: 191, baseType: !44, size: 64, offset: 4416)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4813, file: !4814, line: 192, baseType: !44, size: 64, offset: 4480)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4813, file: !4814, line: 192, baseType: !44, size: 64, offset: 4544)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4813, file: !4814, line: 192, baseType: !44, size: 64, offset: 4608)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4813, file: !4814, line: 192, baseType: !44, size: 64, offset: 4672)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4813, file: !4814, line: 193, baseType: !44, size: 64, offset: 4736)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4813, file: !4814, line: 193, baseType: !44, size: 64, offset: 4800)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4813, file: !4814, line: 194, baseType: !4909, size: 448, offset: 4864)
!4909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4910, line: 12, size: 448, elements: !4911)
!4910 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4911 = !{!4912, !4913, !4914, !4915, !4916, !4917, !4918}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4909, file: !4910, line: 15, baseType: !317, size: 64)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4909, file: !4910, line: 17, baseType: !317, size: 64, offset: 64)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4909, file: !4910, line: 19, baseType: !317, size: 64, offset: 128)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4909, file: !4910, line: 21, baseType: !317, size: 64, offset: 192)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4909, file: !4910, line: 29, baseType: !317, size: 64, offset: 256)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4909, file: !4910, line: 35, baseType: !317, size: 64, offset: 320)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4909, file: !4910, line: 44, baseType: !317, size: 64, offset: 384)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4813, file: !4814, line: 202, baseType: !319, size: 64, offset: 5312)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4813, file: !4814, line: 213, baseType: !4921, size: 2048, offset: 5376)
!4921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4922, size: 2048, elements: !1533)
!4922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4923, line: 43, size: 128, elements: !4924)
!4923 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4924 = !{!4925, !4926}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4922, file: !4923, line: 44, baseType: !43, size: 64)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4922, file: !4923, line: 45, baseType: !43, size: 64, offset: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4813, file: !4814, line: 216, baseType: !4928, size: 448, offset: 7424)
!4928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4814, line: 30, size: 448, elements: !4929)
!4929 = !{!4930, !4931, !4932, !4933, !4934, !4935, !4936}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4928, file: !4814, line: 31, baseType: !27, size: 32)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4928, file: !4814, line: 32, baseType: !458, size: 64, offset: 64)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4928, file: !4814, line: 33, baseType: !44, size: 64, offset: 128)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4928, file: !4814, line: 34, baseType: !317, size: 64, offset: 192)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4928, file: !4814, line: 34, baseType: !317, size: 64, offset: 256)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4928, file: !4814, line: 35, baseType: !44, size: 64, offset: 320)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4928, file: !4814, line: 35, baseType: !44, size: 64, offset: 384)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4813, file: !4814, line: 219, baseType: !4938, size: 64, offset: 7872)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4940, line: 41, size: 3456, elements: !4941)
!4940 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4941 = !{!4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4939, file: !4940, line: 47, baseType: !99, size: 16)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4939, file: !4940, line: 48, baseType: !314, size: 32, offset: 32)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4939, file: !4940, line: 54, baseType: !90, size: 8, offset: 64)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4939, file: !4940, line: 55, baseType: !90, size: 8, offset: 72)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4939, file: !4940, line: 73, baseType: !318, size: 64, align: 64, offset: 128)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4939, file: !4940, line: 74, baseType: !318, size: 64, offset: 192)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4939, file: !4940, line: 81, baseType: !318, size: 64, offset: 256)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4939, file: !4940, line: 82, baseType: !318, size: 64, offset: 320)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4939, file: !4940, line: 85, baseType: !318, size: 64, offset: 384)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4939, file: !4940, line: 86, baseType: !318, size: 64, offset: 448)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4939, file: !4940, line: 94, baseType: !318, size: 64, offset: 512)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4939, file: !4940, line: 102, baseType: !318, size: 64, offset: 576)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4939, file: !4940, line: 107, baseType: !4588, size: 256, offset: 640)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4939, file: !4940, line: 108, baseType: !90, size: 8, align: 64, offset: 896)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4939, file: !4940, line: 110, baseType: !4957, size: 24, offset: 904)
!4957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 24, elements: !533)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4939, file: !4940, line: 111, baseType: !314, size: 32, align: 64, offset: 960)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4939, file: !4940, line: 113, baseType: !314, size: 32, offset: 992)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4939, file: !4940, line: 114, baseType: !314, size: 32, offset: 1024)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4939, file: !4940, line: 115, baseType: !314, size: 32, offset: 1056)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4939, file: !4940, line: 117, baseType: !314, size: 32, offset: 1088)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4939, file: !4940, line: 118, baseType: !318, size: 64, align: 64, offset: 1152)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4939, file: !4940, line: 120, baseType: !318, size: 64, offset: 1216)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4939, file: !4940, line: 121, baseType: !318, size: 64, offset: 1280)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4939, file: !4940, line: 122, baseType: !318, size: 64, offset: 1344)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4939, file: !4940, line: 123, baseType: !318, size: 64, offset: 1408)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4939, file: !4940, line: 133, baseType: !318, size: 64, offset: 1472)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4939, file: !4940, line: 137, baseType: !318, size: 64, offset: 1536)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4939, file: !4940, line: 142, baseType: !318, size: 64, offset: 1600)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4939, file: !4940, line: 143, baseType: !318, size: 64, offset: 1664)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4939, file: !4940, line: 146, baseType: !318, size: 64, offset: 1728)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4939, file: !4940, line: 147, baseType: !318, size: 64, offset: 1792)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4939, file: !4940, line: 148, baseType: !318, size: 64, offset: 1856)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4939, file: !4940, line: 149, baseType: !318, size: 64, offset: 1920)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4939, file: !4940, line: 154, baseType: !318, size: 64, offset: 1984)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4939, file: !4940, line: 155, baseType: !318, size: 64, offset: 2048)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4939, file: !4940, line: 156, baseType: !318, size: 64, offset: 2112)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4939, file: !4940, line: 158, baseType: !318, size: 64, offset: 2176)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4939, file: !4940, line: 159, baseType: !318, size: 64, offset: 2240)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4939, file: !4940, line: 162, baseType: !318, size: 64, offset: 2304)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4939, file: !4940, line: 163, baseType: !318, size: 64, offset: 2368)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4939, file: !4940, line: 164, baseType: !318, size: 64, offset: 2432)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4939, file: !4940, line: 167, baseType: !318, size: 64, offset: 2496)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4939, file: !4940, line: 168, baseType: !318, size: 64, offset: 2560)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4939, file: !4940, line: 171, baseType: !318, size: 64, offset: 2624)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4939, file: !4940, line: 172, baseType: !318, size: 64, offset: 2688)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4939, file: !4940, line: 175, baseType: !318, size: 64, offset: 2752)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4939, file: !4940, line: 178, baseType: !318, size: 64, offset: 2816)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4939, file: !4940, line: 179, baseType: !318, size: 64, offset: 2880)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4939, file: !4940, line: 182, baseType: !314, size: 32, offset: 2944)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4939, file: !4940, line: 186, baseType: !318, size: 64, align: 64, offset: 3008)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4939, file: !4940, line: 194, baseType: !318, size: 64, offset: 3072)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4939, file: !4940, line: 195, baseType: !318, size: 64, offset: 3136)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4939, file: !4940, line: 199, baseType: !318, size: 64, offset: 3200)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4939, file: !4940, line: 200, baseType: !318, size: 64, offset: 3264)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4939, file: !4940, line: 203, baseType: !318, size: 64, offset: 3328)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4939, file: !4940, line: 204, baseType: !318, size: 64, offset: 3392)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4813, file: !4814, line: 222, baseType: !13, size: 32, offset: 7936)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4813, file: !4814, line: 223, baseType: !5001, size: 64, offset: 8000)
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4814, line: 223, flags: DIFlagFwdDecl)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4813, file: !4814, line: 230, baseType: !383, size: 8, offset: 8064)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4813, file: !4814, line: 231, baseType: !1039, size: 16, offset: 8080)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4813, file: !4814, line: 232, baseType: !1039, size: 16, offset: 8096)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4813, file: !4814, line: 234, baseType: !886, size: 64, offset: 8128)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4813, file: !4814, line: 237, baseType: !496, size: 256, offset: 8192)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4813, file: !4814, line: 243, baseType: !941, size: 320, offset: 8448)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !592, file: !593, line: 1111, baseType: !5010, size: 64, offset: 15424)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4814, line: 20, size: 16640, elements: !5012)
!5012 = !{!5013, !5014, !5015, !5016}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5011, file: !4814, line: 21, baseType: !64, size: 32)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5011, file: !4814, line: 22, baseType: !541, size: 32, offset: 32)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5011, file: !4814, line: 23, baseType: !59, size: 192, offset: 64)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5011, file: !4814, line: 24, baseType: !5017, size: 16384, offset: 256)
!5017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5018, size: 16384, elements: !1660)
!5018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4825, line: 51, size: 256, elements: !5019)
!5019 = !{!5020}
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5018, file: !4825, line: 52, baseType: !5021, size: 256)
!5021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4825, line: 37, size: 256, elements: !5022)
!5022 = !{!5023, !5030, !5031, !5035}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5021, file: !4825, line: 39, baseType: !5024, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5025, line: 83, baseType: !5026)
!5025 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5025, line: 82, baseType: !5028)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{null, !27}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5021, file: !4825, line: 40, baseType: !44, size: 64, offset: 64)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5021, file: !4825, line: 46, baseType: !5032, size: 64, offset: 128)
!5032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5025, line: 86, baseType: !5033)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5025, line: 85, baseType: !2831)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5021, file: !4825, line: 48, baseType: !4829, size: 64, offset: 192)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !592, file: !593, line: 1112, baseType: !4829, size: 64, offset: 15488)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !592, file: !593, line: 1113, baseType: !4829, size: 64, offset: 15552)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !592, file: !593, line: 1115, baseType: !4829, size: 64, offset: 15616)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !592, file: !593, line: 1116, baseType: !4824, size: 192, offset: 15680)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !592, file: !593, line: 1117, baseType: !44, size: 64, offset: 15872)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !592, file: !593, line: 1118, baseType: !40, size: 64, offset: 15936)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !592, file: !593, line: 1119, baseType: !13, size: 32, offset: 16000)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !592, file: !593, line: 1121, baseType: !478, size: 64, offset: 16064)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !592, file: !593, line: 1125, baseType: !5045, size: 64, offset: 16128)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5046 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !593, line: 43, flags: DIFlagFwdDecl)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !592, file: !593, line: 1127, baseType: !330, size: 32, offset: 16192)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !592, file: !593, line: 1128, baseType: !13, size: 32, offset: 16224)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !592, file: !593, line: 1130, baseType: !5050, size: 128, offset: 16256)
!5050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5051, line: 37, size: 128, elements: !5052)
!5051 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5052 = !{!5053, !5054, !5055}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5050, file: !5051, line: 38, baseType: !27, size: 32)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5050, file: !5051, line: 39, baseType: !54, size: 32, offset: 32)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5050, file: !5051, line: 40, baseType: !5056, size: 64, offset: 64)
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5051, line: 24, flags: DIFlagFwdDecl)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !592, file: !593, line: 1131, baseType: !5059, size: 256, offset: 16384)
!5059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5060, line: 12, size: 256, elements: !5061)
!5060 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5061 = !{!5062, !5063, !5064, !5065}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5059, file: !5060, line: 13, baseType: !389, size: 64)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5059, file: !5060, line: 14, baseType: !44, size: 64, offset: 64)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5059, file: !5060, line: 15, baseType: !44, size: 64, offset: 128)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5059, file: !5060, line: 16, baseType: !383, size: 8, offset: 192)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !592, file: !593, line: 1134, baseType: !317, size: 64, offset: 16640)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !592, file: !593, line: 1135, baseType: !317, size: 64, offset: 16704)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !592, file: !593, line: 1138, baseType: !64, size: 32, offset: 16768)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !592, file: !593, line: 1141, baseType: !501, size: 32, offset: 16800)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !592, file: !593, line: 1143, baseType: !5071, size: 64, offset: 16832)
!5071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !593, line: 735, size: 64, elements: !5072)
!5072 = !{!5073}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5071, file: !593, line: 736, baseType: !5074, size: 64)
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !592, file: !593, line: 1147, baseType: !769, size: 128, offset: 16896)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !592, file: !593, line: 1149, baseType: !591, size: 64, offset: 17024)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !592, file: !593, line: 1151, baseType: !5078, size: 64, offset: 17088)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !593, line: 1151, flags: DIFlagFwdDecl)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !592, file: !593, line: 1188, baseType: !25, size: 64, offset: 17152)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !592, file: !593, line: 1191, baseType: !5082, size: 64, offset: 17216)
!5082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5083, size: 64)
!5083 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !593, line: 44, flags: DIFlagFwdDecl)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !592, file: !593, line: 1194, baseType: !5085, size: 64, offset: 17280)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !593, line: 45, flags: DIFlagFwdDecl)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !592, file: !593, line: 1197, baseType: !5088, size: 64, offset: 17344)
!5088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5089, size: 64)
!5089 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !593, line: 61, flags: DIFlagFwdDecl)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !592, file: !593, line: 1199, baseType: !5091, size: 64, offset: 17408)
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5093, line: 99, size: 128, elements: !5094)
!5093 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5094 = !{!5095, !5096, !5097}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5092, file: !5093, line: 100, baseType: !488, size: 64)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5092, file: !5093, line: 101, baseType: !54, size: 32, offset: 64)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5092, file: !5093, line: 103, baseType: !31, size: 16, offset: 96)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !592, file: !593, line: 1202, baseType: !5099, size: 64, offset: 17472)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !593, line: 48, flags: DIFlagFwdDecl)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !592, file: !593, line: 1205, baseType: !44, size: 64, offset: 17536)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !592, file: !593, line: 1206, baseType: !5103, size: 64, offset: 17600)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4825, line: 14, baseType: !5105)
!5105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4825, line: 12, size: 384, elements: !5106)
!5106 = !{!5107}
!5107 = !DIDerivedType(tag: DW_TAG_member, scope: !5105, file: !4825, line: 13, baseType: !5108, size: 384)
!5108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5105, file: !4825, line: 13, size: 384, elements: !5109)
!5109 = !{!5110, !5111, !5112, !5113}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5108, file: !4825, line: 13, baseType: !27, size: 32)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5108, file: !4825, line: 13, baseType: !27, size: 32, offset: 32)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5108, file: !4825, line: 13, baseType: !27, size: 32, offset: 64)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5108, file: !4825, line: 13, baseType: !5114, size: 256, offset: 128)
!5114 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5115, line: 37, size: 256, elements: !5116)
!5115 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5116 = !{!5117, !5122, !5135, !5141, !5150, !5177, !5182}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5114, file: !5115, line: 42, baseType: !5118, size: 64)
!5118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5114, file: !5115, line: 39, size: 64, elements: !5119)
!5119 = !{!5120, !5121}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5118, file: !5115, line: 40, baseType: !1406, size: 32)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5118, file: !5115, line: 41, baseType: !336, size: 32, offset: 32)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5114, file: !5115, line: 50, baseType: !5123, size: 192)
!5123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5114, file: !5115, line: 45, size: 192, elements: !5124)
!5124 = !{!5125, !5127, !5128, !5134}
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5123, file: !5115, line: 46, baseType: !5126, size: 32)
!5126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !42, line: 95, baseType: !27)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5123, file: !5115, line: 47, baseType: !27, size: 32, offset: 32)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5123, file: !5115, line: 48, baseType: !5129, size: 64, offset: 64)
!5129 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5115, line: 11, baseType: !5130)
!5130 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5115, line: 8, size: 64, elements: !5131)
!5131 = !{!5132, !5133}
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5130, file: !5115, line: 9, baseType: !27, size: 32)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5130, file: !5115, line: 10, baseType: !25, size: 64)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5123, file: !5115, line: 49, baseType: !27, size: 32, offset: 128)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5114, file: !5115, line: 57, baseType: !5136, size: 128)
!5136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5114, file: !5115, line: 53, size: 128, elements: !5137)
!5137 = !{!5138, !5139, !5140}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5136, file: !5115, line: 54, baseType: !1406, size: 32)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5136, file: !5115, line: 55, baseType: !336, size: 32, offset: 32)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5136, file: !5115, line: 56, baseType: !5129, size: 64, offset: 64)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5114, file: !5115, line: 66, baseType: !5142, size: 256)
!5142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5114, file: !5115, line: 60, size: 256, elements: !5143)
!5143 = !{!5144, !5145, !5146, !5147, !5149}
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5142, file: !5115, line: 61, baseType: !1406, size: 32)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5142, file: !5115, line: 62, baseType: !336, size: 32, offset: 32)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5142, file: !5115, line: 63, baseType: !27, size: 32, offset: 64)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5142, file: !5115, line: 64, baseType: !5148, size: 64, offset: 128)
!5148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !42, line: 94, baseType: !1689)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5142, file: !5115, line: 65, baseType: !5148, size: 64, offset: 192)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5114, file: !5115, line: 105, baseType: !5151, size: 256)
!5151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5114, file: !5115, line: 69, size: 256, elements: !5152)
!5152 = !{!5153, !5154}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5151, file: !5115, line: 70, baseType: !25, size: 64)
!5154 = !DIDerivedType(tag: DW_TAG_member, scope: !5151, file: !5115, line: 79, baseType: !5155, size: 192, offset: 64)
!5155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5151, file: !5115, line: 79, size: 192, elements: !5156)
!5156 = !{!5157, !5158, !5159, !5166, !5171}
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5155, file: !5115, line: 81, baseType: !27, size: 32)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5155, file: !5115, line: 86, baseType: !1039, size: 16)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5155, file: !5115, line: 92, baseType: !5160, size: 192)
!5160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5155, file: !5115, line: 88, size: 192, elements: !5161)
!5161 = !{!5162, !5164, !5165}
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5160, file: !5115, line: 89, baseType: !5163, size: 64)
!5163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !753)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5160, file: !5115, line: 90, baseType: !25, size: 64, offset: 64)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5160, file: !5115, line: 91, baseType: !25, size: 64, offset: 128)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5155, file: !5115, line: 97, baseType: !5167, size: 96)
!5167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5155, file: !5115, line: 94, size: 96, elements: !5168)
!5168 = !{!5169, !5170}
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5167, file: !5115, line: 95, baseType: !5163, size: 64)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5167, file: !5115, line: 96, baseType: !314, size: 32, offset: 64)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5155, file: !5115, line: 103, baseType: !5172, size: 128)
!5172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5155, file: !5115, line: 99, size: 128, elements: !5173)
!5173 = !{!5174, !5175, !5176}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5172, file: !5115, line: 100, baseType: !44, size: 64)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5172, file: !5115, line: 101, baseType: !314, size: 32, offset: 64)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5172, file: !5115, line: 102, baseType: !314, size: 32, offset: 96)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5114, file: !5115, line: 111, baseType: !5178, size: 128)
!5178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5114, file: !5115, line: 108, size: 128, elements: !5179)
!5179 = !{!5180, !5181}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5178, file: !5115, line: 109, baseType: !458, size: 64)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5178, file: !5115, line: 110, baseType: !27, size: 32, offset: 64)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5114, file: !5115, line: 118, baseType: !5183, size: 128)
!5183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5114, file: !5115, line: 114, size: 128, elements: !5184)
!5184 = !{!5185, !5186, !5187}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5183, file: !5115, line: 115, baseType: !25, size: 64)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5183, file: !5115, line: 116, baseType: !27, size: 32, offset: 64)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5183, file: !5115, line: 117, baseType: !13, size: 32, offset: 96)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !592, file: !593, line: 1208, baseType: !4909, size: 448, offset: 17664)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !592, file: !593, line: 1215, baseType: !317, size: 64, offset: 18112)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !592, file: !593, line: 1217, baseType: !317, size: 64, offset: 18176)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !592, file: !593, line: 1219, baseType: !317, size: 64, offset: 18240)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !592, file: !593, line: 1223, baseType: !5193, size: 64, offset: 18304)
!5193 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5194, line: 99, baseType: !5195)
!5194 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5194, line: 99, size: 64, elements: !5196)
!5196 = !{!5197}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5195, file: !5194, line: 99, baseType: !837, size: 64)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !592, file: !593, line: 1225, baseType: !285, size: 32, offset: 18368)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !592, file: !593, line: 1226, baseType: !27, size: 32, offset: 18400)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !592, file: !593, line: 1227, baseType: !27, size: 32, offset: 18432)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !592, file: !593, line: 1231, baseType: !4078, size: 64, offset: 18496)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !592, file: !593, line: 1233, baseType: !102, size: 128, offset: 18560)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !592, file: !593, line: 1240, baseType: !5204, size: 64, offset: 18688)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !5206, line: 60, flags: DIFlagFwdDecl)
!5206 = !DIFile(filename: "./include/linux/syscalls.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dab99c2b3f99363182fad69da25bf5f3")
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !592, file: !593, line: 1242, baseType: !5208, size: 64, offset: 18752)
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5209, size: 64)
!5209 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !593, line: 1242, flags: DIFlagFwdDecl)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !592, file: !593, line: 1244, baseType: !102, size: 128, offset: 18816)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !592, file: !593, line: 1245, baseType: !5212, size: 64, offset: 18944)
!5212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5213, size: 64)
!5213 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !593, line: 51, flags: DIFlagFwdDecl)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !592, file: !593, line: 1246, baseType: !496, size: 256, offset: 19008)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !592, file: !593, line: 1247, baseType: !13, size: 32, offset: 19264)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !592, file: !593, line: 1250, baseType: !3330, size: 64, offset: 19328)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !592, file: !593, line: 1251, baseType: !496, size: 256, offset: 19392)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !592, file: !593, line: 1252, baseType: !102, size: 128, offset: 19648)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !592, file: !593, line: 1259, baseType: !1945, size: 64, offset: 19776)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !592, file: !593, line: 1260, baseType: !1039, size: 16, offset: 19840)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !592, file: !593, line: 1261, baseType: !1039, size: 16, offset: 19856)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !592, file: !593, line: 1314, baseType: !5223, size: 64, offset: 19904)
!5223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5224, size: 64)
!5224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5225, line: 62, size: 256, align: 256, elements: !5226)
!5225 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5226 = !{!5227, !5228, !5229, !5230, !5231, !5232, !5233}
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5224, file: !5225, line: 75, baseType: !314, size: 32)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5224, file: !5225, line: 90, baseType: !314, size: 32, offset: 32)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5224, file: !5225, line: 112, baseType: !318, size: 64, offset: 64)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5224, file: !5225, line: 132, baseType: !314, size: 32, offset: 128)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5224, file: !5225, line: 140, baseType: !314, size: 32, offset: 160)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5224, file: !5225, line: 149, baseType: !314, size: 32, offset: 192)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5224, file: !5225, line: 154, baseType: !5234, offset: 224)
!5234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1318)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !592, file: !593, line: 1315, baseType: !313, size: 32, offset: 19968)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !592, file: !593, line: 1316, baseType: !313, size: 32, offset: 20000)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !592, file: !593, line: 1321, baseType: !44, size: 64, offset: 20032)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !592, file: !593, line: 1325, baseType: !27, size: 32, offset: 20096)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !592, file: !593, line: 1326, baseType: !27, size: 32, offset: 20128)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !592, file: !593, line: 1327, baseType: !27, size: 32, offset: 20160)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !592, file: !593, line: 1328, baseType: !27, size: 32, offset: 20192)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !592, file: !593, line: 1329, baseType: !475, size: 128, align: 64, offset: 20224)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !592, file: !593, line: 1332, baseType: !5244, size: 128, offset: 20352)
!5244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5245, line: 51, size: 128, elements: !5246)
!5245 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5246 = !{!5247, !5252, !5253}
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5244, file: !5245, line: 60, baseType: !5248, size: 64)
!5248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5249, line: 7, size: 64, elements: !5250)
!5249 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5250 = !{!5251}
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5248, file: !5249, line: 12, baseType: !834, size: 64)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5244, file: !5245, line: 63, baseType: !383, size: 8, offset: 64)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5244, file: !5245, line: 70, baseType: !383, size: 8, offset: 72)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !592, file: !593, line: 1335, baseType: !5255, size: 64, offset: 20480)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !593, line: 59, flags: DIFlagFwdDecl)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !592, file: !593, line: 1337, baseType: !5258, size: 128, offset: 20544)
!5258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5245, line: 39, size: 128, elements: !5259)
!5259 = !{!5260, !5261, !5262}
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5258, file: !5245, line: 40, baseType: !1744, size: 64)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5258, file: !5245, line: 42, baseType: !314, size: 32, offset: 64)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5258, file: !5245, line: 43, baseType: !314, size: 32, offset: 96)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !592, file: !593, line: 1340, baseType: !5264, size: 64, offset: 20672)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !593, line: 69, flags: DIFlagFwdDecl)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !592, file: !593, line: 1351, baseType: !27, size: 32, offset: 20736)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !592, file: !593, line: 1352, baseType: !27, size: 32, offset: 20768)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !592, file: !593, line: 1354, baseType: !44, size: 64, offset: 20800)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !592, file: !593, line: 1364, baseType: !317, size: 64, offset: 20864)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !592, file: !593, line: 1365, baseType: !317, size: 64, offset: 20928)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !592, file: !593, line: 1412, baseType: !44, size: 64, offset: 20992)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !592, file: !593, line: 1453, baseType: !5273, size: 64, offset: 21056)
!5273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5274, size: 64)
!5274 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !593, line: 1453, flags: DIFlagFwdDecl)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !592, file: !593, line: 1457, baseType: !5276, size: 64, offset: 21120)
!5276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5277, size: 64)
!5277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !150, line: 61, size: 576, elements: !5278)
!5278 = !{!5279, !5280, !5299, !5302, !5303, !5336, !5346}
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5277, file: !150, line: 62, baseType: !149, size: 32)
!5280 = !DIDerivedType(tag: DW_TAG_member, scope: !5277, file: !150, line: 64, baseType: !5281, size: 192, offset: 64)
!5281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5277, file: !150, line: 64, size: 192, elements: !5282)
!5282 = !{!5283, !5294}
!5283 = !DIDerivedType(tag: DW_TAG_member, scope: !5281, file: !150, line: 65, baseType: !5284, size: 192)
!5284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5281, file: !150, line: 65, size: 192, elements: !5285)
!5285 = !{!5286, !5293}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5284, file: !150, line: 66, baseType: !5287, size: 128)
!5287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5288, line: 50, size: 128, elements: !5289)
!5288 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5289 = !{!5290, !5291, !5292}
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5287, file: !5288, line: 52, baseType: !44, size: 64)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5287, file: !5288, line: 54, baseType: !13, size: 32, offset: 64)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5287, file: !5288, line: 55, baseType: !13, size: 32, offset: 96)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5284, file: !150, line: 67, baseType: !44, size: 64, offset: 128)
!5294 = !DIDerivedType(tag: DW_TAG_member, scope: !5281, file: !150, line: 70, baseType: !5295, size: 192)
!5295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5281, file: !150, line: 70, size: 192, elements: !5296)
!5296 = !{!5297, !5298}
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5295, file: !150, line: 71, baseType: !475, size: 128, align: 64)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5295, file: !150, line: 72, baseType: !44, size: 64, offset: 128)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5277, file: !150, line: 76, baseType: !5300, size: 64, offset: 256)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !150, line: 76, flags: DIFlagFwdDecl)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5277, file: !150, line: 77, baseType: !44, size: 64, offset: 320)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5277, file: !150, line: 79, baseType: !5304, size: 64, offset: 384)
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5288, line: 25, size: 256, elements: !5306)
!5306 = !{!5307, !5313, !5317}
!5307 = !DIDerivedType(tag: DW_TAG_member, scope: !5305, file: !5288, line: 26, baseType: !5308, size: 128)
!5308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5305, file: !5288, line: 26, size: 128, elements: !5309)
!5309 = !{!5310, !5312}
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5308, file: !5288, line: 27, baseType: !5311, size: 128)
!5311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !1533)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5308, file: !5288, line: 28, baseType: !5311, size: 128)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5305, file: !5288, line: 31, baseType: !5314, size: 64, offset: 128)
!5314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5315, size: 64)
!5315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5316)
!5316 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5288, line: 23, flags: DIFlagFwdDecl)
!5317 = !DIDerivedType(tag: DW_TAG_member, scope: !5305, file: !5288, line: 33, baseType: !5318, size: 64, offset: 192)
!5318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5305, file: !5288, line: 33, size: 64, elements: !5319)
!5319 = !{!5320, !5326, !5331}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5318, file: !5288, line: 38, baseType: !5321, size: 64)
!5321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5318, file: !5288, line: 34, size: 64, elements: !5322)
!5322 = !{!5323, !5324, !5325}
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5321, file: !5288, line: 35, baseType: !987, size: 32)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5321, file: !5288, line: 36, baseType: !88, size: 8, offset: 32)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5321, file: !5288, line: 37, baseType: !88, size: 8, offset: 40)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5318, file: !5288, line: 42, baseType: !5327, size: 16)
!5327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5318, file: !5288, line: 39, size: 16, elements: !5328)
!5328 = !{!5329, !5330}
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5327, file: !5288, line: 40, baseType: !88, size: 8)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5327, file: !5288, line: 41, baseType: !88, size: 8, offset: 8)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5318, file: !5288, line: 46, baseType: !5332, size: 16)
!5332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5318, file: !5288, line: 43, size: 16, elements: !5333)
!5333 = !{!5334, !5335}
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5332, file: !5288, line: 44, baseType: !88, size: 8)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5332, file: !5288, line: 45, baseType: !88, size: 8, offset: 8)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5277, file: !150, line: 81, baseType: !5337, size: 64, offset: 448)
!5337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5338, size: 64)
!5338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !150, line: 85, size: 384, elements: !5339)
!5339 = !{!5340, !5341, !5342, !5343, !5344, !5345}
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5338, file: !150, line: 86, baseType: !5300, size: 64)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5338, file: !150, line: 87, baseType: !44, size: 64, offset: 64)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5338, file: !150, line: 88, baseType: !44, size: 64, offset: 128)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5338, file: !150, line: 89, baseType: !44, size: 64, offset: 192)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5338, file: !150, line: 90, baseType: !383, size: 8, offset: 256)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5338, file: !150, line: 92, baseType: !5337, size: 64, offset: 320)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5277, file: !150, line: 82, baseType: !13, size: 32, offset: 512)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !592, file: !593, line: 1463, baseType: !5348, offset: 21184)
!5348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !593, line: 739, elements: !907)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !592, file: !593, line: 1470, baseType: !475, size: 128, align: 64, offset: 21184)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !592, file: !593, line: 1471, baseType: !541, size: 32, offset: 21312)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !592, file: !593, line: 1472, baseType: !27, size: 32, offset: 21344)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !592, file: !593, line: 1474, baseType: !591, size: 64, offset: 21376)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !592, file: !593, line: 1475, baseType: !2656, size: 320, offset: 21440)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !592, file: !593, line: 1478, baseType: !5355, size: 64, offset: 21760)
!5355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5356, size: 64)
!5356 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !593, line: 1478, flags: DIFlagFwdDecl)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !592, file: !593, line: 1482, baseType: !541, size: 32, offset: 21824)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !592, file: !593, line: 1489, baseType: !25, size: 64, offset: 21888)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !592, file: !593, line: 1504, baseType: !25, size: 64, offset: 21952)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !592, file: !593, line: 1505, baseType: !318, size: 64, offset: 22016)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !592, file: !593, line: 1506, baseType: !317, size: 64, offset: 22080)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !592, file: !593, line: 1507, baseType: !318, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !592, file: !593, line: 1508, baseType: !318, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !592, file: !593, line: 1509, baseType: !318, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !592, file: !593, line: 1510, baseType: !475, size: 128, align: 64, offset: 22208)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !592, file: !593, line: 1511, baseType: !27, size: 32, offset: 22336)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !592, file: !593, line: 1515, baseType: !5368, size: 64, offset: 22400)
!5368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !470, line: 56, size: 64, elements: !5369)
!5369 = !{!5370}
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5368, file: !470, line: 57, baseType: !473, size: 64)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !592, file: !593, line: 1518, baseType: !5368, size: 64, offset: 22464)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !592, file: !593, line: 1528, baseType: !475, size: 128, align: 64, offset: 22528)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !592, file: !593, line: 1552, baseType: !5374, size: 35328, offset: 23040)
!5374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5375, line: 430, size: 35328, elements: !5376)
!5375 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5376 = !{!5377, !5395, !5396, !5397, !5398, !5399, !5400, !5401, !5402, !5404, !5405, !5406, !5407, !5408, !5409, !5412, !5413, !5414, !5415}
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5374, file: !5375, line: 432, baseType: !5378, size: 192)
!5378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5379, size: 192, elements: !533)
!5379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5380, line: 16, size: 64, elements: !5381)
!5380 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5381 = !{!5382, !5383, !5384, !5385, !5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5394}
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5379, file: !5380, line: 17, baseType: !98, size: 16)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5379, file: !5380, line: 18, baseType: !98, size: 16, offset: 16)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5379, file: !5380, line: 19, baseType: !98, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5379, file: !5380, line: 19, baseType: !98, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5379, file: !5380, line: 19, baseType: !98, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5379, file: !5380, line: 19, baseType: !98, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5379, file: !5380, line: 19, baseType: !98, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5379, file: !5380, line: 20, baseType: !98, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5379, file: !5380, line: 20, baseType: !98, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5379, file: !5380, line: 20, baseType: !98, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5379, file: !5380, line: 20, baseType: !98, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5379, file: !5380, line: 20, baseType: !98, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5379, file: !5380, line: 20, baseType: !98, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5374, file: !5375, line: 436, baseType: !44, size: 64, offset: 192)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5374, file: !5375, line: 440, baseType: !31, size: 16, offset: 256)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5374, file: !5375, line: 441, baseType: !31, size: 16, offset: 272)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5374, file: !5375, line: 442, baseType: !31, size: 16, offset: 288)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5374, file: !5375, line: 443, baseType: !31, size: 16, offset: 304)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5374, file: !5375, line: 447, baseType: !44, size: 64, offset: 320)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5374, file: !5375, line: 448, baseType: !44, size: 64, offset: 384)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5374, file: !5375, line: 459, baseType: !5403, size: 256, offset: 448)
!5403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2942, size: 256, elements: !559)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5374, file: !5375, line: 461, baseType: !44, size: 64, offset: 704)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5374, file: !5375, line: 463, baseType: !44, size: 64, offset: 768)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5374, file: !5375, line: 465, baseType: !44, size: 64, offset: 832)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5374, file: !5375, line: 466, baseType: !44, size: 64, offset: 896)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5374, file: !5375, line: 467, baseType: !44, size: 64, offset: 960)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5374, file: !5375, line: 473, baseType: !5410, size: 64, offset: 1024)
!5410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5411, size: 64)
!5411 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5375, line: 10, flags: DIFlagFwdDecl)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5374, file: !5375, line: 480, baseType: !44, size: 64, offset: 1088)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5374, file: !5375, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5374, file: !5375, line: 491, baseType: !313, size: 32, offset: 1184)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5374, file: !5375, line: 501, baseType: !5416, size: 33792, offset: 1536)
!5416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5417, line: 448, size: 33792, elements: !5418)
!5417 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5418 = !{!5419, !5420, !5421, !5529, !5530, !5536, !5537}
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5416, file: !5417, line: 461, baseType: !13, size: 32)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5416, file: !5417, line: 468, baseType: !44, size: 64, offset: 64)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5416, file: !5417, line: 476, baseType: !5422, size: 64, offset: 128)
!5422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5423, size: 64)
!5423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5417, line: 356, size: 33280, align: 512, elements: !5424)
!5424 = !{!5425, !5426, !5427, !5428, !5429, !5430, !5431, !5432, !5433, !5434}
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5423, file: !5417, line: 358, baseType: !13, size: 32)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5423, file: !5417, line: 361, baseType: !13, size: 32, offset: 32)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5423, file: !5417, line: 364, baseType: !317, size: 64, offset: 64)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5423, file: !5417, line: 367, baseType: !317, size: 64, offset: 128)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5423, file: !5417, line: 370, baseType: !317, size: 64, offset: 192)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5423, file: !5417, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5423, file: !5417, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5423, file: !5417, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5423, file: !5417, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5423, file: !5417, line: 397, baseType: !5435, size: 32768, offset: 512)
!5435 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5417, line: 348, size: 32768, elements: !5436)
!5436 = !{!5437, !5452, !5489, !5514, !5527}
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5435, file: !5417, line: 349, baseType: !5438, size: 896)
!5438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5417, line: 12, size: 896, elements: !5439)
!5439 = !{!5440, !5441, !5442, !5443, !5444, !5445, !5446, !5447, !5451}
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5438, file: !5417, line: 13, baseType: !313, size: 32)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5438, file: !5417, line: 14, baseType: !313, size: 32, offset: 32)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5438, file: !5417, line: 15, baseType: !313, size: 32, offset: 64)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5438, file: !5417, line: 16, baseType: !313, size: 32, offset: 96)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5438, file: !5417, line: 17, baseType: !313, size: 32, offset: 128)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5438, file: !5417, line: 18, baseType: !313, size: 32, offset: 160)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5438, file: !5417, line: 19, baseType: !313, size: 32, offset: 192)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5438, file: !5417, line: 22, baseType: !5448, size: 640, offset: 224)
!5448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 640, elements: !5449)
!5449 = !{!5450}
!5450 = !DISubrange(count: 20)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5438, file: !5417, line: 25, baseType: !313, size: 32, offset: 864)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5435, file: !5417, line: 350, baseType: !5453, size: 4096, align: 128)
!5453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5417, line: 34, size: 4096, align: 128, elements: !5454)
!5454 = !{!5455, !5456, !5457, !5458, !5459, !5474, !5475, !5476, !5478, !5480, !5484}
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5453, file: !5417, line: 35, baseType: !98, size: 16)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5453, file: !5417, line: 36, baseType: !98, size: 16, offset: 16)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5453, file: !5417, line: 37, baseType: !98, size: 16, offset: 32)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5453, file: !5417, line: 38, baseType: !98, size: 16, offset: 48)
!5459 = !DIDerivedType(tag: DW_TAG_member, scope: !5453, file: !5417, line: 39, baseType: !5460, size: 128, offset: 64)
!5460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5453, file: !5417, line: 39, size: 128, elements: !5461)
!5461 = !{!5462, !5467}
!5462 = !DIDerivedType(tag: DW_TAG_member, scope: !5460, file: !5417, line: 40, baseType: !5463, size: 128)
!5463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5460, file: !5417, line: 40, size: 128, elements: !5464)
!5464 = !{!5465, !5466}
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5463, file: !5417, line: 41, baseType: !317, size: 64)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5463, file: !5417, line: 42, baseType: !317, size: 64, offset: 64)
!5467 = !DIDerivedType(tag: DW_TAG_member, scope: !5460, file: !5417, line: 44, baseType: !5468, size: 128)
!5468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5460, file: !5417, line: 44, size: 128, elements: !5469)
!5469 = !{!5470, !5471, !5472, !5473}
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5468, file: !5417, line: 45, baseType: !313, size: 32)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5468, file: !5417, line: 46, baseType: !313, size: 32, offset: 32)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5468, file: !5417, line: 47, baseType: !313, size: 32, offset: 64)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5468, file: !5417, line: 48, baseType: !313, size: 32, offset: 96)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5453, file: !5417, line: 51, baseType: !313, size: 32, offset: 192)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5453, file: !5417, line: 52, baseType: !313, size: 32, offset: 224)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5453, file: !5417, line: 55, baseType: !5477, size: 1024, offset: 256)
!5477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 1024, elements: !4589)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5453, file: !5417, line: 58, baseType: !5479, size: 2048, offset: 1280)
!5479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 2048, elements: !1660)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5453, file: !5417, line: 60, baseType: !5481, size: 384, offset: 3328)
!5481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 384, elements: !5482)
!5482 = !{!5483}
!5483 = !DISubrange(count: 12)
!5484 = !DIDerivedType(tag: DW_TAG_member, scope: !5453, file: !5417, line: 62, baseType: !5485, size: 384, offset: 3712)
!5485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5453, file: !5417, line: 62, size: 384, elements: !5486)
!5486 = !{!5487, !5488}
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5485, file: !5417, line: 63, baseType: !5481, size: 384)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5485, file: !5417, line: 64, baseType: !5481, size: 384)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5435, file: !5417, line: 351, baseType: !5490, size: 1088)
!5490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5417, line: 79, size: 1088, elements: !5491)
!5491 = !{!5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5513}
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5490, file: !5417, line: 80, baseType: !313, size: 32)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5490, file: !5417, line: 81, baseType: !313, size: 32, offset: 32)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5490, file: !5417, line: 82, baseType: !313, size: 32, offset: 64)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5490, file: !5417, line: 83, baseType: !313, size: 32, offset: 96)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5490, file: !5417, line: 84, baseType: !313, size: 32, offset: 128)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5490, file: !5417, line: 85, baseType: !313, size: 32, offset: 160)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5490, file: !5417, line: 86, baseType: !313, size: 32, offset: 192)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5490, file: !5417, line: 88, baseType: !5448, size: 640, offset: 224)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5490, file: !5417, line: 89, baseType: !88, size: 8, offset: 864)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5490, file: !5417, line: 90, baseType: !88, size: 8, offset: 872)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5490, file: !5417, line: 91, baseType: !88, size: 8, offset: 880)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5490, file: !5417, line: 92, baseType: !88, size: 8, offset: 888)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5490, file: !5417, line: 93, baseType: !88, size: 8, offset: 896)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5490, file: !5417, line: 94, baseType: !88, size: 8, offset: 904)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5490, file: !5417, line: 95, baseType: !5507, size: 64, offset: 960)
!5507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5508, size: 64)
!5508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5509, line: 11, size: 128, elements: !5510)
!5509 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5510 = !{!5511, !5512}
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5508, file: !5509, line: 12, baseType: !458, size: 64)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5508, file: !5509, line: 13, baseType: !3857, size: 64, offset: 64)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5490, file: !5417, line: 96, baseType: !313, size: 32, offset: 1024)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5435, file: !5417, line: 352, baseType: !5515, size: 4608, align: 512)
!5515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5417, line: 333, size: 4608, align: 512, elements: !5516)
!5516 = !{!5517, !5518, !5525}
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5515, file: !5417, line: 334, baseType: !5453, size: 4096, align: 128)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5515, file: !5417, line: 335, baseType: !5519, size: 512, offset: 4096)
!5519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5417, line: 312, size: 512, elements: !5520)
!5520 = !{!5521, !5522, !5523}
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5519, file: !5417, line: 313, baseType: !317, size: 64)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5519, file: !5417, line: 314, baseType: !317, size: 64, offset: 64)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5519, file: !5417, line: 315, baseType: !5524, size: 384, offset: 128)
!5524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 384, elements: !1142)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5515, file: !5417, line: 336, baseType: !5526, offset: 4608)
!5526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, elements: !1318)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5435, file: !5417, line: 353, baseType: !5528, size: 32768)
!5528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 32768, elements: !2886)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5416, file: !5417, line: 484, baseType: !5422, size: 64, offset: 192)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5416, file: !5417, line: 491, baseType: !5531, size: 128, offset: 256)
!5531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5417, line: 404, size: 128, elements: !5532)
!5532 = !{!5533, !5534, !5535}
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5531, file: !5417, line: 424, baseType: !317, size: 64)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5531, file: !5417, line: 432, baseType: !13, size: 32, offset: 64)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5531, file: !5417, line: 440, baseType: !13, size: 32, offset: 96)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5416, file: !5417, line: 498, baseType: !5531, size: 128, offset: 384)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5416, file: !5417, line: 508, baseType: !5423, size: 33280, align: 512, offset: 512)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !571, file: !572, line: 31, baseType: !3434, size: 64, offset: 448)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !571, file: !572, line: 32, baseType: !13, size: 32, offset: 512)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !571, file: !572, line: 33, baseType: !570, size: 64, offset: 576)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !571, file: !572, line: 35, baseType: !5542, size: 64, offset: 640)
!5542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5543, size: 64)
!5543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !5544, line: 4, size: 576, elements: !5545)
!5544 = !DIFile(filename: "./include/linux/fs_pin.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d07c4a418236e4e1036969d5e8bd56f6")
!5545 = !{!5546, !5547, !5548, !5549, !5550}
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5543, file: !5544, line: 5, baseType: !59, size: 192)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5543, file: !5544, line: 6, baseType: !27, size: 32, offset: 192)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !5543, file: !5544, line: 7, baseType: !554, size: 128, offset: 256)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "m_list", scope: !5543, file: !5544, line: 8, baseType: !554, size: 128, offset: 384)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !5543, file: !5544, line: 9, baseType: !5551, size: 64, offset: 512)
!5551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5552, size: 64)
!5552 = !DISubroutineType(types: !5553)
!5553 = !{null, !5542}
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !571, file: !572, line: 37, baseType: !1046, size: 64, offset: 704)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !571, file: !572, line: 38, baseType: !1285, size: 64, offset: 768)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !571, file: !572, line: 39, baseType: !27, size: 32, offset: 832)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !571, file: !572, line: 40, baseType: !1079, size: 192, offset: 896)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !571, file: !572, line: 42, baseType: !27, size: 32, offset: 1088)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !511, file: !257, line: 951, baseType: !248, size: 32, offset: 128)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !511, file: !257, line: 952, baseType: !330, size: 32, offset: 160)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !511, file: !257, line: 952, baseType: !330, size: 32, offset: 192)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !511, file: !257, line: 953, baseType: !27, size: 32, offset: 224)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !463, file: !257, line: 1012, baseType: !1460, size: 64, offset: 896)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !463, file: !257, line: 1013, baseType: !5565, size: 256, offset: 960)
!5565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !257, line: 970, size: 256, elements: !5566)
!5566 = !{!5567, !5568, !5569, !5570, !5571, !5572}
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5565, file: !257, line: 971, baseType: !44, size: 64)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5565, file: !257, line: 972, baseType: !13, size: 32, offset: 64)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !5565, file: !257, line: 973, baseType: !13, size: 32, offset: 96)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !5565, file: !257, line: 974, baseType: !13, size: 32, offset: 128)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !5565, file: !257, line: 975, baseType: !13, size: 32, offset: 160)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !5565, file: !257, line: 976, baseType: !46, size: 64, offset: 192)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !463, file: !257, line: 1014, baseType: !1561, size: 128, offset: 1216)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !463, file: !257, line: 1015, baseType: !324, size: 64, offset: 1344)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !463, file: !257, line: 1016, baseType: !5576, size: 64, offset: 1408)
!5576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5577, size: 64)
!5577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5578)
!5578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !257, line: 1914, size: 2112, elements: !5579)
!5579 = !{!5580, !5581, !5585, !5589, !5593, !5594, !5595, !5601, !5614, !5618, !5622, !5623, !5627, !5628, !5632, !5637, !5638, !5642, !5646, !5652, !5653, !5657, !5658, !5662, !5666, !5667, !5672, !5676, !5680, !5684, !5688, !5689, !5695}
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5578, file: !257, line: 1915, baseType: !1604, size: 64)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !5578, file: !257, line: 1916, baseType: !5582, size: 64, offset: 64)
!5582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5583, size: 64)
!5583 = !DISubroutineType(types: !5584)
!5584 = !{!46, !462, !46, !27}
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5578, file: !257, line: 1917, baseType: !5586, size: 64, offset: 128)
!5586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5587, size: 64)
!5587 = !DISubroutineType(types: !5588)
!5588 = !{!1687, !462, !389, !40, !45}
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5578, file: !257, line: 1918, baseType: !5590, size: 64, offset: 192)
!5590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5591, size: 64)
!5591 = !DISubroutineType(types: !5592)
!5592 = !{!1687, !462, !22, !40, !45}
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !5578, file: !257, line: 1919, baseType: !2143, size: 64, offset: 256)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !5578, file: !257, line: 1920, baseType: !2143, size: 64, offset: 320)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !5578, file: !257, line: 1921, baseType: !5596, size: 64, offset: 384)
!5596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5597, size: 64)
!5597 = !DISubroutineType(types: !5598)
!5598 = !{!27, !2146, !5599, !13}
!5599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5600, size: 64)
!5600 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !257, line: 53, flags: DIFlagFwdDecl)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !5578, file: !257, line: 1923, baseType: !5602, size: 64, offset: 448)
!5602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5603, size: 64)
!5603 = !DISubroutineType(types: !5604)
!5604 = !{!27, !462, !5605}
!5605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5606, size: 64)
!5606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !257, line: 1858, size: 128, elements: !5607)
!5607 = !{!5608, !5613}
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !5606, file: !257, line: 1859, baseType: !5609, size: 64)
!5609 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !257, line: 1855, baseType: !5610)
!5610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5611, size: 64)
!5611 = !DISubroutineType(types: !5612)
!5612 = !{!383, !5605, !22, !27, !46, !317, !13}
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5606, file: !257, line: 1860, baseType: !46, size: 64, offset: 64)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5578, file: !257, line: 1924, baseType: !5615, size: 64, offset: 512)
!5615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5616, size: 64)
!5616 = !DISubroutineType(types: !5617)
!5617 = !{!2376, !462, !2378}
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !5578, file: !257, line: 1925, baseType: !5619, size: 64, offset: 576)
!5619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5620, size: 64)
!5620 = !DISubroutineType(types: !5621)
!5621 = !{!458, !462, !13, !44}
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !5578, file: !257, line: 1926, baseType: !5619, size: 64, offset: 640)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5578, file: !257, line: 1927, baseType: !5624, size: 64, offset: 704)
!5624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5625, size: 64)
!5625 = !DISubroutineType(types: !5626)
!5626 = !{!27, !462, !1854}
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !5578, file: !257, line: 1928, baseType: !44, size: 64, offset: 768)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5578, file: !257, line: 1929, baseType: !5629, size: 64, offset: 832)
!5629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5630, size: 64)
!5630 = !DISubroutineType(types: !5631)
!5631 = !{!27, !324, !462}
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !5578, file: !257, line: 1930, baseType: !5633, size: 64, offset: 896)
!5633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5634, size: 64)
!5634 = !DISubroutineType(types: !5635)
!5635 = !{!27, !462, !5636}
!5636 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !257, line: 1061, baseType: !25)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5578, file: !257, line: 1931, baseType: !5629, size: 64, offset: 960)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !5578, file: !257, line: 1932, baseType: !5639, size: 64, offset: 1024)
!5639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5640, size: 64)
!5640 = !DISubroutineType(types: !5641)
!5641 = !{!27, !462, !46, !46, !27}
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !5578, file: !257, line: 1933, baseType: !5643, size: 64, offset: 1088)
!5643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5644, size: 64)
!5644 = !DISubroutineType(types: !5645)
!5645 = !{!27, !27, !462, !27}
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5578, file: !257, line: 1934, baseType: !5647, size: 64, offset: 1152)
!5647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5648, size: 64)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{!27, !462, !27, !5650}
!5650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5651, size: 64)
!5651 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !257, line: 1063, flags: DIFlagFwdDecl)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !5578, file: !257, line: 1935, baseType: !911, size: 64, offset: 1216)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !5578, file: !257, line: 1936, baseType: !5654, size: 64, offset: 1280)
!5654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5655, size: 64)
!5655 = !DISubroutineType(types: !5656)
!5656 = !{!27, !27}
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !5578, file: !257, line: 1937, baseType: !5647, size: 64, offset: 1344)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !5578, file: !257, line: 1938, baseType: !5659, size: 64, offset: 1408)
!5659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5660, size: 64)
!5660 = !DISubroutineType(types: !5661)
!5661 = !{!1687, !5255, !462, !45, !40, !13}
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !5578, file: !257, line: 1939, baseType: !5663, size: 64, offset: 1472)
!5663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5664, size: 64)
!5664 = !DISubroutineType(types: !5665)
!5665 = !{!1687, !462, !45, !5255, !40, !13}
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !5578, file: !257, line: 1940, baseType: !2199, size: 64, offset: 1536)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !5578, file: !257, line: 1941, baseType: !5668, size: 64, offset: 1600)
!5668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5669, size: 64)
!5669 = !DISubroutineType(types: !5670)
!5670 = !{!27, !462, !27, !5671, !2120}
!5671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5650, size: 64)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !5578, file: !257, line: 1942, baseType: !5673, size: 64, offset: 1664)
!5673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5674, size: 64)
!5674 = !DISubroutineType(types: !5675)
!5675 = !{!458, !462, !27, !46, !46}
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !5578, file: !257, line: 1944, baseType: !5677, size: 64, offset: 1728)
!5677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5678, size: 64)
!5678 = !DISubroutineType(types: !5679)
!5679 = !{null, !2309, !462}
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !5578, file: !257, line: 1948, baseType: !5681, size: 64, offset: 1792)
!5681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5682, size: 64)
!5682 = !DISubroutineType(types: !5683)
!5683 = !{!1687, !462, !46, !462, !46, !40, !13}
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !5578, file: !257, line: 1950, baseType: !5685, size: 64, offset: 1856)
!5685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5686, size: 64)
!5686 = !DISubroutineType(types: !5687)
!5687 = !{!46, !462, !46, !462, !46, !46, !13}
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !5578, file: !257, line: 1953, baseType: !5639, size: 64, offset: 1920)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !5578, file: !257, line: 1954, baseType: !5690, size: 64, offset: 1984)
!5690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5691, size: 64)
!5691 = !DISubroutineType(types: !5692)
!5692 = !{!27, !5693, !13}
!5693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5694, size: 64)
!5694 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !257, line: 1911, flags: DIFlagFwdDecl)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !5578, file: !257, line: 1955, baseType: !5696, size: 64, offset: 2048)
!5696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5697, size: 64)
!5697 = !DISubroutineType(types: !5698)
!5698 = !{!27, !5693, !5599, !13}
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !463, file: !257, line: 1018, baseType: !317, size: 64, offset: 1472)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !463, file: !257, line: 1020, baseType: !25, size: 64, offset: 1536)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !463, file: !257, line: 1023, baseType: !25, size: 64, offset: 1600)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !463, file: !257, line: 1027, baseType: !2934, size: 64, offset: 1664)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !463, file: !257, line: 1029, baseType: !1724, size: 64, offset: 1728)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !463, file: !257, line: 1030, baseType: !2209, size: 32, offset: 1792)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !463, file: !257, line: 1031, baseType: !2209, size: 32, offset: 1824)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !353, file: !257, line: 1988, baseType: !5707, size: 64, offset: 896)
!5707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5708, size: 64)
!5708 = !DISubroutineType(types: !5709)
!5709 = !{!27, !376, !4404, !5710, !313, !13}
!5710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5711, size: 64)
!5711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5712, line: 22, size: 1280, elements: !5713)
!5712 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5713 = !{!5714, !5715, !5716, !5717, !5718, !5719, !5720, !5721, !5722, !5723, !5724, !5725, !5726, !5727, !5728, !5729, !5730, !5731, !5732, !5733, !5734}
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5711, file: !5712, line: 23, baseType: !313, size: 32)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5711, file: !5712, line: 24, baseType: !29, size: 16, offset: 32)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5711, file: !5712, line: 25, baseType: !13, size: 32, offset: 64)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5711, file: !5712, line: 26, baseType: !1121, size: 32, offset: 96)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5711, file: !5712, line: 27, baseType: !317, size: 64, offset: 128)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5711, file: !5712, line: 28, baseType: !317, size: 64, offset: 192)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5711, file: !5712, line: 41, baseType: !317, size: 64, offset: 256)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5711, file: !5712, line: 42, baseType: !415, size: 32, offset: 320)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5711, file: !5712, line: 43, baseType: !415, size: 32, offset: 352)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5711, file: !5712, line: 44, baseType: !330, size: 32, offset: 384)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5711, file: !5712, line: 45, baseType: !339, size: 32, offset: 416)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5711, file: !5712, line: 46, baseType: !46, size: 64, offset: 448)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5711, file: !5712, line: 47, baseType: !451, size: 128, offset: 512)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5711, file: !5712, line: 48, baseType: !451, size: 128, offset: 640)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5711, file: !5712, line: 49, baseType: !451, size: 128, offset: 768)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5711, file: !5712, line: 50, baseType: !451, size: 128, offset: 896)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5711, file: !5712, line: 51, baseType: !317, size: 64, offset: 1024)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5711, file: !5712, line: 52, baseType: !317, size: 64, offset: 1088)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5711, file: !5712, line: 53, baseType: !313, size: 32, offset: 1152)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5711, file: !5712, line: 54, baseType: !313, size: 32, offset: 1184)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5711, file: !5712, line: 55, baseType: !317, size: 64, offset: 1216)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !353, file: !257, line: 1990, baseType: !5736, size: 64, offset: 960)
!5736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5737, size: 64)
!5737 = !DISubroutineType(types: !5738)
!5738 = !{!1687, !279, !389, !40}
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !353, file: !257, line: 1991, baseType: !5740, size: 64, offset: 1024)
!5740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5741, size: 64)
!5741 = !DISubroutineType(types: !5742)
!5742 = !{!27, !324, !5743, !317, !317}
!5743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5744, size: 64)
!5744 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !257, line: 55, flags: DIFlagFwdDecl)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !353, file: !257, line: 1993, baseType: !5746, size: 64, offset: 1088)
!5746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5747, size: 64)
!5747 = !DISubroutineType(types: !5748)
!5748 = !{!27, !324, !27}
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !353, file: !257, line: 1994, baseType: !5750, size: 64, offset: 1152)
!5750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5751, size: 64)
!5751 = !DISubroutineType(types: !5752)
!5752 = !{!27, !324, !279, !462, !13, !29}
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !353, file: !257, line: 1997, baseType: !5754, size: 64, offset: 1216)
!5754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5755, size: 64)
!5755 = !DISubroutineType(types: !5756)
!5756 = !{!27, !376, !324, !462, !29}
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !353, file: !257, line: 1999, baseType: !5758, size: 64, offset: 1280)
!5758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5759, size: 64)
!5759 = !DISubroutineType(types: !5760)
!5760 = !{!347, !376, !279, !27}
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !353, file: !257, line: 2001, baseType: !5762, size: 64, offset: 1344)
!5762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5763, size: 64)
!5763 = !DISubroutineType(types: !5764)
!5764 = !{!27, !376, !279, !347, !27}
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !353, file: !257, line: 2003, baseType: !5766, size: 64, offset: 1408)
!5766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5767, size: 64)
!5767 = !DISubroutineType(types: !5768)
!5768 = !{!27, !376, !279, !5769}
!5769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5770, size: 64)
!5770 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !257, line: 76, flags: DIFlagFwdDecl)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !353, file: !257, line: 2005, baseType: !5772, size: 64, offset: 1472)
!5772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5773, size: 64)
!5773 = !DISubroutineType(types: !5774)
!5774 = !{!27, !279, !5769}
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !353, file: !257, line: 2006, baseType: !5776, size: 64, offset: 1536)
!5776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5777, size: 64)
!5777 = !DISubroutineType(types: !5778)
!5778 = !{!5779, !324}
!5779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5780, size: 64)
!5780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !257, line: 3192, size: 192, elements: !5781)
!5781 = !{!5782, !5783}
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5780, file: !257, line: 3193, baseType: !579, size: 128)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5780, file: !257, line: 3194, baseType: !313, size: 32, offset: 128)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !325, file: !257, line: 655, baseType: !1571, size: 64, offset: 448)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !325, file: !257, line: 656, baseType: !1724, size: 64, offset: 512)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !325, file: !257, line: 659, baseType: !25, size: 64, offset: 576)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !325, file: !257, line: 663, baseType: !44, size: 64, offset: 640)
!5788 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !257, line: 671, baseType: !5789, size: 32, offset: 704)
!5789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !325, file: !257, line: 671, size: 32, elements: !5790)
!5790 = !{!5791, !5792}
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5789, file: !257, line: 672, baseType: !2766, size: 32)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5789, file: !257, line: 673, baseType: !13, size: 32)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !325, file: !257, line: 675, baseType: !415, size: 32, offset: 736)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !325, file: !257, line: 676, baseType: !46, size: 64, offset: 768)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !325, file: !257, line: 677, baseType: !451, size: 128, offset: 832)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !325, file: !257, line: 678, baseType: !451, size: 128, offset: 960)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !325, file: !257, line: 679, baseType: !451, size: 128, offset: 1088)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !325, file: !257, line: 680, baseType: !64, size: 32, offset: 1216)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !325, file: !257, line: 681, baseType: !31, size: 16, offset: 1248)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !325, file: !257, line: 682, baseType: !88, size: 8, offset: 1264)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !325, file: !257, line: 683, baseType: !88, size: 8, offset: 1272)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !325, file: !257, line: 684, baseType: !4477, size: 64, offset: 1280)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !325, file: !257, line: 691, baseType: !44, size: 64, offset: 1344)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !325, file: !257, line: 692, baseType: !941, size: 320, offset: 1408)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !325, file: !257, line: 694, baseType: !44, size: 64, offset: 1728)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !325, file: !257, line: 695, baseType: !44, size: 64, offset: 1792)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !325, file: !257, line: 697, baseType: !554, size: 128, offset: 1856)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !325, file: !257, line: 698, baseType: !102, size: 128, offset: 1984)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !325, file: !257, line: 707, baseType: !102, size: 128, offset: 2112)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !325, file: !257, line: 708, baseType: !102, size: 128, offset: 2240)
!5811 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !257, line: 709, baseType: !5812, size: 128, offset: 2368)
!5812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !325, file: !257, line: 709, size: 128, elements: !5813)
!5813 = !{!5814, !5815}
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5812, file: !257, line: 710, baseType: !550, size: 64)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5812, file: !257, line: 711, baseType: !475, size: 128, align: 64)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !325, file: !257, line: 713, baseType: !490, size: 64, offset: 2496)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !325, file: !257, line: 714, baseType: !490, size: 64, offset: 2560)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !325, file: !257, line: 715, baseType: !54, size: 32, offset: 2624)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !325, file: !257, line: 716, baseType: !54, size: 32, offset: 2656)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !325, file: !257, line: 717, baseType: !54, size: 32, offset: 2688)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !325, file: !257, line: 719, baseType: !54, size: 32, offset: 2720)
!5822 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !257, line: 721, baseType: !5823, size: 64, offset: 2752)
!5823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !325, file: !257, line: 721, size: 64, elements: !5824)
!5824 = !{!5825, !5826}
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5823, file: !257, line: 722, baseType: !5576, size: 64)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5823, file: !257, line: 723, baseType: !4233, size: 64)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !325, file: !257, line: 725, baseType: !5828, size: 64, offset: 2816)
!5828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5829, size: 64)
!5829 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !257, line: 725, flags: DIFlagFwdDecl)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !325, file: !257, line: 726, baseType: !1725, size: 1536, align: 64, offset: 2880)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !325, file: !257, line: 727, baseType: !102, size: 128, offset: 4416)
!5832 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !257, line: 728, baseType: !5833, size: 64, offset: 4544)
!5833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !325, file: !257, line: 728, size: 64, elements: !5834)
!5834 = !{!5835, !5836, !5839, !5840}
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5833, file: !257, line: 729, baseType: !5255, size: 64)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5833, file: !257, line: 730, baseType: !5837, size: 64)
!5837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5838, size: 64)
!5838 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !257, line: 730, flags: DIFlagFwdDecl)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5833, file: !257, line: 731, baseType: !389, size: 64)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5833, file: !257, line: 732, baseType: !13, size: 32)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !325, file: !257, line: 735, baseType: !314, size: 32, offset: 4608)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !325, file: !257, line: 738, baseType: !314, size: 32, offset: 4640)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !325, file: !257, line: 739, baseType: !4585, size: 64, offset: 4672)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !325, file: !257, line: 750, baseType: !25, size: 64, offset: 4736)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !280, file: !281, line: 91, baseType: !5846, size: 256, offset: 448)
!5846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 256, elements: !4589)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !280, file: !281, line: 94, baseType: !5848, size: 64, offset: 704)
!5848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !5849, line: 25, size: 64, elements: !5850)
!5849 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!5850 = !{!5851}
!5851 = !DIDerivedType(tag: DW_TAG_member, scope: !5848, file: !5849, line: 26, baseType: !5852, size: 64)
!5852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5848, file: !5849, line: 26, size: 64, elements: !5853)
!5853 = !{!5854, !5855}
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !5852, file: !5849, line: 28, baseType: !318, size: 64, align: 64)
!5855 = !DIDerivedType(tag: DW_TAG_member, scope: !5852, file: !5849, line: 30, baseType: !5856, size: 64)
!5856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5852, file: !5849, line: 30, size: 64, elements: !5857)
!5857 = !{!5858, !5859}
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5856, file: !5849, line: 31, baseType: !64, size: 32)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5856, file: !5849, line: 32, baseType: !27, size: 32, offset: 32)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !280, file: !281, line: 95, baseType: !4602, size: 64, offset: 768)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !280, file: !281, line: 96, baseType: !1571, size: 64, offset: 832)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !280, file: !281, line: 97, baseType: !44, size: 64, offset: 896)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !280, file: !281, line: 98, baseType: !25, size: 64, offset: 960)
!5864 = !DIDerivedType(tag: DW_TAG_member, scope: !280, file: !281, line: 100, baseType: !5865, size: 128, offset: 1024)
!5865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !280, file: !281, line: 100, size: 128, elements: !5866)
!5866 = !{!5867, !5868}
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5865, file: !281, line: 101, baseType: !102, size: 128)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5865, file: !281, line: 102, baseType: !2387, size: 64)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !280, file: !281, line: 104, baseType: !102, size: 128, offset: 1152)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !280, file: !281, line: 105, baseType: !102, size: 128, offset: 1280)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !280, file: !281, line: 113, baseType: !5872, size: 128, offset: 1408)
!5872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !280, file: !281, line: 109, size: 128, elements: !5873)
!5873 = !{!5874, !5875, !5876}
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5872, file: !281, line: 110, baseType: !554, size: 128)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5872, file: !281, line: 111, baseType: !295, size: 128)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5872, file: !281, line: 112, baseType: !475, size: 128, align: 64)
!5877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5878, size: 64)
!5878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5879)
!5879 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4735)
!5880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5881, size: 64)
!5881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5882)
!5882 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4729)
!5883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5884, size: 64)
!5884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5885)
!5885 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !321)
!5886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!5887 = !{!0, !7, !5888, !5890, !5893, !5896}
!5888 = !DIGlobalVariableExpression(var: !5889, expr: !DIExpression())
!5889 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dentry_path_raw324", scope: !9, file: !2, line: 369, type: !25, isLocal: true, isDefinition: true)
!5890 = !DIGlobalVariableExpression(var: !5891, expr: !DIExpression())
!5891 = distinct !DIGlobalVariable(scope: null, file: !2, line: 376, type: !5892, isLocal: true, isDefinition: true)
!5892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !1294)
!5893 = !DIGlobalVariableExpression(var: !5894, expr: !DIExpression())
!5894 = distinct !DIGlobalVariable(scope: null, file: !2, line: 433, type: !5895, isLocal: true, isDefinition: true)
!5895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !3964)
!5896 = !DIGlobalVariableExpression(var: !5897, expr: !DIExpression())
!5897 = distinct !DIGlobalVariable(scope: null, file: !5898, line: 249, type: !5899, isLocal: true, isDefinition: true)
!5898 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!5899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5900)
!5900 = !{!5901}
!5901 = !DISubrange(count: 28)
!5902 = !{i32 7, !"Dwarf Version", i32 5}
!5903 = !{i32 2, !"Debug Info Version", i32 3}
!5904 = !{i32 1, !"wchar_size", i32 2}
!5905 = !{i32 8, !"cf-protection-branch", i32 1}
!5906 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5907 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5908 = !{i32 1, !"Code Model", i32 2}
!5909 = !{i32 1, !"override-stack-alignment", i32 8}
!5910 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5911 = distinct !DISubprogram(name: "__d_path", scope: !2, file: !2, line: 215, type: !5912, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5914)
!5912 = !DISubroutineType(types: !5913)
!5913 = !{!389, !4404, !4404, !389, !27}
!5914 = !{!5915, !5916, !5917, !5918, !5919}
!5915 = !DILocalVariable(name: "path", arg: 1, scope: !5911, file: !2, line: 215, type: !4404)
!5916 = !DILocalVariable(name: "root", arg: 2, scope: !5911, file: !2, line: 216, type: !4404)
!5917 = !DILocalVariable(name: "buf", arg: 3, scope: !5911, file: !2, line: 217, type: !389)
!5918 = !DILocalVariable(name: "buflen", arg: 4, scope: !5911, file: !2, line: 217, type: !27)
!5919 = !DILocalVariable(name: "b", scope: !5911, file: !2, line: 219, type: !5920)
!5920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prepend_buffer", file: !2, line: 12, size: 128, elements: !5921)
!5921 = !{!5922, !5923}
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5920, file: !2, line: 13, baseType: !389, size: 64)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5920, file: !2, line: 14, baseType: !27, size: 32, offset: 64)
!5924 = !DILocation(line: 215, column: 35, scope: !5911)
!5925 = !DILocation(line: 216, column: 28, scope: !5911)
!5926 = !DILocation(line: 217, column: 15, scope: !5911)
!5927 = !DILocation(line: 217, column: 24, scope: !5911)
!5928 = !DILocation(line: 219, column: 2, scope: !5911)
!5929 = !DILocation(line: 221, column: 2, scope: !5911)
!5930 = !DILocation(line: 222, column: 6, scope: !5931)
!5931 = distinct !DILexicalBlock(scope: !5911, file: !2, line: 222, column: 6)
!5932 = !DILocation(line: 222, column: 6, scope: !5911)
!5933 = !DILocation(line: 223, column: 3, scope: !5931)
!5934 = !DILocation(line: 224, column: 9, scope: !5911)
!5935 = !DILocation(line: 224, column: 2, scope: !5911)
!5936 = !DILocation(line: 225, column: 1, scope: !5911)
!5937 = distinct !DISubprogram(name: "prepend_char", scope: !2, file: !2, line: 26, type: !5938, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5941)
!5938 = !DISubroutineType(types: !5939)
!5939 = !{!383, !5940, !92}
!5940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5920, size: 64)
!5941 = !{!5942, !5943}
!5942 = !DILocalVariable(name: "p", arg: 1, scope: !5937, file: !2, line: 26, type: !5940)
!5943 = !DILocalVariable(name: "c", arg: 2, scope: !5937, file: !2, line: 26, type: !92)
!5944 = !DILocation(line: 26, column: 49, scope: !5937)
!5945 = !DILocation(line: 26, column: 66, scope: !5937)
!5946 = !DILocation(line: 28, column: 6, scope: !5947)
!5947 = distinct !DILexicalBlock(scope: !5937, file: !2, line: 28, column: 6)
!5948 = !DILocation(line: 28, column: 6, scope: !5937)
!5949 = !DILocation(line: 29, column: 3, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5947, file: !2, line: 28, column: 26)
!5951 = !DILocation(line: 29, column: 6, scope: !5950)
!5952 = !DILocation(line: 29, column: 9, scope: !5950)
!5953 = !DILocation(line: 30, column: 15, scope: !5950)
!5954 = !DILocation(line: 30, column: 6, scope: !5950)
!5955 = !DILocation(line: 30, column: 9, scope: !5950)
!5956 = !DILocation(line: 30, column: 4, scope: !5950)
!5957 = !DILocation(line: 30, column: 13, scope: !5950)
!5958 = !DILocation(line: 31, column: 3, scope: !5950)
!5959 = !DILocation(line: 33, column: 2, scope: !5937)
!5960 = !DILocation(line: 33, column: 5, scope: !5937)
!5961 = !DILocation(line: 33, column: 9, scope: !5937)
!5962 = !DILocation(line: 34, column: 2, scope: !5937)
!5963 = !DILocation(line: 35, column: 1, scope: !5937)
!5964 = distinct !DISubprogram(name: "prepend_path", scope: !2, file: !2, line: 156, type: !5965, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5967)
!5965 = !DISubroutineType(types: !5966)
!5966 = !{!27, !4404, !4404, !5940}
!5967 = !{!5968, !5969, !5970, !5971, !5972, !5973, !5974, !5975, !5976}
!5968 = !DILocalVariable(name: "path", arg: 1, scope: !5964, file: !2, line: 156, type: !4404)
!5969 = !DILocalVariable(name: "root", arg: 2, scope: !5964, file: !2, line: 157, type: !4404)
!5970 = !DILocalVariable(name: "p", arg: 3, scope: !5964, file: !2, line: 158, type: !5940)
!5971 = !DILocalVariable(name: "seq", scope: !5964, file: !2, line: 160, type: !13)
!5972 = !DILocalVariable(name: "m_seq", scope: !5964, file: !2, line: 160, type: !13)
!5973 = !DILocalVariable(name: "b", scope: !5964, file: !2, line: 161, type: !5920)
!5974 = !DILocalVariable(name: "error", scope: !5964, file: !2, line: 162, type: !27)
!5975 = !DILabel(scope: !5964, name: "restart_mnt", file: !2, line: 165)
!5976 = !DILabel(scope: !5964, name: "restart", file: !2, line: 169)
!5977 = !DILocation(line: 156, column: 44, scope: !5964)
!5978 = !DILocation(line: 157, column: 23, scope: !5964)
!5979 = !DILocation(line: 158, column: 27, scope: !5964)
!5980 = !DILocation(line: 160, column: 2, scope: !5964)
!5981 = !DILocation(line: 160, column: 11, scope: !5964)
!5982 = !DILocation(line: 160, column: 16, scope: !5964)
!5983 = !DILocation(line: 161, column: 2, scope: !5964)
!5984 = !DILocation(line: 161, column: 24, scope: !5964)
!5985 = !DILocation(line: 162, column: 2, scope: !5964)
!5986 = !DILocation(line: 162, column: 6, scope: !5964)
!5987 = !DILocation(line: 164, column: 2, scope: !5964)
!5988 = !DILocation(line: 165, column: 1, scope: !5964)
!5989 = !DILocation(line: 166, column: 2, scope: !5964)
!5990 = !DILocation(line: 167, column: 6, scope: !5964)
!5991 = !DILocation(line: 168, column: 2, scope: !5964)
!5992 = !DILocation(line: 169, column: 1, scope: !5964)
!5993 = !DILocation(line: 170, column: 7, scope: !5964)
!5994 = !DILocation(line: 170, column: 6, scope: !5964)
!5995 = !DILocation(line: 171, column: 2, scope: !5964)
!5996 = !DILocation(line: 172, column: 25, scope: !5964)
!5997 = !DILocation(line: 172, column: 31, scope: !5964)
!5998 = !DILocation(line: 172, column: 50, scope: !5964)
!5999 = !DILocation(line: 172, column: 56, scope: !5964)
!6000 = !DILocation(line: 172, column: 39, scope: !5964)
!6001 = !DILocation(line: 172, column: 62, scope: !5964)
!6002 = !DILocation(line: 172, column: 10, scope: !5964)
!6003 = !DILocation(line: 172, column: 8, scope: !5964)
!6004 = !DILocation(line: 173, column: 8, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !5964, file: !2, line: 173, column: 6)
!6006 = !DILocation(line: 173, column: 12, scope: !6005)
!6007 = !DILocation(line: 173, column: 6, scope: !5964)
!6008 = !DILocation(line: 174, column: 3, scope: !6005)
!6009 = !DILocation(line: 175, column: 34, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !5964, file: !2, line: 175, column: 6)
!6011 = !DILocation(line: 175, column: 6, scope: !6010)
!6012 = !DILocation(line: 175, column: 6, scope: !5964)
!6013 = !DILocation(line: 176, column: 7, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !6010, file: !2, line: 175, column: 40)
!6015 = !DILocation(line: 177, column: 3, scope: !6014)
!6016 = !DILocation(line: 179, column: 30, scope: !5964)
!6017 = !DILocation(line: 179, column: 2, scope: !5964)
!6018 = !DILocation(line: 181, column: 8, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !5964, file: !2, line: 181, column: 6)
!6020 = !DILocation(line: 181, column: 14, scope: !6019)
!6021 = !DILocation(line: 181, column: 6, scope: !5964)
!6022 = !DILocation(line: 182, column: 3, scope: !6019)
!6023 = !DILocation(line: 183, column: 33, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !5964, file: !2, line: 183, column: 6)
!6025 = !DILocation(line: 183, column: 6, scope: !6024)
!6026 = !DILocation(line: 183, column: 6, scope: !5964)
!6027 = !DILocation(line: 184, column: 9, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !6024, file: !2, line: 183, column: 41)
!6029 = !DILocation(line: 185, column: 3, scope: !6028)
!6030 = !DILocation(line: 187, column: 29, scope: !5964)
!6031 = !DILocation(line: 187, column: 2, scope: !5964)
!6032 = !DILocation(line: 189, column: 6, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !5964, file: !2, line: 189, column: 6)
!6034 = !DILocation(line: 189, column: 6, scope: !5964)
!6035 = !DILocation(line: 190, column: 8, scope: !6033)
!6036 = !DILocation(line: 190, column: 7, scope: !6033)
!6037 = !DILocation(line: 190, column: 3, scope: !6033)
!6038 = !DILocation(line: 192, column: 8, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !5964, file: !2, line: 192, column: 6)
!6040 = !DILocation(line: 192, column: 15, scope: !6039)
!6041 = !DILocation(line: 192, column: 18, scope: !6039)
!6042 = !DILocation(line: 192, column: 12, scope: !6039)
!6043 = !DILocation(line: 192, column: 6, scope: !5964)
!6044 = !DILocation(line: 193, column: 3, scope: !6039)
!6045 = !DILocation(line: 195, column: 3, scope: !5964)
!6046 = !DILocation(line: 195, column: 7, scope: !5964)
!6047 = !DILocation(line: 196, column: 9, scope: !5964)
!6048 = !DILocation(line: 197, column: 1, scope: !5964)
!6049 = !DILocation(line: 196, column: 2, scope: !5964)
!6050 = distinct !DISubprogram(name: "extract_string", scope: !2, file: !2, line: 19, type: !6051, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6053)
!6051 = !DISubroutineType(types: !6052)
!6052 = !{!389, !5940}
!6053 = !{!6054}
!6054 = !DILocalVariable(name: "p", arg: 1, scope: !6050, file: !2, line: 19, type: !5940)
!6055 = !DILocation(line: 19, column: 52, scope: !6050)
!6056 = !DILocation(line: 21, column: 6, scope: !6057)
!6057 = distinct !DILexicalBlock(scope: !6050, file: !2, line: 21, column: 6)
!6058 = !DILocation(line: 21, column: 6, scope: !6050)
!6059 = !DILocation(line: 22, column: 10, scope: !6057)
!6060 = !DILocation(line: 22, column: 13, scope: !6057)
!6061 = !DILocation(line: 22, column: 3, scope: !6057)
!6062 = !DILocation(line: 23, column: 9, scope: !6050)
!6063 = !DILocation(line: 23, column: 2, scope: !6050)
!6064 = !DILocation(line: 24, column: 1, scope: !6050)
!6065 = distinct !DISubprogram(name: "d_absolute_path", scope: !2, file: !2, line: 227, type: !6066, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6068)
!6066 = !DISubroutineType(types: !6067)
!6067 = !{!389, !4404, !389, !27}
!6068 = !{!6069, !6070, !6071, !6072, !6073}
!6069 = !DILocalVariable(name: "path", arg: 1, scope: !6065, file: !2, line: 227, type: !4404)
!6070 = !DILocalVariable(name: "buf", arg: 2, scope: !6065, file: !2, line: 228, type: !389)
!6071 = !DILocalVariable(name: "buflen", arg: 3, scope: !6065, file: !2, line: 228, type: !27)
!6072 = !DILocalVariable(name: "root", scope: !6065, file: !2, line: 230, type: !1561)
!6073 = !DILocalVariable(name: "b", scope: !6065, file: !2, line: 231, type: !5920)
!6074 = !DILocation(line: 227, column: 42, scope: !6065)
!6075 = !DILocation(line: 228, column: 15, scope: !6065)
!6076 = !DILocation(line: 228, column: 24, scope: !6065)
!6077 = !DILocation(line: 230, column: 2, scope: !6065)
!6078 = !DILocation(line: 230, column: 14, scope: !6065)
!6079 = !DILocation(line: 231, column: 2, scope: !6065)
!6080 = !DILocation(line: 233, column: 2, scope: !6065)
!6081 = !DILocation(line: 234, column: 6, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6065, file: !2, line: 234, column: 6)
!6083 = !DILocation(line: 234, column: 6, scope: !6065)
!6084 = !DILocation(line: 235, column: 10, scope: !6082)
!6085 = !DILocation(line: 235, column: 3, scope: !6082)
!6086 = !DILocation(line: 236, column: 9, scope: !6065)
!6087 = !DILocation(line: 236, column: 2, scope: !6065)
!6088 = !DILocation(line: 237, column: 1, scope: !6065)
!6089 = distinct !DISubprogram(name: "ERR_PTR", scope: !6090, file: !6090, line: 39, type: !6091, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6093)
!6090 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6091 = !DISubroutineType(types: !6092)
!6092 = !{!25, !458}
!6093 = !{!6094}
!6094 = !DILocalVariable(name: "error", arg: 1, scope: !6089, file: !6090, line: 39, type: !458)
!6095 = !DILocation(line: 39, column: 48, scope: !6089)
!6096 = !DILocation(line: 41, column: 18, scope: !6089)
!6097 = !DILocation(line: 41, column: 9, scope: !6089)
!6098 = !DILocation(line: 41, column: 2, scope: !6089)
!6099 = distinct !DISubprogram(name: "d_path", scope: !2, file: !2, line: 265, type: !6066, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6100)
!6100 = !{!6101, !6102, !6103, !6104, !6105}
!6101 = !DILocalVariable(name: "path", arg: 1, scope: !6099, file: !2, line: 265, type: !4404)
!6102 = !DILocalVariable(name: "buf", arg: 2, scope: !6099, file: !2, line: 265, type: !389)
!6103 = !DILocalVariable(name: "buflen", arg: 3, scope: !6099, file: !2, line: 265, type: !27)
!6104 = !DILocalVariable(name: "b", scope: !6099, file: !2, line: 267, type: !5920)
!6105 = !DILocalVariable(name: "root", scope: !6099, file: !2, line: 268, type: !1561)
!6106 = !DILocation(line: 265, column: 33, scope: !6099)
!6107 = !DILocation(line: 265, column: 45, scope: !6099)
!6108 = !DILocation(line: 265, column: 54, scope: !6099)
!6109 = !DILocation(line: 267, column: 2, scope: !6099)
!6110 = !DILocation(line: 268, column: 2, scope: !6099)
!6111 = !DILocation(line: 268, column: 14, scope: !6099)
!6112 = !DILocation(line: 281, column: 6, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6099, file: !2, line: 281, column: 6)
!6114 = !DILocation(line: 281, column: 12, scope: !6113)
!6115 = !DILocation(line: 281, column: 20, scope: !6113)
!6116 = !DILocation(line: 281, column: 25, scope: !6113)
!6117 = !DILocation(line: 281, column: 28, scope: !6113)
!6118 = !DILocation(line: 281, column: 34, scope: !6113)
!6119 = !DILocation(line: 281, column: 42, scope: !6113)
!6120 = !DILocation(line: 281, column: 48, scope: !6113)
!6121 = !DILocation(line: 281, column: 56, scope: !6113)
!6122 = !DILocation(line: 282, column: 8, scope: !6113)
!6123 = !DILocation(line: 282, column: 30, scope: !6113)
!6124 = !DILocation(line: 282, column: 33, scope: !6113)
!6125 = !DILocation(line: 282, column: 39, scope: !6113)
!6126 = !DILocation(line: 282, column: 49, scope: !6113)
!6127 = !DILocation(line: 282, column: 55, scope: !6113)
!6128 = !DILocation(line: 282, column: 60, scope: !6113)
!6129 = !DILocation(line: 282, column: 46, scope: !6113)
!6130 = !DILocation(line: 281, column: 6, scope: !6099)
!6131 = !DILocation(line: 283, column: 10, scope: !6113)
!6132 = !DILocation(line: 283, column: 16, scope: !6113)
!6133 = !DILocation(line: 283, column: 24, scope: !6113)
!6134 = !DILocation(line: 283, column: 30, scope: !6113)
!6135 = !DILocation(line: 283, column: 38, scope: !6113)
!6136 = !DILocation(line: 283, column: 44, scope: !6113)
!6137 = !DILocation(line: 283, column: 52, scope: !6113)
!6138 = !DILocation(line: 283, column: 57, scope: !6113)
!6139 = !DILocation(line: 283, column: 3, scope: !6113)
!6140 = !DILocation(line: 285, column: 2, scope: !6099)
!6141 = !DILocation(line: 286, column: 18, scope: !6099)
!6142 = !DILocation(line: 286, column: 27, scope: !6099)
!6143 = !DILocation(line: 286, column: 2, scope: !6099)
!6144 = !DILocation(line: 287, column: 6, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6099, file: !2, line: 287, column: 6)
!6146 = !DILocation(line: 287, column: 6, scope: !6099)
!6147 = !DILocation(line: 288, column: 3, scope: !6145)
!6148 = !DILocation(line: 290, column: 3, scope: !6145)
!6149 = !DILocation(line: 291, column: 15, scope: !6099)
!6150 = !DILocation(line: 291, column: 2, scope: !6099)
!6151 = !DILocation(line: 292, column: 2, scope: !6099)
!6152 = !DILocation(line: 294, column: 9, scope: !6099)
!6153 = !DILocation(line: 294, column: 2, scope: !6099)
!6154 = !DILocation(line: 295, column: 1, scope: !6099)
!6155 = distinct !DISubprogram(name: "rcu_read_lock", scope: !6156, file: !6156, line: 782, type: !2831, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!6156 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!6157 = !DILocation(line: 784, column: 2, scope: !6155)
!6158 = !DILocation(line: 786, column: 2, scope: !6155)
!6159 = !DILocation(line: 786, column: 2, scope: !6160)
!6160 = distinct !DILexicalBlock(scope: !6155, file: !6156, line: 786, column: 2)
!6161 = !DILocation(line: 787, column: 2, scope: !6155)
!6162 = !DILocation(line: 787, column: 2, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6155, file: !6156, line: 787, column: 2)
!6164 = !DILocation(line: 789, column: 1, scope: !6155)
!6165 = distinct !DISubprogram(name: "get_fs_root_rcu", scope: !2, file: !2, line: 239, type: !6166, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6168)
!6166 = !DISubroutineType(types: !6167)
!6167 = !{null, !1551, !4649}
!6168 = !{!6169, !6170, !6171, !6172, !6176}
!6169 = !DILocalVariable(name: "fs", arg: 1, scope: !6165, file: !2, line: 239, type: !1551)
!6170 = !DILocalVariable(name: "root", arg: 2, scope: !6165, file: !2, line: 239, type: !4649)
!6171 = !DILocalVariable(name: "seq", scope: !6165, file: !2, line: 241, type: !13)
!6172 = !DILocalVariable(name: "_seq", scope: !6173, file: !2, line: 244, type: !13)
!6173 = distinct !DILexicalBlock(scope: !6174, file: !2, line: 244, column: 9)
!6174 = distinct !DILexicalBlock(scope: !6175, file: !2, line: 244, column: 9)
!6175 = distinct !DILexicalBlock(scope: !6165, file: !2, line: 243, column: 5)
!6176 = !DILocalVariable(name: "__seq", scope: !6177, file: !2, line: 244, type: !13)
!6177 = distinct !DILexicalBlock(scope: !6173, file: !2, line: 244, column: 9)
!6178 = !DILocation(line: 239, column: 47, scope: !6165)
!6179 = !DILocation(line: 239, column: 64, scope: !6165)
!6180 = !DILocation(line: 241, column: 2, scope: !6165)
!6181 = !DILocation(line: 241, column: 11, scope: !6165)
!6182 = !DILocation(line: 243, column: 2, scope: !6165)
!6183 = !DILocation(line: 244, column: 9, scope: !6173)
!6184 = !DILocation(line: 244, column: 9, scope: !6177)
!6185 = distinct !{!6185, !6184, !6184, !6186, !6187}
!6186 = !{!"llvm.loop.mustprogress"}
!6187 = !{!"llvm.loop.unroll.disable"}
!6188 = !DILocation(line: 244, column: 9, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6173, file: !2, line: 244, column: 9)
!6190 = !DILocation(line: 244, column: 9, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !6189, file: !2, line: 244, column: 9)
!6192 = !DILocation(line: 244, column: 9, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6189, file: !2, line: 244, column: 9)
!6194 = !DILocation(line: 244, column: 9, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6193, file: !2, line: 244, column: 9)
!6196 = !{i64 2155506521}
!6197 = !DILocation(line: 244, column: 9, scope: !6174)
!6198 = !DILocation(line: 244, column: 9, scope: !6175)
!6199 = !DILocation(line: 244, column: 7, scope: !6175)
!6200 = !DILocation(line: 245, column: 4, scope: !6175)
!6201 = !DILocation(line: 245, column: 11, scope: !6175)
!6202 = !DILocation(line: 245, column: 15, scope: !6175)
!6203 = !DILocation(line: 246, column: 2, scope: !6175)
!6204 = !DILocation(line: 246, column: 11, scope: !6165)
!6205 = distinct !{!6205, !6182, !6206, !6186, !6187}
!6206 = !DILocation(line: 246, column: 45, scope: !6165)
!6207 = !DILocation(line: 247, column: 1, scope: !6165)
!6208 = distinct !DISubprogram(name: "get_current", scope: !6209, file: !6209, line: 39, type: !6210, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6212)
!6209 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6210 = !DISubroutineType(types: !6211)
!6211 = !{!591}
!6212 = !{!6213, !6215, !6217}
!6213 = !DILocalVariable(name: "pscr_ret__", scope: !6214, file: !6209, line: 41, type: !591)
!6214 = distinct !DILexicalBlock(scope: !6208, file: !6209, line: 41, column: 9)
!6215 = !DILocalVariable(name: "__vpp_verify", scope: !6216, file: !6209, line: 41, type: !1020)
!6216 = distinct !DILexicalBlock(scope: !6214, file: !6209, line: 41, column: 9)
!6217 = !DILocalVariable(name: "pfo_val__", scope: !6218, file: !6209, line: 41, type: !317)
!6218 = distinct !DILexicalBlock(scope: !6214, file: !6209, line: 41, column: 9)
!6219 = !DILocation(line: 41, column: 9, scope: !6214)
!6220 = !DILocation(line: 41, column: 9, scope: !6216)
!6221 = !DILocation(line: 41, column: 9, scope: !6218)
!6222 = !{i64 2148504327}
!6223 = !DILocation(line: 41, column: 9, scope: !6208)
!6224 = !DILocation(line: 41, column: 2, scope: !6208)
!6225 = distinct !DISubprogram(name: "d_unlinked", scope: !281, file: !281, line: 338, type: !4626, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6226)
!6226 = !{!6227}
!6227 = !DILocalVariable(name: "dentry", arg: 1, scope: !6225, file: !281, line: 338, type: !4615)
!6228 = !DILocation(line: 338, column: 51, scope: !6225)
!6229 = !DILocation(line: 340, column: 20, scope: !6225)
!6230 = !DILocation(line: 340, column: 9, scope: !6225)
!6231 = !DILocation(line: 340, column: 28, scope: !6225)
!6232 = !DILocation(line: 340, column: 32, scope: !6225)
!6233 = !DILocation(line: 340, column: 31, scope: !6225)
!6234 = !DILocation(line: 0, scope: !6225)
!6235 = !DILocation(line: 340, column: 2, scope: !6225)
!6236 = distinct !DISubprogram(name: "prepend", scope: !2, file: !2, line: 57, type: !6237, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6239)
!6237 = !DISubroutineType(types: !6238)
!6238 = !{!383, !5940, !22, !27}
!6239 = !{!6240, !6241, !6242}
!6240 = !DILocalVariable(name: "p", arg: 1, scope: !6236, file: !2, line: 57, type: !5940)
!6241 = !DILocalVariable(name: "str", arg: 2, scope: !6236, file: !2, line: 57, type: !22)
!6242 = !DILocalVariable(name: "namelen", arg: 3, scope: !6236, file: !2, line: 57, type: !27)
!6243 = !DILocation(line: 57, column: 44, scope: !6236)
!6244 = !DILocation(line: 57, column: 59, scope: !6236)
!6245 = !DILocation(line: 57, column: 68, scope: !6236)
!6246 = !DILocation(line: 60, column: 6, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6236, file: !2, line: 60, column: 6)
!6248 = !DILocation(line: 60, column: 9, scope: !6247)
!6249 = !DILocation(line: 60, column: 13, scope: !6247)
!6250 = !DILocation(line: 60, column: 6, scope: !6236)
!6251 = !DILocation(line: 61, column: 3, scope: !6247)
!6252 = !DILocation(line: 64, column: 6, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6236, file: !2, line: 64, column: 6)
!6254 = !DILocation(line: 64, column: 9, scope: !6253)
!6255 = !DILocation(line: 64, column: 15, scope: !6253)
!6256 = !DILocation(line: 64, column: 13, scope: !6253)
!6257 = !DILocation(line: 64, column: 6, scope: !6236)
!6258 = !DILocation(line: 66, column: 10, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6253, file: !2, line: 64, column: 24)
!6260 = !DILocation(line: 66, column: 20, scope: !6259)
!6261 = !DILocation(line: 66, column: 23, scope: !6259)
!6262 = !DILocation(line: 66, column: 18, scope: !6259)
!6263 = !DILocation(line: 66, column: 7, scope: !6259)
!6264 = !DILocation(line: 67, column: 13, scope: !6259)
!6265 = !DILocation(line: 67, column: 16, scope: !6259)
!6266 = !DILocation(line: 67, column: 3, scope: !6259)
!6267 = !DILocation(line: 67, column: 6, scope: !6259)
!6268 = !DILocation(line: 67, column: 10, scope: !6259)
!6269 = !DILocation(line: 68, column: 16, scope: !6259)
!6270 = !DILocation(line: 68, column: 19, scope: !6259)
!6271 = !DILocation(line: 68, column: 24, scope: !6259)
!6272 = !DILocation(line: 68, column: 29, scope: !6259)
!6273 = !DILocation(line: 68, column: 32, scope: !6259)
!6274 = !DILocation(line: 68, column: 3, scope: !6259)
!6275 = !DILocation(line: 69, column: 3, scope: !6259)
!6276 = !DILocation(line: 69, column: 6, scope: !6259)
!6277 = !DILocation(line: 69, column: 10, scope: !6259)
!6278 = !DILocation(line: 70, column: 3, scope: !6259)
!6279 = !DILocation(line: 74, column: 12, scope: !6236)
!6280 = !DILocation(line: 74, column: 2, scope: !6236)
!6281 = !DILocation(line: 74, column: 5, scope: !6236)
!6282 = !DILocation(line: 74, column: 9, scope: !6236)
!6283 = !DILocation(line: 75, column: 12, scope: !6236)
!6284 = !DILocation(line: 75, column: 2, scope: !6236)
!6285 = !DILocation(line: 75, column: 5, scope: !6236)
!6286 = !DILocation(line: 75, column: 9, scope: !6236)
!6287 = !DILocation(line: 76, column: 22, scope: !6236)
!6288 = !DILocation(line: 76, column: 25, scope: !6236)
!6289 = !DILocation(line: 76, column: 30, scope: !6236)
!6290 = !DILocation(line: 76, column: 35, scope: !6236)
!6291 = !DILocation(line: 76, column: 9, scope: !6236)
!6292 = !DILocation(line: 76, column: 2, scope: !6236)
!6293 = !DILocation(line: 77, column: 1, scope: !6236)
!6294 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !6156, file: !6156, line: 813, type: !2831, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!6295 = !DILocation(line: 815, column: 2, scope: !6294)
!6296 = !DILocation(line: 815, column: 2, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6294, file: !6156, line: 815, column: 2)
!6298 = !DILocation(line: 818, column: 2, scope: !6294)
!6299 = !DILocation(line: 819, column: 2, scope: !6294)
!6300 = !DILocation(line: 819, column: 2, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6294, file: !6156, line: 819, column: 2)
!6302 = !DILocation(line: 820, column: 1, scope: !6294)
!6303 = distinct !DISubprogram(name: "dynamic_dname", scope: !2, file: !2, line: 301, type: !6304, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6306)
!6304 = !DISubroutineType(types: !6305)
!6305 = !{!389, !389, !27, !22, null}
!6306 = !{!6307, !6308, !6309, !6310, !6321, !6322}
!6307 = !DILocalVariable(name: "buffer", arg: 1, scope: !6303, file: !2, line: 301, type: !389)
!6308 = !DILocalVariable(name: "buflen", arg: 2, scope: !6303, file: !2, line: 301, type: !27)
!6309 = !DILocalVariable(name: "fmt", arg: 3, scope: !6303, file: !2, line: 301, type: !22)
!6310 = !DILocalVariable(name: "args", scope: !6303, file: !2, line: 303, type: !6311)
!6311 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !6312, line: 5, baseType: !6313)
!6312 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!6313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !6314)
!6314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6315, size: 192, elements: !838)
!6315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !6316)
!6316 = !{!6317, !6318, !6319, !6320}
!6317 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !6315, file: !2, line: 303, baseType: !13, size: 32)
!6318 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !6315, file: !2, line: 303, baseType: !13, size: 32, offset: 32)
!6319 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !6315, file: !2, line: 303, baseType: !25, size: 64, offset: 64)
!6320 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !6315, file: !2, line: 303, baseType: !25, size: 64, offset: 128)
!6321 = !DILocalVariable(name: "temp", scope: !6303, file: !2, line: 304, type: !3981)
!6322 = !DILocalVariable(name: "sz", scope: !6303, file: !2, line: 305, type: !27)
!6323 = !DILocation(line: 301, column: 27, scope: !6303)
!6324 = !DILocation(line: 301, column: 39, scope: !6303)
!6325 = !DILocation(line: 301, column: 59, scope: !6303)
!6326 = !DILocation(line: 303, column: 2, scope: !6303)
!6327 = !DILocation(line: 303, column: 10, scope: !6303)
!6328 = !DILocation(line: 304, column: 2, scope: !6303)
!6329 = !DILocation(line: 304, column: 7, scope: !6303)
!6330 = !DILocation(line: 305, column: 2, scope: !6303)
!6331 = !DILocation(line: 305, column: 6, scope: !6303)
!6332 = !DILocation(line: 307, column: 2, scope: !6303)
!6333 = !DILocation(line: 308, column: 17, scope: !6303)
!6334 = !DILocation(line: 308, column: 37, scope: !6303)
!6335 = !DILocation(line: 308, column: 42, scope: !6303)
!6336 = !DILocation(line: 308, column: 7, scope: !6303)
!6337 = !DILocation(line: 308, column: 48, scope: !6303)
!6338 = !DILocation(line: 308, column: 5, scope: !6303)
!6339 = !DILocation(line: 309, column: 2, scope: !6303)
!6340 = !DILocation(line: 311, column: 6, scope: !6341)
!6341 = distinct !DILexicalBlock(scope: !6303, file: !2, line: 311, column: 6)
!6342 = !DILocation(line: 311, column: 9, scope: !6341)
!6343 = !DILocation(line: 311, column: 24, scope: !6341)
!6344 = !DILocation(line: 311, column: 27, scope: !6341)
!6345 = !DILocation(line: 311, column: 32, scope: !6341)
!6346 = !DILocation(line: 311, column: 30, scope: !6341)
!6347 = !DILocation(line: 311, column: 6, scope: !6303)
!6348 = !DILocation(line: 312, column: 10, scope: !6341)
!6349 = !DILocation(line: 312, column: 3, scope: !6341)
!6350 = !DILocation(line: 314, column: 12, scope: !6303)
!6351 = !DILocation(line: 314, column: 21, scope: !6303)
!6352 = !DILocation(line: 314, column: 19, scope: !6303)
!6353 = !DILocation(line: 314, column: 9, scope: !6303)
!6354 = !DILocation(line: 315, column: 16, scope: !6303)
!6355 = !DILocation(line: 315, column: 9, scope: !6303)
!6356 = !DILocation(line: 315, column: 30, scope: !6303)
!6357 = !DILocation(line: 315, column: 2, scope: !6303)
!6358 = !DILocation(line: 316, column: 1, scope: !6303)
!6359 = !DISubprogram(name: "vsnprintf", scope: !6360, file: !6360, line: 13, type: !6361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6360 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!6361 = !DISubroutineType(types: !6362)
!6362 = !{!27, !389, !40, !22, !6363}
!6363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6315, size: 64)
!6364 = distinct !DISubprogram(name: "simple_dname", scope: !2, file: !2, line: 318, type: !4643, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6365)
!6365 = !{!6366, !6367, !6368, !6369}
!6366 = !DILocalVariable(name: "dentry", arg: 1, scope: !6364, file: !2, line: 318, type: !279)
!6367 = !DILocalVariable(name: "buffer", arg: 2, scope: !6364, file: !2, line: 318, type: !389)
!6368 = !DILocalVariable(name: "buflen", arg: 3, scope: !6364, file: !2, line: 318, type: !27)
!6369 = !DILocalVariable(name: "b", scope: !6364, file: !2, line: 320, type: !5920)
!6370 = !DILocation(line: 318, column: 35, scope: !6364)
!6371 = !DILocation(line: 318, column: 49, scope: !6364)
!6372 = !DILocation(line: 318, column: 61, scope: !6364)
!6373 = !DILocation(line: 320, column: 2, scope: !6364)
!6374 = !DILocation(line: 322, column: 2, scope: !6364)
!6375 = !DILocation(line: 323, column: 14, scope: !6364)
!6376 = !DILocation(line: 323, column: 22, scope: !6364)
!6377 = !DILocation(line: 323, column: 29, scope: !6364)
!6378 = !DILocation(line: 323, column: 35, scope: !6364)
!6379 = !DILocation(line: 323, column: 43, scope: !6364)
!6380 = !DILocation(line: 323, column: 50, scope: !6364)
!6381 = !DILocation(line: 323, column: 2, scope: !6364)
!6382 = !DILocation(line: 324, column: 2, scope: !6364)
!6383 = !DILocation(line: 325, column: 9, scope: !6364)
!6384 = !DILocation(line: 326, column: 1, scope: !6364)
!6385 = !DILocation(line: 325, column: 2, scope: !6364)
!6386 = distinct !DISubprogram(name: "dentry_path_raw", scope: !2, file: !2, line: 362, type: !6387, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6389)
!6387 = !DISubroutineType(types: !6388)
!6388 = !{!389, !4615, !389, !27}
!6389 = !{!6390, !6391, !6392, !6393}
!6390 = !DILocalVariable(name: "dentry", arg: 1, scope: !6386, file: !2, line: 362, type: !4615)
!6391 = !DILocalVariable(name: "buf", arg: 2, scope: !6386, file: !2, line: 362, type: !389)
!6392 = !DILocalVariable(name: "buflen", arg: 3, scope: !6386, file: !2, line: 362, type: !27)
!6393 = !DILocalVariable(name: "b", scope: !6386, file: !2, line: 364, type: !5920)
!6394 = !DILocation(line: 362, column: 44, scope: !6386)
!6395 = !DILocation(line: 362, column: 58, scope: !6386)
!6396 = !DILocation(line: 362, column: 67, scope: !6386)
!6397 = !DILocation(line: 364, column: 2, scope: !6386)
!6398 = !DILocation(line: 366, column: 2, scope: !6386)
!6399 = !DILocation(line: 367, column: 23, scope: !6386)
!6400 = !DILocation(line: 367, column: 9, scope: !6386)
!6401 = !DILocation(line: 368, column: 1, scope: !6386)
!6402 = !DILocation(line: 367, column: 2, scope: !6386)
!6403 = distinct !DISubprogram(name: "__dentry_path", scope: !2, file: !2, line: 331, type: !6404, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6406)
!6404 = !DISubroutineType(types: !6405)
!6405 = !{!389, !4615, !5940}
!6406 = !{!6407, !6408, !6409, !6410, !6411, !6412, !6413}
!6407 = !DILocalVariable(name: "d", arg: 1, scope: !6403, file: !2, line: 331, type: !4615)
!6408 = !DILocalVariable(name: "p", arg: 2, scope: !6403, file: !2, line: 331, type: !5940)
!6409 = !DILocalVariable(name: "dentry", scope: !6403, file: !2, line: 333, type: !4615)
!6410 = !DILocalVariable(name: "b", scope: !6403, file: !2, line: 334, type: !5920)
!6411 = !DILocalVariable(name: "seq", scope: !6403, file: !2, line: 335, type: !27)
!6412 = !DILabel(scope: !6403, name: "restart", file: !2, line: 338)
!6413 = !DILocalVariable(name: "parent", scope: !6414, file: !2, line: 343, type: !4615)
!6414 = distinct !DILexicalBlock(scope: !6403, file: !2, line: 342, column: 27)
!6415 = !DILocation(line: 331, column: 49, scope: !6403)
!6416 = !DILocation(line: 331, column: 75, scope: !6403)
!6417 = !DILocation(line: 333, column: 2, scope: !6403)
!6418 = !DILocation(line: 333, column: 23, scope: !6403)
!6419 = !DILocation(line: 334, column: 2, scope: !6403)
!6420 = !DILocation(line: 334, column: 24, scope: !6403)
!6421 = !DILocation(line: 335, column: 2, scope: !6403)
!6422 = !DILocation(line: 335, column: 6, scope: !6403)
!6423 = !DILocation(line: 337, column: 2, scope: !6403)
!6424 = !DILocation(line: 338, column: 1, scope: !6403)
!6425 = !DILocation(line: 339, column: 11, scope: !6403)
!6426 = !DILocation(line: 339, column: 9, scope: !6403)
!6427 = !DILocation(line: 340, column: 7, scope: !6403)
!6428 = !DILocation(line: 340, column: 6, scope: !6403)
!6429 = !DILocation(line: 341, column: 2, scope: !6403)
!6430 = !DILocation(line: 342, column: 2, scope: !6403)
!6431 = !DILocation(line: 342, column: 10, scope: !6403)
!6432 = !DILocation(line: 342, column: 9, scope: !6403)
!6433 = !DILocation(line: 343, column: 3, scope: !6414)
!6434 = !DILocation(line: 343, column: 24, scope: !6414)
!6435 = !DILocation(line: 343, column: 33, scope: !6414)
!6436 = !DILocation(line: 343, column: 41, scope: !6414)
!6437 = !DILocation(line: 345, column: 3, scope: !6414)
!6438 = !DILocation(line: 346, column: 26, scope: !6439)
!6439 = distinct !DILexicalBlock(scope: !6414, file: !2, line: 346, column: 7)
!6440 = !DILocation(line: 346, column: 34, scope: !6439)
!6441 = !DILocation(line: 346, column: 8, scope: !6439)
!6442 = !DILocation(line: 346, column: 7, scope: !6414)
!6443 = !DILocation(line: 347, column: 4, scope: !6439)
!6444 = !DILocation(line: 348, column: 12, scope: !6414)
!6445 = !DILocation(line: 348, column: 10, scope: !6414)
!6446 = !DILocation(line: 349, column: 2, scope: !6403)
!6447 = distinct !{!6447, !6430, !6446, !6186, !6187}
!6448 = !DILocation(line: 350, column: 8, scope: !6449)
!6449 = distinct !DILexicalBlock(scope: !6403, file: !2, line: 350, column: 6)
!6450 = !DILocation(line: 350, column: 12, scope: !6449)
!6451 = !DILocation(line: 350, column: 6, scope: !6403)
!6452 = !DILocation(line: 351, column: 3, scope: !6449)
!6453 = !DILocation(line: 352, column: 34, scope: !6454)
!6454 = distinct !DILexicalBlock(scope: !6403, file: !2, line: 352, column: 6)
!6455 = !DILocation(line: 352, column: 6, scope: !6454)
!6456 = !DILocation(line: 352, column: 6, scope: !6403)
!6457 = !DILocation(line: 353, column: 7, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !6454, file: !2, line: 352, column: 40)
!6459 = !DILocation(line: 354, column: 3, scope: !6458)
!6460 = !DILocation(line: 356, column: 30, scope: !6403)
!6461 = !DILocation(line: 356, column: 2, scope: !6403)
!6462 = !DILocation(line: 357, column: 8, scope: !6463)
!6463 = distinct !DILexicalBlock(scope: !6403, file: !2, line: 357, column: 6)
!6464 = !DILocation(line: 357, column: 15, scope: !6463)
!6465 = !DILocation(line: 357, column: 18, scope: !6463)
!6466 = !DILocation(line: 357, column: 12, scope: !6463)
!6467 = !DILocation(line: 357, column: 6, scope: !6403)
!6468 = !DILocation(line: 358, column: 3, scope: !6463)
!6469 = !DILocation(line: 359, column: 9, scope: !6403)
!6470 = !DILocation(line: 360, column: 1, scope: !6403)
!6471 = !DILocation(line: 359, column: 2, scope: !6403)
!6472 = distinct !DISubprogram(name: "dentry_path", scope: !2, file: !2, line: 371, type: !6387, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6473)
!6473 = !{!6474, !6475, !6476, !6477}
!6474 = !DILocalVariable(name: "dentry", arg: 1, scope: !6472, file: !2, line: 371, type: !4615)
!6475 = !DILocalVariable(name: "buf", arg: 2, scope: !6472, file: !2, line: 371, type: !389)
!6476 = !DILocalVariable(name: "buflen", arg: 3, scope: !6472, file: !2, line: 371, type: !27)
!6477 = !DILocalVariable(name: "b", scope: !6472, file: !2, line: 373, type: !5920)
!6478 = !DILocation(line: 371, column: 40, scope: !6472)
!6479 = !DILocation(line: 371, column: 54, scope: !6472)
!6480 = !DILocation(line: 371, column: 63, scope: !6472)
!6481 = !DILocation(line: 373, column: 2, scope: !6472)
!6482 = !DILocation(line: 375, column: 6, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6472, file: !2, line: 375, column: 6)
!6484 = !DILocation(line: 375, column: 6, scope: !6472)
!6485 = !DILocation(line: 376, column: 3, scope: !6483)
!6486 = !DILocation(line: 378, column: 3, scope: !6483)
!6487 = !DILocation(line: 379, column: 23, scope: !6472)
!6488 = !DILocation(line: 379, column: 9, scope: !6472)
!6489 = !DILocation(line: 380, column: 1, scope: !6472)
!6490 = !DILocation(line: 379, column: 2, scope: !6472)
!6491 = distinct !DISubprogram(name: "__x64_sys_getcwd", scope: !2, file: !2, line: 412, type: !6492, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6496)
!6492 = !DISubroutineType(types: !6493)
!6493 = !{!458, !6494}
!6494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6495, size: 64)
!6495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3858)
!6496 = !{!6497}
!6497 = !DILocalVariable(name: "regs", arg: 1, scope: !6491, file: !2, line: 412, type: !6494)
!6498 = !DILocation(line: 412, column: 1, scope: !6491)
!6499 = distinct !DISubprogram(name: "__se_sys_getcwd", scope: !2, file: !2, line: 412, type: !6500, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6502)
!6500 = !DISubroutineType(types: !6501)
!6501 = !{!458, !458, !458}
!6502 = !{!6503, !6504, !6505}
!6503 = !DILocalVariable(name: "buf", arg: 1, scope: !6499, file: !2, line: 412, type: !458)
!6504 = !DILocalVariable(name: "size", arg: 2, scope: !6499, file: !2, line: 412, type: !458)
!6505 = !DILocalVariable(name: "ret", scope: !6499, file: !2, line: 412, type: !458)
!6506 = !DILocation(line: 412, column: 1, scope: !6499)
!6507 = !DILocation(line: 412, column: 1, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6499, file: !2, line: 412, column: 1)
!6509 = distinct !DISubprogram(name: "__ia32_sys_getcwd", scope: !2, file: !2, line: 412, type: !6492, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6510)
!6510 = !{!6511}
!6511 = !DILocalVariable(name: "regs", arg: 1, scope: !6509, file: !2, line: 412, type: !6494)
!6512 = !DILocation(line: 412, column: 1, scope: !6509)
!6513 = distinct !DISubprogram(name: "read_seqbegin_or_lock", scope: !286, file: !286, line: 1184, type: !6514, scopeLine: 1185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6517)
!6514 = !DISubroutineType(types: !6515)
!6515 = !{null, !6516, !1423}
!6516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!6517 = !{!6518, !6519}
!6518 = !DILocalVariable(name: "lock", arg: 1, scope: !6513, file: !286, line: 1184, type: !6516)
!6519 = !DILocalVariable(name: "seq", arg: 2, scope: !6513, file: !286, line: 1184, type: !1423)
!6520 = !DILocation(line: 1184, column: 53, scope: !6513)
!6521 = !DILocation(line: 1184, column: 64, scope: !6513)
!6522 = !DILocation(line: 1186, column: 9, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6513, file: !286, line: 1186, column: 6)
!6524 = !DILocation(line: 1186, column: 8, scope: !6523)
!6525 = !DILocation(line: 1186, column: 13, scope: !6523)
!6526 = !DILocation(line: 1186, column: 6, scope: !6513)
!6527 = !DILocation(line: 1187, column: 24, scope: !6523)
!6528 = !DILocation(line: 1187, column: 10, scope: !6523)
!6529 = !DILocation(line: 1187, column: 4, scope: !6523)
!6530 = !DILocation(line: 1187, column: 8, scope: !6523)
!6531 = !DILocation(line: 1187, column: 3, scope: !6523)
!6532 = !DILocation(line: 1189, column: 21, scope: !6523)
!6533 = !DILocation(line: 1189, column: 3, scope: !6523)
!6534 = !DILocation(line: 1190, column: 1, scope: !6513)
!6535 = distinct !DISubprogram(name: "__prepend_path", scope: !2, file: !2, line: 104, type: !6536, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6540)
!6536 = !DISubroutineType(types: !6537)
!6537 = !{!27, !4615, !6538, !4404, !5940}
!6538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6539, size: 64)
!6539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4736)
!6540 = !{!6541, !6542, !6543, !6544, !6545, !6547, !6550}
!6541 = !DILocalVariable(name: "dentry", arg: 1, scope: !6535, file: !2, line: 104, type: !4615)
!6542 = !DILocalVariable(name: "mnt", arg: 2, scope: !6535, file: !2, line: 104, type: !6538)
!6543 = !DILocalVariable(name: "root", arg: 3, scope: !6535, file: !2, line: 105, type: !4404)
!6544 = !DILocalVariable(name: "p", arg: 4, scope: !6535, file: !2, line: 105, type: !5940)
!6545 = !DILocalVariable(name: "parent", scope: !6546, file: !2, line: 108, type: !4615)
!6546 = distinct !DILexicalBlock(scope: !6535, file: !2, line: 107, column: 59)
!6547 = !DILocalVariable(name: "m", scope: !6548, file: !2, line: 111, type: !4735)
!6548 = distinct !DILexicalBlock(scope: !6549, file: !2, line: 110, column: 36)
!6549 = distinct !DILexicalBlock(scope: !6546, file: !2, line: 110, column: 7)
!6550 = !DILocalVariable(name: "mnt_ns", scope: !6548, file: !2, line: 112, type: !4729)
!6551 = !DILocation(line: 104, column: 48, scope: !6535)
!6552 = !DILocation(line: 104, column: 76, scope: !6535)
!6553 = !DILocation(line: 105, column: 25, scope: !6535)
!6554 = !DILocation(line: 105, column: 54, scope: !6535)
!6555 = !DILocation(line: 107, column: 2, scope: !6535)
!6556 = !DILocation(line: 107, column: 9, scope: !6535)
!6557 = !DILocation(line: 107, column: 19, scope: !6535)
!6558 = !DILocation(line: 107, column: 25, scope: !6535)
!6559 = !DILocation(line: 107, column: 16, scope: !6535)
!6560 = !DILocation(line: 107, column: 32, scope: !6535)
!6561 = !DILocation(line: 107, column: 36, scope: !6535)
!6562 = !DILocation(line: 107, column: 41, scope: !6535)
!6563 = !DILocation(line: 107, column: 48, scope: !6535)
!6564 = !DILocation(line: 107, column: 54, scope: !6535)
!6565 = !DILocation(line: 107, column: 45, scope: !6535)
!6566 = !DILocation(line: 108, column: 3, scope: !6546)
!6567 = !DILocation(line: 108, column: 24, scope: !6546)
!6568 = !DILocation(line: 108, column: 33, scope: !6569)
!6569 = distinct !DILexicalBlock(scope: !6546, file: !2, line: 108, column: 33)
!6570 = !DILocation(line: 108, column: 33, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6569, file: !2, line: 108, column: 33)
!6572 = !DILocation(line: 110, column: 7, scope: !6549)
!6573 = !DILocation(line: 110, column: 17, scope: !6549)
!6574 = !DILocation(line: 110, column: 22, scope: !6549)
!6575 = !DILocation(line: 110, column: 26, scope: !6549)
!6576 = !DILocation(line: 110, column: 14, scope: !6549)
!6577 = !DILocation(line: 110, column: 7, scope: !6546)
!6578 = !DILocation(line: 111, column: 4, scope: !6548)
!6579 = !DILocation(line: 111, column: 18, scope: !6548)
!6580 = !DILocation(line: 111, column: 22, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6548, file: !2, line: 111, column: 22)
!6582 = !DILocation(line: 111, column: 22, scope: !6583)
!6583 = distinct !DILexicalBlock(scope: !6581, file: !2, line: 111, column: 22)
!6584 = !DILocation(line: 112, column: 4, scope: !6548)
!6585 = !DILocation(line: 112, column: 26, scope: !6548)
!6586 = !DILocation(line: 114, column: 8, scope: !6587)
!6587 = distinct !DILexicalBlock(scope: !6548, file: !2, line: 114, column: 8)
!6588 = !DILocation(line: 114, column: 8, scope: !6548)
!6589 = !DILocation(line: 115, column: 14, scope: !6590)
!6590 = distinct !DILexicalBlock(scope: !6591, file: !2, line: 115, column: 14)
!6591 = distinct !DILexicalBlock(scope: !6587, file: !2, line: 114, column: 26)
!6592 = !DILocation(line: 115, column: 14, scope: !6593)
!6593 = distinct !DILexicalBlock(scope: !6590, file: !2, line: 115, column: 14)
!6594 = !DILocation(line: 115, column: 12, scope: !6591)
!6595 = !DILocation(line: 116, column: 11, scope: !6591)
!6596 = !DILocation(line: 116, column: 9, scope: !6591)
!6597 = !DILocation(line: 117, column: 5, scope: !6591)
!6598 = distinct !{!6598, !6555, !6599, !6186, !6187}
!6599 = !DILocation(line: 136, column: 2, scope: !6535)
!6600 = !DILocation(line: 120, column: 13, scope: !6601)
!6601 = distinct !DILexicalBlock(scope: !6548, file: !2, line: 120, column: 13)
!6602 = !DILocation(line: 120, column: 13, scope: !6603)
!6603 = distinct !DILexicalBlock(scope: !6601, file: !2, line: 120, column: 13)
!6604 = !DILocation(line: 120, column: 11, scope: !6548)
!6605 = !DILocation(line: 122, column: 24, scope: !6606)
!6606 = distinct !DILexicalBlock(scope: !6548, file: !2, line: 122, column: 8)
!6607 = !DILocation(line: 122, column: 9, scope: !6606)
!6608 = !DILocation(line: 122, column: 32, scope: !6606)
!6609 = !DILocation(line: 122, column: 47, scope: !6606)
!6610 = !DILocation(line: 122, column: 36, scope: !6606)
!6611 = !DILocation(line: 122, column: 8, scope: !6548)
!6612 = !DILocation(line: 123, column: 5, scope: !6606)
!6613 = !DILocation(line: 125, column: 5, scope: !6606)
!6614 = !DILocation(line: 126, column: 3, scope: !6549)
!6615 = !DILocation(line: 128, column: 7, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6546, file: !2, line: 128, column: 7)
!6617 = !DILocation(line: 128, column: 7, scope: !6546)
!6618 = !DILocation(line: 130, column: 4, scope: !6616)
!6619 = !DILocation(line: 132, column: 3, scope: !6546)
!6620 = !DILocation(line: 133, column: 21, scope: !6621)
!6621 = distinct !DILexicalBlock(scope: !6546, file: !2, line: 133, column: 7)
!6622 = !DILocation(line: 133, column: 25, scope: !6621)
!6623 = !DILocation(line: 133, column: 33, scope: !6621)
!6624 = !DILocation(line: 133, column: 8, scope: !6621)
!6625 = !DILocation(line: 133, column: 7, scope: !6546)
!6626 = !DILocation(line: 134, column: 4, scope: !6621)
!6627 = !DILocation(line: 135, column: 12, scope: !6546)
!6628 = !DILocation(line: 135, column: 10, scope: !6546)
!6629 = !DILocation(line: 137, column: 2, scope: !6535)
!6630 = !DILocation(line: 138, column: 1, scope: !6535)
!6631 = distinct !DISubprogram(name: "real_mount", scope: !4731, file: !4731, line: 84, type: !6632, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6634)
!6632 = !DISubroutineType(types: !6633)
!6633 = !{!4735, !1565}
!6634 = !{!6635, !6636}
!6635 = !DILocalVariable(name: "mnt", arg: 1, scope: !6631, file: !4731, line: 84, type: !1565)
!6636 = !DILocalVariable(name: "__mptr", scope: !6637, file: !4731, line: 86, type: !25)
!6637 = distinct !DILexicalBlock(scope: !6631, file: !4731, line: 86, column: 9)
!6638 = !DILocation(line: 84, column: 57, scope: !6631)
!6639 = !DILocation(line: 86, column: 9, scope: !6637)
!6640 = !DILocation(line: 86, column: 9, scope: !6631)
!6641 = !DILocation(line: 86, column: 2, scope: !6631)
!6642 = distinct !DISubprogram(name: "need_seqretry", scope: !286, file: !286, line: 1199, type: !6643, scopeLine: 1200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6645)
!6643 = !DISubroutineType(types: !6644)
!6644 = !{!27, !6516, !27}
!6645 = !{!6646, !6647}
!6646 = !DILocalVariable(name: "lock", arg: 1, scope: !6642, file: !286, line: 1199, type: !6516)
!6647 = !DILocalVariable(name: "seq", arg: 2, scope: !6642, file: !286, line: 1199, type: !27)
!6648 = !DILocation(line: 1199, column: 44, scope: !6642)
!6649 = !DILocation(line: 1199, column: 54, scope: !6642)
!6650 = !DILocation(line: 1201, column: 11, scope: !6642)
!6651 = !DILocation(line: 1201, column: 15, scope: !6642)
!6652 = !DILocation(line: 1201, column: 20, scope: !6642)
!6653 = !DILocation(line: 1201, column: 37, scope: !6642)
!6654 = !DILocation(line: 1201, column: 43, scope: !6642)
!6655 = !DILocation(line: 1201, column: 23, scope: !6642)
!6656 = !DILocation(line: 0, scope: !6642)
!6657 = !DILocation(line: 1201, column: 2, scope: !6642)
!6658 = distinct !DISubprogram(name: "done_seqretry", scope: !286, file: !286, line: 1212, type: !6659, scopeLine: 1213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6661)
!6659 = !DISubroutineType(types: !6660)
!6660 = !{null, !6516, !27}
!6661 = !{!6662, !6663}
!6662 = !DILocalVariable(name: "lock", arg: 1, scope: !6658, file: !286, line: 1212, type: !6516)
!6663 = !DILocalVariable(name: "seq", arg: 2, scope: !6658, file: !286, line: 1212, type: !27)
!6664 = !DILocation(line: 1212, column: 45, scope: !6658)
!6665 = !DILocation(line: 1212, column: 55, scope: !6658)
!6666 = !DILocation(line: 1214, column: 6, scope: !6667)
!6667 = distinct !DILexicalBlock(scope: !6658, file: !286, line: 1214, column: 6)
!6668 = !DILocation(line: 1214, column: 10, scope: !6667)
!6669 = !DILocation(line: 1214, column: 6, scope: !6658)
!6670 = !DILocation(line: 1215, column: 23, scope: !6667)
!6671 = !DILocation(line: 1215, column: 3, scope: !6667)
!6672 = !DILocation(line: 1216, column: 1, scope: !6658)
!6673 = distinct !DISubprogram(name: "read_seqbegin", scope: !286, file: !286, line: 891, type: !6674, scopeLine: 892, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6678)
!6674 = !DISubroutineType(types: !6675)
!6675 = !{!13, !6676}
!6676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6677, size: 64)
!6677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4882)
!6678 = !{!6679, !6680, !6683}
!6679 = !DILocalVariable(name: "sl", arg: 1, scope: !6673, file: !286, line: 891, type: !6676)
!6680 = !DILocalVariable(name: "_seq", scope: !6681, file: !286, line: 893, type: !13)
!6681 = distinct !DILexicalBlock(scope: !6682, file: !286, line: 893, column: 9)
!6682 = distinct !DILexicalBlock(scope: !6673, file: !286, line: 893, column: 9)
!6683 = !DILocalVariable(name: "__seq", scope: !6684, file: !286, line: 893, type: !13)
!6684 = distinct !DILexicalBlock(scope: !6681, file: !286, line: 893, column: 9)
!6685 = !DILocation(line: 891, column: 55, scope: !6673)
!6686 = !DILocation(line: 893, column: 9, scope: !6681)
!6687 = !DILocation(line: 893, column: 9, scope: !6684)
!6688 = distinct !{!6688, !6687, !6687, !6186, !6187}
!6689 = !DILocation(line: 893, column: 9, scope: !6690)
!6690 = distinct !DILexicalBlock(scope: !6681, file: !286, line: 893, column: 9)
!6691 = !DILocation(line: 893, column: 9, scope: !6692)
!6692 = distinct !DILexicalBlock(scope: !6690, file: !286, line: 893, column: 9)
!6693 = !DILocation(line: 893, column: 9, scope: !6694)
!6694 = distinct !DILexicalBlock(scope: !6690, file: !286, line: 893, column: 9)
!6695 = !DILocation(line: 893, column: 9, scope: !6696)
!6696 = distinct !DILexicalBlock(scope: !6694, file: !286, line: 893, column: 9)
!6697 = !{i64 2150414592}
!6698 = !DILocation(line: 893, column: 9, scope: !6682)
!6699 = !DILocation(line: 893, column: 9, scope: !6673)
!6700 = !DILocation(line: 893, column: 2, scope: !6673)
!6701 = distinct !DISubprogram(name: "read_seqlock_excl", scope: !286, file: !286, line: 1057, type: !6702, scopeLine: 1058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6704)
!6702 = !DISubroutineType(types: !6703)
!6703 = !{null, !6516}
!6704 = !{!6705}
!6705 = !DILocalVariable(name: "sl", arg: 1, scope: !6701, file: !286, line: 1057, type: !6516)
!6706 = !DILocation(line: 1057, column: 49, scope: !6701)
!6707 = !DILocation(line: 1059, column: 13, scope: !6701)
!6708 = !DILocation(line: 1059, column: 17, scope: !6701)
!6709 = !DILocation(line: 1059, column: 2, scope: !6701)
!6710 = !DILocation(line: 1060, column: 1, scope: !6701)
!6711 = distinct !DISubprogram(name: "__seqprop_spinlock_sequence", scope: !286, file: !286, line: 275, type: !6712, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6716)
!6712 = !DISubroutineType(types: !6713)
!6713 = !{!13, !6714}
!6714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6715, size: 64)
!6715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!6716 = !{!6717, !6718}
!6717 = !DILocalVariable(name: "s", arg: 1, scope: !6711, file: !286, line: 275, type: !6714)
!6718 = !DILocalVariable(name: "seq", scope: !6711, file: !286, line: 275, type: !13)
!6719 = !DILocation(line: 275, column: 1, scope: !6711)
!6720 = !DILocation(line: 275, column: 1, scope: !6721)
!6721 = distinct !DILexicalBlock(scope: !6711, file: !286, line: 275, column: 1)
!6722 = !DILocation(line: 275, column: 1, scope: !6723)
!6723 = distinct !DILexicalBlock(scope: !6721, file: !286, line: 275, column: 1)
!6724 = !DILocation(line: 275, column: 1, scope: !6725)
!6725 = distinct !DILexicalBlock(scope: !6711, file: !286, line: 275, column: 1)
!6726 = distinct !DISubprogram(name: "cpu_relax", scope: !6727, file: !6727, line: 16, type: !2831, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!6727 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!6728 = !DILocation(line: 18, column: 2, scope: !6726)
!6729 = !DILocation(line: 19, column: 1, scope: !6726)
!6730 = distinct !DISubprogram(name: "kcsan_atomic_next", scope: !6731, file: !6731, line: 203, type: !5028, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6732)
!6731 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6732 = !{!6733}
!6733 = !DILocalVariable(name: "n", arg: 1, scope: !6730, file: !6731, line: 203, type: !27)
!6734 = !DILocation(line: 203, column: 42, scope: !6730)
!6735 = !DILocation(line: 203, column: 48, scope: !6730)
!6736 = distinct !DISubprogram(name: "rep_nop", scope: !6727, file: !6727, line: 11, type: !2831, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!6737 = !DILocation(line: 13, column: 2, scope: !6736)
!6738 = !{i64 2160625}
!6739 = !DILocation(line: 14, column: 1, scope: !6736)
!6740 = distinct !DISubprogram(name: "spin_lock", scope: !6741, file: !6741, line: 349, type: !6742, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6744)
!6741 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6742 = !DISubroutineType(types: !6743)
!6743 = !{null, !1996}
!6744 = !{!6745}
!6745 = !DILocalVariable(name: "lock", arg: 1, scope: !6740, file: !6741, line: 349, type: !1996)
!6746 = !DILocation(line: 349, column: 51, scope: !6740)
!6747 = !DILocation(line: 351, column: 2, scope: !6740)
!6748 = !DILocation(line: 352, column: 1, scope: !6740)
!6749 = !DISubprogram(name: "_raw_spin_lock", scope: !6750, file: !6750, line: 22, type: !6751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6750 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6751 = !DISubroutineType(types: !6752)
!6752 = !{null, !6753}
!6753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!6754 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !6090, file: !6090, line: 70, type: !6755, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6757)
!6755 = !DISubroutineType(types: !6756)
!6756 = !{!383, !1020}
!6757 = !{!6758}
!6758 = !DILocalVariable(name: "ptr", arg: 1, scope: !6754, file: !6090, line: 70, type: !1020)
!6759 = !DILocation(line: 70, column: 68, scope: !6754)
!6760 = !DILocation(line: 72, column: 9, scope: !6754)
!6761 = !DILocation(line: 72, column: 24, scope: !6754)
!6762 = !DILocation(line: 72, column: 27, scope: !6754)
!6763 = !DILocation(line: 72, column: 2, scope: !6754)
!6764 = distinct !DISubprogram(name: "is_anon_ns", scope: !4731, file: !4731, line: 144, type: !6765, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6767)
!6765 = !DISubroutineType(types: !6766)
!6766 = !{!383, !4729}
!6767 = !{!6768}
!6768 = !DILocalVariable(name: "ns", arg: 1, scope: !6764, file: !4731, line: 144, type: !4729)
!6769 = !DILocation(line: 144, column: 53, scope: !6764)
!6770 = !DILocation(line: 146, column: 9, scope: !6764)
!6771 = !DILocation(line: 146, column: 13, scope: !6764)
!6772 = !DILocation(line: 146, column: 17, scope: !6764)
!6773 = !DILocation(line: 146, column: 2, scope: !6764)
!6774 = distinct !DISubprogram(name: "prepend_name", scope: !2, file: !2, line: 96, type: !6775, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6777)
!6775 = !DISubroutineType(types: !6776)
!6776 = !{!383, !5940, !4622}
!6777 = !{!6778, !6779, !6780, !6781, !6784}
!6778 = !DILocalVariable(name: "p", arg: 1, scope: !6774, file: !2, line: 96, type: !5940)
!6779 = !DILocalVariable(name: "name", arg: 2, scope: !6774, file: !2, line: 96, type: !4622)
!6780 = !DILocalVariable(name: "dname", scope: !6774, file: !2, line: 98, type: !22)
!6781 = !DILocalVariable(name: "___p1", scope: !6782, file: !2, line: 98, type: !6783)
!6782 = distinct !DILexicalBlock(scope: !6774, file: !2, line: 98, column: 22)
!6783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!6784 = !DILocalVariable(name: "dlen", scope: !6774, file: !2, line: 99, type: !313)
!6785 = !DILocation(line: 96, column: 49, scope: !6774)
!6786 = !DILocation(line: 96, column: 71, scope: !6774)
!6787 = !DILocation(line: 98, column: 2, scope: !6774)
!6788 = !DILocation(line: 98, column: 14, scope: !6774)
!6789 = !DILocation(line: 98, column: 22, scope: !6782)
!6790 = !DILocation(line: 98, column: 22, scope: !6791)
!6791 = distinct !DILexicalBlock(scope: !6782, file: !2, line: 98, column: 22)
!6792 = !DILocation(line: 98, column: 22, scope: !6793)
!6793 = distinct !DILexicalBlock(scope: !6791, file: !2, line: 98, column: 22)
!6794 = !DILocation(line: 98, column: 22, scope: !6795)
!6795 = distinct !DILexicalBlock(scope: !6782, file: !2, line: 98, column: 22)
!6796 = !{i64 2155490041}
!6797 = !DILocation(line: 98, column: 22, scope: !6774)
!6798 = !DILocation(line: 99, column: 2, scope: !6774)
!6799 = !DILocation(line: 99, column: 6, scope: !6774)
!6800 = !DILocation(line: 99, column: 13, scope: !6801)
!6801 = distinct !DILexicalBlock(scope: !6774, file: !2, line: 99, column: 13)
!6802 = !DILocation(line: 99, column: 13, scope: !6803)
!6803 = distinct !DILexicalBlock(scope: !6801, file: !2, line: 99, column: 13)
!6804 = !DILocation(line: 101, column: 17, scope: !6774)
!6805 = !DILocation(line: 101, column: 20, scope: !6774)
!6806 = !DILocation(line: 101, column: 27, scope: !6774)
!6807 = !DILocation(line: 101, column: 9, scope: !6774)
!6808 = !DILocation(line: 101, column: 33, scope: !6774)
!6809 = !DILocation(line: 101, column: 49, scope: !6774)
!6810 = !DILocation(line: 101, column: 36, scope: !6774)
!6811 = !DILocation(line: 0, scope: !6774)
!6812 = !DILocation(line: 102, column: 1, scope: !6774)
!6813 = !DILocation(line: 101, column: 2, scope: !6774)
!6814 = distinct !DISubprogram(name: "read_seqretry", scope: !286, file: !286, line: 907, type: !6815, scopeLine: 908, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6817)
!6815 = !DISubroutineType(types: !6816)
!6816 = !{!13, !6676, !13}
!6817 = !{!6818, !6819}
!6818 = !DILocalVariable(name: "sl", arg: 1, scope: !6814, file: !286, line: 907, type: !6676)
!6819 = !DILocalVariable(name: "start", arg: 2, scope: !6814, file: !286, line: 907, type: !13)
!6820 = !DILocation(line: 907, column: 55, scope: !6814)
!6821 = !DILocation(line: 907, column: 68, scope: !6814)
!6822 = !DILocation(line: 909, column: 9, scope: !6814)
!6823 = !DILocation(line: 909, column: 2, scope: !6814)
!6824 = distinct !DISubprogram(name: "do_read_seqcount_retry", scope: !286, file: !286, line: 446, type: !6825, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6829)
!6825 = !DISubroutineType(types: !6826)
!6826 = !{!27, !6827, !13}
!6827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6828, size: 64)
!6828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!6829 = !{!6830, !6831}
!6830 = !DILocalVariable(name: "s", arg: 1, scope: !6824, file: !286, line: 446, type: !6827)
!6831 = !DILocalVariable(name: "start", arg: 2, scope: !6824, file: !286, line: 446, type: !13)
!6832 = !DILocation(line: 446, column: 60, scope: !6824)
!6833 = !DILocation(line: 446, column: 72, scope: !6824)
!6834 = !DILocation(line: 448, column: 2, scope: !6824)
!6835 = !DILocation(line: 448, column: 2, scope: !6836)
!6836 = distinct !DILexicalBlock(scope: !6824, file: !286, line: 448, column: 2)
!6837 = !DILocation(line: 448, column: 2, scope: !6838)
!6838 = distinct !DILexicalBlock(scope: !6836, file: !286, line: 448, column: 2)
!6839 = !DILocation(line: 448, column: 2, scope: !6840)
!6840 = distinct !DILexicalBlock(scope: !6836, file: !286, line: 448, column: 2)
!6841 = !DILocation(line: 448, column: 2, scope: !6842)
!6842 = distinct !DILexicalBlock(scope: !6840, file: !286, line: 448, column: 2)
!6843 = !{i64 2150401479}
!6844 = !DILocation(line: 449, column: 34, scope: !6824)
!6845 = !DILocation(line: 449, column: 37, scope: !6824)
!6846 = !DILocation(line: 449, column: 9, scope: !6824)
!6847 = !DILocation(line: 449, column: 2, scope: !6824)
!6848 = distinct !DISubprogram(name: "__seqprop_spinlock_ptr", scope: !286, file: !286, line: 275, type: !6849, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6853)
!6849 = !DISubroutineType(types: !6850)
!6850 = !{!6851, !6852}
!6851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!6852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!6853 = !{!6854}
!6854 = !DILocalVariable(name: "s", arg: 1, scope: !6848, file: !286, line: 275, type: !6852)
!6855 = !DILocation(line: 275, column: 1, scope: !6848)
!6856 = distinct !DISubprogram(name: "do___read_seqcount_retry", scope: !286, file: !286, line: 426, type: !6825, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6857)
!6857 = !{!6858, !6859}
!6858 = !DILocalVariable(name: "s", arg: 1, scope: !6856, file: !286, line: 426, type: !6827)
!6859 = !DILocalVariable(name: "start", arg: 2, scope: !6856, file: !286, line: 426, type: !13)
!6860 = !DILocation(line: 426, column: 62, scope: !6856)
!6861 = !DILocation(line: 426, column: 74, scope: !6856)
!6862 = !DILocation(line: 428, column: 2, scope: !6856)
!6863 = !DILocation(line: 429, column: 9, scope: !6864)
!6864 = distinct !DILexicalBlock(scope: !6856, file: !286, line: 429, column: 9)
!6865 = !DILocation(line: 429, column: 9, scope: !6866)
!6866 = distinct !DILexicalBlock(scope: !6864, file: !286, line: 429, column: 9)
!6867 = !DILocation(line: 429, column: 9, scope: !6856)
!6868 = !DILocation(line: 429, column: 2, scope: !6856)
!6869 = distinct !DISubprogram(name: "read_sequnlock_excl", scope: !286, file: !286, line: 1066, type: !6702, scopeLine: 1067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6870)
!6870 = !{!6871}
!6871 = !DILocalVariable(name: "sl", arg: 1, scope: !6869, file: !286, line: 1066, type: !6516)
!6872 = !DILocation(line: 1066, column: 51, scope: !6869)
!6873 = !DILocation(line: 1068, column: 15, scope: !6869)
!6874 = !DILocation(line: 1068, column: 19, scope: !6869)
!6875 = !DILocation(line: 1068, column: 2, scope: !6869)
!6876 = !DILocation(line: 1069, column: 1, scope: !6869)
!6877 = distinct !DISubprogram(name: "spin_unlock", scope: !6741, file: !6741, line: 389, type: !6742, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6878)
!6878 = !{!6879}
!6879 = !DILocalVariable(name: "lock", arg: 1, scope: !6877, file: !6741, line: 389, type: !1996)
!6880 = !DILocation(line: 389, column: 53, scope: !6877)
!6881 = !DILocation(line: 391, column: 2, scope: !6877)
!6882 = !DILocation(line: 392, column: 1, scope: !6877)
!6883 = !DISubprogram(name: "_raw_spin_unlock", scope: !6750, file: !6750, line: 39, type: !6751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6884 = !DISubprogram(name: "__rcu_read_lock", scope: !6156, file: !6156, line: 74, type: !2831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6885 = distinct !DISubprogram(name: "d_unhashed", scope: !281, file: !281, line: 333, type: !4626, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6886)
!6886 = !{!6887}
!6887 = !DILocalVariable(name: "dentry", arg: 1, scope: !6885, file: !281, line: 333, type: !4615)
!6888 = !DILocation(line: 333, column: 51, scope: !6885)
!6889 = !DILocation(line: 335, column: 28, scope: !6885)
!6890 = !DILocation(line: 335, column: 36, scope: !6885)
!6891 = !DILocation(line: 335, column: 9, scope: !6885)
!6892 = !DILocation(line: 335, column: 2, scope: !6885)
!6893 = distinct !DISubprogram(name: "hlist_bl_unhashed", scope: !296, file: !296, line: 52, type: !6894, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6898)
!6894 = !DISubroutineType(types: !6895)
!6895 = !{!383, !6896}
!6896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6897, size: 64)
!6897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!6898 = !{!6899}
!6899 = !DILocalVariable(name: "h", arg: 1, scope: !6893, file: !296, line: 52, type: !6896)
!6900 = !DILocation(line: 52, column: 67, scope: !6893)
!6901 = !DILocation(line: 54, column: 10, scope: !6893)
!6902 = !DILocation(line: 54, column: 13, scope: !6893)
!6903 = !DILocation(line: 54, column: 9, scope: !6893)
!6904 = !DILocation(line: 54, column: 2, scope: !6893)
!6905 = distinct !DISubprogram(name: "prepend_copy", scope: !2, file: !2, line: 48, type: !6906, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6908)
!6906 = !DISubroutineType(types: !6907)
!6907 = !{!383, !25, !1020, !27}
!6908 = !{!6909, !6910, !6911}
!6909 = !DILocalVariable(name: "dst", arg: 1, scope: !6905, file: !2, line: 48, type: !25)
!6910 = !DILocalVariable(name: "src", arg: 2, scope: !6905, file: !2, line: 48, type: !1020)
!6911 = !DILocalVariable(name: "len", arg: 3, scope: !6905, file: !2, line: 48, type: !27)
!6912 = !DILocation(line: 48, column: 32, scope: !6905)
!6913 = !DILocation(line: 48, column: 49, scope: !6905)
!6914 = !DILocation(line: 48, column: 58, scope: !6905)
!6915 = !DILocation(line: 50, column: 6, scope: !6916)
!6916 = distinct !DILexicalBlock(scope: !6905, file: !2, line: 50, column: 6)
!6917 = !DILocation(line: 50, column: 6, scope: !6905)
!6918 = !DILocation(line: 51, column: 10, scope: !6919)
!6919 = distinct !DILexicalBlock(scope: !6916, file: !2, line: 50, column: 57)
!6920 = !DILocation(line: 51, column: 20, scope: !6919)
!6921 = !DILocation(line: 51, column: 3, scope: !6919)
!6922 = !DILocation(line: 52, column: 3, scope: !6919)
!6923 = !DILocation(line: 54, column: 2, scope: !6905)
!6924 = !DILocation(line: 55, column: 1, scope: !6905)
!6925 = !DISubprogram(name: "copy_from_kernel_nofault", scope: !6926, file: !6926, line: 374, type: !6927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6926 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6927 = !DISubroutineType(types: !6928)
!6928 = !{!458, !25, !1020, !40}
!6929 = !DISubprogram(name: "__rcu_read_unlock", scope: !6156, file: !6156, line: 75, type: !2831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6930 = distinct !DISubprogram(name: "__do_sys_getcwd", scope: !2, file: !2, line: 412, type: !6931, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6933)
!6931 = !DISubroutineType(types: !6932)
!6932 = !{!458, !389, !44}
!6933 = !{!6934, !6935, !6936, !6937, !6938, !6939, !6940, !6944}
!6934 = !DILocalVariable(name: "buf", arg: 1, scope: !6930, file: !2, line: 412, type: !389)
!6935 = !DILocalVariable(name: "size", arg: 2, scope: !6930, file: !2, line: 412, type: !44)
!6936 = !DILocalVariable(name: "error", scope: !6930, file: !2, line: 414, type: !27)
!6937 = !DILocalVariable(name: "pwd", scope: !6930, file: !2, line: 415, type: !1561)
!6938 = !DILocalVariable(name: "root", scope: !6930, file: !2, line: 415, type: !1561)
!6939 = !DILocalVariable(name: "page", scope: !6930, file: !2, line: 416, type: !389)
!6940 = !DILocalVariable(name: "len", scope: !6941, file: !2, line: 428, type: !13)
!6941 = distinct !DILexicalBlock(scope: !6942, file: !2, line: 427, column: 9)
!6942 = distinct !DILexicalBlock(scope: !6943, file: !2, line: 424, column: 6)
!6943 = !DILexicalBlockFile(scope: !6930, file: !2, discriminator: 0)
!6944 = !DILocalVariable(name: "b", scope: !6941, file: !2, line: 429, type: !5920)
!6945 = !DILocation(line: 412, column: 1, scope: !6930)
!6946 = !DILocation(line: 414, column: 2, scope: !6930)
!6947 = !DILocation(line: 414, column: 6, scope: !6930)
!6948 = !DILocation(line: 415, column: 2, scope: !6930)
!6949 = !DILocation(line: 415, column: 14, scope: !6930)
!6950 = !DILocation(line: 415, column: 19, scope: !6930)
!6951 = !DILocation(line: 416, column: 2, scope: !6930)
!6952 = !DILocation(line: 416, column: 8, scope: !6930)
!6953 = !DILocation(line: 416, column: 15, scope: !6930)
!6954 = !DILocation(line: 418, column: 7, scope: !6955)
!6955 = distinct !DILexicalBlock(scope: !6943, file: !2, line: 418, column: 6)
!6956 = !DILocation(line: 418, column: 6, scope: !6943)
!6957 = !DILocation(line: 419, column: 3, scope: !6955)
!6958 = !DILocation(line: 421, column: 2, scope: !6943)
!6959 = !DILocation(line: 422, column: 26, scope: !6943)
!6960 = !DILocation(line: 422, column: 35, scope: !6943)
!6961 = !DILocation(line: 422, column: 2, scope: !6943)
!6962 = !DILocation(line: 424, column: 6, scope: !6942)
!6963 = !DILocation(line: 424, column: 6, scope: !6943)
!6964 = !DILocation(line: 425, column: 3, scope: !6965)
!6965 = distinct !DILexicalBlock(scope: !6942, file: !2, line: 424, column: 40)
!6966 = !DILocation(line: 426, column: 9, scope: !6965)
!6967 = !DILocation(line: 427, column: 2, scope: !6965)
!6968 = !DILocation(line: 428, column: 3, scope: !6941)
!6969 = !DILocation(line: 428, column: 12, scope: !6941)
!6970 = !DILocation(line: 429, column: 3, scope: !6941)
!6971 = !DILocation(line: 431, column: 3, scope: !6941)
!6972 = !DILocation(line: 432, column: 7, scope: !6973)
!6973 = distinct !DILexicalBlock(scope: !6941, file: !2, line: 432, column: 7)
!6974 = !DILocation(line: 432, column: 7, scope: !6941)
!6975 = !DILocation(line: 433, column: 4, scope: !6973)
!6976 = !DILocation(line: 434, column: 3, scope: !6941)
!6977 = !DILocation(line: 436, column: 22, scope: !6941)
!6978 = !DILocation(line: 436, column: 18, scope: !6941)
!6979 = !DILocation(line: 436, column: 7, scope: !6941)
!6980 = !DILocation(line: 437, column: 7, scope: !6981)
!6981 = distinct !DILexicalBlock(scope: !6941, file: !2, line: 437, column: 7)
!6982 = !DILocation(line: 437, column: 7, scope: !6941)
!6983 = !DILocation(line: 438, column: 10, scope: !6981)
!6984 = !DILocation(line: 438, column: 4, scope: !6981)
!6985 = !DILocation(line: 439, column: 12, scope: !6986)
!6986 = distinct !DILexicalBlock(scope: !6981, file: !2, line: 439, column: 12)
!6987 = !DILocation(line: 439, column: 12, scope: !6981)
!6988 = !DILocation(line: 440, column: 10, scope: !6986)
!6989 = !DILocation(line: 440, column: 4, scope: !6986)
!6990 = !DILocation(line: 441, column: 25, scope: !6991)
!6991 = distinct !DILexicalBlock(scope: !6986, file: !2, line: 441, column: 12)
!6992 = !DILocation(line: 441, column: 32, scope: !6991)
!6993 = !DILocation(line: 441, column: 37, scope: !6991)
!6994 = !DILocation(line: 441, column: 12, scope: !6991)
!6995 = !DILocation(line: 441, column: 12, scope: !6986)
!6996 = !DILocation(line: 442, column: 10, scope: !6991)
!6997 = !DILocation(line: 442, column: 4, scope: !6991)
!6998 = !DILocation(line: 444, column: 12, scope: !6991)
!6999 = !DILocation(line: 444, column: 10, scope: !6991)
!7000 = !DILocation(line: 445, column: 2, scope: !6942)
!7001 = !DILocation(line: 446, column: 2, scope: !6943)
!7002 = !DILocation(line: 447, column: 9, scope: !6943)
!7003 = !DILocation(line: 447, column: 2, scope: !6943)
!7004 = !DILocation(line: 448, column: 1, scope: !6943)
!7005 = !DISubprogram(name: "kmem_cache_alloc", scope: !7006, file: !7006, line: 500, type: !7007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7006 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!7007 = !DISubroutineType(types: !7008)
!7008 = !{!25, !3434, !584}
!7009 = distinct !DISubprogram(name: "get_fs_root_and_pwd_rcu", scope: !2, file: !2, line: 382, type: !7010, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7012)
!7010 = !DISubroutineType(types: !7011)
!7011 = !{null, !1551, !4649, !4649}
!7012 = !{!7013, !7014, !7015, !7016, !7017, !7021}
!7013 = !DILocalVariable(name: "fs", arg: 1, scope: !7009, file: !2, line: 382, type: !1551)
!7014 = !DILocalVariable(name: "root", arg: 2, scope: !7009, file: !2, line: 382, type: !4649)
!7015 = !DILocalVariable(name: "pwd", arg: 3, scope: !7009, file: !2, line: 383, type: !4649)
!7016 = !DILocalVariable(name: "seq", scope: !7009, file: !2, line: 385, type: !13)
!7017 = !DILocalVariable(name: "_seq", scope: !7018, file: !2, line: 388, type: !13)
!7018 = distinct !DILexicalBlock(scope: !7019, file: !2, line: 388, column: 9)
!7019 = distinct !DILexicalBlock(scope: !7020, file: !2, line: 388, column: 9)
!7020 = distinct !DILexicalBlock(scope: !7009, file: !2, line: 387, column: 5)
!7021 = !DILocalVariable(name: "__seq", scope: !7022, file: !2, line: 388, type: !13)
!7022 = distinct !DILexicalBlock(scope: !7018, file: !2, line: 388, column: 9)
!7023 = !DILocation(line: 382, column: 55, scope: !7009)
!7024 = !DILocation(line: 382, column: 72, scope: !7009)
!7025 = !DILocation(line: 383, column: 22, scope: !7009)
!7026 = !DILocation(line: 385, column: 2, scope: !7009)
!7027 = !DILocation(line: 385, column: 11, scope: !7009)
!7028 = !DILocation(line: 387, column: 2, scope: !7009)
!7029 = !DILocation(line: 388, column: 9, scope: !7018)
!7030 = !DILocation(line: 388, column: 9, scope: !7022)
!7031 = distinct !{!7031, !7030, !7030, !6186, !6187}
!7032 = !DILocation(line: 388, column: 9, scope: !7033)
!7033 = distinct !DILexicalBlock(scope: !7018, file: !2, line: 388, column: 9)
!7034 = !DILocation(line: 388, column: 9, scope: !7035)
!7035 = distinct !DILexicalBlock(scope: !7033, file: !2, line: 388, column: 9)
!7036 = !DILocation(line: 388, column: 9, scope: !7037)
!7037 = distinct !DILexicalBlock(scope: !7033, file: !2, line: 388, column: 9)
!7038 = !DILocation(line: 388, column: 9, scope: !7039)
!7039 = distinct !DILexicalBlock(scope: !7037, file: !2, line: 388, column: 9)
!7040 = !{i64 2155517055}
!7041 = !DILocation(line: 388, column: 9, scope: !7019)
!7042 = !DILocation(line: 388, column: 9, scope: !7020)
!7043 = !DILocation(line: 388, column: 7, scope: !7020)
!7044 = !DILocation(line: 389, column: 4, scope: !7020)
!7045 = !DILocation(line: 389, column: 11, scope: !7020)
!7046 = !DILocation(line: 389, column: 15, scope: !7020)
!7047 = !DILocation(line: 390, column: 4, scope: !7020)
!7048 = !DILocation(line: 390, column: 10, scope: !7020)
!7049 = !DILocation(line: 390, column: 14, scope: !7020)
!7050 = !DILocation(line: 391, column: 2, scope: !7020)
!7051 = !DILocation(line: 391, column: 11, scope: !7009)
!7052 = distinct !{!7052, !7028, !7053, !6186, !6187}
!7053 = !DILocation(line: 391, column: 45, scope: !7009)
!7054 = !DILocation(line: 392, column: 1, scope: !7009)
!7055 = distinct !DISubprogram(name: "copy_to_user", scope: !6926, file: !6926, line: 188, type: !7056, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7058)
!7056 = !DISubroutineType(types: !7057)
!7057 = !{!44, !25, !1020, !44}
!7058 = !{!7059, !7060, !7061}
!7059 = !DILocalVariable(name: "to", arg: 1, scope: !7055, file: !6926, line: 188, type: !25)
!7060 = !DILocalVariable(name: "from", arg: 2, scope: !7055, file: !6926, line: 188, type: !1020)
!7061 = !DILocalVariable(name: "n", arg: 3, scope: !7055, file: !6926, line: 188, type: !44)
!7062 = !DILocation(line: 188, column: 27, scope: !7055)
!7063 = !DILocation(line: 188, column: 43, scope: !7055)
!7064 = !DILocation(line: 188, column: 63, scope: !7055)
!7065 = !DILocation(line: 190, column: 22, scope: !7066)
!7066 = distinct !DILexicalBlock(scope: !7055, file: !6926, line: 190, column: 6)
!7067 = !DILocation(line: 190, column: 28, scope: !7066)
!7068 = !DILocation(line: 190, column: 6, scope: !7066)
!7069 = !DILocation(line: 190, column: 6, scope: !7055)
!7070 = !DILocation(line: 191, column: 21, scope: !7066)
!7071 = !DILocation(line: 191, column: 25, scope: !7066)
!7072 = !DILocation(line: 191, column: 31, scope: !7066)
!7073 = !DILocation(line: 191, column: 7, scope: !7066)
!7074 = !DILocation(line: 191, column: 5, scope: !7066)
!7075 = !DILocation(line: 191, column: 3, scope: !7066)
!7076 = !DILocation(line: 192, column: 9, scope: !7055)
!7077 = !DILocation(line: 192, column: 2, scope: !7055)
!7078 = !DISubprogram(name: "kmem_cache_free", scope: !7006, file: !7006, line: 503, type: !7079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7079 = !DISubroutineType(types: !7080)
!7080 = !{null, !3434, !25}
!7081 = distinct !DISubprogram(name: "check_copy_size", scope: !5898, file: !5898, line: 237, type: !7082, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7084)
!7082 = !DISubroutineType(types: !7083)
!7083 = !{!383, !1020, !40, !383}
!7084 = !{!7085, !7086, !7087, !7088, !7089, !7092}
!7085 = !DILocalVariable(name: "addr", arg: 1, scope: !7081, file: !5898, line: 237, type: !1020)
!7086 = !DILocalVariable(name: "bytes", arg: 2, scope: !7081, file: !5898, line: 237, type: !40)
!7087 = !DILocalVariable(name: "is_source", arg: 3, scope: !7081, file: !5898, line: 237, type: !383)
!7088 = !DILocalVariable(name: "sz", scope: !7081, file: !5898, line: 239, type: !27)
!7089 = !DILocalVariable(name: "__ret_warn_on", scope: !7090, file: !5898, line: 249, type: !27)
!7090 = distinct !DILexicalBlock(scope: !7091, file: !5898, line: 249, column: 6)
!7091 = distinct !DILexicalBlock(scope: !7081, file: !5898, line: 249, column: 6)
!7092 = !DILocalVariable(name: "__flags", scope: !7093, file: !5898, line: 249, type: !27)
!7093 = distinct !DILexicalBlock(scope: !7094, file: !5898, line: 249, column: 6)
!7094 = distinct !DILexicalBlock(scope: !7090, file: !5898, line: 249, column: 6)
!7095 = !DILocation(line: 237, column: 29, scope: !7081)
!7096 = !DILocation(line: 237, column: 42, scope: !7081)
!7097 = !DILocation(line: 237, column: 54, scope: !7081)
!7098 = !DILocation(line: 239, column: 2, scope: !7081)
!7099 = !DILocation(line: 239, column: 6, scope: !7081)
!7100 = !DILocation(line: 239, column: 33, scope: !7081)
!7101 = !DILocation(line: 239, column: 11, scope: !7081)
!7102 = !DILocation(line: 240, column: 6, scope: !7103)
!7103 = distinct !DILexicalBlock(scope: !7081, file: !5898, line: 240, column: 6)
!7104 = !DILocation(line: 0, scope: !7103)
!7105 = !DILocation(line: 240, column: 6, scope: !7081)
!7106 = !DILocation(line: 241, column: 29, scope: !7107)
!7107 = distinct !DILexicalBlock(scope: !7108, file: !5898, line: 241, column: 7)
!7108 = distinct !DILexicalBlock(scope: !7103, file: !5898, line: 240, column: 39)
!7109 = !DILocation(line: 241, column: 8, scope: !7107)
!7110 = !DILocation(line: 241, column: 7, scope: !7108)
!7111 = !DILocation(line: 242, column: 18, scope: !7107)
!7112 = !DILocation(line: 242, column: 22, scope: !7107)
!7113 = !DILocation(line: 242, column: 4, scope: !7107)
!7114 = !DILocation(line: 243, column: 12, scope: !7115)
!7115 = distinct !DILexicalBlock(scope: !7107, file: !5898, line: 243, column: 12)
!7116 = !{i8 0, i8 2}
!7117 = !DILocation(line: 243, column: 12, scope: !7107)
!7118 = !DILocation(line: 244, column: 4, scope: !7115)
!7119 = !{i32 1027997}
!7120 = !DILocation(line: 246, column: 4, scope: !7115)
!7121 = !{i32 1028026}
!7122 = !DILocation(line: 247, column: 3, scope: !7108)
!7123 = !DILocation(line: 249, column: 6, scope: !7090)
!7124 = !DILocation(line: 249, column: 6, scope: !7094)
!7125 = !DILocation(line: 249, column: 6, scope: !7093)
!7126 = !DILocation(line: 249, column: 6, scope: !7127)
!7127 = distinct !DILexicalBlock(scope: !7093, file: !5898, line: 249, column: 6)
!7128 = !DILocation(line: 249, column: 6, scope: !7129)
!7129 = distinct !DILexicalBlock(scope: !7093, file: !5898, line: 249, column: 6)
!7130 = !{i64 2149680268, i64 2149680297, i64 2149680343, i64 2149680401, i64 2149680455, i64 2149680509, i64 2149680564, i64 2149680595, i64 2149680903, i64 2149680909, i64 2149680956, i64 2149680979, i64 2149681005}
!7131 = !DILocation(line: 249, column: 6, scope: !7132)
!7132 = distinct !DILexicalBlock(scope: !7093, file: !5898, line: 249, column: 6)
!7133 = !DILocation(line: 249, column: 6, scope: !7091)
!7134 = !DILocation(line: 249, column: 6, scope: !7081)
!7135 = !DILocation(line: 250, column: 3, scope: !7091)
!7136 = !DILocation(line: 251, column: 20, scope: !7081)
!7137 = !DILocation(line: 251, column: 26, scope: !7081)
!7138 = !DILocation(line: 251, column: 33, scope: !7081)
!7139 = !DILocation(line: 251, column: 2, scope: !7081)
!7140 = !DILocation(line: 252, column: 2, scope: !7081)
!7141 = !DILocation(line: 253, column: 1, scope: !7081)
!7142 = !DISubprogram(name: "_copy_to_user", scope: !6926, file: !6926, line: 176, type: !7056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7143 = distinct !DISubprogram(name: "copy_overflow", scope: !5898, file: !5898, line: 230, type: !7144, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7146)
!7144 = !DISubroutineType(types: !7145)
!7145 = !{null, !27, !44}
!7146 = !{!7147, !7148}
!7147 = !DILocalVariable(name: "size", arg: 1, scope: !7143, file: !5898, line: 230, type: !27)
!7148 = !DILocalVariable(name: "count", arg: 2, scope: !7143, file: !5898, line: 230, type: !44)
!7149 = !DILocation(line: 230, column: 38, scope: !7143)
!7150 = !DILocation(line: 230, column: 58, scope: !7143)
!7151 = !DILocation(line: 233, column: 19, scope: !7152)
!7152 = distinct !DILexicalBlock(scope: !7143, file: !5898, line: 232, column: 6)
!7153 = !DILocation(line: 233, column: 25, scope: !7152)
!7154 = !DILocation(line: 233, column: 3, scope: !7152)
!7155 = !DILocation(line: 234, column: 1, scope: !7143)
!7156 = !DISubprogram(name: "__bad_copy_from", scope: !5898, file: !5898, line: 224, type: !2831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7157 = !DISubprogram(name: "__bad_copy_to", scope: !5898, file: !5898, line: 226, type: !2831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7158 = distinct !DISubprogram(name: "check_object_size", scope: !5898, file: !5898, line: 218, type: !7159, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7161)
!7159 = !DISubroutineType(types: !7160)
!7160 = !{null, !1020, !44, !383}
!7161 = !{!7162, !7163, !7164}
!7162 = !DILocalVariable(name: "ptr", arg: 1, scope: !7158, file: !5898, line: 218, type: !1020)
!7163 = !DILocalVariable(name: "n", arg: 2, scope: !7158, file: !5898, line: 218, type: !44)
!7164 = !DILocalVariable(name: "to_user", arg: 3, scope: !7158, file: !5898, line: 219, type: !383)
!7165 = !DILocation(line: 218, column: 50, scope: !7158)
!7166 = !DILocation(line: 218, column: 69, scope: !7158)
!7167 = !DILocation(line: 219, column: 15, scope: !7158)
!7168 = !DILocation(line: 220, column: 3, scope: !7158)
!7169 = !DISubprogram(name: "__copy_overflow", scope: !5898, file: !5898, line: 228, type: !7144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
