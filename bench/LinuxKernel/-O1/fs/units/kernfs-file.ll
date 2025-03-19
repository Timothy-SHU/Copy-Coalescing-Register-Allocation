; ModuleID = 'fs/kernfs/file.c'
source_filename = "fs/kernfs/file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kernfs_notify: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kernfs_notify ; .previous"

%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.14, ptr, i64, i16, i16, ptr, %struct.callback_head }
%struct.rb_node = type { i64, ptr, ptr }
%union.anon.14 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, ptr, i64 }
%struct.rb_root = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.kernfs_open_node = type { %struct.callback_head, %struct.atomic_t, %struct.wait_queue_head, %struct.list_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_open_file = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, %struct.list_head, ptr, i64, i8, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.15, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.16, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.17, ptr, %struct.address_space, %struct.list_head, %union.anon.18, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.15 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.16 = type { %struct.callback_head }
%union.anon.17 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.18 = type { ptr }
%struct.file = type { %union.anon.19, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.20, %struct.qspinlock }
%union.anon.20 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.kernfs_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i8, ptr, ptr, ptr }
%struct.poll_table_struct = type { ptr, i32 }
%struct.qstr = type { %union.anon.22, ptr }
%union.anon.22 = type { i64 }
%struct.kernfs_root = type { ptr, i32, %struct.idr, i32, i32, ptr, %struct.list_head, %struct.wait_queue_head, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.callback_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_super_info = type { ptr, ptr, ptr, %struct.list_head }
%struct.anon.23 = type { i32, i32 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, %union.anon.24 }
%union.anon.24 = type { ptr }
%struct.vm_area_struct = type { %union.anon.34, ptr, %struct.pgprot, %union.anon.36, i32, ptr, i8, %struct.anon.37, %struct.list_head, ptr, ptr, i64, ptr, ptr, %struct.atomic64_t, ptr, %struct.vm_userfaultfd_ctx }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { i64, i64 }
%struct.pgprot = type { i64 }
%union.anon.36 = type { i64 }
%struct.anon.37 = type { %struct.rb_node, i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.kernfs_global_locks = type { [1024 x %struct.mutex] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i64, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i16, i16, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.iov_iter = type { i8, i8, i8, i8, i8, %union.anon.25, %union.anon.26, %union.anon.29 }
%union.anon.25 = type { i64 }
%union.anon.26 = type { %struct.iovec }
%struct.iovec = type { ptr, i64 }
%union.anon.29 = type { i64 }
%struct.anon.27 = type { %union.anon.28, i64 }
%union.anon.28 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.32, %struct.list_head, %struct.list_head, %union.anon.33 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.30 }
%union.anon.30 = type { i64 }
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
%struct.vm_fault = type { %struct.anon.38, i32, ptr, ptr, %union.anon.39, ptr, ptr, ptr, ptr, ptr }
%struct.anon.38 = type { ptr, i32, i64, i64, i64 }
%union.anon.39 = type { %struct.pte_t }
%struct.pte_t = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"fs/kernfs/file.c\00", align 1, !dbg !0
@kernfs_notify.kernfs_notify_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { ptr getelementptr (i8, ptr @kernfs_notify.kernfs_notify_work, i64 8), ptr getelementptr (i8, ptr @kernfs_notify.kernfs_notify_work, i64 8) }, ptr @kernfs_notify_workfn }, align 8, !dbg !7
@kernfs_notify_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !4121
@kernfs_notify_list = internal global ptr @kernfs_notify_list, align 8, !dbg !4123
@__UNIQUE_ID___addressable_kernfs_notify339 = internal global ptr @kernfs_notify, section ".discard.addressable", align 8, !dbg !4117
@kernfs_file_fops = hidden constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @kernfs_fop_read_iter, ptr @kernfs_fop_write_iter, ptr null, ptr null, ptr @kernfs_fop_poll, ptr null, ptr null, ptr @kernfs_fop_mmap, i64 0, ptr @kernfs_fop_open, ptr null, ptr @kernfs_fop_release, ptr @noop_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @copy_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4119
@kernfs_locks = external dso_local global ptr, align 8
@system_wq = external dso_local global ptr, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4125
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !4130
@kernfs_vm_ops = internal constant %struct.vm_operations_struct { ptr @kernfs_vma_open, ptr null, ptr null, ptr null, ptr null, ptr @kernfs_vma_fault, ptr null, ptr null, ptr null, ptr @kernfs_vma_page_mkwrite, ptr null, ptr @kernfs_vma_access, ptr null, ptr @kernfs_vma_set_policy, ptr @kernfs_vma_get_policy, ptr null }, align 8, !dbg !4136
@kernfs_fop_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4138
@.str.3 = private unnamed_addr constant [11 x i8] c"&of->mutex\00", align 1, !dbg !4159
@kernfs_fop_open.__key.4 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4164
@kernfs_fop_open.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4166
@.str.6 = private unnamed_addr constant [20 x i8] c"&of->prealloc_mutex\00", align 1, !dbg !4168
@kernfs_seq_ops = internal constant %struct.seq_operations { ptr @kernfs_seq_start, ptr @kernfs_seq_stop, ptr @kernfs_seq_next, ptr @kernfs_seq_show }, align 8, !dbg !4171
@kernfs_get_open_node.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4173
@.str.7 = private unnamed_addr constant [10 x i8] c"&on->poll\00", align 1, !dbg !4188
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_kernfs_notify339], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @kernfs_should_drain_open_files(ptr noundef %kn) #0 align 16 !dbg !4217 {
entry:
  %kn.addr = alloca ptr, align 8
  %on = alloca ptr, align 8
  %ret = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__UNIQUE_ID_rcu335 = alloca ptr, align 8
  %tmp26 = alloca ptr, align 8
  %tmp30 = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !4221, metadata !DIExpression()), !dbg !4231
  call void @llvm.lifetime.start.p0(i64 8, ptr %on) #16, !dbg !4232
  call void @llvm.dbg.declare(metadata ptr %on, metadata !4222, metadata !DIExpression()), !dbg !4233
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #16, !dbg !4234
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4223, metadata !DIExpression()), !dbg !4235
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4236
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4224, metadata !DIExpression()), !dbg !4236
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !4236
  %active = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 1, !dbg !4236
  %call = call i32 @atomic_read(ptr noundef %active) #17, !dbg !4236
  %cmp = icmp ne i32 %call, -2147483647, !dbg !4236
  %lnot = xor i1 %cmp, true, !dbg !4236
  %lnot1 = xor i1 %lnot, true, !dbg !4236
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4236
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4236
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4237
  %tobool = icmp ne i32 %1, 0, !dbg !4237
  %lnot2 = xor i1 %tobool, true, !dbg !4237
  %lnot4 = xor i1 %lnot2, true, !dbg !4237
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !4237
  %conv = sext i32 %lnot.ext5 to i64, !dbg !4237
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4237
  %tobool6 = icmp ne i64 %expval, 0, !dbg !4237
  br i1 %tobool6, label %if.then, label %if.end, !dbg !4236

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4237

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !4238
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4226, metadata !DIExpression()), !dbg !4238
  store i32 2307, ptr %__flags, align 4, !dbg !4238
  br label %do.body7, !dbg !4238

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !4239

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !4239

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !4238

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !4241
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 824, i32 %2, i64 12) #16, !dbg !4241, !srcloc !4243
  br label %do.cond9, !dbg !4241

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !4241

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !4238

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !4244

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4244

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !4237
  br label %do.cond14, !dbg !4238

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !4238

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !4238

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4236
  %tobool16 = icmp ne i32 %3, 0, !dbg !4236
  %lnot17 = xor i1 %tobool16, true, !dbg !4236
  %lnot19 = xor i1 %lnot17, true, !dbg !4236
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !4236
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !4236
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !4236
  store i64 %expval22, ptr %tmp, align 8, !dbg !4237
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4246
  %4 = load i64, ptr %tmp, align 8, !dbg !4236
  call void @rcu_read_lock() #17, !dbg !4247
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu335) #16, !dbg !4248
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu335, metadata !4229, metadata !DIExpression()), !dbg !4248
  br label %do.body23, !dbg !4249

do.body23:                                        ; preds = %if.end
  br label %do.cond24, !dbg !4251

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !4251

do.end25:                                         ; preds = %do.cond24
  %5 = load ptr, ptr %kn.addr, align 8, !dbg !4249
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 7, !dbg !4249
  %open = getelementptr inbounds %struct.kernfs_elem_attr, ptr %6, i32 0, i32 1, !dbg !4249
  %7 = load volatile ptr, ptr %open, align 8, !dbg !4249
  store ptr %7, ptr %tmp26, align 8, !dbg !4251
  %8 = load ptr, ptr %tmp26, align 8, !dbg !4249
  store ptr %8, ptr %__UNIQUE_ID_rcu335, align 8, !dbg !4248
  br label %do.body27, !dbg !4248

do.body27:                                        ; preds = %do.end25
  br label %do.cond28, !dbg !4253

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !4253

do.end29:                                         ; preds = %do.cond28
  %9 = load ptr, ptr %__UNIQUE_ID_rcu335, align 8, !dbg !4248
  store ptr %9, ptr %tmp30, align 8, !dbg !4253
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu335) #16, !dbg !4255
  %10 = load ptr, ptr %tmp30, align 8, !dbg !4248
  store ptr %10, ptr %on, align 8, !dbg !4256
  %11 = load ptr, ptr %on, align 8, !dbg !4257
  %tobool31 = icmp ne ptr %11, null, !dbg !4257
  br i1 %tobool31, label %land.rhs, label %land.end, !dbg !4258

land.rhs:                                         ; preds = %do.end29
  %12 = load ptr, ptr %on, align 8, !dbg !4259
  %nr_mmapped = getelementptr inbounds %struct.kernfs_open_node, ptr %12, i32 0, i32 4, !dbg !4260
  %13 = load i32, ptr %nr_mmapped, align 8, !dbg !4260
  %tobool32 = icmp ne i32 %13, 0, !dbg !4259
  br i1 %tobool32, label %lor.end, label %lor.rhs, !dbg !4261

lor.rhs:                                          ; preds = %land.rhs
  %14 = load ptr, ptr %on, align 8, !dbg !4262
  %nr_to_release = getelementptr inbounds %struct.kernfs_open_node, ptr %14, i32 0, i32 5, !dbg !4263
  %15 = load i32, ptr %nr_to_release, align 4, !dbg !4263
  %tobool33 = icmp ne i32 %15, 0, !dbg !4261
  br label %lor.end, !dbg !4261

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %16 = phi i1 [ true, %land.rhs ], [ %tobool33, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %do.end29
  %17 = phi i1 [ false, %do.end29 ], [ %16, %lor.end ], !dbg !4264
  %frombool = zext i1 %17 to i8, !dbg !4265
  store i8 %frombool, ptr %ret, align 1, !dbg !4265
  call void @rcu_read_unlock() #17, !dbg !4266
  %18 = load i8, ptr %ret, align 1, !dbg !4267, !range !4268, !noundef !620
  %tobool34 = trunc i8 %18 to i1, !dbg !4267
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #16, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 8, ptr %on) #16, !dbg !4269
  ret i1 %tobool34, !dbg !4270
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #3 align 16 !dbg !4271 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4278, metadata !DIExpression()), !dbg !4279
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4280
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #17, !dbg !4281
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4282
  %call = call i32 @raw_atomic_read(ptr noundef %1) #17, !dbg !4283
  ret i32 %call, !dbg !4284
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #3 align 16 !dbg !4285 {
entry:
  call void @__rcu_read_lock() #17, !dbg !4287
  br label %do.body, !dbg !4288

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4289

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4291

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4292

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4294
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #5 align 16 !dbg !4295 {
entry:
  br label %do.body, !dbg !4296

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4297

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #17, !dbg !4299
  br label %do.body1, !dbg !4300

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4301

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4303
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @kernfs_drain_open_files(ptr noundef %kn) #0 align 16 !dbg !4304 {
entry:
  %kn.addr = alloca ptr, align 8
  %on = alloca ptr, align 8
  %of = alloca ptr, align 8
  %mutex = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %__mptr12 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp40 = alloca i64, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !4306, metadata !DIExpression()), !dbg !4323
  call void @llvm.lifetime.start.p0(i64 8, ptr %on) #16, !dbg !4324
  call void @llvm.dbg.declare(metadata ptr %on, metadata !4307, metadata !DIExpression()), !dbg !4325
  call void @llvm.lifetime.start.p0(i64 8, ptr %of) #16, !dbg !4326
  call void @llvm.dbg.declare(metadata ptr %of, metadata !4308, metadata !DIExpression()), !dbg !4327
  call void @llvm.lifetime.start.p0(i64 8, ptr %mutex) #16, !dbg !4328
  call void @llvm.dbg.declare(metadata ptr %mutex, metadata !4309, metadata !DIExpression()), !dbg !4329
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !4330
  %call = call ptr @kernfs_open_file_mutex_lock(ptr noundef %0) #17, !dbg !4331
  store ptr %call, ptr %mutex, align 8, !dbg !4332
  %1 = load ptr, ptr %kn.addr, align 8, !dbg !4333
  %call1 = call ptr @kernfs_deref_open_node_locked(ptr noundef %1) #17, !dbg !4334
  store ptr %call1, ptr %on, align 8, !dbg !4335
  %2 = load ptr, ptr %on, align 8, !dbg !4336
  %tobool = icmp ne ptr %2, null, !dbg !4336
  br i1 %tobool, label %if.end, label %if.then, !dbg !4338

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %mutex, align 8, !dbg !4339
  call void @mutex_unlock(ptr noundef %3) #17, !dbg !4341
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4342

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4343
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4310, metadata !DIExpression()), !dbg !4343
  %4 = load ptr, ptr %on, align 8, !dbg !4343
  %files = getelementptr inbounds %struct.kernfs_open_node, ptr %4, i32 0, i32 3, !dbg !4343
  %next = getelementptr inbounds %struct.list_head, ptr %files, i32 0, i32 0, !dbg !4343
  %5 = load ptr, ptr %next, align 8, !dbg !4343
  store ptr %5, ptr %__mptr, align 8, !dbg !4343
  %6 = load ptr, ptr %__mptr, align 8, !dbg !4343
  %add.ptr = getelementptr i8, ptr %6, i64 -104, !dbg !4343
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4343
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4344
  %7 = load ptr, ptr %tmp, align 8, !dbg !4343
  store ptr %7, ptr %of, align 8, !dbg !4344
  br label %for.cond, !dbg !4344

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load ptr, ptr %of, align 8, !dbg !4345
  %list = getelementptr inbounds %struct.kernfs_open_file, ptr %8, i32 0, i32 7, !dbg !4345
  %9 = load ptr, ptr %on, align 8, !dbg !4345
  %files2 = getelementptr inbounds %struct.kernfs_open_node, ptr %9, i32 0, i32 3, !dbg !4345
  %cmp = icmp eq ptr %list, %files2, !dbg !4345
  %lnot = xor i1 %cmp, true, !dbg !4345
  br i1 %lnot, label %for.body, label %for.end, !dbg !4344

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !4346
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4313, metadata !DIExpression()), !dbg !4347
  %10 = load ptr, ptr %of, align 8, !dbg !4348
  %file = getelementptr inbounds %struct.kernfs_open_file, ptr %10, i32 0, i32 1, !dbg !4349
  %11 = load ptr, ptr %file, align 8, !dbg !4349
  %call3 = call ptr @file_inode(ptr noundef %11) #17, !dbg !4350
  store ptr %call3, ptr %inode, align 8, !dbg !4347
  %12 = load ptr, ptr %of, align 8, !dbg !4351
  %mmapped = getelementptr inbounds %struct.kernfs_open_file, ptr %12, i32 0, i32 10, !dbg !4353
  %bf.load = load i8, ptr %mmapped, align 8, !dbg !4353
  %bf.clear = and i8 %bf.load, 1, !dbg !4353
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !4353
  br i1 %bf.cast, label %if.then4, label %if.end8, !dbg !4354

if.then4:                                         ; preds = %for.body
  %13 = load ptr, ptr %inode, align 8, !dbg !4355
  %i_mapping = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 10, !dbg !4357
  %14 = load ptr, ptr %i_mapping, align 8, !dbg !4357
  call void @unmap_mapping_range(ptr noundef %14, i64 noundef 0, i64 noundef 0, i32 noundef 1) #17, !dbg !4358
  %15 = load ptr, ptr %of, align 8, !dbg !4359
  %mmapped5 = getelementptr inbounds %struct.kernfs_open_file, ptr %15, i32 0, i32 10, !dbg !4360
  %bf.load6 = load i8, ptr %mmapped5, align 8, !dbg !4361
  %bf.clear7 = and i8 %bf.load6, -2, !dbg !4361
  %bf.set = or i8 %bf.clear7, 0, !dbg !4361
  store i8 %bf.set, ptr %mmapped5, align 8, !dbg !4361
  %16 = load ptr, ptr %on, align 8, !dbg !4362
  %nr_mmapped = getelementptr inbounds %struct.kernfs_open_node, ptr %16, i32 0, i32 4, !dbg !4363
  %17 = load i32, ptr %nr_mmapped, align 8, !dbg !4364
  %dec = add i32 %17, -1, !dbg !4364
  store i32 %dec, ptr %nr_mmapped, align 8, !dbg !4364
  br label %if.end8, !dbg !4365

if.end8:                                          ; preds = %if.then4, %for.body
  %18 = load ptr, ptr %kn.addr, align 8, !dbg !4366
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %18, i32 0, i32 10, !dbg !4368
  %19 = load i16, ptr %flags, align 8, !dbg !4368
  %conv = zext i16 %19 to i32, !dbg !4366
  %and = and i32 %conv, 8192, !dbg !4369
  %tobool9 = icmp ne i32 %and, 0, !dbg !4369
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4370

if.then10:                                        ; preds = %if.end8
  %20 = load ptr, ptr %kn.addr, align 8, !dbg !4371
  %21 = load ptr, ptr %of, align 8, !dbg !4372
  call void @kernfs_release_file(ptr noundef %20, ptr noundef %21) #17, !dbg !4373
  br label %if.end11, !dbg !4373

if.end11:                                         ; preds = %if.then10, %if.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !4374
  br label %for.inc, !dbg !4375

for.inc:                                          ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr12) #16, !dbg !4376
  call void @llvm.dbg.declare(metadata ptr %__mptr12, metadata !4316, metadata !DIExpression()), !dbg !4376
  %22 = load ptr, ptr %of, align 8, !dbg !4376
  %list13 = getelementptr inbounds %struct.kernfs_open_file, ptr %22, i32 0, i32 7, !dbg !4376
  %next14 = getelementptr inbounds %struct.list_head, ptr %list13, i32 0, i32 0, !dbg !4376
  %23 = load ptr, ptr %next14, align 8, !dbg !4376
  store ptr %23, ptr %__mptr12, align 8, !dbg !4376
  %24 = load ptr, ptr %__mptr12, align 8, !dbg !4376
  %add.ptr16 = getelementptr i8, ptr %24, i64 -104, !dbg !4376
  store ptr %add.ptr16, ptr %tmp15, align 8, !dbg !4376
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr12) #16, !dbg !4345
  %25 = load ptr, ptr %tmp15, align 8, !dbg !4376
  store ptr %25, ptr %of, align 8, !dbg !4345
  br label %for.cond, !dbg !4345, !llvm.loop !4377

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4381
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4318, metadata !DIExpression()), !dbg !4381
  %26 = load ptr, ptr %on, align 8, !dbg !4381
  %nr_mmapped17 = getelementptr inbounds %struct.kernfs_open_node, ptr %26, i32 0, i32 4, !dbg !4381
  %27 = load i32, ptr %nr_mmapped17, align 8, !dbg !4381
  %tobool18 = icmp ne i32 %27, 0, !dbg !4381
  br i1 %tobool18, label %lor.end, label %lor.rhs, !dbg !4381

lor.rhs:                                          ; preds = %for.end
  %28 = load ptr, ptr %on, align 8, !dbg !4381
  %nr_to_release = getelementptr inbounds %struct.kernfs_open_node, ptr %28, i32 0, i32 5, !dbg !4381
  %29 = load i32, ptr %nr_to_release, align 4, !dbg !4381
  %tobool19 = icmp ne i32 %29, 0, !dbg !4381
  br label %lor.end, !dbg !4381

lor.end:                                          ; preds = %lor.rhs, %for.end
  %30 = phi i1 [ true, %for.end ], [ %tobool19, %lor.rhs ]
  %lnot20 = xor i1 %30, true, !dbg !4381
  %lnot21 = xor i1 %lnot20, true, !dbg !4381
  %lnot.ext = zext i1 %lnot21 to i32, !dbg !4381
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4381
  %31 = load i32, ptr %__ret_warn_on, align 4, !dbg !4382
  %tobool22 = icmp ne i32 %31, 0, !dbg !4382
  %lnot23 = xor i1 %tobool22, true, !dbg !4382
  %lnot25 = xor i1 %lnot23, true, !dbg !4382
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !4382
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !4382
  %expval = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !4382
  %tobool28 = icmp ne i64 %expval, 0, !dbg !4382
  br i1 %tobool28, label %if.then29, label %if.end39, !dbg !4381

if.then29:                                        ; preds = %lor.end
  br label %do.body, !dbg !4382

do.body:                                          ; preds = %if.then29
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !4383
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4320, metadata !DIExpression()), !dbg !4383
  store i32 2307, ptr %__flags, align 4, !dbg !4383
  br label %do.body30, !dbg !4383

do.body30:                                        ; preds = %do.body
  br label %do.cond, !dbg !4384

do.cond:                                          ; preds = %do.body30
  br label %do.end, !dbg !4384

do.end:                                           ; preds = %do.cond
  br label %do.body31, !dbg !4383

do.body31:                                        ; preds = %do.end
  %32 = load i32, ptr %__flags, align 4, !dbg !4386
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 860, i32 %32, i64 12) #16, !dbg !4386, !srcloc !4388
  br label %do.cond32, !dbg !4386

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !4386

do.end33:                                         ; preds = %do.cond32
  br label %do.body34, !dbg !4383

do.body34:                                        ; preds = %do.end33
  br label %do.cond35, !dbg !4389

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !4389

do.end36:                                         ; preds = %do.cond35
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !4382
  br label %do.cond37, !dbg !4383

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !4383

do.end38:                                         ; preds = %do.cond37
  br label %if.end39, !dbg !4383

if.end39:                                         ; preds = %do.end38, %lor.end
  %33 = load i32, ptr %__ret_warn_on, align 4, !dbg !4381
  %tobool41 = icmp ne i32 %33, 0, !dbg !4381
  %lnot42 = xor i1 %tobool41, true, !dbg !4381
  %lnot44 = xor i1 %lnot42, true, !dbg !4381
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !4381
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !4381
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 0), !dbg !4381
  store i64 %expval47, ptr %tmp40, align 8, !dbg !4382
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4391
  %34 = load i64, ptr %tmp40, align 8, !dbg !4381
  %35 = load ptr, ptr %mutex, align 8, !dbg !4392
  call void @mutex_unlock(ptr noundef %35) #17, !dbg !4393
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4394
  br label %cleanup, !dbg !4394

cleanup:                                          ; preds = %if.end39, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mutex) #16, !dbg !4394
  call void @llvm.lifetime.end.p0(i64 8, ptr %of) #16, !dbg !4394
  call void @llvm.lifetime.end.p0(i64 8, ptr %on) #16, !dbg !4394
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4394

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_open_file_mutex_lock(ptr noundef %kn) #5 align 16 !dbg !4395 {
entry:
  %kn.addr = alloca ptr, align 8
  %lock = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !4399, metadata !DIExpression()), !dbg !4401
  call void @llvm.lifetime.start.p0(i64 8, ptr %lock) #16, !dbg !4402
  call void @llvm.dbg.declare(metadata ptr %lock, metadata !4400, metadata !DIExpression()), !dbg !4403
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !4404
  %call = call ptr @kernfs_open_file_mutex_ptr(ptr noundef %0) #17, !dbg !4405
  store ptr %call, ptr %lock, align 8, !dbg !4406
  %1 = load ptr, ptr %lock, align 8, !dbg !4407
  call void @mutex_lock(ptr noundef %1) #17, !dbg !4408
  %2 = load ptr, ptr %lock, align 8, !dbg !4409
  call void @llvm.lifetime.end.p0(i64 8, ptr %lock) #16, !dbg !4410
  ret ptr %2, !dbg !4411
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_deref_open_node_locked(ptr noundef %kn) #0 align 16 !dbg !4412 {
entry:
  %kn.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !4416, metadata !DIExpression()), !dbg !4417
  br label %do.body, !dbg !4418

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4420

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !4418
  %1 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 7, !dbg !4418
  %open = getelementptr inbounds %struct.kernfs_elem_attr, ptr %1, i32 0, i32 1, !dbg !4418
  %2 = load ptr, ptr %open, align 8, !dbg !4418
  store ptr %2, ptr %tmp, align 8, !dbg !4420
  %3 = load ptr, ptr %tmp, align 8, !dbg !4418
  ret ptr %3, !dbg !4422
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4423 dso_local void @mutex_unlock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #5 align 16 !dbg !4426 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !4430, metadata !DIExpression()), !dbg !4431
  %0 = load ptr, ptr %f.addr, align 8, !dbg !4432
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !4433
  %1 = load ptr, ptr %f_inode, align 8, !dbg !4433
  ret ptr %1, !dbg !4434
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4435 dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kernfs_release_file(ptr noundef %kn, ptr noundef %of) #0 align 16 !dbg !4439 {
entry:
  %kn.addr = alloca ptr, align 8
  %of.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !4443, metadata !DIExpression()), !dbg !4445
  store ptr %of, ptr %of.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %of.addr, metadata !4444, metadata !DIExpression()), !dbg !4446
  br label %do.body, !dbg !4447

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !4448
  %call = call ptr @kernfs_open_file_mutex_ptr(ptr noundef %0) #17, !dbg !4448
  br label %do.end, !dbg !4448

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %of.addr, align 8, !dbg !4450
  %released = getelementptr inbounds %struct.kernfs_open_file, ptr %1, i32 0, i32 10, !dbg !4452
  %bf.load = load i8, ptr %released, align 8, !dbg !4452
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !4452
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4452
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !4452
  br i1 %bf.cast, label %if.end, label %if.then, !dbg !4453

if.then:                                          ; preds = %do.end
  %2 = load ptr, ptr %kn.addr, align 8, !dbg !4454
  %3 = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 7, !dbg !4456
  %ops = getelementptr inbounds %struct.kernfs_elem_attr, ptr %3, i32 0, i32 0, !dbg !4457
  %4 = load ptr, ptr %ops, align 8, !dbg !4457
  %release = getelementptr inbounds %struct.kernfs_ops, ptr %4, i32 0, i32 1, !dbg !4458
  %5 = load ptr, ptr %release, align 8, !dbg !4458
  %6 = load ptr, ptr %of.addr, align 8, !dbg !4459
  call void %5(ptr noundef %6) #17, !dbg !4454
  %7 = load ptr, ptr %of.addr, align 8, !dbg !4460
  %released1 = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 10, !dbg !4461
  %bf.load2 = load i8, ptr %released1, align 8, !dbg !4462
  %bf.clear3 = and i8 %bf.load2, -3, !dbg !4462
  %bf.set = or i8 %bf.clear3, 2, !dbg !4462
  store i8 %bf.set, ptr %released1, align 8, !dbg !4462
  %8 = load ptr, ptr %of.addr, align 8, !dbg !4463
  %call4 = call ptr @of_on(ptr noundef %8) #17, !dbg !4464
  %nr_to_release = getelementptr inbounds %struct.kernfs_open_node, ptr %call4, i32 0, i32 5, !dbg !4465
  %9 = load i32, ptr %nr_to_release, align 4, !dbg !4466
  %dec = add i32 %9, -1, !dbg !4466
  store i32 %dec, ptr %nr_to_release, align 4, !dbg !4466
  br label %if.end, !dbg !4467

if.end:                                           ; preds = %if.then, %do.end
  ret void, !dbg !4468
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kernfs_generic_poll(ptr noundef %of, ptr noundef %wait) #0 align 16 !dbg !4469 {
entry:
  %retval = alloca i32, align 4
  %of.addr = alloca ptr, align 8
  %wait.addr = alloca ptr, align 8
  %on = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %of, ptr %of.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %of.addr, metadata !4475, metadata !DIExpression()), !dbg !4478
  store ptr %wait, ptr %wait.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !4476, metadata !DIExpression()), !dbg !4479
  call void @llvm.lifetime.start.p0(i64 8, ptr %on) #16, !dbg !4480
  call void @llvm.dbg.declare(metadata ptr %on, metadata !4477, metadata !DIExpression()), !dbg !4481
  %0 = load ptr, ptr %of.addr, align 8, !dbg !4482
  %call = call ptr @of_on(ptr noundef %0) #17, !dbg !4483
  store ptr %call, ptr %on, align 8, !dbg !4481
  %1 = load ptr, ptr %of.addr, align 8, !dbg !4484
  %file = getelementptr inbounds %struct.kernfs_open_file, ptr %1, i32 0, i32 1, !dbg !4485
  %2 = load ptr, ptr %file, align 8, !dbg !4485
  %3 = load ptr, ptr %on, align 8, !dbg !4486
  %poll = getelementptr inbounds %struct.kernfs_open_node, ptr %3, i32 0, i32 2, !dbg !4487
  %4 = load ptr, ptr %wait.addr, align 8, !dbg !4488
  call void @poll_wait(ptr noundef %2, ptr noundef %poll, ptr noundef %4) #17, !dbg !4489
  %5 = load ptr, ptr %of.addr, align 8, !dbg !4490
  %event = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 6, !dbg !4492
  %6 = load i32, ptr %event, align 8, !dbg !4492
  %7 = load ptr, ptr %on, align 8, !dbg !4493
  %event1 = getelementptr inbounds %struct.kernfs_open_node, ptr %7, i32 0, i32 1, !dbg !4494
  %call2 = call i32 @atomic_read(ptr noundef %event1) #17, !dbg !4495
  %cmp = icmp ne i32 %6, %call2, !dbg !4496
  br i1 %cmp, label %if.then, label %if.end, !dbg !4497

if.then:                                          ; preds = %entry
  store i32 335, ptr %retval, align 4, !dbg !4498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4498

if.end:                                           ; preds = %entry
  store i32 325, ptr %retval, align 4, !dbg !4499
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4499

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %on) #16, !dbg !4500
  %8 = load i32, ptr %retval, align 4, !dbg !4500
  ret i32 %8, !dbg !4500
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @of_on(ptr noundef %of) #0 align 16 !dbg !4501 {
entry:
  %of.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %of, ptr %of.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %of.addr, metadata !4505, metadata !DIExpression()), !dbg !4506
  br label %do.body, !dbg !4507

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4509

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %of.addr, align 8, !dbg !4507
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 0, !dbg !4507
  %1 = load ptr, ptr %kn, align 8, !dbg !4507
  %2 = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 7, !dbg !4507
  %open = getelementptr inbounds %struct.kernfs_elem_attr, ptr %2, i32 0, i32 1, !dbg !4507
  %3 = load ptr, ptr %open, align 8, !dbg !4507
  store ptr %3, ptr %tmp, align 8, !dbg !4509
  %4 = load ptr, ptr %tmp, align 8, !dbg !4507
  ret ptr %4, !dbg !4511
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @poll_wait(ptr noundef %filp, ptr noundef %wait_address, ptr noundef %p) #5 align 16 !dbg !4512 {
entry:
  %filp.addr = alloca ptr, align 8
  %wait_address.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !4516, metadata !DIExpression()), !dbg !4519
  store ptr %wait_address, ptr %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait_address.addr, metadata !4517, metadata !DIExpression()), !dbg !4520
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4518, metadata !DIExpression()), !dbg !4521
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4522
  %tobool = icmp ne ptr %0, null, !dbg !4522
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4524

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !4525
  %_qproc = getelementptr inbounds %struct.poll_table_struct, ptr %1, i32 0, i32 0, !dbg !4526
  %2 = load ptr, ptr %_qproc, align 8, !dbg !4526
  %tobool1 = icmp ne ptr %2, null, !dbg !4525
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !4527

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %wait_address.addr, align 8, !dbg !4528
  %tobool3 = icmp ne ptr %3, null, !dbg !4528
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4529

if.then:                                          ; preds = %land.lhs.true2
  %4 = load ptr, ptr %p.addr, align 8, !dbg !4530
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, ptr %4, i32 0, i32 0, !dbg !4532
  %5 = load ptr, ptr %_qproc4, align 8, !dbg !4532
  %6 = load ptr, ptr %filp.addr, align 8, !dbg !4533
  %7 = load ptr, ptr %wait_address.addr, align 8, !dbg !4534
  %8 = load ptr, ptr %p.addr, align 8, !dbg !4535
  call void %5(ptr noundef %6, ptr noundef %7, ptr noundef %8) #17, !dbg !4530
  br label %do.body, !dbg !4536

do.body:                                          ; preds = %if.then
  br label %do.body5, !dbg !4537

do.body5:                                         ; preds = %do.body
  br label %do.end, !dbg !4539

do.end:                                           ; preds = %do.body5
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !4537, !srcloc !4541
  br label %do.end6, !dbg !4537

do.end6:                                          ; preds = %do.end
  br label %if.end, !dbg !4542

if.end:                                           ; preds = %do.end6, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !4543
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @kernfs_notify(ptr noundef %kn) #0 align 16 !dbg !9 {
entry:
  %kn.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %on = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_rcu337 = alloca ptr, align 8
  %tmp29 = alloca ptr, align 8
  %tmp33 = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp42 = alloca i32, align 4
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !4192, metadata !DIExpression()), !dbg !4544
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !4545
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4193, metadata !DIExpression()), !dbg !4546
  call void @llvm.lifetime.start.p0(i64 8, ptr %on) #16, !dbg !4547
  call void @llvm.dbg.declare(metadata ptr %on, metadata !4194, metadata !DIExpression()), !dbg !4548
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4549
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4195, metadata !DIExpression()), !dbg !4549
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !4549
  %call = call i32 @kernfs_type(ptr noundef %0) #17, !dbg !4549
  %cmp = icmp ne i32 %call, 2, !dbg !4549
  %lnot = xor i1 %cmp, true, !dbg !4549
  %lnot1 = xor i1 %lnot, true, !dbg !4549
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4549
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4549
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4550
  %tobool = icmp ne i32 %1, 0, !dbg !4550
  %lnot2 = xor i1 %tobool, true, !dbg !4550
  %lnot4 = xor i1 %lnot2, true, !dbg !4550
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !4550
  %conv = sext i32 %lnot.ext5 to i64, !dbg !4550
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4550
  %tobool6 = icmp ne i64 %expval, 0, !dbg !4550
  br i1 %tobool6, label %if.then, label %if.end, !dbg !4549

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4550

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !4551
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4198, metadata !DIExpression()), !dbg !4551
  store i32 2305, ptr %__flags, align 4, !dbg !4551
  br label %do.body7, !dbg !4551

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !4552

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !4552

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !4551

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !4554
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 983, i32 %2, i64 12) #16, !dbg !4554, !srcloc !4556
  br label %do.cond9, !dbg !4554

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !4554

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !4551

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !4557

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4557

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !4550
  br label %do.cond14, !dbg !4551

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !4551

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !4551

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4549
  %tobool16 = icmp ne i32 %3, 0, !dbg !4549
  %lnot17 = xor i1 %tobool16, true, !dbg !4549
  %lnot19 = xor i1 %lnot17, true, !dbg !4549
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !4549
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !4549
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !4549
  store i64 %expval22, ptr %tmp, align 8, !dbg !4550
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4559
  %4 = load i64, ptr %tmp, align 8, !dbg !4549
  %tobool23 = icmp ne i64 %4, 0, !dbg !4559
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !4560

if.then24:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4561

if.end25:                                         ; preds = %if.end
  call void @rcu_read_lock() #17, !dbg !4562
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu337) #16, !dbg !4563
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu337, metadata !4201, metadata !DIExpression()), !dbg !4563
  br label %do.body26, !dbg !4564

do.body26:                                        ; preds = %if.end25
  br label %do.cond27, !dbg !4566

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !4566

do.end28:                                         ; preds = %do.cond27
  %5 = load ptr, ptr %kn.addr, align 8, !dbg !4564
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 7, !dbg !4564
  %open = getelementptr inbounds %struct.kernfs_elem_attr, ptr %6, i32 0, i32 1, !dbg !4564
  %7 = load volatile ptr, ptr %open, align 8, !dbg !4564
  store ptr %7, ptr %tmp29, align 8, !dbg !4566
  %8 = load ptr, ptr %tmp29, align 8, !dbg !4564
  store ptr %8, ptr %__UNIQUE_ID_rcu337, align 8, !dbg !4563
  br label %do.body30, !dbg !4563

do.body30:                                        ; preds = %do.end28
  br label %do.cond31, !dbg !4568

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !4568

do.end32:                                         ; preds = %do.cond31
  %9 = load ptr, ptr %__UNIQUE_ID_rcu337, align 8, !dbg !4563
  store ptr %9, ptr %tmp33, align 8, !dbg !4568
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu337) #16, !dbg !4570
  %10 = load ptr, ptr %tmp33, align 8, !dbg !4563
  store ptr %10, ptr %on, align 8, !dbg !4571
  %11 = load ptr, ptr %on, align 8, !dbg !4572
  %tobool34 = icmp ne ptr %11, null, !dbg !4572
  br i1 %tobool34, label %if.then35, label %if.end37, !dbg !4574

if.then35:                                        ; preds = %do.end32
  %12 = load ptr, ptr %on, align 8, !dbg !4575
  %event = getelementptr inbounds %struct.kernfs_open_node, ptr %12, i32 0, i32 1, !dbg !4577
  call void @atomic_inc(ptr noundef %event) #17, !dbg !4578
  %13 = load ptr, ptr %on, align 8, !dbg !4579
  %poll = getelementptr inbounds %struct.kernfs_open_node, ptr %13, i32 0, i32 2, !dbg !4579
  %call36 = call i32 @__wake_up(ptr noundef %poll, i32 noundef 1, i32 noundef 1, ptr noundef null) #17, !dbg !4579
  br label %if.end37, !dbg !4580

if.end37:                                         ; preds = %if.then35, %do.end32
  call void @rcu_read_unlock() #17, !dbg !4581
  br label %do.body38, !dbg !4582

do.body38:                                        ; preds = %if.end37
  br label %do.body39, !dbg !4583

do.body39:                                        ; preds = %do.body38
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4584
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4203, metadata !DIExpression()), !dbg !4584
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4584
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4207, metadata !DIExpression()), !dbg !4584
  %cmp40 = icmp eq ptr %__dummy, %__dummy2, !dbg !4584
  %conv41 = zext i1 %cmp40 to i32, !dbg !4584
  store i32 1, ptr %tmp42, align 4, !dbg !4584
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4585
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4585
  %14 = load i32, ptr %tmp42, align 4, !dbg !4584
  %call43 = call ptr @spinlock_check(ptr noundef @kernfs_notify_lock) #17, !dbg !4585
  %call44 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call43) #17, !dbg !4585
  store i64 %call44, ptr %flags, align 8, !dbg !4585
  br label %do.cond45, !dbg !4585

do.cond45:                                        ; preds = %do.body39
  br label %do.end46, !dbg !4585

do.end46:                                         ; preds = %do.cond45
  br label %do.cond47, !dbg !4583

do.cond47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !4583

do.end48:                                         ; preds = %do.cond47
  %15 = load ptr, ptr %kn.addr, align 8, !dbg !4586
  %16 = getelementptr inbounds %struct.kernfs_node, ptr %15, i32 0, i32 7, !dbg !4588
  %notify_next = getelementptr inbounds %struct.kernfs_elem_attr, ptr %16, i32 0, i32 3, !dbg !4589
  %17 = load ptr, ptr %notify_next, align 8, !dbg !4589
  %tobool49 = icmp ne ptr %17, null, !dbg !4586
  br i1 %tobool49, label %if.end53, label %if.then50, !dbg !4590

if.then50:                                        ; preds = %do.end48
  %18 = load ptr, ptr %kn.addr, align 8, !dbg !4591
  call void @kernfs_get(ptr noundef %18) #17, !dbg !4593
  %19 = load ptr, ptr @kernfs_notify_list, align 8, !dbg !4594
  %20 = load ptr, ptr %kn.addr, align 8, !dbg !4595
  %21 = getelementptr inbounds %struct.kernfs_node, ptr %20, i32 0, i32 7, !dbg !4596
  %notify_next51 = getelementptr inbounds %struct.kernfs_elem_attr, ptr %21, i32 0, i32 3, !dbg !4597
  store ptr %19, ptr %notify_next51, align 8, !dbg !4598
  %22 = load ptr, ptr %kn.addr, align 8, !dbg !4599
  store ptr %22, ptr @kernfs_notify_list, align 8, !dbg !4600
  %call52 = call zeroext i1 @schedule_work(ptr noundef @kernfs_notify.kernfs_notify_work) #17, !dbg !4601
  br label %if.end53, !dbg !4602

if.end53:                                         ; preds = %if.then50, %do.end48
  %23 = load i64, ptr %flags, align 8, !dbg !4603
  call void @spin_unlock_irqrestore(ptr noundef @kernfs_notify_lock, i64 noundef %23) #17, !dbg !4604
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4605
  br label %cleanup, !dbg !4605

cleanup:                                          ; preds = %if.end53, %if.then24
  call void @llvm.lifetime.end.p0(i64 8, ptr %on) #16, !dbg !4605
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !4605
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4605

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kernfs_notify_workfn(ptr noundef %work) #0 align 16 !dbg !4606 {
entry:
  %work.addr = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %info = alloca ptr, align 8
  %root = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %p_inode = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %name = alloca %struct.qstr, align 8
  %.compoundliteral = alloca %struct.qstr, align 8
  %__mptr31 = alloca ptr, align 8
  %tmp34 = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !4608, metadata !DIExpression()), !dbg !4624
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #16, !dbg !4625
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !4609, metadata !DIExpression()), !dbg !4626
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #16, !dbg !4627
  call void @llvm.dbg.declare(metadata ptr %info, metadata !4610, metadata !DIExpression()), !dbg !4628
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #16, !dbg !4629
  call void @llvm.dbg.declare(metadata ptr %root, metadata !4611, metadata !DIExpression()), !dbg !4630
  br label %repeat, !dbg !4629

repeat:                                           ; preds = %for.end, %entry
  call void @llvm.dbg.label(metadata !4612), !dbg !4631
  call void @spin_lock_irq(ptr noundef @kernfs_notify_lock) #17, !dbg !4632
  %0 = load ptr, ptr @kernfs_notify_list, align 8, !dbg !4633
  store ptr %0, ptr %kn, align 8, !dbg !4634
  %1 = load ptr, ptr %kn, align 8, !dbg !4635
  %cmp = icmp eq ptr %1, @kernfs_notify_list, !dbg !4637
  br i1 %cmp, label %if.then, label %if.end, !dbg !4638

if.then:                                          ; preds = %repeat
  call void @spin_unlock_irq(ptr noundef @kernfs_notify_lock) #17, !dbg !4639
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #16, !dbg !4641
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #16, !dbg !4641
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #16, !dbg !4641
  ret void, !dbg !4641

if.end:                                           ; preds = %repeat
  %2 = load ptr, ptr %kn, align 8, !dbg !4642
  %3 = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 7, !dbg !4643
  %notify_next = getelementptr inbounds %struct.kernfs_elem_attr, ptr %3, i32 0, i32 3, !dbg !4644
  %4 = load ptr, ptr %notify_next, align 8, !dbg !4644
  store ptr %4, ptr @kernfs_notify_list, align 8, !dbg !4645
  %5 = load ptr, ptr %kn, align 8, !dbg !4646
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 7, !dbg !4647
  %notify_next1 = getelementptr inbounds %struct.kernfs_elem_attr, ptr %6, i32 0, i32 3, !dbg !4648
  store ptr null, ptr %notify_next1, align 8, !dbg !4649
  call void @spin_unlock_irq(ptr noundef @kernfs_notify_lock) #17, !dbg !4650
  %7 = load ptr, ptr %kn, align 8, !dbg !4651
  %call = call ptr @kernfs_root(ptr noundef %7) #17, !dbg !4652
  store ptr %call, ptr %root, align 8, !dbg !4653
  %8 = load ptr, ptr %root, align 8, !dbg !4654
  %kernfs_supers_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %8, i32 0, i32 10, !dbg !4655
  call void @down_read(ptr noundef %kernfs_supers_rwsem) #17, !dbg !4656
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4657
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4613, metadata !DIExpression()), !dbg !4657
  %9 = load ptr, ptr %kn, align 8, !dbg !4657
  %call2 = call ptr @kernfs_root(ptr noundef %9) #17, !dbg !4657
  %supers = getelementptr inbounds %struct.kernfs_root, ptr %call2, i32 0, i32 6, !dbg !4657
  %next = getelementptr inbounds %struct.list_head, ptr %supers, i32 0, i32 0, !dbg !4657
  %10 = load ptr, ptr %next, align 8, !dbg !4657
  store ptr %10, ptr %__mptr, align 8, !dbg !4657
  %11 = load ptr, ptr %__mptr, align 8, !dbg !4657
  %add.ptr = getelementptr i8, ptr %11, i64 -24, !dbg !4657
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4657
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4658
  %12 = load ptr, ptr %tmp, align 8, !dbg !4657
  store ptr %12, ptr %info, align 8, !dbg !4658
  br label %for.cond, !dbg !4658

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load ptr, ptr %info, align 8, !dbg !4659
  %node = getelementptr inbounds %struct.kernfs_super_info, ptr %13, i32 0, i32 3, !dbg !4659
  %14 = load ptr, ptr %kn, align 8, !dbg !4659
  %call3 = call ptr @kernfs_root(ptr noundef %14) #17, !dbg !4659
  %supers4 = getelementptr inbounds %struct.kernfs_root, ptr %call3, i32 0, i32 6, !dbg !4659
  %cmp5 = icmp eq ptr %node, %supers4, !dbg !4659
  %lnot = xor i1 %cmp5, true, !dbg !4659
  br i1 %lnot, label %for.body, label %for.end, !dbg !4658

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !4660
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4616, metadata !DIExpression()), !dbg !4661
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_inode) #16, !dbg !4662
  call void @llvm.dbg.declare(metadata ptr %p_inode, metadata !4619, metadata !DIExpression()), !dbg !4663
  store ptr null, ptr %p_inode, align 8, !dbg !4663
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !4664
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4620, metadata !DIExpression()), !dbg !4665
  call void @llvm.lifetime.start.p0(i64 16, ptr %name) #16, !dbg !4666
  call void @llvm.dbg.declare(metadata ptr %name, metadata !4621, metadata !DIExpression()), !dbg !4667
  %15 = load ptr, ptr %info, align 8, !dbg !4668
  %sb = getelementptr inbounds %struct.kernfs_super_info, ptr %15, i32 0, i32 0, !dbg !4669
  %16 = load ptr, ptr %sb, align 8, !dbg !4669
  %17 = load ptr, ptr %kn, align 8, !dbg !4670
  %call6 = call i64 @kernfs_ino(ptr noundef %17) #17, !dbg !4671
  %call7 = call ptr @ilookup(ptr noundef %16, i64 noundef %call6) #17, !dbg !4672
  store ptr %call7, ptr %inode, align 8, !dbg !4673
  %18 = load ptr, ptr %inode, align 8, !dbg !4674
  %tobool = icmp ne ptr %18, null, !dbg !4674
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !4676

if.then8:                                         ; preds = %for.body
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4677

if.end9:                                          ; preds = %for.body
  %19 = getelementptr inbounds %struct.qstr, ptr %.compoundliteral, i32 0, i32 0, !dbg !4678
  %hash = getelementptr inbounds %struct.anon.23, ptr %19, i32 0, i32 0, !dbg !4678
  store i32 0, ptr %hash, align 8, !dbg !4678
  %len = getelementptr inbounds %struct.anon.23, ptr %19, i32 0, i32 1, !dbg !4678
  %20 = load ptr, ptr %kn, align 8, !dbg !4678
  %name10 = getelementptr inbounds %struct.kernfs_node, ptr %20, i32 0, i32 3, !dbg !4678
  %21 = load ptr, ptr %name10, align 8, !dbg !4678
  %call11 = call i64 @strlen(ptr noundef %21) #17, !dbg !4678
  %conv = trunc i64 %call11 to i32, !dbg !4678
  store i32 %conv, ptr %len, align 4, !dbg !4678
  %name12 = getelementptr inbounds %struct.qstr, ptr %.compoundliteral, i32 0, i32 1, !dbg !4678
  %22 = load ptr, ptr %kn, align 8, !dbg !4678
  %name13 = getelementptr inbounds %struct.kernfs_node, ptr %22, i32 0, i32 3, !dbg !4678
  %23 = load ptr, ptr %name13, align 8, !dbg !4678
  store ptr %23, ptr %name12, align 8, !dbg !4678
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %name, ptr align 8 %.compoundliteral, i64 16, i1 false), !dbg !4679
  %24 = load ptr, ptr %kn, align 8, !dbg !4680
  %call14 = call ptr @kernfs_get_parent(ptr noundef %24) #17, !dbg !4681
  store ptr %call14, ptr %parent, align 8, !dbg !4682
  %25 = load ptr, ptr %parent, align 8, !dbg !4683
  %tobool15 = icmp ne ptr %25, null, !dbg !4683
  br i1 %tobool15, label %if.then16, label %if.end24, !dbg !4685

if.then16:                                        ; preds = %if.end9
  %26 = load ptr, ptr %info, align 8, !dbg !4686
  %sb17 = getelementptr inbounds %struct.kernfs_super_info, ptr %26, i32 0, i32 0, !dbg !4688
  %27 = load ptr, ptr %sb17, align 8, !dbg !4688
  %28 = load ptr, ptr %parent, align 8, !dbg !4689
  %call18 = call i64 @kernfs_ino(ptr noundef %28) #17, !dbg !4690
  %call19 = call ptr @ilookup(ptr noundef %27, i64 noundef %call18) #17, !dbg !4691
  store ptr %call19, ptr %p_inode, align 8, !dbg !4692
  %29 = load ptr, ptr %p_inode, align 8, !dbg !4693
  %tobool20 = icmp ne ptr %29, null, !dbg !4693
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !4695

if.then21:                                        ; preds = %if.then16
  %30 = load ptr, ptr %inode, align 8, !dbg !4696
  %31 = load ptr, ptr %p_inode, align 8, !dbg !4698
  %32 = load ptr, ptr %inode, align 8, !dbg !4699
  %call22 = call i32 @fsnotify(i32 noundef 134217730, ptr noundef %30, i32 noundef 2, ptr noundef %31, ptr noundef %name, ptr noundef %32, i32 noundef 0) #17, !dbg !4700
  %33 = load ptr, ptr %p_inode, align 8, !dbg !4701
  call void @iput(ptr noundef %33) #17, !dbg !4702
  br label %if.end23, !dbg !4703

if.end23:                                         ; preds = %if.then21, %if.then16
  %34 = load ptr, ptr %parent, align 8, !dbg !4704
  call void @kernfs_put(ptr noundef %34) #17, !dbg !4705
  br label %if.end24, !dbg !4706

if.end24:                                         ; preds = %if.end23, %if.end9
  %35 = load ptr, ptr %p_inode, align 8, !dbg !4707
  %tobool25 = icmp ne ptr %35, null, !dbg !4707
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !4709

if.then26:                                        ; preds = %if.end24
  %36 = load ptr, ptr %inode, align 8, !dbg !4710
  call void @fsnotify_inode(ptr noundef %36, i32 noundef 2) #17, !dbg !4711
  br label %if.end27, !dbg !4711

if.end27:                                         ; preds = %if.then26, %if.end24
  %37 = load ptr, ptr %inode, align 8, !dbg !4712
  call void @iput(ptr noundef %37) #17, !dbg !4713
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4714
  br label %cleanup, !dbg !4714

cleanup:                                          ; preds = %if.end27, %if.then8
  call void @llvm.lifetime.end.p0(i64 16, ptr %name) #16, !dbg !4714
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !4714
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_inode) #16, !dbg !4714
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !4714
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4715

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr31) #16, !dbg !4716
  call void @llvm.dbg.declare(metadata ptr %__mptr31, metadata !4622, metadata !DIExpression()), !dbg !4716
  %38 = load ptr, ptr %info, align 8, !dbg !4716
  %node32 = getelementptr inbounds %struct.kernfs_super_info, ptr %38, i32 0, i32 3, !dbg !4716
  %next33 = getelementptr inbounds %struct.list_head, ptr %node32, i32 0, i32 0, !dbg !4716
  %39 = load ptr, ptr %next33, align 8, !dbg !4716
  store ptr %39, ptr %__mptr31, align 8, !dbg !4716
  %40 = load ptr, ptr %__mptr31, align 8, !dbg !4716
  %add.ptr35 = getelementptr i8, ptr %40, i64 -24, !dbg !4716
  store ptr %add.ptr35, ptr %tmp34, align 8, !dbg !4716
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr31) #16, !dbg !4659
  %41 = load ptr, ptr %tmp34, align 8, !dbg !4716
  store ptr %41, ptr %info, align 8, !dbg !4659
  br label %for.cond, !dbg !4659, !llvm.loop !4717

for.end:                                          ; preds = %for.cond
  %42 = load ptr, ptr %root, align 8, !dbg !4719
  %kernfs_supers_rwsem36 = getelementptr inbounds %struct.kernfs_root, ptr %42, i32 0, i32 10, !dbg !4720
  call void @up_read(ptr noundef %kernfs_supers_rwsem36) #17, !dbg !4721
  %43 = load ptr, ptr %kn, align 8, !dbg !4722
  call void @kernfs_put(ptr noundef %43) #17, !dbg !4723
  br label %repeat, !dbg !4724

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_type(ptr noundef %kn) #5 align 16 !dbg !4725 {
entry:
  %kn.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !4729, metadata !DIExpression()), !dbg !4730
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !4731
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 10, !dbg !4732
  %1 = load i16, ptr %flags, align 8, !dbg !4732
  %conv = zext i16 %1 to i32, !dbg !4731
  %and = and i32 %conv, 15, !dbg !4733
  ret i32 %and, !dbg !4734
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #3 align 16 !dbg !4735 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4740, metadata !DIExpression()), !dbg !4741
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4742
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !4743
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4744
  call void @raw_atomic_inc(ptr noundef %1) #17, !dbg !4745
  ret void, !dbg !4746
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4747 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4751 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #3 align 16 !dbg !4756 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4761, metadata !DIExpression()), !dbg !4762
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4763
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4764
  ret ptr %1, !dbg !4765
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4766 dso_local void @kernfs_get(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_work(ptr noundef %work) #5 align 16 !dbg !4767 {
entry:
  %work.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !4771, metadata !DIExpression()), !dbg !4772
  %0 = load ptr, ptr @system_wq, align 8, !dbg !4773
  %1 = load ptr, ptr %work.addr, align 8, !dbg !4774
  %call = call zeroext i1 @queue_work(ptr noundef %0, ptr noundef %1) #17, !dbg !4775
  ret i1 %call, !dbg !4776
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #3 align 16 !dbg !4777 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4781, metadata !DIExpression()), !dbg !4787
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4782, metadata !DIExpression()), !dbg !4788
  br label %do.body, !dbg !4789

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4790
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4783, metadata !DIExpression()), !dbg !4790
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4790
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4786, metadata !DIExpression()), !dbg !4790
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4790
  %conv = zext i1 %cmp to i32, !dbg !4790
  store i32 1, ptr %tmp, align 4, !dbg !4790
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4791
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4791
  %0 = load i32, ptr %tmp, align 4, !dbg !4790
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !4791
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !4791
  %3 = load i64, ptr %flags.addr, align 8, !dbg !4791
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #17, !dbg !4791
  br label %do.end, !dbg !4791

do.end:                                           ; preds = %do.body
  ret void, !dbg !4792
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kernfs_fop_read_iter(ptr noundef %iocb, ptr noundef %iter) #0 align 16 !dbg !4793 {
entry:
  %retval = alloca i64, align 8
  %iocb.addr = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  store ptr %iocb, ptr %iocb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iocb.addr, metadata !4795, metadata !DIExpression()), !dbg !4797
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !4796, metadata !DIExpression()), !dbg !4798
  %0 = load ptr, ptr %iocb.addr, align 8, !dbg !4799
  %ki_filp = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 0, !dbg !4801
  %1 = load ptr, ptr %ki_filp, align 8, !dbg !4801
  %call = call ptr @kernfs_of(ptr noundef %1) #17, !dbg !4802
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %call, i32 0, i32 0, !dbg !4803
  %2 = load ptr, ptr %kn, align 8, !dbg !4803
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 10, !dbg !4804
  %3 = load i16, ptr %flags, align 8, !dbg !4804
  %conv = zext i16 %3 to i32, !dbg !4802
  %and = and i32 %conv, 64, !dbg !4805
  %tobool = icmp ne i32 %and, 0, !dbg !4805
  br i1 %tobool, label %if.then, label %if.end, !dbg !4806

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %iocb.addr, align 8, !dbg !4807
  %5 = load ptr, ptr %iter.addr, align 8, !dbg !4808
  %call1 = call i64 @seq_read_iter(ptr noundef %4, ptr noundef %5) #17, !dbg !4809
  store i64 %call1, ptr %retval, align 8, !dbg !4810
  br label %return, !dbg !4810

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %iocb.addr, align 8, !dbg !4811
  %7 = load ptr, ptr %iter.addr, align 8, !dbg !4812
  %call2 = call i64 @kernfs_file_read_iter(ptr noundef %6, ptr noundef %7) #17, !dbg !4813
  store i64 %call2, ptr %retval, align 8, !dbg !4814
  br label %return, !dbg !4814

return:                                           ; preds = %if.end, %if.then
  %8 = load i64, ptr %retval, align 8, !dbg !4815
  ret i64 %8, !dbg !4815
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kernfs_fop_write_iter(ptr noundef %iocb, ptr noundef %iter) #0 align 16 !dbg !4816 {
entry:
  %retval = alloca i64, align 8
  %iocb.addr = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %of = alloca ptr, align 8
  %len = alloca i64, align 8
  %ops = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x326 = alloca i64, align 8
  %__UNIQUE_ID___y327 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %iocb, ptr %iocb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iocb.addr, metadata !4818, metadata !DIExpression()), !dbg !4830
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !4819, metadata !DIExpression()), !dbg !4831
  call void @llvm.lifetime.start.p0(i64 8, ptr %of) #16, !dbg !4832
  call void @llvm.dbg.declare(metadata ptr %of, metadata !4820, metadata !DIExpression()), !dbg !4833
  %0 = load ptr, ptr %iocb.addr, align 8, !dbg !4834
  %ki_filp = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 0, !dbg !4835
  %1 = load ptr, ptr %ki_filp, align 8, !dbg !4835
  %call = call ptr @kernfs_of(ptr noundef %1) #17, !dbg !4836
  store ptr %call, ptr %of, align 8, !dbg !4833
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #16, !dbg !4837
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4821, metadata !DIExpression()), !dbg !4838
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !4839
  %call1 = call i64 @iov_iter_count(ptr noundef %2) #17, !dbg !4840
  store i64 %call1, ptr %len, align 8, !dbg !4838
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #16, !dbg !4841
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !4822, metadata !DIExpression()), !dbg !4842
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #16, !dbg !4843
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !4823, metadata !DIExpression()), !dbg !4844
  %3 = load ptr, ptr %of, align 8, !dbg !4845
  %atomic_write_len = getelementptr inbounds %struct.kernfs_open_file, ptr %3, i32 0, i32 9, !dbg !4846
  %4 = load i64, ptr %atomic_write_len, align 8, !dbg !4846
  %tobool = icmp ne i64 %4, 0, !dbg !4845
  br i1 %tobool, label %if.then, label %if.else, !dbg !4847

if.then:                                          ; preds = %entry
  %5 = load i64, ptr %len, align 8, !dbg !4848
  %6 = load ptr, ptr %of, align 8, !dbg !4851
  %atomic_write_len2 = getelementptr inbounds %struct.kernfs_open_file, ptr %6, i32 0, i32 9, !dbg !4852
  %7 = load i64, ptr %atomic_write_len2, align 8, !dbg !4852
  %cmp = icmp ugt i64 %5, %7, !dbg !4853
  br i1 %cmp, label %if.then3, label %if.end, !dbg !4854

if.then3:                                         ; preds = %if.then
  store i64 -7, ptr %retval, align 8, !dbg !4855
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4855

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !4856

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x326) #16, !dbg !4857
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x326, metadata !4824, metadata !DIExpression()), !dbg !4857
  %8 = load i64, ptr %len, align 8, !dbg !4857
  store i64 %8, ptr %__UNIQUE_ID___x326, align 8, !dbg !4857
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y327) #16, !dbg !4857
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y327, metadata !4828, metadata !DIExpression()), !dbg !4857
  store i64 4096, ptr %__UNIQUE_ID___y327, align 8, !dbg !4857
  %9 = load i64, ptr %__UNIQUE_ID___x326, align 8, !dbg !4857
  %10 = load i64, ptr %__UNIQUE_ID___y327, align 8, !dbg !4857
  %cmp4 = icmp ult i64 %9, %10, !dbg !4857
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !4857

cond.true:                                        ; preds = %if.else
  %11 = load i64, ptr %__UNIQUE_ID___x326, align 8, !dbg !4857
  br label %cond.end, !dbg !4857

cond.false:                                       ; preds = %if.else
  %12 = load i64, ptr %__UNIQUE_ID___y327, align 8, !dbg !4857
  br label %cond.end, !dbg !4857

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ %12, %cond.false ], !dbg !4857
  store i64 %cond, ptr %tmp, align 8, !dbg !4857
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y327) #16, !dbg !4858
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x326) #16, !dbg !4858
  %13 = load i64, ptr %tmp, align 8, !dbg !4857
  store i64 %13, ptr %len, align 8, !dbg !4859
  br label %if.end5

if.end5:                                          ; preds = %cond.end, %if.end
  %14 = load ptr, ptr %of, align 8, !dbg !4860
  %prealloc_buf = getelementptr inbounds %struct.kernfs_open_file, ptr %14, i32 0, i32 8, !dbg !4861
  %15 = load ptr, ptr %prealloc_buf, align 8, !dbg !4861
  store ptr %15, ptr %buf, align 8, !dbg !4862
  %16 = load ptr, ptr %buf, align 8, !dbg !4863
  %tobool6 = icmp ne ptr %16, null, !dbg !4863
  br i1 %tobool6, label %if.then7, label %if.else8, !dbg !4865

if.then7:                                         ; preds = %if.end5
  %17 = load ptr, ptr %of, align 8, !dbg !4866
  %prealloc_mutex = getelementptr inbounds %struct.kernfs_open_file, ptr %17, i32 0, i32 5, !dbg !4867
  call void @mutex_lock(ptr noundef %prealloc_mutex) #17, !dbg !4868
  br label %if.end10, !dbg !4868

if.else8:                                         ; preds = %if.end5
  %18 = load i64, ptr %len, align 8, !dbg !4869
  %add = add i64 %18, 1, !dbg !4870
  %call9 = call noalias ptr @kmalloc(i64 noundef %add, i32 noundef 3264) #18, !dbg !4871
  store ptr %call9, ptr %buf, align 8, !dbg !4872
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then7
  %19 = load ptr, ptr %buf, align 8, !dbg !4873
  %tobool11 = icmp ne ptr %19, null, !dbg !4873
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4875

if.then12:                                        ; preds = %if.end10
  store i64 -12, ptr %retval, align 8, !dbg !4876
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4876

if.end13:                                         ; preds = %if.end10
  %20 = load ptr, ptr %buf, align 8, !dbg !4877
  %21 = load i64, ptr %len, align 8, !dbg !4879
  %22 = load ptr, ptr %iter.addr, align 8, !dbg !4880
  %call14 = call i64 @copy_from_iter(ptr noundef %20, i64 noundef %21, ptr noundef %22) #17, !dbg !4881
  %23 = load i64, ptr %len, align 8, !dbg !4882
  %cmp15 = icmp ne i64 %call14, %23, !dbg !4883
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4884

if.then16:                                        ; preds = %if.end13
  store i64 -14, ptr %len, align 8, !dbg !4885
  br label %out_free, !dbg !4887

if.end17:                                         ; preds = %if.end13
  %24 = load ptr, ptr %buf, align 8, !dbg !4888
  %25 = load i64, ptr %len, align 8, !dbg !4889
  %arrayidx = getelementptr i8, ptr %24, i64 %25, !dbg !4888
  store i8 0, ptr %arrayidx, align 1, !dbg !4890
  %26 = load ptr, ptr %of, align 8, !dbg !4891
  %mutex = getelementptr inbounds %struct.kernfs_open_file, ptr %26, i32 0, i32 4, !dbg !4892
  call void @mutex_lock(ptr noundef %mutex) #17, !dbg !4893
  %27 = load ptr, ptr %of, align 8, !dbg !4894
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %27, i32 0, i32 0, !dbg !4896
  %28 = load ptr, ptr %kn, align 8, !dbg !4896
  %call18 = call ptr @kernfs_get_active(ptr noundef %28) #17, !dbg !4897
  %tobool19 = icmp ne ptr %call18, null, !dbg !4897
  br i1 %tobool19, label %if.end22, label %if.then20, !dbg !4898

if.then20:                                        ; preds = %if.end17
  %29 = load ptr, ptr %of, align 8, !dbg !4899
  %mutex21 = getelementptr inbounds %struct.kernfs_open_file, ptr %29, i32 0, i32 4, !dbg !4901
  call void @mutex_unlock(ptr noundef %mutex21) #17, !dbg !4902
  store i64 -19, ptr %len, align 8, !dbg !4903
  br label %out_free, !dbg !4904

if.end22:                                         ; preds = %if.end17
  %30 = load ptr, ptr %of, align 8, !dbg !4905
  %kn23 = getelementptr inbounds %struct.kernfs_open_file, ptr %30, i32 0, i32 0, !dbg !4906
  %31 = load ptr, ptr %kn23, align 8, !dbg !4906
  %call24 = call ptr @kernfs_ops(ptr noundef %31) #17, !dbg !4907
  store ptr %call24, ptr %ops, align 8, !dbg !4908
  %32 = load ptr, ptr %ops, align 8, !dbg !4909
  %write = getelementptr inbounds %struct.kernfs_ops, ptr %32, i32 0, i32 9, !dbg !4911
  %33 = load ptr, ptr %write, align 8, !dbg !4911
  %tobool25 = icmp ne ptr %33, null, !dbg !4909
  br i1 %tobool25, label %if.then26, label %if.else29, !dbg !4912

if.then26:                                        ; preds = %if.end22
  %34 = load ptr, ptr %ops, align 8, !dbg !4913
  %write27 = getelementptr inbounds %struct.kernfs_ops, ptr %34, i32 0, i32 9, !dbg !4914
  %35 = load ptr, ptr %write27, align 8, !dbg !4914
  %36 = load ptr, ptr %of, align 8, !dbg !4915
  %37 = load ptr, ptr %buf, align 8, !dbg !4916
  %38 = load i64, ptr %len, align 8, !dbg !4917
  %39 = load ptr, ptr %iocb.addr, align 8, !dbg !4918
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %39, i32 0, i32 1, !dbg !4919
  %40 = load i64, ptr %ki_pos, align 8, !dbg !4919
  %call28 = call i64 %35(ptr noundef %36, ptr noundef %37, i64 noundef %38, i64 noundef %40) #17, !dbg !4913
  store i64 %call28, ptr %len, align 8, !dbg !4920
  br label %if.end30, !dbg !4921

if.else29:                                        ; preds = %if.end22
  store i64 -22, ptr %len, align 8, !dbg !4922
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then26
  %41 = load ptr, ptr %of, align 8, !dbg !4923
  %kn31 = getelementptr inbounds %struct.kernfs_open_file, ptr %41, i32 0, i32 0, !dbg !4924
  %42 = load ptr, ptr %kn31, align 8, !dbg !4924
  call void @kernfs_put_active(ptr noundef %42) #17, !dbg !4925
  %43 = load ptr, ptr %of, align 8, !dbg !4926
  %mutex32 = getelementptr inbounds %struct.kernfs_open_file, ptr %43, i32 0, i32 4, !dbg !4927
  call void @mutex_unlock(ptr noundef %mutex32) #17, !dbg !4928
  %44 = load i64, ptr %len, align 8, !dbg !4929
  %cmp33 = icmp sgt i64 %44, 0, !dbg !4931
  br i1 %cmp33, label %if.then34, label %if.end37, !dbg !4932

if.then34:                                        ; preds = %if.end30
  %45 = load i64, ptr %len, align 8, !dbg !4933
  %46 = load ptr, ptr %iocb.addr, align 8, !dbg !4934
  %ki_pos35 = getelementptr inbounds %struct.kiocb, ptr %46, i32 0, i32 1, !dbg !4935
  %47 = load i64, ptr %ki_pos35, align 8, !dbg !4936
  %add36 = add i64 %47, %45, !dbg !4936
  store i64 %add36, ptr %ki_pos35, align 8, !dbg !4936
  br label %if.end37, !dbg !4934

if.end37:                                         ; preds = %if.then34, %if.end30
  br label %out_free, !dbg !4937

out_free:                                         ; preds = %if.end37, %if.then20, %if.then16
  call void @llvm.dbg.label(metadata !4829), !dbg !4938
  %48 = load ptr, ptr %buf, align 8, !dbg !4939
  %49 = load ptr, ptr %of, align 8, !dbg !4941
  %prealloc_buf38 = getelementptr inbounds %struct.kernfs_open_file, ptr %49, i32 0, i32 8, !dbg !4942
  %50 = load ptr, ptr %prealloc_buf38, align 8, !dbg !4942
  %cmp39 = icmp eq ptr %48, %50, !dbg !4943
  br i1 %cmp39, label %if.then40, label %if.else42, !dbg !4944

if.then40:                                        ; preds = %out_free
  %51 = load ptr, ptr %of, align 8, !dbg !4945
  %prealloc_mutex41 = getelementptr inbounds %struct.kernfs_open_file, ptr %51, i32 0, i32 5, !dbg !4946
  call void @mutex_unlock(ptr noundef %prealloc_mutex41) #17, !dbg !4947
  br label %if.end43, !dbg !4947

if.else42:                                        ; preds = %out_free
  %52 = load ptr, ptr %buf, align 8, !dbg !4948
  call void @kfree(ptr noundef %52) #17, !dbg !4949
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.then40
  %53 = load i64, ptr %len, align 8, !dbg !4950
  store i64 %53, ptr %retval, align 8, !dbg !4951
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4951

cleanup:                                          ; preds = %if.end43, %if.then12, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #16, !dbg !4952
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #16, !dbg !4952
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #16, !dbg !4952
  call void @llvm.lifetime.end.p0(i64 8, ptr %of) #16, !dbg !4952
  %54 = load i64, ptr %retval, align 8, !dbg !4952
  ret i64 %54, !dbg !4952
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_fop_poll(ptr noundef %filp, ptr noundef %wait) #0 align 16 !dbg !4953 {
entry:
  %retval = alloca i32, align 4
  %filp.addr = alloca ptr, align 8
  %wait.addr = alloca ptr, align 8
  %of = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !4957, metadata !DIExpression()), !dbg !4962
  store ptr %wait, ptr %wait.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !4958, metadata !DIExpression()), !dbg !4963
  call void @llvm.lifetime.start.p0(i64 8, ptr %of) #16, !dbg !4964
  call void @llvm.dbg.declare(metadata ptr %of, metadata !4959, metadata !DIExpression()), !dbg !4965
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !4966
  %call = call ptr @kernfs_of(ptr noundef %0) #17, !dbg !4967
  store ptr %call, ptr %of, align 8, !dbg !4965
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #16, !dbg !4968
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !4960, metadata !DIExpression()), !dbg !4969
  %1 = load ptr, ptr %filp.addr, align 8, !dbg !4970
  %f_path = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 10, !dbg !4971
  %dentry = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 1, !dbg !4972
  %2 = load ptr, ptr %dentry, align 8, !dbg !4972
  %call1 = call ptr @kernfs_dentry_node(ptr noundef %2) #17, !dbg !4973
  store ptr %call1, ptr %kn, align 8, !dbg !4969
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4974
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4961, metadata !DIExpression()), !dbg !4975
  %3 = load ptr, ptr %kn, align 8, !dbg !4976
  %call2 = call ptr @kernfs_get_active(ptr noundef %3) #17, !dbg !4978
  %tobool = icmp ne ptr %call2, null, !dbg !4978
  br i1 %tobool, label %if.end, label %if.then, !dbg !4979

if.then:                                          ; preds = %entry
  store i32 335, ptr %retval, align 4, !dbg !4980
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4980

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %kn, align 8, !dbg !4981
  %5 = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 7, !dbg !4983
  %ops = getelementptr inbounds %struct.kernfs_elem_attr, ptr %5, i32 0, i32 0, !dbg !4984
  %6 = load ptr, ptr %ops, align 8, !dbg !4984
  %poll = getelementptr inbounds %struct.kernfs_ops, ptr %6, i32 0, i32 10, !dbg !4985
  %7 = load ptr, ptr %poll, align 8, !dbg !4985
  %tobool3 = icmp ne ptr %7, null, !dbg !4981
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !4986

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %kn, align 8, !dbg !4987
  %9 = getelementptr inbounds %struct.kernfs_node, ptr %8, i32 0, i32 7, !dbg !4988
  %ops5 = getelementptr inbounds %struct.kernfs_elem_attr, ptr %9, i32 0, i32 0, !dbg !4989
  %10 = load ptr, ptr %ops5, align 8, !dbg !4989
  %poll6 = getelementptr inbounds %struct.kernfs_ops, ptr %10, i32 0, i32 10, !dbg !4990
  %11 = load ptr, ptr %poll6, align 8, !dbg !4990
  %12 = load ptr, ptr %of, align 8, !dbg !4991
  %13 = load ptr, ptr %wait.addr, align 8, !dbg !4992
  %call7 = call i32 %11(ptr noundef %12, ptr noundef %13) #17, !dbg !4987
  store i32 %call7, ptr %ret, align 4, !dbg !4993
  br label %if.end9, !dbg !4994

if.else:                                          ; preds = %if.end
  %14 = load ptr, ptr %of, align 8, !dbg !4995
  %15 = load ptr, ptr %wait.addr, align 8, !dbg !4996
  %call8 = call i32 @kernfs_generic_poll(ptr noundef %14, ptr noundef %15) #17, !dbg !4997
  store i32 %call8, ptr %ret, align 4, !dbg !4998
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %16 = load ptr, ptr %kn, align 8, !dbg !4999
  call void @kernfs_put_active(ptr noundef %16) #17, !dbg !5000
  %17 = load i32, ptr %ret, align 4, !dbg !5001
  store i32 %17, ptr %retval, align 4, !dbg !5002
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5002

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5003
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #16, !dbg !5003
  call void @llvm.lifetime.end.p0(i64 8, ptr %of) #16, !dbg !5003
  %18 = load i32, ptr %retval, align 4, !dbg !5003
  ret i32 %18, !dbg !5003
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_fop_mmap(ptr noundef %file, ptr noundef %vma) #0 align 16 !dbg !5004 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  %of = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5006, metadata !DIExpression()), !dbg !5013
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5007, metadata !DIExpression()), !dbg !5014
  call void @llvm.lifetime.start.p0(i64 8, ptr %of) #16, !dbg !5015
  call void @llvm.dbg.declare(metadata ptr %of, metadata !5008, metadata !DIExpression()), !dbg !5016
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5017
  %call = call ptr @kernfs_of(ptr noundef %0) #17, !dbg !5018
  store ptr %call, ptr %of, align 8, !dbg !5016
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #16, !dbg !5019
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !5009, metadata !DIExpression()), !dbg !5020
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !5021
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5010, metadata !DIExpression()), !dbg !5022
  %1 = load ptr, ptr %of, align 8, !dbg !5023
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %1, i32 0, i32 0, !dbg !5025
  %2 = load ptr, ptr %kn, align 8, !dbg !5025
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 10, !dbg !5026
  %3 = load i16, ptr %flags, align 8, !dbg !5026
  %conv = zext i16 %3 to i32, !dbg !5023
  %and = and i32 %conv, 128, !dbg !5027
  %tobool = icmp ne i32 %and, 0, !dbg !5027
  br i1 %tobool, label %if.end, label %if.then, !dbg !5028

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5029
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5029

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %of, align 8, !dbg !5030
  %mutex = getelementptr inbounds %struct.kernfs_open_file, ptr %4, i32 0, i32 4, !dbg !5031
  call void @mutex_lock(ptr noundef %mutex) #17, !dbg !5032
  store i32 -19, ptr %rc, align 4, !dbg !5033
  %5 = load ptr, ptr %of, align 8, !dbg !5034
  %kn1 = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 0, !dbg !5036
  %6 = load ptr, ptr %kn1, align 8, !dbg !5036
  %call2 = call ptr @kernfs_get_active(ptr noundef %6) #17, !dbg !5037
  %tobool3 = icmp ne ptr %call2, null, !dbg !5037
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5038

if.then4:                                         ; preds = %if.end
  br label %out_unlock, !dbg !5039

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %of, align 8, !dbg !5040
  %kn6 = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 0, !dbg !5041
  %8 = load ptr, ptr %kn6, align 8, !dbg !5041
  %call7 = call ptr @kernfs_ops(ptr noundef %8) #17, !dbg !5042
  store ptr %call7, ptr %ops, align 8, !dbg !5043
  %9 = load ptr, ptr %ops, align 8, !dbg !5044
  %mmap = getelementptr inbounds %struct.kernfs_ops, ptr %9, i32 0, i32 11, !dbg !5045
  %10 = load ptr, ptr %mmap, align 8, !dbg !5045
  %11 = load ptr, ptr %of, align 8, !dbg !5046
  %12 = load ptr, ptr %vma.addr, align 8, !dbg !5047
  %call8 = call i32 %10(ptr noundef %11, ptr noundef %12) #17, !dbg !5044
  store i32 %call8, ptr %rc, align 4, !dbg !5048
  %13 = load i32, ptr %rc, align 4, !dbg !5049
  %tobool9 = icmp ne i32 %13, 0, !dbg !5049
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5051

if.then10:                                        ; preds = %if.end5
  br label %out_put, !dbg !5052

if.end11:                                         ; preds = %if.end5
  %14 = load ptr, ptr %vma.addr, align 8, !dbg !5053
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %14, i32 0, i32 12, !dbg !5055
  %15 = load ptr, ptr %vm_file, align 8, !dbg !5055
  %16 = load ptr, ptr %file.addr, align 8, !dbg !5056
  %cmp = icmp ne ptr %15, %16, !dbg !5057
  br i1 %cmp, label %if.then13, label %if.end14, !dbg !5058

if.then13:                                        ; preds = %if.end11
  br label %out_put, !dbg !5059

if.end14:                                         ; preds = %if.end11
  store i32 -22, ptr %rc, align 4, !dbg !5060
  %17 = load ptr, ptr %of, align 8, !dbg !5061
  %mmapped = getelementptr inbounds %struct.kernfs_open_file, ptr %17, i32 0, i32 10, !dbg !5063
  %bf.load = load i8, ptr %mmapped, align 8, !dbg !5063
  %bf.clear = and i8 %bf.load, 1, !dbg !5063
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !5063
  br i1 %bf.cast, label %land.lhs.true, label %if.end20, !dbg !5064

land.lhs.true:                                    ; preds = %if.end14
  %18 = load ptr, ptr %of, align 8, !dbg !5065
  %vm_ops = getelementptr inbounds %struct.kernfs_open_file, ptr %18, i32 0, i32 11, !dbg !5066
  %19 = load ptr, ptr %vm_ops, align 8, !dbg !5066
  %20 = load ptr, ptr %vma.addr, align 8, !dbg !5067
  %vm_ops16 = getelementptr inbounds %struct.vm_area_struct, ptr %20, i32 0, i32 10, !dbg !5068
  %21 = load ptr, ptr %vm_ops16, align 8, !dbg !5068
  %cmp17 = icmp ne ptr %19, %21, !dbg !5069
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !5070

if.then19:                                        ; preds = %land.lhs.true
  br label %out_put, !dbg !5071

if.end20:                                         ; preds = %land.lhs.true, %if.end14
  %22 = load ptr, ptr %vma.addr, align 8, !dbg !5072
  %vm_ops21 = getelementptr inbounds %struct.vm_area_struct, ptr %22, i32 0, i32 10, !dbg !5074
  %23 = load ptr, ptr %vm_ops21, align 8, !dbg !5074
  %tobool22 = icmp ne ptr %23, null, !dbg !5072
  br i1 %tobool22, label %land.lhs.true23, label %if.end27, !dbg !5075

land.lhs.true23:                                  ; preds = %if.end20
  %24 = load ptr, ptr %vma.addr, align 8, !dbg !5076
  %vm_ops24 = getelementptr inbounds %struct.vm_area_struct, ptr %24, i32 0, i32 10, !dbg !5077
  %25 = load ptr, ptr %vm_ops24, align 8, !dbg !5077
  %close = getelementptr inbounds %struct.vm_operations_struct, ptr %25, i32 0, i32 1, !dbg !5078
  %26 = load ptr, ptr %close, align 8, !dbg !5078
  %tobool25 = icmp ne ptr %26, null, !dbg !5076
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5079

if.then26:                                        ; preds = %land.lhs.true23
  br label %out_put, !dbg !5080

if.end27:                                         ; preds = %land.lhs.true23, %if.end20
  store i32 0, ptr %rc, align 4, !dbg !5081
  %27 = load ptr, ptr %of, align 8, !dbg !5082
  %mmapped28 = getelementptr inbounds %struct.kernfs_open_file, ptr %27, i32 0, i32 10, !dbg !5084
  %bf.load29 = load i8, ptr %mmapped28, align 8, !dbg !5084
  %bf.clear30 = and i8 %bf.load29, 1, !dbg !5084
  %bf.cast31 = trunc i8 %bf.clear30 to i1, !dbg !5084
  br i1 %bf.cast31, label %if.end39, label %if.then32, !dbg !5085

if.then32:                                        ; preds = %if.end27
  %28 = load ptr, ptr %of, align 8, !dbg !5086
  %mmapped33 = getelementptr inbounds %struct.kernfs_open_file, ptr %28, i32 0, i32 10, !dbg !5088
  %bf.load34 = load i8, ptr %mmapped33, align 8, !dbg !5089
  %bf.clear35 = and i8 %bf.load34, -2, !dbg !5089
  %bf.set = or i8 %bf.clear35, 1, !dbg !5089
  store i8 %bf.set, ptr %mmapped33, align 8, !dbg !5089
  %29 = load ptr, ptr %of, align 8, !dbg !5090
  %call36 = call ptr @of_on(ptr noundef %29) #17, !dbg !5091
  %nr_mmapped = getelementptr inbounds %struct.kernfs_open_node, ptr %call36, i32 0, i32 4, !dbg !5092
  %30 = load i32, ptr %nr_mmapped, align 8, !dbg !5093
  %inc = add i32 %30, 1, !dbg !5093
  store i32 %inc, ptr %nr_mmapped, align 8, !dbg !5093
  %31 = load ptr, ptr %vma.addr, align 8, !dbg !5094
  %vm_ops37 = getelementptr inbounds %struct.vm_area_struct, ptr %31, i32 0, i32 10, !dbg !5095
  %32 = load ptr, ptr %vm_ops37, align 8, !dbg !5095
  %33 = load ptr, ptr %of, align 8, !dbg !5096
  %vm_ops38 = getelementptr inbounds %struct.kernfs_open_file, ptr %33, i32 0, i32 11, !dbg !5097
  store ptr %32, ptr %vm_ops38, align 8, !dbg !5098
  br label %if.end39, !dbg !5099

if.end39:                                         ; preds = %if.then32, %if.end27
  %34 = load ptr, ptr %vma.addr, align 8, !dbg !5100
  %vm_ops40 = getelementptr inbounds %struct.vm_area_struct, ptr %34, i32 0, i32 10, !dbg !5101
  store ptr @kernfs_vm_ops, ptr %vm_ops40, align 8, !dbg !5102
  br label %out_put, !dbg !5100

out_put:                                          ; preds = %if.end39, %if.then26, %if.then19, %if.then13, %if.then10
  call void @llvm.dbg.label(metadata !5011), !dbg !5103
  %35 = load ptr, ptr %of, align 8, !dbg !5104
  %kn41 = getelementptr inbounds %struct.kernfs_open_file, ptr %35, i32 0, i32 0, !dbg !5105
  %36 = load ptr, ptr %kn41, align 8, !dbg !5105
  call void @kernfs_put_active(ptr noundef %36) #17, !dbg !5106
  br label %out_unlock, !dbg !5106

out_unlock:                                       ; preds = %out_put, %if.then4
  call void @llvm.dbg.label(metadata !5012), !dbg !5107
  %37 = load ptr, ptr %of, align 8, !dbg !5108
  %mutex42 = getelementptr inbounds %struct.kernfs_open_file, ptr %37, i32 0, i32 4, !dbg !5109
  call void @mutex_unlock(ptr noundef %mutex42) #17, !dbg !5110
  %38 = load i32, ptr %rc, align 4, !dbg !5111
  store i32 %38, ptr %retval, align 4, !dbg !5112
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5112

cleanup:                                          ; preds = %out_unlock, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !5113
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #16, !dbg !5113
  call void @llvm.lifetime.end.p0(i64 8, ptr %of) #16, !dbg !5113
  %39 = load i32, ptr %retval, align 4, !dbg !5113
  ret i32 %39, !dbg !5113
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_fop_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !4140 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %root = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %of = alloca ptr, align 8
  %has_read = alloca i8, align 1
  %has_write = alloca i8, align 1
  %has_mmap = alloca i8, align 1
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4142, metadata !DIExpression()), !dbg !5114
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4143, metadata !DIExpression()), !dbg !5115
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #16, !dbg !5116
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !4144, metadata !DIExpression()), !dbg !5117
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5118
  %i_private = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47, !dbg !5119
  %1 = load ptr, ptr %i_private, align 8, !dbg !5119
  store ptr %1, ptr %kn, align 8, !dbg !5117
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #16, !dbg !5120
  call void @llvm.dbg.declare(metadata ptr %root, metadata !4145, metadata !DIExpression()), !dbg !5121
  %2 = load ptr, ptr %kn, align 8, !dbg !5122
  %call = call ptr @kernfs_root(ptr noundef %2) #17, !dbg !5123
  store ptr %call, ptr %root, align 8, !dbg !5121
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #16, !dbg !5124
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !4146, metadata !DIExpression()), !dbg !5125
  call void @llvm.lifetime.start.p0(i64 8, ptr %of) #16, !dbg !5126
  call void @llvm.dbg.declare(metadata ptr %of, metadata !4147, metadata !DIExpression()), !dbg !5127
  call void @llvm.lifetime.start.p0(i64 1, ptr %has_read) #16, !dbg !5128
  call void @llvm.dbg.declare(metadata ptr %has_read, metadata !4148, metadata !DIExpression()), !dbg !5129
  call void @llvm.lifetime.start.p0(i64 1, ptr %has_write) #16, !dbg !5128
  call void @llvm.dbg.declare(metadata ptr %has_write, metadata !4149, metadata !DIExpression()), !dbg !5130
  call void @llvm.lifetime.start.p0(i64 1, ptr %has_mmap) #16, !dbg !5128
  call void @llvm.dbg.declare(metadata ptr %has_mmap, metadata !4150, metadata !DIExpression()), !dbg !5131
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !5132
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4151, metadata !DIExpression()), !dbg !5133
  store i32 -13, ptr %error, align 4, !dbg !5133
  %3 = load ptr, ptr %kn, align 8, !dbg !5134
  %call1 = call ptr @kernfs_get_active(ptr noundef %3) #17, !dbg !5136
  %tobool = icmp ne ptr %call1, null, !dbg !5136
  br i1 %tobool, label %if.end, label %if.then, !dbg !5137

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup106, !dbg !5138

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %kn, align 8, !dbg !5139
  %call2 = call ptr @kernfs_ops(ptr noundef %4) #17, !dbg !5140
  store ptr %call2, ptr %ops, align 8, !dbg !5141
  %5 = load ptr, ptr %ops, align 8, !dbg !5142
  %seq_show = getelementptr inbounds %struct.kernfs_ops, ptr %5, i32 0, i32 2, !dbg !5143
  %6 = load ptr, ptr %seq_show, align 8, !dbg !5143
  %tobool3 = icmp ne ptr %6, null, !dbg !5142
  br i1 %tobool3, label %lor.end, label %lor.lhs.false, !dbg !5144

lor.lhs.false:                                    ; preds = %if.end
  %7 = load ptr, ptr %ops, align 8, !dbg !5145
  %read = getelementptr inbounds %struct.kernfs_ops, ptr %7, i32 0, i32 6, !dbg !5146
  %8 = load ptr, ptr %read, align 8, !dbg !5146
  %tobool4 = icmp ne ptr %8, null, !dbg !5145
  br i1 %tobool4, label %lor.end, label %lor.rhs, !dbg !5147

lor.rhs:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %ops, align 8, !dbg !5148
  %mmap = getelementptr inbounds %struct.kernfs_ops, ptr %9, i32 0, i32 11, !dbg !5149
  %10 = load ptr, ptr %mmap, align 8, !dbg !5149
  %tobool5 = icmp ne ptr %10, null, !dbg !5147
  br label %lor.end, !dbg !5147

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end
  %11 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end ], [ %tobool5, %lor.rhs ]
  %frombool = zext i1 %11 to i8, !dbg !5150
  store i8 %frombool, ptr %has_read, align 1, !dbg !5150
  %12 = load ptr, ptr %ops, align 8, !dbg !5151
  %write = getelementptr inbounds %struct.kernfs_ops, ptr %12, i32 0, i32 9, !dbg !5152
  %13 = load ptr, ptr %write, align 8, !dbg !5152
  %tobool6 = icmp ne ptr %13, null, !dbg !5151
  br i1 %tobool6, label %lor.end10, label %lor.rhs7, !dbg !5153

lor.rhs7:                                         ; preds = %lor.end
  %14 = load ptr, ptr %ops, align 8, !dbg !5154
  %mmap8 = getelementptr inbounds %struct.kernfs_ops, ptr %14, i32 0, i32 11, !dbg !5155
  %15 = load ptr, ptr %mmap8, align 8, !dbg !5155
  %tobool9 = icmp ne ptr %15, null, !dbg !5153
  br label %lor.end10, !dbg !5153

lor.end10:                                        ; preds = %lor.rhs7, %lor.end
  %16 = phi i1 [ true, %lor.end ], [ %tobool9, %lor.rhs7 ]
  %frombool11 = zext i1 %16 to i8, !dbg !5156
  store i8 %frombool11, ptr %has_write, align 1, !dbg !5156
  %17 = load ptr, ptr %ops, align 8, !dbg !5157
  %mmap12 = getelementptr inbounds %struct.kernfs_ops, ptr %17, i32 0, i32 11, !dbg !5158
  %18 = load ptr, ptr %mmap12, align 8, !dbg !5158
  %tobool13 = icmp ne ptr %18, null, !dbg !5157
  %frombool14 = zext i1 %tobool13 to i8, !dbg !5159
  store i8 %frombool14, ptr %has_mmap, align 1, !dbg !5159
  %19 = load ptr, ptr %root, align 8, !dbg !5160
  %flags = getelementptr inbounds %struct.kernfs_root, ptr %19, i32 0, i32 1, !dbg !5162
  %20 = load i32, ptr %flags, align 8, !dbg !5162
  %and = and i32 %20, 2, !dbg !5163
  %tobool15 = icmp ne i32 %and, 0, !dbg !5163
  br i1 %tobool15, label %if.then16, label %if.end37, !dbg !5164

if.then16:                                        ; preds = %lor.end10
  %21 = load ptr, ptr %file.addr, align 8, !dbg !5165
  %f_mode = getelementptr inbounds %struct.file, ptr %21, i32 0, i32 2, !dbg !5168
  %22 = load i32, ptr %f_mode, align 4, !dbg !5168
  %and17 = and i32 %22, 2, !dbg !5169
  %tobool18 = icmp ne i32 %and17, 0, !dbg !5169
  br i1 %tobool18, label %land.lhs.true, label %if.end24, !dbg !5170

land.lhs.true:                                    ; preds = %if.then16
  %23 = load ptr, ptr %inode.addr, align 8, !dbg !5171
  %i_mode = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 0, !dbg !5172
  %24 = load i16, ptr %i_mode, align 8, !dbg !5172
  %conv = zext i16 %24 to i32, !dbg !5171
  %and19 = and i32 %conv, 146, !dbg !5173
  %tobool20 = icmp ne i32 %and19, 0, !dbg !5173
  br i1 %tobool20, label %lor.lhs.false21, label %if.then23, !dbg !5174

lor.lhs.false21:                                  ; preds = %land.lhs.true
  %25 = load i8, ptr %has_write, align 1, !dbg !5175, !range !4268, !noundef !620
  %tobool22 = trunc i8 %25 to i1, !dbg !5175
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !5176

if.then23:                                        ; preds = %lor.lhs.false21, %land.lhs.true
  br label %err_out, !dbg !5177

if.end24:                                         ; preds = %lor.lhs.false21, %if.then16
  %26 = load ptr, ptr %file.addr, align 8, !dbg !5178
  %f_mode25 = getelementptr inbounds %struct.file, ptr %26, i32 0, i32 2, !dbg !5180
  %27 = load i32, ptr %f_mode25, align 4, !dbg !5180
  %and26 = and i32 %27, 1, !dbg !5181
  %tobool27 = icmp ne i32 %and26, 0, !dbg !5181
  br i1 %tobool27, label %land.lhs.true28, label %if.end36, !dbg !5182

land.lhs.true28:                                  ; preds = %if.end24
  %28 = load ptr, ptr %inode.addr, align 8, !dbg !5183
  %i_mode29 = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 0, !dbg !5184
  %29 = load i16, ptr %i_mode29, align 8, !dbg !5184
  %conv30 = zext i16 %29 to i32, !dbg !5183
  %and31 = and i32 %conv30, 292, !dbg !5185
  %tobool32 = icmp ne i32 %and31, 0, !dbg !5185
  br i1 %tobool32, label %lor.lhs.false33, label %if.then35, !dbg !5186

lor.lhs.false33:                                  ; preds = %land.lhs.true28
  %30 = load i8, ptr %has_read, align 1, !dbg !5187, !range !4268, !noundef !620
  %tobool34 = trunc i8 %30 to i1, !dbg !5187
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !5188

if.then35:                                        ; preds = %lor.lhs.false33, %land.lhs.true28
  br label %err_out, !dbg !5189

if.end36:                                         ; preds = %lor.lhs.false33, %if.end24
  br label %if.end37, !dbg !5190

if.end37:                                         ; preds = %if.end36, %lor.end10
  store i32 -12, ptr %error, align 4, !dbg !5191
  %call38 = call noalias ptr @kzalloc(i64 noundef 152, i32 noundef 3264) #18, !dbg !5192
  store ptr %call38, ptr %of, align 8, !dbg !5193
  %31 = load ptr, ptr %of, align 8, !dbg !5194
  %tobool39 = icmp ne ptr %31, null, !dbg !5194
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !5196

if.then40:                                        ; preds = %if.end37
  br label %err_out, !dbg !5197

if.end41:                                         ; preds = %if.end37
  %32 = load i8, ptr %has_mmap, align 1, !dbg !5198, !range !4268, !noundef !620
  %tobool42 = trunc i8 %32 to i1, !dbg !5198
  br i1 %tobool42, label %if.then43, label %if.else, !dbg !5200

if.then43:                                        ; preds = %if.end41
  br label %do.body, !dbg !5201

do.body:                                          ; preds = %if.then43
  %33 = load ptr, ptr %of, align 8, !dbg !5202
  %mutex = getelementptr inbounds %struct.kernfs_open_file, ptr %33, i32 0, i32 4, !dbg !5202
  call void @__mutex_init(ptr noundef %mutex, ptr noundef @.str.3, ptr noundef @kernfs_fop_open.__key) #17, !dbg !5202
  br label %do.cond, !dbg !5202

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5202

do.end:                                           ; preds = %do.cond
  br label %if.end48, !dbg !5202

if.else:                                          ; preds = %if.end41
  br label %do.body44, !dbg !5204

do.body44:                                        ; preds = %if.else
  %34 = load ptr, ptr %of, align 8, !dbg !5205
  %mutex45 = getelementptr inbounds %struct.kernfs_open_file, ptr %34, i32 0, i32 4, !dbg !5205
  call void @__mutex_init(ptr noundef %mutex45, ptr noundef @.str.3, ptr noundef @kernfs_fop_open.__key.4) #17, !dbg !5205
  br label %do.cond46, !dbg !5205

do.cond46:                                        ; preds = %do.body44
  br label %do.end47, !dbg !5205

do.end47:                                         ; preds = %do.cond46
  br label %if.end48

if.end48:                                         ; preds = %do.end47, %do.end
  %35 = load ptr, ptr %kn, align 8, !dbg !5207
  %36 = load ptr, ptr %of, align 8, !dbg !5208
  %kn49 = getelementptr inbounds %struct.kernfs_open_file, ptr %36, i32 0, i32 0, !dbg !5209
  store ptr %35, ptr %kn49, align 8, !dbg !5210
  %37 = load ptr, ptr %file.addr, align 8, !dbg !5211
  %38 = load ptr, ptr %of, align 8, !dbg !5212
  %file50 = getelementptr inbounds %struct.kernfs_open_file, ptr %38, i32 0, i32 1, !dbg !5213
  store ptr %37, ptr %file50, align 8, !dbg !5214
  %39 = load ptr, ptr %ops, align 8, !dbg !5215
  %atomic_write_len = getelementptr inbounds %struct.kernfs_ops, ptr %39, i32 0, i32 7, !dbg !5216
  %40 = load i64, ptr %atomic_write_len, align 8, !dbg !5216
  %41 = load ptr, ptr %of, align 8, !dbg !5217
  %atomic_write_len51 = getelementptr inbounds %struct.kernfs_open_file, ptr %41, i32 0, i32 9, !dbg !5218
  store i64 %40, ptr %atomic_write_len51, align 8, !dbg !5219
  store i32 -22, ptr %error, align 4, !dbg !5220
  %42 = load ptr, ptr %ops, align 8, !dbg !5221
  %prealloc = getelementptr inbounds %struct.kernfs_ops, ptr %42, i32 0, i32 8, !dbg !5223
  %43 = load i8, ptr %prealloc, align 8, !dbg !5223, !range !4268, !noundef !620
  %tobool52 = trunc i8 %43 to i1, !dbg !5223
  br i1 %tobool52, label %land.lhs.true54, label %if.end58, !dbg !5224

land.lhs.true54:                                  ; preds = %if.end48
  %44 = load ptr, ptr %ops, align 8, !dbg !5225
  %seq_show55 = getelementptr inbounds %struct.kernfs_ops, ptr %44, i32 0, i32 2, !dbg !5226
  %45 = load ptr, ptr %seq_show55, align 8, !dbg !5226
  %tobool56 = icmp ne ptr %45, null, !dbg !5225
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !5227

if.then57:                                        ; preds = %land.lhs.true54
  br label %err_free, !dbg !5228

if.end58:                                         ; preds = %land.lhs.true54, %if.end48
  %46 = load ptr, ptr %ops, align 8, !dbg !5229
  %prealloc59 = getelementptr inbounds %struct.kernfs_ops, ptr %46, i32 0, i32 8, !dbg !5230
  %47 = load i8, ptr %prealloc59, align 8, !dbg !5230, !range !4268, !noundef !620
  %tobool60 = trunc i8 %47 to i1, !dbg !5230
  br i1 %tobool60, label %if.then61, label %if.end74, !dbg !5231

if.then61:                                        ; preds = %if.end58
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #16, !dbg !5232
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4152, metadata !DIExpression()), !dbg !5233
  %48 = load ptr, ptr %of, align 8, !dbg !5234
  %atomic_write_len62 = getelementptr inbounds %struct.kernfs_open_file, ptr %48, i32 0, i32 9, !dbg !5235
  %49 = load i64, ptr %atomic_write_len62, align 8, !dbg !5235
  %tobool63 = icmp ne i64 %49, 0, !dbg !5234
  br i1 %tobool63, label %cond.true, label %cond.false, !dbg !5234

cond.true:                                        ; preds = %if.then61
  br label %cond.end, !dbg !5234

cond.false:                                       ; preds = %if.then61
  br label %cond.end, !dbg !5234

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %49, %cond.true ], [ 4096, %cond.false ], !dbg !5234
  %conv64 = trunc i64 %cond to i32, !dbg !5234
  store i32 %conv64, ptr %len, align 4, !dbg !5233
  %50 = load i32, ptr %len, align 4, !dbg !5236
  %add = add i32 %50, 1, !dbg !5237
  %conv65 = sext i32 %add to i64, !dbg !5236
  %call66 = call noalias ptr @kmalloc(i64 noundef %conv65, i32 noundef 3264) #18, !dbg !5238
  %51 = load ptr, ptr %of, align 8, !dbg !5239
  %prealloc_buf = getelementptr inbounds %struct.kernfs_open_file, ptr %51, i32 0, i32 8, !dbg !5240
  store ptr %call66, ptr %prealloc_buf, align 8, !dbg !5241
  store i32 -12, ptr %error, align 4, !dbg !5242
  %52 = load ptr, ptr %of, align 8, !dbg !5243
  %prealloc_buf67 = getelementptr inbounds %struct.kernfs_open_file, ptr %52, i32 0, i32 8, !dbg !5245
  %53 = load ptr, ptr %prealloc_buf67, align 8, !dbg !5245
  %tobool68 = icmp ne ptr %53, null, !dbg !5243
  br i1 %tobool68, label %if.end70, label %if.then69, !dbg !5246

if.then69:                                        ; preds = %cond.end
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5247

if.end70:                                         ; preds = %cond.end
  br label %do.body71, !dbg !5248

do.body71:                                        ; preds = %if.end70
  %54 = load ptr, ptr %of, align 8, !dbg !5249
  %prealloc_mutex = getelementptr inbounds %struct.kernfs_open_file, ptr %54, i32 0, i32 5, !dbg !5249
  call void @__mutex_init(ptr noundef %prealloc_mutex, ptr noundef @.str.6, ptr noundef @kernfs_fop_open.__key.5) #17, !dbg !5249
  br label %do.cond72, !dbg !5249

do.cond72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5249

do.end73:                                         ; preds = %do.cond72
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5251
  br label %cleanup, !dbg !5251

cleanup:                                          ; preds = %if.then69, %do.end73
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #16, !dbg !5251
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup106 [
    i32 0, label %cleanup.cont
    i32 7, label %err_free
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end74, !dbg !5252

if.end74:                                         ; preds = %cleanup.cont, %if.end58
  %55 = load ptr, ptr %ops, align 8, !dbg !5253
  %seq_show75 = getelementptr inbounds %struct.kernfs_ops, ptr %55, i32 0, i32 2, !dbg !5255
  %56 = load ptr, ptr %seq_show75, align 8, !dbg !5255
  %tobool76 = icmp ne ptr %56, null, !dbg !5253
  br i1 %tobool76, label %if.then77, label %if.else79, !dbg !5256

if.then77:                                        ; preds = %if.end74
  %57 = load ptr, ptr %file.addr, align 8, !dbg !5257
  %call78 = call i32 @seq_open(ptr noundef %57, ptr noundef @kernfs_seq_ops) #17, !dbg !5258
  store i32 %call78, ptr %error, align 4, !dbg !5259
  br label %if.end81, !dbg !5260

if.else79:                                        ; preds = %if.end74
  %58 = load ptr, ptr %file.addr, align 8, !dbg !5261
  %call80 = call i32 @seq_open(ptr noundef %58, ptr noundef null) #17, !dbg !5262
  store i32 %call80, ptr %error, align 4, !dbg !5263
  br label %if.end81

if.end81:                                         ; preds = %if.else79, %if.then77
  %59 = load i32, ptr %error, align 4, !dbg !5264
  %tobool82 = icmp ne i32 %59, 0, !dbg !5264
  br i1 %tobool82, label %if.then83, label %if.end84, !dbg !5266

if.then83:                                        ; preds = %if.end81
  br label %err_free, !dbg !5267

if.end84:                                         ; preds = %if.end81
  %60 = load ptr, ptr %file.addr, align 8, !dbg !5268
  %private_data = getelementptr inbounds %struct.file, ptr %60, i32 0, i32 15, !dbg !5269
  %61 = load ptr, ptr %private_data, align 8, !dbg !5269
  %62 = load ptr, ptr %of, align 8, !dbg !5270
  %seq_file = getelementptr inbounds %struct.kernfs_open_file, ptr %62, i32 0, i32 2, !dbg !5271
  store ptr %61, ptr %seq_file, align 8, !dbg !5272
  %63 = load ptr, ptr %of, align 8, !dbg !5273
  %64 = load ptr, ptr %of, align 8, !dbg !5274
  %seq_file85 = getelementptr inbounds %struct.kernfs_open_file, ptr %64, i32 0, i32 2, !dbg !5275
  %65 = load ptr, ptr %seq_file85, align 8, !dbg !5275
  %private = getelementptr inbounds %struct.seq_file, ptr %65, i32 0, i32 11, !dbg !5276
  store ptr %63, ptr %private, align 8, !dbg !5277
  %66 = load ptr, ptr %file.addr, align 8, !dbg !5278
  %f_mode86 = getelementptr inbounds %struct.file, ptr %66, i32 0, i32 2, !dbg !5280
  %67 = load i32, ptr %f_mode86, align 4, !dbg !5280
  %and87 = and i32 %67, 2, !dbg !5281
  %tobool88 = icmp ne i32 %and87, 0, !dbg !5281
  br i1 %tobool88, label %if.then89, label %if.end91, !dbg !5282

if.then89:                                        ; preds = %if.end84
  %68 = load ptr, ptr %file.addr, align 8, !dbg !5283
  %f_mode90 = getelementptr inbounds %struct.file, ptr %68, i32 0, i32 2, !dbg !5284
  %69 = load i32, ptr %f_mode90, align 4, !dbg !5285
  %or = or i32 %69, 16, !dbg !5285
  store i32 %or, ptr %f_mode90, align 4, !dbg !5285
  br label %if.end91, !dbg !5283

if.end91:                                         ; preds = %if.then89, %if.end84
  %70 = load ptr, ptr %kn, align 8, !dbg !5286
  %71 = load ptr, ptr %of, align 8, !dbg !5287
  %call92 = call i32 @kernfs_get_open_node(ptr noundef %70, ptr noundef %71) #17, !dbg !5288
  store i32 %call92, ptr %error, align 4, !dbg !5289
  %72 = load i32, ptr %error, align 4, !dbg !5290
  %tobool93 = icmp ne i32 %72, 0, !dbg !5290
  br i1 %tobool93, label %if.then94, label %if.end95, !dbg !5292

if.then94:                                        ; preds = %if.end91
  br label %err_seq_release, !dbg !5293

if.end95:                                         ; preds = %if.end91
  %73 = load ptr, ptr %ops, align 8, !dbg !5294
  %open = getelementptr inbounds %struct.kernfs_ops, ptr %73, i32 0, i32 0, !dbg !5296
  %74 = load ptr, ptr %open, align 8, !dbg !5296
  %tobool96 = icmp ne ptr %74, null, !dbg !5294
  br i1 %tobool96, label %if.then97, label %if.end103, !dbg !5297

if.then97:                                        ; preds = %if.end95
  %75 = load ptr, ptr %ops, align 8, !dbg !5298
  %open98 = getelementptr inbounds %struct.kernfs_ops, ptr %75, i32 0, i32 0, !dbg !5300
  %76 = load ptr, ptr %open98, align 8, !dbg !5300
  %77 = load ptr, ptr %of, align 8, !dbg !5301
  %call99 = call i32 %76(ptr noundef %77) #17, !dbg !5298
  store i32 %call99, ptr %error, align 4, !dbg !5302
  %78 = load i32, ptr %error, align 4, !dbg !5303
  %tobool100 = icmp ne i32 %78, 0, !dbg !5303
  br i1 %tobool100, label %if.then101, label %if.end102, !dbg !5305

if.then101:                                       ; preds = %if.then97
  br label %err_put_node, !dbg !5306

if.end102:                                        ; preds = %if.then97
  br label %if.end103, !dbg !5307

if.end103:                                        ; preds = %if.end102, %if.end95
  %79 = load ptr, ptr %kn, align 8, !dbg !5308
  call void @kernfs_put_active(ptr noundef %79) #17, !dbg !5309
  store i32 0, ptr %retval, align 4, !dbg !5310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup106, !dbg !5310

err_put_node:                                     ; preds = %if.then101
  call void @llvm.dbg.label(metadata !4155), !dbg !5311
  %80 = load ptr, ptr %kn, align 8, !dbg !5312
  %81 = load ptr, ptr %of, align 8, !dbg !5313
  call void @kernfs_unlink_open_file(ptr noundef %80, ptr noundef %81, i1 noundef zeroext true) #17, !dbg !5314
  br label %err_seq_release, !dbg !5314

err_seq_release:                                  ; preds = %err_put_node, %if.then94
  call void @llvm.dbg.label(metadata !4156), !dbg !5315
  %82 = load ptr, ptr %inode.addr, align 8, !dbg !5316
  %83 = load ptr, ptr %file.addr, align 8, !dbg !5317
  %call104 = call i32 @seq_release(ptr noundef %82, ptr noundef %83) #17, !dbg !5318
  br label %err_free, !dbg !5318

err_free:                                         ; preds = %err_seq_release, %cleanup, %if.then83, %if.then57
  call void @llvm.dbg.label(metadata !4157), !dbg !5319
  %84 = load ptr, ptr %of, align 8, !dbg !5320
  %prealloc_buf105 = getelementptr inbounds %struct.kernfs_open_file, ptr %84, i32 0, i32 8, !dbg !5321
  %85 = load ptr, ptr %prealloc_buf105, align 8, !dbg !5321
  call void @kfree(ptr noundef %85) #17, !dbg !5322
  %86 = load ptr, ptr %of, align 8, !dbg !5323
  call void @kfree(ptr noundef %86) #17, !dbg !5324
  br label %err_out, !dbg !5324

err_out:                                          ; preds = %err_free, %if.then40, %if.then35, %if.then23
  call void @llvm.dbg.label(metadata !4158), !dbg !5325
  %87 = load ptr, ptr %kn, align 8, !dbg !5326
  call void @kernfs_put_active(ptr noundef %87) #17, !dbg !5327
  %88 = load i32, ptr %error, align 4, !dbg !5328
  store i32 %88, ptr %retval, align 4, !dbg !5329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup106, !dbg !5329

cleanup106:                                       ; preds = %err_out, %if.end103, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !5330
  call void @llvm.lifetime.end.p0(i64 1, ptr %has_mmap) #16, !dbg !5330
  call void @llvm.lifetime.end.p0(i64 1, ptr %has_write) #16, !dbg !5330
  call void @llvm.lifetime.end.p0(i64 1, ptr %has_read) #16, !dbg !5330
  call void @llvm.lifetime.end.p0(i64 8, ptr %of) #16, !dbg !5330
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #16, !dbg !5330
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #16, !dbg !5330
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #16, !dbg !5330
  %89 = load i32, ptr %retval, align 4, !dbg !5330
  ret i32 %89, !dbg !5330
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_fop_release(ptr noundef %inode, ptr noundef %filp) #0 align 16 !dbg !5331 {
entry:
  %inode.addr = alloca ptr, align 8
  %filp.addr = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %of = alloca ptr, align 8
  %mutex = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5333, metadata !DIExpression()), !dbg !5340
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5334, metadata !DIExpression()), !dbg !5341
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #16, !dbg !5342
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !5335, metadata !DIExpression()), !dbg !5343
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5344
  %i_private = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47, !dbg !5345
  %1 = load ptr, ptr %i_private, align 8, !dbg !5345
  store ptr %1, ptr %kn, align 8, !dbg !5343
  call void @llvm.lifetime.start.p0(i64 8, ptr %of) #16, !dbg !5346
  call void @llvm.dbg.declare(metadata ptr %of, metadata !5336, metadata !DIExpression()), !dbg !5347
  %2 = load ptr, ptr %filp.addr, align 8, !dbg !5348
  %call = call ptr @kernfs_of(ptr noundef %2) #17, !dbg !5349
  store ptr %call, ptr %of, align 8, !dbg !5347
  %3 = load ptr, ptr %kn, align 8, !dbg !5350
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 10, !dbg !5351
  %4 = load i16, ptr %flags, align 8, !dbg !5351
  %conv = zext i16 %4 to i32, !dbg !5350
  %and = and i32 %conv, 8192, !dbg !5352
  %tobool = icmp ne i32 %and, 0, !dbg !5352
  br i1 %tobool, label %if.then, label %if.end, !dbg !5353

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %mutex) #16, !dbg !5354
  call void @llvm.dbg.declare(metadata ptr %mutex, metadata !5337, metadata !DIExpression()), !dbg !5355
  %5 = load ptr, ptr %kn, align 8, !dbg !5356
  %call1 = call ptr @kernfs_open_file_mutex_lock(ptr noundef %5) #17, !dbg !5357
  store ptr %call1, ptr %mutex, align 8, !dbg !5358
  %6 = load ptr, ptr %kn, align 8, !dbg !5359
  %7 = load ptr, ptr %of, align 8, !dbg !5360
  call void @kernfs_release_file(ptr noundef %6, ptr noundef %7) #17, !dbg !5361
  %8 = load ptr, ptr %mutex, align 8, !dbg !5362
  call void @mutex_unlock(ptr noundef %8) #17, !dbg !5363
  call void @llvm.lifetime.end.p0(i64 8, ptr %mutex) #16, !dbg !5364
  br label %if.end, !dbg !5365

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %kn, align 8, !dbg !5366
  %10 = load ptr, ptr %of, align 8, !dbg !5367
  call void @kernfs_unlink_open_file(ptr noundef %9, ptr noundef %10, i1 noundef zeroext false) #17, !dbg !5368
  %11 = load ptr, ptr %inode.addr, align 8, !dbg !5369
  %12 = load ptr, ptr %filp.addr, align 8, !dbg !5370
  %call2 = call i32 @seq_release(ptr noundef %11, ptr noundef %12) #17, !dbg !5371
  %13 = load ptr, ptr %of, align 8, !dbg !5372
  %prealloc_buf = getelementptr inbounds %struct.kernfs_open_file, ptr %13, i32 0, i32 8, !dbg !5373
  %14 = load ptr, ptr %prealloc_buf, align 8, !dbg !5373
  call void @kfree(ptr noundef %14) #17, !dbg !5374
  %15 = load ptr, ptr %of, align 8, !dbg !5375
  call void @kfree(ptr noundef %15) #17, !dbg !5376
  call void @llvm.lifetime.end.p0(i64 8, ptr %of) #16, !dbg !5377
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #16, !dbg !5377
  ret i32 0, !dbg !5378
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @noop_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @copy_splice_read(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__kernfs_create_file(ptr noundef %parent, ptr noundef %name, i16 noundef zeroext %mode, i32 %uid.coerce, i32 %gid.coerce, i64 noundef %size, ptr noundef %ops, ptr noundef %priv, ptr noundef %ns, ptr noundef %key) #0 align 16 !dbg !5379 {
entry:
  %retval = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %parent.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %size.addr = alloca i64, align 8
  %ops.addr = alloca ptr, align 8
  %priv.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %flags = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive1, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5384, metadata !DIExpression()), !dbg !5397
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5385, metadata !DIExpression()), !dbg !5398
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5386, metadata !DIExpression()), !dbg !5399
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !5387, metadata !DIExpression()), !dbg !5400
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !5388, metadata !DIExpression()), !dbg !5401
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5389, metadata !DIExpression()), !dbg !5402
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5390, metadata !DIExpression()), !dbg !5403
  store ptr %priv, ptr %priv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %priv.addr, metadata !5391, metadata !DIExpression()), !dbg !5404
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !5392, metadata !DIExpression()), !dbg !5405
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5393, metadata !DIExpression()), !dbg !5406
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #16, !dbg !5407
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !5394, metadata !DIExpression()), !dbg !5408
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #16, !dbg !5409
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5395, metadata !DIExpression()), !dbg !5410
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !5411
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5396, metadata !DIExpression()), !dbg !5412
  store i32 2, ptr %flags, align 4, !dbg !5413
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !5414
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5415
  %2 = load i16, ptr %mode.addr, align 2, !dbg !5416
  %conv = zext i16 %2 to i32, !dbg !5416
  %and = and i32 %conv, 4095, !dbg !5417
  %or = or i32 %and, 32768, !dbg !5418
  %conv2 = trunc i32 %or to i16, !dbg !5419
  %3 = load i32, ptr %flags, align 4, !dbg !5420
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5421
  %4 = load i32, ptr %coerce.dive3, align 4, !dbg !5421
  %coerce.dive4 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !5421
  %5 = load i32, ptr %coerce.dive4, align 4, !dbg !5421
  %call = call ptr @kernfs_new_node(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %conv2, i32 %4, i32 %5, i32 noundef %3) #17, !dbg !5421
  store ptr %call, ptr %kn, align 8, !dbg !5422
  %6 = load ptr, ptr %kn, align 8, !dbg !5423
  %tobool = icmp ne ptr %6, null, !dbg !5423
  br i1 %tobool, label %if.end, label %if.then, !dbg !5425

if.then:                                          ; preds = %entry
  %call5 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !5426
  store ptr %call5, ptr %retval, align 8, !dbg !5427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5427

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %ops.addr, align 8, !dbg !5428
  %8 = load ptr, ptr %kn, align 8, !dbg !5429
  %9 = getelementptr inbounds %struct.kernfs_node, ptr %8, i32 0, i32 7, !dbg !5430
  %ops6 = getelementptr inbounds %struct.kernfs_elem_attr, ptr %9, i32 0, i32 0, !dbg !5431
  store ptr %7, ptr %ops6, align 8, !dbg !5432
  %10 = load i64, ptr %size.addr, align 8, !dbg !5433
  %11 = load ptr, ptr %kn, align 8, !dbg !5434
  %12 = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 7, !dbg !5435
  %size7 = getelementptr inbounds %struct.kernfs_elem_attr, ptr %12, i32 0, i32 2, !dbg !5436
  store i64 %10, ptr %size7, align 8, !dbg !5437
  %13 = load ptr, ptr %ns.addr, align 8, !dbg !5438
  %14 = load ptr, ptr %kn, align 8, !dbg !5439
  %ns8 = getelementptr inbounds %struct.kernfs_node, ptr %14, i32 0, i32 5, !dbg !5440
  store ptr %13, ptr %ns8, align 8, !dbg !5441
  %15 = load ptr, ptr %priv.addr, align 8, !dbg !5442
  %16 = load ptr, ptr %kn, align 8, !dbg !5443
  %priv9 = getelementptr inbounds %struct.kernfs_node, ptr %16, i32 0, i32 8, !dbg !5444
  store ptr %15, ptr %priv9, align 8, !dbg !5445
  %17 = load ptr, ptr %ops.addr, align 8, !dbg !5446
  %seq_show = getelementptr inbounds %struct.kernfs_ops, ptr %17, i32 0, i32 2, !dbg !5448
  %18 = load ptr, ptr %seq_show, align 8, !dbg !5448
  %tobool10 = icmp ne ptr %18, null, !dbg !5446
  br i1 %tobool10, label %if.then11, label %if.end16, !dbg !5449

if.then11:                                        ; preds = %if.end
  %19 = load ptr, ptr %kn, align 8, !dbg !5450
  %flags12 = getelementptr inbounds %struct.kernfs_node, ptr %19, i32 0, i32 10, !dbg !5451
  %20 = load i16, ptr %flags12, align 8, !dbg !5452
  %conv13 = zext i16 %20 to i32, !dbg !5452
  %or14 = or i32 %conv13, 64, !dbg !5452
  %conv15 = trunc i32 %or14 to i16, !dbg !5452
  store i16 %conv15, ptr %flags12, align 8, !dbg !5452
  br label %if.end16, !dbg !5450

if.end16:                                         ; preds = %if.then11, %if.end
  %21 = load ptr, ptr %ops.addr, align 8, !dbg !5453
  %mmap = getelementptr inbounds %struct.kernfs_ops, ptr %21, i32 0, i32 11, !dbg !5455
  %22 = load ptr, ptr %mmap, align 8, !dbg !5455
  %tobool17 = icmp ne ptr %22, null, !dbg !5453
  br i1 %tobool17, label %if.then18, label %if.end23, !dbg !5456

if.then18:                                        ; preds = %if.end16
  %23 = load ptr, ptr %kn, align 8, !dbg !5457
  %flags19 = getelementptr inbounds %struct.kernfs_node, ptr %23, i32 0, i32 10, !dbg !5458
  %24 = load i16, ptr %flags19, align 8, !dbg !5459
  %conv20 = zext i16 %24 to i32, !dbg !5459
  %or21 = or i32 %conv20, 128, !dbg !5459
  %conv22 = trunc i32 %or21 to i16, !dbg !5459
  store i16 %conv22, ptr %flags19, align 8, !dbg !5459
  br label %if.end23, !dbg !5457

if.end23:                                         ; preds = %if.then18, %if.end16
  %25 = load ptr, ptr %ops.addr, align 8, !dbg !5460
  %release = getelementptr inbounds %struct.kernfs_ops, ptr %25, i32 0, i32 1, !dbg !5462
  %26 = load ptr, ptr %release, align 8, !dbg !5462
  %tobool24 = icmp ne ptr %26, null, !dbg !5460
  br i1 %tobool24, label %if.then25, label %if.end30, !dbg !5463

if.then25:                                        ; preds = %if.end23
  %27 = load ptr, ptr %kn, align 8, !dbg !5464
  %flags26 = getelementptr inbounds %struct.kernfs_node, ptr %27, i32 0, i32 10, !dbg !5465
  %28 = load i16, ptr %flags26, align 8, !dbg !5466
  %conv27 = zext i16 %28 to i32, !dbg !5466
  %or28 = or i32 %conv27, 8192, !dbg !5466
  %conv29 = trunc i32 %or28 to i16, !dbg !5466
  store i16 %conv29, ptr %flags26, align 8, !dbg !5466
  br label %if.end30, !dbg !5464

if.end30:                                         ; preds = %if.then25, %if.end23
  %29 = load ptr, ptr %kn, align 8, !dbg !5467
  %call31 = call i32 @kernfs_add_one(ptr noundef %29) #17, !dbg !5468
  store i32 %call31, ptr %rc, align 4, !dbg !5469
  %30 = load i32, ptr %rc, align 4, !dbg !5470
  %tobool32 = icmp ne i32 %30, 0, !dbg !5470
  br i1 %tobool32, label %if.then33, label %if.end36, !dbg !5472

if.then33:                                        ; preds = %if.end30
  %31 = load ptr, ptr %kn, align 8, !dbg !5473
  call void @kernfs_put(ptr noundef %31) #17, !dbg !5475
  %32 = load i32, ptr %rc, align 4, !dbg !5476
  %conv34 = sext i32 %32 to i64, !dbg !5476
  %call35 = call ptr @ERR_PTR(i64 noundef %conv34) #17, !dbg !5477
  store ptr %call35, ptr %retval, align 8, !dbg !5478
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5478

if.end36:                                         ; preds = %if.end30
  %33 = load ptr, ptr %kn, align 8, !dbg !5479
  store ptr %33, ptr %retval, align 8, !dbg !5480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5480

cleanup:                                          ; preds = %if.end36, %if.then33, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !5481
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #16, !dbg !5481
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #16, !dbg !5481
  %34 = load ptr, ptr %retval, align 8, !dbg !5481
  ret ptr %34, !dbg !5481
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5482 dso_local ptr @kernfs_new_node(ptr noundef, ptr noundef, i16 noundef zeroext, i32, i32, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !5485 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5490, metadata !DIExpression()), !dbg !5491
  %0 = load i64, ptr %error.addr, align 8, !dbg !5492
  %1 = inttoptr i64 %0 to ptr, !dbg !5493
  ret ptr %1, !dbg !5494
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5495 dso_local i32 @kernfs_add_one(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5496 dso_local void @kernfs_put(ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !5497 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5505, metadata !DIExpression()), !dbg !5507
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5506, metadata !DIExpression()), !dbg !5508
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5509
  %1 = load i64, ptr %size.addr, align 8, !dbg !5510
  %conv = trunc i64 %1 to i32, !dbg !5510
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !5511
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5512
  %3 = load i64, ptr %size.addr, align 8, !dbg !5512
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !5512
  ret void, !dbg !5513
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !5514 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5517, metadata !DIExpression()), !dbg !5518
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5519
  %call = call i32 @arch_atomic_read(ptr noundef %0) #17, !dbg !5520
  ret i32 %call, !dbg !5521
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !5522 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5527, metadata !DIExpression()), !dbg !5529
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5528, metadata !DIExpression()), !dbg !5530
  ret i1 true, !dbg !5531
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !5532 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5537, metadata !DIExpression()), !dbg !5540
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5538, metadata !DIExpression()), !dbg !5541
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5539, metadata !DIExpression()), !dbg !5542
  ret void, !dbg !5543
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !5544 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5547, metadata !DIExpression()), !dbg !5548
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5549
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5549
  %1 = load volatile i32, ptr %counter, align 4, !dbg !5549
  ret i32 %1, !dbg !5550
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5551 dso_local void @__rcu_read_lock() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5552 dso_local void @__rcu_read_unlock() #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_open_file_mutex_ptr(ptr noundef %kn) #5 align 16 !dbg !5553 {
entry:
  %kn.addr = alloca ptr, align 8
  %idx = alloca i32, align 4
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5555, metadata !DIExpression()), !dbg !5557
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #16, !dbg !5558
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !5556, metadata !DIExpression()), !dbg !5559
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !5560
  %call = call i32 @hash_ptr(ptr noundef %0, i32 noundef 10) #17, !dbg !5561
  store i32 %call, ptr %idx, align 4, !dbg !5559
  %1 = load ptr, ptr @kernfs_locks, align 8, !dbg !5562
  %open_file_mutex = getelementptr inbounds %struct.kernfs_global_locks, ptr %1, i32 0, i32 0, !dbg !5563
  %2 = load i32, ptr %idx, align 4, !dbg !5564
  %idxprom = sext i32 %2 to i64, !dbg !5562
  %arrayidx = getelementptr [1024 x %struct.mutex], ptr %open_file_mutex, i64 0, i64 %idxprom, !dbg !5562
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #16, !dbg !5565
  ret ptr %arrayidx, !dbg !5566
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5567 dso_local void @mutex_lock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hash_ptr(ptr noundef %ptr, i32 noundef %bits) #5 align 16 !dbg !5568 {
entry:
  %ptr.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5573, metadata !DIExpression()), !dbg !5575
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !5574, metadata !DIExpression()), !dbg !5576
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5577
  %1 = ptrtoint ptr %0 to i64, !dbg !5577
  %2 = load i32, ptr %bits.addr, align 4, !dbg !5577
  %call = call i32 @hash_64_generic(i64 noundef %1, i32 noundef %2) #17, !dbg !5577
  ret i32 %call, !dbg !5578
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hash_64_generic(i64 noundef %val, i32 noundef %bits) #3 align 16 !dbg !5579 {
entry:
  %val.addr = alloca i64, align 8
  %bits.addr = alloca i32, align 4
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5583, metadata !DIExpression()), !dbg !5585
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !5584, metadata !DIExpression()), !dbg !5586
  %0 = load i64, ptr %val.addr, align 8, !dbg !5587
  %mul = mul i64 %0, 7046029254386353131, !dbg !5588
  %1 = load i32, ptr %bits.addr, align 4, !dbg !5589
  %sub = sub i32 64, %1, !dbg !5590
  %sh_prom = zext i32 %sub to i64, !dbg !5591
  %shr = lshr i64 %mul, %sh_prom, !dbg !5591
  %conv = trunc i64 %shr to i32, !dbg !5587
  ret i32 %conv, !dbg !5592
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #3 align 16 !dbg !5593 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5597, metadata !DIExpression()), !dbg !5598
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5599
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5599
  call void @_raw_spin_lock_irq(ptr noundef %1) #17, !dbg !5599
  ret void, !dbg !5600
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #3 align 16 !dbg !5601 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5603, metadata !DIExpression()), !dbg !5604
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5605
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5605
  call void @_raw_spin_unlock_irq(ptr noundef %1) #17, !dbg !5605
  ret void, !dbg !5606
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_root(ptr noundef %kn) #5 align 16 !dbg !5607 {
entry:
  %kn.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5611, metadata !DIExpression()), !dbg !5612
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !5613
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2, !dbg !5615
  %1 = load ptr, ptr %parent, align 8, !dbg !5615
  %tobool = icmp ne ptr %1, null, !dbg !5613
  br i1 %tobool, label %if.then, label %if.end, !dbg !5616

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %kn.addr, align 8, !dbg !5617
  %parent1 = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 2, !dbg !5618
  %3 = load ptr, ptr %parent1, align 8, !dbg !5618
  store ptr %3, ptr %kn.addr, align 8, !dbg !5619
  br label %if.end, !dbg !5620

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %kn.addr, align 8, !dbg !5621
  %5 = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 7, !dbg !5622
  %root = getelementptr inbounds %struct.kernfs_elem_dir, ptr %5, i32 0, i32 2, !dbg !5623
  %6 = load ptr, ptr %root, align 8, !dbg !5623
  ret ptr %6, !dbg !5624
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5625 dso_local void @down_read(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5629 dso_local ptr @ilookup(ptr noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kernfs_ino(ptr noundef %kn) #5 align 16 !dbg !5632 {
entry:
  %kn.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5637, metadata !DIExpression()), !dbg !5638
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !5639
  %id = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 9, !dbg !5640
  %1 = load i64, ptr %id, align 8, !dbg !5640
  %call = call i64 @kernfs_id_ino(i64 noundef %1) #17, !dbg !5641
  ret i64 %call, !dbg !5642
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5643 dso_local i64 @strlen(ptr noundef) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5647 dso_local ptr @kernfs_get_parent(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5650 dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5653 dso_local void @iput(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_inode(ptr noundef %inode, i32 noundef %mask) #5 align 16 !dbg !5654 {
entry:
  %inode.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5659, metadata !DIExpression()), !dbg !5661
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5660, metadata !DIExpression()), !dbg !5662
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5663
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5665
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5665
  %s_fsnotify_connectors = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 43, !dbg !5666
  %call = call i64 @atomic_long_read(ptr noundef %s_fsnotify_connectors) #17, !dbg !5667
  %cmp = icmp eq i64 %call, 0, !dbg !5668
  br i1 %cmp, label %if.then, label %if.end, !dbg !5669

if.then:                                          ; preds = %entry
  br label %return, !dbg !5670

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5671
  %i_mode = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 0, !dbg !5671
  %3 = load i16, ptr %i_mode, align 8, !dbg !5671
  %conv = zext i16 %3 to i32, !dbg !5671
  %and = and i32 %conv, 61440, !dbg !5671
  %cmp1 = icmp eq i32 %and, 16384, !dbg !5671
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !5673

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %mask.addr, align 4, !dbg !5674
  %or = or i32 %4, 1073741824, !dbg !5674
  store i32 %or, ptr %mask.addr, align 4, !dbg !5674
  br label %if.end4, !dbg !5675

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load i32, ptr %mask.addr, align 4, !dbg !5676
  %6 = load ptr, ptr %inode.addr, align 8, !dbg !5677
  %7 = load ptr, ptr %inode.addr, align 8, !dbg !5678
  %call5 = call i32 @fsnotify(i32 noundef %5, ptr noundef %6, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef %7, i32 noundef 0) #17, !dbg !5679
  br label %return, !dbg !5680

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !5680
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5681 dso_local void @up_read(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5682 dso_local void @_raw_spin_lock_irq(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5685 dso_local void @_raw_spin_unlock_irq(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kernfs_id_ino(i64 noundef %id) #5 align 16 !dbg !5686 {
entry:
  %id.addr = alloca i64, align 8
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5690, metadata !DIExpression()), !dbg !5691
  %0 = load i64, ptr %id.addr, align 8, !dbg !5692
  ret i64 %0, !dbg !5694
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #3 align 16 !dbg !5695 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5701, metadata !DIExpression()), !dbg !5702
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5703
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #17, !dbg !5704
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5705
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #17, !dbg !5706
  ret i64 %call, !dbg !5707
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #3 align 16 !dbg !5708 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5710, metadata !DIExpression()), !dbg !5711
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5712
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #17, !dbg !5713
  ret i64 %call, !dbg !5714
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #3 align 16 !dbg !5715 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5721, metadata !DIExpression()), !dbg !5722
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5723
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #17, !dbg !5724
  ret i64 %call, !dbg !5725
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #3 align 16 !dbg !5726 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5729, metadata !DIExpression()), !dbg !5730
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5731
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !5731
  %1 = load volatile i64, ptr %counter, align 8, !dbg !5731
  ret i64 %1, !dbg !5732
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !5733 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5735, metadata !DIExpression()), !dbg !5737
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5736, metadata !DIExpression()), !dbg !5738
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5739
  %1 = load i64, ptr %size.addr, align 8, !dbg !5740
  %conv = trunc i64 %1 to i32, !dbg !5740
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !5741
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5742
  %3 = load i64, ptr %size.addr, align 8, !dbg !5742
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !5742
  ret void, !dbg !5743
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #3 align 16 !dbg !5744 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5746, metadata !DIExpression()), !dbg !5747
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5748
  call void @arch_atomic_inc(ptr noundef %0) #17, !dbg !5749
  ret void, !dbg !5750
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !5751 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5753, metadata !DIExpression()), !dbg !5755
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5754, metadata !DIExpression()), !dbg !5756
  ret i1 true, !dbg !5757
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #3 align 16 !dbg !5758 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5760, metadata !DIExpression()), !dbg !5761
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5762
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5763
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #16, !dbg !5764, !srcloc !5765
  ret void, !dbg !5766
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #5 align 16 !dbg !5767 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !5771, metadata !DIExpression()), !dbg !5773
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5772, metadata !DIExpression()), !dbg !5774
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !5775
  %1 = load ptr, ptr %work.addr, align 8, !dbg !5776
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #17, !dbg !5777
  ret i1 %call, !dbg !5778
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5779 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5782 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_of(ptr noundef %file) #0 align 16 !dbg !5785 {
entry:
  %file.addr = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5789, metadata !DIExpression()), !dbg !5790
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5791
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5792
  %1 = load ptr, ptr %private_data, align 8, !dbg !5792
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11, !dbg !5793
  %2 = load ptr, ptr %private, align 8, !dbg !5793
  ret ptr %2, !dbg !5794
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5795 dso_local i64 @seq_read_iter(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kernfs_file_read_iter(ptr noundef %iocb, ptr noundef %iter) #0 align 16 !dbg !5796 {
entry:
  %retval = alloca i64, align 8
  %iocb.addr = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %of = alloca ptr, align 8
  %len = alloca i64, align 8
  %__UNIQUE_ID___x324 = alloca i64, align 8
  %__UNIQUE_ID___y325 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %ops = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iocb, ptr %iocb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iocb.addr, metadata !5798, metadata !DIExpression()), !dbg !5808
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !5799, metadata !DIExpression()), !dbg !5809
  call void @llvm.lifetime.start.p0(i64 8, ptr %of) #16, !dbg !5810
  call void @llvm.dbg.declare(metadata ptr %of, metadata !5800, metadata !DIExpression()), !dbg !5811
  %0 = load ptr, ptr %iocb.addr, align 8, !dbg !5812
  %ki_filp = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 0, !dbg !5813
  %1 = load ptr, ptr %ki_filp, align 8, !dbg !5813
  %call = call ptr @kernfs_of(ptr noundef %1) #17, !dbg !5814
  store ptr %call, ptr %of, align 8, !dbg !5811
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #16, !dbg !5815
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5801, metadata !DIExpression()), !dbg !5816
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x324) #16, !dbg !5817
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x324, metadata !5802, metadata !DIExpression()), !dbg !5817
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !5817
  %call1 = call i64 @iov_iter_count(ptr noundef %2) #17, !dbg !5817
  store i64 %call1, ptr %__UNIQUE_ID___x324, align 8, !dbg !5817
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y325) #16, !dbg !5817
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y325, metadata !5804, metadata !DIExpression()), !dbg !5817
  store i64 4096, ptr %__UNIQUE_ID___y325, align 8, !dbg !5817
  %3 = load i64, ptr %__UNIQUE_ID___x324, align 8, !dbg !5817
  %4 = load i64, ptr %__UNIQUE_ID___y325, align 8, !dbg !5817
  %cmp = icmp ult i64 %3, %4, !dbg !5817
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5817

cond.true:                                        ; preds = %entry
  %5 = load i64, ptr %__UNIQUE_ID___x324, align 8, !dbg !5817
  br label %cond.end, !dbg !5817

cond.false:                                       ; preds = %entry
  %6 = load i64, ptr %__UNIQUE_ID___y325, align 8, !dbg !5817
  br label %cond.end, !dbg !5817

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %6, %cond.false ], !dbg !5817
  store i64 %cond, ptr %tmp, align 8, !dbg !5817
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y325) #16, !dbg !5818
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x324) #16, !dbg !5818
  %7 = load i64, ptr %tmp, align 8, !dbg !5817
  store i64 %7, ptr %len, align 8, !dbg !5816
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #16, !dbg !5819
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !5805, metadata !DIExpression()), !dbg !5820
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #16, !dbg !5821
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5806, metadata !DIExpression()), !dbg !5822
  %8 = load ptr, ptr %of, align 8, !dbg !5823
  %prealloc_buf = getelementptr inbounds %struct.kernfs_open_file, ptr %8, i32 0, i32 8, !dbg !5824
  %9 = load ptr, ptr %prealloc_buf, align 8, !dbg !5824
  store ptr %9, ptr %buf, align 8, !dbg !5825
  %10 = load ptr, ptr %buf, align 8, !dbg !5826
  %tobool = icmp ne ptr %10, null, !dbg !5826
  br i1 %tobool, label %if.then, label %if.else, !dbg !5828

if.then:                                          ; preds = %cond.end
  %11 = load ptr, ptr %of, align 8, !dbg !5829
  %prealloc_mutex = getelementptr inbounds %struct.kernfs_open_file, ptr %11, i32 0, i32 5, !dbg !5830
  call void @mutex_lock(ptr noundef %prealloc_mutex) #17, !dbg !5831
  br label %if.end, !dbg !5831

if.else:                                          ; preds = %cond.end
  %12 = load i64, ptr %len, align 8, !dbg !5832
  %call2 = call noalias ptr @kmalloc(i64 noundef %12, i32 noundef 3264) #18, !dbg !5833
  store ptr %call2, ptr %buf, align 8, !dbg !5834
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load ptr, ptr %buf, align 8, !dbg !5835
  %tobool3 = icmp ne ptr %13, null, !dbg !5835
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5837

if.then4:                                         ; preds = %if.end
  store i64 -12, ptr %retval, align 8, !dbg !5838
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5838

if.end5:                                          ; preds = %if.end
  %14 = load ptr, ptr %of, align 8, !dbg !5839
  %mutex = getelementptr inbounds %struct.kernfs_open_file, ptr %14, i32 0, i32 4, !dbg !5840
  call void @mutex_lock(ptr noundef %mutex) #17, !dbg !5841
  %15 = load ptr, ptr %of, align 8, !dbg !5842
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %15, i32 0, i32 0, !dbg !5844
  %16 = load ptr, ptr %kn, align 8, !dbg !5844
  %call6 = call ptr @kernfs_get_active(ptr noundef %16) #17, !dbg !5845
  %tobool7 = icmp ne ptr %call6, null, !dbg !5845
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !5846

if.then8:                                         ; preds = %if.end5
  store i64 -19, ptr %len, align 8, !dbg !5847
  %17 = load ptr, ptr %of, align 8, !dbg !5849
  %mutex9 = getelementptr inbounds %struct.kernfs_open_file, ptr %17, i32 0, i32 4, !dbg !5850
  call void @mutex_unlock(ptr noundef %mutex9) #17, !dbg !5851
  br label %out_free, !dbg !5852

if.end10:                                         ; preds = %if.end5
  %18 = load ptr, ptr %of, align 8, !dbg !5853
  %call11 = call ptr @of_on(ptr noundef %18) #17, !dbg !5854
  %event = getelementptr inbounds %struct.kernfs_open_node, ptr %call11, i32 0, i32 1, !dbg !5855
  %call12 = call i32 @atomic_read(ptr noundef %event) #17, !dbg !5856
  %19 = load ptr, ptr %of, align 8, !dbg !5857
  %event13 = getelementptr inbounds %struct.kernfs_open_file, ptr %19, i32 0, i32 6, !dbg !5858
  store i32 %call12, ptr %event13, align 8, !dbg !5859
  %20 = load ptr, ptr %of, align 8, !dbg !5860
  %kn14 = getelementptr inbounds %struct.kernfs_open_file, ptr %20, i32 0, i32 0, !dbg !5861
  %21 = load ptr, ptr %kn14, align 8, !dbg !5861
  %call15 = call ptr @kernfs_ops(ptr noundef %21) #17, !dbg !5862
  store ptr %call15, ptr %ops, align 8, !dbg !5863
  %22 = load ptr, ptr %ops, align 8, !dbg !5864
  %read = getelementptr inbounds %struct.kernfs_ops, ptr %22, i32 0, i32 6, !dbg !5866
  %23 = load ptr, ptr %read, align 8, !dbg !5866
  %tobool16 = icmp ne ptr %23, null, !dbg !5864
  br i1 %tobool16, label %if.then17, label %if.else20, !dbg !5867

if.then17:                                        ; preds = %if.end10
  %24 = load ptr, ptr %ops, align 8, !dbg !5868
  %read18 = getelementptr inbounds %struct.kernfs_ops, ptr %24, i32 0, i32 6, !dbg !5869
  %25 = load ptr, ptr %read18, align 8, !dbg !5869
  %26 = load ptr, ptr %of, align 8, !dbg !5870
  %27 = load ptr, ptr %buf, align 8, !dbg !5871
  %28 = load i64, ptr %len, align 8, !dbg !5872
  %29 = load ptr, ptr %iocb.addr, align 8, !dbg !5873
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %29, i32 0, i32 1, !dbg !5874
  %30 = load i64, ptr %ki_pos, align 8, !dbg !5874
  %call19 = call i64 %25(ptr noundef %26, ptr noundef %27, i64 noundef %28, i64 noundef %30) #17, !dbg !5868
  store i64 %call19, ptr %len, align 8, !dbg !5875
  br label %if.end21, !dbg !5876

if.else20:                                        ; preds = %if.end10
  store i64 -22, ptr %len, align 8, !dbg !5877
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then17
  %31 = load ptr, ptr %of, align 8, !dbg !5878
  %kn22 = getelementptr inbounds %struct.kernfs_open_file, ptr %31, i32 0, i32 0, !dbg !5879
  %32 = load ptr, ptr %kn22, align 8, !dbg !5879
  call void @kernfs_put_active(ptr noundef %32) #17, !dbg !5880
  %33 = load ptr, ptr %of, align 8, !dbg !5881
  %mutex23 = getelementptr inbounds %struct.kernfs_open_file, ptr %33, i32 0, i32 4, !dbg !5882
  call void @mutex_unlock(ptr noundef %mutex23) #17, !dbg !5883
  %34 = load i64, ptr %len, align 8, !dbg !5884
  %cmp24 = icmp slt i64 %34, 0, !dbg !5886
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5887

if.then25:                                        ; preds = %if.end21
  br label %out_free, !dbg !5888

if.end26:                                         ; preds = %if.end21
  %35 = load ptr, ptr %buf, align 8, !dbg !5889
  %36 = load i64, ptr %len, align 8, !dbg !5891
  %37 = load ptr, ptr %iter.addr, align 8, !dbg !5892
  %call27 = call i64 @copy_to_iter(ptr noundef %35, i64 noundef %36, ptr noundef %37) #17, !dbg !5893
  %38 = load i64, ptr %len, align 8, !dbg !5894
  %cmp28 = icmp ne i64 %call27, %38, !dbg !5895
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !5896

if.then29:                                        ; preds = %if.end26
  store i64 -14, ptr %len, align 8, !dbg !5897
  br label %out_free, !dbg !5899

if.end30:                                         ; preds = %if.end26
  %39 = load i64, ptr %len, align 8, !dbg !5900
  %40 = load ptr, ptr %iocb.addr, align 8, !dbg !5901
  %ki_pos31 = getelementptr inbounds %struct.kiocb, ptr %40, i32 0, i32 1, !dbg !5902
  %41 = load i64, ptr %ki_pos31, align 8, !dbg !5903
  %add = add i64 %41, %39, !dbg !5903
  store i64 %add, ptr %ki_pos31, align 8, !dbg !5903
  br label %out_free, !dbg !5901

out_free:                                         ; preds = %if.end30, %if.then29, %if.then25, %if.then8
  call void @llvm.dbg.label(metadata !5807), !dbg !5904
  %42 = load ptr, ptr %buf, align 8, !dbg !5905
  %43 = load ptr, ptr %of, align 8, !dbg !5907
  %prealloc_buf32 = getelementptr inbounds %struct.kernfs_open_file, ptr %43, i32 0, i32 8, !dbg !5908
  %44 = load ptr, ptr %prealloc_buf32, align 8, !dbg !5908
  %cmp33 = icmp eq ptr %42, %44, !dbg !5909
  br i1 %cmp33, label %if.then34, label %if.else36, !dbg !5910

if.then34:                                        ; preds = %out_free
  %45 = load ptr, ptr %of, align 8, !dbg !5911
  %prealloc_mutex35 = getelementptr inbounds %struct.kernfs_open_file, ptr %45, i32 0, i32 5, !dbg !5912
  call void @mutex_unlock(ptr noundef %prealloc_mutex35) #17, !dbg !5913
  br label %if.end37, !dbg !5913

if.else36:                                        ; preds = %out_free
  %46 = load ptr, ptr %buf, align 8, !dbg !5914
  call void @kfree(ptr noundef %46) #17, !dbg !5915
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %if.then34
  %47 = load i64, ptr %len, align 8, !dbg !5916
  store i64 %47, ptr %retval, align 8, !dbg !5917
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5917

cleanup:                                          ; preds = %if.end37, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #16, !dbg !5918
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #16, !dbg !5918
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #16, !dbg !5918
  call void @llvm.lifetime.end.p0(i64 8, ptr %of) #16, !dbg !5918
  %48 = load i64, ptr %retval, align 8, !dbg !5918
  ret i64 %48, !dbg !5918
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @iov_iter_count(ptr noundef %i) #5 align 16 !dbg !5919 {
entry:
  %i.addr = alloca ptr, align 8
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5925, metadata !DIExpression()), !dbg !5926
  %0 = load ptr, ptr %i.addr, align 8, !dbg !5927
  %1 = getelementptr inbounds %struct.iov_iter, ptr %0, i32 0, i32 6, !dbg !5928
  %count = getelementptr inbounds %struct.anon.27, ptr %1, i32 0, i32 1, !dbg !5928
  %2 = load i64, ptr %count, align 8, !dbg !5928
  ret i64 %2, !dbg !5929
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5930 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5934, metadata !DIExpression()), !dbg !5939
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5935, metadata !DIExpression()), !dbg !5940
  %0 = load i64, ptr %size.addr, align 8, !dbg !5941
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5942
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5943

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5944
  %tobool = icmp ne i64 %2, 0, !dbg !5944
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5945

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5946
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5936, metadata !DIExpression()), !dbg !5947
  %3 = load i64, ptr %size.addr, align 8, !dbg !5948
  %cmp = icmp ugt i64 %3, 8192, !dbg !5950
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5951

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5952
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5953
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !5954
  store ptr %call, ptr %retval, align 8, !dbg !5955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5955

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5956
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5956
  store i32 %call2, ptr %index, align 4, !dbg !5957
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5958
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5959
  %9 = ptrtoint ptr %8 to i64, !dbg !5959
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5960
  %idxprom = zext i32 %call3 to i64, !dbg !5961
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5961
  %10 = load i32, ptr %index, align 4, !dbg !5962
  %idxprom4 = zext i32 %10 to i64, !dbg !5961
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5961
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5961
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5963
  %13 = load i64, ptr %size.addr, align 8, !dbg !5964
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !5965
  store ptr %call6, ptr %retval, align 8, !dbg !5966
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5966

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5967
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5968
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5969
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !5970
  store ptr %call8, ptr %retval, align 8, !dbg !5971
  br label %return, !dbg !5971

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5972
  ret ptr %16, !dbg !5972
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5973 dso_local ptr @kernfs_get_active(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_ops(ptr noundef %kn) #0 align 16 !dbg !5974 {
entry:
  %kn.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5978, metadata !DIExpression()), !dbg !5979
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !5980
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 10, !dbg !5982
  %1 = load i16, ptr %flags, align 8, !dbg !5982
  %conv = zext i16 %1 to i32, !dbg !5980
  %and = and i32 %conv, 256, !dbg !5983
  %tobool = icmp ne i32 %and, 0, !dbg !5983
  br i1 %tobool, label %if.then, label %if.end, !dbg !5984

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5985

do.body:                                          ; preds = %if.then
  %2 = load ptr, ptr %kn.addr, align 8, !dbg !5986
  br label %do.end, !dbg !5986

do.end:                                           ; preds = %do.body
  br label %if.end, !dbg !5986

if.end:                                           ; preds = %do.end, %entry
  %3 = load ptr, ptr %kn.addr, align 8, !dbg !5988
  %4 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 7, !dbg !5989
  %ops = getelementptr inbounds %struct.kernfs_elem_attr, ptr %4, i32 0, i32 0, !dbg !5990
  %5 = load ptr, ptr %ops, align 8, !dbg !5990
  ret ptr %5, !dbg !5991
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5992 dso_local void @kernfs_put_active(ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_iter(ptr noundef %addr, i64 noundef %bytes, ptr noundef %i) #3 align 16 !dbg !5993 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %i.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5997, metadata !DIExpression()), !dbg !6000
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !5998, metadata !DIExpression()), !dbg !6001
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5999, metadata !DIExpression()), !dbg !6002
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6003
  %1 = load i64, ptr %bytes.addr, align 8, !dbg !6005
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #17, !dbg !6006
  br i1 %call, label %if.then, label %if.end, !dbg !6007

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6008
  %3 = load i64, ptr %bytes.addr, align 8, !dbg !6009
  %4 = load ptr, ptr %i.addr, align 8, !dbg !6010
  %call1 = call i64 @_copy_to_iter(ptr noundef %2, i64 noundef %3, ptr noundef %4) #17, !dbg !6011
  store i64 %call1, ptr %retval, align 8, !dbg !6012
  br label %return, !dbg !6012

if.end:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !6013
  br label %return, !dbg !6013

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !6014
  ret i64 %5, !dbg !6014
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6015 dso_local void @kfree(ptr noundef) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6018 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !6019 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6023, metadata !DIExpression()), !dbg !6025
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6024, metadata !DIExpression()), !dbg !6026
  %0 = load i64, ptr %size.addr, align 8, !dbg !6027
  %tobool = icmp ne i64 %0, 0, !dbg !6027
  br i1 %tobool, label %if.end, label %if.then, !dbg !6029

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6030
  br label %return, !dbg !6030

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6031
  %cmp = icmp ule i64 %1, 8, !dbg !6033
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6034

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6035
  br label %return, !dbg !6035

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6036
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6038
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6039

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6040
  %cmp4 = icmp ule i64 %3, 96, !dbg !6041
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6042

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6043
  br label %return, !dbg !6043

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6044
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6046
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6047

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6048
  %cmp9 = icmp ule i64 %5, 192, !dbg !6049
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6050

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6051
  br label %return, !dbg !6051

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6052
  %cmp12 = icmp ule i64 %6, 8, !dbg !6054
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6055

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6056
  br label %return, !dbg !6056

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6057
  %cmp15 = icmp ule i64 %7, 16, !dbg !6059
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6060

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6061
  br label %return, !dbg !6061

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6062
  %cmp18 = icmp ule i64 %8, 32, !dbg !6064
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6065

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6066
  br label %return, !dbg !6066

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6067
  %cmp21 = icmp ule i64 %9, 64, !dbg !6069
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6070

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6071
  br label %return, !dbg !6071

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6072
  %cmp24 = icmp ule i64 %10, 128, !dbg !6074
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6075

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6076
  br label %return, !dbg !6076

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6077
  %cmp27 = icmp ule i64 %11, 256, !dbg !6079
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6080

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6081
  br label %return, !dbg !6081

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6082
  %cmp30 = icmp ule i64 %12, 512, !dbg !6084
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6085

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6086
  br label %return, !dbg !6086

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6087
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6089
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6090

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6091
  br label %return, !dbg !6091

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6092
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6094
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6095

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6096
  br label %return, !dbg !6096

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6097
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6099
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6100

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6101
  br label %return, !dbg !6101

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6102
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6104
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6105

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6106
  br label %return, !dbg !6106

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6107
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6109
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6110

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6111
  br label %return, !dbg !6111

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6112
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6114
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6115

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6116
  br label %return, !dbg !6116

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6117
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6119
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6120

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6121
  br label %return, !dbg !6121

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6122
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6124
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6125

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6126
  br label %return, !dbg !6126

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6127
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6129
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6130

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6131
  br label %return, !dbg !6131

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6132
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6134
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6135

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6136
  br label %return, !dbg !6136

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6137
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6139
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6140

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6141
  br label %return, !dbg !6141

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6142
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6144
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6145

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6146
  br label %return, !dbg !6146

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6147, !range !4268, !noundef !620
  %tobool69 = trunc i8 %25 to i1, !dbg !6147
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6149

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6150

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #20, !dbg !6151, !srcloc !6154
  unreachable, !dbg !6151

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6155

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6156

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6157

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6159

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6157

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #16, !dbg !6161, !srcloc !6163
  br label %do.end75, !dbg !6161

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6157

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6164
  br label %return, !dbg !6164

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6165
  ret i32 %26, !dbg !6165
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6166 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !6169 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6173, metadata !DIExpression()), !dbg !6175
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6174, metadata !DIExpression()), !dbg !6176
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6177
  %and = and i32 %0, 17, !dbg !6177
  %cmp = icmp eq i32 %and, 0, !dbg !6177
  %lnot = xor i1 %cmp, true, !dbg !6177
  %lnot1 = xor i1 %lnot, true, !dbg !6177
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6177
  %conv = sext i32 %lnot.ext to i64, !dbg !6177
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6177
  %tobool = icmp ne i64 %expval, 0, !dbg !6177
  br i1 %tobool, label %if.then, label %if.end, !dbg !6179

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6180
  br label %return, !dbg !6180

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6181
  %and2 = and i32 %1, 1, !dbg !6183
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6183
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6184

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6185
  br label %return, !dbg !6185

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6186
  br label %return, !dbg !6186

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6188
  ret i32 %2, !dbg !6188
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6189 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6190 dso_local void @__compiletime_assert_245() #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #3 align 16 !dbg !6191 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6195, metadata !DIExpression()), !dbg !6205
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6196, metadata !DIExpression()), !dbg !6206
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6197, metadata !DIExpression()), !dbg !6207
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #16, !dbg !6208
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6198, metadata !DIExpression()), !dbg !6209
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6210
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6211
  %conv = trunc i64 %1 to i32, !dbg !6211
  store i32 %conv, ptr %sz, align 4, !dbg !6209
  %2 = load i32, ptr %sz, align 4, !dbg !6212
  %cmp = icmp sge i32 %2, 0, !dbg !6212
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6212

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6212
  %conv2 = sext i32 %3 to i64, !dbg !6212
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6212
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6212
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6214
  %lnot = xor i1 %5, true, !dbg !6212
  %lnot5 = xor i1 %lnot, true, !dbg !6212
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6212
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6212
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6212
  %tobool = icmp ne i64 %expval, 0, !dbg !6212
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6215

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6216
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6219
  br i1 %7, label %if.else, label %if.then7, !dbg !6220

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6221
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6222
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #17, !dbg !6223
  br label %if.end11, !dbg !6223

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6224, !range !4268, !noundef !620
  %tobool8 = trunc i8 %10 to i1, !dbg !6224
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6226

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #17, !dbg !6227, !srcloc !6228
  br label %if.end, !dbg !6227

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #17, !dbg !6229, !srcloc !6230
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6231

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6232
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6199, metadata !DIExpression()), !dbg !6232
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6232
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6232
  %lnot15 = xor i1 %cmp13, true, !dbg !6232
  %lnot17 = xor i1 %lnot15, true, !dbg !6232
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6232
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6232
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6233
  %tobool19 = icmp ne i32 %12, 0, !dbg !6233
  %lnot20 = xor i1 %tobool19, true, !dbg !6233
  %lnot22 = xor i1 %lnot20, true, !dbg !6233
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6233
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6233
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6233
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6233
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6232

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6233

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !6234
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6202, metadata !DIExpression()), !dbg !6234
  store i32 2307, ptr %__flags, align 4, !dbg !6234
  br label %do.body28, !dbg !6234

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6235

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6235

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6234

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6237
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 249, i32 %13, i64 12) #16, !dbg !6237, !srcloc !6239
  br label %do.cond30, !dbg !6237

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6237

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6234

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6240

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6240

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !6233
  br label %do.cond35, !dbg !6234

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6234

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6234

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6232
  %tobool38 = icmp ne i32 %14, 0, !dbg !6232
  %lnot39 = xor i1 %tobool38, true, !dbg !6232
  %lnot41 = xor i1 %lnot39, true, !dbg !6232
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6232
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6232
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6232
  store i64 %expval44, ptr %tmp, align 8, !dbg !6233
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6242
  %15 = load i64, ptr %tmp, align 8, !dbg !6232
  %tobool45 = icmp ne i64 %15, 0, !dbg !6242
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6243

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6244

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6245
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6246
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6247, !range !4268, !noundef !620
  %tobool48 = trunc i8 %18 to i1, !dbg !6247
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #17, !dbg !6248
  store i1 true, ptr %retval, align 1, !dbg !6249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6249

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #16, !dbg !6250
  %19 = load i1, ptr %retval, align 1, !dbg !6250
  ret i1 %19, !dbg !6250
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6251 dso_local i64 @_copy_to_iter(ptr noundef, i64 noundef, ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #5 align 16 !dbg !6252 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6256, metadata !DIExpression()), !dbg !6258
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6257, metadata !DIExpression()), !dbg !6259
  %0 = load i32, ptr %size.addr, align 4, !dbg !6260
  %1 = load i64, ptr %count.addr, align 8, !dbg !6262
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #17, !dbg !6263
  ret void, !dbg !6264
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6265 dso_local void @__bad_copy_from() #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6266 dso_local void @__bad_copy_to() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #5 align 16 !dbg !6267 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6271, metadata !DIExpression()), !dbg !6274
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6272, metadata !DIExpression()), !dbg !6275
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6273, metadata !DIExpression()), !dbg !6276
  ret void, !dbg !6277
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6278 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_iter(ptr noundef %addr, i64 noundef %bytes, ptr noundef %i) #3 align 16 !dbg !6279 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %i.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6283, metadata !DIExpression()), !dbg !6286
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6284, metadata !DIExpression()), !dbg !6287
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6285, metadata !DIExpression()), !dbg !6288
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6289
  %1 = load i64, ptr %bytes.addr, align 8, !dbg !6291
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #17, !dbg !6292
  br i1 %call, label %if.then, label %if.end, !dbg !6293

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6294
  %3 = load i64, ptr %bytes.addr, align 8, !dbg !6295
  %4 = load ptr, ptr %i.addr, align 8, !dbg !6296
  %call1 = call i64 @_copy_from_iter(ptr noundef %2, i64 noundef %3, ptr noundef %4) #17, !dbg !6297
  store i64 %call1, ptr %retval, align 8, !dbg !6298
  br label %return, !dbg !6298

if.end:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !6299
  br label %return, !dbg !6299

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !6300
  ret i64 %5, !dbg !6300
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6301 dso_local i64 @_copy_from_iter(ptr noundef, i64 noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_dentry_node(ptr noundef %dentry) #5 align 16 !dbg !6302 {
entry:
  %retval = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6306, metadata !DIExpression()), !dbg !6307
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6308
  %call = call zeroext i1 @d_really_is_negative(ptr noundef %0) #17, !dbg !6310
  br i1 %call, label %if.then, label %if.end, !dbg !6311

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6312
  br label %return, !dbg !6312

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !6313
  %call1 = call ptr @d_inode(ptr noundef %1) #17, !dbg !6314
  %i_private = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 47, !dbg !6315
  %2 = load ptr, ptr %i_private, align 8, !dbg !6315
  store ptr %2, ptr %retval, align 8, !dbg !6316
  br label %return, !dbg !6316

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !6317
  ret ptr %3, !dbg !6317
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @d_really_is_negative(ptr noundef %dentry) #5 align 16 !dbg !6318 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6322, metadata !DIExpression()), !dbg !6323
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6324
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !6325
  %1 = load ptr, ptr %d_inode, align 8, !dbg !6325
  %cmp = icmp eq ptr %1, null, !dbg !6326
  ret i1 %cmp, !dbg !6327
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #5 align 16 !dbg !6328 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !6332, metadata !DIExpression()), !dbg !6333
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !6334
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !6335
  %1 = load ptr, ptr %d_inode, align 8, !dbg !6335
  ret ptr %1, !dbg !6336
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kernfs_vma_open(ptr noundef %vma) #0 align 16 !dbg !6337 {
entry:
  %vma.addr = alloca ptr, align 8
  %file = alloca ptr, align 8
  %of = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6339, metadata !DIExpression()), !dbg !6342
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #16, !dbg !6343
  call void @llvm.dbg.declare(metadata ptr %file, metadata !6340, metadata !DIExpression()), !dbg !6344
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6345
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 12, !dbg !6346
  %1 = load ptr, ptr %vm_file, align 8, !dbg !6346
  store ptr %1, ptr %file, align 8, !dbg !6344
  call void @llvm.lifetime.start.p0(i64 8, ptr %of) #16, !dbg !6347
  call void @llvm.dbg.declare(metadata ptr %of, metadata !6341, metadata !DIExpression()), !dbg !6348
  %2 = load ptr, ptr %file, align 8, !dbg !6349
  %call = call ptr @kernfs_of(ptr noundef %2) #17, !dbg !6350
  store ptr %call, ptr %of, align 8, !dbg !6348
  %3 = load ptr, ptr %of, align 8, !dbg !6351
  %vm_ops = getelementptr inbounds %struct.kernfs_open_file, ptr %3, i32 0, i32 11, !dbg !6353
  %4 = load ptr, ptr %vm_ops, align 8, !dbg !6353
  %tobool = icmp ne ptr %4, null, !dbg !6351
  br i1 %tobool, label %if.end, label %if.then, !dbg !6354

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6355

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %of, align 8, !dbg !6356
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 0, !dbg !6358
  %6 = load ptr, ptr %kn, align 8, !dbg !6358
  %call1 = call ptr @kernfs_get_active(ptr noundef %6) #17, !dbg !6359
  %tobool2 = icmp ne ptr %call1, null, !dbg !6359
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6360

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6361

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %of, align 8, !dbg !6362
  %vm_ops5 = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 11, !dbg !6364
  %8 = load ptr, ptr %vm_ops5, align 8, !dbg !6364
  %open = getelementptr inbounds %struct.vm_operations_struct, ptr %8, i32 0, i32 0, !dbg !6365
  %9 = load ptr, ptr %open, align 8, !dbg !6365
  %tobool6 = icmp ne ptr %9, null, !dbg !6362
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !6366

if.then7:                                         ; preds = %if.end4
  %10 = load ptr, ptr %of, align 8, !dbg !6367
  %vm_ops8 = getelementptr inbounds %struct.kernfs_open_file, ptr %10, i32 0, i32 11, !dbg !6368
  %11 = load ptr, ptr %vm_ops8, align 8, !dbg !6368
  %open9 = getelementptr inbounds %struct.vm_operations_struct, ptr %11, i32 0, i32 0, !dbg !6369
  %12 = load ptr, ptr %open9, align 8, !dbg !6369
  %13 = load ptr, ptr %vma.addr, align 8, !dbg !6370
  call void %12(ptr noundef %13) #17, !dbg !6367
  br label %if.end10, !dbg !6367

if.end10:                                         ; preds = %if.then7, %if.end4
  %14 = load ptr, ptr %of, align 8, !dbg !6371
  %kn11 = getelementptr inbounds %struct.kernfs_open_file, ptr %14, i32 0, i32 0, !dbg !6372
  %15 = load ptr, ptr %kn11, align 8, !dbg !6372
  call void @kernfs_put_active(ptr noundef %15) #17, !dbg !6373
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6374
  br label %cleanup, !dbg !6374

cleanup:                                          ; preds = %if.end10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %of) #16, !dbg !6374
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #16, !dbg !6374
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6374

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_vma_fault(ptr noundef %vmf) #0 align 16 !dbg !6375 {
entry:
  %retval = alloca i32, align 4
  %vmf.addr = alloca ptr, align 8
  %file = alloca ptr, align 8
  %of = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vmf, ptr %vmf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vmf.addr, metadata !6377, metadata !DIExpression()), !dbg !6381
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #16, !dbg !6382
  call void @llvm.dbg.declare(metadata ptr %file, metadata !6378, metadata !DIExpression()), !dbg !6383
  %0 = load ptr, ptr %vmf.addr, align 8, !dbg !6384
  %1 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 0, !dbg !6385
  %vma = getelementptr inbounds %struct.anon.38, ptr %1, i32 0, i32 0, !dbg !6385
  %2 = load ptr, ptr %vma, align 8, !dbg !6385
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 12, !dbg !6386
  %3 = load ptr, ptr %vm_file, align 8, !dbg !6386
  store ptr %3, ptr %file, align 8, !dbg !6383
  call void @llvm.lifetime.start.p0(i64 8, ptr %of) #16, !dbg !6387
  call void @llvm.dbg.declare(metadata ptr %of, metadata !6379, metadata !DIExpression()), !dbg !6388
  %4 = load ptr, ptr %file, align 8, !dbg !6389
  %call = call ptr @kernfs_of(ptr noundef %4) #17, !dbg !6390
  store ptr %call, ptr %of, align 8, !dbg !6388
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6391
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6380, metadata !DIExpression()), !dbg !6392
  %5 = load ptr, ptr %of, align 8, !dbg !6393
  %vm_ops = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 11, !dbg !6395
  %6 = load ptr, ptr %vm_ops, align 8, !dbg !6395
  %tobool = icmp ne ptr %6, null, !dbg !6393
  br i1 %tobool, label %if.end, label %if.then, !dbg !6396

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !6397
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6397

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %of, align 8, !dbg !6398
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 0, !dbg !6400
  %8 = load ptr, ptr %kn, align 8, !dbg !6400
  %call1 = call ptr @kernfs_get_active(ptr noundef %8) #17, !dbg !6401
  %tobool2 = icmp ne ptr %call1, null, !dbg !6401
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6402

if.then3:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6403

if.end4:                                          ; preds = %if.end
  store i32 2, ptr %ret, align 4, !dbg !6404
  %9 = load ptr, ptr %of, align 8, !dbg !6405
  %vm_ops5 = getelementptr inbounds %struct.kernfs_open_file, ptr %9, i32 0, i32 11, !dbg !6407
  %10 = load ptr, ptr %vm_ops5, align 8, !dbg !6407
  %fault = getelementptr inbounds %struct.vm_operations_struct, ptr %10, i32 0, i32 5, !dbg !6408
  %11 = load ptr, ptr %fault, align 8, !dbg !6408
  %tobool6 = icmp ne ptr %11, null, !dbg !6405
  br i1 %tobool6, label %if.then7, label %if.end11, !dbg !6409

if.then7:                                         ; preds = %if.end4
  %12 = load ptr, ptr %of, align 8, !dbg !6410
  %vm_ops8 = getelementptr inbounds %struct.kernfs_open_file, ptr %12, i32 0, i32 11, !dbg !6411
  %13 = load ptr, ptr %vm_ops8, align 8, !dbg !6411
  %fault9 = getelementptr inbounds %struct.vm_operations_struct, ptr %13, i32 0, i32 5, !dbg !6412
  %14 = load ptr, ptr %fault9, align 8, !dbg !6412
  %15 = load ptr, ptr %vmf.addr, align 8, !dbg !6413
  %call10 = call i32 %14(ptr noundef %15) #17, !dbg !6410
  store i32 %call10, ptr %ret, align 4, !dbg !6414
  br label %if.end11, !dbg !6415

if.end11:                                         ; preds = %if.then7, %if.end4
  %16 = load ptr, ptr %of, align 8, !dbg !6416
  %kn12 = getelementptr inbounds %struct.kernfs_open_file, ptr %16, i32 0, i32 0, !dbg !6417
  %17 = load ptr, ptr %kn12, align 8, !dbg !6417
  call void @kernfs_put_active(ptr noundef %17) #17, !dbg !6418
  %18 = load i32, ptr %ret, align 4, !dbg !6419
  store i32 %18, ptr %retval, align 4, !dbg !6420
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6420

cleanup:                                          ; preds = %if.end11, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6421
  call void @llvm.lifetime.end.p0(i64 8, ptr %of) #16, !dbg !6421
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #16, !dbg !6421
  %19 = load i32, ptr %retval, align 4, !dbg !6421
  ret i32 %19, !dbg !6421
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_vma_page_mkwrite(ptr noundef %vmf) #0 align 16 !dbg !6422 {
entry:
  %retval = alloca i32, align 4
  %vmf.addr = alloca ptr, align 8
  %file = alloca ptr, align 8
  %of = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vmf, ptr %vmf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vmf.addr, metadata !6424, metadata !DIExpression()), !dbg !6428
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #16, !dbg !6429
  call void @llvm.dbg.declare(metadata ptr %file, metadata !6425, metadata !DIExpression()), !dbg !6430
  %0 = load ptr, ptr %vmf.addr, align 8, !dbg !6431
  %1 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 0, !dbg !6432
  %vma = getelementptr inbounds %struct.anon.38, ptr %1, i32 0, i32 0, !dbg !6432
  %2 = load ptr, ptr %vma, align 8, !dbg !6432
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 12, !dbg !6433
  %3 = load ptr, ptr %vm_file, align 8, !dbg !6433
  store ptr %3, ptr %file, align 8, !dbg !6430
  call void @llvm.lifetime.start.p0(i64 8, ptr %of) #16, !dbg !6434
  call void @llvm.dbg.declare(metadata ptr %of, metadata !6426, metadata !DIExpression()), !dbg !6435
  %4 = load ptr, ptr %file, align 8, !dbg !6436
  %call = call ptr @kernfs_of(ptr noundef %4) #17, !dbg !6437
  store ptr %call, ptr %of, align 8, !dbg !6435
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6438
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6427, metadata !DIExpression()), !dbg !6439
  %5 = load ptr, ptr %of, align 8, !dbg !6440
  %vm_ops = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 11, !dbg !6442
  %6 = load ptr, ptr %vm_ops, align 8, !dbg !6442
  %tobool = icmp ne ptr %6, null, !dbg !6440
  br i1 %tobool, label %if.end, label %if.then, !dbg !6443

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !6444
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6444

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %of, align 8, !dbg !6445
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 0, !dbg !6447
  %8 = load ptr, ptr %kn, align 8, !dbg !6447
  %call1 = call ptr @kernfs_get_active(ptr noundef %8) #17, !dbg !6448
  %tobool2 = icmp ne ptr %call1, null, !dbg !6448
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6449

if.then3:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6450
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6450

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %ret, align 4, !dbg !6451
  %9 = load ptr, ptr %of, align 8, !dbg !6452
  %vm_ops5 = getelementptr inbounds %struct.kernfs_open_file, ptr %9, i32 0, i32 11, !dbg !6454
  %10 = load ptr, ptr %vm_ops5, align 8, !dbg !6454
  %page_mkwrite = getelementptr inbounds %struct.vm_operations_struct, ptr %10, i32 0, i32 9, !dbg !6455
  %11 = load ptr, ptr %page_mkwrite, align 8, !dbg !6455
  %tobool6 = icmp ne ptr %11, null, !dbg !6452
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !6456

if.then7:                                         ; preds = %if.end4
  %12 = load ptr, ptr %of, align 8, !dbg !6457
  %vm_ops8 = getelementptr inbounds %struct.kernfs_open_file, ptr %12, i32 0, i32 11, !dbg !6458
  %13 = load ptr, ptr %vm_ops8, align 8, !dbg !6458
  %page_mkwrite9 = getelementptr inbounds %struct.vm_operations_struct, ptr %13, i32 0, i32 9, !dbg !6459
  %14 = load ptr, ptr %page_mkwrite9, align 8, !dbg !6459
  %15 = load ptr, ptr %vmf.addr, align 8, !dbg !6460
  %call10 = call i32 %14(ptr noundef %15) #17, !dbg !6457
  store i32 %call10, ptr %ret, align 4, !dbg !6461
  br label %if.end12, !dbg !6462

if.else:                                          ; preds = %if.end4
  %16 = load ptr, ptr %file, align 8, !dbg !6463
  %call11 = call i32 @file_update_time(ptr noundef %16) #17, !dbg !6464
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  %17 = load ptr, ptr %of, align 8, !dbg !6465
  %kn13 = getelementptr inbounds %struct.kernfs_open_file, ptr %17, i32 0, i32 0, !dbg !6466
  %18 = load ptr, ptr %kn13, align 8, !dbg !6466
  call void @kernfs_put_active(ptr noundef %18) #17, !dbg !6467
  %19 = load i32, ptr %ret, align 4, !dbg !6468
  store i32 %19, ptr %retval, align 4, !dbg !6469
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6469

cleanup:                                          ; preds = %if.end12, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6470
  call void @llvm.lifetime.end.p0(i64 8, ptr %of) #16, !dbg !6470
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #16, !dbg !6470
  %20 = load i32, ptr %retval, align 4, !dbg !6470
  ret i32 %20, !dbg !6470
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_vma_access(ptr noundef %vma, i64 noundef %addr, ptr noundef %buf, i32 noundef %len, i32 noundef %write) #0 align 16 !dbg !6471 {
entry:
  %retval = alloca i32, align 4
  %vma.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %write.addr = alloca i32, align 4
  %file = alloca ptr, align 8
  %of = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6473, metadata !DIExpression()), !dbg !6481
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6474, metadata !DIExpression()), !dbg !6482
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6475, metadata !DIExpression()), !dbg !6483
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6476, metadata !DIExpression()), !dbg !6484
  store i32 %write, ptr %write.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !6477, metadata !DIExpression()), !dbg !6485
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #16, !dbg !6486
  call void @llvm.dbg.declare(metadata ptr %file, metadata !6478, metadata !DIExpression()), !dbg !6487
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6488
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 12, !dbg !6489
  %1 = load ptr, ptr %vm_file, align 8, !dbg !6489
  store ptr %1, ptr %file, align 8, !dbg !6487
  call void @llvm.lifetime.start.p0(i64 8, ptr %of) #16, !dbg !6490
  call void @llvm.dbg.declare(metadata ptr %of, metadata !6479, metadata !DIExpression()), !dbg !6491
  %2 = load ptr, ptr %file, align 8, !dbg !6492
  %call = call ptr @kernfs_of(ptr noundef %2) #17, !dbg !6493
  store ptr %call, ptr %of, align 8, !dbg !6491
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6494
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6480, metadata !DIExpression()), !dbg !6495
  %3 = load ptr, ptr %of, align 8, !dbg !6496
  %vm_ops = getelementptr inbounds %struct.kernfs_open_file, ptr %3, i32 0, i32 11, !dbg !6498
  %4 = load ptr, ptr %vm_ops, align 8, !dbg !6498
  %tobool = icmp ne ptr %4, null, !dbg !6496
  br i1 %tobool, label %if.end, label %if.then, !dbg !6499

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6500
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6500

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %of, align 8, !dbg !6501
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 0, !dbg !6503
  %6 = load ptr, ptr %kn, align 8, !dbg !6503
  %call1 = call ptr @kernfs_get_active(ptr noundef %6) #17, !dbg !6504
  %tobool2 = icmp ne ptr %call1, null, !dbg !6504
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6505

if.then3:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6506

if.end4:                                          ; preds = %if.end
  store i32 -22, ptr %ret, align 4, !dbg !6507
  %7 = load ptr, ptr %of, align 8, !dbg !6508
  %vm_ops5 = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 11, !dbg !6510
  %8 = load ptr, ptr %vm_ops5, align 8, !dbg !6510
  %access = getelementptr inbounds %struct.vm_operations_struct, ptr %8, i32 0, i32 11, !dbg !6511
  %9 = load ptr, ptr %access, align 8, !dbg !6511
  %tobool6 = icmp ne ptr %9, null, !dbg !6508
  br i1 %tobool6, label %if.then7, label %if.end11, !dbg !6512

if.then7:                                         ; preds = %if.end4
  %10 = load ptr, ptr %of, align 8, !dbg !6513
  %vm_ops8 = getelementptr inbounds %struct.kernfs_open_file, ptr %10, i32 0, i32 11, !dbg !6514
  %11 = load ptr, ptr %vm_ops8, align 8, !dbg !6514
  %access9 = getelementptr inbounds %struct.vm_operations_struct, ptr %11, i32 0, i32 11, !dbg !6515
  %12 = load ptr, ptr %access9, align 8, !dbg !6515
  %13 = load ptr, ptr %vma.addr, align 8, !dbg !6516
  %14 = load i64, ptr %addr.addr, align 8, !dbg !6517
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !6518
  %16 = load i32, ptr %len.addr, align 4, !dbg !6519
  %17 = load i32, ptr %write.addr, align 4, !dbg !6520
  %call10 = call i32 %12(ptr noundef %13, i64 noundef %14, ptr noundef %15, i32 noundef %16, i32 noundef %17) #17, !dbg !6513
  store i32 %call10, ptr %ret, align 4, !dbg !6521
  br label %if.end11, !dbg !6522

if.end11:                                         ; preds = %if.then7, %if.end4
  %18 = load ptr, ptr %of, align 8, !dbg !6523
  %kn12 = getelementptr inbounds %struct.kernfs_open_file, ptr %18, i32 0, i32 0, !dbg !6524
  %19 = load ptr, ptr %kn12, align 8, !dbg !6524
  call void @kernfs_put_active(ptr noundef %19) #17, !dbg !6525
  %20 = load i32, ptr %ret, align 4, !dbg !6526
  store i32 %20, ptr %retval, align 4, !dbg !6527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6527

cleanup:                                          ; preds = %if.end11, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6528
  call void @llvm.lifetime.end.p0(i64 8, ptr %of) #16, !dbg !6528
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #16, !dbg !6528
  %21 = load i32, ptr %retval, align 4, !dbg !6528
  ret i32 %21, !dbg !6528
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_vma_set_policy(ptr noundef %vma, ptr noundef %new) #0 align 16 !dbg !6529 {
entry:
  %retval = alloca i32, align 4
  %vma.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %file = alloca ptr, align 8
  %of = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6531, metadata !DIExpression()), !dbg !6536
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6532, metadata !DIExpression()), !dbg !6537
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #16, !dbg !6538
  call void @llvm.dbg.declare(metadata ptr %file, metadata !6533, metadata !DIExpression()), !dbg !6539
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6540
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 12, !dbg !6541
  %1 = load ptr, ptr %vm_file, align 8, !dbg !6541
  store ptr %1, ptr %file, align 8, !dbg !6539
  call void @llvm.lifetime.start.p0(i64 8, ptr %of) #16, !dbg !6542
  call void @llvm.dbg.declare(metadata ptr %of, metadata !6534, metadata !DIExpression()), !dbg !6543
  %2 = load ptr, ptr %file, align 8, !dbg !6544
  %call = call ptr @kernfs_of(ptr noundef %2) #17, !dbg !6545
  store ptr %call, ptr %of, align 8, !dbg !6543
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6546
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6535, metadata !DIExpression()), !dbg !6547
  %3 = load ptr, ptr %of, align 8, !dbg !6548
  %vm_ops = getelementptr inbounds %struct.kernfs_open_file, ptr %3, i32 0, i32 11, !dbg !6550
  %4 = load ptr, ptr %vm_ops, align 8, !dbg !6550
  %tobool = icmp ne ptr %4, null, !dbg !6548
  br i1 %tobool, label %if.end, label %if.then, !dbg !6551

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6552
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6552

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %of, align 8, !dbg !6553
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 0, !dbg !6555
  %6 = load ptr, ptr %kn, align 8, !dbg !6555
  %call1 = call ptr @kernfs_get_active(ptr noundef %6) #17, !dbg !6556
  %tobool2 = icmp ne ptr %call1, null, !dbg !6556
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6557

if.then3:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6558
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6558

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %ret, align 4, !dbg !6559
  %7 = load ptr, ptr %of, align 8, !dbg !6560
  %vm_ops5 = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 11, !dbg !6562
  %8 = load ptr, ptr %vm_ops5, align 8, !dbg !6562
  %set_policy = getelementptr inbounds %struct.vm_operations_struct, ptr %8, i32 0, i32 13, !dbg !6563
  %9 = load ptr, ptr %set_policy, align 8, !dbg !6563
  %tobool6 = icmp ne ptr %9, null, !dbg !6560
  br i1 %tobool6, label %if.then7, label %if.end11, !dbg !6564

if.then7:                                         ; preds = %if.end4
  %10 = load ptr, ptr %of, align 8, !dbg !6565
  %vm_ops8 = getelementptr inbounds %struct.kernfs_open_file, ptr %10, i32 0, i32 11, !dbg !6566
  %11 = load ptr, ptr %vm_ops8, align 8, !dbg !6566
  %set_policy9 = getelementptr inbounds %struct.vm_operations_struct, ptr %11, i32 0, i32 13, !dbg !6567
  %12 = load ptr, ptr %set_policy9, align 8, !dbg !6567
  %13 = load ptr, ptr %vma.addr, align 8, !dbg !6568
  %14 = load ptr, ptr %new.addr, align 8, !dbg !6569
  %call10 = call i32 %12(ptr noundef %13, ptr noundef %14) #17, !dbg !6565
  store i32 %call10, ptr %ret, align 4, !dbg !6570
  br label %if.end11, !dbg !6571

if.end11:                                         ; preds = %if.then7, %if.end4
  %15 = load ptr, ptr %of, align 8, !dbg !6572
  %kn12 = getelementptr inbounds %struct.kernfs_open_file, ptr %15, i32 0, i32 0, !dbg !6573
  %16 = load ptr, ptr %kn12, align 8, !dbg !6573
  call void @kernfs_put_active(ptr noundef %16) #17, !dbg !6574
  %17 = load i32, ptr %ret, align 4, !dbg !6575
  store i32 %17, ptr %retval, align 4, !dbg !6576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6576

cleanup:                                          ; preds = %if.end11, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6577
  call void @llvm.lifetime.end.p0(i64 8, ptr %of) #16, !dbg !6577
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #16, !dbg !6577
  %18 = load i32, ptr %retval, align 4, !dbg !6577
  ret i32 %18, !dbg !6577
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_vma_get_policy(ptr noundef %vma, i64 noundef %addr) #0 align 16 !dbg !6578 {
entry:
  %retval = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %file = alloca ptr, align 8
  %of = alloca ptr, align 8
  %pol = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6580, metadata !DIExpression()), !dbg !6585
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6581, metadata !DIExpression()), !dbg !6586
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #16, !dbg !6587
  call void @llvm.dbg.declare(metadata ptr %file, metadata !6582, metadata !DIExpression()), !dbg !6588
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !6589
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 12, !dbg !6590
  %1 = load ptr, ptr %vm_file, align 8, !dbg !6590
  store ptr %1, ptr %file, align 8, !dbg !6588
  call void @llvm.lifetime.start.p0(i64 8, ptr %of) #16, !dbg !6591
  call void @llvm.dbg.declare(metadata ptr %of, metadata !6583, metadata !DIExpression()), !dbg !6592
  %2 = load ptr, ptr %file, align 8, !dbg !6593
  %call = call ptr @kernfs_of(ptr noundef %2) #17, !dbg !6594
  store ptr %call, ptr %of, align 8, !dbg !6592
  call void @llvm.lifetime.start.p0(i64 8, ptr %pol) #16, !dbg !6595
  call void @llvm.dbg.declare(metadata ptr %pol, metadata !6584, metadata !DIExpression()), !dbg !6596
  %3 = load ptr, ptr %of, align 8, !dbg !6597
  %vm_ops = getelementptr inbounds %struct.kernfs_open_file, ptr %3, i32 0, i32 11, !dbg !6599
  %4 = load ptr, ptr %vm_ops, align 8, !dbg !6599
  %tobool = icmp ne ptr %4, null, !dbg !6597
  br i1 %tobool, label %if.end, label %if.then, !dbg !6600

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %vma.addr, align 8, !dbg !6601
  %vm_policy = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 15, !dbg !6602
  %6 = load ptr, ptr %vm_policy, align 8, !dbg !6602
  store ptr %6, ptr %retval, align 8, !dbg !6603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6603

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %of, align 8, !dbg !6604
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 0, !dbg !6606
  %8 = load ptr, ptr %kn, align 8, !dbg !6606
  %call1 = call ptr @kernfs_get_active(ptr noundef %8) #17, !dbg !6607
  %tobool2 = icmp ne ptr %call1, null, !dbg !6607
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !6608

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %vma.addr, align 8, !dbg !6609
  %vm_policy4 = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 15, !dbg !6610
  %10 = load ptr, ptr %vm_policy4, align 8, !dbg !6610
  store ptr %10, ptr %retval, align 8, !dbg !6611
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6611

if.end5:                                          ; preds = %if.end
  %11 = load ptr, ptr %vma.addr, align 8, !dbg !6612
  %vm_policy6 = getelementptr inbounds %struct.vm_area_struct, ptr %11, i32 0, i32 15, !dbg !6613
  %12 = load ptr, ptr %vm_policy6, align 8, !dbg !6613
  store ptr %12, ptr %pol, align 8, !dbg !6614
  %13 = load ptr, ptr %of, align 8, !dbg !6615
  %vm_ops7 = getelementptr inbounds %struct.kernfs_open_file, ptr %13, i32 0, i32 11, !dbg !6617
  %14 = load ptr, ptr %vm_ops7, align 8, !dbg !6617
  %get_policy = getelementptr inbounds %struct.vm_operations_struct, ptr %14, i32 0, i32 14, !dbg !6618
  %15 = load ptr, ptr %get_policy, align 8, !dbg !6618
  %tobool8 = icmp ne ptr %15, null, !dbg !6615
  br i1 %tobool8, label %if.then9, label %if.end13, !dbg !6619

if.then9:                                         ; preds = %if.end5
  %16 = load ptr, ptr %of, align 8, !dbg !6620
  %vm_ops10 = getelementptr inbounds %struct.kernfs_open_file, ptr %16, i32 0, i32 11, !dbg !6621
  %17 = load ptr, ptr %vm_ops10, align 8, !dbg !6621
  %get_policy11 = getelementptr inbounds %struct.vm_operations_struct, ptr %17, i32 0, i32 14, !dbg !6622
  %18 = load ptr, ptr %get_policy11, align 8, !dbg !6622
  %19 = load ptr, ptr %vma.addr, align 8, !dbg !6623
  %20 = load i64, ptr %addr.addr, align 8, !dbg !6624
  %call12 = call ptr %18(ptr noundef %19, i64 noundef %20) #17, !dbg !6620
  store ptr %call12, ptr %pol, align 8, !dbg !6625
  br label %if.end13, !dbg !6626

if.end13:                                         ; preds = %if.then9, %if.end5
  %21 = load ptr, ptr %of, align 8, !dbg !6627
  %kn14 = getelementptr inbounds %struct.kernfs_open_file, ptr %21, i32 0, i32 0, !dbg !6628
  %22 = load ptr, ptr %kn14, align 8, !dbg !6628
  call void @kernfs_put_active(ptr noundef %22) #17, !dbg !6629
  %23 = load ptr, ptr %pol, align 8, !dbg !6630
  store ptr %23, ptr %retval, align 8, !dbg !6631
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6631

cleanup:                                          ; preds = %if.end13, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pol) #16, !dbg !6632
  call void @llvm.lifetime.end.p0(i64 8, ptr %of) #16, !dbg !6632
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #16, !dbg !6632
  %24 = load ptr, ptr %retval, align 8, !dbg !6632
  ret ptr %24, !dbg !6632
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6633 dso_local i32 @file_update_time(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #15 align 16 !dbg !6636 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6638, metadata !DIExpression()), !dbg !6640
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6639, metadata !DIExpression()), !dbg !6641
  %0 = load i64, ptr %size.addr, align 8, !dbg !6642
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6643
  %or = or i32 %1, 256, !dbg !6644
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !6645
  ret ptr %call, !dbg !6646
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6647 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6650 dso_local i32 @seq_open(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_get_open_node(ptr noundef %kn, ptr noundef %of) #0 align 16 !dbg !4175 {
entry:
  %retval = alloca i32, align 4
  %kn.addr = alloca ptr, align 8
  %of.addr = alloca ptr, align 8
  %on = alloca ptr, align 8
  %mutex = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %_r_a_p__v = alloca i64, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !4179, metadata !DIExpression()), !dbg !6653
  store ptr %of, ptr %of.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %of.addr, metadata !4180, metadata !DIExpression()), !dbg !6654
  call void @llvm.lifetime.start.p0(i64 8, ptr %on) #16, !dbg !6655
  call void @llvm.dbg.declare(metadata ptr %on, metadata !4181, metadata !DIExpression()), !dbg !6656
  call void @llvm.lifetime.start.p0(i64 8, ptr %mutex) #16, !dbg !6657
  call void @llvm.dbg.declare(metadata ptr %mutex, metadata !4182, metadata !DIExpression()), !dbg !6658
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !6659
  %call = call ptr @kernfs_open_file_mutex_lock(ptr noundef %0) #17, !dbg !6660
  store ptr %call, ptr %mutex, align 8, !dbg !6661
  %1 = load ptr, ptr %kn.addr, align 8, !dbg !6662
  %call1 = call ptr @kernfs_deref_open_node_locked(ptr noundef %1) #17, !dbg !6663
  store ptr %call1, ptr %on, align 8, !dbg !6664
  %2 = load ptr, ptr %on, align 8, !dbg !6665
  %tobool = icmp ne ptr %2, null, !dbg !6665
  br i1 %tobool, label %if.end41, label %if.then, !dbg !6666

if.then:                                          ; preds = %entry
  %call2 = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #18, !dbg !6667
  store ptr %call2, ptr %on, align 8, !dbg !6668
  %3 = load ptr, ptr %on, align 8, !dbg !6669
  %tobool3 = icmp ne ptr %3, null, !dbg !6669
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !6671

if.then4:                                         ; preds = %if.then
  %4 = load ptr, ptr %mutex, align 8, !dbg !6672
  call void @mutex_unlock(ptr noundef %4) #17, !dbg !6674
  store i32 -12, ptr %retval, align 4, !dbg !6675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6675

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %on, align 8, !dbg !6676
  %event = getelementptr inbounds %struct.kernfs_open_node, ptr %5, i32 0, i32 1, !dbg !6677
  call void @atomic_set(ptr noundef %event, i32 noundef 1) #17, !dbg !6678
  br label %do.body, !dbg !6679

do.body:                                          ; preds = %if.end
  %6 = load ptr, ptr %on, align 8, !dbg !6680
  %poll = getelementptr inbounds %struct.kernfs_open_node, ptr %6, i32 0, i32 2, !dbg !6680
  call void @__init_waitqueue_head(ptr noundef %poll, ptr noundef @.str.7, ptr noundef @kernfs_get_open_node.__key) #17, !dbg !6680
  br label %do.cond, !dbg !6680

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6680

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %on, align 8, !dbg !6682
  %files = getelementptr inbounds %struct.kernfs_open_node, ptr %7, i32 0, i32 3, !dbg !6683
  call void @INIT_LIST_HEAD(ptr noundef %files) #17, !dbg !6684
  br label %do.body5, !dbg !6685

do.body5:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !6686
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !4184, metadata !DIExpression()), !dbg !6686
  %8 = load ptr, ptr %on, align 8, !dbg !6686
  %9 = ptrtoint ptr %8 to i64, !dbg !6686
  store i64 %9, ptr %_r_a_p__v, align 8, !dbg !6686
  br i1 false, label %land.lhs.true, label %if.else, !dbg !6687

land.lhs.true:                                    ; preds = %do.body5
  %10 = load i64, ptr %_r_a_p__v, align 8, !dbg !6687
  %cmp = icmp eq i64 %10, 0, !dbg !6687
  br i1 %cmp, label %if.then6, label %if.else, !dbg !6686

if.then6:                                         ; preds = %land.lhs.true
  br label %do.body7, !dbg !6687

do.body7:                                         ; preds = %if.then6
  br label %do.body8, !dbg !6689

do.body8:                                         ; preds = %do.body7
  br label %do.cond9, !dbg !6691

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !6691

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !6689

do.body11:                                        ; preds = %do.end10
  %11 = load i64, ptr %_r_a_p__v, align 8, !dbg !6693
  %12 = inttoptr i64 %11 to ptr, !dbg !6693
  %13 = load ptr, ptr %kn.addr, align 8, !dbg !6693
  %14 = getelementptr inbounds %struct.kernfs_node, ptr %13, i32 0, i32 7, !dbg !6693
  %open = getelementptr inbounds %struct.kernfs_elem_attr, ptr %14, i32 0, i32 1, !dbg !6693
  store volatile ptr %12, ptr %open, align 8, !dbg !6693
  br label %do.cond12, !dbg !6693

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6693

do.end13:                                         ; preds = %do.cond12
  br label %do.cond14, !dbg !6689

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !6689

do.end15:                                         ; preds = %do.cond14
  br label %if.end38, !dbg !6689

if.else:                                          ; preds = %land.lhs.true, %do.body5
  br label %do.body16, !dbg !6687

do.body16:                                        ; preds = %if.else
  br label %do.body17, !dbg !6695

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !6697

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6697

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !6695

do.body20:                                        ; preds = %do.end19
  br label %do.body21, !dbg !6699

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !6701

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !6701

do.end23:                                         ; preds = %do.cond22
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !6699, !srcloc !6703
  br label %do.body24, !dbg !6699

do.body24:                                        ; preds = %do.end23
  br label %do.body25, !dbg !6704

do.body25:                                        ; preds = %do.body24
  br label %do.cond26, !dbg !6706

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !6706

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !6704

do.body28:                                        ; preds = %do.end27
  %15 = load i64, ptr %_r_a_p__v, align 8, !dbg !6708
  %16 = inttoptr i64 %15 to ptr, !dbg !6708
  %17 = load ptr, ptr %kn.addr, align 8, !dbg !6708
  %18 = getelementptr inbounds %struct.kernfs_node, ptr %17, i32 0, i32 7, !dbg !6708
  %open29 = getelementptr inbounds %struct.kernfs_elem_attr, ptr %18, i32 0, i32 1, !dbg !6708
  store volatile ptr %16, ptr %open29, align 8, !dbg !6708
  br label %do.cond30, !dbg !6708

do.cond30:                                        ; preds = %do.body28
  br label %do.end31, !dbg !6708

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !6704

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !6704

do.end33:                                         ; preds = %do.cond32
  br label %do.cond34, !dbg !6699

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !6699

do.end35:                                         ; preds = %do.cond34
  br label %do.cond36, !dbg !6695

do.cond36:                                        ; preds = %do.end35
  br label %do.end37, !dbg !6695

do.end37:                                         ; preds = %do.cond36
  br label %if.end38

if.end38:                                         ; preds = %do.end37, %do.end15
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !6685
  br label %do.cond39, !dbg !6686

do.cond39:                                        ; preds = %if.end38
  br label %do.end40, !dbg !6686

do.end40:                                         ; preds = %do.cond39
  br label %if.end41, !dbg !6710

if.end41:                                         ; preds = %do.end40, %entry
  %19 = load ptr, ptr %of.addr, align 8, !dbg !6711
  %list = getelementptr inbounds %struct.kernfs_open_file, ptr %19, i32 0, i32 7, !dbg !6712
  %20 = load ptr, ptr %on, align 8, !dbg !6713
  %files42 = getelementptr inbounds %struct.kernfs_open_node, ptr %20, i32 0, i32 3, !dbg !6714
  call void @list_add_tail(ptr noundef %list, ptr noundef %files42) #17, !dbg !6715
  %21 = load ptr, ptr %kn.addr, align 8, !dbg !6716
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %21, i32 0, i32 10, !dbg !6718
  %22 = load i16, ptr %flags, align 8, !dbg !6718
  %conv = zext i16 %22 to i32, !dbg !6716
  %and = and i32 %conv, 8192, !dbg !6719
  %tobool43 = icmp ne i32 %and, 0, !dbg !6719
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !6720

if.then44:                                        ; preds = %if.end41
  %23 = load ptr, ptr %on, align 8, !dbg !6721
  %nr_to_release = getelementptr inbounds %struct.kernfs_open_node, ptr %23, i32 0, i32 5, !dbg !6722
  %24 = load i32, ptr %nr_to_release, align 4, !dbg !6723
  %inc = add i32 %24, 1, !dbg !6723
  store i32 %inc, ptr %nr_to_release, align 4, !dbg !6723
  br label %if.end45, !dbg !6721

if.end45:                                         ; preds = %if.then44, %if.end41
  %25 = load ptr, ptr %mutex, align 8, !dbg !6724
  call void @mutex_unlock(ptr noundef %25) #17, !dbg !6725
  store i32 0, ptr %retval, align 4, !dbg !6726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6726

cleanup:                                          ; preds = %if.end45, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mutex) #16, !dbg !6727
  call void @llvm.lifetime.end.p0(i64 8, ptr %on) #16, !dbg !6727
  %26 = load i32, ptr %retval, align 4, !dbg !6727
  ret i32 %26, !dbg !6727
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kernfs_unlink_open_file(ptr noundef %kn, ptr noundef %of, i1 noundef zeroext %open_failed) #0 align 16 !dbg !6728 {
entry:
  %kn.addr = alloca ptr, align 8
  %of.addr = alloca ptr, align 8
  %open_failed.addr = alloca i8, align 1
  %on = alloca ptr, align 8
  %mutex = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %_r_a_p__v = alloca i64, align 8
  %___p = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !6732, metadata !DIExpression()), !dbg !6752
  store ptr %of, ptr %of.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %of.addr, metadata !6733, metadata !DIExpression()), !dbg !6753
  %frombool = zext i1 %open_failed to i8
  store i8 %frombool, ptr %open_failed.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %open_failed.addr, metadata !6734, metadata !DIExpression()), !dbg !6754
  call void @llvm.lifetime.start.p0(i64 8, ptr %on) #16, !dbg !6755
  call void @llvm.dbg.declare(metadata ptr %on, metadata !6735, metadata !DIExpression()), !dbg !6756
  call void @llvm.lifetime.start.p0(i64 8, ptr %mutex) #16, !dbg !6757
  call void @llvm.dbg.declare(metadata ptr %mutex, metadata !6736, metadata !DIExpression()), !dbg !6758
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !6759
  %call = call ptr @kernfs_open_file_mutex_lock(ptr noundef %0) #17, !dbg !6760
  store ptr %call, ptr %mutex, align 8, !dbg !6761
  %1 = load ptr, ptr %kn.addr, align 8, !dbg !6762
  %call1 = call ptr @kernfs_deref_open_node_locked(ptr noundef %1) #17, !dbg !6763
  store ptr %call1, ptr %on, align 8, !dbg !6764
  %2 = load ptr, ptr %on, align 8, !dbg !6765
  %tobool = icmp ne ptr %2, null, !dbg !6765
  br i1 %tobool, label %if.end, label %if.then, !dbg !6767

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %mutex, align 8, !dbg !6768
  call void @mutex_unlock(ptr noundef %3) #17, !dbg !6770
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6771

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %of.addr, align 8, !dbg !6772
  %tobool2 = icmp ne ptr %4, null, !dbg !6772
  br i1 %tobool2, label %if.then3, label %if.end46, !dbg !6773

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %kn.addr, align 8, !dbg !6774
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 10, !dbg !6775
  %6 = load i16, ptr %flags, align 8, !dbg !6775
  %conv = zext i16 %6 to i32, !dbg !6774
  %and = and i32 %conv, 8192, !dbg !6776
  %tobool4 = icmp ne i32 %and, 0, !dbg !6776
  br i1 %tobool4, label %if.then5, label %if.end39, !dbg !6777

if.then5:                                         ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6778
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6737, metadata !DIExpression()), !dbg !6778
  %7 = load ptr, ptr %of.addr, align 8, !dbg !6778
  %released = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 10, !dbg !6778
  %bf.load = load i8, ptr %released, align 8, !dbg !6778
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !6778
  %bf.clear = and i8 %bf.lshr, 1, !dbg !6778
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !6778
  %conv6 = zext i1 %bf.cast to i32, !dbg !6778
  %8 = load i8, ptr %open_failed.addr, align 1, !dbg !6778, !range !4268, !noundef !620
  %tobool7 = trunc i8 %8 to i1, !dbg !6778
  %conv8 = zext i1 %tobool7 to i32, !dbg !6778
  %cmp = icmp eq i32 %conv6, %conv8, !dbg !6778
  %lnot = xor i1 %cmp, true, !dbg !6778
  %lnot10 = xor i1 %lnot, true, !dbg !6778
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !6778
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6778
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !6779
  %tobool11 = icmp ne i32 %9, 0, !dbg !6779
  %lnot12 = xor i1 %tobool11, true, !dbg !6779
  %lnot14 = xor i1 %lnot12, true, !dbg !6779
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !6779
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !6779
  %expval = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !6779
  %tobool17 = icmp ne i64 %expval, 0, !dbg !6779
  br i1 %tobool17, label %if.then18, label %if.end28, !dbg !6778

if.then18:                                        ; preds = %if.then5
  br label %do.body, !dbg !6779

do.body:                                          ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !6780
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6743, metadata !DIExpression()), !dbg !6780
  store i32 2307, ptr %__flags, align 4, !dbg !6780
  br label %do.body19, !dbg !6780

do.body19:                                        ; preds = %do.body
  br label %do.cond, !dbg !6781

do.cond:                                          ; preds = %do.body19
  br label %do.end, !dbg !6781

do.end:                                           ; preds = %do.cond
  br label %do.body20, !dbg !6780

do.body20:                                        ; preds = %do.end
  %10 = load i32, ptr %__flags, align 4, !dbg !6783
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 624, i32 %10, i64 12) #16, !dbg !6783, !srcloc !6785
  br label %do.cond21, !dbg !6783

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !6783

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !6780

do.body23:                                        ; preds = %do.end22
  br label %do.cond24, !dbg !6786

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !6786

do.end25:                                         ; preds = %do.cond24
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !6779
  br label %do.cond26, !dbg !6780

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !6780

do.end27:                                         ; preds = %do.cond26
  br label %if.end28, !dbg !6780

if.end28:                                         ; preds = %do.end27, %if.then5
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !6778
  %tobool29 = icmp ne i32 %11, 0, !dbg !6778
  %lnot30 = xor i1 %tobool29, true, !dbg !6778
  %lnot32 = xor i1 %lnot30, true, !dbg !6778
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !6778
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !6778
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !6778
  store i64 %expval35, ptr %tmp, align 8, !dbg !6779
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6788
  %12 = load i64, ptr %tmp, align 8, !dbg !6778
  %13 = load i8, ptr %open_failed.addr, align 1, !dbg !6789, !range !4268, !noundef !620
  %tobool36 = trunc i8 %13 to i1, !dbg !6789
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !6791

if.then37:                                        ; preds = %if.end28
  %14 = load ptr, ptr %on, align 8, !dbg !6792
  %nr_to_release = getelementptr inbounds %struct.kernfs_open_node, ptr %14, i32 0, i32 5, !dbg !6793
  %15 = load i32, ptr %nr_to_release, align 4, !dbg !6794
  %dec = add i32 %15, -1, !dbg !6794
  store i32 %dec, ptr %nr_to_release, align 4, !dbg !6794
  br label %if.end38, !dbg !6792

if.end38:                                         ; preds = %if.then37, %if.end28
  br label %if.end39, !dbg !6795

if.end39:                                         ; preds = %if.end38, %if.then3
  %16 = load ptr, ptr %of.addr, align 8, !dbg !6796
  %mmapped = getelementptr inbounds %struct.kernfs_open_file, ptr %16, i32 0, i32 10, !dbg !6798
  %bf.load40 = load i8, ptr %mmapped, align 8, !dbg !6798
  %bf.clear41 = and i8 %bf.load40, 1, !dbg !6798
  %bf.cast42 = trunc i8 %bf.clear41 to i1, !dbg !6798
  br i1 %bf.cast42, label %if.then43, label %if.end45, !dbg !6799

if.then43:                                        ; preds = %if.end39
  %17 = load ptr, ptr %on, align 8, !dbg !6800
  %nr_mmapped = getelementptr inbounds %struct.kernfs_open_node, ptr %17, i32 0, i32 4, !dbg !6801
  %18 = load i32, ptr %nr_mmapped, align 8, !dbg !6802
  %dec44 = add i32 %18, -1, !dbg !6802
  store i32 %dec44, ptr %nr_mmapped, align 8, !dbg !6802
  br label %if.end45, !dbg !6800

if.end45:                                         ; preds = %if.then43, %if.end39
  %19 = load ptr, ptr %of.addr, align 8, !dbg !6803
  %list = getelementptr inbounds %struct.kernfs_open_file, ptr %19, i32 0, i32 7, !dbg !6804
  call void @list_del(ptr noundef %list) #17, !dbg !6805
  br label %if.end46, !dbg !6806

if.end46:                                         ; preds = %if.end45, %if.end
  %20 = load ptr, ptr %on, align 8, !dbg !6807
  %files = getelementptr inbounds %struct.kernfs_open_node, ptr %20, i32 0, i32 3, !dbg !6808
  %call47 = call i32 @list_empty(ptr noundef %files) #17, !dbg !6809
  %tobool48 = icmp ne i32 %call47, 0, !dbg !6809
  br i1 %tobool48, label %if.then49, label %if.end97, !dbg !6810

if.then49:                                        ; preds = %if.end46
  br label %do.body50, !dbg !6811

do.body50:                                        ; preds = %if.then49
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !6812
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !6746, metadata !DIExpression()), !dbg !6812
  store i64 0, ptr %_r_a_p__v, align 8, !dbg !6812
  %21 = load i64, ptr %_r_a_p__v, align 8, !dbg !6813
  %cmp51 = icmp eq i64 %21, 0, !dbg !6813
  br i1 %cmp51, label %if.then53, label %if.else, !dbg !6812

if.then53:                                        ; preds = %do.body50
  br label %do.body54, !dbg !6813

do.body54:                                        ; preds = %if.then53
  br label %do.body55, !dbg !6815

do.body55:                                        ; preds = %do.body54
  br label %do.cond56, !dbg !6817

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !6817

do.end57:                                         ; preds = %do.cond56
  br label %do.body58, !dbg !6815

do.body58:                                        ; preds = %do.end57
  %22 = load i64, ptr %_r_a_p__v, align 8, !dbg !6819
  %23 = inttoptr i64 %22 to ptr, !dbg !6819
  %24 = load ptr, ptr %kn.addr, align 8, !dbg !6819
  %25 = getelementptr inbounds %struct.kernfs_node, ptr %24, i32 0, i32 7, !dbg !6819
  %open = getelementptr inbounds %struct.kernfs_elem_attr, ptr %25, i32 0, i32 1, !dbg !6819
  store volatile ptr %23, ptr %open, align 8, !dbg !6819
  br label %do.cond59, !dbg !6819

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !6819

do.end60:                                         ; preds = %do.cond59
  br label %do.cond61, !dbg !6815

do.cond61:                                        ; preds = %do.end60
  br label %do.end62, !dbg !6815

do.end62:                                         ; preds = %do.cond61
  br label %if.end85, !dbg !6815

if.else:                                          ; preds = %do.body50
  br label %do.body63, !dbg !6813

do.body63:                                        ; preds = %if.else
  br label %do.body64, !dbg !6821

do.body64:                                        ; preds = %do.body63
  br label %do.cond65, !dbg !6823

do.cond65:                                        ; preds = %do.body64
  br label %do.end66, !dbg !6823

do.end66:                                         ; preds = %do.cond65
  br label %do.body67, !dbg !6821

do.body67:                                        ; preds = %do.end66
  br label %do.body68, !dbg !6825

do.body68:                                        ; preds = %do.body67
  br label %do.cond69, !dbg !6827

do.cond69:                                        ; preds = %do.body68
  br label %do.end70, !dbg !6827

do.end70:                                         ; preds = %do.cond69
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !6825, !srcloc !6829
  br label %do.body71, !dbg !6825

do.body71:                                        ; preds = %do.end70
  br label %do.body72, !dbg !6830

do.body72:                                        ; preds = %do.body71
  br label %do.cond73, !dbg !6832

do.cond73:                                        ; preds = %do.body72
  br label %do.end74, !dbg !6832

do.end74:                                         ; preds = %do.cond73
  br label %do.body75, !dbg !6830

do.body75:                                        ; preds = %do.end74
  %26 = load i64, ptr %_r_a_p__v, align 8, !dbg !6834
  %27 = inttoptr i64 %26 to ptr, !dbg !6834
  %28 = load ptr, ptr %kn.addr, align 8, !dbg !6834
  %29 = getelementptr inbounds %struct.kernfs_node, ptr %28, i32 0, i32 7, !dbg !6834
  %open76 = getelementptr inbounds %struct.kernfs_elem_attr, ptr %29, i32 0, i32 1, !dbg !6834
  store volatile ptr %27, ptr %open76, align 8, !dbg !6834
  br label %do.cond77, !dbg !6834

do.cond77:                                        ; preds = %do.body75
  br label %do.end78, !dbg !6834

do.end78:                                         ; preds = %do.cond77
  br label %do.cond79, !dbg !6830

do.cond79:                                        ; preds = %do.end78
  br label %do.end80, !dbg !6830

do.end80:                                         ; preds = %do.cond79
  br label %do.cond81, !dbg !6825

do.cond81:                                        ; preds = %do.end80
  br label %do.end82, !dbg !6825

do.end82:                                         ; preds = %do.cond81
  br label %do.cond83, !dbg !6821

do.cond83:                                        ; preds = %do.end82
  br label %do.end84, !dbg !6821

do.end84:                                         ; preds = %do.cond83
  br label %if.end85

if.end85:                                         ; preds = %do.end84, %do.end62
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !6811
  br label %do.cond86, !dbg !6812

do.cond86:                                        ; preds = %if.end85
  br label %do.end87, !dbg !6812

do.end87:                                         ; preds = %do.cond86
  br label %do.body88, !dbg !6836

do.body88:                                        ; preds = %do.end87
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p) #16, !dbg !6837
  call void @llvm.dbg.declare(metadata ptr %___p, metadata !6750, metadata !DIExpression()), !dbg !6837
  %30 = load ptr, ptr %on, align 8, !dbg !6837
  store ptr %30, ptr %___p, align 8, !dbg !6837
  %31 = load ptr, ptr %___p, align 8, !dbg !6838
  %tobool89 = icmp ne ptr %31, null, !dbg !6838
  br i1 %tobool89, label %if.then90, label %if.end94, !dbg !6837

if.then90:                                        ; preds = %do.body88
  br label %do.body91, !dbg !6840

do.body91:                                        ; preds = %if.then90
  br label %do.cond92, !dbg !6842

do.cond92:                                        ; preds = %do.body91
  br label %do.end93, !dbg !6842

do.end93:                                         ; preds = %do.cond92
  %32 = load ptr, ptr %___p, align 8, !dbg !6840
  %callback_head = getelementptr inbounds %struct.kernfs_open_node, ptr %32, i32 0, i32 0, !dbg !6840
  %33 = load ptr, ptr %___p, align 8, !dbg !6840
  call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef %33) #17, !dbg !6840
  br label %if.end94, !dbg !6840

if.end94:                                         ; preds = %do.end93, %do.body88
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p) #16, !dbg !6836
  br label %do.cond95, !dbg !6837

do.cond95:                                        ; preds = %if.end94
  br label %do.end96, !dbg !6837

do.end96:                                         ; preds = %do.cond95
  br label %if.end97, !dbg !6844

if.end97:                                         ; preds = %do.end96, %if.end46
  %34 = load ptr, ptr %mutex, align 8, !dbg !6845
  call void @mutex_unlock(ptr noundef %34) #17, !dbg !6846
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6847
  br label %cleanup, !dbg !6847

cleanup:                                          ; preds = %if.end97, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mutex) #16, !dbg !6847
  call void @llvm.lifetime.end.p0(i64 8, ptr %on) #16, !dbg !6847
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6847

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6848 dso_local i32 @seq_release(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_seq_start(ptr noundef %sf, ptr noundef %ppos) #0 align 16 !dbg !6849 {
entry:
  %retval = alloca ptr, align 8
  %sf.addr = alloca ptr, align 8
  %ppos.addr = alloca ptr, align 8
  %of = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %next = alloca ptr, align 8
  store ptr %sf, ptr %sf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sf.addr, metadata !6851, metadata !DIExpression()), !dbg !6858
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6852, metadata !DIExpression()), !dbg !6859
  call void @llvm.lifetime.start.p0(i64 8, ptr %of) #16, !dbg !6860
  call void @llvm.dbg.declare(metadata ptr %of, metadata !6853, metadata !DIExpression()), !dbg !6861
  %0 = load ptr, ptr %sf.addr, align 8, !dbg !6862
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !6863
  %1 = load ptr, ptr %private, align 8, !dbg !6863
  store ptr %1, ptr %of, align 8, !dbg !6861
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #16, !dbg !6864
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !6854, metadata !DIExpression()), !dbg !6865
  %2 = load ptr, ptr %of, align 8, !dbg !6866
  %mutex = getelementptr inbounds %struct.kernfs_open_file, ptr %2, i32 0, i32 4, !dbg !6867
  call void @mutex_lock(ptr noundef %mutex) #17, !dbg !6868
  %3 = load ptr, ptr %of, align 8, !dbg !6869
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %3, i32 0, i32 0, !dbg !6871
  %4 = load ptr, ptr %kn, align 8, !dbg !6871
  %call = call ptr @kernfs_get_active(ptr noundef %4) #17, !dbg !6872
  %tobool = icmp ne ptr %call, null, !dbg !6872
  br i1 %tobool, label %if.end, label %if.then, !dbg !6873

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -19) #17, !dbg !6874
  store ptr %call1, ptr %retval, align 8, !dbg !6875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6875

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %of, align 8, !dbg !6876
  %kn2 = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 0, !dbg !6877
  %6 = load ptr, ptr %kn2, align 8, !dbg !6877
  %call3 = call ptr @kernfs_ops(ptr noundef %6) #17, !dbg !6878
  store ptr %call3, ptr %ops, align 8, !dbg !6879
  %7 = load ptr, ptr %ops, align 8, !dbg !6880
  %seq_start = getelementptr inbounds %struct.kernfs_ops, ptr %7, i32 0, i32 3, !dbg !6881
  %8 = load ptr, ptr %seq_start, align 8, !dbg !6881
  %tobool4 = icmp ne ptr %8, null, !dbg !6880
  br i1 %tobool4, label %if.then5, label %if.end11, !dbg !6882

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #16, !dbg !6883
  call void @llvm.dbg.declare(metadata ptr %next, metadata !6855, metadata !DIExpression()), !dbg !6884
  %9 = load ptr, ptr %ops, align 8, !dbg !6885
  %seq_start6 = getelementptr inbounds %struct.kernfs_ops, ptr %9, i32 0, i32 3, !dbg !6886
  %10 = load ptr, ptr %seq_start6, align 8, !dbg !6886
  %11 = load ptr, ptr %sf.addr, align 8, !dbg !6887
  %12 = load ptr, ptr %ppos.addr, align 8, !dbg !6888
  %call7 = call ptr %10(ptr noundef %11, ptr noundef %12) #17, !dbg !6885
  store ptr %call7, ptr %next, align 8, !dbg !6884
  %13 = load ptr, ptr %next, align 8, !dbg !6889
  %call8 = call ptr @ERR_PTR(i64 noundef -19) #17, !dbg !6891
  %cmp = icmp eq ptr %13, %call8, !dbg !6892
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !6893

if.then9:                                         ; preds = %if.then5
  %14 = load ptr, ptr %sf.addr, align 8, !dbg !6894
  %15 = load ptr, ptr %next, align 8, !dbg !6895
  call void @kernfs_seq_stop_active(ptr noundef %14, ptr noundef %15) #17, !dbg !6896
  br label %if.end10, !dbg !6896

if.end10:                                         ; preds = %if.then9, %if.then5
  %16 = load ptr, ptr %next, align 8, !dbg !6897
  store ptr %16, ptr %retval, align 8, !dbg !6898
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #16, !dbg !6899
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %17 = load ptr, ptr %sf.addr, align 8, !dbg !6900
  %18 = load ptr, ptr %ppos.addr, align 8, !dbg !6901
  %call12 = call ptr @single_start(ptr noundef %17, ptr noundef %18) #17, !dbg !6902
  store ptr %call12, ptr %retval, align 8, !dbg !6903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6903

cleanup:                                          ; preds = %if.end11, %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #16, !dbg !6904
  call void @llvm.lifetime.end.p0(i64 8, ptr %of) #16, !dbg !6904
  %19 = load ptr, ptr %retval, align 8, !dbg !6904
  ret ptr %19, !dbg !6904
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kernfs_seq_stop(ptr noundef %sf, ptr noundef %v) #0 align 16 !dbg !6905 {
entry:
  %sf.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %of = alloca ptr, align 8
  store ptr %sf, ptr %sf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sf.addr, metadata !6907, metadata !DIExpression()), !dbg !6910
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6908, metadata !DIExpression()), !dbg !6911
  call void @llvm.lifetime.start.p0(i64 8, ptr %of) #16, !dbg !6912
  call void @llvm.dbg.declare(metadata ptr %of, metadata !6909, metadata !DIExpression()), !dbg !6913
  %0 = load ptr, ptr %sf.addr, align 8, !dbg !6914
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !6915
  %1 = load ptr, ptr %private, align 8, !dbg !6915
  store ptr %1, ptr %of, align 8, !dbg !6913
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6916
  %call = call ptr @ERR_PTR(i64 noundef -19) #17, !dbg !6918
  %cmp = icmp ne ptr %2, %call, !dbg !6919
  br i1 %cmp, label %if.then, label %if.end, !dbg !6920

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %sf.addr, align 8, !dbg !6921
  %4 = load ptr, ptr %v.addr, align 8, !dbg !6922
  call void @kernfs_seq_stop_active(ptr noundef %3, ptr noundef %4) #17, !dbg !6923
  br label %if.end, !dbg !6923

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %of, align 8, !dbg !6924
  %mutex = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 4, !dbg !6925
  call void @mutex_unlock(ptr noundef %mutex) #17, !dbg !6926
  call void @llvm.lifetime.end.p0(i64 8, ptr %of) #16, !dbg !6927
  ret void, !dbg !6927
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_seq_next(ptr noundef %sf, ptr noundef %v, ptr noundef %ppos) #0 align 16 !dbg !6928 {
entry:
  %retval = alloca ptr, align 8
  %sf.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ppos.addr = alloca ptr, align 8
  %of = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %next = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sf, ptr %sf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sf.addr, metadata !6930, metadata !DIExpression()), !dbg !6938
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6931, metadata !DIExpression()), !dbg !6939
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6932, metadata !DIExpression()), !dbg !6940
  call void @llvm.lifetime.start.p0(i64 8, ptr %of) #16, !dbg !6941
  call void @llvm.dbg.declare(metadata ptr %of, metadata !6933, metadata !DIExpression()), !dbg !6942
  %0 = load ptr, ptr %sf.addr, align 8, !dbg !6943
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !6944
  %1 = load ptr, ptr %private, align 8, !dbg !6944
  store ptr %1, ptr %of, align 8, !dbg !6942
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #16, !dbg !6945
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !6934, metadata !DIExpression()), !dbg !6946
  %2 = load ptr, ptr %of, align 8, !dbg !6947
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %2, i32 0, i32 0, !dbg !6948
  %3 = load ptr, ptr %kn, align 8, !dbg !6948
  %call = call ptr @kernfs_ops(ptr noundef %3) #17, !dbg !6949
  store ptr %call, ptr %ops, align 8, !dbg !6946
  %4 = load ptr, ptr %ops, align 8, !dbg !6950
  %seq_next = getelementptr inbounds %struct.kernfs_ops, ptr %4, i32 0, i32 4, !dbg !6951
  %5 = load ptr, ptr %seq_next, align 8, !dbg !6951
  %tobool = icmp ne ptr %5, null, !dbg !6950
  br i1 %tobool, label %if.then, label %if.else, !dbg !6952

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #16, !dbg !6953
  call void @llvm.dbg.declare(metadata ptr %next, metadata !6935, metadata !DIExpression()), !dbg !6954
  %6 = load ptr, ptr %ops, align 8, !dbg !6955
  %seq_next1 = getelementptr inbounds %struct.kernfs_ops, ptr %6, i32 0, i32 4, !dbg !6956
  %7 = load ptr, ptr %seq_next1, align 8, !dbg !6956
  %8 = load ptr, ptr %sf.addr, align 8, !dbg !6957
  %9 = load ptr, ptr %v.addr, align 8, !dbg !6958
  %10 = load ptr, ptr %ppos.addr, align 8, !dbg !6959
  %call2 = call ptr %7(ptr noundef %8, ptr noundef %9, ptr noundef %10) #17, !dbg !6955
  store ptr %call2, ptr %next, align 8, !dbg !6954
  %11 = load ptr, ptr %next, align 8, !dbg !6960
  %call3 = call ptr @ERR_PTR(i64 noundef -19) #17, !dbg !6962
  %cmp = icmp eq ptr %11, %call3, !dbg !6963
  br i1 %cmp, label %if.then4, label %if.end, !dbg !6964

if.then4:                                         ; preds = %if.then
  %12 = load ptr, ptr %sf.addr, align 8, !dbg !6965
  %13 = load ptr, ptr %next, align 8, !dbg !6966
  call void @kernfs_seq_stop_active(ptr noundef %12, ptr noundef %13) #17, !dbg !6967
  br label %if.end, !dbg !6967

if.end:                                           ; preds = %if.then4, %if.then
  %14 = load ptr, ptr %next, align 8, !dbg !6968
  store ptr %14, ptr %retval, align 8, !dbg !6969
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #16, !dbg !6970
  br label %cleanup

if.else:                                          ; preds = %entry
  %15 = load ptr, ptr %ppos.addr, align 8, !dbg !6971
  %16 = load i64, ptr %15, align 8, !dbg !6973
  %inc = add i64 %16, 1, !dbg !6973
  store i64 %inc, ptr %15, align 8, !dbg !6973
  store ptr null, ptr %retval, align 8, !dbg !6974
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6974

cleanup:                                          ; preds = %if.else, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #16, !dbg !6975
  call void @llvm.lifetime.end.p0(i64 8, ptr %of) #16, !dbg !6975
  %17 = load ptr, ptr %retval, align 8, !dbg !6975
  ret ptr %17, !dbg !6975
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_seq_show(ptr noundef %sf, ptr noundef %v) #0 align 16 !dbg !6976 {
entry:
  %sf.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %of = alloca ptr, align 8
  store ptr %sf, ptr %sf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sf.addr, metadata !6978, metadata !DIExpression()), !dbg !6981
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6979, metadata !DIExpression()), !dbg !6982
  call void @llvm.lifetime.start.p0(i64 8, ptr %of) #16, !dbg !6983
  call void @llvm.dbg.declare(metadata ptr %of, metadata !6980, metadata !DIExpression()), !dbg !6984
  %0 = load ptr, ptr %sf.addr, align 8, !dbg !6985
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !6986
  %1 = load ptr, ptr %private, align 8, !dbg !6986
  store ptr %1, ptr %of, align 8, !dbg !6984
  %2 = load ptr, ptr %of, align 8, !dbg !6987
  %call = call ptr @of_on(ptr noundef %2) #17, !dbg !6988
  %event = getelementptr inbounds %struct.kernfs_open_node, ptr %call, i32 0, i32 1, !dbg !6989
  %call1 = call i32 @atomic_read(ptr noundef %event) #17, !dbg !6990
  %3 = load ptr, ptr %of, align 8, !dbg !6991
  %event2 = getelementptr inbounds %struct.kernfs_open_file, ptr %3, i32 0, i32 6, !dbg !6992
  store i32 %call1, ptr %event2, align 8, !dbg !6993
  %4 = load ptr, ptr %of, align 8, !dbg !6994
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %4, i32 0, i32 0, !dbg !6995
  %5 = load ptr, ptr %kn, align 8, !dbg !6995
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 7, !dbg !6996
  %ops = getelementptr inbounds %struct.kernfs_elem_attr, ptr %6, i32 0, i32 0, !dbg !6997
  %7 = load ptr, ptr %ops, align 8, !dbg !6997
  %seq_show = getelementptr inbounds %struct.kernfs_ops, ptr %7, i32 0, i32 2, !dbg !6998
  %8 = load ptr, ptr %seq_show, align 8, !dbg !6998
  %9 = load ptr, ptr %sf.addr, align 8, !dbg !6999
  %10 = load ptr, ptr %v.addr, align 8, !dbg !7000
  %call3 = call i32 %8(ptr noundef %9, ptr noundef %10) #17, !dbg !6994
  call void @llvm.lifetime.end.p0(i64 8, ptr %of) #16, !dbg !7001
  ret i32 %call3, !dbg !7002
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kernfs_seq_stop_active(ptr noundef %sf, ptr noundef %v) #0 align 16 !dbg !7003 {
entry:
  %sf.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %of = alloca ptr, align 8
  %ops = alloca ptr, align 8
  store ptr %sf, ptr %sf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sf.addr, metadata !7005, metadata !DIExpression()), !dbg !7009
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7006, metadata !DIExpression()), !dbg !7010
  call void @llvm.lifetime.start.p0(i64 8, ptr %of) #16, !dbg !7011
  call void @llvm.dbg.declare(metadata ptr %of, metadata !7007, metadata !DIExpression()), !dbg !7012
  %0 = load ptr, ptr %sf.addr, align 8, !dbg !7013
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !7014
  %1 = load ptr, ptr %private, align 8, !dbg !7014
  store ptr %1, ptr %of, align 8, !dbg !7012
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #16, !dbg !7015
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !7008, metadata !DIExpression()), !dbg !7016
  %2 = load ptr, ptr %of, align 8, !dbg !7017
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %2, i32 0, i32 0, !dbg !7018
  %3 = load ptr, ptr %kn, align 8, !dbg !7018
  %call = call ptr @kernfs_ops(ptr noundef %3) #17, !dbg !7019
  store ptr %call, ptr %ops, align 8, !dbg !7016
  %4 = load ptr, ptr %ops, align 8, !dbg !7020
  %seq_stop = getelementptr inbounds %struct.kernfs_ops, ptr %4, i32 0, i32 5, !dbg !7022
  %5 = load ptr, ptr %seq_stop, align 8, !dbg !7022
  %tobool = icmp ne ptr %5, null, !dbg !7020
  br i1 %tobool, label %if.then, label %if.end, !dbg !7023

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %ops, align 8, !dbg !7024
  %seq_stop1 = getelementptr inbounds %struct.kernfs_ops, ptr %6, i32 0, i32 5, !dbg !7025
  %7 = load ptr, ptr %seq_stop1, align 8, !dbg !7025
  %8 = load ptr, ptr %sf.addr, align 8, !dbg !7026
  %9 = load ptr, ptr %v.addr, align 8, !dbg !7027
  call void %7(ptr noundef %8, ptr noundef %9) #17, !dbg !7024
  br label %if.end, !dbg !7024

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %of, align 8, !dbg !7028
  %kn2 = getelementptr inbounds %struct.kernfs_open_file, ptr %10, i32 0, i32 0, !dbg !7029
  %11 = load ptr, ptr %kn2, align 8, !dbg !7029
  call void @kernfs_put_active(ptr noundef %11) #17, !dbg !7030
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #16, !dbg !7031
  call void @llvm.lifetime.end.p0(i64 8, ptr %of) #16, !dbg !7031
  ret void, !dbg !7031
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7032 dso_local ptr @single_start(ptr noundef, ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !7033 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7037, metadata !DIExpression()), !dbg !7039
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7038, metadata !DIExpression()), !dbg !7040
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7041
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #17, !dbg !7042
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7043
  %2 = load i32, ptr %i.addr, align 4, !dbg !7044
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #17, !dbg !7045
  ret void, !dbg !7046
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7047 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !7050 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !7055, metadata !DIExpression()), !dbg !7056
  br label %do.body, !dbg !7057

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !7058

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !7060

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !7058

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !7062
  %1 = load ptr, ptr %list.addr, align 8, !dbg !7062
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !7062
  store volatile ptr %0, ptr %next, align 8, !dbg !7062
  br label %do.end3, !dbg !7062

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !7058

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !7064

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !7065

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !7067

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !7065

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !7069
  %3 = load ptr, ptr %list.addr, align 8, !dbg !7069
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !7069
  store volatile ptr %2, ptr %prev, align 8, !dbg !7069
  br label %do.end9, !dbg !7069

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !7065

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !7071
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !7072 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7076, metadata !DIExpression()), !dbg !7078
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7077, metadata !DIExpression()), !dbg !7079
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7080
  %1 = load ptr, ptr %head.addr, align 8, !dbg !7081
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7082
  %2 = load ptr, ptr %prev, align 8, !dbg !7082
  %3 = load ptr, ptr %head.addr, align 8, !dbg !7083
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #17, !dbg !7084
  ret void, !dbg !7085
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !7086 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7088, metadata !DIExpression()), !dbg !7090
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7089, metadata !DIExpression()), !dbg !7091
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7092
  %1 = load i64, ptr %size.addr, align 8, !dbg !7093
  %conv = trunc i64 %1 to i32, !dbg !7093
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !7094
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7095
  %3 = load i64, ptr %size.addr, align 8, !dbg !7095
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !7095
  ret void, !dbg !7096
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !7097 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7099, metadata !DIExpression()), !dbg !7101
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7100, metadata !DIExpression()), !dbg !7102
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7103
  %1 = load i32, ptr %i.addr, align 4, !dbg !7104
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #17, !dbg !7105
  ret void, !dbg !7106
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !7107 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7109, metadata !DIExpression()), !dbg !7111
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7110, metadata !DIExpression()), !dbg !7112
  br label %do.body, !dbg !7113

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !7114
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7114
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !7114
  store volatile i32 %0, ptr %counter, align 4, !dbg !7114
  br label %do.end, !dbg !7114

do.end:                                           ; preds = %do.body
  ret void, !dbg !7116
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !7117 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7121, metadata !DIExpression()), !dbg !7124
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7122, metadata !DIExpression()), !dbg !7125
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7123, metadata !DIExpression()), !dbg !7126
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7127
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !7129
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7130
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !7131
  br i1 %call, label %if.end, label %if.then, !dbg !7132

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !7133

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !7134
  %4 = load ptr, ptr %next.addr, align 8, !dbg !7135
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !7136
  store ptr %3, ptr %prev1, align 8, !dbg !7137
  %5 = load ptr, ptr %next.addr, align 8, !dbg !7138
  %6 = load ptr, ptr %new.addr, align 8, !dbg !7139
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !7140
  store ptr %5, ptr %next2, align 8, !dbg !7141
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !7142
  %8 = load ptr, ptr %new.addr, align 8, !dbg !7143
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !7144
  store ptr %7, ptr %prev3, align 8, !dbg !7145
  br label %do.body, !dbg !7146

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !7147

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !7149

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !7147

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !7151
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !7151
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !7151
  store volatile ptr %9, ptr %next6, align 8, !dbg !7151
  br label %do.end7, !dbg !7151

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !7147

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !7153
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !7154 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7158, metadata !DIExpression()), !dbg !7161
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7159, metadata !DIExpression()), !dbg !7162
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7160, metadata !DIExpression()), !dbg !7163
  ret i1 true, !dbg !7164
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !7165 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7167, metadata !DIExpression()), !dbg !7168
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !7169
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !7170
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !7171
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !7172
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !7173
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !7174
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !7175
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !7176
  ret void, !dbg !7177
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #5 align 16 !dbg !7178 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7184, metadata !DIExpression()), !dbg !7185
  br label %do.body, !dbg !7186

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7188

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !7186
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !7186
  %1 = load volatile ptr, ptr %next, align 8, !dbg !7186
  store ptr %1, ptr %tmp, align 8, !dbg !7188
  %2 = load ptr, ptr %tmp, align 8, !dbg !7186
  %3 = load ptr, ptr %head.addr, align 8, !dbg !7190
  %cmp = icmp eq ptr %2, %3, !dbg !7191
  %conv = zext i1 %cmp to i32, !dbg !7191
  ret i32 %conv, !dbg !7192
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7193 dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !7197 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7199, metadata !DIExpression()), !dbg !7200
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !7201
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !7203
  br i1 %call, label %if.end, label %if.then, !dbg !7204

if.then:                                          ; preds = %entry
  br label %return, !dbg !7205

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !7206
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7207
  %2 = load ptr, ptr %prev, align 8, !dbg !7207
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !7208
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !7209
  %4 = load ptr, ptr %next, align 8, !dbg !7209
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !7210
  br label %return, !dbg !7211

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !7211
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !7212 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7216, metadata !DIExpression()), !dbg !7217
  ret i1 true, !dbg !7218
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !7219 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7221, metadata !DIExpression()), !dbg !7223
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7222, metadata !DIExpression()), !dbg !7224
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !7225
  %1 = load ptr, ptr %next.addr, align 8, !dbg !7226
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7227
  store ptr %0, ptr %prev1, align 8, !dbg !7228
  br label %do.body, !dbg !7229

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !7230

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !7232

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !7230

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7234
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !7234
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !7234
  store volatile ptr %2, ptr %next4, align 8, !dbg !7234
  br label %do.end5, !dbg !7234

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !7230

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !7236
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!4003}
!llvm.module.flags = !{!4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215}
!llvm.ident = !{!4216}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 824, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/kernfs/file.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9a136cedbfcf497f0f3f9d1e87ae4e70")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "kernfs_notify_work", scope: !9, file: !2, line: 979, type: !910, isLocal: true, isDefinition: true)
!9 = distinct !DISubprogram(name: "kernfs_notify", scope: !2, file: !2, line: 977, type: !10, scopeLine: 978, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4191)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !14, line: 190, size: 1152, elements: !15)
!14 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!15 = !{!16, !23, !24, !25, !28, !37, !40, !42, !3982, !3983, !3984, !3985, !3986, !4002}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !13, file: !14, line: 191, baseType: !17, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !18, line: 174, baseType: !19)
!18 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 172, size: 32, elements: !20)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !19, file: !18, line: 173, baseType: !22, size: 32)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !13, file: !14, line: 192, baseType: !17, size: 32, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !13, file: !14, line: 202, baseType: !12, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !13, file: !14, line: 203, baseType: !26, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !13, file: !14, line: 205, baseType: !29, size: 192, align: 64, offset: 192)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !30, line: 5, size: 192, align: 64, elements: !31)
!30 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!31 = !{!32, !34, !36}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !29, file: !30, line: 6, baseType: !33, size: 64)
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !29, file: !30, line: 7, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !29, file: !30, line: 8, baseType: !35, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !13, file: !14, line: 207, baseType: !38, size: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !13, file: !14, line: 208, baseType: !41, size: 32, offset: 448)
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, scope: !13, file: !14, line: 209, baseType: !43, size: 256, offset: 512)
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !13, file: !14, line: 209, size: 256, elements: !44)
!44 = !{!45, !3915, !3919}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !43, file: !14, line: 210, baseType: !46, size: 256)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !14, line: 153, size: 256, elements: !47)
!47 = !{!48, !49, !53, !3914}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !46, file: !14, line: 154, baseType: !33, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !46, file: !14, line: 156, baseType: !50, size: 64, offset: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !30, line: 12, size: 64, elements: !51)
!51 = !{!52}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !50, file: !30, line: 13, baseType: !35, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !46, file: !14, line: 162, baseType: !54, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !56, line: 34, size: 1856, elements: !57)
!56 = !DIFile(filename: "fs/kernfs/kernfs-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "32718b52ec0a489d6666a316c4c2b870")
!57 = !{!58, !59, !60, !113, !116, !117, !3908, !3909, !3910, !3911, !3912, !3913}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !55, file: !56, line: 36, baseType: !12, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !55, file: !56, line: 37, baseType: !41, size: 32, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !55, file: !56, line: 40, baseType: !61, size: 192, offset: 128)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !62, line: 19, size: 192, elements: !63)
!62 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!63 = !{!64, !111, !112}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !61, file: !62, line: 20, baseType: !65, size: 128)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !66, line: 296, size: 128, elements: !67)
!66 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!67 = !{!68, !107, !109}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !65, file: !66, line: 297, baseType: !69, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !70, line: 29, baseType: !71)
!70 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !70, line: 17, size: 32, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, scope: !71, file: !70, line: 18, baseType: !74, size: 32)
!74 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !71, file: !70, line: 18, size: 32, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !74, file: !70, line: 19, baseType: !77, size: 32)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !78, line: 14, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !77, file: !78, line: 15, baseType: !81, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !82, line: 44, baseType: !83)
!82 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !82, line: 14, size: 32, elements: !84)
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, scope: !83, file: !82, line: 15, baseType: !86, size: 32)
!86 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !82, line: 15, size: 32, elements: !87)
!87 = !{!88, !89, !99}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !86, file: !82, line: 16, baseType: !17, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !82, line: 24, baseType: !90, size: 16)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !86, file: !82, line: 24, size: 16, elements: !91)
!91 = !{!92, !98}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !90, file: !82, line: 25, baseType: !93, size: 8)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !94, line: 17, baseType: !95)
!94 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !96, line: 21, baseType: !97)
!96 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !90, file: !82, line: 26, baseType: !93, size: 8, offset: 8)
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !82, line: 28, baseType: !100, size: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !86, file: !82, line: 28, size: 32, elements: !101)
!101 = !{!102, !106}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !100, file: !82, line: 29, baseType: !103, size: 16)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !94, line: 19, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !96, line: 24, baseType: !105)
!105 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !100, file: !82, line: 30, baseType: !103, size: 16, offset: 16)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !65, file: !66, line: 299, baseType: !108, size: 32, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !18, line: 154, baseType: !41)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !65, file: !66, line: 300, baseType: !110, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !61, file: !62, line: 21, baseType: !41, size: 32, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !61, file: !62, line: 22, baseType: !41, size: 32, offset: 160)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !55, file: !56, line: 41, baseType: !114, size: 32, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !94, line: 21, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !96, line: 27, baseType: !41)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !55, file: !56, line: 42, baseType: !114, size: 32, offset: 352)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !55, file: !56, line: 43, baseType: !118, size: 64, offset: 384)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !14, line: 237, size: 320, elements: !120)
!120 = !{!121, !3892, !3896, !3900, !3904}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !119, file: !14, line: 238, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!22, !125, !54}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !127, line: 17, size: 960, elements: !128)
!127 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!128 = !{!129, !131, !136, !137, !138, !139, !143, !144, !170, !192, !193, !3891}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !126, file: !127, line: 18, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !126, file: !127, line: 19, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 61, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !134, line: 72, baseType: !135)
!134 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !134, line: 16, baseType: !33)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !126, file: !127, line: 20, baseType: !132, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !126, file: !127, line: 21, baseType: !132, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !126, file: !127, line: 22, baseType: !132, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !126, file: !127, line: 23, baseType: !140, size: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !18, line: 52, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !134, line: 88, baseType: !142)
!142 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !126, file: !127, line: 24, baseType: !140, size: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !126, file: !127, line: 25, baseType: !145, size: 256, offset: 448)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !146, line: 66, size: 256, elements: !147)
!146 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!147 = !{!148, !157, !159, !164}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !145, file: !146, line: 67, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !150, line: 13, baseType: !151)
!150 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !18, line: 181, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 179, size: 64, elements: !153)
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !152, file: !18, line: 180, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !94, line: 22, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !96, line: 30, baseType: !142)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !145, file: !146, line: 68, baseType: !158, size: 32, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !78, line: 23, baseType: !77)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !145, file: !146, line: 70, baseType: !160, size: 32, offset: 96)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !161, line: 15, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !160, file: !161, line: 20, baseType: !17, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !145, file: !146, line: 72, baseType: !165, size: 128, offset: 128)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !18, line: 190, size: 128, elements: !166)
!166 = !{!167, !169}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !165, file: !18, line: 191, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !165, file: !18, line: 191, baseType: !168, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !126, file: !127, line: 26, baseType: !171, size: 64, offset: 704)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !127, line: 32, size: 256, elements: !174)
!174 = !{!175, !180, !184, !188}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !173, file: !127, line: 33, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!110, !125, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !173, file: !127, line: 34, baseType: !181, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !125, !110}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !127, line: 35, baseType: !185, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!110, !125, !110, !179}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !173, file: !127, line: 36, baseType: !189, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!22, !125, !110}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !126, file: !127, line: 27, baseType: !22, size: 32, offset: 768)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !126, file: !127, line: 28, baseType: !194, size: 64, offset: 832)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !197, line: 994, size: 1856, align: 64, elements: !198)
!197 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!198 = !{!199, !218, !219, !221, !222, !223, !224, !225, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3888, !3889, !3890}
!199 = !DIDerivedType(tag: DW_TAG_member, scope: !196, file: !197, line: 995, baseType: !200, size: 128)
!200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !196, file: !197, line: 995, size: 128, elements: !201)
!201 = !{!202, !208, !217}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !200, file: !197, line: 996, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !204, line: 60, size: 64, elements: !205)
!204 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !203, file: !204, line: 61, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !200, file: !197, line: 997, baseType: !209, size: 128, align: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !18, line: 232, size: 128, align: 64, elements: !210)
!210 = !{!211, !213}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !209, file: !18, line: 233, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !209, file: !18, line: 234, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !212}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !200, file: !197, line: 998, baseType: !41, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !196, file: !197, line: 1005, baseType: !69, size: 32, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !196, file: !197, line: 1006, baseType: !220, size: 32, offset: 160)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !18, line: 156, baseType: !41)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !196, file: !197, line: 1007, baseType: !149, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !196, file: !197, line: 1008, baseType: !145, size: 256, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !196, file: !197, line: 1009, baseType: !140, size: 64, offset: 512)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !196, file: !197, line: 1010, baseType: !41, size: 32, offset: 576)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !196, file: !197, line: 1011, baseType: !226, size: 256, offset: 640)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !197, line: 948, size: 256, elements: !227)
!227 = !{!228, !251, !3867, !3875, !3876, !3877}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !226, file: !197, line: 949, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !230, line: 34, baseType: !231)
!230 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 25, size: 64, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !231, file: !230, line: 26, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !235, line: 27, baseType: !236)
!235 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !235, line: 13, size: 64, elements: !237)
!237 = !{!238, !250}
!238 = !DIDerivedType(tag: DW_TAG_member, scope: !236, file: !235, line: 14, baseType: !239, size: 32)
!239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !236, file: !235, line: 14, size: 32, elements: !240)
!240 = !{!241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !239, file: !235, line: 15, baseType: !17, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, scope: !239, file: !235, line: 16, baseType: !243, size: 32)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !239, file: !235, line: 16, size: 32, elements: !244)
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !243, file: !235, line: 18, baseType: !93, size: 8)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !243, file: !235, line: 19, baseType: !247, size: 24, offset: 8)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 24, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 3)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !236, file: !235, line: 26, baseType: !81, size: 32, offset: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !226, file: !197, line: 950, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !254, line: 59, size: 768, elements: !255)
!254 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!255 = !{!256, !262, !263, !264, !277, !278, !285, !286}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !253, file: !254, line: 61, baseType: !257, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !258, line: 113, baseType: !259)
!258 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !258, line: 111, size: 32, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !259, file: !258, line: 112, baseType: !17, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !253, file: !254, line: 62, baseType: !41, size: 32, offset: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !253, file: !254, line: 63, baseType: !69, size: 32, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !253, file: !254, line: 65, baseType: !265, size: 256, offset: 128)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 256, elements: !275)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !18, line: 194, size: 64, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !266, file: !18, line: 195, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !18, line: 198, size: 128, elements: !271)
!271 = !{!272, !273}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !18, line: 199, baseType: !269, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !270, file: !18, line: 199, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!275 = !{!276}
!276 = !DISubrange(count: 4)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !253, file: !254, line: 66, baseType: !266, size: 64, offset: 384)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !253, file: !254, line: 68, baseType: !279, size: 192, offset: 448)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !280, line: 41, baseType: !281)
!280 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !280, line: 37, size: 192, elements: !282)
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !281, file: !280, line: 38, baseType: !69, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !281, file: !280, line: 39, baseType: !165, size: 128, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !253, file: !254, line: 69, baseType: !209, size: 128, align: 64, offset: 640)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !253, file: !254, line: 70, baseType: !287, offset: 768)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, elements: !1056)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !254, line: 54, size: 128, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !288, file: !254, line: 55, baseType: !22, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !288, file: !254, line: 56, baseType: !292, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !294, line: 26, size: 1152, elements: !295)
!294 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!295 = !{!296, !297, !298, !299, !3853, !3857, !3858, !3859, !3862, !3863, !3864, !3865, !3866}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !293, file: !294, line: 27, baseType: !61, size: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !293, file: !294, line: 28, baseType: !209, size: 128, align: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !293, file: !294, line: 29, baseType: !41, size: 32, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !293, file: !294, line: 30, baseType: !300, size: 64, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !302, line: 746, size: 58368, elements: !303)
!302 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!303 = !{!304, !312, !313, !314, !315, !316, !317, !318, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !387, !398, !500, !504, !507, !538, !539, !540, !541, !552, !554, !555, !556, !557, !558, !559, !570, !571, !574, !575, !576, !577, !578, !579, !580, !581, !588, !589, !596, !597, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1148, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1163, !1164, !1165, !1166, !1168, !1169, !1170, !1171, !1172, !1173, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1197, !1203, !1273, !1274, !1275, !1276, !1280, !1283, !1290, !1295, !1298, !1301, !1304, !1330, !1475, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1517, !1518, !1519, !1528, !1536, !1537, !1538, !1539, !1540, !1545, !1546, !1547, !1550, !1551, !1554, !1557, !1560, !1568, !1571, !1572, !1659, !1660, !1661, !1662, !1663, !1669, !1670, !1671, !1672, !1675, !1676, !1679, !1682, !1683, !1686, !1687, !1688, !1691, !1692, !1693, !1696, !1697, !1698, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1730, !1733, !3505, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3517, !3595, !3597, !3598, !3599, !3600, !3601, !3613, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3630, !3631, !3632}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !301, file: !302, line: 752, baseType: !305, size: 192)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !306, line: 56, size: 192, elements: !307)
!306 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!307 = !{!308, !309, !310, !311}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !306, line: 57, baseType: !33, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !305, file: !306, line: 58, baseType: !33, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !305, file: !306, line: 59, baseType: !114, size: 32, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !305, file: !306, line: 61, baseType: !114, size: 32, offset: 160)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !301, file: !302, line: 754, baseType: !41, size: 32, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !301, file: !302, line: 767, baseType: !110, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !301, file: !302, line: 768, baseType: !257, size: 32, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !302, line: 770, baseType: !41, size: 32, offset: 352)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !301, file: !302, line: 771, baseType: !41, size: 32, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !301, file: !302, line: 774, baseType: !22, size: 32, offset: 416)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !301, file: !302, line: 775, baseType: !319, size: 128, offset: 448)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !320, line: 58, size: 128, elements: !321)
!320 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!321 = !{!322, !323, !328, !329}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !319, file: !320, line: 59, baseType: !203, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !319, file: !320, line: 60, baseType: !324, size: 32, offset: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !319, file: !320, line: 60, size: 32, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !324, file: !320, line: 61, baseType: !41, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !324, file: !320, line: 62, baseType: !17, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !319, file: !320, line: 65, baseType: !103, size: 16, offset: 96)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !319, file: !320, line: 65, baseType: !103, size: 16, offset: 112)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !301, file: !302, line: 776, baseType: !41, size: 32, offset: 576)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !301, file: !302, line: 777, baseType: !33, size: 64, offset: 640)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !301, file: !302, line: 778, baseType: !300, size: 64, offset: 704)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !301, file: !302, line: 787, baseType: !22, size: 32, offset: 768)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !301, file: !302, line: 788, baseType: !22, size: 32, offset: 800)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !301, file: !302, line: 790, baseType: !22, size: 32, offset: 832)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !301, file: !302, line: 792, baseType: !22, size: 32, offset: 864)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !301, file: !302, line: 793, baseType: !22, size: 32, offset: 896)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !301, file: !302, line: 794, baseType: !22, size: 32, offset: 928)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !301, file: !302, line: 795, baseType: !41, size: 32, offset: 960)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !301, file: !302, line: 797, baseType: !341, size: 2048, offset: 1024)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !302, line: 551, size: 2048, elements: !342)
!342 = !{!343, !348, !349, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !366, !369, !370, !371}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !341, file: !302, line: 553, baseType: !344, size: 128)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !302, line: 411, size: 128, elements: !345)
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !344, file: !302, line: 412, baseType: !33, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !344, file: !302, line: 413, baseType: !114, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !341, file: !302, line: 554, baseType: !29, size: 192, align: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !341, file: !302, line: 555, baseType: !350, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !94, line: 23, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !96, line: 31, baseType: !352)
!352 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !341, file: !302, line: 556, baseType: !350, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !341, file: !302, line: 558, baseType: !165, size: 128, offset: 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !341, file: !302, line: 559, baseType: !41, size: 32, offset: 576)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !341, file: !302, line: 561, baseType: !350, size: 64, offset: 640)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !341, file: !302, line: 562, baseType: !350, size: 64, offset: 704)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !341, file: !302, line: 563, baseType: !350, size: 64, offset: 768)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !341, file: !302, line: 564, baseType: !350, size: 64, offset: 832)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !341, file: !302, line: 565, baseType: !155, size: 64, offset: 896)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !341, file: !302, line: 566, baseType: !350, size: 64, offset: 960)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !341, file: !302, line: 568, baseType: !350, size: 64, offset: 1024)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !341, file: !302, line: 571, baseType: !22, size: 32, offset: 1088)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !341, file: !302, line: 572, baseType: !365, size: 64, offset: 1152)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !341, file: !302, line: 574, baseType: !367, size: 64, offset: 1216)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !302, line: 49, flags: DIFlagFwdDecl)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !341, file: !302, line: 576, baseType: !367, size: 64, offset: 1280)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !341, file: !302, line: 578, baseType: !33, size: 64, offset: 1344)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !341, file: !302, line: 588, baseType: !372, size: 512, align: 512, offset: 1536)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !302, line: 497, size: 512, align: 512, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381, !382}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !372, file: !302, line: 498, baseType: !350, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !372, file: !302, line: 499, baseType: !350, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !372, file: !302, line: 500, baseType: !350, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !372, file: !302, line: 501, baseType: !114, size: 32, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !372, file: !302, line: 502, baseType: !114, size: 32, offset: 224)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !372, file: !302, line: 503, baseType: !33, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !372, file: !302, line: 504, baseType: !33, size: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !372, file: !302, line: 505, baseType: !33, size: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !372, file: !302, line: 506, baseType: !383, size: 64, align: 64, offset: 448)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !302, line: 445, size: 64, align: 64, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !383, file: !302, line: 446, baseType: !41, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !383, file: !302, line: 447, baseType: !41, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !301, file: !302, line: 798, baseType: !388, size: 384, offset: 3072)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !302, line: 592, size: 384, elements: !389)
!389 = !{!390, !391, !392, !393, !394, !395, !396}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !388, file: !302, line: 593, baseType: !165, size: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !388, file: !302, line: 594, baseType: !33, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !388, file: !302, line: 595, baseType: !33, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !388, file: !302, line: 596, baseType: !41, size: 32, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !388, file: !302, line: 597, baseType: !105, size: 16, offset: 288)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !388, file: !302, line: 598, baseType: !105, size: 16, offset: 304)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !388, file: !302, line: 600, baseType: !397, size: 64, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !301, file: !302, line: 799, baseType: !399, size: 1792, offset: 3456)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !302, line: 610, size: 1792, elements: !400)
!400 = !{!401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !497, !498}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !399, file: !302, line: 611, baseType: !29, size: 192, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !399, file: !302, line: 618, baseType: !350, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !399, file: !302, line: 619, baseType: !350, size: 64, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !399, file: !302, line: 620, baseType: !350, size: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !399, file: !302, line: 621, baseType: !350, size: 64, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !399, file: !302, line: 622, baseType: !350, size: 64, offset: 448)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !399, file: !302, line: 629, baseType: !155, size: 64, offset: 512)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !399, file: !302, line: 630, baseType: !350, size: 64, offset: 576)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !399, file: !302, line: 631, baseType: !41, size: 32, offset: 640)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !399, file: !302, line: 653, baseType: !41, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !399, file: !302, line: 654, baseType: !41, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !399, file: !302, line: 655, baseType: !41, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !399, file: !302, line: 656, baseType: !41, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !399, file: !302, line: 662, baseType: !415, size: 512, offset: 704)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !416, line: 118, size: 512, elements: !417)
!416 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!417 = !{!418, !426, !427, !436, !493, !494, !495, !496}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !415, file: !416, line: 119, baseType: !419, size: 256)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !420, line: 9, size: 256, elements: !421)
!420 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !419, file: !420, line: 10, baseType: !29, size: 192, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !419, file: !420, line: 11, baseType: !424, size: 64, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !425, line: 29, baseType: !155)
!425 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !415, file: !416, line: 120, baseType: !424, size: 64, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !415, file: !416, line: 121, baseType: !428, size: 64, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!431, !435}
!431 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !416, line: 65, baseType: !41, size: 32, elements: !432)
!432 = !{!433, !434}
!433 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!434 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !415, file: !416, line: 122, baseType: !437, size: 64, offset: 384)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !416, line: 159, size: 512, align: 512, elements: !439)
!439 = !{!440, !465, !466, !469, !479, !480, !488, !492}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !438, file: !416, line: 160, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !416, line: 215, size: 4608, align: 512, elements: !443)
!443 = !{!444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !442, file: !416, line: 216, baseType: !158, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !442, file: !416, line: 217, baseType: !41, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !442, file: !416, line: 218, baseType: !41, size: 32, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !442, file: !416, line: 219, baseType: !41, size: 32, offset: 96)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !442, file: !416, line: 220, baseType: !41, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !442, file: !416, line: 221, baseType: !41, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !442, file: !416, line: 222, baseType: !41, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !442, file: !416, line: 223, baseType: !41, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !442, file: !416, line: 224, baseType: !41, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !442, file: !416, line: 226, baseType: !41, size: 32, offset: 160)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !442, file: !416, line: 227, baseType: !105, size: 16, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !442, file: !416, line: 228, baseType: !105, size: 16, offset: 208)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !442, file: !416, line: 229, baseType: !41, size: 32, offset: 224)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !442, file: !416, line: 235, baseType: !424, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !442, file: !416, line: 236, baseType: !435, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !442, file: !416, line: 237, baseType: !424, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !442, file: !416, line: 238, baseType: !435, size: 64, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !442, file: !416, line: 239, baseType: !462, size: 4096, align: 512, offset: 512)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 4096, align: 512, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 8)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !438, file: !416, line: 161, baseType: !41, size: 32, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !438, file: !416, line: 162, baseType: !467, size: 32, offset: 96)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !18, line: 32, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !134, line: 96, baseType: !22)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !438, file: !416, line: 163, baseType: !470, size: 32, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !471, line: 274, baseType: !472)
!471 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !471, line: 274, size: 32, elements: !473)
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !472, file: !471, line: 274, baseType: !475, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !471, line: 69, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !471, line: 64, size: 32, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !476, file: !471, line: 65, baseType: !41, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !438, file: !416, line: 164, baseType: !435, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !438, file: !416, line: 165, baseType: !481, size: 128, offset: 256)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !420, line: 14, size: 128, elements: !482)
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !481, file: !420, line: 15, baseType: !484, size: 128)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !30, line: 26, size: 128, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !484, file: !30, line: 27, baseType: !50, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !484, file: !30, line: 28, baseType: !35, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !438, file: !416, line: 166, baseType: !489, size: 64, offset: 384)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!424}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !438, file: !416, line: 167, baseType: !424, size: 64, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !415, file: !416, line: 123, baseType: !93, size: 8, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !415, file: !416, line: 124, baseType: !93, size: 8, offset: 456)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !415, file: !416, line: 125, baseType: !93, size: 8, offset: 464)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !415, file: !416, line: 126, baseType: !93, size: 8, offset: 472)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !399, file: !302, line: 671, baseType: !415, size: 512, offset: 1216)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !399, file: !302, line: 679, baseType: !499, size: 64, offset: 1728)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !301, file: !302, line: 800, baseType: !501, size: 64, offset: 5248)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!503 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !302, line: 800, flags: DIFlagFwdDecl)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !301, file: !302, line: 809, baseType: !505, size: 64, offset: 5312)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !302, line: 70, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !301, file: !302, line: 825, baseType: !508, size: 2048, align: 512, offset: 5632)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !302, line: 509, size: 2048, align: 512, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !508, file: !302, line: 511, baseType: !350, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !508, file: !302, line: 512, baseType: !350, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !508, file: !302, line: 513, baseType: !350, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !508, file: !302, line: 514, baseType: !350, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !508, file: !302, line: 515, baseType: !350, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !508, file: !302, line: 516, baseType: !350, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !508, file: !302, line: 518, baseType: !350, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !508, file: !302, line: 519, baseType: !350, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !508, file: !302, line: 520, baseType: !155, size: 64, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !508, file: !302, line: 522, baseType: !350, size: 64, offset: 576)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !508, file: !302, line: 523, baseType: !350, size: 64, offset: 640)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !508, file: !302, line: 524, baseType: !155, size: 64, offset: 704)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !508, file: !302, line: 526, baseType: !155, size: 64, offset: 768)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !508, file: !302, line: 527, baseType: !350, size: 64, offset: 832)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !508, file: !302, line: 529, baseType: !350, size: 64, offset: 896)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !508, file: !302, line: 530, baseType: !350, size: 64, offset: 960)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !508, file: !302, line: 531, baseType: !350, size: 64, offset: 1024)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !508, file: !302, line: 532, baseType: !350, size: 64, offset: 1088)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !508, file: !302, line: 533, baseType: !350, size: 64, offset: 1152)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !508, file: !302, line: 535, baseType: !350, size: 64, offset: 1216)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !508, file: !302, line: 536, baseType: !350, size: 64, offset: 1280)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !508, file: !302, line: 537, baseType: !350, size: 64, offset: 1344)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !508, file: !302, line: 538, baseType: !350, size: 64, offset: 1408)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !508, file: !302, line: 539, baseType: !350, size: 64, offset: 1472)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !508, file: !302, line: 540, baseType: !350, size: 64, offset: 1536)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !508, file: !302, line: 541, baseType: !350, size: 64, offset: 1600)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !508, file: !302, line: 542, baseType: !350, size: 64, offset: 1664)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !508, file: !302, line: 543, baseType: !350, size: 64, offset: 1728)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !301, file: !302, line: 833, baseType: !41, size: 32, offset: 7680)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !301, file: !302, line: 836, baseType: !41, size: 32, offset: 7712)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !301, file: !302, line: 837, baseType: !22, size: 32, offset: 7744)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !301, file: !302, line: 838, baseType: !542, size: 64, offset: 7808)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !545, line: 19, baseType: !546)
!545 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !545, line: 19, size: 64, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !546, file: !545, line: 19, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 64, elements: !550)
!550 = !{!551}
!551 = !DISubrange(count: 1)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !301, file: !302, line: 839, baseType: !553, size: 64, offset: 7872)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !301, file: !302, line: 840, baseType: !544, size: 64, offset: 7936)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !301, file: !302, line: 841, baseType: !110, size: 64, offset: 8000)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !301, file: !302, line: 843, baseType: !105, size: 16, offset: 8064)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !301, file: !302, line: 845, baseType: !105, size: 16, offset: 8080)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !301, file: !302, line: 848, baseType: !22, size: 32, offset: 8096)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !301, file: !302, line: 849, baseType: !560, size: 32, offset: 8128)
!560 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !302, line: 718, size: 32, elements: !561)
!561 = !{!562, !569}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !560, file: !302, line: 724, baseType: !563, size: 32)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !560, file: !302, line: 719, size: 32, elements: !564)
!564 = !{!565, !566, !567, !568}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !563, file: !302, line: 720, baseType: !93, size: 8)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !563, file: !302, line: 721, baseType: !93, size: 8, offset: 8)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !563, file: !302, line: 722, baseType: !93, size: 8, offset: 16)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !563, file: !302, line: 723, baseType: !93, size: 8, offset: 24)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !560, file: !302, line: 725, baseType: !114, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !301, file: !302, line: 850, baseType: !165, size: 128, offset: 8192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !301, file: !302, line: 851, baseType: !572, size: 64, offset: 8320)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !302, line: 60, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !301, file: !302, line: 855, baseType: !33, size: 64, offset: 8384)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !301, file: !302, line: 856, baseType: !93, size: 8, offset: 8448)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !301, file: !302, line: 857, baseType: !93, size: 8, offset: 8456)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !301, file: !302, line: 858, baseType: !22, size: 32, offset: 8480)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !301, file: !302, line: 859, baseType: !165, size: 128, offset: 8512)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !301, file: !302, line: 860, baseType: !22, size: 32, offset: 8640)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !301, file: !302, line: 861, baseType: !165, size: 128, offset: 8704)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !301, file: !302, line: 873, baseType: !582, size: 256, offset: 8832)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !302, line: 376, size: 256, elements: !583)
!583 = !{!584, !585, !586, !587}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !582, file: !302, line: 381, baseType: !33, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !582, file: !302, line: 384, baseType: !352, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !582, file: !302, line: 389, baseType: !352, size: 64, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !582, file: !302, line: 392, baseType: !352, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !301, file: !302, line: 875, baseType: !165, size: 128, offset: 9088)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !301, file: !302, line: 877, baseType: !590, size: 320, offset: 9216)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !591, line: 86, size: 320, elements: !592)
!591 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!592 = !{!593, !594, !595}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !590, file: !591, line: 87, baseType: !22, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !590, file: !591, line: 88, baseType: !165, size: 128, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !590, file: !591, line: 89, baseType: !165, size: 128, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !301, file: !302, line: 878, baseType: !29, size: 192, align: 64, offset: 9536)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !301, file: !302, line: 881, baseType: !598, size: 64, offset: 9728)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !600, line: 733, size: 10240, elements: !601)
!600 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!601 = !{!602, !1054}
!602 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !600, line: 734, baseType: !603, size: 10240)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !599, file: !600, line: 734, size: 10240, elements: !604)
!604 = !{!605, !609, !623, !628, !629, !630, !631, !632, !633, !642, !643, !644, !650, !651, !652, !653, !654, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !691, !703, !706, !731, !732, !733, !736, !1039, !1040, !1043, !1044, !1045, !1052, !1053}
!605 = !DIDerivedType(tag: DW_TAG_member, scope: !603, file: !600, line: 739, baseType: !606, size: 512, align: 512)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !603, file: !600, line: 739, size: 512, align: 512, elements: !607)
!607 = !{!608}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !606, file: !600, line: 747, baseType: !17, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !603, file: !600, line: 750, baseType: !610, size: 128, offset: 512)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !611, line: 218, size: 128, elements: !612)
!611 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!612 = !{!613, !621, !622}
!613 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !611, line: 219, baseType: !614, size: 32)
!614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !611, line: 219, size: 32, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !614, file: !611, line: 220, baseType: !69, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !614, file: !611, line: 221, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !611, line: 197, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !611, line: 197, elements: !620)
!620 = !{}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !610, file: !611, line: 223, baseType: !41, size: 32, offset: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !610, file: !611, line: 224, baseType: !110, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !603, file: !600, line: 752, baseType: !624, size: 64, offset: 640)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!33, !627, !33, !33, !33, !33}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !603, file: !600, line: 756, baseType: !33, size: 64, offset: 704)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !603, file: !600, line: 757, baseType: !33, size: 64, offset: 768)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !603, file: !600, line: 760, baseType: !33, size: 64, offset: 832)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !603, file: !600, line: 761, baseType: !33, size: 64, offset: 896)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !603, file: !600, line: 763, baseType: !33, size: 64, offset: 960)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !603, file: !600, line: 764, baseType: !634, size: 64, offset: 1024)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !636, line: 299, baseType: !637)
!636 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !636, line: 299, size: 64, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !637, file: !636, line: 299, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !641, line: 18, baseType: !33)
!641 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!642 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !603, file: !600, line: 773, baseType: !17, size: 32, offset: 1088)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !603, file: !600, line: 785, baseType: !17, size: 32, offset: 1120)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !603, file: !600, line: 795, baseType: !645, size: 64, offset: 1152)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !600, line: 726, size: 128, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !646, file: !600, line: 727, baseType: !350, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !646, file: !600, line: 728, baseType: !22, size: 32, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !603, file: !600, line: 801, baseType: !33, size: 64, offset: 1216)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !603, file: !600, line: 804, baseType: !149, size: 64, offset: 1280)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !603, file: !600, line: 806, baseType: !22, size: 32, offset: 1344)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !603, file: !600, line: 808, baseType: !69, size: 32, offset: 1376)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !603, file: !600, line: 823, baseType: !655, size: 320, offset: 1408)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !656, line: 48, size: 320, elements: !657)
!656 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!657 = !{!658, !659, !660, !661, !662}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !655, file: !656, line: 49, baseType: !149, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !655, file: !656, line: 55, baseType: !149, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !655, file: !656, line: 57, baseType: !160, size: 32, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !655, file: !656, line: 59, baseType: !158, size: 32, offset: 160)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !655, file: !656, line: 60, baseType: !165, size: 128, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !603, file: !600, line: 825, baseType: !165, size: 128, offset: 1728)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !603, file: !600, line: 845, baseType: !22, size: 32, offset: 1856)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !603, file: !600, line: 849, baseType: !33, size: 64, offset: 1920)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !603, file: !600, line: 850, baseType: !33, size: 64, offset: 1984)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !603, file: !600, line: 852, baseType: !33, size: 64, offset: 2048)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !603, file: !600, line: 853, baseType: !33, size: 64, offset: 2112)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !603, file: !600, line: 854, baseType: !151, size: 64, offset: 2176)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !603, file: !600, line: 855, baseType: !33, size: 64, offset: 2240)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !603, file: !600, line: 856, baseType: !33, size: 64, offset: 2304)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !603, file: !600, line: 857, baseType: !33, size: 64, offset: 2368)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !603, file: !600, line: 858, baseType: !33, size: 64, offset: 2432)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !603, file: !600, line: 865, baseType: !475, size: 32, offset: 2496)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !603, file: !600, line: 867, baseType: !69, size: 32, offset: 2528)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !603, file: !600, line: 869, baseType: !33, size: 64, offset: 2560)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !603, file: !600, line: 869, baseType: !33, size: 64, offset: 2624)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !603, file: !600, line: 869, baseType: !33, size: 64, offset: 2688)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !603, file: !600, line: 869, baseType: !33, size: 64, offset: 2752)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !603, file: !600, line: 870, baseType: !33, size: 64, offset: 2816)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !603, file: !600, line: 870, baseType: !33, size: 64, offset: 2880)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !603, file: !600, line: 870, baseType: !33, size: 64, offset: 2944)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !603, file: !600, line: 871, baseType: !33, size: 64, offset: 3008)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !603, file: !600, line: 871, baseType: !33, size: 64, offset: 3072)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !603, file: !600, line: 871, baseType: !33, size: 64, offset: 3136)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !603, file: !600, line: 871, baseType: !33, size: 64, offset: 3200)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !603, file: !600, line: 873, baseType: !688, size: 3328, offset: 3264)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 3328, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 52)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !603, file: !600, line: 875, baseType: !692, size: 1280, offset: 6592)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 1280, elements: !275)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !694, line: 22, size: 320, elements: !695)
!694 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!695 = !{!696, !697, !698, !699}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !693, file: !694, line: 23, baseType: !158, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !693, file: !694, line: 24, baseType: !155, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !693, file: !694, line: 26, baseType: !165, size: 128, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !693, file: !694, line: 28, baseType: !700, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !94, line: 20, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !96, line: 26, baseType: !22)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !603, file: !600, line: 877, baseType: !704, size: 64, offset: 7872)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !600, line: 877, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !603, file: !600, line: 880, baseType: !707, size: 1088, offset: 7936)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !708, line: 72, baseType: !709)
!708 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !708, line: 23, size: 1088, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !718, !719, !720, !721, !725, !726, !727}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !709, file: !708, line: 28, baseType: !350, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !709, file: !708, line: 38, baseType: !151, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !709, file: !708, line: 40, baseType: !33, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !709, file: !708, line: 43, baseType: !655, size: 320, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !709, file: !708, line: 44, baseType: !716, size: 64, offset: 512)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !708, line: 44, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !708, line: 48, baseType: !33, size: 64, offset: 576)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !709, file: !708, line: 59, baseType: !145, size: 256, offset: 640)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !709, file: !708, line: 60, baseType: !110, size: 64, offset: 896)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !709, file: !708, line: 61, baseType: !722, size: 64, offset: 960)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !708, line: 61, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !709, file: !708, line: 63, baseType: !17, size: 32, offset: 1024)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !709, file: !708, line: 69, baseType: !103, size: 16, offset: 1056)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !709, file: !708, line: 70, baseType: !728, size: 16, offset: 1072)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !94, line: 18, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !96, line: 23, baseType: !730)
!730 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !603, file: !600, line: 882, baseType: !33, size: 64, offset: 9024)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !603, file: !600, line: 885, baseType: !69, size: 32, offset: 9088)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !603, file: !600, line: 886, baseType: !734, size: 64, offset: 9152)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !600, line: 732, flags: DIFlagFwdDecl)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !603, file: !600, line: 901, baseType: !737, size: 64, offset: 9216)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !739, line: 68, size: 4800, elements: !740)
!739 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!740 = !{!741, !763, !764, !765, !766, !767, !775, !782, !793, !794, !797, !798, !908, !909, !921, !1019, !1020, !1034, !1037}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !738, file: !739, line: 69, baseType: !742, size: 576)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !739, line: 23, size: 576, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !742, file: !739, line: 24, baseType: !114, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !739, line: 25, baseType: !746, size: 512, offset: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !742, file: !739, line: 25, size: 512, elements: !747)
!747 = !{!748, !757}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !746, file: !739, line: 26, baseType: !749, size: 480)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !750, size: 480, elements: !755)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !739, line: 17, size: 96, elements: !751)
!751 = !{!752, !753, !754}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !750, file: !739, line: 18, baseType: !114, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !750, file: !739, line: 19, baseType: !114, size: 32, offset: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !750, file: !739, line: 20, baseType: !114, size: 32, offset: 64)
!755 = !{!756}
!756 = !DISubrange(count: 5)
!757 = !DIDerivedType(tag: DW_TAG_member, scope: !746, file: !739, line: 27, baseType: !758, size: 128)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !746, file: !739, line: 27, size: 128, elements: !759)
!759 = !{!760, !762}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !758, file: !739, line: 28, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !758, file: !739, line: 29, baseType: !761, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !738, file: !739, line: 70, baseType: !742, size: 576, offset: 576)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !738, file: !739, line: 71, baseType: !742, size: 576, offset: 1152)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !738, file: !739, line: 72, baseType: !737, size: 64, offset: 1728)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !738, file: !739, line: 73, baseType: !22, size: 32, offset: 1792)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !738, file: !739, line: 74, baseType: !768, size: 32, offset: 1824)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !769, line: 23, baseType: !770)
!769 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !769, line: 21, size: 32, elements: !771)
!771 = !{!772}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !770, file: !769, line: 22, baseType: !773, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !18, line: 37, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !134, line: 49, baseType: !41)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !738, file: !739, line: 75, baseType: !776, size: 32, offset: 1856)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !769, line: 28, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !769, line: 26, size: 32, elements: !778)
!778 = !{!779}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !777, file: !769, line: 27, baseType: !780, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !18, line: 38, baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !134, line: 50, baseType: !41)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !738, file: !739, line: 76, baseType: !783, size: 192, offset: 1920)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !784, line: 9, size: 192, elements: !785)
!784 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!785 = !{!786, !787, !791, !792}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !783, file: !784, line: 10, baseType: !149, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !783, file: !784, line: 11, baseType: !788, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !784, line: 7, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !783, file: !784, line: 12, baseType: !41, size: 32, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !783, file: !784, line: 13, baseType: !257, size: 32, offset: 160)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !738, file: !739, line: 77, baseType: !33, size: 64, offset: 2112)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !738, file: !739, line: 80, baseType: !795, size: 8, offset: 2176)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !18, line: 35, baseType: !796)
!796 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !738, file: !739, line: 88, baseType: !165, size: 128, offset: 2240)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !738, file: !739, line: 89, baseType: !799, size: 64, offset: 2368)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !801, line: 195, size: 1728, elements: !802)
!801 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!802 = !{!803, !804, !807, !812, !813, !816, !817, !824, !825, !826, !827, !830, !831, !832, !833, !834, !872, !893}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !800, file: !801, line: 196, baseType: !257, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !800, file: !801, line: 197, baseType: !805, size: 32, offset: 32)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !801, line: 28, baseType: !806)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !18, line: 104, baseType: !701)
!807 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !801, line: 198, baseType: !808, size: 192, offset: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !801, line: 198, size: 192, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !808, file: !801, line: 199, baseType: !165, size: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !808, file: !801, line: 200, baseType: !29, size: 192, align: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !800, file: !801, line: 205, baseType: !655, size: 320, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !800, file: !801, line: 206, baseType: !814, size: 64, offset: 576)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !801, line: 206, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !800, file: !801, line: 207, baseType: !110, size: 64, offset: 640)
!817 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !801, line: 208, baseType: !818, size: 64, offset: 704)
!818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !801, line: 208, size: 64, elements: !819)
!819 = !{!820, !823}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !818, file: !801, line: 209, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !822, line: 8, baseType: !156)
!822 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!823 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !818, file: !801, line: 210, baseType: !821, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !800, file: !801, line: 212, baseType: !821, size: 64, offset: 768)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !800, file: !801, line: 213, baseType: !768, size: 32, offset: 832)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !800, file: !801, line: 214, baseType: !776, size: 32, offset: 864)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !800, file: !801, line: 215, baseType: !828, size: 32, offset: 896)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !801, line: 31, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !18, line: 110, baseType: !114)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !800, file: !801, line: 216, baseType: !105, size: 16, offset: 928)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !800, file: !801, line: 217, baseType: !105, size: 16, offset: 944)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !800, file: !801, line: 221, baseType: !730, size: 16, offset: 960)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !800, file: !801, line: 228, baseType: !33, size: 64, offset: 1024)
!834 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !801, line: 245, baseType: !835, size: 320, offset: 1088)
!835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !801, line: 245, size: 320, elements: !836)
!836 = !{!837, !864}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !835, file: !801, line: 246, baseType: !838, size: 320)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !801, line: 114, size: 320, elements: !839)
!839 = !{!840, !841, !853, !856, !863}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !838, file: !801, line: 116, baseType: !33, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, scope: !838, file: !801, line: 117, baseType: !842, size: 64, offset: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !838, file: !801, line: 117, size: 64, elements: !843)
!843 = !{!844, !852}
!844 = !DIDerivedType(tag: DW_TAG_member, scope: !842, file: !801, line: 118, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !842, file: !801, line: 118, size: 64, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !845, file: !801, line: 120, baseType: !103, size: 16)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !845, file: !801, line: 121, baseType: !849, size: 48, offset: 16)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !850)
!850 = !{!851}
!851 = !DISubrange(count: 6)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !842, file: !801, line: 127, baseType: !33, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !838, file: !801, line: 129, baseType: !854, size: 64, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !801, line: 102, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !838, file: !801, line: 130, baseType: !857, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !801, line: 108, size: 192, elements: !859)
!859 = !{!860, !861, !862}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !858, file: !801, line: 109, baseType: !209, size: 128, align: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !858, file: !801, line: 110, baseType: !257, size: 32, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !858, file: !801, line: 111, baseType: !795, size: 8, offset: 160)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !838, file: !801, line: 131, baseType: !26, size: 64, offset: 256)
!864 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !801, line: 247, baseType: !865, size: 320)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !835, file: !801, line: 247, size: 320, elements: !866)
!866 = !{!867, !868, !869, !870, !871}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !865, file: !801, line: 248, baseType: !33, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !865, file: !801, line: 249, baseType: !33, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !865, file: !801, line: 250, baseType: !854, size: 64, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !865, file: !801, line: 251, baseType: !857, size: 64, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !865, file: !801, line: 252, baseType: !130, size: 64, offset: 256)
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !801, line: 260, baseType: !873, size: 256, offset: 1408)
!873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !801, line: 260, size: 256, elements: !874)
!874 = !{!875, !881}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !873, file: !801, line: 261, baseType: !876, size: 256)
!876 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !801, line: 134, size: 256, elements: !877)
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !876, file: !801, line: 135, baseType: !110, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !876, file: !801, line: 136, baseType: !880, size: 256)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 256, elements: !275)
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !801, line: 262, baseType: !882, size: 256)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !801, line: 262, size: 256, elements: !883)
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !882, file: !801, line: 264, baseType: !165, size: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !882, file: !801, line: 265, baseType: !886, size: 128, offset: 128)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !887, line: 22, size: 128, elements: !888)
!887 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!888 = !{!889, !892}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !886, file: !887, line: 23, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !887, line: 23, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !886, file: !887, line: 24, baseType: !33, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !800, file: !801, line: 280, baseType: !894, size: 64, offset: 1664)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !801, line: 176, size: 192, elements: !896)
!896 = !{!897, !906, !907}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !895, file: !801, line: 177, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !801, line: 171, baseType: !899)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!22, !799, !902, !904, !799}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !855)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !876)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !895, file: !801, line: 178, baseType: !799, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !895, file: !801, line: 179, baseType: !854, size: 64, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !738, file: !739, line: 90, baseType: !655, size: 320, offset: 2432)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !738, file: !739, line: 97, baseType: !910, size: 256, offset: 2752)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !911, line: 98, size: 256, elements: !912)
!911 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!912 = !{!913, !914, !915}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !910, file: !911, line: 99, baseType: !149, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !910, file: !911, line: 100, baseType: !165, size: 128, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !910, file: !911, line: 101, baseType: !916, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !911, line: 21, baseType: !917)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !920}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !738, file: !739, line: 99, baseType: !922, size: 768, offset: 3008)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !923, line: 199, size: 768, elements: !924)
!923 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!924 = !{!925, !930}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !922, file: !923, line: 200, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!22, !929}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !922, file: !923, line: 201, baseType: !931, size: 704, offset: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !923, line: 193, size: 704, elements: !932)
!932 = !{!933, !1018}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !931, file: !923, line: 195, baseType: !934, size: 640)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !923, line: 173, size: 640, elements: !935)
!935 = !{!936, !975, !987, !988, !1008, !1009, !1011, !1017}
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !934, file: !923, line: 174, baseType: !937, size: 192)
!937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !934, file: !923, line: 174, size: 192, elements: !938)
!938 = !{!939, !974}
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !937, file: !923, line: 175, baseType: !940, size: 192)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !937, file: !923, line: 175, size: 192, elements: !941)
!941 = !{!942, !970, !971, !972, !973}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !940, file: !923, line: 176, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !923, line: 135, size: 512, elements: !945)
!945 = !{!946, !947, !948, !949, !951, !956, !962, !968, !969}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !944, file: !923, line: 136, baseType: !26, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !944, file: !923, line: 137, baseType: !110, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !944, file: !923, line: 138, baseType: !22, size: 32, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !944, file: !923, line: 139, baseType: !950, size: 16, offset: 160)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !18, line: 24, baseType: !105)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !944, file: !923, line: 150, baseType: !952, size: 32, offset: 192)
!952 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !944, file: !923, line: 147, baseType: !41, size: 32, elements: !953)
!953 = !{!954, !955}
!954 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!955 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !944, file: !923, line: 151, baseType: !957, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !923, line: 64, baseType: !959)
!959 = !DISubroutineType(types: !960)
!960 = !{!22, !943, !22, !110, !961, !179}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !944, file: !923, line: 152, baseType: !963, size: 64, offset: 320)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !923, line: 117, size: 256, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !964, file: !923, line: 118, baseType: !17, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !964, file: !923, line: 119, baseType: !279, size: 192, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !944, file: !923, line: 153, baseType: !110, size: 64, offset: 384)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !944, file: !923, line: 154, baseType: !110, size: 64, offset: 448)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !940, file: !923, line: 177, baseType: !22, size: 32, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !940, file: !923, line: 178, baseType: !22, size: 32, offset: 96)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !940, file: !923, line: 179, baseType: !22, size: 32, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !940, file: !923, line: 180, baseType: !22, size: 32, offset: 160)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !937, file: !923, line: 182, baseType: !209, size: 128, align: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !934, file: !923, line: 184, baseType: !976, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !978, line: 26, size: 256, elements: !979)
!978 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !977, file: !978, line: 27, baseType: !41, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !977, file: !978, line: 28, baseType: !982, size: 192, offset: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !983, line: 43, size: 192, elements: !984)
!983 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !982, file: !983, line: 44, baseType: !158, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !982, file: !983, line: 45, baseType: !165, size: 128, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !934, file: !923, line: 185, baseType: !943, size: 64, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !934, file: !923, line: 186, baseType: !989, size: 64, offset: 320)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !923, line: 204, size: 960, elements: !991)
!991 = !{!992, !993, !997, !1004}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !990, file: !923, line: 205, baseType: !922, size: 768)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !990, file: !923, line: 206, baseType: !994, size: 64, offset: 768)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!929, !989}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !990, file: !923, line: 207, baseType: !998, size: 64, offset: 832)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !990, file: !923, line: 209, baseType: !1005, size: 64, offset: 896)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!22, !1001, !943}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !934, file: !923, line: 187, baseType: !929, size: 64, offset: 384)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !934, file: !923, line: 188, baseType: !1010, size: 64, offset: 448)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !934, file: !923, line: 189, baseType: !1012, size: 64, offset: 512)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !923, line: 157, size: 256, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1013, file: !923, line: 158, baseType: !29, size: 192, align: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1013, file: !923, line: 159, baseType: !1001, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !934, file: !923, line: 190, baseType: !266, size: 64, offset: 576)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !931, file: !923, line: 196, baseType: !50, size: 64, offset: 640)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !738, file: !739, line: 100, baseType: !1001, size: 64, offset: 3776)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !738, file: !739, line: 102, baseType: !1021, size: 64, offset: 3840)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !739, line: 107, size: 1152, elements: !1023)
!1023 = !{!1024, !1025, !1026, !1027, !1028, !1032}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1022, file: !739, line: 108, baseType: !270, size: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1022, file: !739, line: 109, baseType: !737, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1022, file: !739, line: 110, baseType: !768, size: 32, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1022, file: !739, line: 111, baseType: !17, size: 32, offset: 224)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1022, file: !739, line: 112, baseType: !1029, size: 640, offset: 256)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 640, elements: !1030)
!1030 = !{!1031}
!1031 = !DISubrange(count: 10)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1022, file: !739, line: 113, baseType: !1033, size: 256, offset: 896)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 256, elements: !275)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !738, file: !739, line: 103, baseType: !1035, size: 640, offset: 3904)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1036, size: 640, elements: !1030)
!1036 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !738, file: !739, line: 104, baseType: !1038, size: 256, offset: 4544)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1036, size: 256, elements: !275)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !603, file: !600, line: 904, baseType: !627, size: 64, offset: 9280)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !603, file: !600, line: 906, baseType: !1041, size: 64, offset: 9344)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !600, line: 906, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !603, file: !600, line: 930, baseType: !17, size: 32, offset: 9408)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !603, file: !600, line: 933, baseType: !17, size: 32, offset: 9440)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !603, file: !600, line: 935, baseType: !1046, size: 64, offset: 9472)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1047, line: 103, size: 64, elements: !1048)
!1047 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1046, file: !1047, line: 104, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !1047, line: 101, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !603, file: !600, line: 940, baseType: !149, size: 64, offset: 9536)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !603, file: !600, line: 942, baseType: !910, size: 256, offset: 9600)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !599, file: !600, line: 986, baseType: !1055, offset: 10240)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, elements: !1056)
!1056 = !{!1057}
!1057 = !DISubrange(count: -1)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !301, file: !302, line: 882, baseType: !598, size: 64, offset: 9792)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !301, file: !302, line: 884, baseType: !22, size: 32, offset: 9856)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !301, file: !302, line: 885, baseType: !22, size: 32, offset: 9888)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !301, file: !302, line: 886, baseType: !22, size: 32, offset: 9920)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !301, file: !302, line: 888, baseType: !22, size: 32, offset: 9952)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !301, file: !302, line: 890, baseType: !33, size: 64, offset: 9984)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !301, file: !302, line: 893, baseType: !41, size: 32, offset: 10048)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !301, file: !302, line: 896, baseType: !41, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !301, file: !302, line: 897, baseType: !41, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !301, file: !302, line: 898, baseType: !41, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !301, file: !302, line: 899, baseType: !41, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !301, file: !302, line: 919, baseType: !41, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !301, file: !302, line: 922, baseType: !41, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !301, file: !302, line: 923, baseType: !41, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !301, file: !302, line: 925, baseType: !41, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !301, file: !302, line: 939, baseType: !41, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !301, file: !302, line: 941, baseType: !41, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !301, file: !302, line: 944, baseType: !41, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !301, file: !302, line: 956, baseType: !41, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !301, file: !302, line: 962, baseType: !41, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !301, file: !302, line: 966, baseType: !41, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !301, file: !302, line: 969, baseType: !33, size: 64, offset: 10176)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !301, file: !302, line: 971, baseType: !1081, size: 448, offset: 10240)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !1082, line: 25, size: 448, elements: !1083)
!1082 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!1083 = !{!1084, !1085, !1090}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1081, file: !1082, line: 26, baseType: !33, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1081, file: !1082, line: 27, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!1036, !1089}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !1082, line: 28, baseType: !1091, size: 320, offset: 128)
!1091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1081, file: !1082, line: 28, size: 320, elements: !1092)
!1092 = !{!1093, !1103, !1133}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1091, file: !1082, line: 37, baseType: !1094, size: 320)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !1082, line: 30, size: 320, elements: !1095)
!1095 = !{!1096, !1098, !1099, !1100, !1101, !1102}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1094, file: !1082, line: 31, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1094, file: !1082, line: 32, baseType: !114, size: 32, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1094, file: !1082, line: 33, baseType: !114, size: 32, offset: 96)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1094, file: !1082, line: 34, baseType: !114, size: 32, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1094, file: !1082, line: 35, baseType: !350, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1094, file: !1082, line: 36, baseType: !1097, size: 64, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1091, file: !1082, line: 47, baseType: !1104, size: 192)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !1082, line: 39, size: 192, elements: !1105)
!1105 = !{!1106, !1107, !1113, !1132}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1104, file: !1082, line: 40, baseType: !467, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1104, file: !1082, line: 41, baseType: !1108, size: 32, offset: 32)
!1108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !1082, line: 16, baseType: !41, size: 32, elements: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DIEnumerator(name: "TT_NONE", value: 0)
!1111 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!1112 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!1113 = !DIDerivedType(tag: DW_TAG_member, scope: !1104, file: !1082, line: 42, baseType: !1114, size: 64, offset: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1104, file: !1082, line: 42, size: 64, elements: !1115)
!1115 = !{!1116, !1124}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1114, file: !1082, line: 43, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1119, line: 7, size: 128, elements: !1120)
!1119 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1120 = !{!1121, !1123}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1118, file: !1119, line: 8, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !134, line: 93, baseType: !142)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1118, file: !1119, line: 9, baseType: !142, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1114, file: !1082, line: 44, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1127, line: 7, size: 64, elements: !1128)
!1127 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1128 = !{!1129, !1131}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1126, file: !1127, line: 8, baseType: !1130, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1127, line: 5, baseType: !701)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1126, file: !1127, line: 9, baseType: !701, size: 32, offset: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1104, file: !1082, line: 46, baseType: !350, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1091, file: !1082, line: 55, baseType: !1134, size: 256)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !1082, line: 49, size: 256, elements: !1135)
!1135 = !{!1136, !1144, !1145, !1146, !1147}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1134, file: !1082, line: 50, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1139, line: 36, size: 64, elements: !1140)
!1139 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1140 = !{!1141, !1142, !1143}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1138, file: !1139, line: 37, baseType: !22, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1138, file: !1139, line: 38, baseType: !730, size: 16, offset: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1138, file: !1139, line: 39, baseType: !730, size: 16, offset: 48)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1134, file: !1082, line: 51, baseType: !22, size: 32, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1134, file: !1082, line: 52, baseType: !22, size: 32, offset: 96)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1134, file: !1082, line: 53, baseType: !33, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1134, file: !1082, line: 54, baseType: !33, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !301, file: !302, line: 973, baseType: !1149, size: 32, offset: 10688)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !18, line: 27, baseType: !1150)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !134, line: 28, baseType: !22)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !301, file: !302, line: 974, baseType: !1149, size: 32, offset: 10720)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !301, file: !302, line: 978, baseType: !33, size: 64, offset: 10752)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !301, file: !302, line: 987, baseType: !300, size: 64, offset: 10816)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !301, file: !302, line: 990, baseType: !300, size: 64, offset: 10880)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !301, file: !302, line: 995, baseType: !165, size: 128, offset: 10944)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !301, file: !302, line: 996, baseType: !165, size: 128, offset: 11072)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !301, file: !302, line: 997, baseType: !300, size: 64, offset: 11200)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !301, file: !302, line: 1005, baseType: !165, size: 128, offset: 11264)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !301, file: !302, line: 1006, baseType: !165, size: 128, offset: 11392)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !301, file: !302, line: 1009, baseType: !252, size: 64, offset: 11520)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !301, file: !302, line: 1010, baseType: !1162, size: 512, offset: 11584)
!1162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 512, elements: !275)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !301, file: !302, line: 1011, baseType: !165, size: 128, offset: 12096)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !301, file: !302, line: 1012, baseType: !165, size: 128, offset: 12224)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !301, file: !302, line: 1014, baseType: !976, size: 64, offset: 12352)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !301, file: !302, line: 1017, baseType: !1167, size: 64, offset: 12416)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !301, file: !302, line: 1020, baseType: !1167, size: 64, offset: 12480)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !301, file: !302, line: 1023, baseType: !110, size: 64, offset: 12544)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !301, file: !302, line: 1025, baseType: !350, size: 64, offset: 12608)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !301, file: !302, line: 1026, baseType: !350, size: 64, offset: 12672)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !301, file: !302, line: 1031, baseType: !350, size: 64, offset: 12736)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !301, file: !302, line: 1032, baseType: !1174, size: 192, offset: 12800)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !302, line: 324, size: 192, elements: !1175)
!1175 = !{!1176, !1177, !1178}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1174, file: !302, line: 326, baseType: !350, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1174, file: !302, line: 327, baseType: !350, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1174, file: !302, line: 328, baseType: !158, size: 32, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !301, file: !302, line: 1041, baseType: !33, size: 64, offset: 12992)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !301, file: !302, line: 1042, baseType: !33, size: 64, offset: 13056)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !301, file: !302, line: 1045, baseType: !350, size: 64, offset: 13120)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !301, file: !302, line: 1048, baseType: !350, size: 64, offset: 13184)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !301, file: !302, line: 1051, baseType: !33, size: 64, offset: 13248)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !301, file: !302, line: 1052, baseType: !33, size: 64, offset: 13312)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !301, file: !302, line: 1055, baseType: !1186, size: 640, offset: 13376)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1187, line: 132, size: 640, elements: !1188)
!1187 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1188 = !{!1189, !1195, !1196}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1186, file: !1187, line: 133, baseType: !1190, size: 576)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1191, size: 576, elements: !248)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1187, line: 117, size: 192, elements: !1192)
!1192 = !{!1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1191, file: !1187, line: 118, baseType: !350, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1191, file: !1187, line: 119, baseType: !481, size: 128, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1186, file: !1187, line: 134, baseType: !41, size: 32, offset: 576)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1186, file: !1187, line: 135, baseType: !41, size: 32, offset: 608)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !301, file: !302, line: 1058, baseType: !1198, size: 448, offset: 14016)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1187, line: 144, size: 448, elements: !1199)
!1199 = !{!1200, !1201, !1202}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1198, file: !1187, line: 145, baseType: !209, size: 128, align: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1198, file: !1187, line: 146, baseType: !145, size: 256, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1198, file: !1187, line: 147, baseType: !41, size: 32, offset: 384)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !301, file: !302, line: 1064, baseType: !1204, size: 64, offset: 14464)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1206)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1207, line: 110, size: 1472, elements: !1208)
!1207 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1258, !1259, !1260, !1268}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1206, file: !1207, line: 111, baseType: !149, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1206, file: !1207, line: 112, baseType: !768, size: 32, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1206, file: !1207, line: 113, baseType: !776, size: 32, offset: 96)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1206, file: !1207, line: 114, baseType: !768, size: 32, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1206, file: !1207, line: 115, baseType: !776, size: 32, offset: 160)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1206, file: !1207, line: 116, baseType: !768, size: 32, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1206, file: !1207, line: 117, baseType: !776, size: 32, offset: 224)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1206, file: !1207, line: 118, baseType: !768, size: 32, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1206, file: !1207, line: 119, baseType: !776, size: 32, offset: 288)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1206, file: !1207, line: 120, baseType: !41, size: 32, offset: 320)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1206, file: !1207, line: 121, baseType: !1220, size: 64, offset: 384)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1221, line: 24, baseType: !1222)
!1221 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1221, line: 24, size: 64, elements: !1223)
!1223 = !{!1224}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1222, file: !1221, line: 24, baseType: !350, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1206, file: !1207, line: 122, baseType: !1220, size: 64, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1206, file: !1207, line: 123, baseType: !1220, size: 64, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1206, file: !1207, line: 124, baseType: !1220, size: 64, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1206, file: !1207, line: 125, baseType: !1220, size: 64, offset: 640)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1206, file: !1207, line: 127, baseType: !97, size: 8, offset: 704)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1206, file: !1207, line: 129, baseType: !799, size: 64, offset: 768)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1206, file: !1207, line: 130, baseType: !799, size: 64, offset: 832)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1206, file: !1207, line: 131, baseType: !799, size: 64, offset: 896)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1206, file: !1207, line: 132, baseType: !799, size: 64, offset: 960)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1206, file: !1207, line: 135, baseType: !110, size: 64, offset: 1024)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1206, file: !1207, line: 137, baseType: !1236, size: 64, offset: 1088)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1238, line: 14, size: 1088, elements: !1239)
!1238 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1237, file: !1238, line: 15, baseType: !257, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1237, file: !1238, line: 17, baseType: !693, size: 320, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1237, file: !1238, line: 19, baseType: !33, size: 64, offset: 384)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1237, file: !1238, line: 20, baseType: !149, size: 64, offset: 448)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1237, file: !1238, line: 23, baseType: !270, size: 128, offset: 512)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1237, file: !1238, line: 24, baseType: !768, size: 32, offset: 640)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1237, file: !1238, line: 29, baseType: !149, size: 64, offset: 704)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1237, file: !1238, line: 36, baseType: !1248, size: 320, offset: 768)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1249, line: 15, size: 320, elements: !1250)
!1249 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1250 = !{!1251, !1252, !1253, !1254, !1255, !1256, !1257}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1248, file: !1249, line: 16, baseType: !158, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1248, file: !1249, line: 18, baseType: !22, size: 32, offset: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1248, file: !1249, line: 19, baseType: !22, size: 32, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1248, file: !1249, line: 20, baseType: !22, size: 32, offset: 96)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1248, file: !1249, line: 21, baseType: !22, size: 32, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1248, file: !1249, line: 22, baseType: !33, size: 64, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1248, file: !1249, line: 23, baseType: !33, size: 64, offset: 256)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1206, file: !1207, line: 138, baseType: !737, size: 64, offset: 1152)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1206, file: !1207, line: 139, baseType: !1021, size: 64, offset: 1216)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1206, file: !1207, line: 140, baseType: !1261, size: 64, offset: 1280)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1207, line: 25, size: 64, elements: !1263)
!1263 = !{!1264, !1265, !1266}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1262, file: !1207, line: 26, baseType: !17, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1262, file: !1207, line: 27, baseType: !22, size: 32, offset: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1262, file: !1207, line: 28, baseType: !1267, offset: 64)
!1267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, elements: !1056)
!1268 = !DIDerivedType(tag: DW_TAG_member, scope: !1206, file: !1207, line: 142, baseType: !1269, size: 128, offset: 1344)
!1269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1206, file: !1207, line: 142, size: 128, elements: !1270)
!1270 = !{!1271, !1272}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1269, file: !1207, line: 143, baseType: !22, size: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1269, file: !1207, line: 144, baseType: !209, size: 128, align: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !301, file: !302, line: 1067, baseType: !1204, size: 64, offset: 14528)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !301, file: !302, line: 1070, baseType: !1204, size: 64, offset: 14592)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !301, file: !302, line: 1074, baseType: !799, size: 64, offset: 14656)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !301, file: !302, line: 1084, baseType: !1277, size: 128, offset: 14720)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1278)
!1278 = !{!1279}
!1279 = !DISubrange(count: 16)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !301, file: !302, line: 1086, baseType: !1281, size: 64, offset: 14848)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !302, line: 55, flags: DIFlagFwdDecl)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !301, file: !302, line: 1089, baseType: !1284, size: 64, offset: 14912)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1285, line: 12, size: 64, elements: !1286)
!1285 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1286 = !{!1287}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1284, file: !1285, line: 13, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1285, line: 8, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !301, file: !302, line: 1090, baseType: !1291, size: 128, offset: 14976)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1292, line: 13, size: 128, elements: !1293)
!1292 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1293 = !{!1294}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1291, file: !1292, line: 14, baseType: !165, size: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !301, file: !302, line: 1097, baseType: !1296, size: 64, offset: 15104)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !302, line: 50, flags: DIFlagFwdDecl)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !301, file: !302, line: 1100, baseType: !1299, size: 64, offset: 15168)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !302, line: 1100, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !301, file: !302, line: 1103, baseType: !1302, size: 64, offset: 15232)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !302, line: 53, flags: DIFlagFwdDecl)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !301, file: !302, line: 1107, baseType: !1305, size: 64, offset: 15296)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1307, line: 31, size: 576, elements: !1308)
!1307 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1308 = !{!1309, !1310, !1313, !1316, !1319, !1320, !1323, !1326, !1327}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1306, file: !1307, line: 32, baseType: !257, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1306, file: !1307, line: 33, baseType: !1311, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1307, line: 9, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1306, file: !1307, line: 34, baseType: !1314, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1307, line: 10, flags: DIFlagFwdDecl)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1306, file: !1307, line: 35, baseType: !1317, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1307, line: 8, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1306, file: !1307, line: 36, baseType: !292, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1306, file: !1307, line: 37, baseType: !1321, size: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !801, line: 34, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1306, file: !1307, line: 38, baseType: !1324, size: 64, offset: 384)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1307, line: 38, flags: DIFlagFwdDecl)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1306, file: !1307, line: 39, baseType: !1324, size: 64, offset: 448)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1306, file: !1307, line: 40, baseType: !1328, size: 64, offset: 512)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1307, line: 12, flags: DIFlagFwdDecl)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !301, file: !302, line: 1110, baseType: !1331, size: 64, offset: 15360)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1333, line: 93, size: 8768, elements: !1334)
!1333 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1385, !1394, !1395, !1397, !1398, !1399, !1402, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1444, !1445, !1452, !1462, !1465, !1466, !1469, !1470, !1471, !1472, !1473, !1474}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1332, file: !1333, line: 94, baseType: !257, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1332, file: !1333, line: 95, baseType: !17, size: 32, offset: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1332, file: !1333, line: 96, baseType: !22, size: 32, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1332, file: !1333, line: 97, baseType: !22, size: 32, offset: 96)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1332, file: !1333, line: 98, baseType: !165, size: 128, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1332, file: !1333, line: 100, baseType: !279, size: 192, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1332, file: !1333, line: 103, baseType: !300, size: 64, offset: 448)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1332, file: !1333, line: 106, baseType: !1343, size: 192, offset: 512)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1344, line: 32, size: 192, elements: !1345)
!1344 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1345 = !{!1346, !1347}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1343, file: !1344, line: 33, baseType: !165, size: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1343, file: !1344, line: 34, baseType: !1348, size: 64, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1349, line: 25, baseType: !1350)
!1349 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1349, line: 23, size: 64, elements: !1351)
!1351 = !{!1352}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1350, file: !1349, line: 24, baseType: !549, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1332, file: !1333, line: 109, baseType: !266, size: 64, offset: 704)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1332, file: !1333, line: 112, baseType: !22, size: 32, offset: 768)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1332, file: !1333, line: 114, baseType: !22, size: 32, offset: 800)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1332, file: !1333, line: 115, baseType: !300, size: 64, offset: 832)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1332, file: !1333, line: 118, baseType: !22, size: 32, offset: 896)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1332, file: !1333, line: 119, baseType: !41, size: 32, offset: 928)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1332, file: !1333, line: 121, baseType: !1360, size: 64, offset: 960)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1333, line: 80, size: 448, elements: !1362)
!1362 = !{!1363, !1364, !1370}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1361, file: !1333, line: 81, baseType: !17, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1361, file: !1333, line: 82, baseType: !1365, size: 128, offset: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1333, line: 75, size: 128, elements: !1366)
!1366 = !{!1367, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1365, file: !1333, line: 76, baseType: !300, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1365, file: !1333, line: 77, baseType: !1369, size: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1361, file: !1333, line: 83, baseType: !977, size: 256, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1332, file: !1333, line: 132, baseType: !41, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1332, file: !1333, line: 133, baseType: !41, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1332, file: !1333, line: 138, baseType: !41, size: 32, offset: 1056)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1332, file: !1333, line: 139, baseType: !165, size: 128, offset: 1088)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1332, file: !1333, line: 142, baseType: !415, size: 512, offset: 1216)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1332, file: !1333, line: 143, baseType: !424, size: 64, offset: 1728)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1332, file: !1333, line: 150, baseType: !1378, size: 256, offset: 1792)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1379, size: 256, elements: !1383)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1333, line: 38, size: 128, elements: !1380)
!1380 = !{!1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1379, file: !1333, line: 39, baseType: !350, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1379, file: !1333, line: 40, baseType: !350, size: 64, offset: 64)
!1383 = !{!1384}
!1384 = !DISubrange(count: 2)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1332, file: !1333, line: 156, baseType: !1386, size: 192, offset: 2048)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1333, line: 66, size: 192, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1386, file: !1333, line: 67, baseType: !1389, size: 192)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1333, line: 47, size: 192, elements: !1390)
!1390 = !{!1391, !1392, !1393}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1389, file: !1333, line: 48, baseType: !151, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1389, file: !1333, line: 49, baseType: !151, size: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1389, file: !1333, line: 50, baseType: !151, size: 64, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1332, file: !1333, line: 160, baseType: !1186, size: 640, offset: 2240)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1332, file: !1333, line: 163, baseType: !1396, size: 256, offset: 2880)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 256, elements: !275)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1332, file: !1333, line: 169, baseType: !252, size: 64, offset: 3136)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1332, file: !1333, line: 172, baseType: !22, size: 32, offset: 3200)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1332, file: !1333, line: 174, baseType: !1400, size: 64, offset: 3264)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1333, line: 174, flags: DIFlagFwdDecl)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1332, file: !1333, line: 185, baseType: !1403, size: 64, offset: 3328)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !471, line: 860, baseType: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !471, line: 853, size: 64, elements: !1405)
!1405 = !{!1406, !1411}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1404, file: !471, line: 858, baseType: !1407, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !471, line: 275, baseType: !1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !471, line: 275, size: 32, elements: !1409)
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1408, file: !471, line: 275, baseType: !475, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1404, file: !471, line: 859, baseType: !69, size: 32, offset: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1332, file: !1333, line: 186, baseType: !350, size: 64, offset: 3392)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1332, file: !1333, line: 186, baseType: !350, size: 64, offset: 3456)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1332, file: !1333, line: 186, baseType: !350, size: 64, offset: 3520)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1332, file: !1333, line: 186, baseType: !350, size: 64, offset: 3584)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1332, file: !1333, line: 187, baseType: !350, size: 64, offset: 3648)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1332, file: !1333, line: 188, baseType: !350, size: 64, offset: 3712)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1332, file: !1333, line: 189, baseType: !1174, size: 192, offset: 3776)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1332, file: !1333, line: 190, baseType: !33, size: 64, offset: 3968)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1332, file: !1333, line: 190, baseType: !33, size: 64, offset: 4032)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1332, file: !1333, line: 190, baseType: !33, size: 64, offset: 4096)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1332, file: !1333, line: 190, baseType: !33, size: 64, offset: 4160)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1332, file: !1333, line: 191, baseType: !33, size: 64, offset: 4224)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1332, file: !1333, line: 191, baseType: !33, size: 64, offset: 4288)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1332, file: !1333, line: 191, baseType: !33, size: 64, offset: 4352)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1332, file: !1333, line: 191, baseType: !33, size: 64, offset: 4416)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1332, file: !1333, line: 192, baseType: !33, size: 64, offset: 4480)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1332, file: !1333, line: 192, baseType: !33, size: 64, offset: 4544)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1332, file: !1333, line: 192, baseType: !33, size: 64, offset: 4608)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1332, file: !1333, line: 192, baseType: !33, size: 64, offset: 4672)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1332, file: !1333, line: 193, baseType: !33, size: 64, offset: 4736)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1332, file: !1333, line: 193, baseType: !33, size: 64, offset: 4800)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1332, file: !1333, line: 194, baseType: !1434, size: 448, offset: 4864)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1435, line: 12, size: 448, elements: !1436)
!1435 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1436 = !{!1437, !1438, !1439, !1440, !1441, !1442, !1443}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1434, file: !1435, line: 15, baseType: !350, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1434, file: !1435, line: 17, baseType: !350, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1434, file: !1435, line: 19, baseType: !350, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1434, file: !1435, line: 21, baseType: !350, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1434, file: !1435, line: 29, baseType: !350, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1434, file: !1435, line: 35, baseType: !350, size: 64, offset: 320)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1434, file: !1435, line: 44, baseType: !350, size: 64, offset: 384)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1332, file: !1333, line: 202, baseType: !352, size: 64, offset: 5312)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1332, file: !1333, line: 213, baseType: !1446, size: 2048, offset: 5376)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1447, size: 2048, elements: !1278)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1448, line: 43, size: 128, elements: !1449)
!1448 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1447, file: !1448, line: 44, baseType: !135, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1447, file: !1448, line: 45, baseType: !135, size: 64, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1332, file: !1333, line: 216, baseType: !1453, size: 448, offset: 7424)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1333, line: 30, size: 448, elements: !1454)
!1454 = !{!1455, !1456, !1457, !1458, !1459, !1460, !1461}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1453, file: !1333, line: 31, baseType: !22, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1453, file: !1333, line: 32, baseType: !1036, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1453, file: !1333, line: 33, baseType: !33, size: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1453, file: !1333, line: 34, baseType: !350, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1453, file: !1333, line: 34, baseType: !350, size: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1453, file: !1333, line: 35, baseType: !33, size: 64, offset: 320)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1453, file: !1333, line: 35, baseType: !33, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1332, file: !1333, line: 219, baseType: !1463, size: 64, offset: 7872)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1333, line: 219, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1332, file: !1333, line: 222, baseType: !41, size: 32, offset: 7936)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1332, file: !1333, line: 223, baseType: !1467, size: 64, offset: 8000)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1333, line: 223, flags: DIFlagFwdDecl)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1332, file: !1333, line: 230, baseType: !795, size: 8, offset: 8064)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1332, file: !1333, line: 231, baseType: !730, size: 16, offset: 8080)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1332, file: !1333, line: 232, baseType: !730, size: 16, offset: 8096)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1332, file: !1333, line: 234, baseType: !598, size: 64, offset: 8128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1332, file: !1333, line: 237, baseType: !145, size: 256, offset: 8192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1332, file: !1333, line: 243, baseType: !655, size: 320, offset: 8448)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !301, file: !302, line: 1111, baseType: !1476, size: 64, offset: 15424)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1333, line: 20, size: 16640, elements: !1478)
!1478 = !{!1479, !1480, !1481, !1482}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1477, file: !1333, line: 21, baseType: !69, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1477, file: !1333, line: 22, baseType: !257, size: 32, offset: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1477, file: !1333, line: 23, baseType: !279, size: 192, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1477, file: !1333, line: 24, baseType: !1483, size: 16384, offset: 256)
!1483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1484, size: 16384, elements: !1504)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1344, line: 51, size: 256, elements: !1485)
!1485 = !{!1486}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1484, file: !1344, line: 52, baseType: !1487, size: 256)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1344, line: 37, size: 256, elements: !1488)
!1488 = !{!1489, !1496, !1497, !1503}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1487, file: !1344, line: 39, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1491, line: 83, baseType: !1492)
!1491 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1491, line: 82, baseType: !1494)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{null, !22}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1487, file: !1344, line: 40, baseType: !33, size: 64, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1487, file: !1344, line: 46, baseType: !1498, size: 64, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1491, line: 86, baseType: !1499)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1491, line: 85, baseType: !1501)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{null}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1487, file: !1344, line: 48, baseType: !1348, size: 64, offset: 192)
!1504 = !{!1505}
!1505 = !DISubrange(count: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !301, file: !302, line: 1112, baseType: !1348, size: 64, offset: 15488)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !301, file: !302, line: 1113, baseType: !1348, size: 64, offset: 15552)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !301, file: !302, line: 1115, baseType: !1348, size: 64, offset: 15616)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !301, file: !302, line: 1116, baseType: !1343, size: 192, offset: 15680)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !301, file: !302, line: 1117, baseType: !33, size: 64, offset: 15872)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !301, file: !302, line: 1118, baseType: !132, size: 64, offset: 15936)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !301, file: !302, line: 1119, baseType: !41, size: 32, offset: 16000)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !301, file: !302, line: 1121, baseType: !212, size: 64, offset: 16064)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !301, file: !302, line: 1125, baseType: !1515, size: 64, offset: 16128)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !302, line: 43, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !301, file: !302, line: 1127, baseType: !768, size: 32, offset: 16192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !301, file: !302, line: 1128, baseType: !41, size: 32, offset: 16224)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !301, file: !302, line: 1130, baseType: !1520, size: 128, offset: 16256)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1521, line: 37, size: 128, elements: !1522)
!1521 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1522 = !{!1523, !1524, !1525}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1520, file: !1521, line: 38, baseType: !22, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1520, file: !1521, line: 39, baseType: !17, size: 32, offset: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1520, file: !1521, line: 40, baseType: !1526, size: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1521, line: 24, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !301, file: !302, line: 1131, baseType: !1529, size: 256, offset: 16384)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1530, line: 12, size: 256, elements: !1531)
!1530 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1531 = !{!1532, !1533, !1534, !1535}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1529, file: !1530, line: 13, baseType: !130, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1529, file: !1530, line: 14, baseType: !33, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1529, file: !1530, line: 15, baseType: !33, size: 64, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1529, file: !1530, line: 16, baseType: !795, size: 8, offset: 192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !301, file: !302, line: 1134, baseType: !350, size: 64, offset: 16640)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !301, file: !302, line: 1135, baseType: !350, size: 64, offset: 16704)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !301, file: !302, line: 1138, baseType: !69, size: 32, offset: 16768)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !301, file: !302, line: 1141, baseType: !158, size: 32, offset: 16800)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !301, file: !302, line: 1143, baseType: !1541, size: 64, offset: 16832)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !302, line: 735, size: 64, elements: !1542)
!1542 = !{!1543}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1541, file: !302, line: 736, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !301, file: !302, line: 1147, baseType: !484, size: 128, offset: 16896)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !301, file: !302, line: 1149, baseType: !300, size: 64, offset: 17024)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !301, file: !302, line: 1151, baseType: !1548, size: 64, offset: 17088)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !302, line: 1151, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !301, file: !302, line: 1188, baseType: !110, size: 64, offset: 17152)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !301, file: !302, line: 1191, baseType: !1552, size: 64, offset: 17216)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !302, line: 44, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !301, file: !302, line: 1194, baseType: !1555, size: 64, offset: 17280)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !302, line: 45, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !301, file: !302, line: 1197, baseType: !1558, size: 64, offset: 17344)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !302, line: 61, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !301, file: !302, line: 1199, baseType: !1561, size: 64, offset: 17408)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1563, line: 99, size: 128, elements: !1564)
!1563 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!1564 = !{!1565, !1566, !1567}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1562, file: !1563, line: 100, baseType: !149, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1562, file: !1563, line: 101, baseType: !17, size: 32, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1562, file: !1563, line: 103, baseType: !105, size: 16, offset: 96)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !301, file: !302, line: 1202, baseType: !1569, size: 64, offset: 17472)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !302, line: 48, flags: DIFlagFwdDecl)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !301, file: !302, line: 1205, baseType: !33, size: 64, offset: 17536)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !301, file: !302, line: 1206, baseType: !1573, size: 64, offset: 17600)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1344, line: 14, baseType: !1575)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1344, line: 12, size: 384, elements: !1576)
!1576 = !{!1577}
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !1344, line: 13, baseType: !1578, size: 384)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1575, file: !1344, line: 13, size: 384, elements: !1579)
!1579 = !{!1580, !1581, !1582, !1583}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1578, file: !1344, line: 13, baseType: !22, size: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1578, file: !1344, line: 13, baseType: !22, size: 32, offset: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1578, file: !1344, line: 13, baseType: !22, size: 32, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1578, file: !1344, line: 13, baseType: !1584, size: 256, offset: 128)
!1584 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1585, line: 37, size: 256, elements: !1586)
!1585 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1586 = !{!1587, !1592, !1605, !1611, !1621, !1648, !1653}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1584, file: !1585, line: 42, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1584, file: !1585, line: 39, size: 64, elements: !1589)
!1589 = !{!1590, !1591}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1588, file: !1585, line: 40, baseType: !1150, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1588, file: !1585, line: 41, baseType: !774, size: 32, offset: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1584, file: !1585, line: 50, baseType: !1593, size: 192)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1584, file: !1585, line: 45, size: 192, elements: !1594)
!1594 = !{!1595, !1597, !1598, !1604}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1593, file: !1585, line: 46, baseType: !1596, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !134, line: 95, baseType: !22)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1593, file: !1585, line: 47, baseType: !22, size: 32, offset: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1593, file: !1585, line: 48, baseType: !1599, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1585, line: 11, baseType: !1600)
!1600 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1585, line: 8, size: 64, elements: !1601)
!1601 = !{!1602, !1603}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1600, file: !1585, line: 9, baseType: !22, size: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1600, file: !1585, line: 10, baseType: !110, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1593, file: !1585, line: 49, baseType: !22, size: 32, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1584, file: !1585, line: 57, baseType: !1606, size: 128)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1584, file: !1585, line: 53, size: 128, elements: !1607)
!1607 = !{!1608, !1609, !1610}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1606, file: !1585, line: 54, baseType: !1150, size: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1606, file: !1585, line: 55, baseType: !774, size: 32, offset: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1606, file: !1585, line: 56, baseType: !1599, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1584, file: !1585, line: 66, baseType: !1612, size: 256)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1584, file: !1585, line: 60, size: 256, elements: !1613)
!1613 = !{!1614, !1615, !1616, !1617, !1620}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1612, file: !1585, line: 61, baseType: !1150, size: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1612, file: !1585, line: 62, baseType: !774, size: 32, offset: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1612, file: !1585, line: 63, baseType: !22, size: 32, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1612, file: !1585, line: 64, baseType: !1618, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !134, line: 94, baseType: !1619)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !134, line: 15, baseType: !1036)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1612, file: !1585, line: 65, baseType: !1618, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1584, file: !1585, line: 105, baseType: !1622, size: 256)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1584, file: !1585, line: 69, size: 256, elements: !1623)
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1622, file: !1585, line: 70, baseType: !110, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1622, file: !1585, line: 79, baseType: !1626, size: 192, offset: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1622, file: !1585, line: 79, size: 192, elements: !1627)
!1627 = !{!1628, !1629, !1630, !1637, !1642}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1626, file: !1585, line: 81, baseType: !22, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1626, file: !1585, line: 86, baseType: !730, size: 16)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1626, file: !1585, line: 92, baseType: !1631, size: 192)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1626, file: !1585, line: 88, size: 192, elements: !1632)
!1632 = !{!1633, !1635, !1636}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1631, file: !1585, line: 89, baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !463)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1631, file: !1585, line: 90, baseType: !110, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1631, file: !1585, line: 91, baseType: !110, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1626, file: !1585, line: 97, baseType: !1638, size: 96)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1626, file: !1585, line: 94, size: 96, elements: !1639)
!1639 = !{!1640, !1641}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1638, file: !1585, line: 95, baseType: !1634, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1638, file: !1585, line: 96, baseType: !115, size: 32, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1626, file: !1585, line: 103, baseType: !1643, size: 128)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1626, file: !1585, line: 99, size: 128, elements: !1644)
!1644 = !{!1645, !1646, !1647}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1643, file: !1585, line: 100, baseType: !33, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1643, file: !1585, line: 101, baseType: !115, size: 32, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1643, file: !1585, line: 102, baseType: !115, size: 32, offset: 96)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1584, file: !1585, line: 111, baseType: !1649, size: 128)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1584, file: !1585, line: 108, size: 128, elements: !1650)
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1649, file: !1585, line: 109, baseType: !1036, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1649, file: !1585, line: 110, baseType: !22, size: 32, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1584, file: !1585, line: 118, baseType: !1654, size: 128)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1584, file: !1585, line: 114, size: 128, elements: !1655)
!1655 = !{!1656, !1657, !1658}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1654, file: !1585, line: 115, baseType: !110, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1654, file: !1585, line: 116, baseType: !22, size: 32, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1654, file: !1585, line: 117, baseType: !41, size: 32, offset: 96)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !301, file: !302, line: 1208, baseType: !1434, size: 448, offset: 17664)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !301, file: !302, line: 1215, baseType: !350, size: 64, offset: 18112)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !301, file: !302, line: 1217, baseType: !350, size: 64, offset: 18176)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !301, file: !302, line: 1219, baseType: !350, size: 64, offset: 18240)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !301, file: !302, line: 1223, baseType: !1664, size: 64, offset: 18304)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1665, line: 99, baseType: !1666)
!1665 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1665, line: 99, size: 64, elements: !1667)
!1667 = !{!1668}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1666, file: !1665, line: 99, baseType: !549, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !301, file: !302, line: 1225, baseType: !1407, size: 32, offset: 18368)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !301, file: !302, line: 1226, baseType: !22, size: 32, offset: 18400)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !301, file: !302, line: 1227, baseType: !22, size: 32, offset: 18432)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !301, file: !302, line: 1231, baseType: !1673, size: 64, offset: 18496)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !302, line: 1231, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !301, file: !302, line: 1233, baseType: !165, size: 128, offset: 18560)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !301, file: !302, line: 1240, baseType: !1677, size: 64, offset: 18688)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !302, line: 62, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !301, file: !302, line: 1242, baseType: !1680, size: 64, offset: 18752)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !302, line: 1242, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !301, file: !302, line: 1244, baseType: !165, size: 128, offset: 18816)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !301, file: !302, line: 1245, baseType: !1684, size: 64, offset: 18944)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !302, line: 51, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !301, file: !302, line: 1246, baseType: !145, size: 256, offset: 19008)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !301, file: !302, line: 1247, baseType: !41, size: 32, offset: 19264)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !301, file: !302, line: 1250, baseType: !1689, size: 64, offset: 19328)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !302, line: 57, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !301, file: !302, line: 1251, baseType: !145, size: 256, offset: 19392)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !301, file: !302, line: 1252, baseType: !165, size: 128, offset: 19648)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !301, file: !302, line: 1259, baseType: !1694, size: 64, offset: 19776)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !600, line: 717, flags: DIFlagFwdDecl)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !301, file: !302, line: 1260, baseType: !730, size: 16, offset: 19840)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !301, file: !302, line: 1261, baseType: !730, size: 16, offset: 19856)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !301, file: !302, line: 1314, baseType: !1699, size: 64, offset: 19904)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1701, line: 62, size: 256, align: 256, elements: !1702)
!1701 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1702 = !{!1703, !1704, !1705, !1706, !1707, !1708, !1709}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1700, file: !1701, line: 75, baseType: !115, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1700, file: !1701, line: 90, baseType: !115, size: 32, offset: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1700, file: !1701, line: 112, baseType: !351, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1700, file: !1701, line: 132, baseType: !115, size: 32, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1700, file: !1701, line: 140, baseType: !115, size: 32, offset: 160)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1700, file: !1701, line: 149, baseType: !115, size: 32, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1700, file: !1701, line: 154, baseType: !1710, offset: 224)
!1710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1056)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !301, file: !302, line: 1315, baseType: !114, size: 32, offset: 19968)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !301, file: !302, line: 1316, baseType: !114, size: 32, offset: 20000)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !301, file: !302, line: 1321, baseType: !33, size: 64, offset: 20032)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !301, file: !302, line: 1325, baseType: !22, size: 32, offset: 20096)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !301, file: !302, line: 1326, baseType: !22, size: 32, offset: 20128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !301, file: !302, line: 1327, baseType: !22, size: 32, offset: 20160)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !301, file: !302, line: 1328, baseType: !22, size: 32, offset: 20192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !301, file: !302, line: 1329, baseType: !209, size: 128, align: 64, offset: 20224)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !301, file: !302, line: 1332, baseType: !1720, size: 128, offset: 20352)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1721, line: 51, size: 128, elements: !1722)
!1721 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1722 = !{!1723, !1728, !1729}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1720, file: !1721, line: 60, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1725, line: 7, size: 64, elements: !1726)
!1725 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1726 = !{!1727}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1724, file: !1725, line: 12, baseType: !546, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1720, file: !1721, line: 63, baseType: !795, size: 8, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1720, file: !1721, line: 70, baseType: !795, size: 8, offset: 72)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !301, file: !302, line: 1335, baseType: !1731, size: 64, offset: 20480)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !302, line: 59, flags: DIFlagFwdDecl)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !301, file: !302, line: 1337, baseType: !1734, size: 128, offset: 20544)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1721, line: 39, size: 128, elements: !1735)
!1735 = !{!1736, !3503, !3504}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1734, file: !1721, line: 40, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !600, line: 74, size: 512, align: 128, elements: !1739)
!1739 = !{!1740, !1741, !3497, !3502}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1738, file: !600, line: 75, baseType: !33, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, scope: !1738, file: !600, line: 83, baseType: !1742, size: 320, offset: 64)
!1742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1738, file: !600, line: 83, size: 320, elements: !1743)
!1743 = !{!1744, !3395, !3409, !3413, !3496}
!1744 = !DIDerivedType(tag: DW_TAG_member, scope: !1742, file: !600, line: 84, baseType: !1745, size: 320)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1742, file: !600, line: 84, size: 320, elements: !1746)
!1746 = !{!1747, !1758, !3389, !3394}
!1747 = !DIDerivedType(tag: DW_TAG_member, scope: !1745, file: !600, line: 90, baseType: !1748, size: 128)
!1748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1745, file: !600, line: 90, size: 128, elements: !1749)
!1749 = !{!1750, !1751, !1756, !1757}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1748, file: !600, line: 91, baseType: !165, size: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1748, file: !600, line: 94, baseType: !1752, size: 128)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1748, file: !600, line: 94, size: 128, elements: !1753)
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1752, file: !600, line: 96, baseType: !110, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1752, file: !600, line: 98, baseType: !41, size: 32, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1748, file: !600, line: 102, baseType: !165, size: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1748, file: !600, line: 103, baseType: !165, size: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1745, file: !600, line: 106, baseType: !1759, size: 64, offset: 128)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !197, line: 472, size: 1536, align: 64, elements: !1761)
!1761 = !{!1762, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3383, !3384, !3385, !3386, !3387, !3388}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1760, file: !197, line: 473, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !197, line: 641, size: 4800, elements: !1765)
!1765 = !{!1766, !1767, !1768, !1769, !1770, !1771, !1772, !1775, !1776, !2733, !2734, !2735, !2736, !2737, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !3246, !3249, !3250, !3251, !3260, !3261, !3262, !3263}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1764, file: !197, line: 642, baseType: !950, size: 16)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1764, file: !197, line: 643, baseType: !105, size: 16, offset: 16)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1764, file: !197, line: 644, baseType: !768, size: 32, offset: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1764, file: !197, line: 645, baseType: !165, size: 128, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1764, file: !197, line: 646, baseType: !776, size: 32, offset: 192)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1764, file: !197, line: 647, baseType: !41, size: 32, offset: 224)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1764, file: !197, line: 650, baseType: !1773, size: 64, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !197, line: 607, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1764, file: !197, line: 651, baseType: !1773, size: 64, offset: 320)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1764, file: !197, line: 654, baseType: !1777, size: 64, offset: 384)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1779)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !197, line: 1966, size: 2048, align: 512, elements: !1780)
!1780 = !{!1781, !2564, !2577, !2581, !2585, !2589, !2593, !2597, !2601, !2605, !2609, !2610, !2614, !2618, !2655, !2684, !2688, !2694, !2698, !2702, !2706, !2710, !2714, !2720, !2724}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1779, file: !197, line: 1967, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!1785, !1763, !1785, !41}
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1787, line: 82, size: 1536, elements: !1788)
!1787 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1788 = !{!1789, !1790, !1791, !1799, !1800, !1815, !1816, !1820, !1833, !2547, !2548, !2549, !2550, !2556, !2557, !2558}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1786, file: !1787, line: 84, baseType: !41, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1786, file: !1787, line: 85, baseType: !1407, size: 32, offset: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1786, file: !1787, line: 86, baseType: !1792, size: 128, offset: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1793, line: 38, size: 128, elements: !1794)
!1793 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1794 = !{!1795, !1797}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1792, file: !1793, line: 39, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1792, file: !1793, line: 39, baseType: !1798, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1786, file: !1787, line: 87, baseType: !1785, size: 64, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1786, file: !1787, line: 88, baseType: !1801, size: 128, offset: 256)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1787, line: 49, size: 128, elements: !1802)
!1802 = !{!1803, !1812}
!1803 = !DIDerivedType(tag: DW_TAG_member, scope: !1801, file: !1787, line: 50, baseType: !1804, size: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1801, file: !1787, line: 50, size: 64, elements: !1805)
!1805 = !{!1806, !1811}
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !1787, line: 51, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1804, file: !1787, line: 51, size: 64, elements: !1808)
!1808 = !{!1809, !1810}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1807, file: !1787, line: 52, baseType: !114, size: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1807, file: !1787, line: 52, baseType: !114, size: 32, offset: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1804, file: !1787, line: 54, baseType: !350, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1801, file: !1787, line: 56, baseType: !1813, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1786, file: !1787, line: 89, baseType: !1763, size: 64, offset: 384)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1786, file: !1787, line: 91, baseType: !1817, size: 256, offset: 448)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 256, elements: !1818)
!1818 = !{!1819}
!1819 = !DISubrange(count: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1786, file: !1787, line: 94, baseType: !1821, size: 64, offset: 704)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1822, line: 25, size: 64, elements: !1823)
!1822 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!1823 = !{!1824}
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1821, file: !1822, line: 26, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1821, file: !1822, line: 26, size: 64, elements: !1826)
!1826 = !{!1827, !1828}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1825, file: !1822, line: 28, baseType: !351, size: 64, align: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, scope: !1825, file: !1822, line: 30, baseType: !1829, size: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1825, file: !1822, line: 30, size: 64, elements: !1830)
!1830 = !{!1831, !1832}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1829, file: !1822, line: 31, baseType: !69, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1829, file: !1822, line: 32, baseType: !22, size: 32, offset: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1786, file: !1787, line: 95, baseType: !1834, size: 64, offset: 768)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1836)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1787, line: 128, size: 1024, align: 512, elements: !1837)
!1837 = !{!1838, !1842, !1843, !1850, !1856, !1860, !1864, !1868, !1869, !1873, !1877, !2537, !2541}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1836, file: !1787, line: 129, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!22, !1785, !41}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1836, file: !1787, line: 130, baseType: !1839, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1836, file: !1787, line: 131, baseType: !1844, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!22, !1847, !1849}
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1786)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1836, file: !1787, line: 132, baseType: !1851, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!22, !1847, !41, !26, !1854}
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1801)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1836, file: !1787, line: 134, baseType: !1857, size: 64, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!22, !1847}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1836, file: !1787, line: 135, baseType: !1861, size: 64, offset: 320)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!22, !1785}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1836, file: !1787, line: 136, baseType: !1865, size: 64, offset: 384)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{null, !1785}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1836, file: !1787, line: 137, baseType: !1865, size: 64, offset: 448)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1836, file: !1787, line: 138, baseType: !1870, size: 64, offset: 512)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{null, !1785, !1763}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1836, file: !1787, line: 139, baseType: !1874, size: 64, offset: 576)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!130, !1785, !130, !22}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1836, file: !1787, line: 140, baseType: !1878, size: 64, offset: 640)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!1881, !2536}
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1883, line: 70, size: 256, elements: !1884)
!1883 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1884 = !{!1885, !1886, !2534, !2535}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1882, file: !1883, line: 71, baseType: !1785, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1882, file: !1883, line: 72, baseType: !1887, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !197, line: 1190, size: 10752, elements: !1889)
!1889 = !{!1890, !1891, !1894, !1895, !1896, !1897, !2045, !2191, !2231, !2321, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2357, !2361, !2362, !2365, !2368, !2371, !2374, !2375, !2376, !2417, !2444, !2445, !2446, !2447, !2448, !2449, !2471, !2473, !2480, !2481, !2482, !2483, !2484, !2499, !2500, !2501, !2502, !2505, !2508, !2509, !2510, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1888, file: !197, line: 1191, baseType: !165, size: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1888, file: !197, line: 1192, baseType: !1892, size: 32, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !18, line: 21, baseType: !1893)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !18, line: 18, baseType: !114)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1888, file: !197, line: 1193, baseType: !97, size: 8, offset: 160)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1888, file: !197, line: 1194, baseType: !33, size: 64, offset: 192)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1888, file: !197, line: 1195, baseType: !140, size: 64, offset: 256)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1888, file: !197, line: 1196, baseType: !1898, size: 64, offset: 320)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !197, line: 2366, size: 576, elements: !1900)
!1900 = !{!1901, !1902, !1903, !2019, !2023, !2027, !2031, !2032, !2033, !2034, !2037, !2038, !2039, !2041, !2042, !2043, !2044}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1899, file: !197, line: 2367, baseType: !26, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1899, file: !197, line: 2368, baseType: !22, size: 32, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1899, file: !197, line: 2376, baseType: !1904, size: 64, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!22, !1907}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1909, line: 90, size: 1216, elements: !1910)
!1909 = !DIFile(filename: "./include/linux/fs_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58f4e15024eca636c2bdb50c4534d2c5")
!1910 = !{!1911, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2005, !2015, !2016, !2017, !2018}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1908, file: !1909, line: 91, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1914)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context_operations", file: !1909, line: 115, size: 384, elements: !1915)
!1915 = !{!1916, !1920, !1924, !1961, !1965, !1966}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1914, file: !1909, line: 116, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !1907}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1914, file: !1909, line: 117, baseType: !1921, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!22, !1907, !1907}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "parse_param", scope: !1914, file: !1909, line: 118, baseType: !1925, size: 64, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!22, !1907, !1928}
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter", file: !1909, line: 63, size: 320, elements: !1930)
!1930 = !{!1931, !1932, !1941, !1959, !1960}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1929, file: !1909, line: 64, baseType: !26, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1929, file: !1909, line: 65, baseType: !1933, size: 8, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!1933 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_value_type", file: !1909, line: 51, baseType: !41, size: 32, elements: !1934)
!1934 = !{!1935, !1936, !1937, !1938, !1939, !1940}
!1935 = !DIEnumerator(name: "fs_value_is_undefined", value: 0)
!1936 = !DIEnumerator(name: "fs_value_is_flag", value: 1)
!1937 = !DIEnumerator(name: "fs_value_is_string", value: 2)
!1938 = !DIEnumerator(name: "fs_value_is_blob", value: 3)
!1939 = !DIEnumerator(name: "fs_value_is_filename", value: 4)
!1940 = !DIEnumerator(name: "fs_value_is_file", value: 5)
!1941 = !DIDerivedType(tag: DW_TAG_member, scope: !1929, file: !1909, line: 66, baseType: !1942, size: 64, offset: 128)
!1942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1929, file: !1909, line: 66, size: 64, elements: !1943)
!1943 = !{!1944, !1945, !1946, !1958}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1942, file: !1909, line: 67, baseType: !130, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !1942, file: !1909, line: 68, baseType: !110, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1942, file: !1909, line: 69, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !197, line: 2470, size: 256, elements: !1949)
!1949 = !{!1950, !1951, !1952, !1953, !1956}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1948, file: !197, line: 2471, baseType: !26, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !1948, file: !197, line: 2472, baseType: !26, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1948, file: !197, line: 2473, baseType: !17, size: 32, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !1948, file: !197, line: 2474, baseType: !1954, size: 64, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !197, line: 2469, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !1948, file: !197, line: 2475, baseType: !1957, offset: 256)
!1957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, elements: !1056)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1942, file: !1909, line: 70, baseType: !627, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1929, file: !1909, line: 72, baseType: !132, size: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "dirfd", scope: !1929, file: !1909, line: 73, baseType: !22, size: 32, offset: 256)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "parse_monolithic", scope: !1914, file: !1909, line: 119, baseType: !1962, size: 64, offset: 192)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!22, !1907, !110}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "get_tree", scope: !1914, file: !1909, line: 120, baseType: !1904, size: 64, offset: 256)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !1914, file: !1909, line: 121, baseType: !1904, size: 64, offset: 320)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "uapi_mutex", scope: !1908, file: !1909, line: 92, baseType: !145, size: 256, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "fs_type", scope: !1908, file: !1909, line: 93, baseType: !1898, size: 64, offset: 320)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "fs_private", scope: !1908, file: !1909, line: 94, baseType: !110, size: 64, offset: 384)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "sget_key", scope: !1908, file: !1909, line: 95, baseType: !110, size: 64, offset: 448)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1908, file: !1909, line: 96, baseType: !1785, size: 64, offset: 512)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1908, file: !1909, line: 97, baseType: !737, size: 64, offset: 576)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1908, file: !1909, line: 98, baseType: !1321, size: 64, offset: 640)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1908, file: !1909, line: 99, baseType: !1204, size: 64, offset: 704)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1908, file: !1909, line: 100, baseType: !1976, size: 128, offset: 768)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p_log", file: !1909, line: 76, size: 128, elements: !1977)
!1977 = !{!1978, !1979}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !1976, file: !1909, line: 77, baseType: !26, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1976, file: !1909, line: 78, baseType: !1980, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fc_log", file: !1909, line: 173, size: 640, elements: !1982)
!1982 = !{!1983, !1984, !1985, !1986, !1987, !1991}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1981, file: !1909, line: 174, baseType: !257, size: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1981, file: !1909, line: 175, baseType: !93, size: 8, offset: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1981, file: !1909, line: 176, baseType: !93, size: 8, offset: 40)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1981, file: !1909, line: 177, baseType: !93, size: 8, offset: 48)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1981, file: !1909, line: 178, baseType: !1988, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1990, line: 103, flags: DIFlagFwdDecl)
!1990 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1981, file: !1909, line: 179, baseType: !1992, size: 512, offset: 128)
!1992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 512, elements: !463)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !1908, file: !1909, line: 101, baseType: !26, size: 64, offset: 896)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1908, file: !1909, line: 102, baseType: !110, size: 64, offset: 960)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1908, file: !1909, line: 103, baseType: !110, size: 64, offset: 1024)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags", scope: !1908, file: !1909, line: 104, baseType: !41, size: 32, offset: 1088)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags_mask", scope: !1908, file: !1909, line: 105, baseType: !41, size: 32, offset: 1120)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1908, file: !1909, line: 106, baseType: !41, size: 32, offset: 1152)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1908, file: !1909, line: 107, baseType: !2000, size: 8, offset: 1184, flags: DIFlagBitField, extraData: i64 1184)
!2000 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_purpose", file: !1909, line: 29, baseType: !41, size: 32, elements: !2001)
!2001 = !{!2002, !2003, !2004}
!2002 = !DIEnumerator(name: "FS_CONTEXT_FOR_MOUNT", value: 0)
!2003 = !DIEnumerator(name: "FS_CONTEXT_FOR_SUBMOUNT", value: 1)
!2004 = !DIEnumerator(name: "FS_CONTEXT_FOR_RECONFIGURE", value: 2)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !1908, file: !1909, line: 108, baseType: !2006, size: 8, offset: 1192, flags: DIFlagBitField, extraData: i64 1184)
!2006 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_phase", file: !1909, line: 38, baseType: !41, size: 32, elements: !2007)
!2007 = !{!2008, !2009, !2010, !2011, !2012, !2013, !2014}
!2008 = !DIEnumerator(name: "FS_CONTEXT_CREATE_PARAMS", value: 0)
!2009 = !DIEnumerator(name: "FS_CONTEXT_CREATING", value: 1)
!2010 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_MOUNT", value: 2)
!2011 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_RECONF", value: 3)
!2012 = !DIEnumerator(name: "FS_CONTEXT_RECONF_PARAMS", value: 4)
!2013 = !DIEnumerator(name: "FS_CONTEXT_RECONFIGURING", value: 5)
!2014 = !DIEnumerator(name: "FS_CONTEXT_FAILED", value: 6)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1908, file: !1909, line: 109, baseType: !795, size: 1, offset: 1200, flags: DIFlagBitField, extraData: i64 1184)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1908, file: !1909, line: 110, baseType: !795, size: 1, offset: 1201, flags: DIFlagBitField, extraData: i64 1184)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "oldapi", scope: !1908, file: !1909, line: 111, baseType: !795, size: 1, offset: 1202, flags: DIFlagBitField, extraData: i64 1184)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !1908, file: !1909, line: 112, baseType: !795, size: 1, offset: 1203, flags: DIFlagBitField, extraData: i64 1184)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1899, file: !197, line: 2377, baseType: !2020, size: 64, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2022)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !197, line: 75, flags: DIFlagFwdDecl)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1899, file: !197, line: 2378, baseType: !2024, size: 64, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!1785, !1898, !22, !26, !110}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1899, file: !197, line: 2380, baseType: !2028, size: 64, offset: 320)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{null, !1887}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1899, file: !197, line: 2381, baseType: !1988, size: 64, offset: 384)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1899, file: !197, line: 2382, baseType: !1898, size: 64, offset: 448)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1899, file: !197, line: 2383, baseType: !266, size: 64, offset: 512)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1899, file: !197, line: 2385, baseType: !2035, offset: 576)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2036, line: 206, elements: !620)
!2036 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1899, file: !197, line: 2386, baseType: !2035, offset: 576)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1899, file: !197, line: 2387, baseType: !2035, offset: 576)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1899, file: !197, line: 2388, baseType: !2040, offset: 576)
!2040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2035, elements: !248)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1899, file: !197, line: 2390, baseType: !2035, offset: 576)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1899, file: !197, line: 2391, baseType: !2035, offset: 576)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1899, file: !197, line: 2392, baseType: !2035, offset: 576)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1899, file: !197, line: 2393, baseType: !2035, offset: 576)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1888, file: !197, line: 1197, baseType: !2046, size: 64, offset: 384)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2048)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !197, line: 2057, size: 1664, elements: !2049)
!2049 = !{!2050, !2054, !2058, !2059, !2063, !2069, !2073, !2074, !2075, !2079, !2087, !2091, !2092, !2093, !2099, !2103, !2104, !2108, !2109, !2110, !2111, !2117, !2121, !2174, !2189, !2190}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2048, file: !197, line: 2058, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!1763, !1887}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2048, file: !197, line: 2059, baseType: !2055, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{null, !1763}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2048, file: !197, line: 2060, baseType: !2055, size: 64, offset: 128)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2048, file: !197, line: 2062, baseType: !2060, size: 64, offset: 192)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{null, !1763, !22}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2048, file: !197, line: 2063, baseType: !2064, size: 64, offset: 256)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!22, !1763, !2067}
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !197, line: 309, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2048, file: !197, line: 2064, baseType: !2070, size: 64, offset: 320)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!22, !1763}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2048, file: !197, line: 2065, baseType: !2055, size: 64, offset: 384)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2048, file: !197, line: 2066, baseType: !2028, size: 64, offset: 448)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2048, file: !197, line: 2067, baseType: !2076, size: 64, offset: 512)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!22, !1887, !22}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2048, file: !197, line: 2068, baseType: !2080, size: 64, offset: 576)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!22, !1887, !2083}
!2083 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !197, line: 2052, baseType: !41, size: 32, elements: !2084)
!2084 = !{!2085, !2086}
!2085 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!2086 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2048, file: !197, line: 2069, baseType: !2088, size: 64, offset: 640)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!22, !1887}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2048, file: !197, line: 2070, baseType: !2080, size: 64, offset: 704)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2048, file: !197, line: 2071, baseType: !2088, size: 64, offset: 768)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2048, file: !197, line: 2072, baseType: !2094, size: 64, offset: 832)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!22, !1785, !2097}
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !197, line: 62, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2048, file: !197, line: 2073, baseType: !2100, size: 64, offset: 896)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!22, !1887, !1167, !130}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2048, file: !197, line: 2074, baseType: !2028, size: 64, offset: 960)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2048, file: !197, line: 2076, baseType: !2105, size: 64, offset: 1024)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!22, !125, !1785}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2048, file: !197, line: 2077, baseType: !2105, size: 64, offset: 1088)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2048, file: !197, line: 2078, baseType: !2105, size: 64, offset: 1152)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2048, file: !197, line: 2079, baseType: !2105, size: 64, offset: 1216)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2048, file: !197, line: 2081, baseType: !2112, size: 64, offset: 1280)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!2115, !1887, !22, !130, !132, !140}
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !18, line: 66, baseType: !2116)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !134, line: 73, baseType: !1619)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2048, file: !197, line: 2082, baseType: !2118, size: 64, offset: 1344)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!2115, !1887, !22, !26, !132, !140}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2048, file: !197, line: 2083, baseType: !2122, size: 64, offset: 1408)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!2125, !1763}
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !2128, line: 296, size: 1664, elements: !2129)
!2128 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!2129 = !{!2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2159, !2160, !2161}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2127, file: !2128, line: 297, baseType: !270, size: 128)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2127, file: !2128, line: 298, baseType: !165, size: 128, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2127, file: !2128, line: 299, baseType: !165, size: 128, offset: 256)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2127, file: !2128, line: 300, baseType: !165, size: 128, offset: 384)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2127, file: !2128, line: 301, baseType: !145, size: 256, offset: 512)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2127, file: !2128, line: 302, baseType: !69, size: 32, offset: 768)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2127, file: !2128, line: 303, baseType: !17, size: 32, offset: 800)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2127, file: !2128, line: 304, baseType: !1887, size: 64, offset: 832)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2127, file: !2128, line: 305, baseType: !2139, size: 64, offset: 896)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !2128, line: 68, size: 64, elements: !2140)
!2140 = !{!2141, !2153}
!2141 = !DIDerivedType(tag: DW_TAG_member, scope: !2139, file: !2128, line: 69, baseType: !2142, size: 32)
!2142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2139, file: !2128, line: 69, size: 32, elements: !2143)
!2143 = !{!2144, !2145, !2146}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2142, file: !2128, line: 70, baseType: !768, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2142, file: !2128, line: 71, baseType: !776, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2142, file: !2128, line: 72, baseType: !2147, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2148, line: 24, baseType: !2149)
!2148 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2148, line: 22, size: 32, elements: !2150)
!2150 = !{!2151}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2149, file: !2148, line: 23, baseType: !2152, size: 32)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2148, line: 20, baseType: !774)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2139, file: !2128, line: 74, baseType: !2154, size: 32, offset: 32)
!2154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !2128, line: 54, baseType: !41, size: 32, elements: !2155)
!2155 = !{!2156, !2157, !2158}
!2156 = !DIEnumerator(name: "USRQUOTA", value: 0)
!2157 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!2158 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2127, file: !2128, line: 306, baseType: !140, size: 64, offset: 960)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2127, file: !2128, line: 307, baseType: !33, size: 64, offset: 1024)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2127, file: !2128, line: 308, baseType: !2162, size: 576, offset: 1088)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !2128, line: 205, size: 576, elements: !2163)
!2163 = !{!2164, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2162, file: !2128, line: 206, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !2128, line: 66, baseType: !142)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2162, file: !2128, line: 207, baseType: !2165, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2162, file: !2128, line: 208, baseType: !2165, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2162, file: !2128, line: 209, baseType: !2165, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2162, file: !2128, line: 210, baseType: !2165, size: 64, offset: 256)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2162, file: !2128, line: 211, baseType: !2165, size: 64, offset: 320)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2162, file: !2128, line: 212, baseType: !2165, size: 64, offset: 384)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2162, file: !2128, line: 213, baseType: !821, size: 64, offset: 448)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2162, file: !2128, line: 214, baseType: !821, size: 64, offset: 512)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2048, file: !197, line: 2085, baseType: !2175, size: 64, offset: 1472)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!1036, !1887, !2178}
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2180, line: 15, size: 256, elements: !2181)
!2180 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2181 = !{!2182, !2183, !2184, !2185, !2186}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2179, file: !2180, line: 16, baseType: !108, size: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2179, file: !2180, line: 19, baseType: !22, size: 32, offset: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2179, file: !2180, line: 26, baseType: !33, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2179, file: !2180, line: 33, baseType: !33, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2179, file: !2180, line: 36, baseType: !2187, size: 64, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2180, line: 36, flags: DIFlagFwdDecl)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2048, file: !197, line: 2087, baseType: !2175, size: 64, offset: 1536)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2048, file: !197, line: 2089, baseType: !2028, size: 64, offset: 1600)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1888, file: !197, line: 1198, baseType: !2192, size: 64, offset: 448)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2194)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !2128, line: 324, size: 704, elements: !2195)
!2195 = !{!2196, !2200, !2204, !2208, !2209, !2210, !2211, !2212, !2217, !2222, !2226}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2194, file: !2128, line: 325, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!22, !2126}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2194, file: !2128, line: 326, baseType: !2201, size: 64, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!2126, !1887, !22}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2194, file: !2128, line: 327, baseType: !2205, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{null, !2126}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2194, file: !2128, line: 328, baseType: !2197, size: 64, offset: 192)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2194, file: !2128, line: 329, baseType: !2197, size: 64, offset: 256)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2194, file: !2128, line: 330, baseType: !2197, size: 64, offset: 320)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2194, file: !2128, line: 331, baseType: !2076, size: 64, offset: 384)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2194, file: !2128, line: 334, baseType: !2213, size: 64, offset: 448)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!2216, !1763}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2194, file: !2128, line: 335, baseType: !2218, size: 64, offset: 512)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!22, !1763, !2221}
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2194, file: !2128, line: 337, baseType: !2223, size: 64, offset: 576)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!22, !1763, !2216}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2194, file: !2128, line: 339, baseType: !2227, size: 64, offset: 640)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!22, !1887, !2230}
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1888, file: !197, line: 1199, baseType: !2232, size: 64, offset: 512)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2234)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !2128, line: 430, size: 704, elements: !2235)
!2235 = !{!2236, !2247, !2248, !2252, !2253, !2254, !2269, !2292, !2296, !2297, !2320}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2234, file: !2128, line: 431, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!22, !1887, !22, !22, !2240}
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2242)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !2243, line: 8, size: 128, elements: !2244)
!2243 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!2244 = !{!2245, !2246}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !2242, file: !2243, line: 9, baseType: !1881, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !2242, file: !2243, line: 10, baseType: !1785, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2234, file: !2128, line: 432, baseType: !2076, size: 64, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2234, file: !2128, line: 433, baseType: !2249, size: 64, offset: 128)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!22, !1887, !41}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2234, file: !2128, line: 434, baseType: !2249, size: 64, offset: 192)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2234, file: !2128, line: 435, baseType: !2076, size: 64, offset: 256)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2234, file: !2128, line: 436, baseType: !2255, size: 64, offset: 320)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!22, !1887, !22, !2258}
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !2128, line: 417, size: 256, elements: !2260)
!2260 = !{!2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2259, file: !2128, line: 418, baseType: !22, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2259, file: !2128, line: 419, baseType: !41, size: 32, offset: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2259, file: !2128, line: 420, baseType: !41, size: 32, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2259, file: !2128, line: 422, baseType: !41, size: 32, offset: 96)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2259, file: !2128, line: 423, baseType: !41, size: 32, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2259, file: !2128, line: 424, baseType: !41, size: 32, offset: 160)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2259, file: !2128, line: 425, baseType: !41, size: 32, offset: 192)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2259, file: !2128, line: 426, baseType: !41, size: 32, offset: 224)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2234, file: !2128, line: 437, baseType: !2270, size: 64, offset: 384)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!22, !1887, !2139, !2273}
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !2128, line: 345, size: 960, elements: !2275)
!2275 = !{!2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2274, file: !2128, line: 346, baseType: !22, size: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2274, file: !2128, line: 347, baseType: !350, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2274, file: !2128, line: 348, baseType: !350, size: 64, offset: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2274, file: !2128, line: 349, baseType: !350, size: 64, offset: 192)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2274, file: !2128, line: 350, baseType: !350, size: 64, offset: 256)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2274, file: !2128, line: 351, baseType: !350, size: 64, offset: 320)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2274, file: !2128, line: 352, baseType: !350, size: 64, offset: 384)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2274, file: !2128, line: 353, baseType: !155, size: 64, offset: 448)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2274, file: !2128, line: 355, baseType: !155, size: 64, offset: 512)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2274, file: !2128, line: 356, baseType: !22, size: 32, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2274, file: !2128, line: 357, baseType: !22, size: 32, offset: 608)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2274, file: !2128, line: 358, baseType: !350, size: 64, offset: 640)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2274, file: !2128, line: 359, baseType: !350, size: 64, offset: 704)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2274, file: !2128, line: 360, baseType: !350, size: 64, offset: 768)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2274, file: !2128, line: 361, baseType: !155, size: 64, offset: 832)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2274, file: !2128, line: 362, baseType: !22, size: 32, offset: 896)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2234, file: !2128, line: 438, baseType: !2293, size: 64, offset: 448)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!22, !1887, !2230, !2273}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2234, file: !2128, line: 440, baseType: !2270, size: 64, offset: 512)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2234, file: !2128, line: 441, baseType: !2298, size: 64, offset: 576)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!22, !1887, !2301}
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !2128, line: 411, size: 1408, elements: !2303)
!2303 = !{!2304, !2305}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2302, file: !2128, line: 412, baseType: !41, size: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2302, file: !2128, line: 413, baseType: !2306, size: 1344, offset: 64)
!2306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2307, size: 1344, elements: !248)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !2128, line: 397, size: 448, elements: !2308)
!2308 = !{!2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2319}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2307, file: !2128, line: 398, baseType: !41, size: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2307, file: !2128, line: 399, baseType: !41, size: 32, offset: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2307, file: !2128, line: 401, baseType: !41, size: 32, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2307, file: !2128, line: 402, baseType: !41, size: 32, offset: 96)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2307, file: !2128, line: 403, baseType: !41, size: 32, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2307, file: !2128, line: 404, baseType: !41, size: 32, offset: 160)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2307, file: !2128, line: 405, baseType: !41, size: 32, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2307, file: !2128, line: 406, baseType: !352, size: 64, offset: 256)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2307, file: !2128, line: 407, baseType: !2318, size: 64, offset: 320)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !18, line: 132, baseType: !350)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2307, file: !2128, line: 408, baseType: !2318, size: 64, offset: 384)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2234, file: !2128, line: 442, baseType: !2249, size: 64, offset: 640)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1888, file: !197, line: 1200, baseType: !2322, size: 64, offset: 576)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2324)
!2324 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !197, line: 54, flags: DIFlagFwdDecl)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1888, file: !197, line: 1201, baseType: !33, size: 64, offset: 640)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1888, file: !197, line: 1202, baseType: !33, size: 64, offset: 704)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1888, file: !197, line: 1203, baseType: !33, size: 64, offset: 768)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1888, file: !197, line: 1204, baseType: !1785, size: 64, offset: 832)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1888, file: !197, line: 1205, baseType: !655, size: 320, offset: 896)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1888, file: !197, line: 1206, baseType: !22, size: 32, offset: 1216)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1888, file: !197, line: 1207, baseType: !17, size: 32, offset: 1248)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1888, file: !197, line: 1209, baseType: !110, size: 64, offset: 1280)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1888, file: !197, line: 1211, baseType: !2334, size: 64, offset: 1344)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2337)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !2338, line: 36, size: 384, elements: !2339)
!2338 = !DIFile(filename: "./include/linux/xattr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b18c2f606ad05d87dee3d79567b8d0c")
!2339 = !{!2340, !2341, !2342, !2343, !2347, !2351}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2337, file: !2338, line: 37, baseType: !26, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !2337, file: !2338, line: 38, baseType: !26, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2337, file: !2338, line: 39, baseType: !22, size: 32, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2337, file: !2338, line: 40, baseType: !2344, size: 64, offset: 192)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!795, !1785}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2337, file: !2338, line: 41, baseType: !2348, size: 64, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!22, !2335, !1785, !1763, !26, !110, !132}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2337, file: !2338, line: 44, baseType: !2352, size: 64, offset: 320)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!22, !2335, !2355, !1785, !1763, !26, !38, !132, !22}
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1221, line: 42, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1888, file: !197, line: 1223, baseType: !2358, size: 64, offset: 1408)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1793, line: 34, size: 64, elements: !2359)
!2359 = !{!2360}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2358, file: !1793, line: 35, baseType: !1796, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1888, file: !197, line: 1224, baseType: !165, size: 128, offset: 1472)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1888, file: !197, line: 1225, baseType: !2363, size: 64, offset: 1600)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !197, line: 1225, flags: DIFlagFwdDecl)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1888, file: !197, line: 1226, baseType: !2366, size: 64, offset: 1664)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !197, line: 1226, flags: DIFlagFwdDecl)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1888, file: !197, line: 1227, baseType: !2369, size: 64, offset: 1728)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !197, line: 50, flags: DIFlagFwdDecl)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1888, file: !197, line: 1228, baseType: !2372, size: 64, offset: 1792)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !197, line: 1228, flags: DIFlagFwdDecl)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1888, file: !197, line: 1229, baseType: !270, size: 128, offset: 1856)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1888, file: !197, line: 1230, baseType: !41, size: 32, offset: 1984)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1888, file: !197, line: 1231, baseType: !2377, size: 2496, offset: 2048)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !2128, line: 521, size: 2496, elements: !2378)
!2378 = !{!2379, !2380, !2381, !2383, !2415}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2377, file: !2128, line: 522, baseType: !41, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2377, file: !2128, line: 523, baseType: !655, size: 320, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2377, file: !2128, line: 524, baseType: !2382, size: 192, offset: 384)
!2382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1763, size: 192, elements: !248)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2377, file: !2128, line: 525, baseType: !2384, size: 1728, offset: 576)
!2384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2385, size: 1728, elements: !248)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !2128, line: 222, size: 576, elements: !2386)
!2386 = !{!2387, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2385, file: !2128, line: 223, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !2128, line: 445, size: 256, elements: !2390)
!2390 = !{!2391, !2392, !2405, !2406}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2389, file: !2128, line: 446, baseType: !22, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2389, file: !2128, line: 447, baseType: !2393, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2395)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !2128, line: 312, size: 512, elements: !2396)
!2396 = !{!2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2395, file: !2128, line: 313, baseType: !2076, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2395, file: !2128, line: 314, baseType: !2076, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2395, file: !2128, line: 315, baseType: !2076, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2395, file: !2128, line: 316, baseType: !2076, size: 64, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2395, file: !2128, line: 317, baseType: !2197, size: 64, offset: 256)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2395, file: !2128, line: 318, baseType: !2197, size: 64, offset: 320)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2395, file: !2128, line: 319, baseType: !2197, size: 64, offset: 384)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2395, file: !2128, line: 320, baseType: !2227, size: 64, offset: 448)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2389, file: !2128, line: 448, baseType: !1988, size: 64, offset: 128)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2389, file: !2128, line: 449, baseType: !2388, size: 64, offset: 192)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2385, file: !2128, line: 224, baseType: !22, size: 32, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2385, file: !2128, line: 226, baseType: !165, size: 128, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2385, file: !2128, line: 227, baseType: !33, size: 64, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2385, file: !2128, line: 228, baseType: !41, size: 32, offset: 320)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2385, file: !2128, line: 229, baseType: !41, size: 32, offset: 352)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2385, file: !2128, line: 230, baseType: !2165, size: 64, offset: 384)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2385, file: !2128, line: 231, baseType: !2165, size: 64, offset: 448)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2385, file: !2128, line: 232, baseType: !110, size: 64, offset: 512)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2377, file: !2128, line: 526, baseType: !2416, size: 192, offset: 2304)
!2416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2393, size: 192, elements: !248)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1888, file: !197, line: 1233, baseType: !2418, size: 2368, offset: 4544)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !197, line: 1184, size: 2368, elements: !2419)
!2419 = !{!2420, !2421, !2422}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2418, file: !197, line: 1185, baseType: !105, size: 16)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2418, file: !197, line: 1186, baseType: !105, size: 16, offset: 16)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2418, file: !197, line: 1187, baseType: !2423, size: 2304, offset: 64)
!2423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2424, size: 2304, elements: !248)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2425, line: 12, size: 768, elements: !2426)
!2425 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2426 = !{!2427, !2435, !2437, !2442, !2443}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2424, file: !2425, line: 13, baseType: !2428, size: 384)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2429, line: 17, size: 384, elements: !2430)
!2429 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2430 = !{!2431, !2432, !2433, !2434}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2428, file: !2429, line: 18, baseType: !22, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2428, file: !2429, line: 19, baseType: !22, size: 32, offset: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2428, file: !2429, line: 20, baseType: !279, size: 192, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2428, file: !2429, line: 22, baseType: !209, size: 128, align: 64, offset: 256)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2424, file: !2425, line: 14, baseType: !2436, size: 64, offset: 384)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2424, file: !2425, line: 15, baseType: !2438, size: 64, offset: 448)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2439, line: 16, size: 64, elements: !2440)
!2439 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2440 = !{!2441}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2438, file: !2439, line: 17, baseType: !300, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2424, file: !2425, line: 16, baseType: !279, size: 192, offset: 512)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2424, file: !2425, line: 17, baseType: !17, size: 32, offset: 704)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1888, file: !197, line: 1240, baseType: !110, size: 64, offset: 6912)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1888, file: !197, line: 1243, baseType: !114, size: 32, offset: 6976)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1888, file: !197, line: 1245, baseType: !821, size: 64, offset: 7040)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1888, file: !197, line: 1246, baseType: !821, size: 64, offset: 7104)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1888, file: !197, line: 1248, baseType: !115, size: 32, offset: 7168)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1888, file: !197, line: 1249, baseType: !2450, size: 64, offset: 7232)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !2452, line: 472, size: 256, elements: !2453)
!2452 = !DIFile(filename: "./include/linux/fsnotify_backend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad4cb752e360d262cfaf7a818c344e9c")
!2453 = !{!2454, !2455, !2456, !2457, !2463, !2470}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2451, file: !2452, line: 473, baseType: !69, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2451, file: !2452, line: 474, baseType: !105, size: 16, offset: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2451, file: !2452, line: 477, baseType: !105, size: 16, offset: 48)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "fsid", scope: !2451, file: !2452, line: 478, baseType: !2458, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_fsid_t", file: !134, line: 81, baseType: !2459)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 79, size: 64, elements: !2460)
!2460 = !{!2461}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2459, file: !134, line: 80, baseType: !2462, size: 64)
!2462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !1383)
!2463 = !DIDerivedType(tag: DW_TAG_member, scope: !2451, file: !2452, line: 479, baseType: !2464, size: 64, offset: 128)
!2464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2451, file: !2452, line: 479, size: 64, elements: !2465)
!2465 = !{!2466, !2469}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !2464, file: !2452, line: 481, baseType: !2467, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsnotify_connp_t", file: !2452, line: 464, baseType: !2450)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_next", scope: !2464, file: !2452, line: 483, baseType: !2450, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2451, file: !2452, line: 485, baseType: !266, size: 64, offset: 192)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1888, file: !197, line: 1252, baseType: !2472, size: 256, offset: 7296)
!2472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1818)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1888, file: !197, line: 1253, baseType: !2474, size: 128, offset: 7552)
!2474 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2475, line: 21, baseType: !2476)
!2475 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2475, line: 19, size: 128, elements: !2477)
!2477 = !{!2478}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2476, file: !2475, line: 20, baseType: !2479, size: 128)
!2479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 128, elements: !1278)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1888, file: !197, line: 1255, baseType: !41, size: 32, offset: 7680)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1888, file: !197, line: 1261, baseType: !145, size: 256, offset: 7744)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1888, file: !197, line: 1267, baseType: !26, size: 64, offset: 8000)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1888, file: !197, line: 1269, baseType: !1834, size: 64, offset: 8064)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1888, file: !197, line: 1271, baseType: !2485, size: 448, offset: 8128)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2180, line: 63, size: 448, elements: !2486)
!2486 = !{!2487, !2492, !2493, !2494, !2495, !2496, !2497}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2485, file: !2180, line: 64, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!33, !2491, !2178}
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2485, file: !2180, line: 66, baseType: !2488, size: 64, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2485, file: !2180, line: 69, baseType: !1036, size: 64, offset: 128)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2485, file: !2180, line: 70, baseType: !22, size: 32, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2485, file: !2180, line: 71, baseType: !41, size: 32, offset: 224)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2485, file: !2180, line: 74, baseType: !165, size: 128, offset: 256)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2485, file: !2180, line: 85, baseType: !2498, size: 64, offset: 384)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1888, file: !197, line: 1274, baseType: !149, size: 64, offset: 8576)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1888, file: !197, line: 1280, baseType: !149, size: 64, offset: 8640)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1888, file: !197, line: 1283, baseType: !22, size: 32, offset: 8704)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1888, file: !197, line: 1286, baseType: !2503, size: 32, offset: 8736)
!2503 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2504, line: 8, baseType: !114)
!2504 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1888, file: !197, line: 1289, baseType: !2506, size: 64, offset: 8768)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !911, line: 18, flags: DIFlagFwdDecl)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1888, file: !197, line: 1290, baseType: !266, size: 64, offset: 8832)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1888, file: !197, line: 1297, baseType: !737, size: 64, offset: 8896)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1888, file: !197, line: 1304, baseType: !2511, size: 64, offset: 8960)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2512, line: 49, size: 64, elements: !2513)
!2512 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2513 = !{!2514}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2511, file: !2512, line: 50, baseType: !2515, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2512, line: 41, size: 512, align: 512, elements: !2517)
!2517 = !{!2518, !2519, !2524}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2516, file: !2512, line: 43, baseType: !69, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2516, file: !2512, line: 45, baseType: !2520, size: 192, offset: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2512, line: 29, size: 192, elements: !2521)
!2521 = !{!2522, !2523}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2520, file: !2512, line: 30, baseType: !165, size: 128)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2520, file: !2512, line: 32, baseType: !1036, size: 64, offset: 128)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2516, file: !2512, line: 46, baseType: !1036, size: 64, offset: 256)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1888, file: !197, line: 1305, baseType: !2511, size: 64, offset: 9024)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1888, file: !197, line: 1306, baseType: !209, size: 128, align: 64, offset: 9088)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1888, file: !197, line: 1307, baseType: !910, size: 256, offset: 9216)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1888, file: !197, line: 1309, baseType: !145, size: 256, offset: 9472)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1888, file: !197, line: 1314, baseType: !22, size: 32, offset: 9728)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1888, file: !197, line: 1317, baseType: !69, size: 32, align: 512, offset: 10240)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1888, file: !197, line: 1318, baseType: !165, size: 128, offset: 10304)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1888, file: !197, line: 1320, baseType: !69, size: 32, offset: 10432)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1888, file: !197, line: 1321, baseType: !165, size: 128, offset: 10496)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1882, file: !1883, line: 73, baseType: !22, size: 32, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1882, file: !1883, line: 74, baseType: !2355, size: 64, offset: 192)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1836, file: !1787, line: 141, baseType: !2538, size: 64, offset: 704)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!22, !2240, !795}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1836, file: !1787, line: 142, baseType: !2542, size: 64, offset: 768)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!1785, !1785, !2545}
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1764)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1786, file: !1787, line: 96, baseType: !1887, size: 64, offset: 832)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1786, file: !1787, line: 97, baseType: !33, size: 64, offset: 896)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1786, file: !1787, line: 98, baseType: !110, size: 64, offset: 960)
!2550 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !1787, line: 100, baseType: !2551, size: 128, offset: 1024)
!2551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1786, file: !1787, line: 100, size: 128, elements: !2552)
!2552 = !{!2553, !2554}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2551, file: !1787, line: 101, baseType: !165, size: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2551, file: !1787, line: 102, baseType: !2555, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1786, file: !1787, line: 104, baseType: !165, size: 128, offset: 1152)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1786, file: !1787, line: 105, baseType: !165, size: 128, offset: 1280)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1786, file: !1787, line: 113, baseType: !2559, size: 128, offset: 1408)
!2559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1786, file: !1787, line: 109, size: 128, elements: !2560)
!2560 = !{!2561, !2562, !2563}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2559, file: !1787, line: 110, baseType: !270, size: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2559, file: !1787, line: 111, baseType: !1792, size: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2559, file: !1787, line: 112, baseType: !209, size: 128, align: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1779, file: !197, line: 1968, baseType: !2565, size: 64, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!26, !1785, !1763, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2570, line: 10, size: 128, elements: !2571)
!2570 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!2571 = !{!2572, !2576}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2569, file: !2570, line: 11, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{null, !110}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2569, file: !2570, line: 12, baseType: !110, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1779, file: !197, line: 1969, baseType: !2578, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!22, !2355, !1763, !22}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1779, file: !197, line: 1970, baseType: !2582, size: 64, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!1773, !1763, !22, !795}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1779, file: !197, line: 1972, baseType: !2586, size: 64, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!22, !1785, !130, !22}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1779, file: !197, line: 1974, baseType: !2590, size: 64, offset: 320)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!22, !2355, !1763, !1785, !950, !795}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1779, file: !197, line: 1976, baseType: !2594, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!22, !1785, !1763, !1785}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1779, file: !197, line: 1977, baseType: !2598, size: 64, offset: 448)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!22, !1763, !1785}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1779, file: !197, line: 1978, baseType: !2602, size: 64, offset: 512)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!22, !2355, !1763, !1785, !26}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1779, file: !197, line: 1980, baseType: !2606, size: 64, offset: 576)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!22, !2355, !1763, !1785, !950}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1779, file: !197, line: 1982, baseType: !2598, size: 64, offset: 640)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1779, file: !197, line: 1983, baseType: !2611, size: 64, offset: 704)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!22, !2355, !1763, !1785, !950, !1892}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1779, file: !197, line: 1985, baseType: !2615, size: 64, offset: 768)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!22, !2355, !1763, !1785, !1763, !1785, !41}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1779, file: !197, line: 1987, baseType: !2619, size: 64, offset: 832)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!22, !2355, !1785, !2622}
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !197, line: 226, size: 640, elements: !2624)
!2624 = !{!2625, !2626, !2627, !2637, !2646, !2647, !2652, !2653, !2654}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2623, file: !197, line: 227, baseType: !41, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2623, file: !197, line: 228, baseType: !950, size: 16, offset: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, scope: !2623, file: !197, line: 241, baseType: !2628, size: 32, offset: 64)
!2628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2623, file: !197, line: 241, size: 32, elements: !2629)
!2629 = !{!2630, !2631}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2628, file: !197, line: 242, baseType: !768, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !2628, file: !197, line: 243, baseType: !2632, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !2633, line: 16, baseType: !2634)
!2633 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2633, line: 14, size: 32, elements: !2635)
!2635 = !{!2636}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2634, file: !2633, line: 15, baseType: !773, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, scope: !2623, file: !197, line: 245, baseType: !2638, size: 32, offset: 96)
!2638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2623, file: !197, line: 245, size: 32, elements: !2639)
!2639 = !{!2640, !2641}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2638, file: !197, line: 246, baseType: !776, size: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !2638, file: !197, line: 247, baseType: !2642, size: 32)
!2642 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !2633, line: 20, baseType: !2643)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2633, line: 18, size: 32, elements: !2644)
!2644 = !{!2645}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2643, file: !2633, line: 19, baseType: !780, size: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2623, file: !197, line: 249, baseType: !140, size: 64, offset: 128)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2623, file: !197, line: 250, baseType: !2648, size: 128, offset: 192)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !822, line: 13, size: 128, elements: !2649)
!2649 = !{!2650, !2651}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2648, file: !822, line: 14, baseType: !821, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2648, file: !822, line: 15, baseType: !1036, size: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2623, file: !197, line: 251, baseType: !2648, size: 128, offset: 320)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2623, file: !197, line: 252, baseType: !2648, size: 128, offset: 448)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2623, file: !197, line: 259, baseType: !627, size: 64, offset: 576)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1779, file: !197, line: 1988, baseType: !2656, size: 64, offset: 896)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!22, !2355, !2240, !2659, !114, !41}
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2661, line: 22, size: 1280, elements: !2662)
!2661 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!2662 = !{!2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2660, file: !2661, line: 23, baseType: !114, size: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2660, file: !2661, line: 24, baseType: !950, size: 16, offset: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2660, file: !2661, line: 25, baseType: !41, size: 32, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2660, file: !2661, line: 26, baseType: !829, size: 32, offset: 96)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2660, file: !2661, line: 27, baseType: !350, size: 64, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2660, file: !2661, line: 28, baseType: !350, size: 64, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2660, file: !2661, line: 41, baseType: !350, size: 64, offset: 256)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2660, file: !2661, line: 42, baseType: !1892, size: 32, offset: 320)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2660, file: !2661, line: 43, baseType: !1892, size: 32, offset: 352)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2660, file: !2661, line: 44, baseType: !768, size: 32, offset: 384)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2660, file: !2661, line: 45, baseType: !776, size: 32, offset: 416)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2660, file: !2661, line: 46, baseType: !140, size: 64, offset: 448)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2660, file: !2661, line: 47, baseType: !2648, size: 128, offset: 512)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2660, file: !2661, line: 48, baseType: !2648, size: 128, offset: 640)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2660, file: !2661, line: 49, baseType: !2648, size: 128, offset: 768)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2660, file: !2661, line: 50, baseType: !2648, size: 128, offset: 896)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2660, file: !2661, line: 51, baseType: !350, size: 64, offset: 1024)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2660, file: !2661, line: 52, baseType: !350, size: 64, offset: 1088)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !2660, file: !2661, line: 53, baseType: !114, size: 32, offset: 1152)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !2660, file: !2661, line: 54, baseType: !114, size: 32, offset: 1184)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !2660, file: !2661, line: 55, baseType: !350, size: 64, offset: 1216)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1779, file: !197, line: 1990, baseType: !2685, size: 64, offset: 960)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!2115, !1785, !130, !132}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1779, file: !197, line: 1991, baseType: !2689, size: 64, offset: 1024)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!22, !1763, !2692, !350, !350}
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !197, line: 55, flags: DIFlagFwdDecl)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1779, file: !197, line: 1993, baseType: !2695, size: 64, offset: 1088)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!22, !1763, !22}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1779, file: !197, line: 1994, baseType: !2699, size: 64, offset: 1152)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!22, !1763, !1785, !627, !41, !950}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1779, file: !197, line: 1997, baseType: !2703, size: 64, offset: 1216)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!22, !2355, !1763, !627, !950}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1779, file: !197, line: 1999, baseType: !2707, size: 64, offset: 1280)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!1773, !2355, !1785, !22}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1779, file: !197, line: 2001, baseType: !2711, size: 64, offset: 1344)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!22, !2355, !1785, !1773, !22}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1779, file: !197, line: 2003, baseType: !2715, size: 64, offset: 1408)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!22, !2355, !1785, !2718}
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !197, line: 76, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1779, file: !197, line: 2005, baseType: !2721, size: 64, offset: 1472)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!22, !1785, !2718}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1779, file: !197, line: 2006, baseType: !2725, size: 64, offset: 1536)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!2728, !1763}
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !197, line: 3192, size: 192, elements: !2730)
!2730 = !{!2731, !2732}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2729, file: !197, line: 3193, baseType: !65, size: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !2729, file: !197, line: 3194, baseType: !114, size: 32, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1764, file: !197, line: 655, baseType: !1887, size: 64, offset: 448)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1764, file: !197, line: 656, baseType: !1759, size: 64, offset: 512)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1764, file: !197, line: 659, baseType: !110, size: 64, offset: 576)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1764, file: !197, line: 663, baseType: !33, size: 64, offset: 640)
!2737 = !DIDerivedType(tag: DW_TAG_member, scope: !1764, file: !197, line: 671, baseType: !2738, size: 32, offset: 704)
!2738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1764, file: !197, line: 671, size: 32, elements: !2739)
!2739 = !{!2740, !2742}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2738, file: !197, line: 672, baseType: !2741, size: 32)
!2741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2738, file: !197, line: 673, baseType: !41, size: 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1764, file: !197, line: 675, baseType: !1892, size: 32, offset: 736)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1764, file: !197, line: 676, baseType: !140, size: 64, offset: 768)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1764, file: !197, line: 677, baseType: !2648, size: 128, offset: 832)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1764, file: !197, line: 678, baseType: !2648, size: 128, offset: 960)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1764, file: !197, line: 679, baseType: !2648, size: 128, offset: 1088)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1764, file: !197, line: 680, baseType: !69, size: 32, offset: 1216)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1764, file: !197, line: 681, baseType: !105, size: 16, offset: 1248)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1764, file: !197, line: 682, baseType: !93, size: 8, offset: 1264)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1764, file: !197, line: 683, baseType: !93, size: 8, offset: 1272)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1764, file: !197, line: 684, baseType: !2318, size: 64, offset: 1280)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1764, file: !197, line: 691, baseType: !33, size: 64, offset: 1344)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1764, file: !197, line: 692, baseType: !655, size: 320, offset: 1408)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1764, file: !197, line: 694, baseType: !33, size: 64, offset: 1728)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1764, file: !197, line: 695, baseType: !33, size: 64, offset: 1792)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1764, file: !197, line: 697, baseType: !270, size: 128, offset: 1856)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1764, file: !197, line: 698, baseType: !165, size: 128, offset: 1984)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1764, file: !197, line: 707, baseType: !165, size: 128, offset: 2112)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1764, file: !197, line: 708, baseType: !165, size: 128, offset: 2240)
!2761 = !DIDerivedType(tag: DW_TAG_member, scope: !1764, file: !197, line: 709, baseType: !2762, size: 128, offset: 2368)
!2762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1764, file: !197, line: 709, size: 128, elements: !2763)
!2763 = !{!2764, !2765}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2762, file: !197, line: 710, baseType: !266, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2762, file: !197, line: 711, baseType: !209, size: 128, align: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1764, file: !197, line: 713, baseType: !151, size: 64, offset: 2496)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1764, file: !197, line: 714, baseType: !151, size: 64, offset: 2560)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1764, file: !197, line: 715, baseType: !17, size: 32, offset: 2624)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1764, file: !197, line: 716, baseType: !17, size: 32, offset: 2656)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1764, file: !197, line: 717, baseType: !17, size: 32, offset: 2688)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1764, file: !197, line: 719, baseType: !17, size: 32, offset: 2720)
!2772 = !DIDerivedType(tag: DW_TAG_member, scope: !1764, file: !197, line: 721, baseType: !2773, size: 64, offset: 2752)
!2773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1764, file: !197, line: 721, size: 64, elements: !2774)
!2774 = !{!2775, !3245}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2773, file: !197, line: 722, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2778)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !197, line: 1914, size: 2112, elements: !2779)
!2779 = !{!2780, !2781, !2785, !2789, !2793, !2954, !2955, !2961, !2974, !2990, !2994, !2995, !3169, !3170, !3174, !3179, !3180, !3184, !3188, !3194, !3195, !3199, !3200, !3204, !3208, !3212, !3218, !3222, !3226, !3230, !3234, !3235, !3241}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2778, file: !197, line: 1915, baseType: !1988, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2778, file: !197, line: 1916, baseType: !2782, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!140, !627, !140, !22}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2778, file: !197, line: 1917, baseType: !2786, size: 64, offset: 128)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!2115, !627, !130, !132, !179}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2778, file: !197, line: 1918, baseType: !2790, size: 64, offset: 192)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!2115, !627, !26, !132, !179}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2778, file: !197, line: 1919, baseType: !2794, size: 64, offset: 256)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!2115, !2797, !2902}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !197, line: 373, size: 384, elements: !2799)
!2799 = !{!2800, !2801, !2802, !2806, !2807, !2808, !2809}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2798, file: !197, line: 374, baseType: !627, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2798, file: !197, line: 375, baseType: !140, size: 64, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2798, file: !197, line: 376, baseType: !2803, size: 64, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{null, !2797, !1036}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2798, file: !197, line: 377, baseType: !110, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2798, file: !197, line: 378, baseType: !22, size: 32, offset: 256)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2798, file: !197, line: 379, baseType: !103, size: 16, offset: 288)
!2809 = !DIDerivedType(tag: DW_TAG_member, scope: !2798, file: !197, line: 380, baseType: !2810, size: 64, offset: 320)
!2810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2798, file: !197, line: 380, size: 64, elements: !2811)
!2811 = !{!2812, !2898}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2810, file: !197, line: 386, baseType: !2813, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !2815, line: 998, size: 448, elements: !2816)
!2815 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!2816 = !{!2817, !2884, !2885}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !2814, file: !2815, line: 999, baseType: !2818, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !600, line: 293, size: 1536, elements: !2820)
!2820 = !{!2821, !2851, !2865}
!2821 = !DIDerivedType(tag: DW_TAG_member, scope: !2819, file: !600, line: 295, baseType: !2822, size: 512)
!2822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2819, file: !600, line: 295, size: 512, elements: !2823)
!2823 = !{!2824, !2850}
!2824 = !DIDerivedType(tag: DW_TAG_member, scope: !2822, file: !600, line: 296, baseType: !2825, size: 448)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2822, file: !600, line: 296, size: 448, elements: !2826)
!2826 = !{!2827, !2828, !2837, !2838, !2839, !2848, !2849}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2825, file: !600, line: 298, baseType: !33, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, scope: !2825, file: !600, line: 299, baseType: !2829, size: 128, offset: 64)
!2829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2825, file: !600, line: 299, size: 128, elements: !2830)
!2830 = !{!2831, !2832}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2829, file: !600, line: 300, baseType: !165, size: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, scope: !2829, file: !600, line: 302, baseType: !2833, size: 128)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2829, file: !600, line: 302, size: 128, elements: !2834)
!2834 = !{!2835, !2836}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2833, file: !600, line: 303, baseType: !110, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2833, file: !600, line: 305, baseType: !41, size: 32, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2825, file: !600, line: 310, baseType: !1759, size: 64, offset: 192)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2825, file: !600, line: 311, baseType: !33, size: 64, offset: 256)
!2839 = !DIDerivedType(tag: DW_TAG_member, scope: !2825, file: !600, line: 312, baseType: !2840, size: 64, offset: 320)
!2840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2825, file: !600, line: 312, size: 64, elements: !2841)
!2841 = !{!2842, !2843}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2840, file: !600, line: 313, baseType: !110, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2840, file: !600, line: 314, baseType: !2844, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !600, line: 257, baseType: !2845)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !600, line: 255, size: 64, elements: !2846)
!2846 = !{!2847}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2845, file: !600, line: 256, baseType: !33, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2825, file: !600, line: 316, baseType: !17, size: 32, offset: 384)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2825, file: !600, line: 317, baseType: !17, size: 32, offset: 416)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2822, file: !600, line: 323, baseType: !1738, size: 512, align: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, scope: !2819, file: !600, line: 325, baseType: !2852, size: 512, offset: 512)
!2852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2819, file: !600, line: 325, size: 512, elements: !2853)
!2853 = !{!2854, !2864}
!2854 = !DIDerivedType(tag: DW_TAG_member, scope: !2852, file: !600, line: 326, baseType: !2855, size: 320)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2852, file: !600, line: 326, size: 320, elements: !2856)
!2856 = !{!2857, !2858, !2859, !2860, !2861, !2862, !2863}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2855, file: !600, line: 327, baseType: !33, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2855, file: !600, line: 328, baseType: !33, size: 64, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2855, file: !600, line: 329, baseType: !33, size: 64, offset: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2855, file: !600, line: 331, baseType: !17, size: 32, offset: 192)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2855, file: !600, line: 332, baseType: !17, size: 32, offset: 224)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2855, file: !600, line: 333, baseType: !17, size: 32, offset: 256)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2855, file: !600, line: 335, baseType: !41, size: 32, offset: 288)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2852, file: !600, line: 339, baseType: !1738, size: 512, align: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, scope: !2819, file: !600, line: 341, baseType: !2866, size: 512, offset: 1024)
!2866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2819, file: !600, line: 341, size: 512, elements: !2867)
!2867 = !{!2868, !2877, !2883}
!2868 = !DIDerivedType(tag: DW_TAG_member, scope: !2866, file: !600, line: 342, baseType: !2869, size: 384)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2866, file: !600, line: 342, size: 384, elements: !2870)
!2870 = !{!2871, !2872, !2873, !2874, !2875, !2876}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2869, file: !600, line: 343, baseType: !33, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2869, file: !600, line: 344, baseType: !33, size: 64, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2869, file: !600, line: 346, baseType: !110, size: 64, offset: 128)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2869, file: !600, line: 347, baseType: !110, size: 64, offset: 192)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2869, file: !600, line: 348, baseType: !110, size: 64, offset: 256)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2869, file: !600, line: 349, baseType: !110, size: 64, offset: 320)
!2877 = !DIDerivedType(tag: DW_TAG_member, scope: !2866, file: !600, line: 352, baseType: !2878, size: 256)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2866, file: !600, line: 352, size: 256, elements: !2879)
!2879 = !{!2880, !2881, !2882}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2878, file: !600, line: 353, baseType: !33, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2878, file: !600, line: 354, baseType: !33, size: 64, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2878, file: !600, line: 356, baseType: !165, size: 128, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2866, file: !600, line: 359, baseType: !1738, size: 512, align: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !2814, file: !2815, line: 1000, baseType: !22, size: 32, offset: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2814, file: !2815, line: 1001, baseType: !2886, size: 320, offset: 128)
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !280, line: 14, baseType: !2887)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !280, line: 30, size: 320, elements: !2888)
!2888 = !{!2889, !2890, !2891, !2897}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2887, file: !280, line: 31, baseType: !41, size: 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2887, file: !280, line: 32, baseType: !110, size: 64, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2887, file: !280, line: 33, baseType: !2892, size: 64, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !280, line: 16, baseType: !2893)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!22, !2896, !41, !22, !110}
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2887, file: !280, line: 34, baseType: !165, size: 128, offset: 192)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2810, file: !197, line: 395, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!2115, !110}
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2904, line: 41, size: 320, elements: !2905)
!2904 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2905 = !{!2906, !2907, !2908, !2909, !2910, !2911, !2916, !2949}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2903, file: !2904, line: 42, baseType: !93, size: 8)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2903, file: !2904, line: 43, baseType: !795, size: 8, offset: 8)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2903, file: !2904, line: 44, baseType: !795, size: 8, offset: 16)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2903, file: !2904, line: 45, baseType: !795, size: 8, offset: 24)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2903, file: !2904, line: 46, baseType: !795, size: 8, offset: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, scope: !2903, file: !2904, line: 47, baseType: !2912, size: 64, offset: 64)
!2912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2903, file: !2904, line: 47, size: 64, elements: !2913)
!2913 = !{!2914, !2915}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2912, file: !2904, line: 48, baseType: !132, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2912, file: !2904, line: 49, baseType: !22, size: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, scope: !2903, file: !2904, line: 61, baseType: !2917, size: 128, offset: 128)
!2917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2903, file: !2904, line: 61, size: 128, elements: !2918)
!2918 = !{!2919, !2925}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2917, file: !2904, line: 67, baseType: !2920, size: 128)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2921, line: 17, size: 128, elements: !2922)
!2921 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2922 = !{!2923, !2924}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2920, file: !2921, line: 19, baseType: !110, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2920, file: !2921, line: 20, baseType: !133, size: 64, offset: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, scope: !2917, file: !2904, line: 68, baseType: !2926, size: 128)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2917, file: !2904, line: 68, size: 128, elements: !2927)
!2927 = !{!2928, !2948}
!2928 = !DIDerivedType(tag: DW_TAG_member, scope: !2926, file: !2904, line: 69, baseType: !2929, size: 64)
!2929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2926, file: !2904, line: 69, size: 64, elements: !2930)
!2930 = !{!2931, !2934, !2941, !2945, !2947}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2929, file: !2904, line: 71, baseType: !2932, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2920)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2929, file: !2904, line: 72, baseType: !2935, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2937)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2904, line: 17, size: 128, elements: !2938)
!2938 = !{!2939, !2940}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2937, file: !2904, line: 18, baseType: !110, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2937, file: !2904, line: 19, baseType: !132, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2929, file: !2904, line: 73, baseType: !2942, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2944)
!2944 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2904, line: 73, flags: DIFlagFwdDecl)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2929, file: !2904, line: 74, baseType: !2946, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2929, file: !2904, line: 75, baseType: !110, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2926, file: !2904, line: 77, baseType: !132, size: 64, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, scope: !2903, file: !2904, line: 80, baseType: !2950, size: 64, offset: 256)
!2950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2903, file: !2904, line: 80, size: 64, elements: !2951)
!2951 = !{!2952, !2953}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2950, file: !2904, line: 81, baseType: !33, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2950, file: !2904, line: 82, baseType: !140, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2778, file: !197, line: 1920, baseType: !2794, size: 64, offset: 320)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2778, file: !197, line: 1921, baseType: !2956, size: 64, offset: 384)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!22, !2797, !2959, !41}
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !197, line: 53, flags: DIFlagFwdDecl)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2778, file: !197, line: 1923, baseType: !2962, size: 64, offset: 448)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!22, !627, !2965}
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !197, line: 1858, size: 128, elements: !2967)
!2967 = !{!2968, !2973}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2966, file: !197, line: 1859, baseType: !2969, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !197, line: 1855, baseType: !2970)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!795, !2965, !26, !22, !140, !350, !41}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2966, file: !197, line: 1860, baseType: !140, size: 64, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2778, file: !197, line: 1924, baseType: !2975, size: 64, offset: 512)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!2978, !627, !2980}
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2979, line: 59, baseType: !41)
!2979 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2982, line: 37, size: 128, elements: !2983)
!2982 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2983 = !{!2984, !2989}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2981, file: !2982, line: 38, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2982, line: 31, baseType: !2986)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !627, !2555, !2980}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2981, file: !2982, line: 39, baseType: !2978, size: 32, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2778, file: !197, line: 1925, baseType: !2991, size: 64, offset: 576)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!1036, !627, !41, !33}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2778, file: !197, line: 1926, baseType: !2991, size: 64, offset: 640)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2778, file: !197, line: 1927, baseType: !2996, size: 64, offset: 704)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!22, !627, !2999}
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !600, line: 625, size: 1344, elements: !3001)
!3001 = !{!3002, !3011, !3012, !3018, !3025, !3026, !3031, !3032, !3037, !3038, !3041, !3162, !3163, !3164, !3165, !3166, !3167}
!3002 = !DIDerivedType(tag: DW_TAG_member, scope: !3000, file: !600, line: 628, baseType: !3003, size: 128)
!3003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3000, file: !600, line: 628, size: 128, elements: !3004)
!3004 = !{!3005, !3010}
!3005 = !DIDerivedType(tag: DW_TAG_member, scope: !3003, file: !600, line: 629, baseType: !3006, size: 128)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3003, file: !600, line: 629, size: 128, elements: !3007)
!3007 = !{!3008, !3009}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3006, file: !600, line: 631, baseType: !33, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3006, file: !600, line: 632, baseType: !33, size: 64, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3003, file: !600, line: 635, baseType: !209, size: 128, align: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3000, file: !600, line: 639, baseType: !598, size: 64, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3000, file: !600, line: 640, baseType: !3013, size: 64, offset: 192)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !636, line: 297, baseType: !3014)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !636, line: 297, size: 64, elements: !3015)
!3015 = !{!3016}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3014, file: !636, line: 297, baseType: !3017, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !641, line: 19, baseType: !33)
!3018 = !DIDerivedType(tag: DW_TAG_member, scope: !3000, file: !600, line: 646, baseType: !3019, size: 64, offset: 256)
!3019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3000, file: !600, line: 646, size: 64, elements: !3020)
!3020 = !{!3021, !3024}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3019, file: !600, line: 647, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3023)
!3023 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !600, line: 542, baseType: !33)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3019, file: !600, line: 648, baseType: !3023, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3000, file: !600, line: 666, baseType: !22, size: 32, offset: 320)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3000, file: !600, line: 667, baseType: !3027, size: 64, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !600, line: 579, size: 320, elements: !3029)
!3029 = !{!3030}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3028, file: !600, line: 580, baseType: !655, size: 320)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3000, file: !600, line: 670, baseType: !795, size: 8, offset: 448)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3000, file: !600, line: 681, baseType: !3033, size: 256, offset: 512)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3000, file: !600, line: 678, size: 256, elements: !3034)
!3034 = !{!3035, !3036}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3033, file: !600, line: 679, baseType: !29, size: 192, align: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3033, file: !600, line: 680, baseType: !33, size: 64, offset: 192)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3000, file: !600, line: 689, baseType: !165, size: 128, offset: 768)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3000, file: !600, line: 691, baseType: !3039, size: 64, offset: 896)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !600, line: 691, flags: DIFlagFwdDecl)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3000, file: !600, line: 694, baseType: !3042, size: 64, offset: 960)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3044)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !3045, line: 563, size: 1024, elements: !3046)
!3045 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!3046 = !{!3047, !3051, !3052, !3056, !3060, !3064, !3128, !3132, !3136, !3140, !3141, !3142, !3146, !3150, !3154, !3158}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3044, file: !3045, line: 564, baseType: !3048, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{null, !2999}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3044, file: !3045, line: 569, baseType: !3048, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !3044, file: !3045, line: 571, baseType: !3053, size: 64, offset: 128)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!22, !2999, !33}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !3044, file: !3045, line: 572, baseType: !3057, size: 64, offset: 192)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!22, !2999}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !3044, file: !3045, line: 578, baseType: !3061, size: 64, offset: 256)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!22, !2999, !33, !33, !33}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !3044, file: !3045, line: 580, baseType: !3065, size: 64, offset: 320)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!3068, !3069}
!3068 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !600, line: 1184, baseType: !41)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !3045, line: 512, size: 896, elements: !3071)
!3071 = !{!3072, !3080, !3096, !3103, !3110, !3120, !3121, !3122, !3124, !3126}
!3072 = !DIDerivedType(tag: DW_TAG_member, scope: !3070, file: !3045, line: 513, baseType: !3073, size: 320)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3070, file: !3045, line: 513, size: 320, elements: !3074)
!3074 = !{!3075, !3076, !3077, !3078, !3079}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !3073, file: !3045, line: 514, baseType: !2999, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3073, file: !3045, line: 515, baseType: !108, size: 32, offset: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !3073, file: !3045, line: 516, baseType: !33, size: 64, offset: 128)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3073, file: !3045, line: 517, baseType: !33, size: 64, offset: 192)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !3073, file: !3045, line: 518, baseType: !33, size: 64, offset: 256)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3070, file: !3045, line: 520, baseType: !3081, size: 32, offset: 320)
!3081 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !600, line: 1325, baseType: !41, size: 32, elements: !3082)
!3082 = !{!3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095}
!3083 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!3084 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!3085 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!3086 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!3087 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!3088 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!3089 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!3090 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!3091 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!3092 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!3093 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!3094 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!3095 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3070, file: !3045, line: 522, baseType: !3097, size: 64, offset: 384)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !641, line: 22, baseType: !3099)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !641, line: 22, size: 64, elements: !3100)
!3100 = !{!3101}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3099, file: !641, line: 22, baseType: !3102, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !641, line: 15, baseType: !33)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3070, file: !3045, line: 524, baseType: !3104, size: 64, offset: 448)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !636, line: 372, baseType: !3106)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !636, line: 372, size: 64, elements: !3107)
!3107 = !{!3108}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3106, file: !636, line: 372, baseType: !3109, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !641, line: 16, baseType: !33)
!3110 = !DIDerivedType(tag: DW_TAG_member, scope: !3070, file: !3045, line: 527, baseType: !3111, size: 64, offset: 512)
!3111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3070, file: !3045, line: 527, size: 64, elements: !3112)
!3112 = !{!3113, !3119}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !3111, file: !3045, line: 528, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !641, line: 21, baseType: !3115)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !641, line: 21, size: 64, elements: !3116)
!3116 = !{!3117}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3115, file: !641, line: 21, baseType: !3118, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !641, line: 14, baseType: !33)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !3111, file: !3045, line: 529, baseType: !3098, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !3070, file: !3045, line: 534, baseType: !1737, size: 64, offset: 576)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3070, file: !3045, line: 535, baseType: !1737, size: 64, offset: 640)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3070, file: !3045, line: 541, baseType: !3123, size: 64, offset: 704)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3070, file: !3045, line: 545, baseType: !3125, size: 64, offset: 768)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !3070, file: !3045, line: 549, baseType: !3127, size: 64, offset: 832)
!3127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !636, line: 520, baseType: !1737)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !3044, file: !3045, line: 581, baseType: !3129, size: 64, offset: 384)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!3068, !3069, !41}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !3044, file: !3045, line: 582, baseType: !3133, size: 64, offset: 448)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!3068, !3069, !33, !33}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !3044, file: !3045, line: 584, baseType: !3137, size: 64, offset: 512)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!33, !2999}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !3044, file: !3045, line: 588, baseType: !3065, size: 64, offset: 576)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !3044, file: !3045, line: 591, baseType: !3065, size: 64, offset: 640)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !3044, file: !3045, line: 597, baseType: !3143, size: 64, offset: 704)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!22, !2999, !33, !110, !22, !22}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3044, file: !3045, line: 603, baseType: !3147, size: 64, offset: 768)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!26, !2999}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !3044, file: !3045, line: 613, baseType: !3151, size: 64, offset: 832)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!22, !2999, !1694}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !3044, file: !3045, line: 625, baseType: !3155, size: 64, offset: 896)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!1694, !2999, !33}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !3044, file: !3045, line: 633, baseType: !3159, size: 64, offset: 960)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!1737, !2999, !33}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3000, file: !600, line: 697, baseType: !33, size: 64, offset: 1024)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3000, file: !600, line: 699, baseType: !627, size: 64, offset: 1088)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3000, file: !600, line: 700, baseType: !110, size: 64, offset: 1152)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3000, file: !600, line: 711, baseType: !149, size: 64, offset: 1216)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3000, file: !600, line: 717, baseType: !1694, size: 64, offset: 1280)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3000, file: !600, line: 722, baseType: !3168, offset: 1344)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !600, line: 570, elements: !620)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2778, file: !197, line: 1928, baseType: !33, size: 64, offset: 768)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2778, file: !197, line: 1929, baseType: !3171, size: 64, offset: 832)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!22, !1763, !627}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2778, file: !197, line: 1930, baseType: !3175, size: 64, offset: 896)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!22, !627, !3178}
!3178 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !197, line: 1061, baseType: !110)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2778, file: !197, line: 1931, baseType: !3171, size: 64, offset: 960)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2778, file: !197, line: 1932, baseType: !3181, size: 64, offset: 1024)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!22, !627, !140, !140, !22}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2778, file: !197, line: 1933, baseType: !3185, size: 64, offset: 1088)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!22, !22, !627, !22}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2778, file: !197, line: 1934, baseType: !3189, size: 64, offset: 1152)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!22, !627, !22, !3192}
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !197, line: 1063, flags: DIFlagFwdDecl)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2778, file: !197, line: 1935, baseType: !624, size: 64, offset: 1216)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2778, file: !197, line: 1936, baseType: !3196, size: 64, offset: 1280)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!22, !22}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2778, file: !197, line: 1937, baseType: !3189, size: 64, offset: 1344)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2778, file: !197, line: 1938, baseType: !3201, size: 64, offset: 1408)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!2115, !1731, !627, !179, !132, !41}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2778, file: !197, line: 1939, baseType: !3205, size: 64, offset: 1472)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!2115, !627, !179, !1731, !132, !41}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2778, file: !197, line: 1940, baseType: !3209, size: 64, offset: 1536)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{null, !627}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2778, file: !197, line: 1941, baseType: !3213, size: 64, offset: 1600)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!22, !627, !22, !3216, !3217}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2778, file: !197, line: 1942, baseType: !3219, size: 64, offset: 1664)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!1036, !627, !22, !140, !140}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2778, file: !197, line: 1944, baseType: !3223, size: 64, offset: 1728)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{null, !125, !627}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2778, file: !197, line: 1948, baseType: !3227, size: 64, offset: 1792)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!2115, !627, !140, !627, !140, !132, !41}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2778, file: !197, line: 1950, baseType: !3231, size: 64, offset: 1856)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!140, !627, !140, !627, !140, !140, !41}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2778, file: !197, line: 1953, baseType: !3181, size: 64, offset: 1920)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2778, file: !197, line: 1954, baseType: !3236, size: 64, offset: 1984)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!22, !3239, !41}
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !197, line: 1911, flags: DIFlagFwdDecl)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2778, file: !197, line: 1955, baseType: !3242, size: 64, offset: 2048)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!22, !3239, !2959, !41}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2773, file: !197, line: 723, baseType: !2055, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1764, file: !197, line: 725, baseType: !3247, size: 64, offset: 2816)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !197, line: 725, flags: DIFlagFwdDecl)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1764, file: !197, line: 726, baseType: !1760, size: 1536, align: 64, offset: 2880)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1764, file: !197, line: 727, baseType: !165, size: 128, offset: 4416)
!3251 = !DIDerivedType(tag: DW_TAG_member, scope: !1764, file: !197, line: 728, baseType: !3252, size: 64, offset: 4544)
!3252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1764, file: !197, line: 728, size: 64, elements: !3253)
!3253 = !{!3254, !3255, !3258, !3259}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3252, file: !197, line: 729, baseType: !1731, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3252, file: !197, line: 730, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !197, line: 730, flags: DIFlagFwdDecl)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3252, file: !197, line: 731, baseType: !130, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3252, file: !197, line: 732, baseType: !41, size: 32)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1764, file: !197, line: 735, baseType: !115, size: 32, offset: 4608)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1764, file: !197, line: 738, baseType: !115, size: 32, offset: 4640)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1764, file: !197, line: 739, baseType: !2450, size: 64, offset: 4672)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1764, file: !197, line: 750, baseType: !110, size: 64, offset: 4736)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1760, file: !197, line: 474, baseType: !65, size: 128, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1760, file: !197, line: 475, baseType: !655, size: 320, offset: 192)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1760, file: !197, line: 476, baseType: !108, size: 32, offset: 512)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1760, file: !197, line: 477, baseType: !17, size: 32, offset: 544)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1760, file: !197, line: 482, baseType: !484, size: 128, offset: 576)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1760, file: !197, line: 483, baseType: !33, size: 64, offset: 704)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1760, file: !197, line: 484, baseType: !33, size: 64, offset: 768)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1760, file: !197, line: 485, baseType: !3272, size: 64, offset: 832)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3274)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !197, line: 404, size: 1280, elements: !3275)
!3275 = !{!3276, !3280, !3284, !3288, !3292, !3316, !3321, !3325, !3330, !3334, !3338, !3342, !3343, !3354, !3358, !3362, !3367, !3371, !3378, !3379}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3274, file: !197, line: 405, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!22, !1737, !2067}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3274, file: !197, line: 406, baseType: !3281, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!22, !627, !2818}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3274, file: !197, line: 409, baseType: !3285, size: 64, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!22, !1759, !2067}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3274, file: !197, line: 412, baseType: !3289, size: 64, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!795, !1759, !2818}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3274, file: !197, line: 414, baseType: !3293, size: 64, offset: 256)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{null, !3296}
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !2815, line: 1276, size: 448, elements: !3298)
!3298 = !{!3299, !3300, !3301, !3311, !3312, !3313, !3314, !3315}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3297, file: !2815, line: 1277, baseType: !627, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3297, file: !2815, line: 1278, baseType: !1759, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !3297, file: !2815, line: 1279, baseType: !3302, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !197, line: 970, size: 256, elements: !3304)
!3304 = !{!3305, !3306, !3307, !3308, !3309, !3310}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3303, file: !197, line: 971, baseType: !33, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3303, file: !197, line: 972, baseType: !41, size: 32, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3303, file: !197, line: 973, baseType: !41, size: 32, offset: 96)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3303, file: !197, line: 974, baseType: !41, size: 32, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3303, file: !197, line: 975, baseType: !41, size: 32, offset: 160)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3303, file: !197, line: 976, baseType: !140, size: 64, offset: 192)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !3297, file: !2815, line: 1281, baseType: !33, size: 64, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !3297, file: !2815, line: 1282, baseType: !41, size: 32, offset: 256)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !3297, file: !2815, line: 1283, baseType: !41, size: 32, offset: 288)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !3297, file: !2815, line: 1284, baseType: !795, size: 8, offset: 320)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !3297, file: !2815, line: 1285, baseType: !33, size: 64, offset: 384)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3274, file: !197, line: 416, baseType: !3317, size: 64, offset: 320)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!22, !627, !1759, !140, !41, !3320, !3217}
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3274, file: !197, line: 419, baseType: !3322, size: 64, offset: 384)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!22, !627, !1759, !140, !41, !41, !1737, !110}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3274, file: !197, line: 424, baseType: !3326, size: 64, offset: 448)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!3329, !1759, !3329}
!3329 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !18, line: 131, baseType: !350)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3274, file: !197, line: 425, baseType: !3331, size: 64, offset: 512)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{null, !2818, !132, !132}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3274, file: !197, line: 426, baseType: !3335, size: 64, offset: 576)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!795, !2818, !108}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3274, file: !197, line: 427, baseType: !3339, size: 64, offset: 640)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{null, !2818}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3274, file: !197, line: 428, baseType: !2794, size: 64, offset: 704)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3274, file: !197, line: 433, baseType: !3344, size: 64, offset: 768)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!22, !1759, !2818, !2818, !3347}
!3347 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !3348, line: 15, baseType: !41, size: 32, elements: !3349)
!3348 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!3349 = !{!3350, !3351, !3352, !3353}
!3350 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!3351 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!3352 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!3353 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3274, file: !197, line: 435, baseType: !3355, size: 64, offset: 832)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!22, !2818}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3274, file: !197, line: 436, baseType: !3359, size: 64, offset: 896)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!795, !2818, !132, !132}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3274, file: !197, line: 438, baseType: !3363, size: 64, offset: 960)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !2818, !3366, !3366}
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3274, file: !197, line: 439, baseType: !3368, size: 64, offset: 1024)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!22, !1759, !1737}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3274, file: !197, line: 442, baseType: !3372, size: 64, offset: 1088)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!22, !3375, !627, !3377}
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !197, line: 66, flags: DIFlagFwdDecl)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3274, file: !197, line: 444, baseType: !3209, size: 64, offset: 1152)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3274, file: !197, line: 445, baseType: !3380, size: 64, offset: 1216)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!22, !2797, !2902}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1760, file: !197, line: 486, baseType: !33, size: 64, offset: 896)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1760, file: !197, line: 487, baseType: !655, size: 320, offset: 960)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1760, file: !197, line: 488, baseType: !2503, size: 32, offset: 1280)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1760, file: !197, line: 489, baseType: !69, size: 32, offset: 1312)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1760, file: !197, line: 490, baseType: !165, size: 128, offset: 1344)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1760, file: !197, line: 491, baseType: !110, size: 64, offset: 1472)
!3389 = !DIDerivedType(tag: DW_TAG_member, scope: !1745, file: !600, line: 107, baseType: !3390, size: 64, offset: 192)
!3390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1745, file: !600, line: 107, size: 64, elements: !3391)
!3391 = !{!3392, !3393}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3390, file: !600, line: 108, baseType: !33, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !3390, file: !600, line: 109, baseType: !33, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1745, file: !600, line: 117, baseType: !33, size: 64, offset: 256)
!3395 = !DIDerivedType(tag: DW_TAG_member, scope: !1742, file: !600, line: 119, baseType: !3396, size: 320)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1742, file: !600, line: 119, size: 320, elements: !3397)
!3397 = !{!3398, !3399, !3402, !3403, !3404}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !3396, file: !600, line: 124, baseType: !33, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !3396, file: !600, line: 125, baseType: !3400, size: 64, offset: 64)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !600, line: 125, flags: DIFlagFwdDecl)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !3396, file: !600, line: 126, baseType: !33, size: 64, offset: 128)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3396, file: !600, line: 127, baseType: !33, size: 64, offset: 192)
!3404 = !DIDerivedType(tag: DW_TAG_member, scope: !3396, file: !600, line: 128, baseType: !3405, size: 64, offset: 256)
!3405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3396, file: !600, line: 128, size: 64, elements: !3406)
!3406 = !{!3407, !3408}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !3405, file: !600, line: 133, baseType: !33, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !3405, file: !600, line: 138, baseType: !149, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, scope: !1742, file: !600, line: 141, baseType: !3410, size: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1742, file: !600, line: 141, size: 64, elements: !3411)
!3411 = !{!3412}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3410, file: !600, line: 142, baseType: !33, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, scope: !1742, file: !600, line: 144, baseType: !3414, size: 128)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1742, file: !600, line: 144, size: 128, elements: !3415)
!3415 = !{!3416, !3495}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3414, file: !600, line: 146, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !3419, line: 126, size: 1216, elements: !3420)
!3419 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!3420 = !{!3421, !3431, !3452, !3453, !3461, !3462, !3463, !3477, !3478, !3479}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3418, file: !3419, line: 127, baseType: !3422, size: 384)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !3419, line: 21, size: 384, elements: !3423)
!3423 = !{!3424, !3425, !3427, !3428, !3429, !3430}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3422, file: !3419, line: 22, baseType: !33, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3422, file: !3419, line: 23, baseType: !3426, size: 64, offset: 64)
!3426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3422, file: !3419, line: 24, baseType: !3426, size: 64, offset: 128)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3422, file: !3419, line: 25, baseType: !33, size: 64, offset: 192)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3422, file: !3419, line: 26, baseType: !33, size: 64, offset: 256)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3422, file: !3419, line: 27, baseType: !33, size: 64, offset: 320)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3418, file: !3419, line: 128, baseType: !3432, size: 128, offset: 384)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3433, line: 105, size: 128, elements: !3434)
!3433 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3434 = !{!3435, !3436}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3432, file: !3433, line: 110, baseType: !33, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3432, file: !3433, line: 118, baseType: !3437, size: 64, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3433, line: 95, size: 448, elements: !3439)
!3439 = !{!3440, !3441, !3447, !3448, !3449, !3450, !3451}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3438, file: !3433, line: 96, baseType: !149, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3438, file: !3433, line: 97, baseType: !3442, size: 64, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3433, line: 60, baseType: !3444)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{null, !3446}
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3438, file: !3433, line: 98, baseType: !3442, size: 64, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3438, file: !3433, line: 99, baseType: !795, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3438, file: !3433, line: 100, baseType: !795, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3438, file: !3433, line: 101, baseType: !209, size: 128, align: 64, offset: 256)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3438, file: !3433, line: 102, baseType: !3446, size: 64, offset: 384)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3418, file: !3419, line: 129, baseType: !977, size: 256, offset: 512)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3418, file: !3419, line: 130, baseType: !3454, size: 32, offset: 768)
!3454 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !3419, line: 68, baseType: !41, size: 32, elements: !3455)
!3455 = !{!3456, !3457, !3458, !3459, !3460}
!3456 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!3457 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!3458 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!3459 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!3460 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3418, file: !3419, line: 131, baseType: !41, size: 32, offset: 800)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !3418, file: !3419, line: 132, baseType: !33, size: 64, offset: 832)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3418, file: !3419, line: 133, baseType: !3464, size: 64, offset: 896)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3466)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !3419, line: 77, size: 192, elements: !3467)
!3467 = !{!3468, !3472, !3473}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3466, file: !3419, line: 83, baseType: !3469, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{null, !1737}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3466, file: !3419, line: 89, baseType: !3065, size: 64, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !3466, file: !3419, line: 100, baseType: !3474, size: 64, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!22, !3417, !33, !33, !22}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3418, file: !3419, line: 134, baseType: !110, size: 64, offset: 960)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3418, file: !3419, line: 135, baseType: !22, size: 32, offset: 1024)
!3479 = !DIDerivedType(tag: DW_TAG_member, scope: !3418, file: !3419, line: 136, baseType: !3480, size: 128, offset: 1088)
!3480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3418, file: !3419, line: 136, size: 128, elements: !3481)
!3481 = !{!3482, !3488}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3480, file: !3419, line: 137, baseType: !3483, size: 128)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3484, line: 6, size: 128, elements: !3485)
!3484 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!3485 = !{!3486, !3487}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3483, file: !3484, line: 7, baseType: !350, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3483, file: !3484, line: 8, baseType: !350, size: 64, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, scope: !3480, file: !3419, line: 138, baseType: !3489)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3480, file: !3419, line: 138, elements: !3490)
!3490 = !{!3491, !3493}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !3489, file: !3419, line: 138, baseType: !3492)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3489, file: !3419, line: 138, elements: !620)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3489, file: !3419, line: 138, baseType: !3494)
!3494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3483, elements: !1056)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3414, file: !600, line: 147, baseType: !110, size: 64, offset: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1742, file: !600, line: 161, baseType: !209, size: 128, align: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, scope: !1738, file: !600, line: 164, baseType: !3498, size: 32, offset: 384)
!3498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1738, file: !600, line: 164, size: 32, elements: !3499)
!3499 = !{!3500, !3501}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3498, file: !600, line: 169, baseType: !17, size: 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3498, file: !600, line: 177, baseType: !41, size: 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1738, file: !600, line: 181, baseType: !17, size: 32, offset: 416)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1734, file: !1721, line: 42, baseType: !115, size: 32, offset: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1734, file: !1721, line: 43, baseType: !115, size: 32, offset: 96)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !301, file: !302, line: 1340, baseType: !3506, size: 64, offset: 20672)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !302, line: 69, flags: DIFlagFwdDecl)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !301, file: !302, line: 1351, baseType: !22, size: 32, offset: 20736)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !301, file: !302, line: 1352, baseType: !22, size: 32, offset: 20768)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !301, file: !302, line: 1354, baseType: !33, size: 64, offset: 20800)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !301, file: !302, line: 1364, baseType: !350, size: 64, offset: 20864)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !301, file: !302, line: 1365, baseType: !350, size: 64, offset: 20928)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !301, file: !302, line: 1412, baseType: !33, size: 64, offset: 20992)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !301, file: !302, line: 1453, baseType: !3515, size: 64, offset: 21056)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !302, line: 1453, flags: DIFlagFwdDecl)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !301, file: !302, line: 1457, baseType: !3518, size: 64, offset: 21120)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !1047, line: 61, size: 576, elements: !3520)
!3520 = !{!3521, !3528, !3547, !3550, !3551, !3584, !3594}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3519, file: !1047, line: 62, baseType: !3522, size: 32)
!3522 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !1047, line: 51, baseType: !41, size: 32, elements: !3523)
!3523 = !{!3524, !3525, !3526, !3527}
!3524 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!3525 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!3526 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!3527 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!3528 = !DIDerivedType(tag: DW_TAG_member, scope: !3519, file: !1047, line: 64, baseType: !3529, size: 192, offset: 64)
!3529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3519, file: !1047, line: 64, size: 192, elements: !3530)
!3530 = !{!3531, !3542}
!3531 = !DIDerivedType(tag: DW_TAG_member, scope: !3529, file: !1047, line: 65, baseType: !3532, size: 192)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3529, file: !1047, line: 65, size: 192, elements: !3533)
!3533 = !{!3534, !3541}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3532, file: !1047, line: 66, baseType: !3535, size: 128)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3536, line: 50, size: 128, elements: !3537)
!3536 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3537 = !{!3538, !3539, !3540}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3535, file: !3536, line: 52, baseType: !33, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3535, file: !3536, line: 54, baseType: !41, size: 32, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3535, file: !3536, line: 55, baseType: !41, size: 32, offset: 96)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3532, file: !1047, line: 67, baseType: !33, size: 64, offset: 128)
!3542 = !DIDerivedType(tag: DW_TAG_member, scope: !3529, file: !1047, line: 70, baseType: !3543, size: 192)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3529, file: !1047, line: 70, size: 192, elements: !3544)
!3544 = !{!3545, !3546}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3543, file: !1047, line: 71, baseType: !209, size: 128, align: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3543, file: !1047, line: 72, baseType: !33, size: 64, offset: 128)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3519, file: !1047, line: 76, baseType: !3548, size: 64, offset: 256)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !1047, line: 76, flags: DIFlagFwdDecl)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3519, file: !1047, line: 77, baseType: !33, size: 64, offset: 320)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3519, file: !1047, line: 79, baseType: !3552, size: 64, offset: 384)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3536, line: 25, size: 256, elements: !3554)
!3554 = !{!3555, !3561, !3565}
!3555 = !DIDerivedType(tag: DW_TAG_member, scope: !3553, file: !3536, line: 26, baseType: !3556, size: 128)
!3556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3553, file: !3536, line: 26, size: 128, elements: !3557)
!3557 = !{!3558, !3560}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3556, file: !3536, line: 27, baseType: !3559, size: 128)
!3559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, elements: !1278)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3556, file: !3536, line: 28, baseType: !3559, size: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3553, file: !3536, line: 31, baseType: !3562, size: 64, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3564)
!3564 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3536, line: 23, flags: DIFlagFwdDecl)
!3565 = !DIDerivedType(tag: DW_TAG_member, scope: !3553, file: !3536, line: 33, baseType: !3566, size: 64, offset: 192)
!3566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3553, file: !3536, line: 33, size: 64, elements: !3567)
!3567 = !{!3568, !3574, !3579}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3566, file: !3536, line: 38, baseType: !3569, size: 64)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3566, file: !3536, line: 34, size: 64, elements: !3570)
!3570 = !{!3571, !3572, !3573}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3569, file: !3536, line: 35, baseType: !701, size: 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3569, file: !3536, line: 36, baseType: !93, size: 8, offset: 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3569, file: !3536, line: 37, baseType: !93, size: 8, offset: 40)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3566, file: !3536, line: 42, baseType: !3575, size: 16)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3566, file: !3536, line: 39, size: 16, elements: !3576)
!3576 = !{!3577, !3578}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3575, file: !3536, line: 40, baseType: !93, size: 8)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3575, file: !3536, line: 41, baseType: !93, size: 8, offset: 8)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3566, file: !3536, line: 46, baseType: !3580, size: 16)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3566, file: !3536, line: 43, size: 16, elements: !3581)
!3581 = !{!3582, !3583}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3580, file: !3536, line: 44, baseType: !93, size: 8)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3580, file: !3536, line: 45, baseType: !93, size: 8, offset: 8)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3519, file: !1047, line: 81, baseType: !3585, size: 64, offset: 448)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !1047, line: 85, size: 384, elements: !3587)
!3587 = !{!3588, !3589, !3590, !3591, !3592, !3593}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3586, file: !1047, line: 86, baseType: !3548, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3586, file: !1047, line: 87, baseType: !33, size: 64, offset: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3586, file: !1047, line: 88, baseType: !33, size: 64, offset: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3586, file: !1047, line: 89, baseType: !33, size: 64, offset: 192)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3586, file: !1047, line: 90, baseType: !795, size: 8, offset: 256)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3586, file: !1047, line: 92, baseType: !3585, size: 64, offset: 320)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3519, file: !1047, line: 82, baseType: !41, size: 32, offset: 512)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !301, file: !302, line: 1463, baseType: !3596, offset: 21184)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !302, line: 739, elements: !620)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !301, file: !302, line: 1470, baseType: !209, size: 128, align: 64, offset: 21184)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !301, file: !302, line: 1471, baseType: !257, size: 32, offset: 21312)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !301, file: !302, line: 1472, baseType: !22, size: 32, offset: 21344)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !301, file: !302, line: 1474, baseType: !300, size: 64, offset: 21376)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !301, file: !302, line: 1475, baseType: !3602, size: 320, offset: 21440)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3603, line: 11, size: 320, elements: !3604)
!3603 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3604 = !{!3605, !3606, !3607, !3612}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3602, file: !3603, line: 16, baseType: !270, size: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3602, file: !3603, line: 17, baseType: !33, size: 64, offset: 128)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3602, file: !3603, line: 18, baseType: !3608, size: 64, offset: 192)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{null, !3611}
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3602, file: !3603, line: 19, baseType: !114, size: 32, offset: 256)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !301, file: !302, line: 1478, baseType: !3614, size: 64, offset: 21760)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !302, line: 1478, flags: DIFlagFwdDecl)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !301, file: !302, line: 1482, baseType: !257, size: 32, offset: 21824)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !301, file: !302, line: 1489, baseType: !110, size: 64, offset: 21888)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !301, file: !302, line: 1504, baseType: !110, size: 64, offset: 21952)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !301, file: !302, line: 1505, baseType: !351, size: 64, offset: 22016)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !301, file: !302, line: 1506, baseType: !350, size: 64, offset: 22080)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !301, file: !302, line: 1507, baseType: !351, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !301, file: !302, line: 1508, baseType: !351, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !301, file: !302, line: 1509, baseType: !351, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !301, file: !302, line: 1510, baseType: !209, size: 128, align: 64, offset: 22208)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !301, file: !302, line: 1511, baseType: !22, size: 32, offset: 22336)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !301, file: !302, line: 1515, baseType: !3627, size: 64, offset: 22400)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !204, line: 56, size: 64, elements: !3628)
!3628 = !{!3629}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3627, file: !204, line: 57, baseType: !207, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !301, file: !302, line: 1518, baseType: !3627, size: 64, offset: 22464)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !301, file: !302, line: 1528, baseType: !209, size: 128, align: 64, offset: 22528)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !301, file: !302, line: 1552, baseType: !3633, size: 35328, offset: 23040)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3634, line: 430, size: 35328, elements: !3635)
!3634 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3635 = !{!3636, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3665, !3666, !3667, !3668, !3669, !3670, !3673, !3674, !3675, !3676}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3633, file: !3634, line: 432, baseType: !3637, size: 192)
!3637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3638, size: 192, elements: !248)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3639, line: 16, size: 64, elements: !3640)
!3639 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3640 = !{!3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3638, file: !3639, line: 17, baseType: !103, size: 16)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3638, file: !3639, line: 18, baseType: !103, size: 16, offset: 16)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3638, file: !3639, line: 19, baseType: !103, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3638, file: !3639, line: 19, baseType: !103, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3638, file: !3639, line: 19, baseType: !103, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3638, file: !3639, line: 19, baseType: !103, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3638, file: !3639, line: 19, baseType: !103, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3638, file: !3639, line: 20, baseType: !103, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3638, file: !3639, line: 20, baseType: !103, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3638, file: !3639, line: 20, baseType: !103, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3638, file: !3639, line: 20, baseType: !103, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3638, file: !3639, line: 20, baseType: !103, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3638, file: !3639, line: 20, baseType: !103, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3633, file: !3634, line: 436, baseType: !33, size: 64, offset: 192)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3633, file: !3634, line: 440, baseType: !105, size: 16, offset: 256)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3633, file: !3634, line: 441, baseType: !105, size: 16, offset: 272)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3633, file: !3634, line: 442, baseType: !105, size: 16, offset: 288)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3633, file: !3634, line: 443, baseType: !105, size: 16, offset: 304)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3633, file: !3634, line: 447, baseType: !33, size: 64, offset: 320)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3633, file: !3634, line: 448, baseType: !33, size: 64, offset: 384)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3633, file: !3634, line: 459, baseType: !3662, size: 256, offset: 448)
!3662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3663, size: 256, elements: !275)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3634, line: 428, flags: DIFlagFwdDecl)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3633, file: !3634, line: 461, baseType: !33, size: 64, offset: 704)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3633, file: !3634, line: 463, baseType: !33, size: 64, offset: 768)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3633, file: !3634, line: 465, baseType: !33, size: 64, offset: 832)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3633, file: !3634, line: 466, baseType: !33, size: 64, offset: 896)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3633, file: !3634, line: 467, baseType: !33, size: 64, offset: 960)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3633, file: !3634, line: 473, baseType: !3671, size: 64, offset: 1024)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3634, line: 10, flags: DIFlagFwdDecl)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3633, file: !3634, line: 480, baseType: !33, size: 64, offset: 1088)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3633, file: !3634, line: 482, baseType: !41, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3633, file: !3634, line: 491, baseType: !114, size: 32, offset: 1184)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3633, file: !3634, line: 501, baseType: !3677, size: 33792, offset: 1536)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3678, line: 448, size: 33792, elements: !3679)
!3678 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3679 = !{!3680, !3681, !3682, !3844, !3845, !3851, !3852}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3677, file: !3678, line: 461, baseType: !41, size: 32)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3677, file: !3678, line: 468, baseType: !33, size: 64, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3677, file: !3678, line: 476, baseType: !3683, size: 64, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3678, line: 356, size: 33280, align: 512, elements: !3685)
!3685 = !{!3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3684, file: !3678, line: 358, baseType: !41, size: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3684, file: !3678, line: 361, baseType: !41, size: 32, offset: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3684, file: !3678, line: 364, baseType: !350, size: 64, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3684, file: !3678, line: 367, baseType: !350, size: 64, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3684, file: !3678, line: 370, baseType: !350, size: 64, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3684, file: !3678, line: 373, baseType: !41, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3684, file: !3678, line: 376, baseType: !41, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3684, file: !3678, line: 391, baseType: !41, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3684, file: !3678, line: 394, baseType: !41, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3684, file: !3678, line: 397, baseType: !3696, size: 32768, offset: 512)
!3696 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3678, line: 348, size: 32768, elements: !3697)
!3697 = !{!3698, !3713, !3750, !3827, !3840}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3696, file: !3678, line: 349, baseType: !3699, size: 896)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3678, line: 12, size: 896, elements: !3700)
!3700 = !{!3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3712}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3699, file: !3678, line: 13, baseType: !114, size: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3699, file: !3678, line: 14, baseType: !114, size: 32, offset: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3699, file: !3678, line: 15, baseType: !114, size: 32, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3699, file: !3678, line: 16, baseType: !114, size: 32, offset: 96)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3699, file: !3678, line: 17, baseType: !114, size: 32, offset: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3699, file: !3678, line: 18, baseType: !114, size: 32, offset: 160)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3699, file: !3678, line: 19, baseType: !114, size: 32, offset: 192)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3699, file: !3678, line: 22, baseType: !3709, size: 640, offset: 224)
!3709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 640, elements: !3710)
!3710 = !{!3711}
!3711 = !DISubrange(count: 20)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3699, file: !3678, line: 25, baseType: !114, size: 32, offset: 864)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3696, file: !3678, line: 350, baseType: !3714, size: 4096, align: 128)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3678, line: 34, size: 4096, align: 128, elements: !3715)
!3715 = !{!3716, !3717, !3718, !3719, !3720, !3735, !3736, !3737, !3739, !3741, !3745}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3714, file: !3678, line: 35, baseType: !103, size: 16)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3714, file: !3678, line: 36, baseType: !103, size: 16, offset: 16)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3714, file: !3678, line: 37, baseType: !103, size: 16, offset: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3714, file: !3678, line: 38, baseType: !103, size: 16, offset: 48)
!3720 = !DIDerivedType(tag: DW_TAG_member, scope: !3714, file: !3678, line: 39, baseType: !3721, size: 128, offset: 64)
!3721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3714, file: !3678, line: 39, size: 128, elements: !3722)
!3722 = !{!3723, !3728}
!3723 = !DIDerivedType(tag: DW_TAG_member, scope: !3721, file: !3678, line: 40, baseType: !3724, size: 128)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3721, file: !3678, line: 40, size: 128, elements: !3725)
!3725 = !{!3726, !3727}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3724, file: !3678, line: 41, baseType: !350, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3724, file: !3678, line: 42, baseType: !350, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, scope: !3721, file: !3678, line: 44, baseType: !3729, size: 128)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3721, file: !3678, line: 44, size: 128, elements: !3730)
!3730 = !{!3731, !3732, !3733, !3734}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3729, file: !3678, line: 45, baseType: !114, size: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3729, file: !3678, line: 46, baseType: !114, size: 32, offset: 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3729, file: !3678, line: 47, baseType: !114, size: 32, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3729, file: !3678, line: 48, baseType: !114, size: 32, offset: 96)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3714, file: !3678, line: 51, baseType: !114, size: 32, offset: 192)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3714, file: !3678, line: 52, baseType: !114, size: 32, offset: 224)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3714, file: !3678, line: 55, baseType: !3738, size: 1024, offset: 256)
!3738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 1024, elements: !1818)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3714, file: !3678, line: 58, baseType: !3740, size: 2048, offset: 1280)
!3740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 2048, elements: !1504)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3714, file: !3678, line: 60, baseType: !3742, size: 384, offset: 3328)
!3742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 384, elements: !3743)
!3743 = !{!3744}
!3744 = !DISubrange(count: 12)
!3745 = !DIDerivedType(tag: DW_TAG_member, scope: !3714, file: !3678, line: 62, baseType: !3746, size: 384, offset: 3712)
!3746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3714, file: !3678, line: 62, size: 384, elements: !3747)
!3747 = !{!3748, !3749}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3746, file: !3678, line: 63, baseType: !3742, size: 384)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3746, file: !3678, line: 64, baseType: !3742, size: 384)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3696, file: !3678, line: 351, baseType: !3751, size: 1088)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3678, line: 79, size: 1088, elements: !3752)
!3752 = !{!3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3826}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3751, file: !3678, line: 80, baseType: !114, size: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3751, file: !3678, line: 81, baseType: !114, size: 32, offset: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3751, file: !3678, line: 82, baseType: !114, size: 32, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3751, file: !3678, line: 83, baseType: !114, size: 32, offset: 96)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3751, file: !3678, line: 84, baseType: !114, size: 32, offset: 128)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3751, file: !3678, line: 85, baseType: !114, size: 32, offset: 160)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3751, file: !3678, line: 86, baseType: !114, size: 32, offset: 192)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3751, file: !3678, line: 88, baseType: !3709, size: 640, offset: 224)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3751, file: !3678, line: 89, baseType: !93, size: 8, offset: 864)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3751, file: !3678, line: 90, baseType: !93, size: 8, offset: 872)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3751, file: !3678, line: 91, baseType: !93, size: 8, offset: 880)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3751, file: !3678, line: 92, baseType: !93, size: 8, offset: 888)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3751, file: !3678, line: 93, baseType: !93, size: 8, offset: 896)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3751, file: !3678, line: 94, baseType: !93, size: 8, offset: 904)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3751, file: !3678, line: 95, baseType: !3768, size: 64, offset: 960)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3770, line: 11, size: 128, elements: !3771)
!3770 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3771 = !{!3772, !3773}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3769, file: !3770, line: 12, baseType: !1036, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3769, file: !3770, line: 13, baseType: !3774, size: 64, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3776, line: 103, size: 1344, elements: !3777)
!3776 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3777 = !{!3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3806, !3807, !3808}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3775, file: !3776, line: 109, baseType: !33, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3775, file: !3776, line: 110, baseType: !33, size: 64, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3775, file: !3776, line: 111, baseType: !33, size: 64, offset: 128)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3775, file: !3776, line: 112, baseType: !33, size: 64, offset: 192)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3775, file: !3776, line: 113, baseType: !33, size: 64, offset: 256)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3775, file: !3776, line: 114, baseType: !33, size: 64, offset: 320)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3775, file: !3776, line: 117, baseType: !33, size: 64, offset: 384)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3775, file: !3776, line: 118, baseType: !33, size: 64, offset: 448)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3775, file: !3776, line: 119, baseType: !33, size: 64, offset: 512)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3775, file: !3776, line: 120, baseType: !33, size: 64, offset: 576)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3775, file: !3776, line: 121, baseType: !33, size: 64, offset: 640)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3775, file: !3776, line: 122, baseType: !33, size: 64, offset: 704)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3775, file: !3776, line: 123, baseType: !33, size: 64, offset: 768)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3775, file: !3776, line: 124, baseType: !33, size: 64, offset: 832)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3775, file: !3776, line: 125, baseType: !33, size: 64, offset: 896)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3775, file: !3776, line: 139, baseType: !33, size: 64, offset: 960)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3775, file: !3776, line: 142, baseType: !33, size: 64, offset: 1024)
!3795 = !DIDerivedType(tag: DW_TAG_member, scope: !3775, file: !3776, line: 144, baseType: !3796, size: 64, offset: 1088)
!3796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3775, file: !3776, line: 144, size: 64, elements: !3797)
!3797 = !{!3798, !3799, !3800}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3796, file: !3776, line: 146, baseType: !103, size: 16)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3796, file: !3776, line: 148, baseType: !350, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3796, file: !3776, line: 150, baseType: !3801, size: 64)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3776, line: 59, size: 64, elements: !3802)
!3802 = !{!3803, !3804, !3805}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3801, file: !3776, line: 61, baseType: !350, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3801, file: !3776, line: 63, baseType: !350, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3801, file: !3776, line: 65, baseType: !350, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3775, file: !3776, line: 153, baseType: !33, size: 64, offset: 1152)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3775, file: !3776, line: 154, baseType: !33, size: 64, offset: 1216)
!3808 = !DIDerivedType(tag: DW_TAG_member, scope: !3775, file: !3776, line: 156, baseType: !3809, size: 64, offset: 1280)
!3809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3775, file: !3776, line: 156, size: 64, elements: !3810)
!3810 = !{!3811, !3812, !3813}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3809, file: !3776, line: 158, baseType: !103, size: 16)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3809, file: !3776, line: 160, baseType: !350, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3809, file: !3776, line: 162, baseType: !3814, size: 64)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3776, line: 69, size: 64, elements: !3815)
!3815 = !{!3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3814, file: !3776, line: 71, baseType: !350, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3814, file: !3776, line: 73, baseType: !350, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3814, file: !3776, line: 75, baseType: !350, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3814, file: !3776, line: 77, baseType: !350, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3814, file: !3776, line: 80, baseType: !350, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3814, file: !3776, line: 83, baseType: !350, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3814, file: !3776, line: 86, baseType: !350, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3814, file: !3776, line: 88, baseType: !350, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3814, file: !3776, line: 93, baseType: !350, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3814, file: !3776, line: 100, baseType: !350, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3751, file: !3678, line: 96, baseType: !114, size: 32, offset: 1024)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3696, file: !3678, line: 352, baseType: !3828, size: 4608, align: 512)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3678, line: 333, size: 4608, align: 512, elements: !3829)
!3829 = !{!3830, !3831, !3838}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3828, file: !3678, line: 334, baseType: !3714, size: 4096, align: 128)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3828, file: !3678, line: 335, baseType: !3832, size: 512, offset: 4096)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3678, line: 312, size: 512, elements: !3833)
!3833 = !{!3834, !3835, !3836}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3832, file: !3678, line: 313, baseType: !350, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3832, file: !3678, line: 314, baseType: !350, size: 64, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3832, file: !3678, line: 315, baseType: !3837, size: 384, offset: 128)
!3837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 384, elements: !850)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3828, file: !3678, line: 336, baseType: !3839, offset: 4608)
!3839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, elements: !1056)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3696, file: !3678, line: 353, baseType: !3841, size: 32768)
!3841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 32768, elements: !3842)
!3842 = !{!3843}
!3843 = !DISubrange(count: 4096)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3677, file: !3678, line: 484, baseType: !3683, size: 64, offset: 192)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3677, file: !3678, line: 491, baseType: !3846, size: 128, offset: 256)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3678, line: 404, size: 128, elements: !3847)
!3847 = !{!3848, !3849, !3850}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3846, file: !3678, line: 424, baseType: !350, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3846, file: !3678, line: 432, baseType: !41, size: 32, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3846, file: !3678, line: 440, baseType: !41, size: 32, offset: 96)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3677, file: !3678, line: 498, baseType: !3846, size: 128, offset: 384)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3677, file: !3678, line: 508, baseType: !3684, size: 33280, align: 512, offset: 512)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !293, file: !294, line: 31, baseType: !3854, size: 64, offset: 448)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3856, line: 325, flags: DIFlagFwdDecl)
!3856 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !293, file: !294, line: 32, baseType: !41, size: 32, offset: 512)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !293, file: !294, line: 33, baseType: !292, size: 64, offset: 576)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !293, file: !294, line: 35, baseType: !3860, size: 64, offset: 640)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !294, line: 17, flags: DIFlagFwdDecl)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !293, file: !294, line: 37, baseType: !737, size: 64, offset: 704)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !293, file: !294, line: 38, baseType: !1021, size: 64, offset: 768)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !293, file: !294, line: 39, baseType: !22, size: 32, offset: 832)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !293, file: !294, line: 40, baseType: !783, size: 192, offset: 896)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !293, file: !294, line: 42, baseType: !22, size: 32, offset: 1088)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !226, file: !197, line: 951, baseType: !3868, size: 32, offset: 128)
!3868 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !254, line: 9, baseType: !41, size: 32, elements: !3869)
!3869 = !{!3870, !3871, !3872, !3873, !3874}
!3870 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!3871 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!3872 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!3873 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!3874 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !226, file: !197, line: 952, baseType: !768, size: 32, offset: 160)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !226, file: !197, line: 952, baseType: !768, size: 32, offset: 192)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !226, file: !197, line: 953, baseType: !22, size: 32, offset: 224)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !196, file: !197, line: 1012, baseType: !1204, size: 64, offset: 896)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !196, file: !197, line: 1013, baseType: !3303, size: 256, offset: 960)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !196, file: !197, line: 1014, baseType: !2242, size: 128, offset: 1216)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !196, file: !197, line: 1015, baseType: !1763, size: 64, offset: 1344)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !196, file: !197, line: 1016, baseType: !2776, size: 64, offset: 1408)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !196, file: !197, line: 1018, baseType: !350, size: 64, offset: 1472)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !196, file: !197, line: 1020, baseType: !110, size: 64, offset: 1536)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !196, file: !197, line: 1023, baseType: !110, size: 64, offset: 1600)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !196, file: !197, line: 1027, baseType: !3887, size: 64, offset: 1664)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !196, file: !197, line: 1029, baseType: !1759, size: 64, offset: 1728)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !196, file: !197, line: 1030, baseType: !2503, size: 32, offset: 1792)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !196, file: !197, line: 1031, baseType: !2503, size: 32, offset: 1824)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !126, file: !127, line: 29, baseType: !110, size: 64, offset: 896)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !119, file: !14, line: 240, baseType: !3893, size: 64, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!22, !12, !26, !950}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !119, file: !14, line: 242, baseType: !3897, size: 64, offset: 128)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!22, !12}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !119, file: !14, line: 243, baseType: !3901, size: 64, offset: 192)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!22, !12, !12, !26}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !119, file: !14, line: 245, baseType: !3905, size: 64, offset: 256)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!22, !125, !12, !54}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !55, file: !56, line: 46, baseType: !165, size: 128, offset: 448)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !55, file: !56, line: 48, baseType: !279, size: 192, offset: 576)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "kernfs_rwsem", scope: !55, file: !56, line: 49, baseType: !655, size: 320, offset: 768)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "kernfs_iattr_rwsem", scope: !55, file: !56, line: 50, baseType: !655, size: 320, offset: 1088)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "kernfs_supers_rwsem", scope: !55, file: !56, line: 51, baseType: !655, size: 320, offset: 1408)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !55, file: !56, line: 53, baseType: !209, size: 128, align: 64, offset: 1728)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !46, file: !14, line: 167, baseType: !33, size: 64, offset: 192)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !43, file: !14, line: 211, baseType: !3916, size: 64)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !14, line: 170, size: 64, elements: !3917)
!3917 = !{!3918}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3916, file: !14, line: 171, baseType: !12, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !43, file: !14, line: 212, baseType: !3920, size: 256)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !14, line: 174, size: 256, elements: !3921)
!3921 = !{!3922, !3970, !3980, !3981}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3920, file: !14, line: 175, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3925)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !14, line: 271, size: 768, elements: !3926)
!3926 = !{!3927, !3947, !3951, !3952, !3953, !3954, !3955, !3959, !3960, !3961, !3962, !3966}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3925, file: !14, line: 276, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!22, !3931}
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !14, line: 251, size: 1216, elements: !3933)
!3933 = !{!3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3932, file: !14, line: 253, baseType: !12, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3932, file: !14, line: 254, baseType: !627, size: 64, offset: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3932, file: !14, line: 255, baseType: !125, size: 64, offset: 128)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3932, file: !14, line: 256, baseType: !110, size: 64, offset: 192)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3932, file: !14, line: 259, baseType: !145, size: 256, offset: 256)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3932, file: !14, line: 260, baseType: !145, size: 256, offset: 512)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3932, file: !14, line: 261, baseType: !22, size: 32, offset: 768)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3932, file: !14, line: 262, baseType: !165, size: 128, offset: 832)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3932, file: !14, line: 263, baseType: !130, size: 64, offset: 960)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3932, file: !14, line: 265, baseType: !132, size: 64, offset: 1024)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3932, file: !14, line: 266, baseType: !795, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3932, file: !14, line: 267, baseType: !795, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3932, file: !14, line: 268, baseType: !3042, size: 64, offset: 1152)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3925, file: !14, line: 277, baseType: !3948, size: 64, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{null, !3931}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3925, file: !14, line: 290, baseType: !189, size: 64, offset: 128)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3925, file: !14, line: 292, baseType: !176, size: 64, offset: 192)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3925, file: !14, line: 293, baseType: !185, size: 64, offset: 256)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3925, file: !14, line: 294, baseType: !181, size: 64, offset: 320)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3925, file: !14, line: 296, baseType: !3956, size: 64, offset: 384)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!2115, !3931, !130, !132, !140}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3925, file: !14, line: 306, baseType: !132, size: 64, offset: 448)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3925, file: !14, line: 313, baseType: !795, size: 8, offset: 512)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3925, file: !14, line: 314, baseType: !3956, size: 64, offset: 576)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3925, file: !14, line: 317, baseType: !3963, size: 64, offset: 640)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!2978, !3931, !2980}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3925, file: !14, line: 320, baseType: !3967, size: 64, offset: 704)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!22, !3931, !2999}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3920, file: !14, line: 176, baseType: !3971, size: 64, offset: 64)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2, line: 21, size: 576, elements: !3973)
!3973 = !{!3974, !3975, !3976, !3977, !3978, !3979}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3972, file: !2, line: 22, baseType: !209, size: 128, align: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3972, file: !2, line: 23, baseType: !17, size: 32, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3972, file: !2, line: 24, baseType: !279, size: 192, offset: 192)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3972, file: !2, line: 25, baseType: !165, size: 128, offset: 384)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "nr_mmapped", scope: !3972, file: !2, line: 26, baseType: !41, size: 32, offset: 512)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_release", scope: !3972, file: !2, line: 27, baseType: !41, size: 32, offset: 544)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3920, file: !14, line: 177, baseType: !140, size: 64, offset: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3920, file: !14, line: 178, baseType: !12, size: 64, offset: 192)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !13, file: !14, line: 215, baseType: !110, size: 64, offset: 768)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !13, file: !14, line: 221, baseType: !350, size: 64, offset: 832)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !13, file: !14, line: 223, baseType: !105, size: 16, offset: 896)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !13, file: !14, line: 224, baseType: !950, size: 16, offset: 912)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !13, file: !14, line: 225, baseType: !3987, size: 64, offset: 960)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !56, line: 22, size: 640, elements: !3989)
!3989 = !{!3990, !3991, !3992, !3993, !3994, !3995, !4000, !4001}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3988, file: !56, line: 23, baseType: !768, size: 32)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3988, file: !56, line: 24, baseType: !776, size: 32, offset: 32)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3988, file: !56, line: 25, baseType: !2648, size: 128, offset: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3988, file: !56, line: 26, baseType: !2648, size: 128, offset: 192)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3988, file: !56, line: 27, baseType: !2648, size: 128, offset: 320)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "xattrs", scope: !3988, file: !56, line: 29, baseType: !3996, size: 128, offset: 448)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_xattrs", file: !2338, line: 104, size: 128, elements: !3997)
!3997 = !{!3998, !3999}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3996, file: !2338, line: 105, baseType: !50, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3996, file: !2338, line: 106, baseType: !229, size: 64, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user_xattrs", scope: !3988, file: !56, line: 30, baseType: !17, size: 32, offset: 576)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "user_xattr_size", scope: !3988, file: !56, line: 31, baseType: !17, size: 32, offset: 608)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !13, file: !14, line: 227, baseType: !209, size: 128, align: 64, offset: 1024)
!4003 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/kernfs/.file.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/kernfs/file\22 -D KBUILD_BASENAME=\22file\22 -D KBUILD_MODNAME=\22file\22 -D __KBUILD_MODNAME=kmod_file -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/kernfs/file.ll fs/kernfs/file.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4004, retainedTypes: !4092, globals: !4116, splitDebugInlining: false, nameTableKind: None)
!4004 = !{!431, !952, !1108, !1933, !2000, !2006, !2083, !2154, !3081, !3347, !3454, !3522, !3868, !4005, !4010, !4023, !4028, !4035, !4060, !4070, !4086}
!4005 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4006, line: 10, baseType: !41, size: 32, elements: !4007)
!4006 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!4007 = !{!4008, !4009}
!4008 = !DIEnumerator(name: "false", value: 0)
!4009 = !DIEnumerator(name: "true", value: 1)
!4010 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernfs_node_flag", file: !14, line: 105, baseType: !41, size: 32, elements: !4011)
!4011 = !{!4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022}
!4012 = !DIEnumerator(name: "KERNFS_ACTIVATED", value: 16)
!4013 = !DIEnumerator(name: "KERNFS_NS", value: 32)
!4014 = !DIEnumerator(name: "KERNFS_HAS_SEQ_SHOW", value: 64)
!4015 = !DIEnumerator(name: "KERNFS_HAS_MMAP", value: 128)
!4016 = !DIEnumerator(name: "KERNFS_LOCKDEP", value: 256)
!4017 = !DIEnumerator(name: "KERNFS_HIDDEN", value: 512)
!4018 = !DIEnumerator(name: "KERNFS_SUICIDAL", value: 1024)
!4019 = !DIEnumerator(name: "KERNFS_SUICIDED", value: 2048)
!4020 = !DIEnumerator(name: "KERNFS_EMPTY_DIR", value: 4096)
!4021 = !DIEnumerator(name: "KERNFS_HAS_RELEASE", value: 8192)
!4022 = !DIEnumerator(name: "KERNFS_REMOVING", value: 16384)
!4023 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernfs_node_type", file: !14, line: 94, baseType: !41, size: 32, elements: !4024)
!4024 = !{!4025, !4026, !4027}
!4025 = !DIEnumerator(name: "KERNFS_DIR", value: 1)
!4026 = !DIEnumerator(name: "KERNFS_FILE", value: 2)
!4027 = !DIEnumerator(name: "KERNFS_LINK", value: 4)
!4028 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsnotify_data_type", file: !2452, line: 286, baseType: !41, size: 32, elements: !4029)
!4029 = !{!4030, !4031, !4032, !4033, !4034}
!4030 = !DIEnumerator(name: "FSNOTIFY_EVENT_NONE", value: 0)
!4031 = !DIEnumerator(name: "FSNOTIFY_EVENT_PATH", value: 1)
!4032 = !DIEnumerator(name: "FSNOTIFY_EVENT_INODE", value: 2)
!4033 = !DIEnumerator(name: "FSNOTIFY_EVENT_DENTRY", value: 3)
!4034 = !DIEnumerator(name: "FSNOTIFY_EVENT_ERROR", value: 4)
!4035 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !911, line: 30, baseType: !41, size: 32, elements: !4036)
!4036 = !{!4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059}
!4037 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!4038 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!4039 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!4040 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!4041 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!4042 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!4043 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!4044 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!4045 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!4046 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!4047 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!4048 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!4049 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!4050 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!4051 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!4052 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!4053 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!4054 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!4055 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!4056 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!4057 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!4058 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!4059 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!4060 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4061, line: 364, baseType: !41, size: 32, elements: !4062)
!4061 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!4062 = !{!4063, !4064, !4065, !4066, !4067, !4068, !4069}
!4063 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!4064 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!4065 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!4066 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!4067 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!4068 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!4069 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!4070 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vm_fault_reason", file: !600, line: 1211, baseType: !41, size: 32, elements: !4071)
!4071 = !{!4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085}
!4072 = !DIEnumerator(name: "VM_FAULT_OOM", value: 1)
!4073 = !DIEnumerator(name: "VM_FAULT_SIGBUS", value: 2)
!4074 = !DIEnumerator(name: "VM_FAULT_MAJOR", value: 4)
!4075 = !DIEnumerator(name: "VM_FAULT_HWPOISON", value: 16)
!4076 = !DIEnumerator(name: "VM_FAULT_HWPOISON_LARGE", value: 32)
!4077 = !DIEnumerator(name: "VM_FAULT_SIGSEGV", value: 64)
!4078 = !DIEnumerator(name: "VM_FAULT_NOPAGE", value: 256)
!4079 = !DIEnumerator(name: "VM_FAULT_LOCKED", value: 512)
!4080 = !DIEnumerator(name: "VM_FAULT_RETRY", value: 1024)
!4081 = !DIEnumerator(name: "VM_FAULT_FALLBACK", value: 2048)
!4082 = !DIEnumerator(name: "VM_FAULT_DONE_COW", value: 4096)
!4083 = !DIEnumerator(name: "VM_FAULT_NEEDDSYNC", value: 8192)
!4084 = !DIEnumerator(name: "VM_FAULT_COMPLETED", value: 16384)
!4085 = !DIEnumerator(name: "VM_FAULT_HINDEX_MASK", value: 983040)
!4086 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernfs_root_flag", file: !14, line: 120, baseType: !41, size: 32, elements: !4087)
!4087 = !{!4088, !4089, !4090, !4091}
!4088 = !DIEnumerator(name: "KERNFS_ROOT_CREATE_DEACTIVATED", value: 1)
!4089 = !DIEnumerator(name: "KERNFS_ROOT_EXTRA_OPEN_PERM_CHECK", value: 2)
!4090 = !DIEnumerator(name: "KERNFS_ROOT_SUPPORT_EXPORTOP", value: 4)
!4091 = !DIEnumerator(name: "KERNFS_ROOT_SUPPORT_USER_XATTR", value: 8)
!4092 = !{!22, !3971, !4093, !110, !3931, !2978, !33, !4096, !4099, !4106, !125, !132, !108, !220, !4109, !4110, !4111, !4112, !4114}
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4095)
!4095 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3971)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4098)
!4098 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_super_info", file: !56, line: 78, size: 320, elements: !4101)
!4101 = !{!4102, !4103, !4104, !4105}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !4100, file: !56, line: 79, baseType: !1887, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4100, file: !56, line: 85, baseType: !54, size: 64, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4100, file: !56, line: 93, baseType: !38, size: 64, offset: 128)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4100, file: !56, line: 96, baseType: !165, size: 128, offset: 192)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4108)
!4108 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !142)
!4109 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !18, line: 42, baseType: !33)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !168)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4113)
!4116 = !{!0, !7, !4117, !4119, !4121, !4123, !4125, !4130, !4136, !4138, !4159, !4164, !4166, !4168, !4171, !4173, !4188}
!4117 = !DIGlobalVariableExpression(var: !4118, expr: !DIExpression())
!4118 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kernfs_notify339", scope: !4003, file: !2, line: 1005, type: !110, isLocal: true, isDefinition: true)
!4119 = !DIGlobalVariableExpression(var: !4120, expr: !DIExpression())
!4120 = distinct !DIGlobalVariable(name: "kernfs_file_fops", scope: !4003, file: !2, line: 1007, type: !2777, isLocal: false, isDefinition: true)
!4121 = !DIGlobalVariableExpression(var: !4122, expr: !DIExpression())
!4122 = distinct !DIGlobalVariable(name: "kernfs_notify_lock", scope: !4003, file: !2, line: 40, type: !69, isLocal: true, isDefinition: true)
!4123 = !DIGlobalVariableExpression(var: !4124, expr: !DIExpression())
!4124 = distinct !DIGlobalVariable(name: "kernfs_notify_list", scope: !4003, file: !2, line: 41, type: !12, isLocal: true, isDefinition: true)
!4125 = !DIGlobalVariableExpression(var: !4126, expr: !DIExpression())
!4126 = distinct !DIGlobalVariable(scope: null, file: !4061, line: 480, type: !4127, isLocal: true, isDefinition: true)
!4127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !4128)
!4128 = !{!4129}
!4129 = !DISubrange(count: 21)
!4130 = !DIGlobalVariableExpression(var: !4131, expr: !DIExpression())
!4131 = distinct !DIGlobalVariable(scope: null, file: !4132, line: 249, type: !4133, isLocal: true, isDefinition: true)
!4132 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !4134)
!4134 = !{!4135}
!4135 = !DISubrange(count: 28)
!4136 = !DIGlobalVariableExpression(var: !4137, expr: !DIExpression())
!4137 = distinct !DIGlobalVariable(name: "kernfs_vm_ops", scope: !4003, file: !2, line: 477, type: !3043, isLocal: true, isDefinition: true)
!4138 = !DIGlobalVariableExpression(var: !4139, expr: !DIExpression())
!4139 = distinct !DIGlobalVariable(name: "__key", scope: !4140, file: !2, line: 692, type: !2035, isLocal: true, isDefinition: true)
!4140 = distinct !DISubprogram(name: "kernfs_fop_open", scope: !2, file: !2, line: 641, type: !3172, scopeLine: 642, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4141)
!4141 = !{!4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4155, !4156, !4157, !4158}
!4142 = !DILocalVariable(name: "inode", arg: 1, scope: !4140, file: !2, line: 641, type: !1763)
!4143 = !DILocalVariable(name: "file", arg: 2, scope: !4140, file: !2, line: 641, type: !627)
!4144 = !DILocalVariable(name: "kn", scope: !4140, file: !2, line: 643, type: !12)
!4145 = !DILocalVariable(name: "root", scope: !4140, file: !2, line: 644, type: !54)
!4146 = !DILocalVariable(name: "ops", scope: !4140, file: !2, line: 645, type: !3923)
!4147 = !DILocalVariable(name: "of", scope: !4140, file: !2, line: 646, type: !3931)
!4148 = !DILocalVariable(name: "has_read", scope: !4140, file: !2, line: 647, type: !795)
!4149 = !DILocalVariable(name: "has_write", scope: !4140, file: !2, line: 647, type: !795)
!4150 = !DILocalVariable(name: "has_mmap", scope: !4140, file: !2, line: 647, type: !795)
!4151 = !DILocalVariable(name: "error", scope: !4140, file: !2, line: 648, type: !22)
!4152 = !DILocalVariable(name: "len", scope: !4153, file: !2, line: 714, type: !22)
!4153 = distinct !DILexicalBlock(scope: !4154, file: !2, line: 713, column: 21)
!4154 = distinct !DILexicalBlock(scope: !4140, file: !2, line: 713, column: 6)
!4155 = !DILabel(scope: !4140, name: "err_put_node", file: !2, line: 757)
!4156 = !DILabel(scope: !4140, name: "err_seq_release", file: !2, line: 759)
!4157 = !DILabel(scope: !4140, name: "err_free", file: !2, line: 761)
!4158 = !DILabel(scope: !4140, name: "err_out", file: !2, line: 764)
!4159 = !DIGlobalVariableExpression(var: !4160, expr: !DIExpression())
!4160 = distinct !DIGlobalVariable(scope: null, file: !2, line: 692, type: !4161, isLocal: true, isDefinition: true)
!4161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !4162)
!4162 = !{!4163}
!4163 = !DISubrange(count: 11)
!4164 = !DIGlobalVariableExpression(var: !4165, expr: !DIExpression())
!4165 = distinct !DIGlobalVariable(name: "__key", scope: !4140, file: !2, line: 694, type: !2035, isLocal: true, isDefinition: true)
!4166 = !DIGlobalVariableExpression(var: !4167, expr: !DIExpression())
!4167 = distinct !DIGlobalVariable(name: "__key", scope: !4140, file: !2, line: 719, type: !2035, isLocal: true, isDefinition: true)
!4168 = !DIGlobalVariableExpression(var: !4169, expr: !DIExpression())
!4169 = distinct !DIGlobalVariable(scope: null, file: !2, line: 719, type: !4170, isLocal: true, isDefinition: true)
!4170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !3710)
!4171 = !DIGlobalVariableExpression(var: !4172, expr: !DIExpression())
!4172 = distinct !DIGlobalVariable(name: "kernfs_seq_ops", scope: !4003, file: !2, line: 208, type: !172, isLocal: true, isDefinition: true)
!4173 = !DIGlobalVariableExpression(var: !4174, expr: !DIExpression())
!4174 = distinct !DIGlobalVariable(name: "__key", scope: !4175, file: !2, line: 580, type: !2035, isLocal: true, isDefinition: true)
!4175 = distinct !DISubprogram(name: "kernfs_get_open_node", scope: !2, file: !2, line: 563, type: !4176, scopeLine: 565, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4178)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!22, !12, !3931}
!4178 = !{!4179, !4180, !4181, !4182, !4184}
!4179 = !DILocalVariable(name: "kn", arg: 1, scope: !4175, file: !2, line: 563, type: !12)
!4180 = !DILocalVariable(name: "of", arg: 2, scope: !4175, file: !2, line: 564, type: !3931)
!4181 = !DILocalVariable(name: "on", scope: !4175, file: !2, line: 566, type: !3971)
!4182 = !DILocalVariable(name: "mutex", scope: !4175, file: !2, line: 567, type: !4183)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!4184 = !DILocalVariable(name: "_r_a_p__v", scope: !4185, file: !2, line: 582, type: !4109)
!4185 = distinct !DILexicalBlock(scope: !4186, file: !2, line: 582, column: 3)
!4186 = distinct !DILexicalBlock(scope: !4187, file: !2, line: 572, column: 11)
!4187 = distinct !DILexicalBlock(scope: !4175, file: !2, line: 572, column: 6)
!4188 = !DIGlobalVariableExpression(var: !4189, expr: !DIExpression())
!4189 = distinct !DIGlobalVariable(scope: null, file: !2, line: 580, type: !4190, isLocal: true, isDefinition: true)
!4190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !1030)
!4191 = !{!4192, !4193, !4194, !4195, !4198, !4201, !4203, !4207}
!4192 = !DILocalVariable(name: "kn", arg: 1, scope: !9, file: !2, line: 977, type: !12)
!4193 = !DILocalVariable(name: "flags", scope: !9, file: !2, line: 980, type: !33)
!4194 = !DILocalVariable(name: "on", scope: !9, file: !2, line: 981, type: !3971)
!4195 = !DILocalVariable(name: "__ret_warn_on", scope: !4196, file: !2, line: 983, type: !22)
!4196 = distinct !DILexicalBlock(scope: !4197, file: !2, line: 983, column: 6)
!4197 = distinct !DILexicalBlock(scope: !9, file: !2, line: 983, column: 6)
!4198 = !DILocalVariable(name: "__flags", scope: !4199, file: !2, line: 983, type: !22)
!4199 = distinct !DILexicalBlock(scope: !4200, file: !2, line: 983, column: 6)
!4200 = distinct !DILexicalBlock(scope: !4196, file: !2, line: 983, column: 6)
!4201 = !DILocalVariable(name: "__UNIQUE_ID_rcu337", scope: !4202, file: !2, line: 988, type: !3971)
!4202 = distinct !DILexicalBlock(scope: !9, file: !2, line: 988, column: 7)
!4203 = !DILocalVariable(name: "__dummy", scope: !4204, file: !2, line: 996, type: !33)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !2, line: 996, column: 2)
!4205 = distinct !DILexicalBlock(scope: !4206, file: !2, line: 996, column: 2)
!4206 = distinct !DILexicalBlock(scope: !9, file: !2, line: 996, column: 2)
!4207 = !DILocalVariable(name: "__dummy2", scope: !4204, file: !2, line: 996, type: !33)
!4208 = !{i32 7, !"Dwarf Version", i32 5}
!4209 = !{i32 2, !"Debug Info Version", i32 3}
!4210 = !{i32 1, !"wchar_size", i32 2}
!4211 = !{i32 8, !"cf-protection-branch", i32 1}
!4212 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4213 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4214 = !{i32 1, !"Code Model", i32 2}
!4215 = !{i32 1, !"override-stack-alignment", i32 8}
!4216 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4217 = distinct !DISubprogram(name: "kernfs_should_drain_open_files", scope: !2, file: !2, line: 815, type: !4218, scopeLine: 816, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4220)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!795, !12}
!4220 = !{!4221, !4222, !4223, !4224, !4226, !4229}
!4221 = !DILocalVariable(name: "kn", arg: 1, scope: !4217, file: !2, line: 815, type: !12)
!4222 = !DILocalVariable(name: "on", scope: !4217, file: !2, line: 817, type: !3971)
!4223 = !DILocalVariable(name: "ret", scope: !4217, file: !2, line: 818, type: !795)
!4224 = !DILocalVariable(name: "__ret_warn_on", scope: !4225, file: !2, line: 824, type: !22)
!4225 = distinct !DILexicalBlock(scope: !4217, file: !2, line: 824, column: 2)
!4226 = !DILocalVariable(name: "__flags", scope: !4227, file: !2, line: 824, type: !22)
!4227 = distinct !DILexicalBlock(scope: !4228, file: !2, line: 824, column: 2)
!4228 = distinct !DILexicalBlock(scope: !4225, file: !2, line: 824, column: 2)
!4229 = !DILocalVariable(name: "__UNIQUE_ID_rcu335", scope: !4230, file: !2, line: 827, type: !3971)
!4230 = distinct !DILexicalBlock(scope: !4217, file: !2, line: 827, column: 7)
!4231 = !DILocation(line: 815, column: 57, scope: !4217)
!4232 = !DILocation(line: 817, column: 2, scope: !4217)
!4233 = !DILocation(line: 817, column: 27, scope: !4217)
!4234 = !DILocation(line: 818, column: 2, scope: !4217)
!4235 = !DILocation(line: 818, column: 7, scope: !4217)
!4236 = !DILocation(line: 824, column: 2, scope: !4225)
!4237 = !DILocation(line: 824, column: 2, scope: !4228)
!4238 = !DILocation(line: 824, column: 2, scope: !4227)
!4239 = !DILocation(line: 824, column: 2, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4227, file: !2, line: 824, column: 2)
!4241 = !DILocation(line: 824, column: 2, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4227, file: !2, line: 824, column: 2)
!4243 = !{i64 2154789236, i64 2154789265, i64 2154789311, i64 2154789369, i64 2154789423, i64 2154789477, i64 2154789532, i64 2154789563, i64 2154789871, i64 2154789877, i64 2154789924, i64 2154789947, i64 2154789973}
!4244 = !DILocation(line: 824, column: 2, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4227, file: !2, line: 824, column: 2)
!4246 = !DILocation(line: 824, column: 2, scope: !4217)
!4247 = !DILocation(line: 826, column: 2, scope: !4217)
!4248 = !DILocation(line: 827, column: 7, scope: !4230)
!4249 = !DILocation(line: 827, column: 7, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4230, file: !2, line: 827, column: 7)
!4251 = !DILocation(line: 827, column: 7, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4250, file: !2, line: 827, column: 7)
!4253 = !DILocation(line: 827, column: 7, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4230, file: !2, line: 827, column: 7)
!4255 = !DILocation(line: 827, column: 7, scope: !4217)
!4256 = !DILocation(line: 827, column: 5, scope: !4217)
!4257 = !DILocation(line: 828, column: 8, scope: !4217)
!4258 = !DILocation(line: 828, column: 11, scope: !4217)
!4259 = !DILocation(line: 828, column: 15, scope: !4217)
!4260 = !DILocation(line: 828, column: 19, scope: !4217)
!4261 = !DILocation(line: 828, column: 30, scope: !4217)
!4262 = !DILocation(line: 828, column: 33, scope: !4217)
!4263 = !DILocation(line: 828, column: 37, scope: !4217)
!4264 = !DILocation(line: 0, scope: !4217)
!4265 = !DILocation(line: 828, column: 6, scope: !4217)
!4266 = !DILocation(line: 829, column: 2, scope: !4217)
!4267 = !DILocation(line: 831, column: 9, scope: !4217)
!4268 = !{i8 0, i8 2}
!4269 = !DILocation(line: 832, column: 1, scope: !4217)
!4270 = !DILocation(line: 831, column: 2, scope: !4217)
!4271 = distinct !DISubprogram(name: "atomic_read", scope: !4272, file: !4272, line: 30, type: !4273, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4277)
!4272 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!22, !4275}
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!4277 = !{!4278}
!4278 = !DILocalVariable(name: "v", arg: 1, scope: !4271, file: !4272, line: 30, type: !4275)
!4279 = !DILocation(line: 30, column: 29, scope: !4271)
!4280 = !DILocation(line: 32, column: 25, scope: !4271)
!4281 = !DILocation(line: 32, column: 2, scope: !4271)
!4282 = !DILocation(line: 33, column: 25, scope: !4271)
!4283 = !DILocation(line: 33, column: 9, scope: !4271)
!4284 = !DILocation(line: 33, column: 2, scope: !4271)
!4285 = distinct !DISubprogram(name: "rcu_read_lock", scope: !4286, file: !4286, line: 782, type: !1501, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003)
!4286 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4287 = !DILocation(line: 784, column: 2, scope: !4285)
!4288 = !DILocation(line: 786, column: 2, scope: !4285)
!4289 = !DILocation(line: 786, column: 2, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4285, file: !4286, line: 786, column: 2)
!4291 = !DILocation(line: 787, column: 2, scope: !4285)
!4292 = !DILocation(line: 787, column: 2, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4285, file: !4286, line: 787, column: 2)
!4294 = !DILocation(line: 789, column: 1, scope: !4285)
!4295 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !4286, file: !4286, line: 813, type: !1501, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003)
!4296 = !DILocation(line: 815, column: 2, scope: !4295)
!4297 = !DILocation(line: 815, column: 2, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4295, file: !4286, line: 815, column: 2)
!4299 = !DILocation(line: 818, column: 2, scope: !4295)
!4300 = !DILocation(line: 819, column: 2, scope: !4295)
!4301 = !DILocation(line: 819, column: 2, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4295, file: !4286, line: 819, column: 2)
!4303 = !DILocation(line: 820, column: 1, scope: !4295)
!4304 = distinct !DISubprogram(name: "kernfs_drain_open_files", scope: !2, file: !2, line: 834, type: !10, scopeLine: 835, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4305)
!4305 = !{!4306, !4307, !4308, !4309, !4310, !4313, !4316, !4318, !4320}
!4306 = !DILocalVariable(name: "kn", arg: 1, scope: !4304, file: !2, line: 834, type: !12)
!4307 = !DILocalVariable(name: "on", scope: !4304, file: !2, line: 836, type: !3971)
!4308 = !DILocalVariable(name: "of", scope: !4304, file: !2, line: 837, type: !3931)
!4309 = !DILocalVariable(name: "mutex", scope: !4304, file: !2, line: 838, type: !4183)
!4310 = !DILocalVariable(name: "__mptr", scope: !4311, file: !2, line: 847, type: !110)
!4311 = distinct !DILexicalBlock(scope: !4312, file: !2, line: 847, column: 2)
!4312 = distinct !DILexicalBlock(scope: !4304, file: !2, line: 847, column: 2)
!4313 = !DILocalVariable(name: "inode", scope: !4314, file: !2, line: 848, type: !1763)
!4314 = distinct !DILexicalBlock(scope: !4315, file: !2, line: 847, column: 44)
!4315 = distinct !DILexicalBlock(scope: !4312, file: !2, line: 847, column: 2)
!4316 = !DILocalVariable(name: "__mptr", scope: !4317, file: !2, line: 847, type: !110)
!4317 = distinct !DILexicalBlock(scope: !4315, file: !2, line: 847, column: 2)
!4318 = !DILocalVariable(name: "__ret_warn_on", scope: !4319, file: !2, line: 860, type: !22)
!4319 = distinct !DILexicalBlock(scope: !4304, file: !2, line: 860, column: 2)
!4320 = !DILocalVariable(name: "__flags", scope: !4321, file: !2, line: 860, type: !22)
!4321 = distinct !DILexicalBlock(scope: !4322, file: !2, line: 860, column: 2)
!4322 = distinct !DILexicalBlock(scope: !4319, file: !2, line: 860, column: 2)
!4323 = !DILocation(line: 834, column: 50, scope: !4304)
!4324 = !DILocation(line: 836, column: 2, scope: !4304)
!4325 = !DILocation(line: 836, column: 27, scope: !4304)
!4326 = !DILocation(line: 837, column: 2, scope: !4304)
!4327 = !DILocation(line: 837, column: 27, scope: !4304)
!4328 = !DILocation(line: 838, column: 2, scope: !4304)
!4329 = !DILocation(line: 838, column: 16, scope: !4304)
!4330 = !DILocation(line: 840, column: 38, scope: !4304)
!4331 = !DILocation(line: 840, column: 10, scope: !4304)
!4332 = !DILocation(line: 840, column: 8, scope: !4304)
!4333 = !DILocation(line: 841, column: 37, scope: !4304)
!4334 = !DILocation(line: 841, column: 7, scope: !4304)
!4335 = !DILocation(line: 841, column: 5, scope: !4304)
!4336 = !DILocation(line: 842, column: 7, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4304, file: !2, line: 842, column: 6)
!4338 = !DILocation(line: 842, column: 6, scope: !4304)
!4339 = !DILocation(line: 843, column: 16, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4337, file: !2, line: 842, column: 11)
!4341 = !DILocation(line: 843, column: 3, scope: !4340)
!4342 = !DILocation(line: 844, column: 3, scope: !4340)
!4343 = !DILocation(line: 847, column: 2, scope: !4311)
!4344 = !DILocation(line: 847, column: 2, scope: !4312)
!4345 = !DILocation(line: 847, column: 2, scope: !4315)
!4346 = !DILocation(line: 848, column: 3, scope: !4314)
!4347 = !DILocation(line: 848, column: 17, scope: !4314)
!4348 = !DILocation(line: 848, column: 36, scope: !4314)
!4349 = !DILocation(line: 848, column: 40, scope: !4314)
!4350 = !DILocation(line: 848, column: 25, scope: !4314)
!4351 = !DILocation(line: 850, column: 7, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4314, file: !2, line: 850, column: 7)
!4353 = !DILocation(line: 850, column: 11, scope: !4352)
!4354 = !DILocation(line: 850, column: 7, scope: !4314)
!4355 = !DILocation(line: 851, column: 24, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4352, file: !2, line: 850, column: 20)
!4357 = !DILocation(line: 851, column: 31, scope: !4356)
!4358 = !DILocation(line: 851, column: 4, scope: !4356)
!4359 = !DILocation(line: 852, column: 4, scope: !4356)
!4360 = !DILocation(line: 852, column: 8, scope: !4356)
!4361 = !DILocation(line: 852, column: 16, scope: !4356)
!4362 = !DILocation(line: 853, column: 4, scope: !4356)
!4363 = !DILocation(line: 853, column: 8, scope: !4356)
!4364 = !DILocation(line: 853, column: 18, scope: !4356)
!4365 = !DILocation(line: 854, column: 3, scope: !4356)
!4366 = !DILocation(line: 856, column: 7, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4314, file: !2, line: 856, column: 7)
!4368 = !DILocation(line: 856, column: 11, scope: !4367)
!4369 = !DILocation(line: 856, column: 17, scope: !4367)
!4370 = !DILocation(line: 856, column: 7, scope: !4314)
!4371 = !DILocation(line: 857, column: 24, scope: !4367)
!4372 = !DILocation(line: 857, column: 28, scope: !4367)
!4373 = !DILocation(line: 857, column: 4, scope: !4367)
!4374 = !DILocation(line: 858, column: 2, scope: !4315)
!4375 = !DILocation(line: 858, column: 2, scope: !4314)
!4376 = !DILocation(line: 847, column: 2, scope: !4317)
!4377 = distinct !{!4377, !4344, !4378, !4379, !4380}
!4378 = !DILocation(line: 858, column: 2, scope: !4312)
!4379 = !{!"llvm.loop.mustprogress"}
!4380 = !{!"llvm.loop.unroll.disable"}
!4381 = !DILocation(line: 860, column: 2, scope: !4319)
!4382 = !DILocation(line: 860, column: 2, scope: !4322)
!4383 = !DILocation(line: 860, column: 2, scope: !4321)
!4384 = !DILocation(line: 860, column: 2, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4321, file: !2, line: 860, column: 2)
!4386 = !DILocation(line: 860, column: 2, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4321, file: !2, line: 860, column: 2)
!4388 = !{i64 2154797603, i64 2154797632, i64 2154797678, i64 2154797736, i64 2154797790, i64 2154797844, i64 2154797899, i64 2154797930, i64 2154798238, i64 2154798244, i64 2154798291, i64 2154798314, i64 2154798340}
!4389 = !DILocation(line: 860, column: 2, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4321, file: !2, line: 860, column: 2)
!4391 = !DILocation(line: 860, column: 2, scope: !4304)
!4392 = !DILocation(line: 861, column: 15, scope: !4304)
!4393 = !DILocation(line: 861, column: 2, scope: !4304)
!4394 = !DILocation(line: 862, column: 1, scope: !4304)
!4395 = distinct !DISubprogram(name: "kernfs_open_file_mutex_lock", scope: !2, file: !2, line: 50, type: !4396, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4398)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!4183, !12}
!4398 = !{!4399, !4400}
!4399 = !DILocalVariable(name: "kn", arg: 1, scope: !4395, file: !2, line: 50, type: !12)
!4400 = !DILocalVariable(name: "lock", scope: !4395, file: !2, line: 52, type: !4183)
!4401 = !DILocation(line: 50, column: 77, scope: !4395)
!4402 = !DILocation(line: 52, column: 2, scope: !4395)
!4403 = !DILocation(line: 52, column: 16, scope: !4395)
!4404 = !DILocation(line: 54, column: 36, scope: !4395)
!4405 = !DILocation(line: 54, column: 9, scope: !4395)
!4406 = !DILocation(line: 54, column: 7, scope: !4395)
!4407 = !DILocation(line: 56, column: 13, scope: !4395)
!4408 = !DILocation(line: 56, column: 2, scope: !4395)
!4409 = !DILocation(line: 58, column: 9, scope: !4395)
!4410 = !DILocation(line: 59, column: 1, scope: !4395)
!4411 = !DILocation(line: 58, column: 2, scope: !4395)
!4412 = distinct !DISubprogram(name: "kernfs_deref_open_node_locked", scope: !2, file: !2, line: 91, type: !4413, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4415)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!3971, !12}
!4415 = !{!4416}
!4416 = !DILocalVariable(name: "kn", arg: 1, scope: !4412, file: !2, line: 91, type: !12)
!4417 = !DILocation(line: 91, column: 51, scope: !4412)
!4418 = !DILocation(line: 93, column: 9, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4412, file: !2, line: 93, column: 9)
!4420 = !DILocation(line: 93, column: 9, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4419, file: !2, line: 93, column: 9)
!4422 = !DILocation(line: 93, column: 2, scope: !4412)
!4423 = !DISubprogram(name: "mutex_unlock", scope: !146, file: !146, line: 246, type: !4424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{null, !4183}
!4426 = distinct !DISubprogram(name: "file_inode", scope: !197, file: !197, line: 1073, type: !4427, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4429)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{!1763, !194}
!4429 = !{!4430}
!4430 = !DILocalVariable(name: "f", arg: 1, scope: !4426, file: !197, line: 1073, type: !194)
!4431 = !DILocation(line: 1073, column: 59, scope: !4426)
!4432 = !DILocation(line: 1075, column: 9, scope: !4426)
!4433 = !DILocation(line: 1075, column: 12, scope: !4426)
!4434 = !DILocation(line: 1075, column: 2, scope: !4426)
!4435 = !DISubprogram(name: "unmap_mapping_range", scope: !3045, file: !3045, line: 2385, type: !4436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{null, !1759, !4438, !4438, !22}
!4438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!4439 = distinct !DISubprogram(name: "kernfs_release_file", scope: !2, file: !2, line: 770, type: !4440, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4442)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{null, !12, !3931}
!4442 = !{!4443, !4444}
!4443 = !DILocalVariable(name: "kn", arg: 1, scope: !4439, file: !2, line: 770, type: !12)
!4444 = !DILocalVariable(name: "of", arg: 2, scope: !4439, file: !2, line: 771, type: !3931)
!4445 = !DILocation(line: 770, column: 53, scope: !4439)
!4446 = !DILocation(line: 771, column: 30, scope: !4439)
!4447 = !DILocation(line: 780, column: 2, scope: !4439)
!4448 = !DILocation(line: 780, column: 2, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4439, file: !2, line: 780, column: 2)
!4450 = !DILocation(line: 782, column: 7, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4439, file: !2, line: 782, column: 6)
!4452 = !DILocation(line: 782, column: 11, scope: !4451)
!4453 = !DILocation(line: 782, column: 6, scope: !4439)
!4454 = !DILocation(line: 788, column: 3, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4451, file: !2, line: 782, column: 21)
!4456 = !DILocation(line: 788, column: 7, scope: !4455)
!4457 = !DILocation(line: 788, column: 12, scope: !4455)
!4458 = !DILocation(line: 788, column: 17, scope: !4455)
!4459 = !DILocation(line: 788, column: 25, scope: !4455)
!4460 = !DILocation(line: 789, column: 3, scope: !4455)
!4461 = !DILocation(line: 789, column: 7, scope: !4455)
!4462 = !DILocation(line: 789, column: 16, scope: !4455)
!4463 = !DILocation(line: 790, column: 9, scope: !4455)
!4464 = !DILocation(line: 790, column: 3, scope: !4455)
!4465 = !DILocation(line: 790, column: 14, scope: !4455)
!4466 = !DILocation(line: 790, column: 27, scope: !4455)
!4467 = !DILocation(line: 791, column: 2, scope: !4455)
!4468 = !DILocation(line: 792, column: 1, scope: !4439)
!4469 = distinct !DISubprogram(name: "kernfs_generic_poll", scope: !2, file: !2, line: 878, type: !4470, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4474)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!2978, !3931, !4472}
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !2982, line: 40, baseType: !2981)
!4474 = !{!4475, !4476, !4477}
!4475 = !DILocalVariable(name: "of", arg: 1, scope: !4469, file: !2, line: 878, type: !3931)
!4476 = !DILocalVariable(name: "wait", arg: 2, scope: !4469, file: !2, line: 878, type: !4472)
!4477 = !DILocalVariable(name: "on", scope: !4469, file: !2, line: 880, type: !3971)
!4478 = !DILocation(line: 878, column: 55, scope: !4469)
!4479 = !DILocation(line: 878, column: 71, scope: !4469)
!4480 = !DILocation(line: 880, column: 2, scope: !4469)
!4481 = !DILocation(line: 880, column: 27, scope: !4469)
!4482 = !DILocation(line: 880, column: 38, scope: !4469)
!4483 = !DILocation(line: 880, column: 32, scope: !4469)
!4484 = !DILocation(line: 882, column: 12, scope: !4469)
!4485 = !DILocation(line: 882, column: 16, scope: !4469)
!4486 = !DILocation(line: 882, column: 23, scope: !4469)
!4487 = !DILocation(line: 882, column: 27, scope: !4469)
!4488 = !DILocation(line: 882, column: 33, scope: !4469)
!4489 = !DILocation(line: 882, column: 2, scope: !4469)
!4490 = !DILocation(line: 884, column: 6, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4469, file: !2, line: 884, column: 6)
!4492 = !DILocation(line: 884, column: 10, scope: !4491)
!4493 = !DILocation(line: 884, column: 32, scope: !4491)
!4494 = !DILocation(line: 884, column: 36, scope: !4491)
!4495 = !DILocation(line: 884, column: 19, scope: !4491)
!4496 = !DILocation(line: 884, column: 16, scope: !4491)
!4497 = !DILocation(line: 884, column: 6, scope: !4469)
!4498 = !DILocation(line: 885, column: 3, scope: !4491)
!4499 = !DILocation(line: 887, column: 2, scope: !4469)
!4500 = !DILocation(line: 888, column: 1, scope: !4469)
!4501 = distinct !DISubprogram(name: "of_on", scope: !2, file: !2, line: 67, type: !4502, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4504)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!3971, !3931}
!4504 = !{!4505}
!4505 = !DILocalVariable(name: "of", arg: 1, scope: !4501, file: !2, line: 67, type: !3931)
!4506 = !DILocation(line: 67, column: 64, scope: !4501)
!4507 = !DILocation(line: 69, column: 9, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4501, file: !2, line: 69, column: 9)
!4509 = !DILocation(line: 69, column: 9, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4508, file: !2, line: 69, column: 9)
!4511 = !DILocation(line: 69, column: 2, scope: !4501)
!4512 = distinct !DISubprogram(name: "poll_wait", scope: !2982, file: !2982, line: 42, type: !4513, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4515)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{null, !627, !2555, !4472}
!4515 = !{!4516, !4517, !4518}
!4516 = !DILocalVariable(name: "filp", arg: 1, scope: !4512, file: !2982, line: 42, type: !627)
!4517 = !DILocalVariable(name: "wait_address", arg: 2, scope: !4512, file: !2982, line: 42, type: !2555)
!4518 = !DILocalVariable(name: "p", arg: 3, scope: !4512, file: !2982, line: 42, type: !4472)
!4519 = !DILocation(line: 42, column: 44, scope: !4512)
!4520 = !DILocation(line: 42, column: 70, scope: !4512)
!4521 = !DILocation(line: 42, column: 96, scope: !4512)
!4522 = !DILocation(line: 44, column: 6, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4512, file: !2982, line: 44, column: 6)
!4524 = !DILocation(line: 44, column: 8, scope: !4523)
!4525 = !DILocation(line: 44, column: 11, scope: !4523)
!4526 = !DILocation(line: 44, column: 14, scope: !4523)
!4527 = !DILocation(line: 44, column: 21, scope: !4523)
!4528 = !DILocation(line: 44, column: 24, scope: !4523)
!4529 = !DILocation(line: 44, column: 6, scope: !4512)
!4530 = !DILocation(line: 45, column: 3, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4523, file: !2982, line: 44, column: 38)
!4532 = !DILocation(line: 45, column: 6, scope: !4531)
!4533 = !DILocation(line: 45, column: 13, scope: !4531)
!4534 = !DILocation(line: 45, column: 19, scope: !4531)
!4535 = !DILocation(line: 45, column: 33, scope: !4531)
!4536 = !DILocation(line: 52, column: 3, scope: !4531)
!4537 = !DILocation(line: 52, column: 3, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4531, file: !2982, line: 52, column: 3)
!4539 = !DILocation(line: 52, column: 3, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4538, file: !2982, line: 52, column: 3)
!4541 = !{i64 2153417973}
!4542 = !DILocation(line: 53, column: 2, scope: !4531)
!4543 = !DILocation(line: 54, column: 1, scope: !4512)
!4544 = !DILocation(line: 977, column: 40, scope: !9)
!4545 = !DILocation(line: 980, column: 2, scope: !9)
!4546 = !DILocation(line: 980, column: 16, scope: !9)
!4547 = !DILocation(line: 981, column: 2, scope: !9)
!4548 = !DILocation(line: 981, column: 27, scope: !9)
!4549 = !DILocation(line: 983, column: 6, scope: !4196)
!4550 = !DILocation(line: 983, column: 6, scope: !4200)
!4551 = !DILocation(line: 983, column: 6, scope: !4199)
!4552 = !DILocation(line: 983, column: 6, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4199, file: !2, line: 983, column: 6)
!4554 = !DILocation(line: 983, column: 6, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4199, file: !2, line: 983, column: 6)
!4556 = !{i64 2154803940, i64 2154803969, i64 2154804015, i64 2154804073, i64 2154804127, i64 2154804181, i64 2154804236, i64 2154804267, i64 2154804575, i64 2154804581, i64 2154804628, i64 2154804651, i64 2154804677}
!4557 = !DILocation(line: 983, column: 6, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4199, file: !2, line: 983, column: 6)
!4559 = !DILocation(line: 983, column: 6, scope: !4197)
!4560 = !DILocation(line: 983, column: 6, scope: !9)
!4561 = !DILocation(line: 984, column: 3, scope: !4197)
!4562 = !DILocation(line: 987, column: 2, scope: !9)
!4563 = !DILocation(line: 988, column: 7, scope: !4202)
!4564 = !DILocation(line: 988, column: 7, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4202, file: !2, line: 988, column: 7)
!4566 = !DILocation(line: 988, column: 7, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4565, file: !2, line: 988, column: 7)
!4568 = !DILocation(line: 988, column: 7, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4202, file: !2, line: 988, column: 7)
!4570 = !DILocation(line: 988, column: 7, scope: !9)
!4571 = !DILocation(line: 988, column: 5, scope: !9)
!4572 = !DILocation(line: 989, column: 6, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !9, file: !2, line: 989, column: 6)
!4574 = !DILocation(line: 989, column: 6, scope: !9)
!4575 = !DILocation(line: 990, column: 15, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4573, file: !2, line: 989, column: 10)
!4577 = !DILocation(line: 990, column: 19, scope: !4576)
!4578 = !DILocation(line: 990, column: 3, scope: !4576)
!4579 = !DILocation(line: 991, column: 3, scope: !4576)
!4580 = !DILocation(line: 992, column: 2, scope: !4576)
!4581 = !DILocation(line: 993, column: 2, scope: !9)
!4582 = !DILocation(line: 996, column: 2, scope: !9)
!4583 = !DILocation(line: 996, column: 2, scope: !4206)
!4584 = !DILocation(line: 996, column: 2, scope: !4204)
!4585 = !DILocation(line: 996, column: 2, scope: !4205)
!4586 = !DILocation(line: 997, column: 7, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !9, file: !2, line: 997, column: 6)
!4588 = !DILocation(line: 997, column: 11, scope: !4587)
!4589 = !DILocation(line: 997, column: 16, scope: !4587)
!4590 = !DILocation(line: 997, column: 6, scope: !9)
!4591 = !DILocation(line: 998, column: 14, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4587, file: !2, line: 997, column: 29)
!4593 = !DILocation(line: 998, column: 3, scope: !4592)
!4594 = !DILocation(line: 999, column: 26, scope: !4592)
!4595 = !DILocation(line: 999, column: 3, scope: !4592)
!4596 = !DILocation(line: 999, column: 7, scope: !4592)
!4597 = !DILocation(line: 999, column: 12, scope: !4592)
!4598 = !DILocation(line: 999, column: 24, scope: !4592)
!4599 = !DILocation(line: 1000, column: 24, scope: !4592)
!4600 = !DILocation(line: 1000, column: 22, scope: !4592)
!4601 = !DILocation(line: 1001, column: 3, scope: !4592)
!4602 = !DILocation(line: 1002, column: 2, scope: !4592)
!4603 = !DILocation(line: 1003, column: 46, scope: !9)
!4604 = !DILocation(line: 1003, column: 2, scope: !9)
!4605 = !DILocation(line: 1004, column: 1, scope: !9)
!4606 = distinct !DISubprogram(name: "kernfs_notify_workfn", scope: !2, file: !2, line: 908, type: !918, scopeLine: 909, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4607)
!4607 = !{!4608, !4609, !4610, !4611, !4612, !4613, !4616, !4619, !4620, !4621, !4622}
!4608 = !DILocalVariable(name: "work", arg: 1, scope: !4606, file: !2, line: 908, type: !920)
!4609 = !DILocalVariable(name: "kn", scope: !4606, file: !2, line: 910, type: !12)
!4610 = !DILocalVariable(name: "info", scope: !4606, file: !2, line: 911, type: !4099)
!4611 = !DILocalVariable(name: "root", scope: !4606, file: !2, line: 912, type: !54)
!4612 = !DILabel(scope: !4606, name: "repeat", file: !2, line: 913)
!4613 = !DILocalVariable(name: "__mptr", scope: !4614, file: !2, line: 929, type: !110)
!4614 = distinct !DILexicalBlock(scope: !4615, file: !2, line: 929, column: 2)
!4615 = distinct !DILexicalBlock(scope: !4606, file: !2, line: 929, column: 2)
!4616 = !DILocalVariable(name: "parent", scope: !4617, file: !2, line: 930, type: !12)
!4617 = distinct !DILexicalBlock(scope: !4618, file: !2, line: 929, column: 60)
!4618 = distinct !DILexicalBlock(scope: !4615, file: !2, line: 929, column: 2)
!4619 = !DILocalVariable(name: "p_inode", scope: !4617, file: !2, line: 931, type: !1763)
!4620 = !DILocalVariable(name: "inode", scope: !4617, file: !2, line: 932, type: !1763)
!4621 = !DILocalVariable(name: "name", scope: !4617, file: !2, line: 933, type: !1801)
!4622 = !DILocalVariable(name: "__mptr", scope: !4623, file: !2, line: 929, type: !110)
!4623 = distinct !DILexicalBlock(scope: !4618, file: !2, line: 929, column: 2)
!4624 = !DILocation(line: 908, column: 54, scope: !4606)
!4625 = !DILocation(line: 910, column: 2, scope: !4606)
!4626 = !DILocation(line: 910, column: 22, scope: !4606)
!4627 = !DILocation(line: 911, column: 2, scope: !4606)
!4628 = !DILocation(line: 911, column: 28, scope: !4606)
!4629 = !DILocation(line: 912, column: 2, scope: !4606)
!4630 = !DILocation(line: 912, column: 22, scope: !4606)
!4631 = !DILocation(line: 913, column: 1, scope: !4606)
!4632 = !DILocation(line: 915, column: 2, scope: !4606)
!4633 = !DILocation(line: 916, column: 7, scope: !4606)
!4634 = !DILocation(line: 916, column: 5, scope: !4606)
!4635 = !DILocation(line: 917, column: 6, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4606, file: !2, line: 917, column: 6)
!4637 = !DILocation(line: 917, column: 9, scope: !4636)
!4638 = !DILocation(line: 917, column: 6, scope: !4606)
!4639 = !DILocation(line: 918, column: 3, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4636, file: !2, line: 917, column: 31)
!4641 = !DILocation(line: 968, column: 1, scope: !4606)
!4642 = !DILocation(line: 921, column: 23, scope: !4606)
!4643 = !DILocation(line: 921, column: 27, scope: !4606)
!4644 = !DILocation(line: 921, column: 32, scope: !4606)
!4645 = !DILocation(line: 921, column: 21, scope: !4606)
!4646 = !DILocation(line: 922, column: 2, scope: !4606)
!4647 = !DILocation(line: 922, column: 6, scope: !4606)
!4648 = !DILocation(line: 922, column: 11, scope: !4606)
!4649 = !DILocation(line: 922, column: 23, scope: !4606)
!4650 = !DILocation(line: 923, column: 2, scope: !4606)
!4651 = !DILocation(line: 925, column: 21, scope: !4606)
!4652 = !DILocation(line: 925, column: 9, scope: !4606)
!4653 = !DILocation(line: 925, column: 7, scope: !4606)
!4654 = !DILocation(line: 928, column: 13, scope: !4606)
!4655 = !DILocation(line: 928, column: 19, scope: !4606)
!4656 = !DILocation(line: 928, column: 2, scope: !4606)
!4657 = !DILocation(line: 929, column: 2, scope: !4614)
!4658 = !DILocation(line: 929, column: 2, scope: !4615)
!4659 = !DILocation(line: 929, column: 2, scope: !4618)
!4660 = !DILocation(line: 930, column: 3, scope: !4617)
!4661 = !DILocation(line: 930, column: 23, scope: !4617)
!4662 = !DILocation(line: 931, column: 3, scope: !4617)
!4663 = !DILocation(line: 931, column: 17, scope: !4617)
!4664 = !DILocation(line: 932, column: 3, scope: !4617)
!4665 = !DILocation(line: 932, column: 17, scope: !4617)
!4666 = !DILocation(line: 933, column: 3, scope: !4617)
!4667 = !DILocation(line: 933, column: 15, scope: !4617)
!4668 = !DILocation(line: 941, column: 19, scope: !4617)
!4669 = !DILocation(line: 941, column: 25, scope: !4617)
!4670 = !DILocation(line: 941, column: 40, scope: !4617)
!4671 = !DILocation(line: 941, column: 29, scope: !4617)
!4672 = !DILocation(line: 941, column: 11, scope: !4617)
!4673 = !DILocation(line: 941, column: 9, scope: !4617)
!4674 = !DILocation(line: 942, column: 8, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4617, file: !2, line: 942, column: 7)
!4676 = !DILocation(line: 942, column: 7, scope: !4617)
!4677 = !DILocation(line: 943, column: 4, scope: !4675)
!4678 = !DILocation(line: 945, column: 23, scope: !4617)
!4679 = !DILocation(line: 945, column: 10, scope: !4617)
!4680 = !DILocation(line: 946, column: 30, scope: !4617)
!4681 = !DILocation(line: 946, column: 12, scope: !4617)
!4682 = !DILocation(line: 946, column: 10, scope: !4617)
!4683 = !DILocation(line: 947, column: 7, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4617, file: !2, line: 947, column: 7)
!4685 = !DILocation(line: 947, column: 7, scope: !4617)
!4686 = !DILocation(line: 948, column: 22, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4684, file: !2, line: 947, column: 15)
!4688 = !DILocation(line: 948, column: 28, scope: !4687)
!4689 = !DILocation(line: 948, column: 43, scope: !4687)
!4690 = !DILocation(line: 948, column: 32, scope: !4687)
!4691 = !DILocation(line: 948, column: 14, scope: !4687)
!4692 = !DILocation(line: 948, column: 12, scope: !4687)
!4693 = !DILocation(line: 949, column: 8, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4687, file: !2, line: 949, column: 8)
!4695 = !DILocation(line: 949, column: 8, scope: !4687)
!4696 = !DILocation(line: 951, column: 7, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4694, file: !2, line: 949, column: 17)
!4698 = !DILocation(line: 952, column: 7, scope: !4697)
!4699 = !DILocation(line: 952, column: 23, scope: !4697)
!4700 = !DILocation(line: 950, column: 5, scope: !4697)
!4701 = !DILocation(line: 953, column: 10, scope: !4697)
!4702 = !DILocation(line: 953, column: 5, scope: !4697)
!4703 = !DILocation(line: 954, column: 4, scope: !4697)
!4704 = !DILocation(line: 956, column: 15, scope: !4687)
!4705 = !DILocation(line: 956, column: 4, scope: !4687)
!4706 = !DILocation(line: 957, column: 3, scope: !4687)
!4707 = !DILocation(line: 959, column: 8, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4617, file: !2, line: 959, column: 7)
!4709 = !DILocation(line: 959, column: 7, scope: !4617)
!4710 = !DILocation(line: 960, column: 19, scope: !4708)
!4711 = !DILocation(line: 960, column: 4, scope: !4708)
!4712 = !DILocation(line: 962, column: 8, scope: !4617)
!4713 = !DILocation(line: 962, column: 3, scope: !4617)
!4714 = !DILocation(line: 963, column: 2, scope: !4618)
!4715 = !DILocation(line: 963, column: 2, scope: !4617)
!4716 = !DILocation(line: 929, column: 2, scope: !4623)
!4717 = distinct !{!4717, !4658, !4718, !4379, !4380}
!4718 = !DILocation(line: 963, column: 2, scope: !4615)
!4719 = !DILocation(line: 965, column: 11, scope: !4606)
!4720 = !DILocation(line: 965, column: 17, scope: !4606)
!4721 = !DILocation(line: 965, column: 2, scope: !4606)
!4722 = !DILocation(line: 966, column: 13, scope: !4606)
!4723 = !DILocation(line: 966, column: 2, scope: !4606)
!4724 = !DILocation(line: 967, column: 2, scope: !4606)
!4725 = distinct !DISubprogram(name: "kernfs_type", scope: !14, file: !14, line: 337, type: !4726, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4728)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!4023, !12}
!4728 = !{!4729}
!4729 = !DILocalVariable(name: "kn", arg: 1, scope: !4725, file: !14, line: 337, type: !12)
!4730 = !DILocation(line: 337, column: 69, scope: !4725)
!4731 = !DILocation(line: 339, column: 9, scope: !4725)
!4732 = !DILocation(line: 339, column: 13, scope: !4725)
!4733 = !DILocation(line: 339, column: 19, scope: !4725)
!4734 = !DILocation(line: 339, column: 2, scope: !4725)
!4735 = distinct !DISubprogram(name: "atomic_inc", scope: !4272, file: !4272, line: 433, type: !4736, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4739)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{null, !4738}
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!4739 = !{!4740}
!4740 = !DILocalVariable(name: "v", arg: 1, scope: !4735, file: !4272, line: 433, type: !4738)
!4741 = !DILocation(line: 433, column: 22, scope: !4735)
!4742 = !DILocation(line: 435, column: 31, scope: !4735)
!4743 = !DILocation(line: 435, column: 2, scope: !4735)
!4744 = !DILocation(line: 436, column: 17, scope: !4735)
!4745 = !DILocation(line: 436, column: 2, scope: !4735)
!4746 = !DILocation(line: 437, column: 1, scope: !4735)
!4747 = !DISubprogram(name: "__wake_up", scope: !280, file: !280, line: 212, type: !4748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!22, !4750, !41, !22, !110}
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!4751 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !4752, file: !4752, line: 32, type: !4753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4752 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!33, !4755}
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!4756 = distinct !DISubprogram(name: "spinlock_check", scope: !4757, file: !4757, line: 324, type: !4758, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4760)
!4757 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!4755, !3125}
!4760 = !{!4761}
!4761 = !DILocalVariable(name: "lock", arg: 1, scope: !4756, file: !4757, line: 324, type: !3125)
!4762 = !DILocation(line: 324, column: 67, scope: !4756)
!4763 = !DILocation(line: 326, column: 10, scope: !4756)
!4764 = !DILocation(line: 326, column: 16, scope: !4756)
!4765 = !DILocation(line: 326, column: 2, scope: !4756)
!4766 = !DISubprogram(name: "kernfs_get", scope: !14, file: !14, line: 406, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4767 = distinct !DISubprogram(name: "schedule_work", scope: !911, file: !911, line: 621, type: !4768, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4770)
!4768 = !DISubroutineType(types: !4769)
!4769 = !{!795, !920}
!4770 = !{!4771}
!4771 = !DILocalVariable(name: "work", arg: 1, scope: !4767, file: !911, line: 621, type: !920)
!4772 = !DILocation(line: 621, column: 54, scope: !4767)
!4773 = !DILocation(line: 623, column: 20, scope: !4767)
!4774 = !DILocation(line: 623, column: 31, scope: !4767)
!4775 = !DILocation(line: 623, column: 9, scope: !4767)
!4776 = !DILocation(line: 623, column: 2, scope: !4767)
!4777 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4757, file: !4757, line: 404, type: !4778, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4780)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{null, !3125, !33}
!4780 = !{!4781, !4782, !4783, !4786}
!4781 = !DILocalVariable(name: "lock", arg: 1, scope: !4777, file: !4757, line: 404, type: !3125)
!4782 = !DILocalVariable(name: "flags", arg: 2, scope: !4777, file: !4757, line: 404, type: !33)
!4783 = !DILocalVariable(name: "__dummy", scope: !4784, file: !4757, line: 406, type: !33)
!4784 = distinct !DILexicalBlock(scope: !4785, file: !4757, line: 406, column: 2)
!4785 = distinct !DILexicalBlock(scope: !4777, file: !4757, line: 406, column: 2)
!4786 = !DILocalVariable(name: "__dummy2", scope: !4784, file: !4757, line: 406, type: !33)
!4787 = !DILocation(line: 404, column: 64, scope: !4777)
!4788 = !DILocation(line: 404, column: 84, scope: !4777)
!4789 = !DILocation(line: 406, column: 2, scope: !4777)
!4790 = !DILocation(line: 406, column: 2, scope: !4784)
!4791 = !DILocation(line: 406, column: 2, scope: !4785)
!4792 = !DILocation(line: 407, column: 1, scope: !4777)
!4793 = distinct !DISubprogram(name: "kernfs_fop_read_iter", scope: !2, file: !2, line: 276, type: !2795, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4794)
!4794 = !{!4795, !4796}
!4795 = !DILocalVariable(name: "iocb", arg: 1, scope: !4793, file: !2, line: 276, type: !2797)
!4796 = !DILocalVariable(name: "iter", arg: 2, scope: !4793, file: !2, line: 276, type: !2902)
!4797 = !DILocation(line: 276, column: 51, scope: !4793)
!4798 = !DILocation(line: 276, column: 74, scope: !4793)
!4799 = !DILocation(line: 278, column: 16, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4793, file: !2, line: 278, column: 6)
!4801 = !DILocation(line: 278, column: 22, scope: !4800)
!4802 = !DILocation(line: 278, column: 6, scope: !4800)
!4803 = !DILocation(line: 278, column: 32, scope: !4800)
!4804 = !DILocation(line: 278, column: 36, scope: !4800)
!4805 = !DILocation(line: 278, column: 42, scope: !4800)
!4806 = !DILocation(line: 278, column: 6, scope: !4793)
!4807 = !DILocation(line: 279, column: 24, scope: !4800)
!4808 = !DILocation(line: 279, column: 30, scope: !4800)
!4809 = !DILocation(line: 279, column: 10, scope: !4800)
!4810 = !DILocation(line: 279, column: 3, scope: !4800)
!4811 = !DILocation(line: 280, column: 31, scope: !4793)
!4812 = !DILocation(line: 280, column: 37, scope: !4793)
!4813 = !DILocation(line: 280, column: 9, scope: !4793)
!4814 = !DILocation(line: 280, column: 2, scope: !4793)
!4815 = !DILocation(line: 281, column: 1, scope: !4793)
!4816 = distinct !DISubprogram(name: "kernfs_fop_write_iter", scope: !2, file: !2, line: 293, type: !2795, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4817)
!4817 = !{!4818, !4819, !4820, !4821, !4822, !4823, !4824, !4828, !4829}
!4818 = !DILocalVariable(name: "iocb", arg: 1, scope: !4816, file: !2, line: 293, type: !2797)
!4819 = !DILocalVariable(name: "iter", arg: 2, scope: !4816, file: !2, line: 293, type: !2902)
!4820 = !DILocalVariable(name: "of", scope: !4816, file: !2, line: 295, type: !3931)
!4821 = !DILocalVariable(name: "len", scope: !4816, file: !2, line: 296, type: !2115)
!4822 = !DILocalVariable(name: "ops", scope: !4816, file: !2, line: 297, type: !3923)
!4823 = !DILocalVariable(name: "buf", scope: !4816, file: !2, line: 298, type: !130)
!4824 = !DILocalVariable(name: "__UNIQUE_ID___x326", scope: !4825, file: !2, line: 304, type: !132)
!4825 = distinct !DILexicalBlock(scope: !4826, file: !2, line: 304, column: 9)
!4826 = distinct !DILexicalBlock(scope: !4827, file: !2, line: 303, column: 9)
!4827 = distinct !DILexicalBlock(scope: !4816, file: !2, line: 300, column: 6)
!4828 = !DILocalVariable(name: "__UNIQUE_ID___y327", scope: !4825, file: !2, line: 304, type: !132)
!4829 = !DILabel(scope: !4816, name: "out_free", file: !2, line: 344)
!4830 = !DILocation(line: 293, column: 52, scope: !4816)
!4831 = !DILocation(line: 293, column: 75, scope: !4816)
!4832 = !DILocation(line: 295, column: 2, scope: !4816)
!4833 = !DILocation(line: 295, column: 27, scope: !4816)
!4834 = !DILocation(line: 295, column: 42, scope: !4816)
!4835 = !DILocation(line: 295, column: 48, scope: !4816)
!4836 = !DILocation(line: 295, column: 32, scope: !4816)
!4837 = !DILocation(line: 296, column: 2, scope: !4816)
!4838 = !DILocation(line: 296, column: 10, scope: !4816)
!4839 = !DILocation(line: 296, column: 31, scope: !4816)
!4840 = !DILocation(line: 296, column: 16, scope: !4816)
!4841 = !DILocation(line: 297, column: 2, scope: !4816)
!4842 = !DILocation(line: 297, column: 27, scope: !4816)
!4843 = !DILocation(line: 298, column: 2, scope: !4816)
!4844 = !DILocation(line: 298, column: 8, scope: !4816)
!4845 = !DILocation(line: 300, column: 6, scope: !4827)
!4846 = !DILocation(line: 300, column: 10, scope: !4827)
!4847 = !DILocation(line: 300, column: 6, scope: !4816)
!4848 = !DILocation(line: 301, column: 7, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4850, file: !2, line: 301, column: 7)
!4850 = distinct !DILexicalBlock(scope: !4827, file: !2, line: 300, column: 28)
!4851 = !DILocation(line: 301, column: 13, scope: !4849)
!4852 = !DILocation(line: 301, column: 17, scope: !4849)
!4853 = !DILocation(line: 301, column: 11, scope: !4849)
!4854 = !DILocation(line: 301, column: 7, scope: !4850)
!4855 = !DILocation(line: 302, column: 4, scope: !4849)
!4856 = !DILocation(line: 303, column: 2, scope: !4850)
!4857 = !DILocation(line: 304, column: 9, scope: !4825)
!4858 = !DILocation(line: 304, column: 9, scope: !4826)
!4859 = !DILocation(line: 304, column: 7, scope: !4826)
!4860 = !DILocation(line: 307, column: 8, scope: !4816)
!4861 = !DILocation(line: 307, column: 12, scope: !4816)
!4862 = !DILocation(line: 307, column: 6, scope: !4816)
!4863 = !DILocation(line: 308, column: 6, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4816, file: !2, line: 308, column: 6)
!4865 = !DILocation(line: 308, column: 6, scope: !4816)
!4866 = !DILocation(line: 309, column: 15, scope: !4864)
!4867 = !DILocation(line: 309, column: 19, scope: !4864)
!4868 = !DILocation(line: 309, column: 3, scope: !4864)
!4869 = !DILocation(line: 311, column: 17, scope: !4864)
!4870 = !DILocation(line: 311, column: 21, scope: !4864)
!4871 = !DILocation(line: 311, column: 9, scope: !4864)
!4872 = !DILocation(line: 311, column: 7, scope: !4864)
!4873 = !DILocation(line: 312, column: 7, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4816, file: !2, line: 312, column: 6)
!4875 = !DILocation(line: 312, column: 6, scope: !4816)
!4876 = !DILocation(line: 313, column: 3, scope: !4874)
!4877 = !DILocation(line: 315, column: 21, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4816, file: !2, line: 315, column: 6)
!4879 = !DILocation(line: 315, column: 26, scope: !4878)
!4880 = !DILocation(line: 315, column: 31, scope: !4878)
!4881 = !DILocation(line: 315, column: 6, scope: !4878)
!4882 = !DILocation(line: 315, column: 40, scope: !4878)
!4883 = !DILocation(line: 315, column: 37, scope: !4878)
!4884 = !DILocation(line: 315, column: 6, scope: !4816)
!4885 = !DILocation(line: 316, column: 7, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4878, file: !2, line: 315, column: 45)
!4887 = !DILocation(line: 317, column: 3, scope: !4886)
!4888 = !DILocation(line: 319, column: 2, scope: !4816)
!4889 = !DILocation(line: 319, column: 6, scope: !4816)
!4890 = !DILocation(line: 319, column: 11, scope: !4816)
!4891 = !DILocation(line: 325, column: 14, scope: !4816)
!4892 = !DILocation(line: 325, column: 18, scope: !4816)
!4893 = !DILocation(line: 325, column: 2, scope: !4816)
!4894 = !DILocation(line: 326, column: 25, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4816, file: !2, line: 326, column: 6)
!4896 = !DILocation(line: 326, column: 29, scope: !4895)
!4897 = !DILocation(line: 326, column: 7, scope: !4895)
!4898 = !DILocation(line: 326, column: 6, scope: !4816)
!4899 = !DILocation(line: 327, column: 17, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4895, file: !2, line: 326, column: 34)
!4901 = !DILocation(line: 327, column: 21, scope: !4900)
!4902 = !DILocation(line: 327, column: 3, scope: !4900)
!4903 = !DILocation(line: 328, column: 7, scope: !4900)
!4904 = !DILocation(line: 329, column: 3, scope: !4900)
!4905 = !DILocation(line: 332, column: 19, scope: !4816)
!4906 = !DILocation(line: 332, column: 23, scope: !4816)
!4907 = !DILocation(line: 332, column: 8, scope: !4816)
!4908 = !DILocation(line: 332, column: 6, scope: !4816)
!4909 = !DILocation(line: 333, column: 6, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4816, file: !2, line: 333, column: 6)
!4911 = !DILocation(line: 333, column: 11, scope: !4910)
!4912 = !DILocation(line: 333, column: 6, scope: !4816)
!4913 = !DILocation(line: 334, column: 9, scope: !4910)
!4914 = !DILocation(line: 334, column: 14, scope: !4910)
!4915 = !DILocation(line: 334, column: 20, scope: !4910)
!4916 = !DILocation(line: 334, column: 24, scope: !4910)
!4917 = !DILocation(line: 334, column: 29, scope: !4910)
!4918 = !DILocation(line: 334, column: 34, scope: !4910)
!4919 = !DILocation(line: 334, column: 40, scope: !4910)
!4920 = !DILocation(line: 334, column: 7, scope: !4910)
!4921 = !DILocation(line: 334, column: 3, scope: !4910)
!4922 = !DILocation(line: 336, column: 7, scope: !4910)
!4923 = !DILocation(line: 338, column: 20, scope: !4816)
!4924 = !DILocation(line: 338, column: 24, scope: !4816)
!4925 = !DILocation(line: 338, column: 2, scope: !4816)
!4926 = !DILocation(line: 339, column: 16, scope: !4816)
!4927 = !DILocation(line: 339, column: 20, scope: !4816)
!4928 = !DILocation(line: 339, column: 2, scope: !4816)
!4929 = !DILocation(line: 341, column: 6, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4816, file: !2, line: 341, column: 6)
!4931 = !DILocation(line: 341, column: 10, scope: !4930)
!4932 = !DILocation(line: 341, column: 6, scope: !4816)
!4933 = !DILocation(line: 342, column: 19, scope: !4930)
!4934 = !DILocation(line: 342, column: 3, scope: !4930)
!4935 = !DILocation(line: 342, column: 9, scope: !4930)
!4936 = !DILocation(line: 342, column: 16, scope: !4930)
!4937 = !DILocation(line: 341, column: 12, scope: !4930)
!4938 = !DILocation(line: 344, column: 1, scope: !4816)
!4939 = !DILocation(line: 345, column: 6, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4816, file: !2, line: 345, column: 6)
!4941 = !DILocation(line: 345, column: 13, scope: !4940)
!4942 = !DILocation(line: 345, column: 17, scope: !4940)
!4943 = !DILocation(line: 345, column: 10, scope: !4940)
!4944 = !DILocation(line: 345, column: 6, scope: !4816)
!4945 = !DILocation(line: 346, column: 17, scope: !4940)
!4946 = !DILocation(line: 346, column: 21, scope: !4940)
!4947 = !DILocation(line: 346, column: 3, scope: !4940)
!4948 = !DILocation(line: 348, column: 9, scope: !4940)
!4949 = !DILocation(line: 348, column: 3, scope: !4940)
!4950 = !DILocation(line: 349, column: 9, scope: !4816)
!4951 = !DILocation(line: 349, column: 2, scope: !4816)
!4952 = !DILocation(line: 350, column: 1, scope: !4816)
!4953 = distinct !DISubprogram(name: "kernfs_fop_poll", scope: !2, file: !2, line: 890, type: !4954, scopeLine: 891, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !4956)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!2978, !627, !4472}
!4956 = !{!4957, !4958, !4959, !4960, !4961}
!4957 = !DILocalVariable(name: "filp", arg: 1, scope: !4953, file: !2, line: 890, type: !627)
!4958 = !DILocalVariable(name: "wait", arg: 2, scope: !4953, file: !2, line: 890, type: !4472)
!4959 = !DILocalVariable(name: "of", scope: !4953, file: !2, line: 892, type: !3931)
!4960 = !DILocalVariable(name: "kn", scope: !4953, file: !2, line: 893, type: !12)
!4961 = !DILocalVariable(name: "ret", scope: !4953, file: !2, line: 894, type: !2978)
!4962 = !DILocation(line: 890, column: 46, scope: !4953)
!4963 = !DILocation(line: 890, column: 64, scope: !4953)
!4964 = !DILocation(line: 892, column: 2, scope: !4953)
!4965 = !DILocation(line: 892, column: 27, scope: !4953)
!4966 = !DILocation(line: 892, column: 42, scope: !4953)
!4967 = !DILocation(line: 892, column: 32, scope: !4953)
!4968 = !DILocation(line: 893, column: 2, scope: !4953)
!4969 = !DILocation(line: 893, column: 22, scope: !4953)
!4970 = !DILocation(line: 893, column: 46, scope: !4953)
!4971 = !DILocation(line: 893, column: 52, scope: !4953)
!4972 = !DILocation(line: 893, column: 59, scope: !4953)
!4973 = !DILocation(line: 893, column: 27, scope: !4953)
!4974 = !DILocation(line: 894, column: 2, scope: !4953)
!4975 = !DILocation(line: 894, column: 11, scope: !4953)
!4976 = !DILocation(line: 896, column: 25, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4953, file: !2, line: 896, column: 6)
!4978 = !DILocation(line: 896, column: 7, scope: !4977)
!4979 = !DILocation(line: 896, column: 6, scope: !4953)
!4980 = !DILocation(line: 897, column: 3, scope: !4977)
!4981 = !DILocation(line: 899, column: 6, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4953, file: !2, line: 899, column: 6)
!4983 = !DILocation(line: 899, column: 10, scope: !4982)
!4984 = !DILocation(line: 899, column: 15, scope: !4982)
!4985 = !DILocation(line: 899, column: 20, scope: !4982)
!4986 = !DILocation(line: 899, column: 6, scope: !4953)
!4987 = !DILocation(line: 900, column: 9, scope: !4982)
!4988 = !DILocation(line: 900, column: 13, scope: !4982)
!4989 = !DILocation(line: 900, column: 18, scope: !4982)
!4990 = !DILocation(line: 900, column: 23, scope: !4982)
!4991 = !DILocation(line: 900, column: 28, scope: !4982)
!4992 = !DILocation(line: 900, column: 32, scope: !4982)
!4993 = !DILocation(line: 900, column: 7, scope: !4982)
!4994 = !DILocation(line: 900, column: 3, scope: !4982)
!4995 = !DILocation(line: 902, column: 29, scope: !4982)
!4996 = !DILocation(line: 902, column: 33, scope: !4982)
!4997 = !DILocation(line: 902, column: 9, scope: !4982)
!4998 = !DILocation(line: 902, column: 7, scope: !4982)
!4999 = !DILocation(line: 904, column: 20, scope: !4953)
!5000 = !DILocation(line: 904, column: 2, scope: !4953)
!5001 = !DILocation(line: 905, column: 9, scope: !4953)
!5002 = !DILocation(line: 905, column: 2, scope: !4953)
!5003 = !DILocation(line: 906, column: 1, scope: !4953)
!5004 = distinct !DISubprogram(name: "kernfs_fop_mmap", scope: !2, file: !2, line: 488, type: !2997, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5005)
!5005 = !{!5006, !5007, !5008, !5009, !5010, !5011, !5012}
!5006 = !DILocalVariable(name: "file", arg: 1, scope: !5004, file: !2, line: 488, type: !627)
!5007 = !DILocalVariable(name: "vma", arg: 2, scope: !5004, file: !2, line: 488, type: !2999)
!5008 = !DILocalVariable(name: "of", scope: !5004, file: !2, line: 490, type: !3931)
!5009 = !DILocalVariable(name: "ops", scope: !5004, file: !2, line: 491, type: !3923)
!5010 = !DILocalVariable(name: "rc", scope: !5004, file: !2, line: 492, type: !22)
!5011 = !DILabel(scope: !5004, name: "out_put", file: !2, line: 541)
!5012 = !DILabel(scope: !5004, name: "out_unlock", file: !2, line: 543)
!5013 = !DILocation(line: 488, column: 41, scope: !5004)
!5014 = !DILocation(line: 488, column: 70, scope: !5004)
!5015 = !DILocation(line: 490, column: 2, scope: !5004)
!5016 = !DILocation(line: 490, column: 27, scope: !5004)
!5017 = !DILocation(line: 490, column: 42, scope: !5004)
!5018 = !DILocation(line: 490, column: 32, scope: !5004)
!5019 = !DILocation(line: 491, column: 2, scope: !5004)
!5020 = !DILocation(line: 491, column: 27, scope: !5004)
!5021 = !DILocation(line: 492, column: 2, scope: !5004)
!5022 = !DILocation(line: 492, column: 6, scope: !5004)
!5023 = !DILocation(line: 501, column: 8, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5004, file: !2, line: 501, column: 6)
!5025 = !DILocation(line: 501, column: 12, scope: !5024)
!5026 = !DILocation(line: 501, column: 16, scope: !5024)
!5027 = !DILocation(line: 501, column: 22, scope: !5024)
!5028 = !DILocation(line: 501, column: 6, scope: !5004)
!5029 = !DILocation(line: 502, column: 3, scope: !5024)
!5030 = !DILocation(line: 504, column: 14, scope: !5004)
!5031 = !DILocation(line: 504, column: 18, scope: !5004)
!5032 = !DILocation(line: 504, column: 2, scope: !5004)
!5033 = !DILocation(line: 506, column: 5, scope: !5004)
!5034 = !DILocation(line: 507, column: 25, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5004, file: !2, line: 507, column: 6)
!5036 = !DILocation(line: 507, column: 29, scope: !5035)
!5037 = !DILocation(line: 507, column: 7, scope: !5035)
!5038 = !DILocation(line: 507, column: 6, scope: !5004)
!5039 = !DILocation(line: 508, column: 3, scope: !5035)
!5040 = !DILocation(line: 510, column: 19, scope: !5004)
!5041 = !DILocation(line: 510, column: 23, scope: !5004)
!5042 = !DILocation(line: 510, column: 8, scope: !5004)
!5043 = !DILocation(line: 510, column: 6, scope: !5004)
!5044 = !DILocation(line: 511, column: 7, scope: !5004)
!5045 = !DILocation(line: 511, column: 12, scope: !5004)
!5046 = !DILocation(line: 511, column: 17, scope: !5004)
!5047 = !DILocation(line: 511, column: 21, scope: !5004)
!5048 = !DILocation(line: 511, column: 5, scope: !5004)
!5049 = !DILocation(line: 512, column: 6, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5004, file: !2, line: 512, column: 6)
!5051 = !DILocation(line: 512, column: 6, scope: !5004)
!5052 = !DILocation(line: 513, column: 3, scope: !5050)
!5053 = !DILocation(line: 520, column: 6, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5004, file: !2, line: 520, column: 6)
!5055 = !DILocation(line: 520, column: 11, scope: !5054)
!5056 = !DILocation(line: 520, column: 22, scope: !5054)
!5057 = !DILocation(line: 520, column: 19, scope: !5054)
!5058 = !DILocation(line: 520, column: 6, scope: !5004)
!5059 = !DILocation(line: 521, column: 3, scope: !5054)
!5060 = !DILocation(line: 523, column: 5, scope: !5004)
!5061 = !DILocation(line: 524, column: 6, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5004, file: !2, line: 524, column: 6)
!5063 = !DILocation(line: 524, column: 10, scope: !5062)
!5064 = !DILocation(line: 524, column: 18, scope: !5062)
!5065 = !DILocation(line: 524, column: 21, scope: !5062)
!5066 = !DILocation(line: 524, column: 25, scope: !5062)
!5067 = !DILocation(line: 524, column: 35, scope: !5062)
!5068 = !DILocation(line: 524, column: 40, scope: !5062)
!5069 = !DILocation(line: 524, column: 32, scope: !5062)
!5070 = !DILocation(line: 524, column: 6, scope: !5004)
!5071 = !DILocation(line: 525, column: 3, scope: !5062)
!5072 = !DILocation(line: 531, column: 6, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5004, file: !2, line: 531, column: 6)
!5074 = !DILocation(line: 531, column: 11, scope: !5073)
!5075 = !DILocation(line: 531, column: 18, scope: !5073)
!5076 = !DILocation(line: 531, column: 21, scope: !5073)
!5077 = !DILocation(line: 531, column: 26, scope: !5073)
!5078 = !DILocation(line: 531, column: 34, scope: !5073)
!5079 = !DILocation(line: 531, column: 6, scope: !5004)
!5080 = !DILocation(line: 532, column: 3, scope: !5073)
!5081 = !DILocation(line: 534, column: 5, scope: !5004)
!5082 = !DILocation(line: 535, column: 7, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5004, file: !2, line: 535, column: 6)
!5084 = !DILocation(line: 535, column: 11, scope: !5083)
!5085 = !DILocation(line: 535, column: 6, scope: !5004)
!5086 = !DILocation(line: 536, column: 3, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5083, file: !2, line: 535, column: 20)
!5088 = !DILocation(line: 536, column: 7, scope: !5087)
!5089 = !DILocation(line: 536, column: 15, scope: !5087)
!5090 = !DILocation(line: 537, column: 9, scope: !5087)
!5091 = !DILocation(line: 537, column: 3, scope: !5087)
!5092 = !DILocation(line: 537, column: 14, scope: !5087)
!5093 = !DILocation(line: 537, column: 24, scope: !5087)
!5094 = !DILocation(line: 538, column: 16, scope: !5087)
!5095 = !DILocation(line: 538, column: 21, scope: !5087)
!5096 = !DILocation(line: 538, column: 3, scope: !5087)
!5097 = !DILocation(line: 538, column: 7, scope: !5087)
!5098 = !DILocation(line: 538, column: 14, scope: !5087)
!5099 = !DILocation(line: 539, column: 2, scope: !5087)
!5100 = !DILocation(line: 540, column: 2, scope: !5004)
!5101 = !DILocation(line: 540, column: 7, scope: !5004)
!5102 = !DILocation(line: 540, column: 14, scope: !5004)
!5103 = !DILocation(line: 541, column: 1, scope: !5004)
!5104 = !DILocation(line: 542, column: 20, scope: !5004)
!5105 = !DILocation(line: 542, column: 24, scope: !5004)
!5106 = !DILocation(line: 542, column: 2, scope: !5004)
!5107 = !DILocation(line: 543, column: 1, scope: !5004)
!5108 = !DILocation(line: 544, column: 16, scope: !5004)
!5109 = !DILocation(line: 544, column: 20, scope: !5004)
!5110 = !DILocation(line: 544, column: 2, scope: !5004)
!5111 = !DILocation(line: 546, column: 9, scope: !5004)
!5112 = !DILocation(line: 546, column: 2, scope: !5004)
!5113 = !DILocation(line: 547, column: 1, scope: !5004)
!5114 = !DILocation(line: 641, column: 42, scope: !4140)
!5115 = !DILocation(line: 641, column: 62, scope: !4140)
!5116 = !DILocation(line: 643, column: 2, scope: !4140)
!5117 = !DILocation(line: 643, column: 22, scope: !4140)
!5118 = !DILocation(line: 643, column: 27, scope: !4140)
!5119 = !DILocation(line: 643, column: 34, scope: !4140)
!5120 = !DILocation(line: 644, column: 2, scope: !4140)
!5121 = !DILocation(line: 644, column: 22, scope: !4140)
!5122 = !DILocation(line: 644, column: 41, scope: !4140)
!5123 = !DILocation(line: 644, column: 29, scope: !4140)
!5124 = !DILocation(line: 645, column: 2, scope: !4140)
!5125 = !DILocation(line: 645, column: 27, scope: !4140)
!5126 = !DILocation(line: 646, column: 2, scope: !4140)
!5127 = !DILocation(line: 646, column: 27, scope: !4140)
!5128 = !DILocation(line: 647, column: 2, scope: !4140)
!5129 = !DILocation(line: 647, column: 7, scope: !4140)
!5130 = !DILocation(line: 647, column: 17, scope: !4140)
!5131 = !DILocation(line: 647, column: 28, scope: !4140)
!5132 = !DILocation(line: 648, column: 2, scope: !4140)
!5133 = !DILocation(line: 648, column: 6, scope: !4140)
!5134 = !DILocation(line: 650, column: 25, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !4140, file: !2, line: 650, column: 6)
!5136 = !DILocation(line: 650, column: 7, scope: !5135)
!5137 = !DILocation(line: 650, column: 6, scope: !4140)
!5138 = !DILocation(line: 651, column: 3, scope: !5135)
!5139 = !DILocation(line: 653, column: 19, scope: !4140)
!5140 = !DILocation(line: 653, column: 8, scope: !4140)
!5141 = !DILocation(line: 653, column: 6, scope: !4140)
!5142 = !DILocation(line: 655, column: 13, scope: !4140)
!5143 = !DILocation(line: 655, column: 18, scope: !4140)
!5144 = !DILocation(line: 655, column: 27, scope: !4140)
!5145 = !DILocation(line: 655, column: 30, scope: !4140)
!5146 = !DILocation(line: 655, column: 35, scope: !4140)
!5147 = !DILocation(line: 655, column: 40, scope: !4140)
!5148 = !DILocation(line: 655, column: 43, scope: !4140)
!5149 = !DILocation(line: 655, column: 48, scope: !4140)
!5150 = !DILocation(line: 655, column: 11, scope: !4140)
!5151 = !DILocation(line: 656, column: 14, scope: !4140)
!5152 = !DILocation(line: 656, column: 19, scope: !4140)
!5153 = !DILocation(line: 656, column: 25, scope: !4140)
!5154 = !DILocation(line: 656, column: 28, scope: !4140)
!5155 = !DILocation(line: 656, column: 33, scope: !4140)
!5156 = !DILocation(line: 656, column: 12, scope: !4140)
!5157 = !DILocation(line: 657, column: 13, scope: !4140)
!5158 = !DILocation(line: 657, column: 18, scope: !4140)
!5159 = !DILocation(line: 657, column: 11, scope: !4140)
!5160 = !DILocation(line: 660, column: 6, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !4140, file: !2, line: 660, column: 6)
!5162 = !DILocation(line: 660, column: 12, scope: !5161)
!5163 = !DILocation(line: 660, column: 18, scope: !5161)
!5164 = !DILocation(line: 660, column: 6, scope: !4140)
!5165 = !DILocation(line: 661, column: 8, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5167, file: !2, line: 661, column: 7)
!5167 = distinct !DILexicalBlock(scope: !5161, file: !2, line: 660, column: 55)
!5168 = !DILocation(line: 661, column: 14, scope: !5166)
!5169 = !DILocation(line: 661, column: 21, scope: !5166)
!5170 = !DILocation(line: 661, column: 36, scope: !5166)
!5171 = !DILocation(line: 662, column: 10, scope: !5166)
!5172 = !DILocation(line: 662, column: 17, scope: !5166)
!5173 = !DILocation(line: 662, column: 24, scope: !5166)
!5174 = !DILocation(line: 662, column: 35, scope: !5166)
!5175 = !DILocation(line: 662, column: 39, scope: !5166)
!5176 = !DILocation(line: 661, column: 7, scope: !5167)
!5177 = !DILocation(line: 663, column: 4, scope: !5166)
!5178 = !DILocation(line: 665, column: 8, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5167, file: !2, line: 665, column: 7)
!5180 = !DILocation(line: 665, column: 14, scope: !5179)
!5181 = !DILocation(line: 665, column: 21, scope: !5179)
!5182 = !DILocation(line: 665, column: 35, scope: !5179)
!5183 = !DILocation(line: 666, column: 10, scope: !5179)
!5184 = !DILocation(line: 666, column: 17, scope: !5179)
!5185 = !DILocation(line: 666, column: 24, scope: !5179)
!5186 = !DILocation(line: 666, column: 35, scope: !5179)
!5187 = !DILocation(line: 666, column: 39, scope: !5179)
!5188 = !DILocation(line: 665, column: 7, scope: !5167)
!5189 = !DILocation(line: 667, column: 4, scope: !5179)
!5190 = !DILocation(line: 668, column: 2, scope: !5167)
!5191 = !DILocation(line: 671, column: 8, scope: !4140)
!5192 = !DILocation(line: 672, column: 7, scope: !4140)
!5193 = !DILocation(line: 672, column: 5, scope: !4140)
!5194 = !DILocation(line: 673, column: 7, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !4140, file: !2, line: 673, column: 6)
!5196 = !DILocation(line: 673, column: 6, scope: !4140)
!5197 = !DILocation(line: 674, column: 3, scope: !5195)
!5198 = !DILocation(line: 691, column: 6, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !4140, file: !2, line: 691, column: 6)
!5200 = !DILocation(line: 691, column: 6, scope: !4140)
!5201 = !DILocation(line: 692, column: 3, scope: !5199)
!5202 = !DILocation(line: 692, column: 3, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5199, file: !2, line: 692, column: 3)
!5204 = !DILocation(line: 694, column: 3, scope: !5199)
!5205 = !DILocation(line: 694, column: 3, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5199, file: !2, line: 694, column: 3)
!5207 = !DILocation(line: 696, column: 11, scope: !4140)
!5208 = !DILocation(line: 696, column: 2, scope: !4140)
!5209 = !DILocation(line: 696, column: 6, scope: !4140)
!5210 = !DILocation(line: 696, column: 9, scope: !4140)
!5211 = !DILocation(line: 697, column: 13, scope: !4140)
!5212 = !DILocation(line: 697, column: 2, scope: !4140)
!5213 = !DILocation(line: 697, column: 6, scope: !4140)
!5214 = !DILocation(line: 697, column: 11, scope: !4140)
!5215 = !DILocation(line: 703, column: 25, scope: !4140)
!5216 = !DILocation(line: 703, column: 30, scope: !4140)
!5217 = !DILocation(line: 703, column: 2, scope: !4140)
!5218 = !DILocation(line: 703, column: 6, scope: !4140)
!5219 = !DILocation(line: 703, column: 23, scope: !4140)
!5220 = !DILocation(line: 705, column: 8, scope: !4140)
!5221 = !DILocation(line: 711, column: 6, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !4140, file: !2, line: 711, column: 6)
!5223 = !DILocation(line: 711, column: 11, scope: !5222)
!5224 = !DILocation(line: 711, column: 20, scope: !5222)
!5225 = !DILocation(line: 711, column: 23, scope: !5222)
!5226 = !DILocation(line: 711, column: 28, scope: !5222)
!5227 = !DILocation(line: 711, column: 6, scope: !4140)
!5228 = !DILocation(line: 712, column: 3, scope: !5222)
!5229 = !DILocation(line: 713, column: 6, scope: !4154)
!5230 = !DILocation(line: 713, column: 11, scope: !4154)
!5231 = !DILocation(line: 713, column: 6, scope: !4140)
!5232 = !DILocation(line: 714, column: 3, scope: !4153)
!5233 = !DILocation(line: 714, column: 7, scope: !4153)
!5234 = !DILocation(line: 714, column: 13, scope: !4153)
!5235 = !DILocation(line: 714, column: 17, scope: !4153)
!5236 = !DILocation(line: 715, column: 30, scope: !4153)
!5237 = !DILocation(line: 715, column: 34, scope: !4153)
!5238 = !DILocation(line: 715, column: 22, scope: !4153)
!5239 = !DILocation(line: 715, column: 3, scope: !4153)
!5240 = !DILocation(line: 715, column: 7, scope: !4153)
!5241 = !DILocation(line: 715, column: 20, scope: !4153)
!5242 = !DILocation(line: 716, column: 9, scope: !4153)
!5243 = !DILocation(line: 717, column: 8, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !4153, file: !2, line: 717, column: 7)
!5245 = !DILocation(line: 717, column: 12, scope: !5244)
!5246 = !DILocation(line: 717, column: 7, scope: !4153)
!5247 = !DILocation(line: 718, column: 4, scope: !5244)
!5248 = !DILocation(line: 719, column: 3, scope: !4153)
!5249 = !DILocation(line: 719, column: 3, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !4153, file: !2, line: 719, column: 3)
!5251 = !DILocation(line: 720, column: 2, scope: !4154)
!5252 = !DILocation(line: 720, column: 2, scope: !4153)
!5253 = !DILocation(line: 727, column: 6, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !4140, file: !2, line: 727, column: 6)
!5255 = !DILocation(line: 727, column: 11, scope: !5254)
!5256 = !DILocation(line: 727, column: 6, scope: !4140)
!5257 = !DILocation(line: 728, column: 20, scope: !5254)
!5258 = !DILocation(line: 728, column: 11, scope: !5254)
!5259 = !DILocation(line: 728, column: 9, scope: !5254)
!5260 = !DILocation(line: 728, column: 3, scope: !5254)
!5261 = !DILocation(line: 730, column: 20, scope: !5254)
!5262 = !DILocation(line: 730, column: 11, scope: !5254)
!5263 = !DILocation(line: 730, column: 9, scope: !5254)
!5264 = !DILocation(line: 731, column: 6, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !4140, file: !2, line: 731, column: 6)
!5266 = !DILocation(line: 731, column: 6, scope: !4140)
!5267 = !DILocation(line: 732, column: 3, scope: !5265)
!5268 = !DILocation(line: 734, column: 17, scope: !4140)
!5269 = !DILocation(line: 734, column: 23, scope: !4140)
!5270 = !DILocation(line: 734, column: 2, scope: !4140)
!5271 = !DILocation(line: 734, column: 6, scope: !4140)
!5272 = !DILocation(line: 734, column: 15, scope: !4140)
!5273 = !DILocation(line: 735, column: 26, scope: !4140)
!5274 = !DILocation(line: 735, column: 2, scope: !4140)
!5275 = !DILocation(line: 735, column: 6, scope: !4140)
!5276 = !DILocation(line: 735, column: 16, scope: !4140)
!5277 = !DILocation(line: 735, column: 24, scope: !4140)
!5278 = !DILocation(line: 738, column: 6, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !4140, file: !2, line: 738, column: 6)
!5280 = !DILocation(line: 738, column: 12, scope: !5279)
!5281 = !DILocation(line: 738, column: 19, scope: !5279)
!5282 = !DILocation(line: 738, column: 6, scope: !4140)
!5283 = !DILocation(line: 739, column: 3, scope: !5279)
!5284 = !DILocation(line: 739, column: 9, scope: !5279)
!5285 = !DILocation(line: 739, column: 16, scope: !5279)
!5286 = !DILocation(line: 742, column: 31, scope: !4140)
!5287 = !DILocation(line: 742, column: 35, scope: !4140)
!5288 = !DILocation(line: 742, column: 10, scope: !4140)
!5289 = !DILocation(line: 742, column: 8, scope: !4140)
!5290 = !DILocation(line: 743, column: 6, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !4140, file: !2, line: 743, column: 6)
!5292 = !DILocation(line: 743, column: 6, scope: !4140)
!5293 = !DILocation(line: 744, column: 3, scope: !5291)
!5294 = !DILocation(line: 746, column: 6, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !4140, file: !2, line: 746, column: 6)
!5296 = !DILocation(line: 746, column: 11, scope: !5295)
!5297 = !DILocation(line: 746, column: 6, scope: !4140)
!5298 = !DILocation(line: 748, column: 11, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5295, file: !2, line: 746, column: 17)
!5300 = !DILocation(line: 748, column: 16, scope: !5299)
!5301 = !DILocation(line: 748, column: 21, scope: !5299)
!5302 = !DILocation(line: 748, column: 9, scope: !5299)
!5303 = !DILocation(line: 749, column: 7, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5299, file: !2, line: 749, column: 7)
!5305 = !DILocation(line: 749, column: 7, scope: !5299)
!5306 = !DILocation(line: 750, column: 4, scope: !5304)
!5307 = !DILocation(line: 751, column: 2, scope: !5299)
!5308 = !DILocation(line: 754, column: 20, scope: !4140)
!5309 = !DILocation(line: 754, column: 2, scope: !4140)
!5310 = !DILocation(line: 755, column: 2, scope: !4140)
!5311 = !DILocation(line: 757, column: 1, scope: !4140)
!5312 = !DILocation(line: 758, column: 26, scope: !4140)
!5313 = !DILocation(line: 758, column: 30, scope: !4140)
!5314 = !DILocation(line: 758, column: 2, scope: !4140)
!5315 = !DILocation(line: 759, column: 1, scope: !4140)
!5316 = !DILocation(line: 760, column: 14, scope: !4140)
!5317 = !DILocation(line: 760, column: 21, scope: !4140)
!5318 = !DILocation(line: 760, column: 2, scope: !4140)
!5319 = !DILocation(line: 761, column: 1, scope: !4140)
!5320 = !DILocation(line: 762, column: 8, scope: !4140)
!5321 = !DILocation(line: 762, column: 12, scope: !4140)
!5322 = !DILocation(line: 762, column: 2, scope: !4140)
!5323 = !DILocation(line: 763, column: 8, scope: !4140)
!5324 = !DILocation(line: 763, column: 2, scope: !4140)
!5325 = !DILocation(line: 764, column: 1, scope: !4140)
!5326 = !DILocation(line: 765, column: 20, scope: !4140)
!5327 = !DILocation(line: 765, column: 2, scope: !4140)
!5328 = !DILocation(line: 766, column: 9, scope: !4140)
!5329 = !DILocation(line: 766, column: 2, scope: !4140)
!5330 = !DILocation(line: 767, column: 1, scope: !4140)
!5331 = distinct !DISubprogram(name: "kernfs_fop_release", scope: !2, file: !2, line: 794, type: !3172, scopeLine: 795, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5332)
!5332 = !{!5333, !5334, !5335, !5336, !5337}
!5333 = !DILocalVariable(name: "inode", arg: 1, scope: !5331, file: !2, line: 794, type: !1763)
!5334 = !DILocalVariable(name: "filp", arg: 2, scope: !5331, file: !2, line: 794, type: !627)
!5335 = !DILocalVariable(name: "kn", scope: !5331, file: !2, line: 796, type: !12)
!5336 = !DILocalVariable(name: "of", scope: !5331, file: !2, line: 797, type: !3931)
!5337 = !DILocalVariable(name: "mutex", scope: !5338, file: !2, line: 800, type: !4183)
!5338 = distinct !DILexicalBlock(scope: !5339, file: !2, line: 799, column: 38)
!5339 = distinct !DILexicalBlock(scope: !5331, file: !2, line: 799, column: 6)
!5340 = !DILocation(line: 794, column: 45, scope: !5331)
!5341 = !DILocation(line: 794, column: 65, scope: !5331)
!5342 = !DILocation(line: 796, column: 2, scope: !5331)
!5343 = !DILocation(line: 796, column: 22, scope: !5331)
!5344 = !DILocation(line: 796, column: 27, scope: !5331)
!5345 = !DILocation(line: 796, column: 34, scope: !5331)
!5346 = !DILocation(line: 797, column: 2, scope: !5331)
!5347 = !DILocation(line: 797, column: 27, scope: !5331)
!5348 = !DILocation(line: 797, column: 42, scope: !5331)
!5349 = !DILocation(line: 797, column: 32, scope: !5331)
!5350 = !DILocation(line: 799, column: 6, scope: !5339)
!5351 = !DILocation(line: 799, column: 10, scope: !5339)
!5352 = !DILocation(line: 799, column: 16, scope: !5339)
!5353 = !DILocation(line: 799, column: 6, scope: !5331)
!5354 = !DILocation(line: 800, column: 3, scope: !5338)
!5355 = !DILocation(line: 800, column: 17, scope: !5338)
!5356 = !DILocation(line: 802, column: 39, scope: !5338)
!5357 = !DILocation(line: 802, column: 11, scope: !5338)
!5358 = !DILocation(line: 802, column: 9, scope: !5338)
!5359 = !DILocation(line: 803, column: 23, scope: !5338)
!5360 = !DILocation(line: 803, column: 27, scope: !5338)
!5361 = !DILocation(line: 803, column: 3, scope: !5338)
!5362 = !DILocation(line: 804, column: 16, scope: !5338)
!5363 = !DILocation(line: 804, column: 3, scope: !5338)
!5364 = !DILocation(line: 805, column: 2, scope: !5339)
!5365 = !DILocation(line: 805, column: 2, scope: !5338)
!5366 = !DILocation(line: 807, column: 26, scope: !5331)
!5367 = !DILocation(line: 807, column: 30, scope: !5331)
!5368 = !DILocation(line: 807, column: 2, scope: !5331)
!5369 = !DILocation(line: 808, column: 14, scope: !5331)
!5370 = !DILocation(line: 808, column: 21, scope: !5331)
!5371 = !DILocation(line: 808, column: 2, scope: !5331)
!5372 = !DILocation(line: 809, column: 8, scope: !5331)
!5373 = !DILocation(line: 809, column: 12, scope: !5331)
!5374 = !DILocation(line: 809, column: 2, scope: !5331)
!5375 = !DILocation(line: 810, column: 8, scope: !5331)
!5376 = !DILocation(line: 810, column: 2, scope: !5331)
!5377 = !DILocation(line: 813, column: 1, scope: !5331)
!5378 = !DILocation(line: 812, column: 2, scope: !5331)
!5379 = distinct !DISubprogram(name: "__kernfs_create_file", scope: !2, file: !2, line: 1035, type: !5380, scopeLine: 1042, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5383)
!5380 = !DISubroutineType(types: !5381)
!5381 = !{!12, !12, !26, !950, !768, !776, !140, !3923, !110, !38, !5382}
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!5383 = !{!5384, !5385, !5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5394, !5395, !5396}
!5384 = !DILocalVariable(name: "parent", arg: 1, scope: !5379, file: !2, line: 1035, type: !12)
!5385 = !DILocalVariable(name: "name", arg: 2, scope: !5379, file: !2, line: 1036, type: !26)
!5386 = !DILocalVariable(name: "mode", arg: 3, scope: !5379, file: !2, line: 1037, type: !950)
!5387 = !DILocalVariable(name: "uid", arg: 4, scope: !5379, file: !2, line: 1037, type: !768)
!5388 = !DILocalVariable(name: "gid", arg: 5, scope: !5379, file: !2, line: 1037, type: !776)
!5389 = !DILocalVariable(name: "size", arg: 6, scope: !5379, file: !2, line: 1038, type: !140)
!5390 = !DILocalVariable(name: "ops", arg: 7, scope: !5379, file: !2, line: 1039, type: !3923)
!5391 = !DILocalVariable(name: "priv", arg: 8, scope: !5379, file: !2, line: 1040, type: !110)
!5392 = !DILocalVariable(name: "ns", arg: 9, scope: !5379, file: !2, line: 1040, type: !38)
!5393 = !DILocalVariable(name: "key", arg: 10, scope: !5379, file: !2, line: 1041, type: !5382)
!5394 = !DILocalVariable(name: "kn", scope: !5379, file: !2, line: 1043, type: !12)
!5395 = !DILocalVariable(name: "flags", scope: !5379, file: !2, line: 1044, type: !41)
!5396 = !DILocalVariable(name: "rc", scope: !5379, file: !2, line: 1045, type: !22)
!5397 = !DILocation(line: 1035, column: 62, scope: !5379)
!5398 = !DILocation(line: 1036, column: 19, scope: !5379)
!5399 = !DILocation(line: 1037, column: 15, scope: !5379)
!5400 = !DILocation(line: 1037, column: 28, scope: !5379)
!5401 = !DILocation(line: 1037, column: 40, scope: !5379)
!5402 = !DILocation(line: 1038, column: 14, scope: !5379)
!5403 = !DILocation(line: 1039, column: 32, scope: !5379)
!5404 = !DILocation(line: 1040, column: 13, scope: !5379)
!5405 = !DILocation(line: 1040, column: 31, scope: !5379)
!5406 = !DILocation(line: 1041, column: 30, scope: !5379)
!5407 = !DILocation(line: 1043, column: 2, scope: !5379)
!5408 = !DILocation(line: 1043, column: 22, scope: !5379)
!5409 = !DILocation(line: 1044, column: 2, scope: !5379)
!5410 = !DILocation(line: 1044, column: 11, scope: !5379)
!5411 = !DILocation(line: 1045, column: 2, scope: !5379)
!5412 = !DILocation(line: 1045, column: 6, scope: !5379)
!5413 = !DILocation(line: 1047, column: 8, scope: !5379)
!5414 = !DILocation(line: 1049, column: 23, scope: !5379)
!5415 = !DILocation(line: 1049, column: 31, scope: !5379)
!5416 = !DILocation(line: 1049, column: 38, scope: !5379)
!5417 = !DILocation(line: 1049, column: 43, scope: !5379)
!5418 = !DILocation(line: 1049, column: 56, scope: !5379)
!5419 = !DILocation(line: 1049, column: 37, scope: !5379)
!5420 = !DILocation(line: 1050, column: 19, scope: !5379)
!5421 = !DILocation(line: 1049, column: 7, scope: !5379)
!5422 = !DILocation(line: 1049, column: 5, scope: !5379)
!5423 = !DILocation(line: 1051, column: 7, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5379, file: !2, line: 1051, column: 6)
!5425 = !DILocation(line: 1051, column: 6, scope: !5379)
!5426 = !DILocation(line: 1052, column: 10, scope: !5424)
!5427 = !DILocation(line: 1052, column: 3, scope: !5424)
!5428 = !DILocation(line: 1054, column: 17, scope: !5379)
!5429 = !DILocation(line: 1054, column: 2, scope: !5379)
!5430 = !DILocation(line: 1054, column: 6, scope: !5379)
!5431 = !DILocation(line: 1054, column: 11, scope: !5379)
!5432 = !DILocation(line: 1054, column: 15, scope: !5379)
!5433 = !DILocation(line: 1055, column: 18, scope: !5379)
!5434 = !DILocation(line: 1055, column: 2, scope: !5379)
!5435 = !DILocation(line: 1055, column: 6, scope: !5379)
!5436 = !DILocation(line: 1055, column: 11, scope: !5379)
!5437 = !DILocation(line: 1055, column: 16, scope: !5379)
!5438 = !DILocation(line: 1056, column: 11, scope: !5379)
!5439 = !DILocation(line: 1056, column: 2, scope: !5379)
!5440 = !DILocation(line: 1056, column: 6, scope: !5379)
!5441 = !DILocation(line: 1056, column: 9, scope: !5379)
!5442 = !DILocation(line: 1057, column: 13, scope: !5379)
!5443 = !DILocation(line: 1057, column: 2, scope: !5379)
!5444 = !DILocation(line: 1057, column: 6, scope: !5379)
!5445 = !DILocation(line: 1057, column: 11, scope: !5379)
!5446 = !DILocation(line: 1071, column: 6, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5379, file: !2, line: 1071, column: 6)
!5448 = !DILocation(line: 1071, column: 11, scope: !5447)
!5449 = !DILocation(line: 1071, column: 6, scope: !5379)
!5450 = !DILocation(line: 1072, column: 3, scope: !5447)
!5451 = !DILocation(line: 1072, column: 7, scope: !5447)
!5452 = !DILocation(line: 1072, column: 13, scope: !5447)
!5453 = !DILocation(line: 1073, column: 6, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5379, file: !2, line: 1073, column: 6)
!5455 = !DILocation(line: 1073, column: 11, scope: !5454)
!5456 = !DILocation(line: 1073, column: 6, scope: !5379)
!5457 = !DILocation(line: 1074, column: 3, scope: !5454)
!5458 = !DILocation(line: 1074, column: 7, scope: !5454)
!5459 = !DILocation(line: 1074, column: 13, scope: !5454)
!5460 = !DILocation(line: 1075, column: 6, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5379, file: !2, line: 1075, column: 6)
!5462 = !DILocation(line: 1075, column: 11, scope: !5461)
!5463 = !DILocation(line: 1075, column: 6, scope: !5379)
!5464 = !DILocation(line: 1076, column: 3, scope: !5461)
!5465 = !DILocation(line: 1076, column: 7, scope: !5461)
!5466 = !DILocation(line: 1076, column: 13, scope: !5461)
!5467 = !DILocation(line: 1078, column: 22, scope: !5379)
!5468 = !DILocation(line: 1078, column: 7, scope: !5379)
!5469 = !DILocation(line: 1078, column: 5, scope: !5379)
!5470 = !DILocation(line: 1079, column: 6, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5379, file: !2, line: 1079, column: 6)
!5472 = !DILocation(line: 1079, column: 6, scope: !5379)
!5473 = !DILocation(line: 1080, column: 14, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5471, file: !2, line: 1079, column: 10)
!5475 = !DILocation(line: 1080, column: 3, scope: !5474)
!5476 = !DILocation(line: 1081, column: 18, scope: !5474)
!5477 = !DILocation(line: 1081, column: 10, scope: !5474)
!5478 = !DILocation(line: 1081, column: 3, scope: !5474)
!5479 = !DILocation(line: 1083, column: 9, scope: !5379)
!5480 = !DILocation(line: 1083, column: 2, scope: !5379)
!5481 = !DILocation(line: 1084, column: 1, scope: !5379)
!5482 = !DISubprogram(name: "kernfs_new_node", scope: !56, file: !56, line: 154, type: !5483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5483 = !DISubroutineType(types: !5484)
!5484 = !{!12, !12, !26, !950, !768, !776, !41}
!5485 = distinct !DISubprogram(name: "ERR_PTR", scope: !5486, file: !5486, line: 39, type: !5487, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5489)
!5486 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5487 = !DISubroutineType(types: !5488)
!5488 = !{!110, !1036}
!5489 = !{!5490}
!5490 = !DILocalVariable(name: "error", arg: 1, scope: !5485, file: !5486, line: 39, type: !1036)
!5491 = !DILocation(line: 39, column: 48, scope: !5485)
!5492 = !DILocation(line: 41, column: 18, scope: !5485)
!5493 = !DILocation(line: 41, column: 9, scope: !5485)
!5494 = !DILocation(line: 41, column: 2, scope: !5485)
!5495 = !DISubprogram(name: "kernfs_add_one", scope: !56, file: !56, line: 153, type: !3898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5496 = !DISubprogram(name: "kernfs_put", scope: !14, file: !14, line: 407, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5497 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5498, file: !5498, line: 66, type: !5499, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5504)
!5498 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5499 = !DISubroutineType(types: !5500)
!5500 = !{null, !5501, !132}
!5501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5502, size: 64)
!5502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5503)
!5503 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5504 = !{!5505, !5506}
!5505 = !DILocalVariable(name: "v", arg: 1, scope: !5497, file: !5498, line: 66, type: !5501)
!5506 = !DILocalVariable(name: "size", arg: 2, scope: !5497, file: !5498, line: 66, type: !132)
!5507 = !DILocation(line: 66, column: 73, scope: !5497)
!5508 = !DILocation(line: 66, column: 83, scope: !5497)
!5509 = !DILocation(line: 68, column: 19, scope: !5497)
!5510 = !DILocation(line: 68, column: 22, scope: !5497)
!5511 = !DILocation(line: 68, column: 2, scope: !5497)
!5512 = !DILocation(line: 69, column: 2, scope: !5497)
!5513 = !DILocation(line: 70, column: 1, scope: !5497)
!5514 = distinct !DISubprogram(name: "raw_atomic_read", scope: !5515, file: !5515, line: 442, type: !4273, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5516)
!5515 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5516 = !{!5517}
!5517 = !DILocalVariable(name: "v", arg: 1, scope: !5514, file: !5515, line: 442, type: !4275)
!5518 = !DILocation(line: 442, column: 33, scope: !5514)
!5519 = !DILocation(line: 444, column: 26, scope: !5514)
!5520 = !DILocation(line: 444, column: 9, scope: !5514)
!5521 = !DILocation(line: 444, column: 2, scope: !5514)
!5522 = distinct !DISubprogram(name: "kasan_check_read", scope: !5523, file: !5523, line: 40, type: !5524, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5526)
!5523 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5524 = !DISubroutineType(types: !5525)
!5525 = !{!795, !5501, !41}
!5526 = !{!5527, !5528}
!5527 = !DILocalVariable(name: "p", arg: 1, scope: !5522, file: !5523, line: 40, type: !5501)
!5528 = !DILocalVariable(name: "size", arg: 2, scope: !5522, file: !5523, line: 40, type: !41)
!5529 = !DILocation(line: 40, column: 58, scope: !5522)
!5530 = !DILocation(line: 40, column: 74, scope: !5522)
!5531 = !DILocation(line: 42, column: 2, scope: !5522)
!5532 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5533, file: !5533, line: 229, type: !5534, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5536)
!5533 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5534 = !DISubroutineType(types: !5535)
!5535 = !{null, !5501, !132, !22}
!5536 = !{!5537, !5538, !5539}
!5537 = !DILocalVariable(name: "ptr", arg: 1, scope: !5532, file: !5533, line: 229, type: !5501)
!5538 = !DILocalVariable(name: "size", arg: 2, scope: !5532, file: !5533, line: 229, type: !132)
!5539 = !DILocalVariable(name: "type", arg: 3, scope: !5532, file: !5533, line: 230, type: !22)
!5540 = !DILocation(line: 229, column: 60, scope: !5532)
!5541 = !DILocation(line: 229, column: 72, scope: !5532)
!5542 = !DILocation(line: 230, column: 15, scope: !5532)
!5543 = !DILocation(line: 230, column: 23, scope: !5532)
!5544 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5545, file: !5545, line: 17, type: !4273, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5546)
!5545 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5546 = !{!5547}
!5547 = !DILocalVariable(name: "v", arg: 1, scope: !5544, file: !5545, line: 17, type: !4275)
!5548 = !DILocation(line: 17, column: 61, scope: !5544)
!5549 = !DILocation(line: 23, column: 9, scope: !5544)
!5550 = !DILocation(line: 23, column: 2, scope: !5544)
!5551 = !DISubprogram(name: "__rcu_read_lock", scope: !4286, file: !4286, line: 74, type: !1501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5552 = !DISubprogram(name: "__rcu_read_unlock", scope: !4286, file: !4286, line: 75, type: !1501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5553 = distinct !DISubprogram(name: "kernfs_open_file_mutex_ptr", scope: !2, file: !2, line: 43, type: !4396, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5554)
!5554 = !{!5555, !5556}
!5555 = !DILocalVariable(name: "kn", arg: 1, scope: !5553, file: !2, line: 43, type: !12)
!5556 = !DILocalVariable(name: "idx", scope: !5553, file: !2, line: 45, type: !22)
!5557 = !DILocation(line: 43, column: 76, scope: !5553)
!5558 = !DILocation(line: 45, column: 2, scope: !5553)
!5559 = !DILocation(line: 45, column: 6, scope: !5553)
!5560 = !DILocation(line: 45, column: 21, scope: !5553)
!5561 = !DILocation(line: 45, column: 12, scope: !5553)
!5562 = !DILocation(line: 47, column: 10, scope: !5553)
!5563 = !DILocation(line: 47, column: 24, scope: !5553)
!5564 = !DILocation(line: 47, column: 40, scope: !5553)
!5565 = !DILocation(line: 48, column: 1, scope: !5553)
!5566 = !DILocation(line: 47, column: 2, scope: !5553)
!5567 = !DISubprogram(name: "mutex_lock", scope: !146, file: !146, line: 227, type: !4424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5568 = distinct !DISubprogram(name: "hash_ptr", scope: !5569, file: !5569, line: 85, type: !5570, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5572)
!5569 = !DIFile(filename: "./include/linux/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "38c20be4852b6978c0a05b86a66f0046")
!5570 = !DISubroutineType(types: !5571)
!5571 = !{!114, !38, !41}
!5572 = !{!5573, !5574}
!5573 = !DILocalVariable(name: "ptr", arg: 1, scope: !5568, file: !5569, line: 85, type: !38)
!5574 = !DILocalVariable(name: "bits", arg: 2, scope: !5568, file: !5569, line: 85, type: !41)
!5575 = !DILocation(line: 85, column: 40, scope: !5568)
!5576 = !DILocation(line: 85, column: 58, scope: !5568)
!5577 = !DILocation(line: 87, column: 9, scope: !5568)
!5578 = !DILocation(line: 87, column: 2, scope: !5568)
!5579 = distinct !DISubprogram(name: "hash_64_generic", scope: !5569, file: !5569, line: 74, type: !5580, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5582)
!5580 = !DISubroutineType(types: !5581)
!5581 = !{!114, !350, !41}
!5582 = !{!5583, !5584}
!5583 = !DILocalVariable(name: "val", arg: 1, scope: !5579, file: !5569, line: 74, type: !350)
!5584 = !DILocalVariable(name: "bits", arg: 2, scope: !5579, file: !5569, line: 74, type: !41)
!5585 = !DILocation(line: 74, column: 48, scope: !5579)
!5586 = !DILocation(line: 74, column: 66, scope: !5579)
!5587 = !DILocation(line: 78, column: 9, scope: !5579)
!5588 = !DILocation(line: 78, column: 13, scope: !5579)
!5589 = !DILocation(line: 78, column: 40, scope: !5579)
!5590 = !DILocation(line: 78, column: 38, scope: !5579)
!5591 = !DILocation(line: 78, column: 31, scope: !5579)
!5592 = !DILocation(line: 78, column: 2, scope: !5579)
!5593 = distinct !DISubprogram(name: "spin_lock_irq", scope: !4757, file: !4757, line: 374, type: !5594, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5596)
!5594 = !DISubroutineType(types: !5595)
!5595 = !{null, !3125}
!5596 = !{!5597}
!5597 = !DILocalVariable(name: "lock", arg: 1, scope: !5593, file: !4757, line: 374, type: !3125)
!5598 = !DILocation(line: 374, column: 55, scope: !5593)
!5599 = !DILocation(line: 376, column: 2, scope: !5593)
!5600 = !DILocation(line: 377, column: 1, scope: !5593)
!5601 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !4757, file: !4757, line: 399, type: !5594, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5602)
!5602 = !{!5603}
!5603 = !DILocalVariable(name: "lock", arg: 1, scope: !5601, file: !4757, line: 399, type: !3125)
!5604 = !DILocation(line: 399, column: 57, scope: !5601)
!5605 = !DILocation(line: 401, column: 2, scope: !5601)
!5606 = !DILocation(line: 402, column: 1, scope: !5601)
!5607 = distinct !DISubprogram(name: "kernfs_root", scope: !56, file: !56, line: 67, type: !5608, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5610)
!5608 = !DISubroutineType(types: !5609)
!5609 = !{!54, !12}
!5610 = !{!5611}
!5611 = !DILocalVariable(name: "kn", arg: 1, scope: !5607, file: !56, line: 67, type: !12)
!5612 = !DILocation(line: 67, column: 67, scope: !5607)
!5613 = !DILocation(line: 70, column: 6, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5607, file: !56, line: 70, column: 6)
!5615 = !DILocation(line: 70, column: 10, scope: !5614)
!5616 = !DILocation(line: 70, column: 6, scope: !5607)
!5617 = !DILocation(line: 71, column: 8, scope: !5614)
!5618 = !DILocation(line: 71, column: 12, scope: !5614)
!5619 = !DILocation(line: 71, column: 6, scope: !5614)
!5620 = !DILocation(line: 71, column: 3, scope: !5614)
!5621 = !DILocation(line: 72, column: 9, scope: !5607)
!5622 = !DILocation(line: 72, column: 13, scope: !5607)
!5623 = !DILocation(line: 72, column: 17, scope: !5607)
!5624 = !DILocation(line: 72, column: 2, scope: !5607)
!5625 = !DISubprogram(name: "down_read", scope: !656, file: !656, line: 175, type: !5626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5626 = !DISubroutineType(types: !5627)
!5627 = !{null, !5628}
!5628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!5629 = !DISubprogram(name: "ilookup", scope: !197, file: !197, line: 2883, type: !5630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5630 = !DISubroutineType(types: !5631)
!5631 = !{!1763, !1887, !33}
!5632 = distinct !DISubprogram(name: "kernfs_ino", scope: !14, file: !14, line: 360, type: !5633, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5636)
!5633 = !DISubroutineType(types: !5634)
!5634 = !{!5635, !12}
!5635 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !18, line: 22, baseType: !135)
!5636 = !{!5637}
!5637 = !DILocalVariable(name: "kn", arg: 1, scope: !5632, file: !14, line: 360, type: !12)
!5638 = !DILocation(line: 360, column: 52, scope: !5632)
!5639 = !DILocation(line: 362, column: 23, scope: !5632)
!5640 = !DILocation(line: 362, column: 27, scope: !5632)
!5641 = !DILocation(line: 362, column: 9, scope: !5632)
!5642 = !DILocation(line: 362, column: 2, scope: !5632)
!5643 = !DISubprogram(name: "strlen", scope: !5644, file: !5644, line: 128, type: !5645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5644 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5645 = !DISubroutineType(types: !5646)
!5646 = !{!33, !26}
!5647 = !DISubprogram(name: "kernfs_get_parent", scope: !14, file: !14, line: 401, type: !5648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{!12, !12}
!5650 = !DISubprogram(name: "fsnotify", scope: !2452, file: !2452, line: 541, type: !5651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5651 = !DISubroutineType(types: !5652)
!5652 = !{!22, !115, !38, !22, !1763, !1854, !1763, !114}
!5653 = !DISubprogram(name: "iput", scope: !197, file: !197, line: 2459, type: !2056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5654 = distinct !DISubprogram(name: "fsnotify_inode", scope: !5655, file: !5655, line: 45, type: !5656, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5658)
!5655 = !DIFile(filename: "./include/linux/fsnotify.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41bc5e92750cfb13d8322458d84e0ec0")
!5656 = !DISubroutineType(types: !5657)
!5657 = !{null, !1763, !115}
!5658 = !{!5659, !5660}
!5659 = !DILocalVariable(name: "inode", arg: 1, scope: !5654, file: !5655, line: 45, type: !1763)
!5660 = !DILocalVariable(name: "mask", arg: 2, scope: !5654, file: !5655, line: 45, type: !115)
!5661 = !DILocation(line: 45, column: 49, scope: !5654)
!5662 = !DILocation(line: 45, column: 62, scope: !5654)
!5663 = !DILocation(line: 47, column: 24, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5654, file: !5655, line: 47, column: 6)
!5665 = !DILocation(line: 47, column: 31, scope: !5664)
!5666 = !DILocation(line: 47, column: 37, scope: !5664)
!5667 = !DILocation(line: 47, column: 6, scope: !5664)
!5668 = !DILocation(line: 47, column: 60, scope: !5664)
!5669 = !DILocation(line: 47, column: 6, scope: !5654)
!5670 = !DILocation(line: 48, column: 3, scope: !5664)
!5671 = !DILocation(line: 50, column: 6, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5654, file: !5655, line: 50, column: 6)
!5673 = !DILocation(line: 50, column: 6, scope: !5654)
!5674 = !DILocation(line: 51, column: 8, scope: !5672)
!5675 = !DILocation(line: 51, column: 3, scope: !5672)
!5676 = !DILocation(line: 53, column: 11, scope: !5654)
!5677 = !DILocation(line: 53, column: 17, scope: !5654)
!5678 = !DILocation(line: 53, column: 58, scope: !5654)
!5679 = !DILocation(line: 53, column: 2, scope: !5654)
!5680 = !DILocation(line: 54, column: 1, scope: !5654)
!5681 = !DISubprogram(name: "up_read", scope: !656, file: !656, line: 198, type: !5626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5682 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !4752, file: !4752, line: 29, type: !5683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5683 = !DISubroutineType(types: !5684)
!5684 = !{null, !4755}
!5685 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !4752, file: !4752, line: 41, type: !5683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5686 = distinct !DISubprogram(name: "kernfs_id_ino", scope: !14, file: !14, line: 342, type: !5687, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5689)
!5687 = !DISubroutineType(types: !5688)
!5688 = !{!5635, !350}
!5689 = !{!5690}
!5690 = !DILocalVariable(name: "id", arg: 1, scope: !5686, file: !14, line: 342, type: !350)
!5691 = !DILocation(line: 342, column: 39, scope: !5686)
!5692 = !DILocation(line: 346, column: 10, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5686, file: !14, line: 345, column: 6)
!5694 = !DILocation(line: 346, column: 3, scope: !5693)
!5695 = distinct !DISubprogram(name: "atomic_long_read", scope: !4272, file: !4272, line: 3158, type: !5696, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5700)
!5696 = !DISubroutineType(types: !5697)
!5697 = !{!1036, !5698}
!5698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5699, size: 64)
!5699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!5700 = !{!5701}
!5701 = !DILocalVariable(name: "v", arg: 1, scope: !5695, file: !4272, line: 3158, type: !5698)
!5702 = !DILocation(line: 3158, column: 39, scope: !5695)
!5703 = !DILocation(line: 3160, column: 25, scope: !5695)
!5704 = !DILocation(line: 3160, column: 2, scope: !5695)
!5705 = !DILocation(line: 3161, column: 30, scope: !5695)
!5706 = !DILocation(line: 3161, column: 9, scope: !5695)
!5707 = !DILocation(line: 3161, column: 2, scope: !5695)
!5708 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !150, file: !150, line: 35, type: !5696, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5709)
!5709 = !{!5710}
!5710 = !DILocalVariable(name: "v", arg: 1, scope: !5708, file: !150, line: 35, type: !5698)
!5711 = !DILocation(line: 35, column: 43, scope: !5708)
!5712 = !DILocation(line: 38, column: 27, scope: !5708)
!5713 = !DILocation(line: 38, column: 9, scope: !5708)
!5714 = !DILocation(line: 38, column: 2, scope: !5708)
!5715 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !5515, file: !5515, line: 2554, type: !5716, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5720)
!5716 = !DISubroutineType(types: !5717)
!5717 = !{!155, !5718}
!5718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5719, size: 64)
!5719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!5720 = !{!5721}
!5721 = !DILocalVariable(name: "v", arg: 1, scope: !5715, file: !5515, line: 2554, type: !5718)
!5722 = !DILocation(line: 2554, column: 37, scope: !5715)
!5723 = !DILocation(line: 2556, column: 28, scope: !5715)
!5724 = !DILocation(line: 2556, column: 9, scope: !5715)
!5725 = !DILocation(line: 2556, column: 2, scope: !5715)
!5726 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !5727, file: !5727, line: 13, type: !5716, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5728)
!5727 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!5728 = !{!5729}
!5729 = !DILocalVariable(name: "v", arg: 1, scope: !5726, file: !5727, line: 13, type: !5718)
!5730 = !DILocation(line: 13, column: 65, scope: !5726)
!5731 = !DILocation(line: 15, column: 9, scope: !5726)
!5732 = !DILocation(line: 15, column: 2, scope: !5726)
!5733 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5498, file: !5498, line: 94, type: !5499, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5734)
!5734 = !{!5735, !5736}
!5735 = !DILocalVariable(name: "v", arg: 1, scope: !5733, file: !5498, line: 94, type: !5501)
!5736 = !DILocalVariable(name: "size", arg: 2, scope: !5733, file: !5498, line: 94, type: !132)
!5737 = !DILocation(line: 94, column: 79, scope: !5733)
!5738 = !DILocation(line: 94, column: 89, scope: !5733)
!5739 = !DILocation(line: 96, column: 20, scope: !5733)
!5740 = !DILocation(line: 96, column: 23, scope: !5733)
!5741 = !DILocation(line: 96, column: 2, scope: !5733)
!5742 = !DILocation(line: 97, column: 2, scope: !5733)
!5743 = !DILocation(line: 98, column: 1, scope: !5733)
!5744 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !5515, file: !5515, line: 976, type: !4736, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5745)
!5745 = !{!5746}
!5746 = !DILocalVariable(name: "v", arg: 1, scope: !5744, file: !5515, line: 976, type: !4738)
!5747 = !DILocation(line: 976, column: 26, scope: !5744)
!5748 = !DILocation(line: 979, column: 18, scope: !5744)
!5749 = !DILocation(line: 979, column: 2, scope: !5744)
!5750 = !DILocation(line: 983, column: 1, scope: !5744)
!5751 = distinct !DISubprogram(name: "kasan_check_write", scope: !5523, file: !5523, line: 44, type: !5524, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5752)
!5752 = !{!5753, !5754}
!5753 = !DILocalVariable(name: "p", arg: 1, scope: !5751, file: !5523, line: 44, type: !5501)
!5754 = !DILocalVariable(name: "size", arg: 2, scope: !5751, file: !5523, line: 44, type: !41)
!5755 = !DILocation(line: 44, column: 59, scope: !5751)
!5756 = !DILocation(line: 44, column: 75, scope: !5751)
!5757 = !DILocation(line: 46, column: 2, scope: !5751)
!5758 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !5545, file: !5545, line: 51, type: !4736, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5759)
!5759 = !{!5760}
!5760 = !DILocalVariable(name: "v", arg: 1, scope: !5758, file: !5545, line: 51, type: !4738)
!5761 = !DILocation(line: 51, column: 55, scope: !5758)
!5762 = !DILocation(line: 54, column: 16, scope: !5758)
!5763 = !DILocation(line: 54, column: 19, scope: !5758)
!5764 = !DILocation(line: 53, column: 2, scope: !5758)
!5765 = !{i64 2148999294, i64 2148999333, i64 2148999354, i64 2148999391, i64 2148999414, i64 2148999284}
!5766 = !DILocation(line: 55, column: 1, scope: !5758)
!5767 = distinct !DISubprogram(name: "queue_work", scope: !911, file: !911, line: 559, type: !5768, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5770)
!5768 = !DISubroutineType(types: !5769)
!5769 = !{!795, !2506, !920}
!5770 = !{!5771, !5772}
!5771 = !DILocalVariable(name: "wq", arg: 1, scope: !5767, file: !911, line: 559, type: !2506)
!5772 = !DILocalVariable(name: "work", arg: 2, scope: !5767, file: !911, line: 560, type: !920)
!5773 = !DILocation(line: 559, column: 56, scope: !5767)
!5774 = !DILocation(line: 560, column: 30, scope: !5767)
!5775 = !DILocation(line: 562, column: 41, scope: !5767)
!5776 = !DILocation(line: 562, column: 45, scope: !5767)
!5777 = !DILocation(line: 562, column: 9, scope: !5767)
!5778 = !DILocation(line: 562, column: 2, scope: !5767)
!5779 = !DISubprogram(name: "queue_work_on", scope: !911, file: !911, line: 496, type: !5780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5780 = !DISubroutineType(types: !5781)
!5781 = !{!795, !22, !2506, !920}
!5782 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !4752, file: !4752, line: 43, type: !5783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5783 = !DISubroutineType(types: !5784)
!5784 = !{null, !4755, !33}
!5785 = distinct !DISubprogram(name: "kernfs_of", scope: !2, file: !2, line: 97, type: !5786, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5788)
!5786 = !DISubroutineType(types: !5787)
!5787 = !{!3931, !627}
!5788 = !{!5789}
!5789 = !DILocalVariable(name: "file", arg: 1, scope: !5785, file: !2, line: 97, type: !627)
!5790 = !DILocation(line: 97, column: 56, scope: !5785)
!5791 = !DILocation(line: 99, column: 29, scope: !5785)
!5792 = !DILocation(line: 99, column: 35, scope: !5785)
!5793 = !DILocation(line: 99, column: 50, scope: !5785)
!5794 = !DILocation(line: 99, column: 2, scope: !5785)
!5795 = !DISubprogram(name: "seq_read_iter", scope: !127, file: !127, line: 111, type: !2795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5796 = distinct !DISubprogram(name: "kernfs_file_read_iter", scope: !2, file: !2, line: 221, type: !2795, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5797)
!5797 = !{!5798, !5799, !5800, !5801, !5802, !5804, !5805, !5806, !5807}
!5798 = !DILocalVariable(name: "iocb", arg: 1, scope: !5796, file: !2, line: 221, type: !2797)
!5799 = !DILocalVariable(name: "iter", arg: 2, scope: !5796, file: !2, line: 221, type: !2902)
!5800 = !DILocalVariable(name: "of", scope: !5796, file: !2, line: 223, type: !3931)
!5801 = !DILocalVariable(name: "len", scope: !5796, file: !2, line: 224, type: !2115)
!5802 = !DILocalVariable(name: "__UNIQUE_ID___x324", scope: !5803, file: !2, line: 224, type: !132)
!5803 = distinct !DILexicalBlock(scope: !5796, file: !2, line: 224, column: 16)
!5804 = !DILocalVariable(name: "__UNIQUE_ID___y325", scope: !5803, file: !2, line: 224, type: !132)
!5805 = !DILocalVariable(name: "ops", scope: !5796, file: !2, line: 225, type: !3923)
!5806 = !DILocalVariable(name: "buf", scope: !5796, file: !2, line: 226, type: !130)
!5807 = !DILabel(scope: !5796, name: "out_free", file: !2, line: 268)
!5808 = !DILocation(line: 221, column: 52, scope: !5796)
!5809 = !DILocation(line: 221, column: 75, scope: !5796)
!5810 = !DILocation(line: 223, column: 2, scope: !5796)
!5811 = !DILocation(line: 223, column: 27, scope: !5796)
!5812 = !DILocation(line: 223, column: 42, scope: !5796)
!5813 = !DILocation(line: 223, column: 48, scope: !5796)
!5814 = !DILocation(line: 223, column: 32, scope: !5796)
!5815 = !DILocation(line: 224, column: 2, scope: !5796)
!5816 = !DILocation(line: 224, column: 10, scope: !5796)
!5817 = !DILocation(line: 224, column: 16, scope: !5803)
!5818 = !DILocation(line: 224, column: 16, scope: !5796)
!5819 = !DILocation(line: 225, column: 2, scope: !5796)
!5820 = !DILocation(line: 225, column: 27, scope: !5796)
!5821 = !DILocation(line: 226, column: 2, scope: !5796)
!5822 = !DILocation(line: 226, column: 8, scope: !5796)
!5823 = !DILocation(line: 228, column: 8, scope: !5796)
!5824 = !DILocation(line: 228, column: 12, scope: !5796)
!5825 = !DILocation(line: 228, column: 6, scope: !5796)
!5826 = !DILocation(line: 229, column: 6, scope: !5827)
!5827 = distinct !DILexicalBlock(scope: !5796, file: !2, line: 229, column: 6)
!5828 = !DILocation(line: 229, column: 6, scope: !5796)
!5829 = !DILocation(line: 230, column: 15, scope: !5827)
!5830 = !DILocation(line: 230, column: 19, scope: !5827)
!5831 = !DILocation(line: 230, column: 3, scope: !5827)
!5832 = !DILocation(line: 232, column: 17, scope: !5827)
!5833 = !DILocation(line: 232, column: 9, scope: !5827)
!5834 = !DILocation(line: 232, column: 7, scope: !5827)
!5835 = !DILocation(line: 233, column: 7, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5796, file: !2, line: 233, column: 6)
!5837 = !DILocation(line: 233, column: 6, scope: !5796)
!5838 = !DILocation(line: 234, column: 3, scope: !5836)
!5839 = !DILocation(line: 240, column: 14, scope: !5796)
!5840 = !DILocation(line: 240, column: 18, scope: !5796)
!5841 = !DILocation(line: 240, column: 2, scope: !5796)
!5842 = !DILocation(line: 241, column: 25, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5796, file: !2, line: 241, column: 6)
!5844 = !DILocation(line: 241, column: 29, scope: !5843)
!5845 = !DILocation(line: 241, column: 7, scope: !5843)
!5846 = !DILocation(line: 241, column: 6, scope: !5796)
!5847 = !DILocation(line: 242, column: 7, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5843, file: !2, line: 241, column: 34)
!5849 = !DILocation(line: 243, column: 17, scope: !5848)
!5850 = !DILocation(line: 243, column: 21, scope: !5848)
!5851 = !DILocation(line: 243, column: 3, scope: !5848)
!5852 = !DILocation(line: 244, column: 3, scope: !5848)
!5853 = !DILocation(line: 247, column: 33, scope: !5796)
!5854 = !DILocation(line: 247, column: 27, scope: !5796)
!5855 = !DILocation(line: 247, column: 38, scope: !5796)
!5856 = !DILocation(line: 247, column: 14, scope: !5796)
!5857 = !DILocation(line: 247, column: 2, scope: !5796)
!5858 = !DILocation(line: 247, column: 6, scope: !5796)
!5859 = !DILocation(line: 247, column: 12, scope: !5796)
!5860 = !DILocation(line: 249, column: 19, scope: !5796)
!5861 = !DILocation(line: 249, column: 23, scope: !5796)
!5862 = !DILocation(line: 249, column: 8, scope: !5796)
!5863 = !DILocation(line: 249, column: 6, scope: !5796)
!5864 = !DILocation(line: 250, column: 6, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5796, file: !2, line: 250, column: 6)
!5866 = !DILocation(line: 250, column: 11, scope: !5865)
!5867 = !DILocation(line: 250, column: 6, scope: !5796)
!5868 = !DILocation(line: 251, column: 9, scope: !5865)
!5869 = !DILocation(line: 251, column: 14, scope: !5865)
!5870 = !DILocation(line: 251, column: 19, scope: !5865)
!5871 = !DILocation(line: 251, column: 23, scope: !5865)
!5872 = !DILocation(line: 251, column: 28, scope: !5865)
!5873 = !DILocation(line: 251, column: 33, scope: !5865)
!5874 = !DILocation(line: 251, column: 39, scope: !5865)
!5875 = !DILocation(line: 251, column: 7, scope: !5865)
!5876 = !DILocation(line: 251, column: 3, scope: !5865)
!5877 = !DILocation(line: 253, column: 7, scope: !5865)
!5878 = !DILocation(line: 255, column: 20, scope: !5796)
!5879 = !DILocation(line: 255, column: 24, scope: !5796)
!5880 = !DILocation(line: 255, column: 2, scope: !5796)
!5881 = !DILocation(line: 256, column: 16, scope: !5796)
!5882 = !DILocation(line: 256, column: 20, scope: !5796)
!5883 = !DILocation(line: 256, column: 2, scope: !5796)
!5884 = !DILocation(line: 258, column: 6, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5796, file: !2, line: 258, column: 6)
!5886 = !DILocation(line: 258, column: 10, scope: !5885)
!5887 = !DILocation(line: 258, column: 6, scope: !5796)
!5888 = !DILocation(line: 259, column: 3, scope: !5885)
!5889 = !DILocation(line: 261, column: 19, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5796, file: !2, line: 261, column: 6)
!5891 = !DILocation(line: 261, column: 24, scope: !5890)
!5892 = !DILocation(line: 261, column: 29, scope: !5890)
!5893 = !DILocation(line: 261, column: 6, scope: !5890)
!5894 = !DILocation(line: 261, column: 38, scope: !5890)
!5895 = !DILocation(line: 261, column: 35, scope: !5890)
!5896 = !DILocation(line: 261, column: 6, scope: !5796)
!5897 = !DILocation(line: 262, column: 7, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5890, file: !2, line: 261, column: 43)
!5899 = !DILocation(line: 263, column: 3, scope: !5898)
!5900 = !DILocation(line: 266, column: 18, scope: !5796)
!5901 = !DILocation(line: 266, column: 2, scope: !5796)
!5902 = !DILocation(line: 266, column: 8, scope: !5796)
!5903 = !DILocation(line: 266, column: 15, scope: !5796)
!5904 = !DILocation(line: 268, column: 2, scope: !5796)
!5905 = !DILocation(line: 269, column: 6, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5796, file: !2, line: 269, column: 6)
!5907 = !DILocation(line: 269, column: 13, scope: !5906)
!5908 = !DILocation(line: 269, column: 17, scope: !5906)
!5909 = !DILocation(line: 269, column: 10, scope: !5906)
!5910 = !DILocation(line: 269, column: 6, scope: !5796)
!5911 = !DILocation(line: 270, column: 17, scope: !5906)
!5912 = !DILocation(line: 270, column: 21, scope: !5906)
!5913 = !DILocation(line: 270, column: 3, scope: !5906)
!5914 = !DILocation(line: 272, column: 9, scope: !5906)
!5915 = !DILocation(line: 272, column: 3, scope: !5906)
!5916 = !DILocation(line: 273, column: 9, scope: !5796)
!5917 = !DILocation(line: 273, column: 2, scope: !5796)
!5918 = !DILocation(line: 274, column: 1, scope: !5796)
!5919 = distinct !DISubprogram(name: "iov_iter_count", scope: !2904, file: !2904, line: 296, type: !5920, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5924)
!5920 = !DISubroutineType(types: !5921)
!5921 = !{!132, !5922}
!5922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5923, size: 64)
!5923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2903)
!5924 = !{!5925}
!5925 = !DILocalVariable(name: "i", arg: 1, scope: !5919, file: !2904, line: 296, type: !5922)
!5926 = !DILocation(line: 296, column: 60, scope: !5919)
!5927 = !DILocation(line: 298, column: 9, scope: !5919)
!5928 = !DILocation(line: 298, column: 12, scope: !5919)
!5929 = !DILocation(line: 298, column: 2, scope: !5919)
!5930 = distinct !DISubprogram(name: "kmalloc", scope: !4061, file: !4061, line: 591, type: !5931, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5933)
!5931 = !DISubroutineType(types: !5932)
!5932 = !{!110, !132, !108}
!5933 = !{!5934, !5935, !5936}
!5934 = !DILocalVariable(name: "size", arg: 1, scope: !5930, file: !4061, line: 591, type: !132)
!5935 = !DILocalVariable(name: "flags", arg: 2, scope: !5930, file: !4061, line: 591, type: !108)
!5936 = !DILocalVariable(name: "index", scope: !5937, file: !4061, line: 594, type: !41)
!5937 = distinct !DILexicalBlock(scope: !5938, file: !4061, line: 593, column: 42)
!5938 = distinct !DILexicalBlock(scope: !5930, file: !4061, line: 593, column: 6)
!5939 = !DILocation(line: 591, column: 61, scope: !5930)
!5940 = !DILocation(line: 591, column: 73, scope: !5930)
!5941 = !DILocation(line: 593, column: 27, scope: !5938)
!5942 = !DILocation(line: 593, column: 6, scope: !5938)
!5943 = !DILocation(line: 593, column: 33, scope: !5938)
!5944 = !DILocation(line: 593, column: 36, scope: !5938)
!5945 = !DILocation(line: 593, column: 6, scope: !5930)
!5946 = !DILocation(line: 594, column: 3, scope: !5937)
!5947 = !DILocation(line: 594, column: 16, scope: !5937)
!5948 = !DILocation(line: 596, column: 7, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5937, file: !4061, line: 596, column: 7)
!5950 = !DILocation(line: 596, column: 12, scope: !5949)
!5951 = !DILocation(line: 596, column: 7, scope: !5937)
!5952 = !DILocation(line: 597, column: 25, scope: !5949)
!5953 = !DILocation(line: 597, column: 31, scope: !5949)
!5954 = !DILocation(line: 597, column: 11, scope: !5949)
!5955 = !DILocation(line: 597, column: 4, scope: !5949)
!5956 = !DILocation(line: 599, column: 11, scope: !5937)
!5957 = !DILocation(line: 599, column: 9, scope: !5937)
!5958 = !DILocation(line: 601, column: 33, scope: !5937)
!5959 = !DILocation(line: 601, column: 40, scope: !5937)
!5960 = !DILocation(line: 601, column: 20, scope: !5937)
!5961 = !DILocation(line: 601, column: 5, scope: !5937)
!5962 = !DILocation(line: 601, column: 51, scope: !5937)
!5963 = !DILocation(line: 602, column: 5, scope: !5937)
!5964 = !DILocation(line: 602, column: 12, scope: !5937)
!5965 = !DILocation(line: 600, column: 10, scope: !5937)
!5966 = !DILocation(line: 600, column: 3, scope: !5937)
!5967 = !DILocation(line: 603, column: 2, scope: !5938)
!5968 = !DILocation(line: 604, column: 19, scope: !5930)
!5969 = !DILocation(line: 604, column: 25, scope: !5930)
!5970 = !DILocation(line: 604, column: 9, scope: !5930)
!5971 = !DILocation(line: 604, column: 2, scope: !5930)
!5972 = !DILocation(line: 605, column: 1, scope: !5930)
!5973 = !DISubprogram(name: "kernfs_get_active", scope: !56, file: !56, line: 151, type: !5648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5974 = distinct !DISubprogram(name: "kernfs_ops", scope: !2, file: !2, line: 106, type: !5975, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5977)
!5975 = !DISubroutineType(types: !5976)
!5976 = !{!3923, !12}
!5977 = !{!5978}
!5978 = !DILocalVariable(name: "kn", arg: 1, scope: !5974, file: !2, line: 106, type: !12)
!5979 = !DILocation(line: 106, column: 64, scope: !5974)
!5980 = !DILocation(line: 108, column: 6, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5974, file: !2, line: 108, column: 6)
!5982 = !DILocation(line: 108, column: 10, scope: !5981)
!5983 = !DILocation(line: 108, column: 16, scope: !5981)
!5984 = !DILocation(line: 108, column: 6, scope: !5974)
!5985 = !DILocation(line: 109, column: 3, scope: !5981)
!5986 = !DILocation(line: 109, column: 3, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5981, file: !2, line: 109, column: 3)
!5988 = !DILocation(line: 110, column: 9, scope: !5974)
!5989 = !DILocation(line: 110, column: 13, scope: !5974)
!5990 = !DILocation(line: 110, column: 18, scope: !5974)
!5991 = !DILocation(line: 110, column: 2, scope: !5974)
!5992 = !DISubprogram(name: "kernfs_put_active", scope: !56, file: !56, line: 152, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5993 = distinct !DISubprogram(name: "copy_to_iter", scope: !2904, file: !2904, line: 198, type: !5994, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !5996)
!5994 = !DISubroutineType(types: !5995)
!5995 = !{!132, !38, !132, !2902}
!5996 = !{!5997, !5998, !5999}
!5997 = !DILocalVariable(name: "addr", arg: 1, scope: !5993, file: !2904, line: 198, type: !38)
!5998 = !DILocalVariable(name: "bytes", arg: 2, scope: !5993, file: !2904, line: 198, type: !132)
!5999 = !DILocalVariable(name: "i", arg: 3, scope: !5993, file: !2904, line: 198, type: !2902)
!6000 = !DILocation(line: 198, column: 33, scope: !5993)
!6001 = !DILocation(line: 198, column: 46, scope: !5993)
!6002 = !DILocation(line: 198, column: 70, scope: !5993)
!6003 = !DILocation(line: 200, column: 22, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5993, file: !2904, line: 200, column: 6)
!6005 = !DILocation(line: 200, column: 28, scope: !6004)
!6006 = !DILocation(line: 200, column: 6, scope: !6004)
!6007 = !DILocation(line: 200, column: 6, scope: !5993)
!6008 = !DILocation(line: 201, column: 24, scope: !6004)
!6009 = !DILocation(line: 201, column: 30, scope: !6004)
!6010 = !DILocation(line: 201, column: 37, scope: !6004)
!6011 = !DILocation(line: 201, column: 10, scope: !6004)
!6012 = !DILocation(line: 201, column: 3, scope: !6004)
!6013 = !DILocation(line: 202, column: 2, scope: !5993)
!6014 = !DILocation(line: 203, column: 1, scope: !5993)
!6015 = !DISubprogram(name: "kfree", scope: !4061, file: !4061, line: 227, type: !6016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6016 = !DISubroutineType(types: !6017)
!6017 = !{null, !38}
!6018 = !DISubprogram(name: "kmalloc_large", scope: !4061, file: !4061, line: 531, type: !5931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6019 = distinct !DISubprogram(name: "__kmalloc_index", scope: !4061, file: !4061, line: 444, type: !6020, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6022)
!6020 = !DISubroutineType(types: !6021)
!6021 = !{!41, !132, !795}
!6022 = !{!6023, !6024}
!6023 = !DILocalVariable(name: "size", arg: 1, scope: !6019, file: !4061, line: 444, type: !132)
!6024 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6019, file: !4061, line: 445, type: !795)
!6025 = !DILocation(line: 444, column: 60, scope: !6019)
!6026 = !DILocation(line: 445, column: 16, scope: !6019)
!6027 = !DILocation(line: 447, column: 7, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 447, column: 6)
!6029 = !DILocation(line: 447, column: 6, scope: !6019)
!6030 = !DILocation(line: 448, column: 3, scope: !6028)
!6031 = !DILocation(line: 450, column: 6, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 450, column: 6)
!6033 = !DILocation(line: 450, column: 11, scope: !6032)
!6034 = !DILocation(line: 450, column: 6, scope: !6019)
!6035 = !DILocation(line: 451, column: 3, scope: !6032)
!6036 = !DILocation(line: 453, column: 32, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 453, column: 6)
!6038 = !DILocation(line: 453, column: 37, scope: !6037)
!6039 = !DILocation(line: 453, column: 42, scope: !6037)
!6040 = !DILocation(line: 453, column: 45, scope: !6037)
!6041 = !DILocation(line: 453, column: 50, scope: !6037)
!6042 = !DILocation(line: 453, column: 6, scope: !6019)
!6043 = !DILocation(line: 454, column: 3, scope: !6037)
!6044 = !DILocation(line: 455, column: 32, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 455, column: 6)
!6046 = !DILocation(line: 455, column: 37, scope: !6045)
!6047 = !DILocation(line: 455, column: 43, scope: !6045)
!6048 = !DILocation(line: 455, column: 46, scope: !6045)
!6049 = !DILocation(line: 455, column: 51, scope: !6045)
!6050 = !DILocation(line: 455, column: 6, scope: !6019)
!6051 = !DILocation(line: 456, column: 3, scope: !6045)
!6052 = !DILocation(line: 457, column: 6, scope: !6053)
!6053 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 457, column: 6)
!6054 = !DILocation(line: 457, column: 11, scope: !6053)
!6055 = !DILocation(line: 457, column: 6, scope: !6019)
!6056 = !DILocation(line: 457, column: 26, scope: !6053)
!6057 = !DILocation(line: 458, column: 6, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 458, column: 6)
!6059 = !DILocation(line: 458, column: 11, scope: !6058)
!6060 = !DILocation(line: 458, column: 6, scope: !6019)
!6061 = !DILocation(line: 458, column: 26, scope: !6058)
!6062 = !DILocation(line: 459, column: 6, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 459, column: 6)
!6064 = !DILocation(line: 459, column: 11, scope: !6063)
!6065 = !DILocation(line: 459, column: 6, scope: !6019)
!6066 = !DILocation(line: 459, column: 26, scope: !6063)
!6067 = !DILocation(line: 460, column: 6, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 460, column: 6)
!6069 = !DILocation(line: 460, column: 11, scope: !6068)
!6070 = !DILocation(line: 460, column: 6, scope: !6019)
!6071 = !DILocation(line: 460, column: 26, scope: !6068)
!6072 = !DILocation(line: 461, column: 6, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 461, column: 6)
!6074 = !DILocation(line: 461, column: 11, scope: !6073)
!6075 = !DILocation(line: 461, column: 6, scope: !6019)
!6076 = !DILocation(line: 461, column: 26, scope: !6073)
!6077 = !DILocation(line: 462, column: 6, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 462, column: 6)
!6079 = !DILocation(line: 462, column: 11, scope: !6078)
!6080 = !DILocation(line: 462, column: 6, scope: !6019)
!6081 = !DILocation(line: 462, column: 26, scope: !6078)
!6082 = !DILocation(line: 463, column: 6, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 463, column: 6)
!6084 = !DILocation(line: 463, column: 11, scope: !6083)
!6085 = !DILocation(line: 463, column: 6, scope: !6019)
!6086 = !DILocation(line: 463, column: 26, scope: !6083)
!6087 = !DILocation(line: 464, column: 6, scope: !6088)
!6088 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 464, column: 6)
!6089 = !DILocation(line: 464, column: 11, scope: !6088)
!6090 = !DILocation(line: 464, column: 6, scope: !6019)
!6091 = !DILocation(line: 464, column: 26, scope: !6088)
!6092 = !DILocation(line: 465, column: 6, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 465, column: 6)
!6094 = !DILocation(line: 465, column: 11, scope: !6093)
!6095 = !DILocation(line: 465, column: 6, scope: !6019)
!6096 = !DILocation(line: 465, column: 26, scope: !6093)
!6097 = !DILocation(line: 466, column: 6, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 466, column: 6)
!6099 = !DILocation(line: 466, column: 11, scope: !6098)
!6100 = !DILocation(line: 466, column: 6, scope: !6019)
!6101 = !DILocation(line: 466, column: 26, scope: !6098)
!6102 = !DILocation(line: 467, column: 6, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 467, column: 6)
!6104 = !DILocation(line: 467, column: 11, scope: !6103)
!6105 = !DILocation(line: 467, column: 6, scope: !6019)
!6106 = !DILocation(line: 467, column: 26, scope: !6103)
!6107 = !DILocation(line: 468, column: 6, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 468, column: 6)
!6109 = !DILocation(line: 468, column: 11, scope: !6108)
!6110 = !DILocation(line: 468, column: 6, scope: !6019)
!6111 = !DILocation(line: 468, column: 26, scope: !6108)
!6112 = !DILocation(line: 469, column: 6, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 469, column: 6)
!6114 = !DILocation(line: 469, column: 11, scope: !6113)
!6115 = !DILocation(line: 469, column: 6, scope: !6019)
!6116 = !DILocation(line: 469, column: 26, scope: !6113)
!6117 = !DILocation(line: 470, column: 6, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 470, column: 6)
!6119 = !DILocation(line: 470, column: 11, scope: !6118)
!6120 = !DILocation(line: 470, column: 6, scope: !6019)
!6121 = !DILocation(line: 470, column: 26, scope: !6118)
!6122 = !DILocation(line: 471, column: 6, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 471, column: 6)
!6124 = !DILocation(line: 471, column: 11, scope: !6123)
!6125 = !DILocation(line: 471, column: 6, scope: !6019)
!6126 = !DILocation(line: 471, column: 26, scope: !6123)
!6127 = !DILocation(line: 472, column: 6, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 472, column: 6)
!6129 = !DILocation(line: 472, column: 11, scope: !6128)
!6130 = !DILocation(line: 472, column: 6, scope: !6019)
!6131 = !DILocation(line: 472, column: 26, scope: !6128)
!6132 = !DILocation(line: 473, column: 6, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 473, column: 6)
!6134 = !DILocation(line: 473, column: 11, scope: !6133)
!6135 = !DILocation(line: 473, column: 6, scope: !6019)
!6136 = !DILocation(line: 473, column: 26, scope: !6133)
!6137 = !DILocation(line: 474, column: 6, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 474, column: 6)
!6139 = !DILocation(line: 474, column: 11, scope: !6138)
!6140 = !DILocation(line: 474, column: 6, scope: !6019)
!6141 = !DILocation(line: 474, column: 27, scope: !6138)
!6142 = !DILocation(line: 475, column: 6, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 475, column: 6)
!6144 = !DILocation(line: 475, column: 11, scope: !6143)
!6145 = !DILocation(line: 475, column: 6, scope: !6019)
!6146 = !DILocation(line: 475, column: 32, scope: !6143)
!6147 = !DILocation(line: 477, column: 50, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6019, file: !4061, line: 477, column: 6)
!6149 = !DILocation(line: 477, column: 6, scope: !6019)
!6150 = !DILocation(line: 478, column: 3, scope: !6148)
!6151 = !DILocation(line: 478, column: 3, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6153, file: !4061, line: 478, column: 3)
!6153 = distinct !DILexicalBlock(scope: !6148, file: !4061, line: 478, column: 3)
!6154 = !{i32 -2141697611}
!6155 = !DILocation(line: 478, column: 3, scope: !6153)
!6156 = !DILocation(line: 480, column: 3, scope: !6148)
!6157 = !DILocation(line: 480, column: 3, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6148, file: !4061, line: 480, column: 3)
!6159 = !DILocation(line: 480, column: 3, scope: !6160)
!6160 = distinct !DILexicalBlock(scope: !6158, file: !4061, line: 480, column: 3)
!6161 = !DILocation(line: 480, column: 3, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6158, file: !4061, line: 480, column: 3)
!6163 = !{i64 2153269888, i64 2153269917, i64 2153269963, i64 2153270021, i64 2153270075, i64 2153270129, i64 2153270184, i64 2153270215}
!6164 = !DILocation(line: 483, column: 2, scope: !6019)
!6165 = !DILocation(line: 484, column: 1, scope: !6019)
!6166 = !DISubprogram(name: "kmalloc_trace", scope: !4061, file: !4061, line: 525, type: !6167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6167 = !DISubroutineType(types: !6168)
!6168 = !{!110, !3854, !108, !132}
!6169 = distinct !DISubprogram(name: "kmalloc_type", scope: !4061, file: !4061, line: 401, type: !6170, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6172)
!6170 = !DISubroutineType(types: !6171)
!6171 = !{!4060, !108, !33}
!6172 = !{!6173, !6174}
!6173 = !DILocalVariable(name: "flags", arg: 1, scope: !6169, file: !4061, line: 401, type: !108)
!6174 = !DILocalVariable(name: "caller", arg: 2, scope: !6169, file: !4061, line: 401, type: !33)
!6175 = !DILocation(line: 401, column: 67, scope: !6169)
!6176 = !DILocation(line: 401, column: 88, scope: !6169)
!6177 = !DILocation(line: 407, column: 6, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !6169, file: !4061, line: 407, column: 6)
!6179 = !DILocation(line: 407, column: 6, scope: !6169)
!6180 = !DILocation(line: 413, column: 3, scope: !6178)
!6181 = !DILocation(line: 423, column: 38, scope: !6182)
!6182 = distinct !DILexicalBlock(scope: !6169, file: !4061, line: 423, column: 6)
!6183 = !DILocation(line: 423, column: 44, scope: !6182)
!6184 = !DILocation(line: 423, column: 6, scope: !6169)
!6185 = !DILocation(line: 424, column: 3, scope: !6182)
!6186 = !DILocation(line: 426, column: 3, scope: !6187)
!6187 = distinct !DILexicalBlock(scope: !6169, file: !4061, line: 425, column: 6)
!6188 = !DILocation(line: 429, column: 1, scope: !6169)
!6189 = !DISubprogram(name: "__kmalloc", scope: !4061, file: !4061, line: 488, type: !5931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6190 = !DISubprogram(name: "__compiletime_assert_245", scope: !4061, file: !4061, line: 478, type: !1501, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6191 = distinct !DISubprogram(name: "check_copy_size", scope: !4132, file: !4132, line: 237, type: !6192, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6194)
!6192 = !DISubroutineType(types: !6193)
!6193 = !{!795, !38, !132, !795}
!6194 = !{!6195, !6196, !6197, !6198, !6199, !6202}
!6195 = !DILocalVariable(name: "addr", arg: 1, scope: !6191, file: !4132, line: 237, type: !38)
!6196 = !DILocalVariable(name: "bytes", arg: 2, scope: !6191, file: !4132, line: 237, type: !132)
!6197 = !DILocalVariable(name: "is_source", arg: 3, scope: !6191, file: !4132, line: 237, type: !795)
!6198 = !DILocalVariable(name: "sz", scope: !6191, file: !4132, line: 239, type: !22)
!6199 = !DILocalVariable(name: "__ret_warn_on", scope: !6200, file: !4132, line: 249, type: !22)
!6200 = distinct !DILexicalBlock(scope: !6201, file: !4132, line: 249, column: 6)
!6201 = distinct !DILexicalBlock(scope: !6191, file: !4132, line: 249, column: 6)
!6202 = !DILocalVariable(name: "__flags", scope: !6203, file: !4132, line: 249, type: !22)
!6203 = distinct !DILexicalBlock(scope: !6204, file: !4132, line: 249, column: 6)
!6204 = distinct !DILexicalBlock(scope: !6200, file: !4132, line: 249, column: 6)
!6205 = !DILocation(line: 237, column: 29, scope: !6191)
!6206 = !DILocation(line: 237, column: 42, scope: !6191)
!6207 = !DILocation(line: 237, column: 54, scope: !6191)
!6208 = !DILocation(line: 239, column: 2, scope: !6191)
!6209 = !DILocation(line: 239, column: 6, scope: !6191)
!6210 = !DILocation(line: 239, column: 33, scope: !6191)
!6211 = !DILocation(line: 239, column: 11, scope: !6191)
!6212 = !DILocation(line: 240, column: 6, scope: !6213)
!6213 = distinct !DILexicalBlock(scope: !6191, file: !4132, line: 240, column: 6)
!6214 = !DILocation(line: 0, scope: !6213)
!6215 = !DILocation(line: 240, column: 6, scope: !6191)
!6216 = !DILocation(line: 241, column: 29, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6218, file: !4132, line: 241, column: 7)
!6218 = distinct !DILexicalBlock(scope: !6213, file: !4132, line: 240, column: 39)
!6219 = !DILocation(line: 241, column: 8, scope: !6217)
!6220 = !DILocation(line: 241, column: 7, scope: !6218)
!6221 = !DILocation(line: 242, column: 18, scope: !6217)
!6222 = !DILocation(line: 242, column: 22, scope: !6217)
!6223 = !DILocation(line: 242, column: 4, scope: !6217)
!6224 = !DILocation(line: 243, column: 12, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6217, file: !4132, line: 243, column: 12)
!6226 = !DILocation(line: 243, column: 12, scope: !6217)
!6227 = !DILocation(line: 244, column: 4, scope: !6225)
!6228 = !{i32 984510}
!6229 = !DILocation(line: 246, column: 4, scope: !6225)
!6230 = !{i32 984539}
!6231 = !DILocation(line: 247, column: 3, scope: !6218)
!6232 = !DILocation(line: 249, column: 6, scope: !6200)
!6233 = !DILocation(line: 249, column: 6, scope: !6204)
!6234 = !DILocation(line: 249, column: 6, scope: !6203)
!6235 = !DILocation(line: 249, column: 6, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6203, file: !4132, line: 249, column: 6)
!6237 = !DILocation(line: 249, column: 6, scope: !6238)
!6238 = distinct !DILexicalBlock(scope: !6203, file: !4132, line: 249, column: 6)
!6239 = !{i64 2149636781, i64 2149636810, i64 2149636856, i64 2149636914, i64 2149636968, i64 2149637022, i64 2149637077, i64 2149637108, i64 2149637416, i64 2149637422, i64 2149637469, i64 2149637492, i64 2149637518}
!6240 = !DILocation(line: 249, column: 6, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6203, file: !4132, line: 249, column: 6)
!6242 = !DILocation(line: 249, column: 6, scope: !6201)
!6243 = !DILocation(line: 249, column: 6, scope: !6191)
!6244 = !DILocation(line: 250, column: 3, scope: !6201)
!6245 = !DILocation(line: 251, column: 20, scope: !6191)
!6246 = !DILocation(line: 251, column: 26, scope: !6191)
!6247 = !DILocation(line: 251, column: 33, scope: !6191)
!6248 = !DILocation(line: 251, column: 2, scope: !6191)
!6249 = !DILocation(line: 252, column: 2, scope: !6191)
!6250 = !DILocation(line: 253, column: 1, scope: !6191)
!6251 = !DISubprogram(name: "_copy_to_iter", scope: !2904, file: !2904, line: 178, type: !5994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6252 = distinct !DISubprogram(name: "copy_overflow", scope: !4132, file: !4132, line: 230, type: !6253, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6255)
!6253 = !DISubroutineType(types: !6254)
!6254 = !{null, !22, !33}
!6255 = !{!6256, !6257}
!6256 = !DILocalVariable(name: "size", arg: 1, scope: !6252, file: !4132, line: 230, type: !22)
!6257 = !DILocalVariable(name: "count", arg: 2, scope: !6252, file: !4132, line: 230, type: !33)
!6258 = !DILocation(line: 230, column: 38, scope: !6252)
!6259 = !DILocation(line: 230, column: 58, scope: !6252)
!6260 = !DILocation(line: 233, column: 19, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6252, file: !4132, line: 232, column: 6)
!6262 = !DILocation(line: 233, column: 25, scope: !6261)
!6263 = !DILocation(line: 233, column: 3, scope: !6261)
!6264 = !DILocation(line: 234, column: 1, scope: !6252)
!6265 = !DISubprogram(name: "__bad_copy_from", scope: !4132, file: !4132, line: 224, type: !1501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6266 = !DISubprogram(name: "__bad_copy_to", scope: !4132, file: !4132, line: 226, type: !1501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6267 = distinct !DISubprogram(name: "check_object_size", scope: !4132, file: !4132, line: 218, type: !6268, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6270)
!6268 = !DISubroutineType(types: !6269)
!6269 = !{null, !38, !33, !795}
!6270 = !{!6271, !6272, !6273}
!6271 = !DILocalVariable(name: "ptr", arg: 1, scope: !6267, file: !4132, line: 218, type: !38)
!6272 = !DILocalVariable(name: "n", arg: 2, scope: !6267, file: !4132, line: 218, type: !33)
!6273 = !DILocalVariable(name: "to_user", arg: 3, scope: !6267, file: !4132, line: 219, type: !795)
!6274 = !DILocation(line: 218, column: 50, scope: !6267)
!6275 = !DILocation(line: 218, column: 69, scope: !6267)
!6276 = !DILocation(line: 219, column: 15, scope: !6267)
!6277 = !DILocation(line: 220, column: 3, scope: !6267)
!6278 = !DISubprogram(name: "__copy_overflow", scope: !4132, file: !4132, line: 228, type: !6253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6279 = distinct !DISubprogram(name: "copy_from_iter", scope: !2904, file: !2904, line: 206, type: !6280, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6282)
!6280 = !DISubroutineType(types: !6281)
!6281 = !{!132, !110, !132, !2902}
!6282 = !{!6283, !6284, !6285}
!6283 = !DILocalVariable(name: "addr", arg: 1, scope: !6279, file: !2904, line: 206, type: !110)
!6284 = !DILocalVariable(name: "bytes", arg: 2, scope: !6279, file: !2904, line: 206, type: !132)
!6285 = !DILocalVariable(name: "i", arg: 3, scope: !6279, file: !2904, line: 206, type: !2902)
!6286 = !DILocation(line: 206, column: 29, scope: !6279)
!6287 = !DILocation(line: 206, column: 42, scope: !6279)
!6288 = !DILocation(line: 206, column: 66, scope: !6279)
!6289 = !DILocation(line: 208, column: 22, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6279, file: !2904, line: 208, column: 6)
!6291 = !DILocation(line: 208, column: 28, scope: !6290)
!6292 = !DILocation(line: 208, column: 6, scope: !6290)
!6293 = !DILocation(line: 208, column: 6, scope: !6279)
!6294 = !DILocation(line: 209, column: 26, scope: !6290)
!6295 = !DILocation(line: 209, column: 32, scope: !6290)
!6296 = !DILocation(line: 209, column: 39, scope: !6290)
!6297 = !DILocation(line: 209, column: 10, scope: !6290)
!6298 = !DILocation(line: 209, column: 3, scope: !6290)
!6299 = !DILocation(line: 210, column: 2, scope: !6279)
!6300 = !DILocation(line: 211, column: 1, scope: !6279)
!6301 = !DISubprogram(name: "_copy_from_iter", scope: !2904, file: !2904, line: 179, type: !6280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6302 = distinct !DISubprogram(name: "kernfs_dentry_node", scope: !56, file: !56, line: 100, type: !6303, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6305)
!6303 = !DISubroutineType(types: !6304)
!6304 = !{!12, !1785}
!6305 = !{!6306}
!6306 = !DILocalVariable(name: "dentry", arg: 1, scope: !6302, file: !56, line: 100, type: !1785)
!6307 = !DILocation(line: 100, column: 69, scope: !6302)
!6308 = !DILocation(line: 102, column: 27, scope: !6309)
!6309 = distinct !DILexicalBlock(scope: !6302, file: !56, line: 102, column: 6)
!6310 = !DILocation(line: 102, column: 6, scope: !6309)
!6311 = !DILocation(line: 102, column: 6, scope: !6302)
!6312 = !DILocation(line: 103, column: 3, scope: !6309)
!6313 = !DILocation(line: 104, column: 17, scope: !6302)
!6314 = !DILocation(line: 104, column: 9, scope: !6302)
!6315 = !DILocation(line: 104, column: 26, scope: !6302)
!6316 = !DILocation(line: 104, column: 2, scope: !6302)
!6317 = !DILocation(line: 105, column: 1, scope: !6302)
!6318 = distinct !DISubprogram(name: "d_really_is_negative", scope: !1787, file: !1787, line: 464, type: !6319, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6321)
!6319 = !DISubroutineType(types: !6320)
!6320 = !{!795, !1847}
!6321 = !{!6322}
!6322 = !DILocalVariable(name: "dentry", arg: 1, scope: !6318, file: !1787, line: 464, type: !1847)
!6323 = !DILocation(line: 464, column: 62, scope: !6318)
!6324 = !DILocation(line: 466, column: 9, scope: !6318)
!6325 = !DILocation(line: 466, column: 17, scope: !6318)
!6326 = !DILocation(line: 466, column: 25, scope: !6318)
!6327 = !DILocation(line: 466, column: 2, scope: !6318)
!6328 = distinct !DISubprogram(name: "d_inode", scope: !1787, file: !1787, line: 514, type: !6329, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6331)
!6329 = !DISubroutineType(types: !6330)
!6330 = !{!1763, !1847}
!6331 = !{!6332}
!6332 = !DILocalVariable(name: "dentry", arg: 1, scope: !6328, file: !1787, line: 514, type: !1847)
!6333 = !DILocation(line: 514, column: 58, scope: !6328)
!6334 = !DILocation(line: 516, column: 9, scope: !6328)
!6335 = !DILocation(line: 516, column: 17, scope: !6328)
!6336 = !DILocation(line: 516, column: 2, scope: !6328)
!6337 = distinct !DISubprogram(name: "kernfs_vma_open", scope: !2, file: !2, line: 352, type: !3049, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6338)
!6338 = !{!6339, !6340, !6341}
!6339 = !DILocalVariable(name: "vma", arg: 1, scope: !6337, file: !2, line: 352, type: !2999)
!6340 = !DILocalVariable(name: "file", scope: !6337, file: !2, line: 354, type: !627)
!6341 = !DILocalVariable(name: "of", scope: !6337, file: !2, line: 355, type: !3931)
!6342 = !DILocation(line: 352, column: 52, scope: !6337)
!6343 = !DILocation(line: 354, column: 2, scope: !6337)
!6344 = !DILocation(line: 354, column: 15, scope: !6337)
!6345 = !DILocation(line: 354, column: 22, scope: !6337)
!6346 = !DILocation(line: 354, column: 27, scope: !6337)
!6347 = !DILocation(line: 355, column: 2, scope: !6337)
!6348 = !DILocation(line: 355, column: 27, scope: !6337)
!6349 = !DILocation(line: 355, column: 42, scope: !6337)
!6350 = !DILocation(line: 355, column: 32, scope: !6337)
!6351 = !DILocation(line: 357, column: 7, scope: !6352)
!6352 = distinct !DILexicalBlock(scope: !6337, file: !2, line: 357, column: 6)
!6353 = !DILocation(line: 357, column: 11, scope: !6352)
!6354 = !DILocation(line: 357, column: 6, scope: !6337)
!6355 = !DILocation(line: 358, column: 3, scope: !6352)
!6356 = !DILocation(line: 360, column: 25, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6337, file: !2, line: 360, column: 6)
!6358 = !DILocation(line: 360, column: 29, scope: !6357)
!6359 = !DILocation(line: 360, column: 7, scope: !6357)
!6360 = !DILocation(line: 360, column: 6, scope: !6337)
!6361 = !DILocation(line: 361, column: 3, scope: !6357)
!6362 = !DILocation(line: 363, column: 6, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6337, file: !2, line: 363, column: 6)
!6364 = !DILocation(line: 363, column: 10, scope: !6363)
!6365 = !DILocation(line: 363, column: 18, scope: !6363)
!6366 = !DILocation(line: 363, column: 6, scope: !6337)
!6367 = !DILocation(line: 364, column: 3, scope: !6363)
!6368 = !DILocation(line: 364, column: 7, scope: !6363)
!6369 = !DILocation(line: 364, column: 15, scope: !6363)
!6370 = !DILocation(line: 364, column: 20, scope: !6363)
!6371 = !DILocation(line: 366, column: 20, scope: !6337)
!6372 = !DILocation(line: 366, column: 24, scope: !6337)
!6373 = !DILocation(line: 366, column: 2, scope: !6337)
!6374 = !DILocation(line: 367, column: 1, scope: !6337)
!6375 = distinct !DISubprogram(name: "kernfs_vma_fault", scope: !2, file: !2, line: 369, type: !3066, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6376)
!6376 = !{!6377, !6378, !6379, !6380}
!6377 = !DILocalVariable(name: "vmf", arg: 1, scope: !6375, file: !2, line: 369, type: !3069)
!6378 = !DILocalVariable(name: "file", scope: !6375, file: !2, line: 371, type: !627)
!6379 = !DILocalVariable(name: "of", scope: !6375, file: !2, line: 372, type: !3931)
!6380 = !DILocalVariable(name: "ret", scope: !6375, file: !2, line: 373, type: !3068)
!6381 = !DILocation(line: 369, column: 53, scope: !6375)
!6382 = !DILocation(line: 371, column: 2, scope: !6375)
!6383 = !DILocation(line: 371, column: 15, scope: !6375)
!6384 = !DILocation(line: 371, column: 22, scope: !6375)
!6385 = !DILocation(line: 371, column: 27, scope: !6375)
!6386 = !DILocation(line: 371, column: 32, scope: !6375)
!6387 = !DILocation(line: 372, column: 2, scope: !6375)
!6388 = !DILocation(line: 372, column: 27, scope: !6375)
!6389 = !DILocation(line: 372, column: 42, scope: !6375)
!6390 = !DILocation(line: 372, column: 32, scope: !6375)
!6391 = !DILocation(line: 373, column: 2, scope: !6375)
!6392 = !DILocation(line: 373, column: 13, scope: !6375)
!6393 = !DILocation(line: 375, column: 7, scope: !6394)
!6394 = distinct !DILexicalBlock(scope: !6375, file: !2, line: 375, column: 6)
!6395 = !DILocation(line: 375, column: 11, scope: !6394)
!6396 = !DILocation(line: 375, column: 6, scope: !6375)
!6397 = !DILocation(line: 376, column: 3, scope: !6394)
!6398 = !DILocation(line: 378, column: 25, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6375, file: !2, line: 378, column: 6)
!6400 = !DILocation(line: 378, column: 29, scope: !6399)
!6401 = !DILocation(line: 378, column: 7, scope: !6399)
!6402 = !DILocation(line: 378, column: 6, scope: !6375)
!6403 = !DILocation(line: 379, column: 3, scope: !6399)
!6404 = !DILocation(line: 381, column: 6, scope: !6375)
!6405 = !DILocation(line: 382, column: 6, scope: !6406)
!6406 = distinct !DILexicalBlock(scope: !6375, file: !2, line: 382, column: 6)
!6407 = !DILocation(line: 382, column: 10, scope: !6406)
!6408 = !DILocation(line: 382, column: 18, scope: !6406)
!6409 = !DILocation(line: 382, column: 6, scope: !6375)
!6410 = !DILocation(line: 383, column: 9, scope: !6406)
!6411 = !DILocation(line: 383, column: 13, scope: !6406)
!6412 = !DILocation(line: 383, column: 21, scope: !6406)
!6413 = !DILocation(line: 383, column: 27, scope: !6406)
!6414 = !DILocation(line: 383, column: 7, scope: !6406)
!6415 = !DILocation(line: 383, column: 3, scope: !6406)
!6416 = !DILocation(line: 385, column: 20, scope: !6375)
!6417 = !DILocation(line: 385, column: 24, scope: !6375)
!6418 = !DILocation(line: 385, column: 2, scope: !6375)
!6419 = !DILocation(line: 386, column: 9, scope: !6375)
!6420 = !DILocation(line: 386, column: 2, scope: !6375)
!6421 = !DILocation(line: 387, column: 1, scope: !6375)
!6422 = distinct !DISubprogram(name: "kernfs_vma_page_mkwrite", scope: !2, file: !2, line: 389, type: !3066, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6423)
!6423 = !{!6424, !6425, !6426, !6427}
!6424 = !DILocalVariable(name: "vmf", arg: 1, scope: !6422, file: !2, line: 389, type: !3069)
!6425 = !DILocalVariable(name: "file", scope: !6422, file: !2, line: 391, type: !627)
!6426 = !DILocalVariable(name: "of", scope: !6422, file: !2, line: 392, type: !3931)
!6427 = !DILocalVariable(name: "ret", scope: !6422, file: !2, line: 393, type: !3068)
!6428 = !DILocation(line: 389, column: 60, scope: !6422)
!6429 = !DILocation(line: 391, column: 2, scope: !6422)
!6430 = !DILocation(line: 391, column: 15, scope: !6422)
!6431 = !DILocation(line: 391, column: 22, scope: !6422)
!6432 = !DILocation(line: 391, column: 27, scope: !6422)
!6433 = !DILocation(line: 391, column: 32, scope: !6422)
!6434 = !DILocation(line: 392, column: 2, scope: !6422)
!6435 = !DILocation(line: 392, column: 27, scope: !6422)
!6436 = !DILocation(line: 392, column: 42, scope: !6422)
!6437 = !DILocation(line: 392, column: 32, scope: !6422)
!6438 = !DILocation(line: 393, column: 2, scope: !6422)
!6439 = !DILocation(line: 393, column: 13, scope: !6422)
!6440 = !DILocation(line: 395, column: 7, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !6422, file: !2, line: 395, column: 6)
!6442 = !DILocation(line: 395, column: 11, scope: !6441)
!6443 = !DILocation(line: 395, column: 6, scope: !6422)
!6444 = !DILocation(line: 396, column: 3, scope: !6441)
!6445 = !DILocation(line: 398, column: 25, scope: !6446)
!6446 = distinct !DILexicalBlock(scope: !6422, file: !2, line: 398, column: 6)
!6447 = !DILocation(line: 398, column: 29, scope: !6446)
!6448 = !DILocation(line: 398, column: 7, scope: !6446)
!6449 = !DILocation(line: 398, column: 6, scope: !6422)
!6450 = !DILocation(line: 399, column: 3, scope: !6446)
!6451 = !DILocation(line: 401, column: 6, scope: !6422)
!6452 = !DILocation(line: 402, column: 6, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6422, file: !2, line: 402, column: 6)
!6454 = !DILocation(line: 402, column: 10, scope: !6453)
!6455 = !DILocation(line: 402, column: 18, scope: !6453)
!6456 = !DILocation(line: 402, column: 6, scope: !6422)
!6457 = !DILocation(line: 403, column: 9, scope: !6453)
!6458 = !DILocation(line: 403, column: 13, scope: !6453)
!6459 = !DILocation(line: 403, column: 21, scope: !6453)
!6460 = !DILocation(line: 403, column: 34, scope: !6453)
!6461 = !DILocation(line: 403, column: 7, scope: !6453)
!6462 = !DILocation(line: 403, column: 3, scope: !6453)
!6463 = !DILocation(line: 405, column: 20, scope: !6453)
!6464 = !DILocation(line: 405, column: 3, scope: !6453)
!6465 = !DILocation(line: 407, column: 20, scope: !6422)
!6466 = !DILocation(line: 407, column: 24, scope: !6422)
!6467 = !DILocation(line: 407, column: 2, scope: !6422)
!6468 = !DILocation(line: 408, column: 9, scope: !6422)
!6469 = !DILocation(line: 408, column: 2, scope: !6422)
!6470 = !DILocation(line: 409, column: 1, scope: !6422)
!6471 = distinct !DISubprogram(name: "kernfs_vma_access", scope: !2, file: !2, line: 411, type: !3144, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6472)
!6472 = !{!6473, !6474, !6475, !6476, !6477, !6478, !6479, !6480}
!6473 = !DILocalVariable(name: "vma", arg: 1, scope: !6471, file: !2, line: 411, type: !2999)
!6474 = !DILocalVariable(name: "addr", arg: 2, scope: !6471, file: !2, line: 411, type: !33)
!6475 = !DILocalVariable(name: "buf", arg: 3, scope: !6471, file: !2, line: 412, type: !110)
!6476 = !DILocalVariable(name: "len", arg: 4, scope: !6471, file: !2, line: 412, type: !22)
!6477 = !DILocalVariable(name: "write", arg: 5, scope: !6471, file: !2, line: 412, type: !22)
!6478 = !DILocalVariable(name: "file", scope: !6471, file: !2, line: 414, type: !627)
!6479 = !DILocalVariable(name: "of", scope: !6471, file: !2, line: 415, type: !3931)
!6480 = !DILocalVariable(name: "ret", scope: !6471, file: !2, line: 416, type: !22)
!6481 = !DILocation(line: 411, column: 53, scope: !6471)
!6482 = !DILocation(line: 411, column: 72, scope: !6471)
!6483 = !DILocation(line: 412, column: 15, scope: !6471)
!6484 = !DILocation(line: 412, column: 24, scope: !6471)
!6485 = !DILocation(line: 412, column: 33, scope: !6471)
!6486 = !DILocation(line: 414, column: 2, scope: !6471)
!6487 = !DILocation(line: 414, column: 15, scope: !6471)
!6488 = !DILocation(line: 414, column: 22, scope: !6471)
!6489 = !DILocation(line: 414, column: 27, scope: !6471)
!6490 = !DILocation(line: 415, column: 2, scope: !6471)
!6491 = !DILocation(line: 415, column: 27, scope: !6471)
!6492 = !DILocation(line: 415, column: 42, scope: !6471)
!6493 = !DILocation(line: 415, column: 32, scope: !6471)
!6494 = !DILocation(line: 416, column: 2, scope: !6471)
!6495 = !DILocation(line: 416, column: 6, scope: !6471)
!6496 = !DILocation(line: 418, column: 7, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !6471, file: !2, line: 418, column: 6)
!6498 = !DILocation(line: 418, column: 11, scope: !6497)
!6499 = !DILocation(line: 418, column: 6, scope: !6471)
!6500 = !DILocation(line: 419, column: 3, scope: !6497)
!6501 = !DILocation(line: 421, column: 25, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6471, file: !2, line: 421, column: 6)
!6503 = !DILocation(line: 421, column: 29, scope: !6502)
!6504 = !DILocation(line: 421, column: 7, scope: !6502)
!6505 = !DILocation(line: 421, column: 6, scope: !6471)
!6506 = !DILocation(line: 422, column: 3, scope: !6502)
!6507 = !DILocation(line: 424, column: 6, scope: !6471)
!6508 = !DILocation(line: 425, column: 6, scope: !6509)
!6509 = distinct !DILexicalBlock(scope: !6471, file: !2, line: 425, column: 6)
!6510 = !DILocation(line: 425, column: 10, scope: !6509)
!6511 = !DILocation(line: 425, column: 18, scope: !6509)
!6512 = !DILocation(line: 425, column: 6, scope: !6471)
!6513 = !DILocation(line: 426, column: 9, scope: !6509)
!6514 = !DILocation(line: 426, column: 13, scope: !6509)
!6515 = !DILocation(line: 426, column: 21, scope: !6509)
!6516 = !DILocation(line: 426, column: 28, scope: !6509)
!6517 = !DILocation(line: 426, column: 33, scope: !6509)
!6518 = !DILocation(line: 426, column: 39, scope: !6509)
!6519 = !DILocation(line: 426, column: 44, scope: !6509)
!6520 = !DILocation(line: 426, column: 49, scope: !6509)
!6521 = !DILocation(line: 426, column: 7, scope: !6509)
!6522 = !DILocation(line: 426, column: 3, scope: !6509)
!6523 = !DILocation(line: 428, column: 20, scope: !6471)
!6524 = !DILocation(line: 428, column: 24, scope: !6471)
!6525 = !DILocation(line: 428, column: 2, scope: !6471)
!6526 = !DILocation(line: 429, column: 9, scope: !6471)
!6527 = !DILocation(line: 429, column: 2, scope: !6471)
!6528 = !DILocation(line: 430, column: 1, scope: !6471)
!6529 = distinct !DISubprogram(name: "kernfs_vma_set_policy", scope: !2, file: !2, line: 433, type: !3152, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6530)
!6530 = !{!6531, !6532, !6533, !6534, !6535}
!6531 = !DILocalVariable(name: "vma", arg: 1, scope: !6529, file: !2, line: 433, type: !2999)
!6532 = !DILocalVariable(name: "new", arg: 2, scope: !6529, file: !2, line: 434, type: !1694)
!6533 = !DILocalVariable(name: "file", scope: !6529, file: !2, line: 436, type: !627)
!6534 = !DILocalVariable(name: "of", scope: !6529, file: !2, line: 437, type: !3931)
!6535 = !DILocalVariable(name: "ret", scope: !6529, file: !2, line: 438, type: !22)
!6536 = !DILocation(line: 433, column: 57, scope: !6529)
!6537 = !DILocation(line: 434, column: 24, scope: !6529)
!6538 = !DILocation(line: 436, column: 2, scope: !6529)
!6539 = !DILocation(line: 436, column: 15, scope: !6529)
!6540 = !DILocation(line: 436, column: 22, scope: !6529)
!6541 = !DILocation(line: 436, column: 27, scope: !6529)
!6542 = !DILocation(line: 437, column: 2, scope: !6529)
!6543 = !DILocation(line: 437, column: 27, scope: !6529)
!6544 = !DILocation(line: 437, column: 42, scope: !6529)
!6545 = !DILocation(line: 437, column: 32, scope: !6529)
!6546 = !DILocation(line: 438, column: 2, scope: !6529)
!6547 = !DILocation(line: 438, column: 6, scope: !6529)
!6548 = !DILocation(line: 440, column: 7, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6529, file: !2, line: 440, column: 6)
!6550 = !DILocation(line: 440, column: 11, scope: !6549)
!6551 = !DILocation(line: 440, column: 6, scope: !6529)
!6552 = !DILocation(line: 441, column: 3, scope: !6549)
!6553 = !DILocation(line: 443, column: 25, scope: !6554)
!6554 = distinct !DILexicalBlock(scope: !6529, file: !2, line: 443, column: 6)
!6555 = !DILocation(line: 443, column: 29, scope: !6554)
!6556 = !DILocation(line: 443, column: 7, scope: !6554)
!6557 = !DILocation(line: 443, column: 6, scope: !6529)
!6558 = !DILocation(line: 444, column: 3, scope: !6554)
!6559 = !DILocation(line: 446, column: 6, scope: !6529)
!6560 = !DILocation(line: 447, column: 6, scope: !6561)
!6561 = distinct !DILexicalBlock(scope: !6529, file: !2, line: 447, column: 6)
!6562 = !DILocation(line: 447, column: 10, scope: !6561)
!6563 = !DILocation(line: 447, column: 18, scope: !6561)
!6564 = !DILocation(line: 447, column: 6, scope: !6529)
!6565 = !DILocation(line: 448, column: 9, scope: !6561)
!6566 = !DILocation(line: 448, column: 13, scope: !6561)
!6567 = !DILocation(line: 448, column: 21, scope: !6561)
!6568 = !DILocation(line: 448, column: 32, scope: !6561)
!6569 = !DILocation(line: 448, column: 37, scope: !6561)
!6570 = !DILocation(line: 448, column: 7, scope: !6561)
!6571 = !DILocation(line: 448, column: 3, scope: !6561)
!6572 = !DILocation(line: 450, column: 20, scope: !6529)
!6573 = !DILocation(line: 450, column: 24, scope: !6529)
!6574 = !DILocation(line: 450, column: 2, scope: !6529)
!6575 = !DILocation(line: 451, column: 9, scope: !6529)
!6576 = !DILocation(line: 451, column: 2, scope: !6529)
!6577 = !DILocation(line: 452, column: 1, scope: !6529)
!6578 = distinct !DISubprogram(name: "kernfs_vma_get_policy", scope: !2, file: !2, line: 454, type: !3156, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6579)
!6579 = !{!6580, !6581, !6582, !6583, !6584}
!6580 = !DILocalVariable(name: "vma", arg: 1, scope: !6578, file: !2, line: 454, type: !2999)
!6581 = !DILocalVariable(name: "addr", arg: 2, scope: !6578, file: !2, line: 455, type: !33)
!6582 = !DILocalVariable(name: "file", scope: !6578, file: !2, line: 457, type: !627)
!6583 = !DILocalVariable(name: "of", scope: !6578, file: !2, line: 458, type: !3931)
!6584 = !DILocalVariable(name: "pol", scope: !6578, file: !2, line: 459, type: !1694)
!6585 = !DILocation(line: 454, column: 71, scope: !6578)
!6586 = !DILocation(line: 455, column: 27, scope: !6578)
!6587 = !DILocation(line: 457, column: 2, scope: !6578)
!6588 = !DILocation(line: 457, column: 15, scope: !6578)
!6589 = !DILocation(line: 457, column: 22, scope: !6578)
!6590 = !DILocation(line: 457, column: 27, scope: !6578)
!6591 = !DILocation(line: 458, column: 2, scope: !6578)
!6592 = !DILocation(line: 458, column: 27, scope: !6578)
!6593 = !DILocation(line: 458, column: 42, scope: !6578)
!6594 = !DILocation(line: 458, column: 32, scope: !6578)
!6595 = !DILocation(line: 459, column: 2, scope: !6578)
!6596 = !DILocation(line: 459, column: 20, scope: !6578)
!6597 = !DILocation(line: 461, column: 7, scope: !6598)
!6598 = distinct !DILexicalBlock(scope: !6578, file: !2, line: 461, column: 6)
!6599 = !DILocation(line: 461, column: 11, scope: !6598)
!6600 = !DILocation(line: 461, column: 6, scope: !6578)
!6601 = !DILocation(line: 462, column: 10, scope: !6598)
!6602 = !DILocation(line: 462, column: 15, scope: !6598)
!6603 = !DILocation(line: 462, column: 3, scope: !6598)
!6604 = !DILocation(line: 464, column: 25, scope: !6605)
!6605 = distinct !DILexicalBlock(scope: !6578, file: !2, line: 464, column: 6)
!6606 = !DILocation(line: 464, column: 29, scope: !6605)
!6607 = !DILocation(line: 464, column: 7, scope: !6605)
!6608 = !DILocation(line: 464, column: 6, scope: !6578)
!6609 = !DILocation(line: 465, column: 10, scope: !6605)
!6610 = !DILocation(line: 465, column: 15, scope: !6605)
!6611 = !DILocation(line: 465, column: 3, scope: !6605)
!6612 = !DILocation(line: 467, column: 8, scope: !6578)
!6613 = !DILocation(line: 467, column: 13, scope: !6578)
!6614 = !DILocation(line: 467, column: 6, scope: !6578)
!6615 = !DILocation(line: 468, column: 6, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6578, file: !2, line: 468, column: 6)
!6617 = !DILocation(line: 468, column: 10, scope: !6616)
!6618 = !DILocation(line: 468, column: 18, scope: !6616)
!6619 = !DILocation(line: 468, column: 6, scope: !6578)
!6620 = !DILocation(line: 469, column: 9, scope: !6616)
!6621 = !DILocation(line: 469, column: 13, scope: !6616)
!6622 = !DILocation(line: 469, column: 21, scope: !6616)
!6623 = !DILocation(line: 469, column: 32, scope: !6616)
!6624 = !DILocation(line: 469, column: 37, scope: !6616)
!6625 = !DILocation(line: 469, column: 7, scope: !6616)
!6626 = !DILocation(line: 469, column: 3, scope: !6616)
!6627 = !DILocation(line: 471, column: 20, scope: !6578)
!6628 = !DILocation(line: 471, column: 24, scope: !6578)
!6629 = !DILocation(line: 471, column: 2, scope: !6578)
!6630 = !DILocation(line: 472, column: 9, scope: !6578)
!6631 = !DILocation(line: 472, column: 2, scope: !6578)
!6632 = !DILocation(line: 473, column: 1, scope: !6578)
!6633 = !DISubprogram(name: "file_update_time", scope: !197, file: !197, line: 3233, type: !6634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6634 = !DISubroutineType(types: !6635)
!6635 = !{!22, !627}
!6636 = distinct !DISubprogram(name: "kzalloc", scope: !4061, file: !4061, line: 719, type: !5931, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6637)
!6637 = !{!6638, !6639}
!6638 = !DILocalVariable(name: "size", arg: 1, scope: !6636, file: !4061, line: 719, type: !132)
!6639 = !DILocalVariable(name: "flags", arg: 2, scope: !6636, file: !4061, line: 719, type: !108)
!6640 = !DILocation(line: 719, column: 52, scope: !6636)
!6641 = !DILocation(line: 719, column: 64, scope: !6636)
!6642 = !DILocation(line: 721, column: 17, scope: !6636)
!6643 = !DILocation(line: 721, column: 23, scope: !6636)
!6644 = !DILocation(line: 721, column: 29, scope: !6636)
!6645 = !DILocation(line: 721, column: 9, scope: !6636)
!6646 = !DILocation(line: 721, column: 2, scope: !6636)
!6647 = !DISubprogram(name: "__mutex_init", scope: !146, file: !146, line: 121, type: !6648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6648 = !DISubroutineType(types: !6649)
!6649 = !{null, !4183, !26, !5382}
!6650 = !DISubprogram(name: "seq_open", scope: !127, file: !127, line: 109, type: !6651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6651 = !DISubroutineType(types: !6652)
!6652 = !{!22, !627, !171}
!6653 = !DILocation(line: 563, column: 53, scope: !4175)
!6654 = !DILocation(line: 564, column: 30, scope: !4175)
!6655 = !DILocation(line: 566, column: 2, scope: !4175)
!6656 = !DILocation(line: 566, column: 27, scope: !4175)
!6657 = !DILocation(line: 567, column: 2, scope: !4175)
!6658 = !DILocation(line: 567, column: 16, scope: !4175)
!6659 = !DILocation(line: 569, column: 38, scope: !4175)
!6660 = !DILocation(line: 569, column: 10, scope: !4175)
!6661 = !DILocation(line: 569, column: 8, scope: !4175)
!6662 = !DILocation(line: 570, column: 37, scope: !4175)
!6663 = !DILocation(line: 570, column: 7, scope: !4175)
!6664 = !DILocation(line: 570, column: 5, scope: !4175)
!6665 = !DILocation(line: 572, column: 7, scope: !4187)
!6666 = !DILocation(line: 572, column: 6, scope: !4175)
!6667 = !DILocation(line: 574, column: 8, scope: !4186)
!6668 = !DILocation(line: 574, column: 6, scope: !4186)
!6669 = !DILocation(line: 575, column: 8, scope: !6670)
!6670 = distinct !DILexicalBlock(scope: !4186, file: !2, line: 575, column: 7)
!6671 = !DILocation(line: 575, column: 7, scope: !4186)
!6672 = !DILocation(line: 576, column: 17, scope: !6673)
!6673 = distinct !DILexicalBlock(scope: !6670, file: !2, line: 575, column: 12)
!6674 = !DILocation(line: 576, column: 4, scope: !6673)
!6675 = !DILocation(line: 577, column: 4, scope: !6673)
!6676 = !DILocation(line: 579, column: 15, scope: !4186)
!6677 = !DILocation(line: 579, column: 19, scope: !4186)
!6678 = !DILocation(line: 579, column: 3, scope: !4186)
!6679 = !DILocation(line: 580, column: 3, scope: !4186)
!6680 = !DILocation(line: 580, column: 3, scope: !6681)
!6681 = distinct !DILexicalBlock(scope: !4186, file: !2, line: 580, column: 3)
!6682 = !DILocation(line: 581, column: 19, scope: !4186)
!6683 = !DILocation(line: 581, column: 23, scope: !4186)
!6684 = !DILocation(line: 581, column: 3, scope: !4186)
!6685 = !DILocation(line: 582, column: 3, scope: !4186)
!6686 = !DILocation(line: 582, column: 3, scope: !4185)
!6687 = !DILocation(line: 582, column: 3, scope: !6688)
!6688 = distinct !DILexicalBlock(scope: !4185, file: !2, line: 582, column: 3)
!6689 = !DILocation(line: 582, column: 3, scope: !6690)
!6690 = distinct !DILexicalBlock(scope: !6688, file: !2, line: 582, column: 3)
!6691 = !DILocation(line: 582, column: 3, scope: !6692)
!6692 = distinct !DILexicalBlock(scope: !6690, file: !2, line: 582, column: 3)
!6693 = !DILocation(line: 582, column: 3, scope: !6694)
!6694 = distinct !DILexicalBlock(scope: !6690, file: !2, line: 582, column: 3)
!6695 = !DILocation(line: 582, column: 3, scope: !6696)
!6696 = distinct !DILexicalBlock(scope: !6688, file: !2, line: 582, column: 3)
!6697 = !DILocation(line: 582, column: 3, scope: !6698)
!6698 = distinct !DILexicalBlock(scope: !6696, file: !2, line: 582, column: 3)
!6699 = !DILocation(line: 582, column: 3, scope: !6700)
!6700 = distinct !DILexicalBlock(scope: !6696, file: !2, line: 582, column: 3)
!6701 = !DILocation(line: 582, column: 3, scope: !6702)
!6702 = distinct !DILexicalBlock(scope: !6700, file: !2, line: 582, column: 3)
!6703 = !{i64 2154773789}
!6704 = !DILocation(line: 582, column: 3, scope: !6705)
!6705 = distinct !DILexicalBlock(scope: !6700, file: !2, line: 582, column: 3)
!6706 = !DILocation(line: 582, column: 3, scope: !6707)
!6707 = distinct !DILexicalBlock(scope: !6705, file: !2, line: 582, column: 3)
!6708 = !DILocation(line: 582, column: 3, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !6705, file: !2, line: 582, column: 3)
!6710 = !DILocation(line: 583, column: 2, scope: !4186)
!6711 = !DILocation(line: 585, column: 17, scope: !4175)
!6712 = !DILocation(line: 585, column: 21, scope: !4175)
!6713 = !DILocation(line: 585, column: 28, scope: !4175)
!6714 = !DILocation(line: 585, column: 32, scope: !4175)
!6715 = !DILocation(line: 585, column: 2, scope: !4175)
!6716 = !DILocation(line: 586, column: 6, scope: !6717)
!6717 = distinct !DILexicalBlock(scope: !4175, file: !2, line: 586, column: 6)
!6718 = !DILocation(line: 586, column: 10, scope: !6717)
!6719 = !DILocation(line: 586, column: 16, scope: !6717)
!6720 = !DILocation(line: 586, column: 6, scope: !4175)
!6721 = !DILocation(line: 587, column: 3, scope: !6717)
!6722 = !DILocation(line: 587, column: 7, scope: !6717)
!6723 = !DILocation(line: 587, column: 20, scope: !6717)
!6724 = !DILocation(line: 589, column: 15, scope: !4175)
!6725 = !DILocation(line: 589, column: 2, scope: !4175)
!6726 = !DILocation(line: 590, column: 2, scope: !4175)
!6727 = !DILocation(line: 591, column: 1, scope: !4175)
!6728 = distinct !DISubprogram(name: "kernfs_unlink_open_file", scope: !2, file: !2, line: 607, type: !6729, scopeLine: 610, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6731)
!6729 = !DISubroutineType(types: !6730)
!6730 = !{null, !12, !3931, !795}
!6731 = !{!6732, !6733, !6734, !6735, !6736, !6737, !6743, !6746, !6750}
!6732 = !DILocalVariable(name: "kn", arg: 1, scope: !6728, file: !2, line: 607, type: !12)
!6733 = !DILocalVariable(name: "of", arg: 2, scope: !6728, file: !2, line: 608, type: !3931)
!6734 = !DILocalVariable(name: "open_failed", arg: 3, scope: !6728, file: !2, line: 609, type: !795)
!6735 = !DILocalVariable(name: "on", scope: !6728, file: !2, line: 611, type: !3971)
!6736 = !DILocalVariable(name: "mutex", scope: !6728, file: !2, line: 612, type: !4183)
!6737 = !DILocalVariable(name: "__ret_warn_on", scope: !6738, file: !2, line: 624, type: !22)
!6738 = distinct !DILexicalBlock(scope: !6739, file: !2, line: 624, column: 4)
!6739 = distinct !DILexicalBlock(scope: !6740, file: !2, line: 623, column: 39)
!6740 = distinct !DILexicalBlock(scope: !6741, file: !2, line: 623, column: 7)
!6741 = distinct !DILexicalBlock(scope: !6742, file: !2, line: 622, column: 10)
!6742 = distinct !DILexicalBlock(scope: !6728, file: !2, line: 622, column: 6)
!6743 = !DILocalVariable(name: "__flags", scope: !6744, file: !2, line: 624, type: !22)
!6744 = distinct !DILexicalBlock(scope: !6745, file: !2, line: 624, column: 4)
!6745 = distinct !DILexicalBlock(scope: !6738, file: !2, line: 624, column: 4)
!6746 = !DILocalVariable(name: "_r_a_p__v", scope: !6747, file: !2, line: 634, type: !4109)
!6747 = distinct !DILexicalBlock(scope: !6748, file: !2, line: 634, column: 3)
!6748 = distinct !DILexicalBlock(scope: !6749, file: !2, line: 633, column: 30)
!6749 = distinct !DILexicalBlock(scope: !6728, file: !2, line: 633, column: 6)
!6750 = !DILocalVariable(name: "___p", scope: !6751, file: !2, line: 635, type: !3971)
!6751 = distinct !DILexicalBlock(scope: !6748, file: !2, line: 635, column: 3)
!6752 = !DILocation(line: 607, column: 57, scope: !6728)
!6753 = !DILocation(line: 608, column: 34, scope: !6728)
!6754 = !DILocation(line: 609, column: 14, scope: !6728)
!6755 = !DILocation(line: 611, column: 2, scope: !6728)
!6756 = !DILocation(line: 611, column: 27, scope: !6728)
!6757 = !DILocation(line: 612, column: 2, scope: !6728)
!6758 = !DILocation(line: 612, column: 16, scope: !6728)
!6759 = !DILocation(line: 614, column: 38, scope: !6728)
!6760 = !DILocation(line: 614, column: 10, scope: !6728)
!6761 = !DILocation(line: 614, column: 8, scope: !6728)
!6762 = !DILocation(line: 616, column: 37, scope: !6728)
!6763 = !DILocation(line: 616, column: 7, scope: !6728)
!6764 = !DILocation(line: 616, column: 5, scope: !6728)
!6765 = !DILocation(line: 617, column: 7, scope: !6766)
!6766 = distinct !DILexicalBlock(scope: !6728, file: !2, line: 617, column: 6)
!6767 = !DILocation(line: 617, column: 6, scope: !6728)
!6768 = !DILocation(line: 618, column: 16, scope: !6769)
!6769 = distinct !DILexicalBlock(scope: !6766, file: !2, line: 617, column: 11)
!6770 = !DILocation(line: 618, column: 3, scope: !6769)
!6771 = !DILocation(line: 619, column: 3, scope: !6769)
!6772 = !DILocation(line: 622, column: 6, scope: !6742)
!6773 = !DILocation(line: 622, column: 6, scope: !6728)
!6774 = !DILocation(line: 623, column: 7, scope: !6740)
!6775 = !DILocation(line: 623, column: 11, scope: !6740)
!6776 = !DILocation(line: 623, column: 17, scope: !6740)
!6777 = !DILocation(line: 623, column: 7, scope: !6741)
!6778 = !DILocation(line: 624, column: 4, scope: !6738)
!6779 = !DILocation(line: 624, column: 4, scope: !6745)
!6780 = !DILocation(line: 624, column: 4, scope: !6744)
!6781 = !DILocation(line: 624, column: 4, scope: !6782)
!6782 = distinct !DILexicalBlock(scope: !6744, file: !2, line: 624, column: 4)
!6783 = !DILocation(line: 624, column: 4, scope: !6784)
!6784 = distinct !DILexicalBlock(scope: !6744, file: !2, line: 624, column: 4)
!6785 = !{i64 2154776785, i64 2154776814, i64 2154776860, i64 2154776918, i64 2154776972, i64 2154777026, i64 2154777081, i64 2154777112, i64 2154777420, i64 2154777426, i64 2154777473, i64 2154777496, i64 2154777522}
!6786 = !DILocation(line: 624, column: 4, scope: !6787)
!6787 = distinct !DILexicalBlock(scope: !6744, file: !2, line: 624, column: 4)
!6788 = !DILocation(line: 624, column: 4, scope: !6739)
!6789 = !DILocation(line: 625, column: 8, scope: !6790)
!6790 = distinct !DILexicalBlock(scope: !6739, file: !2, line: 625, column: 8)
!6791 = !DILocation(line: 625, column: 8, scope: !6739)
!6792 = !DILocation(line: 626, column: 5, scope: !6790)
!6793 = !DILocation(line: 626, column: 9, scope: !6790)
!6794 = !DILocation(line: 626, column: 22, scope: !6790)
!6795 = !DILocation(line: 627, column: 3, scope: !6739)
!6796 = !DILocation(line: 628, column: 7, scope: !6797)
!6797 = distinct !DILexicalBlock(scope: !6741, file: !2, line: 628, column: 7)
!6798 = !DILocation(line: 628, column: 11, scope: !6797)
!6799 = !DILocation(line: 628, column: 7, scope: !6741)
!6800 = !DILocation(line: 629, column: 4, scope: !6797)
!6801 = !DILocation(line: 629, column: 8, scope: !6797)
!6802 = !DILocation(line: 629, column: 18, scope: !6797)
!6803 = !DILocation(line: 630, column: 13, scope: !6741)
!6804 = !DILocation(line: 630, column: 17, scope: !6741)
!6805 = !DILocation(line: 630, column: 3, scope: !6741)
!6806 = !DILocation(line: 631, column: 2, scope: !6741)
!6807 = !DILocation(line: 633, column: 18, scope: !6749)
!6808 = !DILocation(line: 633, column: 22, scope: !6749)
!6809 = !DILocation(line: 633, column: 6, scope: !6749)
!6810 = !DILocation(line: 633, column: 6, scope: !6728)
!6811 = !DILocation(line: 634, column: 3, scope: !6748)
!6812 = !DILocation(line: 634, column: 3, scope: !6747)
!6813 = !DILocation(line: 634, column: 3, scope: !6814)
!6814 = distinct !DILexicalBlock(scope: !6747, file: !2, line: 634, column: 3)
!6815 = !DILocation(line: 634, column: 3, scope: !6816)
!6816 = distinct !DILexicalBlock(scope: !6814, file: !2, line: 634, column: 3)
!6817 = !DILocation(line: 634, column: 3, scope: !6818)
!6818 = distinct !DILexicalBlock(scope: !6816, file: !2, line: 634, column: 3)
!6819 = !DILocation(line: 634, column: 3, scope: !6820)
!6820 = distinct !DILexicalBlock(scope: !6816, file: !2, line: 634, column: 3)
!6821 = !DILocation(line: 634, column: 3, scope: !6822)
!6822 = distinct !DILexicalBlock(scope: !6814, file: !2, line: 634, column: 3)
!6823 = !DILocation(line: 634, column: 3, scope: !6824)
!6824 = distinct !DILexicalBlock(scope: !6822, file: !2, line: 634, column: 3)
!6825 = !DILocation(line: 634, column: 3, scope: !6826)
!6826 = distinct !DILexicalBlock(scope: !6822, file: !2, line: 634, column: 3)
!6827 = !DILocation(line: 634, column: 3, scope: !6828)
!6828 = distinct !DILexicalBlock(scope: !6826, file: !2, line: 634, column: 3)
!6829 = !{i64 2154782878}
!6830 = !DILocation(line: 634, column: 3, scope: !6831)
!6831 = distinct !DILexicalBlock(scope: !6826, file: !2, line: 634, column: 3)
!6832 = !DILocation(line: 634, column: 3, scope: !6833)
!6833 = distinct !DILexicalBlock(scope: !6831, file: !2, line: 634, column: 3)
!6834 = !DILocation(line: 634, column: 3, scope: !6835)
!6835 = distinct !DILexicalBlock(scope: !6831, file: !2, line: 634, column: 3)
!6836 = !DILocation(line: 635, column: 3, scope: !6748)
!6837 = !DILocation(line: 635, column: 3, scope: !6751)
!6838 = !DILocation(line: 635, column: 3, scope: !6839)
!6839 = distinct !DILexicalBlock(scope: !6751, file: !2, line: 635, column: 3)
!6840 = !DILocation(line: 635, column: 3, scope: !6841)
!6841 = distinct !DILexicalBlock(scope: !6839, file: !2, line: 635, column: 3)
!6842 = !DILocation(line: 635, column: 3, scope: !6843)
!6843 = distinct !DILexicalBlock(scope: !6841, file: !2, line: 635, column: 3)
!6844 = !DILocation(line: 636, column: 2, scope: !6748)
!6845 = !DILocation(line: 638, column: 15, scope: !6728)
!6846 = !DILocation(line: 638, column: 2, scope: !6728)
!6847 = !DILocation(line: 639, column: 1, scope: !6728)
!6848 = !DISubprogram(name: "seq_release", scope: !127, file: !127, line: 113, type: !3172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6849 = distinct !DISubprogram(name: "kernfs_seq_start", scope: !2, file: !2, line: 145, type: !177, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6850)
!6850 = !{!6851, !6852, !6853, !6854, !6855}
!6851 = !DILocalVariable(name: "sf", arg: 1, scope: !6849, file: !2, line: 145, type: !125)
!6852 = !DILocalVariable(name: "ppos", arg: 2, scope: !6849, file: !2, line: 145, type: !179)
!6853 = !DILocalVariable(name: "of", scope: !6849, file: !2, line: 147, type: !3931)
!6854 = !DILocalVariable(name: "ops", scope: !6849, file: !2, line: 148, type: !3923)
!6855 = !DILocalVariable(name: "next", scope: !6856, file: !2, line: 160, type: !110)
!6856 = distinct !DILexicalBlock(scope: !6857, file: !2, line: 159, column: 22)
!6857 = distinct !DILexicalBlock(scope: !6849, file: !2, line: 159, column: 6)
!6858 = !DILocation(line: 145, column: 48, scope: !6849)
!6859 = !DILocation(line: 145, column: 60, scope: !6849)
!6860 = !DILocation(line: 147, column: 2, scope: !6849)
!6861 = !DILocation(line: 147, column: 27, scope: !6849)
!6862 = !DILocation(line: 147, column: 32, scope: !6849)
!6863 = !DILocation(line: 147, column: 36, scope: !6849)
!6864 = !DILocation(line: 148, column: 2, scope: !6849)
!6865 = !DILocation(line: 148, column: 27, scope: !6849)
!6866 = !DILocation(line: 154, column: 14, scope: !6849)
!6867 = !DILocation(line: 154, column: 18, scope: !6849)
!6868 = !DILocation(line: 154, column: 2, scope: !6849)
!6869 = !DILocation(line: 155, column: 25, scope: !6870)
!6870 = distinct !DILexicalBlock(scope: !6849, file: !2, line: 155, column: 6)
!6871 = !DILocation(line: 155, column: 29, scope: !6870)
!6872 = !DILocation(line: 155, column: 7, scope: !6870)
!6873 = !DILocation(line: 155, column: 6, scope: !6849)
!6874 = !DILocation(line: 156, column: 10, scope: !6870)
!6875 = !DILocation(line: 156, column: 3, scope: !6870)
!6876 = !DILocation(line: 158, column: 19, scope: !6849)
!6877 = !DILocation(line: 158, column: 23, scope: !6849)
!6878 = !DILocation(line: 158, column: 8, scope: !6849)
!6879 = !DILocation(line: 158, column: 6, scope: !6849)
!6880 = !DILocation(line: 159, column: 6, scope: !6857)
!6881 = !DILocation(line: 159, column: 11, scope: !6857)
!6882 = !DILocation(line: 159, column: 6, scope: !6849)
!6883 = !DILocation(line: 160, column: 3, scope: !6856)
!6884 = !DILocation(line: 160, column: 9, scope: !6856)
!6885 = !DILocation(line: 160, column: 16, scope: !6856)
!6886 = !DILocation(line: 160, column: 21, scope: !6856)
!6887 = !DILocation(line: 160, column: 31, scope: !6856)
!6888 = !DILocation(line: 160, column: 35, scope: !6856)
!6889 = !DILocation(line: 162, column: 7, scope: !6890)
!6890 = distinct !DILexicalBlock(scope: !6856, file: !2, line: 162, column: 7)
!6891 = !DILocation(line: 162, column: 15, scope: !6890)
!6892 = !DILocation(line: 162, column: 12, scope: !6890)
!6893 = !DILocation(line: 162, column: 7, scope: !6856)
!6894 = !DILocation(line: 163, column: 27, scope: !6890)
!6895 = !DILocation(line: 163, column: 31, scope: !6890)
!6896 = !DILocation(line: 163, column: 4, scope: !6890)
!6897 = !DILocation(line: 164, column: 10, scope: !6856)
!6898 = !DILocation(line: 164, column: 3, scope: !6856)
!6899 = !DILocation(line: 165, column: 2, scope: !6857)
!6900 = !DILocation(line: 166, column: 22, scope: !6849)
!6901 = !DILocation(line: 166, column: 26, scope: !6849)
!6902 = !DILocation(line: 166, column: 9, scope: !6849)
!6903 = !DILocation(line: 166, column: 2, scope: !6849)
!6904 = !DILocation(line: 167, column: 1, scope: !6849)
!6905 = distinct !DISubprogram(name: "kernfs_seq_stop", scope: !2, file: !2, line: 190, type: !182, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6906)
!6906 = !{!6907, !6908, !6909}
!6907 = !DILocalVariable(name: "sf", arg: 1, scope: !6905, file: !2, line: 190, type: !125)
!6908 = !DILocalVariable(name: "v", arg: 2, scope: !6905, file: !2, line: 190, type: !110)
!6909 = !DILocalVariable(name: "of", scope: !6905, file: !2, line: 192, type: !3931)
!6910 = !DILocation(line: 190, column: 46, scope: !6905)
!6911 = !DILocation(line: 190, column: 56, scope: !6905)
!6912 = !DILocation(line: 192, column: 2, scope: !6905)
!6913 = !DILocation(line: 192, column: 27, scope: !6905)
!6914 = !DILocation(line: 192, column: 32, scope: !6905)
!6915 = !DILocation(line: 192, column: 36, scope: !6905)
!6916 = !DILocation(line: 194, column: 6, scope: !6917)
!6917 = distinct !DILexicalBlock(scope: !6905, file: !2, line: 194, column: 6)
!6918 = !DILocation(line: 194, column: 11, scope: !6917)
!6919 = !DILocation(line: 194, column: 8, scope: !6917)
!6920 = !DILocation(line: 194, column: 6, scope: !6905)
!6921 = !DILocation(line: 195, column: 26, scope: !6917)
!6922 = !DILocation(line: 195, column: 30, scope: !6917)
!6923 = !DILocation(line: 195, column: 3, scope: !6917)
!6924 = !DILocation(line: 196, column: 16, scope: !6905)
!6925 = !DILocation(line: 196, column: 20, scope: !6905)
!6926 = !DILocation(line: 196, column: 2, scope: !6905)
!6927 = !DILocation(line: 197, column: 1, scope: !6905)
!6928 = distinct !DISubprogram(name: "kernfs_seq_next", scope: !2, file: !2, line: 169, type: !186, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6929)
!6929 = !{!6930, !6931, !6932, !6933, !6934, !6935}
!6930 = !DILocalVariable(name: "sf", arg: 1, scope: !6928, file: !2, line: 169, type: !125)
!6931 = !DILocalVariable(name: "v", arg: 2, scope: !6928, file: !2, line: 169, type: !110)
!6932 = !DILocalVariable(name: "ppos", arg: 3, scope: !6928, file: !2, line: 169, type: !179)
!6933 = !DILocalVariable(name: "of", scope: !6928, file: !2, line: 171, type: !3931)
!6934 = !DILocalVariable(name: "ops", scope: !6928, file: !2, line: 172, type: !3923)
!6935 = !DILocalVariable(name: "next", scope: !6936, file: !2, line: 175, type: !110)
!6936 = distinct !DILexicalBlock(scope: !6937, file: !2, line: 174, column: 21)
!6937 = distinct !DILexicalBlock(scope: !6928, file: !2, line: 174, column: 6)
!6938 = !DILocation(line: 169, column: 47, scope: !6928)
!6939 = !DILocation(line: 169, column: 57, scope: !6928)
!6940 = !DILocation(line: 169, column: 68, scope: !6928)
!6941 = !DILocation(line: 171, column: 2, scope: !6928)
!6942 = !DILocation(line: 171, column: 27, scope: !6928)
!6943 = !DILocation(line: 171, column: 32, scope: !6928)
!6944 = !DILocation(line: 171, column: 36, scope: !6928)
!6945 = !DILocation(line: 172, column: 2, scope: !6928)
!6946 = !DILocation(line: 172, column: 27, scope: !6928)
!6947 = !DILocation(line: 172, column: 44, scope: !6928)
!6948 = !DILocation(line: 172, column: 48, scope: !6928)
!6949 = !DILocation(line: 172, column: 33, scope: !6928)
!6950 = !DILocation(line: 174, column: 6, scope: !6937)
!6951 = !DILocation(line: 174, column: 11, scope: !6937)
!6952 = !DILocation(line: 174, column: 6, scope: !6928)
!6953 = !DILocation(line: 175, column: 3, scope: !6936)
!6954 = !DILocation(line: 175, column: 9, scope: !6936)
!6955 = !DILocation(line: 175, column: 16, scope: !6936)
!6956 = !DILocation(line: 175, column: 21, scope: !6936)
!6957 = !DILocation(line: 175, column: 30, scope: !6936)
!6958 = !DILocation(line: 175, column: 34, scope: !6936)
!6959 = !DILocation(line: 175, column: 37, scope: !6936)
!6960 = !DILocation(line: 177, column: 7, scope: !6961)
!6961 = distinct !DILexicalBlock(scope: !6936, file: !2, line: 177, column: 7)
!6962 = !DILocation(line: 177, column: 15, scope: !6961)
!6963 = !DILocation(line: 177, column: 12, scope: !6961)
!6964 = !DILocation(line: 177, column: 7, scope: !6936)
!6965 = !DILocation(line: 178, column: 27, scope: !6961)
!6966 = !DILocation(line: 178, column: 31, scope: !6961)
!6967 = !DILocation(line: 178, column: 4, scope: !6961)
!6968 = !DILocation(line: 179, column: 10, scope: !6936)
!6969 = !DILocation(line: 179, column: 3, scope: !6936)
!6970 = !DILocation(line: 180, column: 2, scope: !6937)
!6971 = !DILocation(line: 185, column: 6, scope: !6972)
!6972 = distinct !DILexicalBlock(scope: !6937, file: !2, line: 180, column: 9)
!6973 = !DILocation(line: 185, column: 3, scope: !6972)
!6974 = !DILocation(line: 186, column: 3, scope: !6972)
!6975 = !DILocation(line: 188, column: 1, scope: !6928)
!6976 = distinct !DISubprogram(name: "kernfs_seq_show", scope: !2, file: !2, line: 199, type: !190, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !6977)
!6977 = !{!6978, !6979, !6980}
!6978 = !DILocalVariable(name: "sf", arg: 1, scope: !6976, file: !2, line: 199, type: !125)
!6979 = !DILocalVariable(name: "v", arg: 2, scope: !6976, file: !2, line: 199, type: !110)
!6980 = !DILocalVariable(name: "of", scope: !6976, file: !2, line: 201, type: !3931)
!6981 = !DILocation(line: 199, column: 45, scope: !6976)
!6982 = !DILocation(line: 199, column: 55, scope: !6976)
!6983 = !DILocation(line: 201, column: 2, scope: !6976)
!6984 = !DILocation(line: 201, column: 27, scope: !6976)
!6985 = !DILocation(line: 201, column: 32, scope: !6976)
!6986 = !DILocation(line: 201, column: 36, scope: !6976)
!6987 = !DILocation(line: 203, column: 33, scope: !6976)
!6988 = !DILocation(line: 203, column: 27, scope: !6976)
!6989 = !DILocation(line: 203, column: 38, scope: !6976)
!6990 = !DILocation(line: 203, column: 14, scope: !6976)
!6991 = !DILocation(line: 203, column: 2, scope: !6976)
!6992 = !DILocation(line: 203, column: 6, scope: !6976)
!6993 = !DILocation(line: 203, column: 12, scope: !6976)
!6994 = !DILocation(line: 205, column: 9, scope: !6976)
!6995 = !DILocation(line: 205, column: 13, scope: !6976)
!6996 = !DILocation(line: 205, column: 17, scope: !6976)
!6997 = !DILocation(line: 205, column: 22, scope: !6976)
!6998 = !DILocation(line: 205, column: 27, scope: !6976)
!6999 = !DILocation(line: 205, column: 36, scope: !6976)
!7000 = !DILocation(line: 205, column: 40, scope: !6976)
!7001 = !DILocation(line: 206, column: 1, scope: !6976)
!7002 = !DILocation(line: 205, column: 2, scope: !6976)
!7003 = distinct !DISubprogram(name: "kernfs_seq_stop_active", scope: !2, file: !2, line: 135, type: !182, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !7004)
!7004 = !{!7005, !7006, !7007, !7008}
!7005 = !DILocalVariable(name: "sf", arg: 1, scope: !7003, file: !2, line: 135, type: !125)
!7006 = !DILocalVariable(name: "v", arg: 2, scope: !7003, file: !2, line: 135, type: !110)
!7007 = !DILocalVariable(name: "of", scope: !7003, file: !2, line: 137, type: !3931)
!7008 = !DILocalVariable(name: "ops", scope: !7003, file: !2, line: 138, type: !3923)
!7009 = !DILocation(line: 135, column: 53, scope: !7003)
!7010 = !DILocation(line: 135, column: 63, scope: !7003)
!7011 = !DILocation(line: 137, column: 2, scope: !7003)
!7012 = !DILocation(line: 137, column: 27, scope: !7003)
!7013 = !DILocation(line: 137, column: 32, scope: !7003)
!7014 = !DILocation(line: 137, column: 36, scope: !7003)
!7015 = !DILocation(line: 138, column: 2, scope: !7003)
!7016 = !DILocation(line: 138, column: 27, scope: !7003)
!7017 = !DILocation(line: 138, column: 44, scope: !7003)
!7018 = !DILocation(line: 138, column: 48, scope: !7003)
!7019 = !DILocation(line: 138, column: 33, scope: !7003)
!7020 = !DILocation(line: 140, column: 6, scope: !7021)
!7021 = distinct !DILexicalBlock(scope: !7003, file: !2, line: 140, column: 6)
!7022 = !DILocation(line: 140, column: 11, scope: !7021)
!7023 = !DILocation(line: 140, column: 6, scope: !7003)
!7024 = !DILocation(line: 141, column: 3, scope: !7021)
!7025 = !DILocation(line: 141, column: 8, scope: !7021)
!7026 = !DILocation(line: 141, column: 17, scope: !7021)
!7027 = !DILocation(line: 141, column: 21, scope: !7021)
!7028 = !DILocation(line: 142, column: 20, scope: !7003)
!7029 = !DILocation(line: 142, column: 24, scope: !7003)
!7030 = !DILocation(line: 142, column: 2, scope: !7003)
!7031 = !DILocation(line: 143, column: 1, scope: !7003)
!7032 = !DISubprogram(name: "single_start", scope: !127, file: !127, line: 165, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7033 = distinct !DISubprogram(name: "atomic_set", scope: !4272, file: !4272, line: 65, type: !7034, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !7036)
!7034 = !DISubroutineType(types: !7035)
!7035 = !{null, !4738, !22}
!7036 = !{!7037, !7038}
!7037 = !DILocalVariable(name: "v", arg: 1, scope: !7033, file: !4272, line: 65, type: !4738)
!7038 = !DILocalVariable(name: "i", arg: 2, scope: !7033, file: !4272, line: 65, type: !22)
!7039 = !DILocation(line: 65, column: 22, scope: !7033)
!7040 = !DILocation(line: 65, column: 29, scope: !7033)
!7041 = !DILocation(line: 67, column: 26, scope: !7033)
!7042 = !DILocation(line: 67, column: 2, scope: !7033)
!7043 = !DILocation(line: 68, column: 17, scope: !7033)
!7044 = !DILocation(line: 68, column: 20, scope: !7033)
!7045 = !DILocation(line: 68, column: 2, scope: !7033)
!7046 = !DILocation(line: 69, column: 1, scope: !7033)
!7047 = !DISubprogram(name: "__init_waitqueue_head", scope: !280, file: !280, line: 64, type: !7048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7048 = !DISubroutineType(types: !7049)
!7049 = !{null, !4750, !26, !5382}
!7050 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !7051, file: !7051, line: 35, type: !7052, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !7054)
!7051 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!7052 = !DISubroutineType(types: !7053)
!7053 = !{null, !168}
!7054 = !{!7055}
!7055 = !DILocalVariable(name: "list", arg: 1, scope: !7050, file: !7051, line: 35, type: !168)
!7056 = !DILocation(line: 35, column: 53, scope: !7050)
!7057 = !DILocation(line: 37, column: 2, scope: !7050)
!7058 = !DILocation(line: 37, column: 2, scope: !7059)
!7059 = distinct !DILexicalBlock(scope: !7050, file: !7051, line: 37, column: 2)
!7060 = !DILocation(line: 37, column: 2, scope: !7061)
!7061 = distinct !DILexicalBlock(scope: !7059, file: !7051, line: 37, column: 2)
!7062 = !DILocation(line: 37, column: 2, scope: !7063)
!7063 = distinct !DILexicalBlock(scope: !7059, file: !7051, line: 37, column: 2)
!7064 = !DILocation(line: 38, column: 2, scope: !7050)
!7065 = !DILocation(line: 38, column: 2, scope: !7066)
!7066 = distinct !DILexicalBlock(scope: !7050, file: !7051, line: 38, column: 2)
!7067 = !DILocation(line: 38, column: 2, scope: !7068)
!7068 = distinct !DILexicalBlock(scope: !7066, file: !7051, line: 38, column: 2)
!7069 = !DILocation(line: 38, column: 2, scope: !7070)
!7070 = distinct !DILexicalBlock(scope: !7066, file: !7051, line: 38, column: 2)
!7071 = !DILocation(line: 39, column: 1, scope: !7050)
!7072 = distinct !DISubprogram(name: "list_add_tail", scope: !7051, file: !7051, line: 181, type: !7073, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !7075)
!7073 = !DISubroutineType(types: !7074)
!7074 = !{null, !168, !168}
!7075 = !{!7076, !7077}
!7076 = !DILocalVariable(name: "new", arg: 1, scope: !7072, file: !7051, line: 181, type: !168)
!7077 = !DILocalVariable(name: "head", arg: 2, scope: !7072, file: !7051, line: 181, type: !168)
!7078 = !DILocation(line: 181, column: 52, scope: !7072)
!7079 = !DILocation(line: 181, column: 75, scope: !7072)
!7080 = !DILocation(line: 183, column: 13, scope: !7072)
!7081 = !DILocation(line: 183, column: 18, scope: !7072)
!7082 = !DILocation(line: 183, column: 24, scope: !7072)
!7083 = !DILocation(line: 183, column: 30, scope: !7072)
!7084 = !DILocation(line: 183, column: 2, scope: !7072)
!7085 = !DILocation(line: 184, column: 1, scope: !7072)
!7086 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5498, file: !5498, line: 80, type: !5499, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !7087)
!7087 = !{!7088, !7089}
!7088 = !DILocalVariable(name: "v", arg: 1, scope: !7086, file: !5498, line: 80, type: !5501)
!7089 = !DILocalVariable(name: "size", arg: 2, scope: !7086, file: !5498, line: 80, type: !132)
!7090 = !DILocation(line: 80, column: 74, scope: !7086)
!7091 = !DILocation(line: 80, column: 84, scope: !7086)
!7092 = !DILocation(line: 82, column: 20, scope: !7086)
!7093 = !DILocation(line: 82, column: 23, scope: !7086)
!7094 = !DILocation(line: 82, column: 2, scope: !7086)
!7095 = !DILocation(line: 83, column: 2, scope: !7086)
!7096 = !DILocation(line: 84, column: 1, scope: !7086)
!7097 = distinct !DISubprogram(name: "raw_atomic_set", scope: !5515, file: !5515, line: 488, type: !7034, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !7098)
!7098 = !{!7099, !7100}
!7099 = !DILocalVariable(name: "v", arg: 1, scope: !7097, file: !5515, line: 488, type: !4738)
!7100 = !DILocalVariable(name: "i", arg: 2, scope: !7097, file: !5515, line: 488, type: !22)
!7101 = !DILocation(line: 488, column: 26, scope: !7097)
!7102 = !DILocation(line: 488, column: 33, scope: !7097)
!7103 = !DILocation(line: 490, column: 18, scope: !7097)
!7104 = !DILocation(line: 490, column: 21, scope: !7097)
!7105 = !DILocation(line: 490, column: 2, scope: !7097)
!7106 = !DILocation(line: 491, column: 1, scope: !7097)
!7107 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5545, file: !5545, line: 26, type: !7034, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !7108)
!7108 = !{!7109, !7110}
!7109 = !DILocalVariable(name: "v", arg: 1, scope: !7107, file: !5545, line: 26, type: !4738)
!7110 = !DILocalVariable(name: "i", arg: 2, scope: !7107, file: !5545, line: 26, type: !22)
!7111 = !DILocation(line: 26, column: 55, scope: !7107)
!7112 = !DILocation(line: 26, column: 62, scope: !7107)
!7113 = !DILocation(line: 28, column: 2, scope: !7107)
!7114 = !DILocation(line: 28, column: 2, scope: !7115)
!7115 = distinct !DILexicalBlock(scope: !7107, file: !5545, line: 28, column: 2)
!7116 = !DILocation(line: 29, column: 1, scope: !7107)
!7117 = distinct !DISubprogram(name: "__list_add", scope: !7051, file: !7051, line: 146, type: !7118, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !7120)
!7118 = !DISubroutineType(types: !7119)
!7119 = !{null, !168, !168, !168}
!7120 = !{!7121, !7122, !7123}
!7121 = !DILocalVariable(name: "new", arg: 1, scope: !7117, file: !7051, line: 146, type: !168)
!7122 = !DILocalVariable(name: "prev", arg: 2, scope: !7117, file: !7051, line: 147, type: !168)
!7123 = !DILocalVariable(name: "next", arg: 3, scope: !7117, file: !7051, line: 148, type: !168)
!7124 = !DILocation(line: 146, column: 49, scope: !7117)
!7125 = !DILocation(line: 147, column: 28, scope: !7117)
!7126 = !DILocation(line: 148, column: 28, scope: !7117)
!7127 = !DILocation(line: 150, column: 24, scope: !7128)
!7128 = distinct !DILexicalBlock(scope: !7117, file: !7051, line: 150, column: 6)
!7129 = !DILocation(line: 150, column: 29, scope: !7128)
!7130 = !DILocation(line: 150, column: 35, scope: !7128)
!7131 = !DILocation(line: 150, column: 7, scope: !7128)
!7132 = !DILocation(line: 150, column: 6, scope: !7117)
!7133 = !DILocation(line: 151, column: 3, scope: !7128)
!7134 = !DILocation(line: 153, column: 15, scope: !7117)
!7135 = !DILocation(line: 153, column: 2, scope: !7117)
!7136 = !DILocation(line: 153, column: 8, scope: !7117)
!7137 = !DILocation(line: 153, column: 13, scope: !7117)
!7138 = !DILocation(line: 154, column: 14, scope: !7117)
!7139 = !DILocation(line: 154, column: 2, scope: !7117)
!7140 = !DILocation(line: 154, column: 7, scope: !7117)
!7141 = !DILocation(line: 154, column: 12, scope: !7117)
!7142 = !DILocation(line: 155, column: 14, scope: !7117)
!7143 = !DILocation(line: 155, column: 2, scope: !7117)
!7144 = !DILocation(line: 155, column: 7, scope: !7117)
!7145 = !DILocation(line: 155, column: 12, scope: !7117)
!7146 = !DILocation(line: 156, column: 2, scope: !7117)
!7147 = !DILocation(line: 156, column: 2, scope: !7148)
!7148 = distinct !DILexicalBlock(scope: !7117, file: !7051, line: 156, column: 2)
!7149 = !DILocation(line: 156, column: 2, scope: !7150)
!7150 = distinct !DILexicalBlock(scope: !7148, file: !7051, line: 156, column: 2)
!7151 = !DILocation(line: 156, column: 2, scope: !7152)
!7152 = distinct !DILexicalBlock(scope: !7148, file: !7051, line: 156, column: 2)
!7153 = !DILocation(line: 157, column: 1, scope: !7117)
!7154 = distinct !DISubprogram(name: "__list_add_valid", scope: !7051, file: !7051, line: 128, type: !7155, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !7157)
!7155 = !DISubroutineType(types: !7156)
!7156 = !{!795, !168, !168, !168}
!7157 = !{!7158, !7159, !7160}
!7158 = !DILocalVariable(name: "new", arg: 1, scope: !7154, file: !7051, line: 128, type: !168)
!7159 = !DILocalVariable(name: "prev", arg: 2, scope: !7154, file: !7051, line: 129, type: !168)
!7160 = !DILocalVariable(name: "next", arg: 3, scope: !7154, file: !7051, line: 130, type: !168)
!7161 = !DILocation(line: 128, column: 55, scope: !7154)
!7162 = !DILocation(line: 129, column: 23, scope: !7154)
!7163 = !DILocation(line: 130, column: 23, scope: !7154)
!7164 = !DILocation(line: 132, column: 2, scope: !7154)
!7165 = distinct !DISubprogram(name: "list_del", scope: !7051, file: !7051, line: 227, type: !7052, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !7166)
!7166 = !{!7167}
!7167 = !DILocalVariable(name: "entry", arg: 1, scope: !7165, file: !7051, line: 227, type: !168)
!7168 = !DILocation(line: 227, column: 47, scope: !7165)
!7169 = !DILocation(line: 229, column: 19, scope: !7165)
!7170 = !DILocation(line: 229, column: 2, scope: !7165)
!7171 = !DILocation(line: 230, column: 2, scope: !7165)
!7172 = !DILocation(line: 230, column: 9, scope: !7165)
!7173 = !DILocation(line: 230, column: 14, scope: !7165)
!7174 = !DILocation(line: 231, column: 2, scope: !7165)
!7175 = !DILocation(line: 231, column: 9, scope: !7165)
!7176 = !DILocation(line: 231, column: 14, scope: !7165)
!7177 = !DILocation(line: 232, column: 1, scope: !7165)
!7178 = distinct !DISubprogram(name: "list_empty", scope: !7051, file: !7051, line: 371, type: !7179, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !7183)
!7179 = !DISubroutineType(types: !7180)
!7180 = !{!22, !7181}
!7181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7182, size: 64)
!7182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!7183 = !{!7184}
!7184 = !DILocalVariable(name: "head", arg: 1, scope: !7178, file: !7051, line: 371, type: !7181)
!7185 = !DILocation(line: 371, column: 54, scope: !7178)
!7186 = !DILocation(line: 373, column: 9, scope: !7187)
!7187 = distinct !DILexicalBlock(scope: !7178, file: !7051, line: 373, column: 9)
!7188 = !DILocation(line: 373, column: 9, scope: !7189)
!7189 = distinct !DILexicalBlock(scope: !7187, file: !7051, line: 373, column: 9)
!7190 = !DILocation(line: 373, column: 34, scope: !7178)
!7191 = !DILocation(line: 373, column: 31, scope: !7178)
!7192 = !DILocation(line: 373, column: 2, scope: !7178)
!7193 = !DISubprogram(name: "kvfree_call_rcu", scope: !7194, file: !7194, line: 37, type: !7195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7194 = !DIFile(filename: "./include/linux/rcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba1a11a02717ea844631ceb399131463")
!7195 = !DISubroutineType(types: !7196)
!7196 = !{null, !212, !110}
!7197 = distinct !DISubprogram(name: "__list_del_entry", scope: !7051, file: !7051, line: 213, type: !7052, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !7198)
!7198 = !{!7199}
!7199 = !DILocalVariable(name: "entry", arg: 1, scope: !7197, file: !7051, line: 213, type: !168)
!7200 = !DILocation(line: 213, column: 55, scope: !7197)
!7201 = !DILocation(line: 215, column: 30, scope: !7202)
!7202 = distinct !DILexicalBlock(scope: !7197, file: !7051, line: 215, column: 6)
!7203 = !DILocation(line: 215, column: 7, scope: !7202)
!7204 = !DILocation(line: 215, column: 6, scope: !7197)
!7205 = !DILocation(line: 216, column: 3, scope: !7202)
!7206 = !DILocation(line: 218, column: 13, scope: !7197)
!7207 = !DILocation(line: 218, column: 20, scope: !7197)
!7208 = !DILocation(line: 218, column: 26, scope: !7197)
!7209 = !DILocation(line: 218, column: 33, scope: !7197)
!7210 = !DILocation(line: 218, column: 2, scope: !7197)
!7211 = !DILocation(line: 219, column: 1, scope: !7197)
!7212 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !7051, file: !7051, line: 134, type: !7213, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !7215)
!7213 = !DISubroutineType(types: !7214)
!7214 = !{!795, !168}
!7215 = !{!7216}
!7216 = !DILocalVariable(name: "entry", arg: 1, scope: !7212, file: !7051, line: 134, type: !168)
!7217 = !DILocation(line: 134, column: 61, scope: !7212)
!7218 = !DILocation(line: 136, column: 2, scope: !7212)
!7219 = distinct !DISubprogram(name: "__list_del", scope: !7051, file: !7051, line: 193, type: !7073, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4003, retainedNodes: !7220)
!7220 = !{!7221, !7222}
!7221 = !DILocalVariable(name: "prev", arg: 1, scope: !7219, file: !7051, line: 193, type: !168)
!7222 = !DILocalVariable(name: "next", arg: 2, scope: !7219, file: !7051, line: 193, type: !168)
!7223 = !DILocation(line: 193, column: 50, scope: !7219)
!7224 = !DILocation(line: 193, column: 75, scope: !7219)
!7225 = !DILocation(line: 195, column: 15, scope: !7219)
!7226 = !DILocation(line: 195, column: 2, scope: !7219)
!7227 = !DILocation(line: 195, column: 8, scope: !7219)
!7228 = !DILocation(line: 195, column: 13, scope: !7219)
!7229 = !DILocation(line: 196, column: 2, scope: !7219)
!7230 = !DILocation(line: 196, column: 2, scope: !7231)
!7231 = distinct !DILexicalBlock(scope: !7219, file: !7051, line: 196, column: 2)
!7232 = !DILocation(line: 196, column: 2, scope: !7233)
!7233 = distinct !DILexicalBlock(scope: !7231, file: !7051, line: 196, column: 2)
!7234 = !DILocation(line: 196, column: 2, scope: !7235)
!7235 = distinct !DILexicalBlock(scope: !7231, file: !7051, line: 196, column: 2)
!7236 = !DILocation(line: 197, column: 1, scope: !7219)
