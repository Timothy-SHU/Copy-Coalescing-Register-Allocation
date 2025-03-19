; ModuleID = 'lib/klist.c'
source_filename = "lib/klist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_klist_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad klist_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_klist_add_head: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad klist_add_head ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_klist_add_tail: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad klist_add_tail ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_klist_add_behind: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad klist_add_behind ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_klist_add_before: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad klist_add_before ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_klist_del: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad klist_del ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_klist_remove: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad klist_remove ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_klist_node_attached: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad klist_node_attached ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_klist_iter_init_node: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad klist_iter_init_node ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_klist_iter_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad klist_iter_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_klist_iter_exit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad klist_iter_exit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_klist_prev: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad klist_prev ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_klist_next: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad klist_next ; .previous"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.klist_waiter = type { %struct.list_head, ptr, ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
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
%struct.klist_iter = type { ptr, ptr }

@__UNIQUE_ID___addressable_klist_init148 = internal global ptr @klist_init, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_klist_add_head149 = internal global ptr @klist_add_head, section ".discard.addressable", align 8, !dbg !1246
@__UNIQUE_ID___addressable_klist_add_tail150 = internal global ptr @klist_add_tail, section ".discard.addressable", align 8, !dbg !1248
@__UNIQUE_ID___addressable_klist_add_behind151 = internal global ptr @klist_add_behind, section ".discard.addressable", align 8, !dbg !1250
@__UNIQUE_ID___addressable_klist_add_before152 = internal global ptr @klist_add_before, section ".discard.addressable", align 8, !dbg !1252
@__UNIQUE_ID___addressable_klist_del153 = internal global ptr @klist_del, section ".discard.addressable", align 8, !dbg !1254
@klist_remove_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !1273
@klist_remove_waiters = internal global %struct.list_head { ptr @klist_remove_waiters, ptr @klist_remove_waiters }, align 8, !dbg !1275
@__UNIQUE_ID___addressable_klist_remove155 = internal global ptr @klist_remove, section ".discard.addressable", align 8, !dbg !1256
@__UNIQUE_ID___addressable_klist_node_attached156 = internal global ptr @klist_node_attached, section ".discard.addressable", align 8, !dbg !1258
@__UNIQUE_ID___addressable_klist_iter_init_node157 = internal global ptr @klist_iter_init_node, section ".discard.addressable", align 8, !dbg !1260
@__UNIQUE_ID___addressable_klist_iter_init158 = internal global ptr @klist_iter_init, section ".discard.addressable", align 8, !dbg !1262
@__UNIQUE_ID___addressable_klist_iter_exit159 = internal global ptr @klist_iter_exit, section ".discard.addressable", align 8, !dbg !1264
@__UNIQUE_ID___addressable_klist_prev160 = internal global ptr @klist_prev, section ".discard.addressable", align 8, !dbg !1266
@__UNIQUE_ID___addressable_klist_next161 = internal global ptr @klist_next, section ".discard.addressable", align 8, !dbg !1268
@.str = private unnamed_addr constant [12 x i8] c"lib/klist.c\00", align 1, !dbg !1270
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID___addressable_klist_init148, ptr @__UNIQUE_ID___addressable_klist_add_head149, ptr @__UNIQUE_ID___addressable_klist_add_tail150, ptr @__UNIQUE_ID___addressable_klist_add_behind151, ptr @__UNIQUE_ID___addressable_klist_add_before152, ptr @__UNIQUE_ID___addressable_klist_del153, ptr @__UNIQUE_ID___addressable_klist_remove155, ptr @__UNIQUE_ID___addressable_klist_node_attached156, ptr @__UNIQUE_ID___addressable_klist_iter_init_node157, ptr @__UNIQUE_ID___addressable_klist_iter_init158, ptr @__UNIQUE_ID___addressable_klist_iter_exit159, ptr @__UNIQUE_ID___addressable_klist_prev160, ptr @__UNIQUE_ID___addressable_klist_next161], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @klist_init(ptr noundef %k, ptr noundef %get, ptr noundef %put) #0 align 16 !dbg !1286 {
entry:
  %k.addr = alloca ptr, align 8
  %get.addr = alloca ptr, align 8
  %put.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !1290, metadata !DIExpression()), !dbg !1293
  store ptr %get, ptr %get.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %get.addr, metadata !1291, metadata !DIExpression()), !dbg !1294
  store ptr %put, ptr %put.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %put.addr, metadata !1292, metadata !DIExpression()), !dbg !1295
  %0 = load ptr, ptr %k.addr, align 8, !dbg !1296
  %k_list = getelementptr inbounds %struct.klist, ptr %0, i32 0, i32 1, !dbg !1297
  call void @INIT_LIST_HEAD(ptr noundef %k_list) #9, !dbg !1298
  br label %do.body, !dbg !1299

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %k.addr, align 8, !dbg !1300
  %k_lock = getelementptr inbounds %struct.klist, ptr %1, i32 0, i32 0, !dbg !1300
  %call = call ptr @spinlock_check(ptr noundef %k_lock) #9, !dbg !1300
  %2 = load ptr, ptr %k.addr, align 8, !dbg !1300
  %k_lock1 = getelementptr inbounds %struct.klist, ptr %2, i32 0, i32 0, !dbg !1300
  %3 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !1300
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %3, i32 0, i32 0, !dbg !1300
  %4 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !1300
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !1300
  store i32 0, ptr %counter, align 4, !dbg !1300
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %k_lock1, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !1300
  br label %do.end, !dbg !1300

do.end:                                           ; preds = %do.body
  %5 = load ptr, ptr %get.addr, align 8, !dbg !1302
  %6 = load ptr, ptr %k.addr, align 8, !dbg !1303
  %get2 = getelementptr inbounds %struct.klist, ptr %6, i32 0, i32 2, !dbg !1304
  store ptr %5, ptr %get2, align 8, !dbg !1305
  %7 = load ptr, ptr %put.addr, align 8, !dbg !1306
  %8 = load ptr, ptr %k.addr, align 8, !dbg !1307
  %put3 = getelementptr inbounds %struct.klist, ptr %8, i32 0, i32 3, !dbg !1308
  store ptr %7, ptr %put3, align 8, !dbg !1309
  ret void, !dbg !1310
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #2 align 16 !dbg !1311 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !1316, metadata !DIExpression()), !dbg !1317
  br label %do.body, !dbg !1318

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1319

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1321

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1319

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !1323
  %1 = load ptr, ptr %list.addr, align 8, !dbg !1323
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !1323
  store volatile ptr %0, ptr %next, align 8, !dbg !1323
  br label %do.end3, !dbg !1323

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1319

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !1325

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !1326

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1328

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !1326

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !1330
  %3 = load ptr, ptr %list.addr, align 8, !dbg !1330
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !1330
  store volatile ptr %2, ptr %prev, align 8, !dbg !1330
  br label %do.end9, !dbg !1330

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !1326

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !1332
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #3 align 16 !dbg !1333 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1340, metadata !DIExpression()), !dbg !1341
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1342
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1343
  ret ptr %1, !dbg !1344
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @klist_add_head(ptr noundef %n, ptr noundef %k) #0 align 16 !dbg !1345 {
entry:
  %n.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1349, metadata !DIExpression()), !dbg !1351
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !1350, metadata !DIExpression()), !dbg !1352
  %0 = load ptr, ptr %k.addr, align 8, !dbg !1353
  %1 = load ptr, ptr %n.addr, align 8, !dbg !1354
  call void @klist_node_init(ptr noundef %0, ptr noundef %1) #9, !dbg !1355
  %2 = load ptr, ptr %k.addr, align 8, !dbg !1356
  %3 = load ptr, ptr %n.addr, align 8, !dbg !1357
  call void @add_head(ptr noundef %2, ptr noundef %3) #9, !dbg !1358
  ret void, !dbg !1359
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @klist_node_init(ptr noundef %k, ptr noundef %n) #0 align 16 !dbg !1360 {
entry:
  %k.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !1364, metadata !DIExpression()), !dbg !1366
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1365, metadata !DIExpression()), !dbg !1367
  %0 = load ptr, ptr %n.addr, align 8, !dbg !1368
  %n_node = getelementptr inbounds %struct.klist_node, ptr %0, i32 0, i32 1, !dbg !1369
  call void @INIT_LIST_HEAD(ptr noundef %n_node) #9, !dbg !1370
  %1 = load ptr, ptr %n.addr, align 8, !dbg !1371
  %n_ref = getelementptr inbounds %struct.klist_node, ptr %1, i32 0, i32 2, !dbg !1372
  call void @kref_init(ptr noundef %n_ref) #9, !dbg !1373
  %2 = load ptr, ptr %n.addr, align 8, !dbg !1374
  %3 = load ptr, ptr %k.addr, align 8, !dbg !1375
  call void @knode_set_klist(ptr noundef %2, ptr noundef %3) #9, !dbg !1376
  %4 = load ptr, ptr %k.addr, align 8, !dbg !1377
  %get = getelementptr inbounds %struct.klist, ptr %4, i32 0, i32 2, !dbg !1379
  %5 = load ptr, ptr %get, align 8, !dbg !1379
  %tobool = icmp ne ptr %5, null, !dbg !1377
  br i1 %tobool, label %if.then, label %if.end, !dbg !1380

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %k.addr, align 8, !dbg !1381
  %get1 = getelementptr inbounds %struct.klist, ptr %6, i32 0, i32 2, !dbg !1382
  %7 = load ptr, ptr %get1, align 8, !dbg !1382
  %8 = load ptr, ptr %n.addr, align 8, !dbg !1383
  call void %7(ptr noundef %8) #9, !dbg !1381
  br label %if.end, !dbg !1381

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1384
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @add_head(ptr noundef %k, ptr noundef %n) #0 align 16 !dbg !1385 {
entry:
  %k.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !1387, metadata !DIExpression()), !dbg !1389
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1388, metadata !DIExpression()), !dbg !1390
  %0 = load ptr, ptr %k.addr, align 8, !dbg !1391
  %k_lock = getelementptr inbounds %struct.klist, ptr %0, i32 0, i32 0, !dbg !1392
  call void @spin_lock(ptr noundef %k_lock) #9, !dbg !1393
  %1 = load ptr, ptr %n.addr, align 8, !dbg !1394
  %n_node = getelementptr inbounds %struct.klist_node, ptr %1, i32 0, i32 1, !dbg !1395
  %2 = load ptr, ptr %k.addr, align 8, !dbg !1396
  %k_list = getelementptr inbounds %struct.klist, ptr %2, i32 0, i32 1, !dbg !1397
  call void @list_add(ptr noundef %n_node, ptr noundef %k_list) #9, !dbg !1398
  %3 = load ptr, ptr %k.addr, align 8, !dbg !1399
  %k_lock1 = getelementptr inbounds %struct.klist, ptr %3, i32 0, i32 0, !dbg !1400
  call void @spin_unlock(ptr noundef %k_lock1) #9, !dbg !1401
  ret void, !dbg !1402
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @klist_add_tail(ptr noundef %n, ptr noundef %k) #0 align 16 !dbg !1403 {
entry:
  %n.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1405, metadata !DIExpression()), !dbg !1407
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !1406, metadata !DIExpression()), !dbg !1408
  %0 = load ptr, ptr %k.addr, align 8, !dbg !1409
  %1 = load ptr, ptr %n.addr, align 8, !dbg !1410
  call void @klist_node_init(ptr noundef %0, ptr noundef %1) #9, !dbg !1411
  %2 = load ptr, ptr %k.addr, align 8, !dbg !1412
  %3 = load ptr, ptr %n.addr, align 8, !dbg !1413
  call void @add_tail(ptr noundef %2, ptr noundef %3) #9, !dbg !1414
  ret void, !dbg !1415
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @add_tail(ptr noundef %k, ptr noundef %n) #0 align 16 !dbg !1416 {
entry:
  %k.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !1418, metadata !DIExpression()), !dbg !1420
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1419, metadata !DIExpression()), !dbg !1421
  %0 = load ptr, ptr %k.addr, align 8, !dbg !1422
  %k_lock = getelementptr inbounds %struct.klist, ptr %0, i32 0, i32 0, !dbg !1423
  call void @spin_lock(ptr noundef %k_lock) #9, !dbg !1424
  %1 = load ptr, ptr %n.addr, align 8, !dbg !1425
  %n_node = getelementptr inbounds %struct.klist_node, ptr %1, i32 0, i32 1, !dbg !1426
  %2 = load ptr, ptr %k.addr, align 8, !dbg !1427
  %k_list = getelementptr inbounds %struct.klist, ptr %2, i32 0, i32 1, !dbg !1428
  call void @list_add_tail(ptr noundef %n_node, ptr noundef %k_list) #9, !dbg !1429
  %3 = load ptr, ptr %k.addr, align 8, !dbg !1430
  %k_lock1 = getelementptr inbounds %struct.klist, ptr %3, i32 0, i32 0, !dbg !1431
  call void @spin_unlock(ptr noundef %k_lock1) #9, !dbg !1432
  ret void, !dbg !1433
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @klist_add_behind(ptr noundef %n, ptr noundef %pos) #0 align 16 !dbg !1434 {
entry:
  %n.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  %k = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1438, metadata !DIExpression()), !dbg !1441
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !1439, metadata !DIExpression()), !dbg !1442
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #10, !dbg !1443
  call void @llvm.dbg.declare(metadata ptr %k, metadata !1440, metadata !DIExpression()), !dbg !1444
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !1445
  %call = call ptr @knode_klist(ptr noundef %0) #9, !dbg !1446
  store ptr %call, ptr %k, align 8, !dbg !1444
  %1 = load ptr, ptr %k, align 8, !dbg !1447
  %2 = load ptr, ptr %n.addr, align 8, !dbg !1448
  call void @klist_node_init(ptr noundef %1, ptr noundef %2) #9, !dbg !1449
  %3 = load ptr, ptr %k, align 8, !dbg !1450
  %k_lock = getelementptr inbounds %struct.klist, ptr %3, i32 0, i32 0, !dbg !1451
  call void @spin_lock(ptr noundef %k_lock) #9, !dbg !1452
  %4 = load ptr, ptr %n.addr, align 8, !dbg !1453
  %n_node = getelementptr inbounds %struct.klist_node, ptr %4, i32 0, i32 1, !dbg !1454
  %5 = load ptr, ptr %pos.addr, align 8, !dbg !1455
  %n_node1 = getelementptr inbounds %struct.klist_node, ptr %5, i32 0, i32 1, !dbg !1456
  call void @list_add(ptr noundef %n_node, ptr noundef %n_node1) #9, !dbg !1457
  %6 = load ptr, ptr %k, align 8, !dbg !1458
  %k_lock2 = getelementptr inbounds %struct.klist, ptr %6, i32 0, i32 0, !dbg !1459
  call void @spin_unlock(ptr noundef %k_lock2) #9, !dbg !1460
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #10, !dbg !1461
  ret void, !dbg !1461
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @knode_klist(ptr noundef %knode) #0 align 16 !dbg !1462 {
entry:
  %knode.addr = alloca ptr, align 8
  store ptr %knode, ptr %knode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %knode.addr, metadata !1466, metadata !DIExpression()), !dbg !1467
  %0 = load ptr, ptr %knode.addr, align 8, !dbg !1468
  %n_klist = getelementptr inbounds %struct.klist_node, ptr %0, i32 0, i32 0, !dbg !1469
  %1 = load ptr, ptr %n_klist, align 8, !dbg !1469
  %2 = ptrtoint ptr %1 to i64, !dbg !1470
  %and = and i64 %2, -2, !dbg !1471
  %3 = inttoptr i64 %and to ptr, !dbg !1472
  ret ptr %3, !dbg !1473
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #3 align 16 !dbg !1474 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1478, metadata !DIExpression()), !dbg !1479
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1480
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1480
  call void @_raw_spin_lock(ptr noundef %1) #9, !dbg !1480
  ret void, !dbg !1481
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #2 align 16 !dbg !1482 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1486, metadata !DIExpression()), !dbg !1488
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1487, metadata !DIExpression()), !dbg !1489
  %0 = load ptr, ptr %new.addr, align 8, !dbg !1490
  %1 = load ptr, ptr %head.addr, align 8, !dbg !1491
  %2 = load ptr, ptr %head.addr, align 8, !dbg !1492
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !1493
  %3 = load ptr, ptr %next, align 8, !dbg !1493
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #9, !dbg !1494
  ret void, !dbg !1495
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #3 align 16 !dbg !1496 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1498, metadata !DIExpression()), !dbg !1499
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1500
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1500
  call void @_raw_spin_unlock(ptr noundef %1) #9, !dbg !1500
  ret void, !dbg !1501
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @klist_add_before(ptr noundef %n, ptr noundef %pos) #0 align 16 !dbg !1502 {
entry:
  %n.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  %k = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1504, metadata !DIExpression()), !dbg !1507
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !1505, metadata !DIExpression()), !dbg !1508
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #10, !dbg !1509
  call void @llvm.dbg.declare(metadata ptr %k, metadata !1506, metadata !DIExpression()), !dbg !1510
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !1511
  %call = call ptr @knode_klist(ptr noundef %0) #9, !dbg !1512
  store ptr %call, ptr %k, align 8, !dbg !1510
  %1 = load ptr, ptr %k, align 8, !dbg !1513
  %2 = load ptr, ptr %n.addr, align 8, !dbg !1514
  call void @klist_node_init(ptr noundef %1, ptr noundef %2) #9, !dbg !1515
  %3 = load ptr, ptr %k, align 8, !dbg !1516
  %k_lock = getelementptr inbounds %struct.klist, ptr %3, i32 0, i32 0, !dbg !1517
  call void @spin_lock(ptr noundef %k_lock) #9, !dbg !1518
  %4 = load ptr, ptr %n.addr, align 8, !dbg !1519
  %n_node = getelementptr inbounds %struct.klist_node, ptr %4, i32 0, i32 1, !dbg !1520
  %5 = load ptr, ptr %pos.addr, align 8, !dbg !1521
  %n_node1 = getelementptr inbounds %struct.klist_node, ptr %5, i32 0, i32 1, !dbg !1522
  call void @list_add_tail(ptr noundef %n_node, ptr noundef %n_node1) #9, !dbg !1523
  %6 = load ptr, ptr %k, align 8, !dbg !1524
  %k_lock2 = getelementptr inbounds %struct.klist, ptr %6, i32 0, i32 0, !dbg !1525
  call void @spin_unlock(ptr noundef %k_lock2) #9, !dbg !1526
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #10, !dbg !1527
  ret void, !dbg !1527
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #2 align 16 !dbg !1528 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1530, metadata !DIExpression()), !dbg !1532
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1531, metadata !DIExpression()), !dbg !1533
  %0 = load ptr, ptr %new.addr, align 8, !dbg !1534
  %1 = load ptr, ptr %head.addr, align 8, !dbg !1535
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !1536
  %2 = load ptr, ptr %prev, align 8, !dbg !1536
  %3 = load ptr, ptr %head.addr, align 8, !dbg !1537
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #9, !dbg !1538
  ret void, !dbg !1539
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @klist_del(ptr noundef %n) #0 align 16 !dbg !1540 {
entry:
  %n.addr = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1542, metadata !DIExpression()), !dbg !1543
  %0 = load ptr, ptr %n.addr, align 8, !dbg !1544
  call void @klist_put(ptr noundef %0, i1 noundef zeroext true) #9, !dbg !1545
  ret void, !dbg !1546
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @klist_put(ptr noundef %n, i1 noundef zeroext %kill) #0 align 16 !dbg !1547 {
entry:
  %n.addr = alloca ptr, align 8
  %kill.addr = alloca i8, align 1
  %k = alloca ptr, align 8
  %put = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1551, metadata !DIExpression()), !dbg !1555
  %frombool = zext i1 %kill to i8
  store i8 %frombool, ptr %kill.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %kill.addr, metadata !1552, metadata !DIExpression()), !dbg !1556
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #10, !dbg !1557
  call void @llvm.dbg.declare(metadata ptr %k, metadata !1553, metadata !DIExpression()), !dbg !1558
  %0 = load ptr, ptr %n.addr, align 8, !dbg !1559
  %call = call ptr @knode_klist(ptr noundef %0) #9, !dbg !1560
  store ptr %call, ptr %k, align 8, !dbg !1558
  call void @llvm.lifetime.start.p0(i64 8, ptr %put) #10, !dbg !1561
  call void @llvm.dbg.declare(metadata ptr %put, metadata !1554, metadata !DIExpression()), !dbg !1562
  %1 = load ptr, ptr %k, align 8, !dbg !1563
  %put1 = getelementptr inbounds %struct.klist, ptr %1, i32 0, i32 3, !dbg !1564
  %2 = load ptr, ptr %put1, align 8, !dbg !1564
  store ptr %2, ptr %put, align 8, !dbg !1562
  %3 = load ptr, ptr %k, align 8, !dbg !1565
  %k_lock = getelementptr inbounds %struct.klist, ptr %3, i32 0, i32 0, !dbg !1566
  call void @spin_lock(ptr noundef %k_lock) #9, !dbg !1567
  %4 = load i8, ptr %kill.addr, align 1, !dbg !1568, !range !1570, !noundef !972
  %tobool = trunc i8 %4 to i1, !dbg !1568
  br i1 %tobool, label %if.then, label %if.end, !dbg !1571

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %n.addr, align 8, !dbg !1572
  call void @knode_kill(ptr noundef %5) #9, !dbg !1573
  br label %if.end, !dbg !1573

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %n.addr, align 8, !dbg !1574
  %call2 = call i32 @klist_dec_and_del(ptr noundef %6) #9, !dbg !1576
  %tobool3 = icmp ne i32 %call2, 0, !dbg !1576
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1577

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %put, align 8, !dbg !1578
  br label %if.end5, !dbg !1579

if.end5:                                          ; preds = %if.then4, %if.end
  %7 = load ptr, ptr %k, align 8, !dbg !1580
  %k_lock6 = getelementptr inbounds %struct.klist, ptr %7, i32 0, i32 0, !dbg !1581
  call void @spin_unlock(ptr noundef %k_lock6) #9, !dbg !1582
  %8 = load ptr, ptr %put, align 8, !dbg !1583
  %tobool7 = icmp ne ptr %8, null, !dbg !1583
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1585

if.then8:                                         ; preds = %if.end5
  %9 = load ptr, ptr %put, align 8, !dbg !1586
  %10 = load ptr, ptr %n.addr, align 8, !dbg !1587
  call void %9(ptr noundef %10) #9, !dbg !1586
  br label %if.end9, !dbg !1586

if.end9:                                          ; preds = %if.then8, %if.end5
  call void @llvm.lifetime.end.p0(i64 8, ptr %put) #10, !dbg !1588
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #10, !dbg !1588
  ret void, !dbg !1588
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @klist_remove(ptr noundef %n) #0 align 16 !dbg !1589 {
entry:
  %n.addr = alloca ptr, align 8
  %waiter = alloca %struct.klist_waiter, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1591, metadata !DIExpression()), !dbg !1604
  call void @llvm.lifetime.start.p0(i64 40, ptr %waiter) #10, !dbg !1605
  call void @llvm.dbg.declare(metadata ptr %waiter, metadata !1592, metadata !DIExpression()), !dbg !1606
  %0 = load ptr, ptr %n.addr, align 8, !dbg !1607
  %node = getelementptr inbounds %struct.klist_waiter, ptr %waiter, i32 0, i32 1, !dbg !1608
  store ptr %0, ptr %node, align 8, !dbg !1609
  %call = call ptr @get_current() #9, !dbg !1610
  %process = getelementptr inbounds %struct.klist_waiter, ptr %waiter, i32 0, i32 2, !dbg !1611
  store ptr %call, ptr %process, align 8, !dbg !1612
  %woken = getelementptr inbounds %struct.klist_waiter, ptr %waiter, i32 0, i32 3, !dbg !1613
  store i32 0, ptr %woken, align 8, !dbg !1614
  call void @spin_lock(ptr noundef @klist_remove_lock) #9, !dbg !1615
  %list = getelementptr inbounds %struct.klist_waiter, ptr %waiter, i32 0, i32 0, !dbg !1616
  call void @list_add(ptr noundef %list, ptr noundef @klist_remove_waiters) #9, !dbg !1617
  call void @spin_unlock(ptr noundef @klist_remove_lock) #9, !dbg !1618
  %1 = load ptr, ptr %n.addr, align 8, !dbg !1619
  call void @klist_del(ptr noundef %1) #9, !dbg !1620
  br label %for.cond, !dbg !1621

for.cond:                                         ; preds = %if.end, %entry
  br label %do.body, !dbg !1622

do.body:                                          ; preds = %for.cond
  br label %do.body1, !dbg !1623

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !1624

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1624

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !1623

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !1626

do.body3:                                         ; preds = %do.body2
  br label %do.cond4, !dbg !1627

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !1627

do.end5:                                          ; preds = %do.cond4
  br label %do.body6, !dbg !1626

do.body6:                                         ; preds = %do.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #10, !dbg !1629
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !1593, metadata !DIExpression()), !dbg !1629
  %call7 = call ptr @get_current() #9, !dbg !1629
  %__state = getelementptr inbounds %struct.task_struct, ptr %call7, i32 0, i32 1, !dbg !1629
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !1629
  br label %do.body8, !dbg !1629

do.body8:                                         ; preds = %do.body6
  br label %do.cond9, !dbg !1630

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !1630

do.end10:                                         ; preds = %do.cond9
  %2 = load ptr, ptr %__ai_ptr, align 8, !dbg !1629
  call void @instrument_atomic_read_write(ptr noundef %2, i64 noundef 4) #9, !dbg !1629
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #10, !dbg !1632
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !1602, metadata !DIExpression()), !dbg !1632
  store i32 2, ptr %__ret, align 4, !dbg !1632
  %3 = load i32, ptr %__ret, align 4, !dbg !1632
  %4 = load ptr, ptr %__ai_ptr, align 8, !dbg !1632
  %5 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %4, i32 %3, ptr elementtype(i32) %4) #10, !dbg !1632, !srcloc !1633
  store i32 %5, ptr %__ret, align 4, !dbg !1632
  %6 = load i32, ptr %__ret, align 4, !dbg !1632
  store i32 %6, ptr %tmp11, align 4, !dbg !1632
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #10, !dbg !1629
  %7 = load i32, ptr %tmp11, align 4, !dbg !1632
  store i32 %7, ptr %tmp, align 4, !dbg !1629
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #10, !dbg !1634
  %8 = load i32, ptr %tmp, align 4, !dbg !1629
  br label %do.cond12, !dbg !1634

do.cond12:                                        ; preds = %do.end10
  br label %do.end13, !dbg !1634

do.end13:                                         ; preds = %do.cond12
  br label %do.cond14, !dbg !1626

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !1626

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !1623

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !1623

do.end17:                                         ; preds = %do.cond16
  %woken18 = getelementptr inbounds %struct.klist_waiter, ptr %waiter, i32 0, i32 3, !dbg !1635
  %9 = load i32, ptr %woken18, align 8, !dbg !1635
  %tobool = icmp ne i32 %9, 0, !dbg !1637
  br i1 %tobool, label %if.then, label %if.end, !dbg !1638

if.then:                                          ; preds = %do.end17
  br label %for.end, !dbg !1639

if.end:                                           ; preds = %do.end17
  call void @schedule() #9, !dbg !1640
  br label %for.cond, !dbg !1641, !llvm.loop !1642

for.end:                                          ; preds = %if.then
  br label %do.body19, !dbg !1646

do.body19:                                        ; preds = %for.end
  br label %do.body20, !dbg !1647

do.body20:                                        ; preds = %do.body19
  br label %do.cond21, !dbg !1649

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !1649

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !1647

do.body23:                                        ; preds = %do.end22
  br label %do.body24, !dbg !1651

do.body24:                                        ; preds = %do.body23
  br label %do.cond25, !dbg !1653

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !1653

do.end26:                                         ; preds = %do.cond25
  br label %do.body27, !dbg !1651

do.body27:                                        ; preds = %do.end26
  %call28 = call ptr @get_current() #9, !dbg !1655
  %__state29 = getelementptr inbounds %struct.task_struct, ptr %call28, i32 0, i32 1, !dbg !1655
  store volatile i32 0, ptr %__state29, align 8, !dbg !1655
  br label %do.cond30, !dbg !1655

do.cond30:                                        ; preds = %do.body27
  br label %do.end31, !dbg !1655

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !1651

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !1651

do.end33:                                         ; preds = %do.cond32
  br label %do.cond34, !dbg !1647

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !1647

do.end35:                                         ; preds = %do.cond34
  call void @llvm.lifetime.end.p0(i64 40, ptr %waiter) #10, !dbg !1657
  ret void, !dbg !1657
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !1658 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #10, !dbg !1671
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1663, metadata !DIExpression()), !dbg !1671
  br label %do.body, !dbg !1671

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !1672
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1665, metadata !DIExpression()), !dbg !1672
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1672
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1672
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !1671
  br label %do.cond, !dbg !1672

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1672

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #10, !dbg !1673
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1669, metadata !DIExpression()), !dbg !1673
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #11, !dbg !1673, !srcloc !1674
  store i64 %1, ptr %pfo_val__, align 8, !dbg !1673
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !1673
  %3 = inttoptr i64 %2 to ptr, !dbg !1673
  store ptr %3, ptr %tmp, align 8, !dbg !1673
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #10, !dbg !1671
  %4 = load ptr, ptr %tmp, align 8, !dbg !1673
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !1671
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !1671
  store ptr %5, ptr %tmp1, align 8, !dbg !1671
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #10, !dbg !1675
  %6 = load ptr, ptr %tmp1, align 8, !dbg !1671
  ret ptr %6, !dbg !1676
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !1677 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1685, metadata !DIExpression()), !dbg !1687
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1686, metadata !DIExpression()), !dbg !1688
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1689
  %1 = load i64, ptr %size.addr, align 8, !dbg !1690
  %conv = trunc i64 %1 to i32, !dbg !1690
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !1691
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1692
  %3 = load i64, ptr %size.addr, align 8, !dbg !1692
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #9, !dbg !1692
  ret void, !dbg !1693
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1694 dso_local void @schedule() #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @klist_node_attached(ptr noundef %n) #0 align 16 !dbg !1697 {
entry:
  %n.addr = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1701, metadata !DIExpression()), !dbg !1702
  %0 = load ptr, ptr %n.addr, align 8, !dbg !1703
  %n_klist = getelementptr inbounds %struct.klist_node, ptr %0, i32 0, i32 0, !dbg !1704
  %1 = load ptr, ptr %n_klist, align 8, !dbg !1704
  %cmp = icmp ne ptr %1, null, !dbg !1705
  %conv = zext i1 %cmp to i32, !dbg !1705
  ret i32 %conv, !dbg !1706
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @klist_iter_init_node(ptr noundef %k, ptr noundef %i, ptr noundef %n) #0 align 16 !dbg !1707 {
entry:
  %k.addr = alloca ptr, align 8
  %i.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !1716, metadata !DIExpression()), !dbg !1719
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1717, metadata !DIExpression()), !dbg !1720
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1718, metadata !DIExpression()), !dbg !1721
  %0 = load ptr, ptr %k.addr, align 8, !dbg !1722
  %1 = load ptr, ptr %i.addr, align 8, !dbg !1723
  %i_klist = getelementptr inbounds %struct.klist_iter, ptr %1, i32 0, i32 0, !dbg !1724
  store ptr %0, ptr %i_klist, align 8, !dbg !1725
  %2 = load ptr, ptr %i.addr, align 8, !dbg !1726
  %i_cur = getelementptr inbounds %struct.klist_iter, ptr %2, i32 0, i32 1, !dbg !1727
  store ptr null, ptr %i_cur, align 8, !dbg !1728
  %3 = load ptr, ptr %n.addr, align 8, !dbg !1729
  %tobool = icmp ne ptr %3, null, !dbg !1729
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1731

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %n.addr, align 8, !dbg !1732
  %n_ref = getelementptr inbounds %struct.klist_node, ptr %4, i32 0, i32 2, !dbg !1733
  %call = call i32 @kref_get_unless_zero(ptr noundef %n_ref) #9, !dbg !1734
  %tobool1 = icmp ne i32 %call, 0, !dbg !1734
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1735

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %n.addr, align 8, !dbg !1736
  %6 = load ptr, ptr %i.addr, align 8, !dbg !1737
  %i_cur2 = getelementptr inbounds %struct.klist_iter, ptr %6, i32 0, i32 1, !dbg !1738
  store ptr %5, ptr %i_cur2, align 8, !dbg !1739
  br label %if.end, !dbg !1737

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !1740
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_get_unless_zero(ptr noundef %kref) #2 align 16 !dbg !1741 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !1746, metadata !DIExpression()), !dbg !1747
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !1748
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !1749
  %call = call zeroext i1 @refcount_inc_not_zero(ptr noundef %refcount) #9, !dbg !1750
  %conv = zext i1 %call to i32, !dbg !1750
  ret i32 %conv, !dbg !1751
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @klist_iter_init(ptr noundef %k, ptr noundef %i) #0 align 16 !dbg !1752 {
entry:
  %k.addr = alloca ptr, align 8
  %i.addr = alloca ptr, align 8
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !1756, metadata !DIExpression()), !dbg !1758
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1757, metadata !DIExpression()), !dbg !1759
  %0 = load ptr, ptr %k.addr, align 8, !dbg !1760
  %1 = load ptr, ptr %i.addr, align 8, !dbg !1761
  call void @klist_iter_init_node(ptr noundef %0, ptr noundef %1, ptr noundef null) #9, !dbg !1762
  ret void, !dbg !1763
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @klist_iter_exit(ptr noundef %i) #0 align 16 !dbg !1764 {
entry:
  %i.addr = alloca ptr, align 8
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1768, metadata !DIExpression()), !dbg !1769
  %0 = load ptr, ptr %i.addr, align 8, !dbg !1770
  %i_cur = getelementptr inbounds %struct.klist_iter, ptr %0, i32 0, i32 1, !dbg !1772
  %1 = load ptr, ptr %i_cur, align 8, !dbg !1772
  %tobool = icmp ne ptr %1, null, !dbg !1770
  br i1 %tobool, label %if.then, label %if.end, !dbg !1773

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %i.addr, align 8, !dbg !1774
  %i_cur1 = getelementptr inbounds %struct.klist_iter, ptr %2, i32 0, i32 1, !dbg !1776
  %3 = load ptr, ptr %i_cur1, align 8, !dbg !1776
  call void @klist_put(ptr noundef %3, i1 noundef zeroext false) #9, !dbg !1777
  %4 = load ptr, ptr %i.addr, align 8, !dbg !1778
  %i_cur2 = getelementptr inbounds %struct.klist_iter, ptr %4, i32 0, i32 1, !dbg !1779
  store ptr null, ptr %i_cur2, align 8, !dbg !1780
  br label %if.end, !dbg !1781

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1782
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @klist_prev(ptr noundef %i) #0 align 16 !dbg !1783 {
entry:
  %i.addr = alloca ptr, align 8
  %put = alloca ptr, align 8
  %last = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1787, metadata !DIExpression()), !dbg !1797
  call void @llvm.lifetime.start.p0(i64 8, ptr %put) #10, !dbg !1798
  call void @llvm.dbg.declare(metadata ptr %put, metadata !1788, metadata !DIExpression()), !dbg !1799
  %0 = load ptr, ptr %i.addr, align 8, !dbg !1800
  %i_klist = getelementptr inbounds %struct.klist_iter, ptr %0, i32 0, i32 0, !dbg !1801
  %1 = load ptr, ptr %i_klist, align 8, !dbg !1801
  %put1 = getelementptr inbounds %struct.klist, ptr %1, i32 0, i32 3, !dbg !1802
  %2 = load ptr, ptr %put1, align 8, !dbg !1802
  store ptr %2, ptr %put, align 8, !dbg !1799
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #10, !dbg !1803
  call void @llvm.dbg.declare(metadata ptr %last, metadata !1789, metadata !DIExpression()), !dbg !1804
  %3 = load ptr, ptr %i.addr, align 8, !dbg !1805
  %i_cur = getelementptr inbounds %struct.klist_iter, ptr %3, i32 0, i32 1, !dbg !1806
  %4 = load ptr, ptr %i_cur, align 8, !dbg !1806
  store ptr %4, ptr %last, align 8, !dbg !1804
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #10, !dbg !1807
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !1790, metadata !DIExpression()), !dbg !1808
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !1809
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1791, metadata !DIExpression()), !dbg !1810
  br label %do.body, !dbg !1811

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !1812

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !1813
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1792, metadata !DIExpression()), !dbg !1813
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !1813
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1796, metadata !DIExpression()), !dbg !1813
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1813
  %conv = zext i1 %cmp to i32, !dbg !1813
  store i32 1, ptr %tmp, align 4, !dbg !1813
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !1814
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !1814
  %5 = load i32, ptr %tmp, align 4, !dbg !1813
  %6 = load ptr, ptr %i.addr, align 8, !dbg !1814
  %i_klist3 = getelementptr inbounds %struct.klist_iter, ptr %6, i32 0, i32 0, !dbg !1814
  %7 = load ptr, ptr %i_klist3, align 8, !dbg !1814
  %k_lock = getelementptr inbounds %struct.klist, ptr %7, i32 0, i32 0, !dbg !1814
  %call = call ptr @spinlock_check(ptr noundef %k_lock) #9, !dbg !1814
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #9, !dbg !1814
  store i64 %call4, ptr %flags, align 8, !dbg !1814
  br label %do.cond, !dbg !1814

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !1814

do.end:                                           ; preds = %do.cond
  br label %do.cond5, !dbg !1812

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !1812

do.end6:                                          ; preds = %do.cond5
  %8 = load ptr, ptr %last, align 8, !dbg !1815
  %tobool = icmp ne ptr %8, null, !dbg !1815
  br i1 %tobool, label %if.then, label %if.else, !dbg !1817

if.then:                                          ; preds = %do.end6
  %9 = load ptr, ptr %last, align 8, !dbg !1818
  %n_node = getelementptr inbounds %struct.klist_node, ptr %9, i32 0, i32 1, !dbg !1820
  %prev7 = getelementptr inbounds %struct.list_head, ptr %n_node, i32 0, i32 1, !dbg !1821
  %10 = load ptr, ptr %prev7, align 8, !dbg !1821
  %call8 = call ptr @to_klist_node(ptr noundef %10) #9, !dbg !1822
  store ptr %call8, ptr %prev, align 8, !dbg !1823
  %11 = load ptr, ptr %last, align 8, !dbg !1824
  %call9 = call i32 @klist_dec_and_del(ptr noundef %11) #9, !dbg !1826
  %tobool10 = icmp ne i32 %call9, 0, !dbg !1826
  br i1 %tobool10, label %if.end, label %if.then11, !dbg !1827

if.then11:                                        ; preds = %if.then
  store ptr null, ptr %put, align 8, !dbg !1828
  br label %if.end, !dbg !1829

if.end:                                           ; preds = %if.then11, %if.then
  br label %if.end15, !dbg !1830

if.else:                                          ; preds = %do.end6
  %12 = load ptr, ptr %i.addr, align 8, !dbg !1831
  %i_klist12 = getelementptr inbounds %struct.klist_iter, ptr %12, i32 0, i32 0, !dbg !1832
  %13 = load ptr, ptr %i_klist12, align 8, !dbg !1832
  %k_list = getelementptr inbounds %struct.klist, ptr %13, i32 0, i32 1, !dbg !1833
  %prev13 = getelementptr inbounds %struct.list_head, ptr %k_list, i32 0, i32 1, !dbg !1834
  %14 = load ptr, ptr %prev13, align 8, !dbg !1834
  %call14 = call ptr @to_klist_node(ptr noundef %14) #9, !dbg !1835
  store ptr %call14, ptr %prev, align 8, !dbg !1836
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end
  %15 = load ptr, ptr %i.addr, align 8, !dbg !1837
  %i_cur16 = getelementptr inbounds %struct.klist_iter, ptr %15, i32 0, i32 1, !dbg !1838
  store ptr null, ptr %i_cur16, align 8, !dbg !1839
  br label %while.cond, !dbg !1840

while.cond:                                       ; preds = %if.end29, %if.end15
  %16 = load ptr, ptr %prev, align 8, !dbg !1841
  %17 = load ptr, ptr %i.addr, align 8, !dbg !1842
  %i_klist17 = getelementptr inbounds %struct.klist_iter, ptr %17, i32 0, i32 0, !dbg !1843
  %18 = load ptr, ptr %i_klist17, align 8, !dbg !1843
  %k_list18 = getelementptr inbounds %struct.klist, ptr %18, i32 0, i32 1, !dbg !1844
  %call19 = call ptr @to_klist_node(ptr noundef %k_list18) #9, !dbg !1845
  %cmp20 = icmp ne ptr %16, %call19, !dbg !1846
  br i1 %cmp20, label %while.body, label %while.end, !dbg !1840

while.body:                                       ; preds = %while.cond
  %19 = load ptr, ptr %prev, align 8, !dbg !1847
  %call22 = call zeroext i1 @knode_dead(ptr noundef %19) #9, !dbg !1847
  %lnot = xor i1 %call22, true, !dbg !1847
  %lnot23 = xor i1 %lnot, true, !dbg !1847
  %lnot24 = xor i1 %lnot23, true, !dbg !1847
  %lnot.ext = zext i1 %lnot24 to i32, !dbg !1847
  %conv25 = sext i32 %lnot.ext to i64, !dbg !1847
  %expval = call i64 @llvm.expect.i64(i64 %conv25, i64 1), !dbg !1847
  %tobool26 = icmp ne i64 %expval, 0, !dbg !1847
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !1850

if.then27:                                        ; preds = %while.body
  %20 = load ptr, ptr %prev, align 8, !dbg !1851
  %n_ref = getelementptr inbounds %struct.klist_node, ptr %20, i32 0, i32 2, !dbg !1853
  call void @kref_get(ptr noundef %n_ref) #9, !dbg !1854
  %21 = load ptr, ptr %prev, align 8, !dbg !1855
  %22 = load ptr, ptr %i.addr, align 8, !dbg !1856
  %i_cur28 = getelementptr inbounds %struct.klist_iter, ptr %22, i32 0, i32 1, !dbg !1857
  store ptr %21, ptr %i_cur28, align 8, !dbg !1858
  br label %while.end, !dbg !1859

if.end29:                                         ; preds = %while.body
  %23 = load ptr, ptr %prev, align 8, !dbg !1860
  %n_node30 = getelementptr inbounds %struct.klist_node, ptr %23, i32 0, i32 1, !dbg !1861
  %prev31 = getelementptr inbounds %struct.list_head, ptr %n_node30, i32 0, i32 1, !dbg !1862
  %24 = load ptr, ptr %prev31, align 8, !dbg !1862
  %call32 = call ptr @to_klist_node(ptr noundef %24) #9, !dbg !1863
  store ptr %call32, ptr %prev, align 8, !dbg !1864
  br label %while.cond, !dbg !1840, !llvm.loop !1865

while.end:                                        ; preds = %if.then27, %while.cond
  %25 = load ptr, ptr %i.addr, align 8, !dbg !1868
  %i_klist33 = getelementptr inbounds %struct.klist_iter, ptr %25, i32 0, i32 0, !dbg !1869
  %26 = load ptr, ptr %i_klist33, align 8, !dbg !1869
  %k_lock34 = getelementptr inbounds %struct.klist, ptr %26, i32 0, i32 0, !dbg !1870
  %27 = load i64, ptr %flags, align 8, !dbg !1871
  call void @spin_unlock_irqrestore(ptr noundef %k_lock34, i64 noundef %27) #9, !dbg !1872
  %28 = load ptr, ptr %put, align 8, !dbg !1873
  %tobool35 = icmp ne ptr %28, null, !dbg !1873
  br i1 %tobool35, label %land.lhs.true, label %if.end38, !dbg !1875

land.lhs.true:                                    ; preds = %while.end
  %29 = load ptr, ptr %last, align 8, !dbg !1876
  %tobool36 = icmp ne ptr %29, null, !dbg !1876
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !1877

if.then37:                                        ; preds = %land.lhs.true
  %30 = load ptr, ptr %put, align 8, !dbg !1878
  %31 = load ptr, ptr %last, align 8, !dbg !1879
  call void %30(ptr noundef %31) #9, !dbg !1878
  br label %if.end38, !dbg !1878

if.end38:                                         ; preds = %if.then37, %land.lhs.true, %while.end
  %32 = load ptr, ptr %i.addr, align 8, !dbg !1880
  %i_cur39 = getelementptr inbounds %struct.klist_iter, ptr %32, i32 0, i32 1, !dbg !1881
  %33 = load ptr, ptr %i_cur39, align 8, !dbg !1881
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !1882
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #10, !dbg !1882
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #10, !dbg !1882
  call void @llvm.lifetime.end.p0(i64 8, ptr %put) #10, !dbg !1882
  ret ptr %33, !dbg !1883
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1884 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_klist_node(ptr noundef %n) #0 align 16 !dbg !1888 {
entry:
  %n.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1892, metadata !DIExpression()), !dbg !1895
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !1896
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1893, metadata !DIExpression()), !dbg !1896
  %0 = load ptr, ptr %n.addr, align 8, !dbg !1896
  store ptr %0, ptr %__mptr, align 8, !dbg !1896
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1896
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !1896
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1896
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !1897
  %2 = load ptr, ptr %tmp, align 8, !dbg !1896
  ret ptr %2, !dbg !1898
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @klist_dec_and_del(ptr noundef %n) #0 align 16 !dbg !1899 {
entry:
  %n.addr = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1901, metadata !DIExpression()), !dbg !1902
  %0 = load ptr, ptr %n.addr, align 8, !dbg !1903
  %n_ref = getelementptr inbounds %struct.klist_node, ptr %0, i32 0, i32 2, !dbg !1904
  %call = call i32 @kref_put(ptr noundef %n_ref, ptr noundef @klist_release) #9, !dbg !1905
  ret i32 %call, !dbg !1906
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @knode_dead(ptr noundef %knode) #0 align 16 !dbg !1907 {
entry:
  %knode.addr = alloca ptr, align 8
  store ptr %knode, ptr %knode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %knode.addr, metadata !1911, metadata !DIExpression()), !dbg !1912
  %0 = load ptr, ptr %knode.addr, align 8, !dbg !1913
  %n_klist = getelementptr inbounds %struct.klist_node, ptr %0, i32 0, i32 0, !dbg !1914
  %1 = load ptr, ptr %n_klist, align 8, !dbg !1914
  %2 = ptrtoint ptr %1 to i64, !dbg !1915
  %and = and i64 %2, 1, !dbg !1916
  %tobool = icmp ne i64 %and, 0, !dbg !1915
  ret i1 %tobool, !dbg !1917
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #2 align 16 !dbg !1918 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !1922, metadata !DIExpression()), !dbg !1923
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !1924
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !1925
  call void @refcount_inc(ptr noundef %refcount) #9, !dbg !1926
  ret void, !dbg !1927
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #3 align 16 !dbg !1928 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1932, metadata !DIExpression()), !dbg !1938
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1933, metadata !DIExpression()), !dbg !1939
  br label %do.body, !dbg !1940

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !1941
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1934, metadata !DIExpression()), !dbg !1941
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !1941
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1937, metadata !DIExpression()), !dbg !1941
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1941
  %conv = zext i1 %cmp to i32, !dbg !1941
  store i32 1, ptr %tmp, align 4, !dbg !1941
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !1942
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !1942
  %0 = load i32, ptr %tmp, align 4, !dbg !1941
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !1942
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !1942
  %3 = load i64, ptr %flags.addr, align 8, !dbg !1942
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #9, !dbg !1942
  br label %do.end, !dbg !1942

do.end:                                           ; preds = %do.body
  ret void, !dbg !1943
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @klist_next(ptr noundef %i) #0 align 16 !dbg !1944 {
entry:
  %i.addr = alloca ptr, align 8
  %put = alloca ptr, align 8
  %last = alloca ptr, align 8
  %next = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1946, metadata !DIExpression()), !dbg !1956
  call void @llvm.lifetime.start.p0(i64 8, ptr %put) #10, !dbg !1957
  call void @llvm.dbg.declare(metadata ptr %put, metadata !1947, metadata !DIExpression()), !dbg !1958
  %0 = load ptr, ptr %i.addr, align 8, !dbg !1959
  %i_klist = getelementptr inbounds %struct.klist_iter, ptr %0, i32 0, i32 0, !dbg !1960
  %1 = load ptr, ptr %i_klist, align 8, !dbg !1960
  %put1 = getelementptr inbounds %struct.klist, ptr %1, i32 0, i32 3, !dbg !1961
  %2 = load ptr, ptr %put1, align 8, !dbg !1961
  store ptr %2, ptr %put, align 8, !dbg !1958
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #10, !dbg !1962
  call void @llvm.dbg.declare(metadata ptr %last, metadata !1948, metadata !DIExpression()), !dbg !1963
  %3 = load ptr, ptr %i.addr, align 8, !dbg !1964
  %i_cur = getelementptr inbounds %struct.klist_iter, ptr %3, i32 0, i32 1, !dbg !1965
  %4 = load ptr, ptr %i_cur, align 8, !dbg !1965
  store ptr %4, ptr %last, align 8, !dbg !1963
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #10, !dbg !1966
  call void @llvm.dbg.declare(metadata ptr %next, metadata !1949, metadata !DIExpression()), !dbg !1967
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !1968
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1950, metadata !DIExpression()), !dbg !1969
  br label %do.body, !dbg !1970

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !1971

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !1972
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1951, metadata !DIExpression()), !dbg !1972
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !1972
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1955, metadata !DIExpression()), !dbg !1972
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1972
  %conv = zext i1 %cmp to i32, !dbg !1972
  store i32 1, ptr %tmp, align 4, !dbg !1972
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !1973
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !1973
  %5 = load i32, ptr %tmp, align 4, !dbg !1972
  %6 = load ptr, ptr %i.addr, align 8, !dbg !1973
  %i_klist3 = getelementptr inbounds %struct.klist_iter, ptr %6, i32 0, i32 0, !dbg !1973
  %7 = load ptr, ptr %i_klist3, align 8, !dbg !1973
  %k_lock = getelementptr inbounds %struct.klist, ptr %7, i32 0, i32 0, !dbg !1973
  %call = call ptr @spinlock_check(ptr noundef %k_lock) #9, !dbg !1973
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #9, !dbg !1973
  store i64 %call4, ptr %flags, align 8, !dbg !1973
  br label %do.cond, !dbg !1973

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !1973

do.end:                                           ; preds = %do.cond
  br label %do.cond5, !dbg !1971

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !1971

do.end6:                                          ; preds = %do.cond5
  %8 = load ptr, ptr %last, align 8, !dbg !1974
  %tobool = icmp ne ptr %8, null, !dbg !1974
  br i1 %tobool, label %if.then, label %if.else, !dbg !1976

if.then:                                          ; preds = %do.end6
  %9 = load ptr, ptr %last, align 8, !dbg !1977
  %n_node = getelementptr inbounds %struct.klist_node, ptr %9, i32 0, i32 1, !dbg !1979
  %next7 = getelementptr inbounds %struct.list_head, ptr %n_node, i32 0, i32 0, !dbg !1980
  %10 = load ptr, ptr %next7, align 8, !dbg !1980
  %call8 = call ptr @to_klist_node(ptr noundef %10) #9, !dbg !1981
  store ptr %call8, ptr %next, align 8, !dbg !1982
  %11 = load ptr, ptr %last, align 8, !dbg !1983
  %call9 = call i32 @klist_dec_and_del(ptr noundef %11) #9, !dbg !1985
  %tobool10 = icmp ne i32 %call9, 0, !dbg !1985
  br i1 %tobool10, label %if.end, label %if.then11, !dbg !1986

if.then11:                                        ; preds = %if.then
  store ptr null, ptr %put, align 8, !dbg !1987
  br label %if.end, !dbg !1988

if.end:                                           ; preds = %if.then11, %if.then
  br label %if.end15, !dbg !1989

if.else:                                          ; preds = %do.end6
  %12 = load ptr, ptr %i.addr, align 8, !dbg !1990
  %i_klist12 = getelementptr inbounds %struct.klist_iter, ptr %12, i32 0, i32 0, !dbg !1991
  %13 = load ptr, ptr %i_klist12, align 8, !dbg !1991
  %k_list = getelementptr inbounds %struct.klist, ptr %13, i32 0, i32 1, !dbg !1992
  %next13 = getelementptr inbounds %struct.list_head, ptr %k_list, i32 0, i32 0, !dbg !1993
  %14 = load ptr, ptr %next13, align 8, !dbg !1993
  %call14 = call ptr @to_klist_node(ptr noundef %14) #9, !dbg !1994
  store ptr %call14, ptr %next, align 8, !dbg !1995
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end
  %15 = load ptr, ptr %i.addr, align 8, !dbg !1996
  %i_cur16 = getelementptr inbounds %struct.klist_iter, ptr %15, i32 0, i32 1, !dbg !1997
  store ptr null, ptr %i_cur16, align 8, !dbg !1998
  br label %while.cond, !dbg !1999

while.cond:                                       ; preds = %if.end29, %if.end15
  %16 = load ptr, ptr %next, align 8, !dbg !2000
  %17 = load ptr, ptr %i.addr, align 8, !dbg !2001
  %i_klist17 = getelementptr inbounds %struct.klist_iter, ptr %17, i32 0, i32 0, !dbg !2002
  %18 = load ptr, ptr %i_klist17, align 8, !dbg !2002
  %k_list18 = getelementptr inbounds %struct.klist, ptr %18, i32 0, i32 1, !dbg !2003
  %call19 = call ptr @to_klist_node(ptr noundef %k_list18) #9, !dbg !2004
  %cmp20 = icmp ne ptr %16, %call19, !dbg !2005
  br i1 %cmp20, label %while.body, label %while.end, !dbg !1999

while.body:                                       ; preds = %while.cond
  %19 = load ptr, ptr %next, align 8, !dbg !2006
  %call22 = call zeroext i1 @knode_dead(ptr noundef %19) #9, !dbg !2006
  %lnot = xor i1 %call22, true, !dbg !2006
  %lnot23 = xor i1 %lnot, true, !dbg !2006
  %lnot24 = xor i1 %lnot23, true, !dbg !2006
  %lnot.ext = zext i1 %lnot24 to i32, !dbg !2006
  %conv25 = sext i32 %lnot.ext to i64, !dbg !2006
  %expval = call i64 @llvm.expect.i64(i64 %conv25, i64 1), !dbg !2006
  %tobool26 = icmp ne i64 %expval, 0, !dbg !2006
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !2009

if.then27:                                        ; preds = %while.body
  %20 = load ptr, ptr %next, align 8, !dbg !2010
  %n_ref = getelementptr inbounds %struct.klist_node, ptr %20, i32 0, i32 2, !dbg !2012
  call void @kref_get(ptr noundef %n_ref) #9, !dbg !2013
  %21 = load ptr, ptr %next, align 8, !dbg !2014
  %22 = load ptr, ptr %i.addr, align 8, !dbg !2015
  %i_cur28 = getelementptr inbounds %struct.klist_iter, ptr %22, i32 0, i32 1, !dbg !2016
  store ptr %21, ptr %i_cur28, align 8, !dbg !2017
  br label %while.end, !dbg !2018

if.end29:                                         ; preds = %while.body
  %23 = load ptr, ptr %next, align 8, !dbg !2019
  %n_node30 = getelementptr inbounds %struct.klist_node, ptr %23, i32 0, i32 1, !dbg !2020
  %next31 = getelementptr inbounds %struct.list_head, ptr %n_node30, i32 0, i32 0, !dbg !2021
  %24 = load ptr, ptr %next31, align 8, !dbg !2021
  %call32 = call ptr @to_klist_node(ptr noundef %24) #9, !dbg !2022
  store ptr %call32, ptr %next, align 8, !dbg !2023
  br label %while.cond, !dbg !1999, !llvm.loop !2024

while.end:                                        ; preds = %if.then27, %while.cond
  %25 = load ptr, ptr %i.addr, align 8, !dbg !2026
  %i_klist33 = getelementptr inbounds %struct.klist_iter, ptr %25, i32 0, i32 0, !dbg !2027
  %26 = load ptr, ptr %i_klist33, align 8, !dbg !2027
  %k_lock34 = getelementptr inbounds %struct.klist, ptr %26, i32 0, i32 0, !dbg !2028
  %27 = load i64, ptr %flags, align 8, !dbg !2029
  call void @spin_unlock_irqrestore(ptr noundef %k_lock34, i64 noundef %27) #9, !dbg !2030
  %28 = load ptr, ptr %put, align 8, !dbg !2031
  %tobool35 = icmp ne ptr %28, null, !dbg !2031
  br i1 %tobool35, label %land.lhs.true, label %if.end38, !dbg !2033

land.lhs.true:                                    ; preds = %while.end
  %29 = load ptr, ptr %last, align 8, !dbg !2034
  %tobool36 = icmp ne ptr %29, null, !dbg !2034
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !2035

if.then37:                                        ; preds = %land.lhs.true
  %30 = load ptr, ptr %put, align 8, !dbg !2036
  %31 = load ptr, ptr %last, align 8, !dbg !2037
  call void %30(ptr noundef %31) #9, !dbg !2036
  br label %if.end38, !dbg !2036

if.end38:                                         ; preds = %if.then37, %land.lhs.true, %while.end
  %32 = load ptr, ptr %i.addr, align 8, !dbg !2038
  %i_cur39 = getelementptr inbounds %struct.klist_iter, ptr %32, i32 0, i32 1, !dbg !2039
  %33 = load ptr, ptr %i_cur39, align 8, !dbg !2039
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !2040
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #10, !dbg !2040
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #10, !dbg !2040
  call void @llvm.lifetime.end.p0(i64 8, ptr %put) #10, !dbg !2040
  ret ptr %33, !dbg !2041
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_init(ptr noundef %kref) #2 align 16 !dbg !2042 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !2044, metadata !DIExpression()), !dbg !2045
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !2046
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !2047
  call void @refcount_set(ptr noundef %refcount, i32 noundef 1) #9, !dbg !2048
  ret void, !dbg !2049
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @knode_set_klist(ptr noundef %knode, ptr noundef %klist) #0 align 16 !dbg !2050 {
entry:
  %knode.addr = alloca ptr, align 8
  %klist.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %knode, ptr %knode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %knode.addr, metadata !2052, metadata !DIExpression()), !dbg !2059
  store ptr %klist, ptr %klist.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %klist.addr, metadata !2053, metadata !DIExpression()), !dbg !2060
  %0 = load ptr, ptr %klist.addr, align 8, !dbg !2061
  %1 = load ptr, ptr %knode.addr, align 8, !dbg !2062
  %n_klist = getelementptr inbounds %struct.klist_node, ptr %1, i32 0, i32 0, !dbg !2063
  store ptr %0, ptr %n_klist, align 8, !dbg !2064
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !2065
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2054, metadata !DIExpression()), !dbg !2065
  %2 = load ptr, ptr %knode.addr, align 8, !dbg !2065
  %call = call zeroext i1 @knode_dead(ptr noundef %2) #9, !dbg !2065
  %lnot = xor i1 %call, true, !dbg !2065
  %lnot1 = xor i1 %lnot, true, !dbg !2065
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2065
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2065
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !2066
  %tobool = icmp ne i32 %3, 0, !dbg !2066
  %lnot2 = xor i1 %tobool, true, !dbg !2066
  %lnot4 = xor i1 %lnot2, true, !dbg !2066
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !2066
  %conv = sext i32 %lnot.ext5 to i64, !dbg !2066
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2066
  %tobool6 = icmp ne i64 %expval, 0, !dbg !2066
  br i1 %tobool6, label %if.then, label %if.end, !dbg !2065

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2066

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !2067
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2056, metadata !DIExpression()), !dbg !2067
  store i32 2305, ptr %__flags, align 4, !dbg !2067
  br label %do.body7, !dbg !2067

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !2068

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !2068

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !2067

do.body8:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !2070
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 62, i32 %4, i64 12) #10, !dbg !2070, !srcloc !2072
  br label %do.cond9, !dbg !2070

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2070

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !2067

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !2073

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2073

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !2066
  br label %do.cond14, !dbg !2067

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !2067

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !2067

if.end:                                           ; preds = %do.end15, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !2065
  %tobool16 = icmp ne i32 %5, 0, !dbg !2065
  %lnot17 = xor i1 %tobool16, true, !dbg !2065
  %lnot19 = xor i1 %lnot17, true, !dbg !2065
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !2065
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !2065
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !2065
  store i64 %expval22, ptr %tmp, align 8, !dbg !2066
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !2075
  %6 = load i64, ptr %tmp, align 8, !dbg !2065
  ret void, !dbg !2076
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #2 align 16 !dbg !2077 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2082, metadata !DIExpression()), !dbg !2084
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2083, metadata !DIExpression()), !dbg !2085
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2086
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !2087
  %1 = load i32, ptr %n.addr, align 4, !dbg !2088
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #9, !dbg !2089
  ret void, !dbg !2090
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !2091 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2097, metadata !DIExpression()), !dbg !2099
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2098, metadata !DIExpression()), !dbg !2100
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2101
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #9, !dbg !2102
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2103
  %2 = load i32, ptr %i.addr, align 4, !dbg !2104
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #9, !dbg !2105
  ret void, !dbg !2106
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !2107 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2109, metadata !DIExpression()), !dbg !2111
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2110, metadata !DIExpression()), !dbg !2112
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2113
  %1 = load i64, ptr %size.addr, align 8, !dbg !2114
  %conv = trunc i64 %1 to i32, !dbg !2114
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !2115
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2116
  %3 = load i64, ptr %size.addr, align 8, !dbg !2116
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #9, !dbg !2116
  ret void, !dbg !2117
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !2118 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2121, metadata !DIExpression()), !dbg !2123
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2122, metadata !DIExpression()), !dbg !2124
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2125
  %1 = load i32, ptr %i.addr, align 4, !dbg !2126
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #9, !dbg !2127
  ret void, !dbg !2128
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !2129 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2134, metadata !DIExpression()), !dbg !2136
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2135, metadata !DIExpression()), !dbg !2137
  ret i1 true, !dbg !2138
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !2139 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2144, metadata !DIExpression()), !dbg !2147
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2145, metadata !DIExpression()), !dbg !2148
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2146, metadata !DIExpression()), !dbg !2149
  ret void, !dbg !2150
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !2151 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2154, metadata !DIExpression()), !dbg !2156
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2155, metadata !DIExpression()), !dbg !2157
  br label %do.body, !dbg !2158

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !2159
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2159
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !2159
  store volatile i32 %0, ptr %counter, align 4, !dbg !2159
  br label %do.end, !dbg !2159

do.end:                                           ; preds = %do.body
  ret void, !dbg !2161
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2162 dso_local void @_raw_spin_lock(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #2 align 16 !dbg !2165 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2169, metadata !DIExpression()), !dbg !2172
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2170, metadata !DIExpression()), !dbg !2173
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2171, metadata !DIExpression()), !dbg !2174
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2175
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !2177
  %2 = load ptr, ptr %next.addr, align 8, !dbg !2178
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9, !dbg !2179
  br i1 %call, label %if.end, label %if.then, !dbg !2180

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !2181

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !2182
  %4 = load ptr, ptr %next.addr, align 8, !dbg !2183
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !2184
  store ptr %3, ptr %prev1, align 8, !dbg !2185
  %5 = load ptr, ptr %next.addr, align 8, !dbg !2186
  %6 = load ptr, ptr %new.addr, align 8, !dbg !2187
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !2188
  store ptr %5, ptr %next2, align 8, !dbg !2189
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !2190
  %8 = load ptr, ptr %new.addr, align 8, !dbg !2191
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !2192
  store ptr %7, ptr %prev3, align 8, !dbg !2193
  br label %do.body, !dbg !2194

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !2195

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !2197

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !2195

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !2199
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !2199
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !2199
  store volatile ptr %9, ptr %next6, align 8, !dbg !2199
  br label %do.end7, !dbg !2199

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !2195

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !2201
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #2 align 16 !dbg !2202 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2206, metadata !DIExpression()), !dbg !2209
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2207, metadata !DIExpression()), !dbg !2210
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2208, metadata !DIExpression()), !dbg !2211
  ret i1 true, !dbg !2212
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2213 dso_local void @_raw_spin_unlock(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @knode_kill(ptr noundef %knode) #0 align 16 !dbg !2214 {
entry:
  %knode.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %knode, ptr %knode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %knode.addr, metadata !2216, metadata !DIExpression()), !dbg !2222
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !2223
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2217, metadata !DIExpression()), !dbg !2223
  %0 = load ptr, ptr %knode.addr, align 8, !dbg !2223
  %call = call zeroext i1 @knode_dead(ptr noundef %0) #9, !dbg !2223
  %lnot = xor i1 %call, true, !dbg !2223
  %lnot1 = xor i1 %lnot, true, !dbg !2223
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2223
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2223
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !2224
  %tobool = icmp ne i32 %1, 0, !dbg !2224
  %lnot2 = xor i1 %tobool, true, !dbg !2224
  %lnot4 = xor i1 %lnot2, true, !dbg !2224
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !2224
  %conv = sext i32 %lnot.ext5 to i64, !dbg !2224
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2224
  %tobool6 = icmp ne i64 %expval, 0, !dbg !2224
  br i1 %tobool6, label %if.then, label %if.end, !dbg !2223

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2224

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !2225
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2219, metadata !DIExpression()), !dbg !2225
  store i32 2305, ptr %__flags, align 4, !dbg !2225
  br label %do.body7, !dbg !2225

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !2226

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !2226

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !2225

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !2228
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 68, i32 %2, i64 12) #10, !dbg !2228, !srcloc !2230
  br label %do.cond9, !dbg !2228

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2228

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !2225

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !2231

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2231

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !2224
  br label %do.cond14, !dbg !2225

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !2225

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !2225

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !2223
  %tobool16 = icmp ne i32 %3, 0, !dbg !2223
  %lnot17 = xor i1 %tobool16, true, !dbg !2223
  %lnot19 = xor i1 %lnot17, true, !dbg !2223
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !2223
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !2223
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !2223
  store i64 %expval22, ptr %tmp, align 8, !dbg !2224
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !2233
  %4 = load i64, ptr %tmp, align 8, !dbg !2223
  %5 = load ptr, ptr %knode.addr, align 8, !dbg !2234
  %n_klist = getelementptr inbounds %struct.klist_node, ptr %5, i32 0, i32 0, !dbg !2235
  %6 = load i64, ptr %n_klist, align 8, !dbg !2236
  %or = or i64 %6, 1, !dbg !2236
  store i64 %or, ptr %n_klist, align 8, !dbg !2236
  ret void, !dbg !2237
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_inc_not_zero(ptr noundef %r) #2 align 16 !dbg !2238 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2242, metadata !DIExpression()), !dbg !2243
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2244
  %call = call zeroext i1 @__refcount_inc_not_zero(ptr noundef %0, ptr noundef null) #9, !dbg !2245
  ret i1 %call, !dbg !2246
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_inc_not_zero(ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !2247 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2251, metadata !DIExpression()), !dbg !2253
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2252, metadata !DIExpression()), !dbg !2254
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2255
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !2256
  %call = call zeroext i1 @__refcount_add_not_zero(i32 noundef 1, ptr noundef %0, ptr noundef %1) #9, !dbg !2257
  ret i1 %call, !dbg !2258
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_add_not_zero(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !2259 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2263, metadata !DIExpression()), !dbg !2267
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2264, metadata !DIExpression()), !dbg !2268
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2265, metadata !DIExpression()), !dbg !2269
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #10, !dbg !2270
  call void @llvm.dbg.declare(metadata ptr %old, metadata !2266, metadata !DIExpression()), !dbg !2271
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2272
  %call = call i32 @refcount_read(ptr noundef %0) #9, !dbg !2273
  store i32 %call, ptr %old, align 4, !dbg !2271
  br label %do.body, !dbg !2274

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %old, align 4, !dbg !2275
  %tobool = icmp ne i32 %1, 0, !dbg !2275
  br i1 %tobool, label %if.end, label %if.then, !dbg !2278

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !2279

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !2280

do.cond:                                          ; preds = %if.end
  %2 = load ptr, ptr %r.addr, align 8, !dbg !2281
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %2, i32 0, i32 0, !dbg !2282
  %3 = load i32, ptr %old, align 4, !dbg !2283
  %4 = load i32, ptr %i.addr, align 4, !dbg !2284
  %add = add i32 %3, %4, !dbg !2285
  %call1 = call zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %refs, ptr noundef %old, i32 noundef %add) #9, !dbg !2286
  %lnot = xor i1 %call1, true, !dbg !2287
  br i1 %lnot, label %do.body, label %do.end, !dbg !2280, !llvm.loop !2288

do.end:                                           ; preds = %do.cond, %if.then
  %5 = load ptr, ptr %oldp.addr, align 8, !dbg !2290
  %tobool2 = icmp ne ptr %5, null, !dbg !2290
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2292

if.then3:                                         ; preds = %do.end
  %6 = load i32, ptr %old, align 4, !dbg !2293
  %7 = load ptr, ptr %oldp.addr, align 8, !dbg !2294
  store i32 %6, ptr %7, align 4, !dbg !2295
  br label %if.end4, !dbg !2296

if.end4:                                          ; preds = %if.then3, %do.end
  %8 = load i32, ptr %old, align 4, !dbg !2297
  %cmp = icmp slt i32 %8, 0, !dbg !2297
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !2297

lor.rhs:                                          ; preds = %if.end4
  %9 = load i32, ptr %old, align 4, !dbg !2297
  %10 = load i32, ptr %i.addr, align 4, !dbg !2297
  %add5 = add i32 %9, %10, !dbg !2297
  %cmp6 = icmp slt i32 %add5, 0, !dbg !2297
  br label %lor.end, !dbg !2297

lor.end:                                          ; preds = %lor.rhs, %if.end4
  %11 = phi i1 [ true, %if.end4 ], [ %cmp6, %lor.rhs ]
  %lnot7 = xor i1 %11, true, !dbg !2297
  %lnot8 = xor i1 %lnot7, true, !dbg !2297
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !2297
  %conv = sext i32 %lnot.ext to i64, !dbg !2297
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2297
  %tobool9 = icmp ne i64 %expval, 0, !dbg !2297
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !2299

if.then10:                                        ; preds = %lor.end
  %12 = load ptr, ptr %r.addr, align 8, !dbg !2300
  call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 0) #9, !dbg !2301
  br label %if.end11, !dbg !2301

if.end11:                                         ; preds = %if.then10, %lor.end
  %13 = load i32, ptr %old, align 4, !dbg !2302
  %tobool12 = icmp ne i32 %13, 0, !dbg !2302
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #10, !dbg !2303
  ret i1 %tobool12, !dbg !2304
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @refcount_read(ptr noundef %r) #2 align 16 !dbg !2305 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2311, metadata !DIExpression()), !dbg !2312
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2313
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !2314
  %call = call i32 @atomic_read(ptr noundef %refs) #9, !dbg !2315
  ret i32 %call, !dbg !2316
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #3 align 16 !dbg !2317 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2321, metadata !DIExpression()), !dbg !2324
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2322, metadata !DIExpression()), !dbg !2325
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2323, metadata !DIExpression()), !dbg !2326
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2327
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #9, !dbg !2328
  %1 = load ptr, ptr %old.addr, align 8, !dbg !2329
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #9, !dbg !2330
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2331
  %3 = load ptr, ptr %old.addr, align 8, !dbg !2332
  %4 = load i32, ptr %new.addr, align 4, !dbg !2333
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %2, ptr noundef %3, i32 noundef %4) #9, !dbg !2334
  ret i1 %call, !dbg !2335
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2336 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #3 align 16 !dbg !2339 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2345, metadata !DIExpression()), !dbg !2346
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2347
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #9, !dbg !2348
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2349
  %call = call i32 @raw_atomic_read(ptr noundef %1) #9, !dbg !2350
  ret i32 %call, !dbg !2351
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !2352 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2354, metadata !DIExpression()), !dbg !2356
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2355, metadata !DIExpression()), !dbg !2357
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2358
  %1 = load i64, ptr %size.addr, align 8, !dbg !2359
  %conv = trunc i64 %1 to i32, !dbg !2359
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #9, !dbg !2360
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2361
  %3 = load i64, ptr %size.addr, align 8, !dbg !2361
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #9, !dbg !2361
  ret void, !dbg !2362
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !2363 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2365, metadata !DIExpression()), !dbg !2366
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2367
  %call = call i32 @arch_atomic_read(ptr noundef %0) #9, !dbg !2368
  ret i32 %call, !dbg !2369
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !2370 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2372, metadata !DIExpression()), !dbg !2374
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2373, metadata !DIExpression()), !dbg !2375
  ret i1 true, !dbg !2376
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !2377 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2379, metadata !DIExpression()), !dbg !2380
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2381
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !2381
  %1 = load volatile i32, ptr %counter, align 4, !dbg !2381
  ret i32 %1, !dbg !2382
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #3 align 16 !dbg !2383 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2385, metadata !DIExpression()), !dbg !2388
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2386, metadata !DIExpression()), !dbg !2389
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2387, metadata !DIExpression()), !dbg !2390
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2391
  %1 = load ptr, ptr %old.addr, align 8, !dbg !2392
  %2 = load i32, ptr %new.addr, align 4, !dbg !2393
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9, !dbg !2394
  ret i1 %call, !dbg !2395
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #3 align 16 !dbg !2396 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2398, metadata !DIExpression()), !dbg !2407
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2399, metadata !DIExpression()), !dbg !2408
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2400, metadata !DIExpression()), !dbg !2409
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #10, !dbg !2410
  call void @llvm.dbg.declare(metadata ptr %success, metadata !2401, metadata !DIExpression()), !dbg !2410
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #10, !dbg !2410
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !2403, metadata !DIExpression()), !dbg !2410
  %0 = load ptr, ptr %old.addr, align 8, !dbg !2410
  store ptr %0, ptr %_old, align 8, !dbg !2410
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #10, !dbg !2410
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !2404, metadata !DIExpression()), !dbg !2410
  %1 = load ptr, ptr %_old, align 8, !dbg !2410
  %2 = load i32, ptr %1, align 4, !dbg !2410
  store i32 %2, ptr %__old, align 4, !dbg !2410
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #10, !dbg !2410
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !2405, metadata !DIExpression()), !dbg !2410
  %3 = load i32, ptr %new.addr, align 4, !dbg !2410
  store i32 %3, ptr %__new, align 4, !dbg !2410
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !2410
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2406, metadata !DIExpression()), !dbg !2410
  %4 = load ptr, ptr %v.addr, align 8, !dbg !2410
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !2410
  store ptr %counter, ptr %__ptr, align 8, !dbg !2410
  %5 = load ptr, ptr %__ptr, align 8, !dbg !2410
  %6 = load i32, ptr %__old, align 4, !dbg !2410
  %7 = load i32, ptr %__new, align 4, !dbg !2410
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #10, !dbg !2410, !srcloc !2411
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !2410
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !2410
  %9 = icmp ult i8 %asmresult, 2, !dbg !2410
  call void @llvm.assume(i1 %9), !dbg !2410
  store i8 %asmresult, ptr %success, align 1, !dbg !2410
  store i32 %asmresult1, ptr %__old, align 4, !dbg !2410
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !2410
  %10 = load i8, ptr %success, align 1, !dbg !2412, !range !1570, !noundef !972
  %tobool = trunc i8 %10 to i1, !dbg !2412
  %lnot = xor i1 %tobool, true, !dbg !2412
  %lnot2 = xor i1 %lnot, true, !dbg !2412
  %lnot3 = xor i1 %lnot2, true, !dbg !2412
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2412
  %conv = sext i32 %lnot.ext to i64, !dbg !2412
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2412
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2412
  br i1 %tobool4, label %if.then, label %if.end, !dbg !2410

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !2412
  %12 = load ptr, ptr %_old, align 8, !dbg !2412
  store i32 %11, ptr %12, align 4, !dbg !2412
  br label %if.end, !dbg !2412

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !2410, !range !1570, !noundef !972
  %tobool5 = trunc i8 %13 to i1, !dbg !2410
  %lnot6 = xor i1 %tobool5, true, !dbg !2410
  %lnot8 = xor i1 %lnot6, true, !dbg !2410
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !2410
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !2410
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !2410
  store i64 %expval11, ptr %tmp, align 8, !dbg !2412
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #10, !dbg !2414
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #10, !dbg !2414
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #10, !dbg !2414
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #10, !dbg !2414
  %14 = load i64, ptr %tmp, align 8, !dbg !2410
  %tobool12 = icmp ne i64 %14, 0, !dbg !2414
  ret i1 %tobool12, !dbg !2415
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #2 align 16 !dbg !2416 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !2421, metadata !DIExpression()), !dbg !2423
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !2422, metadata !DIExpression()), !dbg !2424
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !2425
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !2427
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #9, !dbg !2428
  br i1 %call, label %if.then, label %if.end, !dbg !2429

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !2430
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !2432
  call void %1(ptr noundef %2) #9, !dbg !2430
  store i32 1, ptr %retval, align 4, !dbg !2433
  br label %return, !dbg !2433

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2434
  br label %return, !dbg !2434

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !2435
  ret i32 %3, !dbg !2435
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @klist_release(ptr noundef %kref) #0 align 16 !dbg !2436 {
entry:
  %kref.addr = alloca ptr, align 8
  %waiter = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %n = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp18 = alloca i64, align 8
  %__mptr26 = alloca ptr, align 8
  %tmp27 = alloca ptr, align 8
  %__mptr29 = alloca ptr, align 8
  %tmp30 = alloca ptr, align 8
  %__mptr48 = alloca ptr, align 8
  %tmp51 = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !2438, metadata !DIExpression()), !dbg !2457
  call void @llvm.lifetime.start.p0(i64 8, ptr %waiter) #10, !dbg !2458
  call void @llvm.dbg.declare(metadata ptr %waiter, metadata !2439, metadata !DIExpression()), !dbg !2459
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #10, !dbg !2458
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2440, metadata !DIExpression()), !dbg !2460
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10, !dbg !2461
  call void @llvm.dbg.declare(metadata ptr %n, metadata !2441, metadata !DIExpression()), !dbg !2462
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !2463
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2442, metadata !DIExpression()), !dbg !2463
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !2463
  store ptr %0, ptr %__mptr, align 8, !dbg !2463
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2463
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !2463
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !2463
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !2464
  %2 = load ptr, ptr %tmp1, align 8, !dbg !2463
  store ptr %2, ptr %n, align 8, !dbg !2462
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !2465
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2444, metadata !DIExpression()), !dbg !2465
  %3 = load ptr, ptr %n, align 8, !dbg !2465
  %call = call zeroext i1 @knode_dead(ptr noundef %3) #9, !dbg !2465
  %lnot = xor i1 %call, true, !dbg !2465
  %lnot2 = xor i1 %lnot, true, !dbg !2465
  %lnot3 = xor i1 %lnot2, true, !dbg !2465
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2465
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2465
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !2466
  %tobool = icmp ne i32 %4, 0, !dbg !2466
  %lnot4 = xor i1 %tobool, true, !dbg !2466
  %lnot6 = xor i1 %lnot4, true, !dbg !2466
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2466
  %conv = sext i32 %lnot.ext7 to i64, !dbg !2466
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2466
  %tobool8 = icmp ne i64 %expval, 0, !dbg !2466
  br i1 %tobool8, label %if.then, label %if.end, !dbg !2465

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2466

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !2467
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2446, metadata !DIExpression()), !dbg !2467
  store i32 2305, ptr %__flags, align 4, !dbg !2467
  br label %do.body9, !dbg !2467

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !2468

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !2468

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !2467

do.body10:                                        ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !2470
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 188, i32 %5, i64 12) #10, !dbg !2470, !srcloc !2472
  br label %do.cond11, !dbg !2470

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !2470

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !2467

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !2473

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !2473

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !2466
  br label %do.cond16, !dbg !2467

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !2467

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !2467

if.end:                                           ; preds = %do.end17, %entry
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !2465
  %tobool19 = icmp ne i32 %6, 0, !dbg !2465
  %lnot20 = xor i1 %tobool19, true, !dbg !2465
  %lnot22 = xor i1 %lnot20, true, !dbg !2465
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !2465
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !2465
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !2465
  store i64 %expval25, ptr %tmp18, align 8, !dbg !2466
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !2475
  %7 = load i64, ptr %tmp18, align 8, !dbg !2465
  %8 = load ptr, ptr %n, align 8, !dbg !2476
  %n_node = getelementptr inbounds %struct.klist_node, ptr %8, i32 0, i32 1, !dbg !2477
  call void @list_del(ptr noundef %n_node) #9, !dbg !2478
  call void @spin_lock(ptr noundef @klist_remove_lock) #9, !dbg !2479
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr26) #10, !dbg !2480
  call void @llvm.dbg.declare(metadata ptr %__mptr26, metadata !2449, metadata !DIExpression()), !dbg !2480
  %9 = load ptr, ptr @klist_remove_waiters, align 8, !dbg !2480
  store ptr %9, ptr %__mptr26, align 8, !dbg !2480
  %10 = load ptr, ptr %__mptr26, align 8, !dbg !2480
  %add.ptr28 = getelementptr i8, ptr %10, i64 0, !dbg !2480
  store ptr %add.ptr28, ptr %tmp27, align 8, !dbg !2480
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr26) #10, !dbg !2481
  %11 = load ptr, ptr %tmp27, align 8, !dbg !2480
  store ptr %11, ptr %waiter, align 8, !dbg !2481
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr29) #10, !dbg !2482
  call void @llvm.dbg.declare(metadata ptr %__mptr29, metadata !2452, metadata !DIExpression()), !dbg !2482
  %12 = load ptr, ptr %waiter, align 8, !dbg !2482
  %list = getelementptr inbounds %struct.klist_waiter, ptr %12, i32 0, i32 0, !dbg !2482
  %next = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !2482
  %13 = load ptr, ptr %next, align 8, !dbg !2482
  store ptr %13, ptr %__mptr29, align 8, !dbg !2482
  %14 = load ptr, ptr %__mptr29, align 8, !dbg !2482
  %add.ptr31 = getelementptr i8, ptr %14, i64 0, !dbg !2482
  store ptr %add.ptr31, ptr %tmp30, align 8, !dbg !2482
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr29) #10, !dbg !2481
  %15 = load ptr, ptr %tmp30, align 8, !dbg !2482
  store ptr %15, ptr %tmp, align 8, !dbg !2481
  br label %for.cond, !dbg !2481

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load ptr, ptr %waiter, align 8, !dbg !2483
  %list32 = getelementptr inbounds %struct.klist_waiter, ptr %16, i32 0, i32 0, !dbg !2483
  %cmp = icmp eq ptr %list32, @klist_remove_waiters, !dbg !2483
  %lnot34 = xor i1 %cmp, true, !dbg !2483
  br i1 %lnot34, label %for.body, label %for.end, !dbg !2481

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %waiter, align 8, !dbg !2484
  %node = getelementptr inbounds %struct.klist_waiter, ptr %17, i32 0, i32 1, !dbg !2487
  %18 = load ptr, ptr %node, align 8, !dbg !2487
  %19 = load ptr, ptr %n, align 8, !dbg !2488
  %cmp36 = icmp ne ptr %18, %19, !dbg !2489
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !2490

if.then38:                                        ; preds = %for.body
  br label %for.inc, !dbg !2491

if.end39:                                         ; preds = %for.body
  %20 = load ptr, ptr %waiter, align 8, !dbg !2492
  %list40 = getelementptr inbounds %struct.klist_waiter, ptr %20, i32 0, i32 0, !dbg !2493
  call void @list_del(ptr noundef %list40) #9, !dbg !2494
  %21 = load ptr, ptr %waiter, align 8, !dbg !2495
  %woken = getelementptr inbounds %struct.klist_waiter, ptr %21, i32 0, i32 3, !dbg !2496
  store i32 1, ptr %woken, align 8, !dbg !2497
  br label %do.body41, !dbg !2498

do.body41:                                        ; preds = %if.end39
  br label %do.body42, !dbg !2499

do.body42:                                        ; preds = %do.body41
  br label %do.cond43, !dbg !2501

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !2501

do.end44:                                         ; preds = %do.cond43
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !2499, !srcloc !2503
  br label %do.cond45, !dbg !2499

do.cond45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !2499

do.end46:                                         ; preds = %do.cond45
  %22 = load ptr, ptr %waiter, align 8, !dbg !2504
  %process = getelementptr inbounds %struct.klist_waiter, ptr %22, i32 0, i32 2, !dbg !2505
  %23 = load ptr, ptr %process, align 8, !dbg !2505
  %call47 = call i32 @wake_up_process(ptr noundef %23) #9, !dbg !2506
  br label %for.inc, !dbg !2507

for.inc:                                          ; preds = %do.end46, %if.then38
  %24 = load ptr, ptr %tmp, align 8, !dbg !2483
  store ptr %24, ptr %waiter, align 8, !dbg !2483
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr48) #10, !dbg !2508
  call void @llvm.dbg.declare(metadata ptr %__mptr48, metadata !2454, metadata !DIExpression()), !dbg !2508
  %25 = load ptr, ptr %tmp, align 8, !dbg !2508
  %list49 = getelementptr inbounds %struct.klist_waiter, ptr %25, i32 0, i32 0, !dbg !2508
  %next50 = getelementptr inbounds %struct.list_head, ptr %list49, i32 0, i32 0, !dbg !2508
  %26 = load ptr, ptr %next50, align 8, !dbg !2508
  store ptr %26, ptr %__mptr48, align 8, !dbg !2508
  %27 = load ptr, ptr %__mptr48, align 8, !dbg !2508
  %add.ptr52 = getelementptr i8, ptr %27, i64 0, !dbg !2508
  store ptr %add.ptr52, ptr %tmp51, align 8, !dbg !2508
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr48) #10, !dbg !2483
  %28 = load ptr, ptr %tmp51, align 8, !dbg !2508
  store ptr %28, ptr %tmp, align 8, !dbg !2483
  br label %for.cond, !dbg !2483, !llvm.loop !2509

for.end:                                          ; preds = %for.cond
  call void @spin_unlock(ptr noundef @klist_remove_lock) #9, !dbg !2511
  %29 = load ptr, ptr %n, align 8, !dbg !2512
  call void @knode_set_klist(ptr noundef %29, ptr noundef null) #9, !dbg !2513
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10, !dbg !2514
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #10, !dbg !2514
  call void @llvm.lifetime.end.p0(i64 8, ptr %waiter) #10, !dbg !2514
  ret void, !dbg !2514
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #2 align 16 !dbg !2515 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2517, metadata !DIExpression()), !dbg !2518
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2519
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #9, !dbg !2520
  ret i1 %call, !dbg !2521
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !2522 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2524, metadata !DIExpression()), !dbg !2526
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2525, metadata !DIExpression()), !dbg !2527
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2528
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !2529
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #9, !dbg !2530
  ret i1 %call, !dbg !2531
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !2532 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2534, metadata !DIExpression()), !dbg !2538
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2535, metadata !DIExpression()), !dbg !2539
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2536, metadata !DIExpression()), !dbg !2540
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #10, !dbg !2541
  call void @llvm.dbg.declare(metadata ptr %old, metadata !2537, metadata !DIExpression()), !dbg !2542
  %0 = load i32, ptr %i.addr, align 4, !dbg !2543
  %1 = load ptr, ptr %r.addr, align 8, !dbg !2544
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !2545
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #9, !dbg !2546
  store i32 %call, ptr %old, align 4, !dbg !2542
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !2547
  %tobool = icmp ne ptr %2, null, !dbg !2547
  br i1 %tobool, label %if.then, label %if.end, !dbg !2549

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !2550
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !2551
  store i32 %3, ptr %4, align 4, !dbg !2552
  br label %if.end, !dbg !2553

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !2554
  %6 = load i32, ptr %i.addr, align 4, !dbg !2556
  %cmp = icmp eq i32 %5, %6, !dbg !2557
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !2558

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !2559

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !2561

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !2563

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !2563

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !2561

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !2565

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !2567

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !2567

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !2565, !srcloc !2569
  br label %do.cond7, !dbg !2565

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !2565

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !2561

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !2561

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !2570
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2570

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !2571
  %cmp12 = icmp slt i32 %7, 0, !dbg !2571
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !2571

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !2571
  %9 = load i32, ptr %i.addr, align 4, !dbg !2571
  %sub = sub i32 %8, %9, !dbg !2571
  %cmp13 = icmp slt i32 %sub, 0, !dbg !2571
  br label %lor.end, !dbg !2571

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !2571
  %lnot14 = xor i1 %lnot, true, !dbg !2571
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !2571
  %conv = sext i32 %lnot.ext to i64, !dbg !2571
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2571
  %tobool15 = icmp ne i64 %expval, 0, !dbg !2571
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2573

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2574
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #9, !dbg !2575
  br label %if.end17, !dbg !2575

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !2576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2576

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #10, !dbg !2577
  %12 = load i1, ptr %retval, align 1, !dbg !2577
  ret i1 %12, !dbg !2577
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !2578 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2582, metadata !DIExpression()), !dbg !2584
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2583, metadata !DIExpression()), !dbg !2585
  br label %do.body, !dbg !2586

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2587

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2589
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #9, !dbg !2590
  %1 = load i32, ptr %i.addr, align 4, !dbg !2591
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2592
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #9, !dbg !2593
  ret i32 %call, !dbg !2594
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !2595 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2597, metadata !DIExpression()), !dbg !2599
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2598, metadata !DIExpression()), !dbg !2600
  %0 = load i32, ptr %i.addr, align 4, !dbg !2601
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2602
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #9, !dbg !2603
  ret i32 %call, !dbg !2604
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !2605 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2607, metadata !DIExpression()), !dbg !2611
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2608, metadata !DIExpression()), !dbg !2612
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #10, !dbg !2613
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2609, metadata !DIExpression()), !dbg !2613
  %0 = load i32, ptr %i.addr, align 4, !dbg !2613
  %sub = sub i32 0, %0, !dbg !2613
  store i32 %sub, ptr %__ret, align 4, !dbg !2613
  %1 = load i32, ptr %__ret, align 4, !dbg !2613
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2613
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !2613
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #10, !dbg !2613, !srcloc !2614
  store i32 %3, ptr %__ret, align 4, !dbg !2613
  %4 = load i32, ptr %__ret, align 4, !dbg !2613
  store i32 %4, ptr %tmp, align 4, !dbg !2613
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #10, !dbg !2615
  %5 = load i32, ptr %tmp, align 4, !dbg !2613
  ret i32 %5, !dbg !2616
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #2 align 16 !dbg !2617 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2619, metadata !DIExpression()), !dbg !2620
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2621
  call void @__list_del_entry(ptr noundef %0) #9, !dbg !2622
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2623
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !2624
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !2625
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !2626
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !2627
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !2628
  ret void, !dbg !2629
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2630 dso_local i32 @wake_up_process(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #2 align 16 !dbg !2633 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2635, metadata !DIExpression()), !dbg !2636
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2637
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #9, !dbg !2639
  br i1 %call, label %if.end, label %if.then, !dbg !2640

if.then:                                          ; preds = %entry
  br label %return, !dbg !2641

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2642
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2643
  %2 = load ptr, ptr %prev, align 8, !dbg !2643
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !2644
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !2645
  %4 = load ptr, ptr %next, align 8, !dbg !2645
  call void @__list_del(ptr noundef %2, ptr noundef %4) #9, !dbg !2646
  br label %return, !dbg !2647

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2647
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #2 align 16 !dbg !2648 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2652, metadata !DIExpression()), !dbg !2653
  ret i1 true, !dbg !2654
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #2 align 16 !dbg !2655 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2657, metadata !DIExpression()), !dbg !2659
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2658, metadata !DIExpression()), !dbg !2660
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !2661
  %1 = load ptr, ptr %next.addr, align 8, !dbg !2662
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2663
  store ptr %0, ptr %prev1, align 8, !dbg !2664
  br label %do.body, !dbg !2665

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !2666

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !2668

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !2666

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !2670
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !2670
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !2670
  store volatile ptr %2, ptr %next4, align 8, !dbg !2670
  br label %do.end5, !dbg !2670

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !2666

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !2672
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #2 align 16 !dbg !2673 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2677, metadata !DIExpression()), !dbg !2678
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2679
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #9, !dbg !2680
  ret void, !dbg !2681
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !2682 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2686, metadata !DIExpression()), !dbg !2688
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2687, metadata !DIExpression()), !dbg !2689
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2690
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !2691
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #9, !dbg !2692
  ret void, !dbg !2693
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !2694 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2698, metadata !DIExpression()), !dbg !2702
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2699, metadata !DIExpression()), !dbg !2703
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !2700, metadata !DIExpression()), !dbg !2704
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #10, !dbg !2705
  call void @llvm.dbg.declare(metadata ptr %old, metadata !2701, metadata !DIExpression()), !dbg !2706
  %0 = load i32, ptr %i.addr, align 4, !dbg !2707
  %1 = load ptr, ptr %r.addr, align 8, !dbg !2708
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !2709
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #9, !dbg !2710
  store i32 %call, ptr %old, align 4, !dbg !2706
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !2711
  %tobool = icmp ne ptr %2, null, !dbg !2711
  br i1 %tobool, label %if.then, label %if.end, !dbg !2713

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !2714
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !2715
  store i32 %3, ptr %4, align 4, !dbg !2716
  br label %if.end, !dbg !2717

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !2718
  %tobool1 = icmp ne i32 %5, 0, !dbg !2718
  %lnot = xor i1 %tobool1, true, !dbg !2718
  %lnot2 = xor i1 %lnot, true, !dbg !2718
  %lnot3 = xor i1 %lnot2, true, !dbg !2718
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2718
  %conv = sext i32 %lnot.ext to i64, !dbg !2718
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2718
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2718
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !2720

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !2721
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #9, !dbg !2722
  br label %if.end18, !dbg !2722

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !2723
  %cmp = icmp slt i32 %7, 0, !dbg !2723
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !2723

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !2723
  %9 = load i32, ptr %i.addr, align 4, !dbg !2723
  %add = add i32 %8, %9, !dbg !2723
  %cmp7 = icmp slt i32 %add, 0, !dbg !2723
  br label %lor.end, !dbg !2723

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !2723
  %lnot11 = xor i1 %lnot9, true, !dbg !2723
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !2723
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !2723
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !2723
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !2723
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2725

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2726
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #9, !dbg !2727
  br label %if.end17, !dbg !2727

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #10, !dbg !2728
  ret void, !dbg !2728
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !2729 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2731, metadata !DIExpression()), !dbg !2733
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2732, metadata !DIExpression()), !dbg !2734
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2735
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #9, !dbg !2736
  %1 = load i32, ptr %i.addr, align 4, !dbg !2737
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2738
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #9, !dbg !2739
  ret i32 %call, !dbg !2740
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !2741 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2743, metadata !DIExpression()), !dbg !2745
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2744, metadata !DIExpression()), !dbg !2746
  %0 = load i32, ptr %i.addr, align 4, !dbg !2747
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2748
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #9, !dbg !2749
  ret i32 %call, !dbg !2750
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !2751 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2753, metadata !DIExpression()), !dbg !2757
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2754, metadata !DIExpression()), !dbg !2758
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #10, !dbg !2759
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2755, metadata !DIExpression()), !dbg !2759
  %0 = load i32, ptr %i.addr, align 4, !dbg !2759
  store i32 %0, ptr %__ret, align 4, !dbg !2759
  %1 = load i32, ptr %__ret, align 4, !dbg !2759
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2759
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !2759
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #10, !dbg !2759, !srcloc !2760
  store i32 %3, ptr %__ret, align 4, !dbg !2759
  %4 = load i32, ptr %__ret, align 4, !dbg !2759
  store i32 %4, ptr %tmp, align 4, !dbg !2759
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #10, !dbg !2761
  %5 = load i32, ptr %tmp, align 4, !dbg !2759
  ret i32 %5, !dbg !2762
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2763 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #6 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284}
!llvm.ident = !{!1285}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_klist_init148", scope: !2, file: !3, line: 92, type: !31, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.klist.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/klist\22 -D KBUILD_BASENAME=\22klist\22 -D KBUILD_MODNAME=\22klist\22 -D __KBUILD_MODNAME=kmod_klist -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/klist.ll lib/klist.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !1245, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/klist.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "607104847e076a1b590cd055d74b2100")
!4 = !{!5, !11, !16, !22}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !12, line: 65, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!15 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !17, line: 16, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!18 = !{!19, !20, !21}
!19 = !DIEnumerator(name: "TT_NONE", value: 0)
!20 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!21 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !23, line: 119, baseType: !7, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!26 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!27 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!28 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!29 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!30 = !{!31, !32, !34, !42, !45, !112, !113, !114, !115, !1234, !584, !1236, !97, !1238}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !38, line: 190, size: 128, elements: !39)
!38 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !37, file: !38, line: 191, baseType: !36, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !37, file: !38, line: 191, baseType: !36, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !47, line: 18, size: 320, align: 64, elements: !48)
!47 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd49af8b7fc11d3fd997e9c112ace59a")
!48 = !{!49, !92, !93, !111}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !46, file: !47, line: 19, baseType: !50, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !51, line: 29, baseType: !52)
!51 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !51, line: 17, size: 32, elements: !53)
!53 = !{!54}
!54 = !DIDerivedType(tag: DW_TAG_member, scope: !52, file: !51, line: 18, baseType: !55, size: 32)
!55 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !52, file: !51, line: 18, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !55, file: !51, line: 19, baseType: !58, size: 32)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !59, line: 14, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !58, file: !59, line: 15, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !63, line: 44, baseType: !64)
!63 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !63, line: 14, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, scope: !64, file: !63, line: 15, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !64, file: !63, line: 15, size: 32, elements: !68)
!68 = !{!69, !74, !84}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !67, file: !63, line: 16, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !38, line: 174, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 172, size: 32, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !71, file: !38, line: 173, baseType: !44, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !63, line: 24, baseType: !75, size: 16)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !67, file: !63, line: 24, size: 16, elements: !76)
!76 = !{!77, !83}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !75, file: !63, line: 25, baseType: !78, size: 8)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !79, line: 17, baseType: !80)
!79 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !81, line: 21, baseType: !82)
!81 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!82 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !75, file: !63, line: 26, baseType: !78, size: 8, offset: 8)
!84 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !63, line: 28, baseType: !85, size: 32)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !67, file: !63, line: 28, size: 32, elements: !86)
!86 = !{!87, !91}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !85, file: !63, line: 29, baseType: !88, size: 16)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !79, line: 19, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !81, line: 24, baseType: !90)
!90 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !85, file: !63, line: 30, baseType: !88, size: 16, offset: 16)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !46, file: !47, line: 20, baseType: !37, size: 128, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !46, file: !47, line: 21, baseType: !94, size: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !47, line: 37, size: 256, elements: !99)
!99 = !{!100, !101, !102}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !98, file: !47, line: 38, baseType: !31, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !98, file: !47, line: 39, baseType: !37, size: 128, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !98, file: !47, line: 40, baseType: !103, size: 32, offset: 192)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !104, line: 19, size: 32, elements: !105)
!104 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !103, file: !104, line: 20, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !23, line: 113, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !23, line: 111, size: 32, elements: !109)
!109 = !{!110}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !108, file: !23, line: 112, baseType: !70, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !46, file: !47, line: 22, baseType: !94, size: 64, offset: 256)
!112 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !117, line: 746, size: 58368, elements: !118)
!117 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!118 = !{!119, !129, !130, !131, !132, !133, !134, !135, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !219, !230, !332, !336, !339, !370, !371, !372, !373, !384, !386, !387, !388, !389, !390, !391, !402, !403, !406, !407, !408, !409, !410, !411, !412, !413, !420, !421, !428, !429, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !515, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !575, !577, !578, !579, !583, !585, !586, !587, !588, !589, !590, !596, !597, !598, !599, !600, !601, !602, !616, !639, !643, !644, !645, !648, !653, !656, !663, !668, !671, !674, !677, !680, !683, !686, !692, !693, !694, !700, !701, !705, !706, !707, !710, !718, !719, !728, !739, !740, !741, !742, !743, !748, !749, !750, !753, !754, !757, !760, !763, !766, !769, !770, !858, !869, !870, !871, !872, !878, !883, !884, !885, !888, !889, !892, !895, !896, !899, !900, !901, !904, !905, !906, !909, !910, !911, !924, !925, !926, !927, !928, !929, !930, !931, !932, !943, !946, !955, !958, !959, !960, !961, !962, !963, !964, !967, !970, !973, !974, !975, !976, !977, !989, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1006, !1007, !1008}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !116, file: !117, line: 752, baseType: !120, size: 192)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !121, line: 56, size: 192, elements: !122)
!121 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!122 = !{!123, !124, !125, !128}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !121, line: 57, baseType: !112, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !120, file: !121, line: 58, baseType: !112, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !120, file: !121, line: 59, baseType: !126, size: 32, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !79, line: 21, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !81, line: 27, baseType: !7)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !120, file: !121, line: 61, baseType: !126, size: 32, offset: 160)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !116, file: !117, line: 754, baseType: !7, size: 32, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !116, file: !117, line: 767, baseType: !31, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !116, file: !117, line: 768, baseType: !107, size: 32, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !117, line: 770, baseType: !7, size: 32, offset: 352)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !116, file: !117, line: 771, baseType: !7, size: 32, offset: 384)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !116, file: !117, line: 774, baseType: !44, size: 32, offset: 416)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !116, file: !117, line: 775, baseType: !136, size: 128, offset: 448)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !137, line: 58, size: 128, elements: !138)
!137 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!138 = !{!139, !145, !150, !151}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !136, file: !137, line: 59, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !141, line: 60, size: 64, elements: !142)
!141 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !140, file: !141, line: 61, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !137, line: 60, baseType: !146, size: 32, offset: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !137, line: 60, size: 32, elements: !147)
!147 = !{!148, !149}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !146, file: !137, line: 61, baseType: !7, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !146, file: !137, line: 62, baseType: !70, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !136, file: !137, line: 65, baseType: !88, size: 16, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !136, file: !137, line: 65, baseType: !88, size: 16, offset: 112)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !116, file: !117, line: 776, baseType: !7, size: 32, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !116, file: !117, line: 777, baseType: !112, size: 64, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !116, file: !117, line: 778, baseType: !115, size: 64, offset: 704)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !116, file: !117, line: 787, baseType: !44, size: 32, offset: 768)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !116, file: !117, line: 788, baseType: !44, size: 32, offset: 800)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !116, file: !117, line: 790, baseType: !44, size: 32, offset: 832)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !116, file: !117, line: 792, baseType: !44, size: 32, offset: 864)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !116, file: !117, line: 793, baseType: !44, size: 32, offset: 896)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !116, file: !117, line: 794, baseType: !44, size: 32, offset: 928)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !116, file: !117, line: 795, baseType: !7, size: 32, offset: 960)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !116, file: !117, line: 797, baseType: !163, size: 2048, offset: 1024)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !117, line: 551, size: 2048, elements: !164)
!164 = !{!165, !170, !178, !182, !183, !184, !185, !186, !187, !188, !189, !193, !194, !195, !196, !198, !201, !202, !203}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !163, file: !117, line: 553, baseType: !166, size: 128)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !117, line: 411, size: 128, elements: !167)
!167 = !{!168, !169}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !166, file: !117, line: 412, baseType: !112, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !166, file: !117, line: 413, baseType: !126, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !163, file: !117, line: 554, baseType: !171, size: 192, align: 64, offset: 128)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !172, line: 5, size: 192, align: 64, elements: !173)
!172 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!173 = !{!174, !175, !177}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !171, file: !172, line: 6, baseType: !112, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !171, file: !172, line: 7, baseType: !176, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !171, file: !172, line: 8, baseType: !176, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !163, file: !117, line: 555, baseType: !179, size: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !79, line: 23, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !81, line: 31, baseType: !181)
!181 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !163, file: !117, line: 556, baseType: !179, size: 64, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !163, file: !117, line: 558, baseType: !37, size: 128, offset: 448)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !163, file: !117, line: 559, baseType: !7, size: 32, offset: 576)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !163, file: !117, line: 561, baseType: !179, size: 64, offset: 640)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !163, file: !117, line: 562, baseType: !179, size: 64, offset: 704)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !163, file: !117, line: 563, baseType: !179, size: 64, offset: 768)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !163, file: !117, line: 564, baseType: !179, size: 64, offset: 832)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !163, file: !117, line: 565, baseType: !190, size: 64, offset: 896)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !79, line: 22, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !81, line: 30, baseType: !192)
!192 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !163, file: !117, line: 566, baseType: !179, size: 64, offset: 960)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !163, file: !117, line: 568, baseType: !179, size: 64, offset: 1024)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !163, file: !117, line: 571, baseType: !44, size: 32, offset: 1088)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !163, file: !117, line: 572, baseType: !197, size: 64, offset: 1152)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !163, file: !117, line: 574, baseType: !199, size: 64, offset: 1216)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !117, line: 49, flags: DIFlagFwdDecl)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !163, file: !117, line: 576, baseType: !199, size: 64, offset: 1280)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !163, file: !117, line: 578, baseType: !112, size: 64, offset: 1344)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !163, file: !117, line: 588, baseType: !204, size: 512, align: 512, offset: 1536)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !117, line: 497, size: 512, align: 512, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !204, file: !117, line: 498, baseType: !179, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !204, file: !117, line: 499, baseType: !179, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !204, file: !117, line: 500, baseType: !179, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !204, file: !117, line: 501, baseType: !126, size: 32, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !204, file: !117, line: 502, baseType: !126, size: 32, offset: 224)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !204, file: !117, line: 503, baseType: !112, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !204, file: !117, line: 504, baseType: !112, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !204, file: !117, line: 505, baseType: !112, size: 64, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !204, file: !117, line: 506, baseType: !215, size: 64, align: 64, offset: 448)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !117, line: 445, size: 64, align: 64, elements: !216)
!216 = !{!217, !218}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !215, file: !117, line: 446, baseType: !7, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !215, file: !117, line: 447, baseType: !7, size: 32, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !116, file: !117, line: 798, baseType: !220, size: 384, offset: 3072)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !117, line: 592, size: 384, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227, !228}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !220, file: !117, line: 593, baseType: !37, size: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !220, file: !117, line: 594, baseType: !112, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !220, file: !117, line: 595, baseType: !112, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !220, file: !117, line: 596, baseType: !7, size: 32, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !220, file: !117, line: 597, baseType: !90, size: 16, offset: 288)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !220, file: !117, line: 598, baseType: !90, size: 16, offset: 304)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !220, file: !117, line: 600, baseType: !229, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !116, file: !117, line: 799, baseType: !231, size: 1792, offset: 3456)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !117, line: 610, size: 1792, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !329, !330}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !231, file: !117, line: 611, baseType: !171, size: 192, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !231, file: !117, line: 618, baseType: !179, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !231, file: !117, line: 619, baseType: !179, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !231, file: !117, line: 620, baseType: !179, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !231, file: !117, line: 621, baseType: !179, size: 64, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !231, file: !117, line: 622, baseType: !179, size: 64, offset: 448)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !231, file: !117, line: 629, baseType: !190, size: 64, offset: 512)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !231, file: !117, line: 630, baseType: !179, size: 64, offset: 576)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !231, file: !117, line: 631, baseType: !7, size: 32, offset: 640)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !231, file: !117, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !231, file: !117, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !231, file: !117, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !231, file: !117, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !231, file: !117, line: 662, baseType: !247, size: 512, offset: 704)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !248)
!248 = !{!249, !257, !258, !263, !325, !326, !327, !328}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !247, file: !12, line: 119, baseType: !250, size: 256)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !251, line: 9, size: 256, elements: !252)
!251 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!252 = !{!253, !254}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !250, file: !251, line: 10, baseType: !171, size: 192, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !250, file: !251, line: 11, baseType: !255, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !256, line: 29, baseType: !190)
!256 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !247, file: !12, line: 120, baseType: !255, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !247, file: !12, line: 121, baseType: !259, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!11, !262}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !247, file: !12, line: 122, baseType: !264, size: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !266)
!266 = !{!267, !293, !294, !298, !308, !309, !320, !324}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !265, file: !12, line: 160, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 215, size: 4608, align: 512, elements: !270)
!270 = !{!271, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !269, file: !12, line: 216, baseType: !272, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !59, line: 23, baseType: !58)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !269, file: !12, line: 217, baseType: !7, size: 32, offset: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !269, file: !12, line: 218, baseType: !7, size: 32, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !269, file: !12, line: 219, baseType: !7, size: 32, offset: 96)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !269, file: !12, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !269, file: !12, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !269, file: !12, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !269, file: !12, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !269, file: !12, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !269, file: !12, line: 226, baseType: !7, size: 32, offset: 160)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !269, file: !12, line: 227, baseType: !90, size: 16, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !269, file: !12, line: 228, baseType: !90, size: 16, offset: 208)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !269, file: !12, line: 229, baseType: !7, size: 32, offset: 224)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !269, file: !12, line: 235, baseType: !255, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !269, file: !12, line: 236, baseType: !262, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !269, file: !12, line: 237, baseType: !255, size: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !269, file: !12, line: 238, baseType: !262, size: 64, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !269, file: !12, line: 239, baseType: !290, size: 4096, align: 512, offset: 512)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 4096, align: 512, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 8)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !265, file: !12, line: 161, baseType: !7, size: 32, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !265, file: !12, line: 162, baseType: !295, size: 32, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !38, line: 32, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !297, line: 96, baseType: !44)
!297 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!298 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !265, file: !12, line: 163, baseType: !299, size: 32, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !300, line: 274, baseType: !301)
!300 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !300, line: 274, size: 32, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !301, file: !300, line: 274, baseType: !304, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !300, line: 69, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !300, line: 64, size: 32, elements: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !305, file: !300, line: 65, baseType: !7, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !265, file: !12, line: 164, baseType: !262, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !265, file: !12, line: 165, baseType: !310, size: 128, offset: 256)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !251, line: 14, size: 128, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !310, file: !251, line: 15, baseType: !313, size: 128)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !172, line: 26, size: 128, elements: !314)
!314 = !{!315, !319}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !313, file: !172, line: 27, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !172, line: 12, size: 64, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !316, file: !172, line: 13, baseType: !176, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !313, file: !172, line: 28, baseType: !176, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !265, file: !12, line: 166, baseType: !321, size: 64, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!255}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !265, file: !12, line: 167, baseType: !255, size: 64, offset: 448)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !247, file: !12, line: 123, baseType: !78, size: 8, offset: 448)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !247, file: !12, line: 124, baseType: !78, size: 8, offset: 456)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !247, file: !12, line: 125, baseType: !78, size: 8, offset: 464)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !247, file: !12, line: 126, baseType: !78, size: 8, offset: 472)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !231, file: !117, line: 671, baseType: !247, size: 512, offset: 1216)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !231, file: !117, line: 679, baseType: !331, size: 64, offset: 1728)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !116, file: !117, line: 800, baseType: !333, size: 64, offset: 5248)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!335 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !117, line: 800, flags: DIFlagFwdDecl)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !116, file: !117, line: 809, baseType: !337, size: 64, offset: 5312)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !117, line: 70, flags: DIFlagFwdDecl)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !116, file: !117, line: 825, baseType: !340, size: 2048, align: 512, offset: 5632)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !117, line: 509, size: 2048, align: 512, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !340, file: !117, line: 511, baseType: !179, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !340, file: !117, line: 512, baseType: !179, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !340, file: !117, line: 513, baseType: !179, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !340, file: !117, line: 514, baseType: !179, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !340, file: !117, line: 515, baseType: !179, size: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !340, file: !117, line: 516, baseType: !179, size: 64, offset: 320)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !340, file: !117, line: 518, baseType: !179, size: 64, offset: 384)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !340, file: !117, line: 519, baseType: !179, size: 64, offset: 448)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !340, file: !117, line: 520, baseType: !190, size: 64, offset: 512)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !340, file: !117, line: 522, baseType: !179, size: 64, offset: 576)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !340, file: !117, line: 523, baseType: !179, size: 64, offset: 640)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !340, file: !117, line: 524, baseType: !190, size: 64, offset: 704)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !340, file: !117, line: 526, baseType: !190, size: 64, offset: 768)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !340, file: !117, line: 527, baseType: !179, size: 64, offset: 832)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !340, file: !117, line: 529, baseType: !179, size: 64, offset: 896)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !340, file: !117, line: 530, baseType: !179, size: 64, offset: 960)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !340, file: !117, line: 531, baseType: !179, size: 64, offset: 1024)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !340, file: !117, line: 532, baseType: !179, size: 64, offset: 1088)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !340, file: !117, line: 533, baseType: !179, size: 64, offset: 1152)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !340, file: !117, line: 535, baseType: !179, size: 64, offset: 1216)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !340, file: !117, line: 536, baseType: !179, size: 64, offset: 1280)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !340, file: !117, line: 537, baseType: !179, size: 64, offset: 1344)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !340, file: !117, line: 538, baseType: !179, size: 64, offset: 1408)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !340, file: !117, line: 539, baseType: !179, size: 64, offset: 1472)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !340, file: !117, line: 540, baseType: !179, size: 64, offset: 1536)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !340, file: !117, line: 541, baseType: !179, size: 64, offset: 1600)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !340, file: !117, line: 542, baseType: !179, size: 64, offset: 1664)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !340, file: !117, line: 543, baseType: !179, size: 64, offset: 1728)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !116, file: !117, line: 833, baseType: !7, size: 32, offset: 7680)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !116, file: !117, line: 836, baseType: !7, size: 32, offset: 7712)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !116, file: !117, line: 837, baseType: !44, size: 32, offset: 7744)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !116, file: !117, line: 838, baseType: !374, size: 64, offset: 7808)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !377, line: 19, baseType: !378)
!377 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !377, line: 19, size: 64, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !378, file: !377, line: 19, baseType: !381, size: 64)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 1)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !116, file: !117, line: 839, baseType: !385, size: 64, offset: 7872)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !116, file: !117, line: 840, baseType: !376, size: 64, offset: 7936)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !116, file: !117, line: 841, baseType: !31, size: 64, offset: 8000)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !116, file: !117, line: 843, baseType: !90, size: 16, offset: 8064)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !116, file: !117, line: 845, baseType: !90, size: 16, offset: 8080)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !116, file: !117, line: 848, baseType: !44, size: 32, offset: 8096)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !116, file: !117, line: 849, baseType: !392, size: 32, offset: 8128)
!392 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !117, line: 718, size: 32, elements: !393)
!393 = !{!394, !401}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !392, file: !117, line: 724, baseType: !395, size: 32)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !117, line: 719, size: 32, elements: !396)
!396 = !{!397, !398, !399, !400}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !395, file: !117, line: 720, baseType: !78, size: 8)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !395, file: !117, line: 721, baseType: !78, size: 8, offset: 8)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !395, file: !117, line: 722, baseType: !78, size: 8, offset: 16)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !395, file: !117, line: 723, baseType: !78, size: 8, offset: 24)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !392, file: !117, line: 725, baseType: !126, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !116, file: !117, line: 850, baseType: !37, size: 128, offset: 8192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !116, file: !117, line: 851, baseType: !404, size: 64, offset: 8320)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !117, line: 60, flags: DIFlagFwdDecl)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !116, file: !117, line: 855, baseType: !112, size: 64, offset: 8384)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !116, file: !117, line: 856, baseType: !78, size: 8, offset: 8448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !116, file: !117, line: 857, baseType: !78, size: 8, offset: 8456)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !116, file: !117, line: 858, baseType: !44, size: 32, offset: 8480)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !116, file: !117, line: 859, baseType: !37, size: 128, offset: 8512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !116, file: !117, line: 860, baseType: !44, size: 32, offset: 8640)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !116, file: !117, line: 861, baseType: !37, size: 128, offset: 8704)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !116, file: !117, line: 873, baseType: !414, size: 256, offset: 8832)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !117, line: 376, size: 256, elements: !415)
!415 = !{!416, !417, !418, !419}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !414, file: !117, line: 381, baseType: !112, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !414, file: !117, line: 384, baseType: !181, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !414, file: !117, line: 389, baseType: !181, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !414, file: !117, line: 392, baseType: !181, size: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !116, file: !117, line: 875, baseType: !37, size: 128, offset: 9088)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !116, file: !117, line: 877, baseType: !422, size: 320, offset: 9216)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !423, line: 86, size: 320, elements: !424)
!423 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!424 = !{!425, !426, !427}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !422, file: !423, line: 87, baseType: !44, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !422, file: !423, line: 88, baseType: !37, size: 128, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !422, file: !423, line: 89, baseType: !37, size: 128, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !116, file: !117, line: 878, baseType: !171, size: 192, align: 64, offset: 9536)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !116, file: !117, line: 881, baseType: !430, size: 64, offset: 9728)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !432, line: 9, flags: DIFlagFwdDecl)
!432 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!433 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !116, file: !117, line: 882, baseType: !430, size: 64, offset: 9792)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !116, file: !117, line: 884, baseType: !44, size: 32, offset: 9856)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !116, file: !117, line: 885, baseType: !44, size: 32, offset: 9888)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !116, file: !117, line: 886, baseType: !44, size: 32, offset: 9920)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !116, file: !117, line: 888, baseType: !44, size: 32, offset: 9952)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !116, file: !117, line: 890, baseType: !112, size: 64, offset: 9984)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !116, file: !117, line: 893, baseType: !7, size: 32, offset: 10048)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !116, file: !117, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !116, file: !117, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !116, file: !117, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !116, file: !117, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !116, file: !117, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !116, file: !117, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !116, file: !117, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !116, file: !117, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !116, file: !117, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !116, file: !117, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !116, file: !117, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !116, file: !117, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !116, file: !117, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !116, file: !117, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !116, file: !117, line: 969, baseType: !112, size: 64, offset: 10176)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !116, file: !117, line: 971, baseType: !456, size: 448, offset: 10240)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !17, line: 25, size: 448, elements: !457)
!457 = !{!458, !459, !465}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !456, file: !17, line: 26, baseType: !112, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !456, file: !17, line: 27, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!463, !464}
!463 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !17, line: 28, baseType: !466, size: 320, offset: 128)
!466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !17, line: 28, size: 320, elements: !467)
!467 = !{!468, !478, !505}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !466, file: !17, line: 37, baseType: !469, size: 320)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !466, file: !17, line: 30, size: 320, elements: !470)
!470 = !{!471, !473, !474, !475, !476, !477}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !469, file: !17, line: 31, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !469, file: !17, line: 32, baseType: !126, size: 32, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !17, line: 33, baseType: !126, size: 32, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !469, file: !17, line: 34, baseType: !126, size: 32, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !469, file: !17, line: 35, baseType: !179, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !469, file: !17, line: 36, baseType: !472, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !466, file: !17, line: 47, baseType: !479, size: 192)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !466, file: !17, line: 39, size: 192, elements: !480)
!480 = !{!481, !482, !483, !504}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !479, file: !17, line: 40, baseType: !295, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !479, file: !17, line: 41, baseType: !16, size: 32, offset: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, scope: !479, file: !17, line: 42, baseType: !484, size: 64, offset: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !479, file: !17, line: 42, size: 64, elements: !485)
!485 = !{!486, !494}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !484, file: !17, line: 43, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !489, line: 7, size: 128, elements: !490)
!489 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!490 = !{!491, !493}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !488, file: !489, line: 8, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !297, line: 93, baseType: !192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !488, file: !489, line: 9, baseType: !192, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !484, file: !17, line: 44, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !497, line: 7, size: 64, elements: !498)
!497 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!498 = !{!499, !503}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !496, file: !497, line: 8, baseType: !500, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !497, line: 5, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !79, line: 20, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !81, line: 26, baseType: !44)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !496, file: !497, line: 9, baseType: !501, size: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !479, file: !17, line: 46, baseType: !179, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !466, file: !17, line: 55, baseType: !506, size: 256)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !466, file: !17, line: 49, size: 256, elements: !507)
!507 = !{!508, !511, !512, !513, !514}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !506, file: !17, line: 50, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !17, line: 14, flags: DIFlagFwdDecl)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !506, file: !17, line: 51, baseType: !44, size: 32, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !506, file: !17, line: 52, baseType: !44, size: 32, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !506, file: !17, line: 53, baseType: !112, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !506, file: !17, line: 54, baseType: !112, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !116, file: !117, line: 973, baseType: !516, size: 32, offset: 10688)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !38, line: 27, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !297, line: 28, baseType: !44)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !116, file: !117, line: 974, baseType: !516, size: 32, offset: 10720)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !116, file: !117, line: 978, baseType: !112, size: 64, offset: 10752)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !116, file: !117, line: 987, baseType: !115, size: 64, offset: 10816)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !116, file: !117, line: 990, baseType: !115, size: 64, offset: 10880)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !116, file: !117, line: 995, baseType: !37, size: 128, offset: 10944)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !116, file: !117, line: 996, baseType: !37, size: 128, offset: 11072)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !116, file: !117, line: 997, baseType: !115, size: 64, offset: 11200)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !116, file: !117, line: 1005, baseType: !37, size: 128, offset: 11264)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !116, file: !117, line: 1006, baseType: !37, size: 128, offset: 11392)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !116, file: !117, line: 1009, baseType: !528, size: 64, offset: 11520)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !530, line: 59, size: 768, elements: !531)
!530 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!531 = !{!532, !533, !534, !535, !548, !549, !556, !565}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !529, file: !530, line: 61, baseType: !107, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !529, file: !530, line: 62, baseType: !7, size: 32, offset: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !529, file: !530, line: 63, baseType: !50, size: 32, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !529, file: !530, line: 65, baseType: !536, size: 256, offset: 128)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 256, elements: !546)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !38, line: 194, size: 64, elements: !538)
!538 = !{!539}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !537, file: !38, line: 195, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !38, line: 198, size: 128, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !541, file: !38, line: 199, baseType: !540, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !541, file: !38, line: 199, baseType: !545, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!546 = !{!547}
!547 = !DISubrange(count: 4)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !529, file: !530, line: 66, baseType: !537, size: 64, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !529, file: !530, line: 68, baseType: !550, size: 192, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !551, line: 41, baseType: !552)
!551 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !551, line: 37, size: 192, elements: !553)
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !552, file: !551, line: 38, baseType: !50, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !552, file: !551, line: 39, baseType: !37, size: 128, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !529, file: !530, line: 69, baseType: !557, size: 128, align: 64, offset: 640)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !38, line: 232, size: 128, align: 64, elements: !558)
!558 = !{!559, !561}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !557, file: !38, line: 233, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !557, file: !38, line: 234, baseType: !562, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !560}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !529, file: !530, line: 70, baseType: !566, offset: 768)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, elements: !573)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !530, line: 54, size: 128, elements: !568)
!568 = !{!569, !570}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !567, file: !530, line: 55, baseType: !44, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !567, file: !530, line: 56, baseType: !571, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !530, line: 56, flags: DIFlagFwdDecl)
!573 = !{!574}
!574 = !DISubrange(count: -1)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !116, file: !117, line: 1010, baseType: !576, size: 512, offset: 11584)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 512, elements: !546)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !116, file: !117, line: 1011, baseType: !37, size: 128, offset: 12096)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !116, file: !117, line: 1012, baseType: !37, size: 128, offset: 12224)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !116, file: !117, line: 1014, baseType: !580, size: 64, offset: 12352)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !582, line: 96, flags: DIFlagFwdDecl)
!582 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!583 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !116, file: !117, line: 1017, baseType: !584, size: 64, offset: 12416)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !116, file: !117, line: 1020, baseType: !584, size: 64, offset: 12480)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !116, file: !117, line: 1023, baseType: !31, size: 64, offset: 12544)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !116, file: !117, line: 1025, baseType: !179, size: 64, offset: 12608)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !116, file: !117, line: 1026, baseType: !179, size: 64, offset: 12672)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !116, file: !117, line: 1031, baseType: !179, size: 64, offset: 12736)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !116, file: !117, line: 1032, baseType: !591, size: 192, offset: 12800)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !117, line: 324, size: 192, elements: !592)
!592 = !{!593, !594, !595}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !591, file: !117, line: 326, baseType: !179, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !591, file: !117, line: 327, baseType: !179, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !591, file: !117, line: 328, baseType: !272, size: 32, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !116, file: !117, line: 1041, baseType: !112, size: 64, offset: 12992)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !116, file: !117, line: 1042, baseType: !112, size: 64, offset: 13056)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !116, file: !117, line: 1045, baseType: !179, size: 64, offset: 13120)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !116, file: !117, line: 1048, baseType: !179, size: 64, offset: 13184)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !116, file: !117, line: 1051, baseType: !112, size: 64, offset: 13248)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !116, file: !117, line: 1052, baseType: !112, size: 64, offset: 13312)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !116, file: !117, line: 1055, baseType: !603, size: 640, offset: 13376)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !604, line: 132, size: 640, elements: !605)
!604 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!605 = !{!606, !614, !615}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !603, file: !604, line: 133, baseType: !607, size: 576)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 576, elements: !612)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !604, line: 117, size: 192, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !608, file: !604, line: 118, baseType: !179, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !608, file: !604, line: 119, baseType: !310, size: 128, offset: 64)
!612 = !{!613}
!613 = !DISubrange(count: 3)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !603, file: !604, line: 134, baseType: !7, size: 32, offset: 576)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !603, file: !604, line: 135, baseType: !7, size: 32, offset: 608)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !116, file: !117, line: 1058, baseType: !617, size: 448, offset: 14016)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !604, line: 144, size: 448, elements: !618)
!618 = !{!619, !620, !638}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !617, file: !604, line: 145, baseType: !557, size: 128, align: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !617, file: !604, line: 146, baseType: !621, size: 256, offset: 128)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !622, line: 66, size: 256, elements: !623)
!622 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!623 = !{!624, !631, !632, !637}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !621, file: !622, line: 67, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !626, line: 13, baseType: !627)
!626 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !38, line: 181, baseType: !628)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 179, size: 64, elements: !629)
!629 = !{!630}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !628, file: !38, line: 180, baseType: !190, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !621, file: !622, line: 68, baseType: !272, size: 32, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !621, file: !622, line: 70, baseType: !633, size: 32, offset: 96)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !634, line: 15, size: 32, elements: !635)
!634 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!635 = !{!636}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !633, file: !634, line: 20, baseType: !70, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !621, file: !622, line: 72, baseType: !37, size: 128, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !617, file: !604, line: 147, baseType: !7, size: 32, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !116, file: !117, line: 1064, baseType: !640, size: 64, offset: 14464)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !117, line: 1064, flags: DIFlagFwdDecl)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !116, file: !117, line: 1067, baseType: !640, size: 64, offset: 14528)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !116, file: !117, line: 1070, baseType: !640, size: 64, offset: 14592)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !116, file: !117, line: 1074, baseType: !646, size: 64, offset: 14656)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !117, line: 1074, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !116, file: !117, line: 1084, baseType: !649, size: 128, offset: 14720)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 128, elements: !651)
!650 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!651 = !{!652}
!652 = !DISubrange(count: 16)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !116, file: !117, line: 1086, baseType: !654, size: 64, offset: 14848)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !117, line: 55, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !116, file: !117, line: 1089, baseType: !657, size: 64, offset: 14912)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !658, line: 12, size: 64, elements: !659)
!658 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!659 = !{!660}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !657, file: !658, line: 13, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !658, line: 8, flags: DIFlagFwdDecl)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !116, file: !117, line: 1090, baseType: !664, size: 128, offset: 14976)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !665, line: 13, size: 128, elements: !666)
!665 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !664, file: !665, line: 14, baseType: !37, size: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !116, file: !117, line: 1097, baseType: !669, size: 64, offset: 15104)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !117, line: 50, flags: DIFlagFwdDecl)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !116, file: !117, line: 1100, baseType: !672, size: 64, offset: 15168)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !117, line: 1100, flags: DIFlagFwdDecl)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !116, file: !117, line: 1103, baseType: !675, size: 64, offset: 15232)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !117, line: 53, flags: DIFlagFwdDecl)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !116, file: !117, line: 1107, baseType: !678, size: 64, offset: 15296)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !117, line: 56, flags: DIFlagFwdDecl)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !116, file: !117, line: 1110, baseType: !681, size: 64, offset: 15360)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !604, line: 236, flags: DIFlagFwdDecl)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !116, file: !117, line: 1111, baseType: !684, size: 64, offset: 15424)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !117, line: 67, flags: DIFlagFwdDecl)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !116, file: !117, line: 1112, baseType: !687, size: 64, offset: 15488)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !688, line: 25, baseType: !689)
!688 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !688, line: 23, size: 64, elements: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !689, file: !688, line: 24, baseType: !381, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !116, file: !117, line: 1113, baseType: !687, size: 64, offset: 15552)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !116, file: !117, line: 1115, baseType: !687, size: 64, offset: 15616)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !116, file: !117, line: 1116, baseType: !695, size: 192, offset: 15680)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !696, line: 32, size: 192, elements: !697)
!696 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !695, file: !696, line: 33, baseType: !37, size: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !695, file: !696, line: 34, baseType: !687, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !116, file: !117, line: 1117, baseType: !112, size: 64, offset: 15872)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !116, file: !117, line: 1118, baseType: !702, size: 64, offset: 15936)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 61, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !297, line: 72, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !297, line: 16, baseType: !112)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !116, file: !117, line: 1119, baseType: !7, size: 32, offset: 16000)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !116, file: !117, line: 1121, baseType: !560, size: 64, offset: 16064)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !116, file: !117, line: 1125, baseType: !708, size: 64, offset: 16128)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !117, line: 43, flags: DIFlagFwdDecl)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !116, file: !117, line: 1127, baseType: !711, size: 32, offset: 16192)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !712, line: 23, baseType: !713)
!712 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !712, line: 21, size: 32, elements: !714)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !713, file: !712, line: 22, baseType: !716, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !38, line: 37, baseType: !717)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !297, line: 49, baseType: !7)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !116, file: !117, line: 1128, baseType: !7, size: 32, offset: 16224)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !116, file: !117, line: 1130, baseType: !720, size: 128, offset: 16256)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !721, line: 37, size: 128, elements: !722)
!721 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!722 = !{!723, !724, !725}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !720, file: !721, line: 38, baseType: !44, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !720, file: !721, line: 39, baseType: !70, size: 32, offset: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !720, file: !721, line: 40, baseType: !726, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !721, line: 24, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !116, file: !117, line: 1131, baseType: !729, size: 256, offset: 16384)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !730, line: 12, size: 256, elements: !731)
!730 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!731 = !{!732, !734, !735, !736}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !729, file: !730, line: 13, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !729, file: !730, line: 14, baseType: !112, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !729, file: !730, line: 15, baseType: !112, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !729, file: !730, line: 16, baseType: !737, size: 8, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !38, line: 35, baseType: !738)
!738 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !116, file: !117, line: 1134, baseType: !179, size: 64, offset: 16640)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !116, file: !117, line: 1135, baseType: !179, size: 64, offset: 16704)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !116, file: !117, line: 1138, baseType: !50, size: 32, offset: 16768)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !116, file: !117, line: 1141, baseType: !272, size: 32, offset: 16800)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !116, file: !117, line: 1143, baseType: !744, size: 64, offset: 16832)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !117, line: 735, size: 64, elements: !745)
!745 = !{!746}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !744, file: !117, line: 736, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !116, file: !117, line: 1147, baseType: !313, size: 128, offset: 16896)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !116, file: !117, line: 1149, baseType: !115, size: 64, offset: 17024)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !116, file: !117, line: 1151, baseType: !751, size: 64, offset: 17088)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !117, line: 1151, flags: DIFlagFwdDecl)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !116, file: !117, line: 1188, baseType: !31, size: 64, offset: 17152)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !116, file: !117, line: 1191, baseType: !755, size: 64, offset: 17216)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !117, line: 44, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !116, file: !117, line: 1194, baseType: !758, size: 64, offset: 17280)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !117, line: 45, flags: DIFlagFwdDecl)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !116, file: !117, line: 1197, baseType: !761, size: 64, offset: 17344)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !117, line: 61, flags: DIFlagFwdDecl)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !116, file: !117, line: 1199, baseType: !764, size: 64, offset: 17408)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !117, line: 52, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !116, file: !117, line: 1202, baseType: !767, size: 64, offset: 17472)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !117, line: 48, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !116, file: !117, line: 1205, baseType: !112, size: 64, offset: 17536)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !116, file: !117, line: 1206, baseType: !771, size: 64, offset: 17600)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !696, line: 14, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !696, line: 12, size: 384, elements: !774)
!774 = !{!775}
!775 = !DIDerivedType(tag: DW_TAG_member, scope: !773, file: !696, line: 13, baseType: !776, size: 384)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !773, file: !696, line: 13, size: 384, elements: !777)
!777 = !{!778, !779, !780, !781}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !776, file: !696, line: 13, baseType: !44, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !776, file: !696, line: 13, baseType: !44, size: 32, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !776, file: !696, line: 13, baseType: !44, size: 32, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !776, file: !696, line: 13, baseType: !782, size: 256, offset: 128)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !783, line: 37, size: 256, elements: !784)
!783 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!784 = !{!785, !790, !803, !809, !819, !847, !852}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !782, file: !783, line: 42, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !782, file: !783, line: 39, size: 64, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !786, file: !783, line: 40, baseType: !517, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !786, file: !783, line: 41, baseType: !717, size: 32, offset: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !782, file: !783, line: 50, baseType: !791, size: 192)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !782, file: !783, line: 45, size: 192, elements: !792)
!792 = !{!793, !795, !796, !802}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !791, file: !783, line: 46, baseType: !794, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !297, line: 95, baseType: !44)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !791, file: !783, line: 47, baseType: !44, size: 32, offset: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !791, file: !783, line: 48, baseType: !797, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !783, line: 11, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !783, line: 8, size: 64, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !798, file: !783, line: 9, baseType: !44, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !798, file: !783, line: 10, baseType: !31, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !791, file: !783, line: 49, baseType: !44, size: 32, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !782, file: !783, line: 57, baseType: !804, size: 128)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !782, file: !783, line: 53, size: 128, elements: !805)
!805 = !{!806, !807, !808}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !804, file: !783, line: 54, baseType: !517, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !804, file: !783, line: 55, baseType: !717, size: 32, offset: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !804, file: !783, line: 56, baseType: !797, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !782, file: !783, line: 66, baseType: !810, size: 256)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !782, file: !783, line: 60, size: 256, elements: !811)
!811 = !{!812, !813, !814, !815, !818}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !810, file: !783, line: 61, baseType: !517, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !810, file: !783, line: 62, baseType: !717, size: 32, offset: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !810, file: !783, line: 63, baseType: !44, size: 32, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !810, file: !783, line: 64, baseType: !816, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !297, line: 94, baseType: !817)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !297, line: 15, baseType: !463)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !810, file: !783, line: 65, baseType: !816, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !782, file: !783, line: 105, baseType: !820, size: 256)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !782, file: !783, line: 69, size: 256, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !820, file: !783, line: 70, baseType: !31, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, scope: !820, file: !783, line: 79, baseType: !824, size: 192, offset: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !820, file: !783, line: 79, size: 192, elements: !825)
!825 = !{!826, !827, !829, !836, !841}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !824, file: !783, line: 81, baseType: !44, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !824, file: !783, line: 86, baseType: !828, size: 16)
!828 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !824, file: !783, line: 92, baseType: !830, size: 192)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !824, file: !783, line: 88, size: 192, elements: !831)
!831 = !{!832, !834, !835}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !830, file: !783, line: 89, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 64, elements: !291)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !830, file: !783, line: 90, baseType: !31, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !830, file: !783, line: 91, baseType: !31, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !824, file: !783, line: 97, baseType: !837, size: 96)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !824, file: !783, line: 94, size: 96, elements: !838)
!838 = !{!839, !840}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !837, file: !783, line: 95, baseType: !833, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !837, file: !783, line: 96, baseType: !127, size: 32, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !824, file: !783, line: 103, baseType: !842, size: 128)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !824, file: !783, line: 99, size: 128, elements: !843)
!843 = !{!844, !845, !846}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !842, file: !783, line: 100, baseType: !112, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !842, file: !783, line: 101, baseType: !127, size: 32, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !842, file: !783, line: 102, baseType: !127, size: 32, offset: 96)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !782, file: !783, line: 111, baseType: !848, size: 128)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !782, file: !783, line: 108, size: 128, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !848, file: !783, line: 109, baseType: !463, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !848, file: !783, line: 110, baseType: !44, size: 32, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !782, file: !783, line: 118, baseType: !853, size: 128)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !782, file: !783, line: 114, size: 128, elements: !854)
!854 = !{!855, !856, !857}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !853, file: !783, line: 115, baseType: !31, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !853, file: !783, line: 116, baseType: !44, size: 32, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !853, file: !783, line: 117, baseType: !7, size: 32, offset: 96)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !116, file: !117, line: 1208, baseType: !859, size: 448, offset: 17664)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !860, line: 12, size: 448, elements: !861)
!860 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!861 = !{!862, !863, !864, !865, !866, !867, !868}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !859, file: !860, line: 15, baseType: !179, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !859, file: !860, line: 17, baseType: !179, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !859, file: !860, line: 19, baseType: !179, size: 64, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !859, file: !860, line: 21, baseType: !179, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !859, file: !860, line: 29, baseType: !179, size: 64, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !859, file: !860, line: 35, baseType: !179, size: 64, offset: 320)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !859, file: !860, line: 44, baseType: !179, size: 64, offset: 384)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !116, file: !117, line: 1215, baseType: !179, size: 64, offset: 18112)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !116, file: !117, line: 1217, baseType: !179, size: 64, offset: 18176)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !116, file: !117, line: 1219, baseType: !179, size: 64, offset: 18240)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !116, file: !117, line: 1223, baseType: !873, size: 64, offset: 18304)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !874, line: 99, baseType: !875)
!874 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !874, line: 99, size: 64, elements: !876)
!876 = !{!877}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !875, file: !874, line: 99, baseType: !381, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !116, file: !117, line: 1225, baseType: !879, size: 32, offset: 18368)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !300, line: 275, baseType: !880)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !300, line: 275, size: 32, elements: !881)
!881 = !{!882}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !880, file: !300, line: 275, baseType: !304, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !116, file: !117, line: 1226, baseType: !44, size: 32, offset: 18400)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !116, file: !117, line: 1227, baseType: !44, size: 32, offset: 18432)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !116, file: !117, line: 1231, baseType: !886, size: 64, offset: 18496)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !117, line: 1231, flags: DIFlagFwdDecl)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !116, file: !117, line: 1233, baseType: !37, size: 128, offset: 18560)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !116, file: !117, line: 1240, baseType: !890, size: 64, offset: 18688)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !117, line: 62, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !116, file: !117, line: 1242, baseType: !893, size: 64, offset: 18752)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !117, line: 1242, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !116, file: !117, line: 1244, baseType: !37, size: 128, offset: 18816)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !116, file: !117, line: 1245, baseType: !897, size: 64, offset: 18944)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !117, line: 51, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !116, file: !117, line: 1246, baseType: !621, size: 256, offset: 19008)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !116, file: !117, line: 1247, baseType: !7, size: 32, offset: 19264)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !116, file: !117, line: 1250, baseType: !902, size: 64, offset: 19328)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !117, line: 57, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !116, file: !117, line: 1251, baseType: !621, size: 256, offset: 19392)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !116, file: !117, line: 1252, baseType: !37, size: 128, offset: 19648)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !116, file: !117, line: 1259, baseType: !907, size: 64, offset: 19776)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !117, line: 54, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !116, file: !117, line: 1260, baseType: !828, size: 16, offset: 19840)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !116, file: !117, line: 1261, baseType: !828, size: 16, offset: 19856)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !116, file: !117, line: 1314, baseType: !912, size: 64, offset: 19904)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !914, line: 62, size: 256, align: 256, elements: !915)
!914 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!915 = !{!916, !917, !918, !919, !920, !921, !922}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !913, file: !914, line: 75, baseType: !127, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !913, file: !914, line: 90, baseType: !127, size: 32, offset: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !913, file: !914, line: 112, baseType: !180, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !913, file: !914, line: 132, baseType: !127, size: 32, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !913, file: !914, line: 140, baseType: !127, size: 32, offset: 160)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !913, file: !914, line: 149, baseType: !127, size: 32, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !913, file: !914, line: 154, baseType: !923, offset: 224)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, elements: !573)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !116, file: !117, line: 1315, baseType: !126, size: 32, offset: 19968)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !116, file: !117, line: 1316, baseType: !126, size: 32, offset: 20000)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !116, file: !117, line: 1321, baseType: !112, size: 64, offset: 20032)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !116, file: !117, line: 1325, baseType: !44, size: 32, offset: 20096)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !116, file: !117, line: 1326, baseType: !44, size: 32, offset: 20128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !116, file: !117, line: 1327, baseType: !44, size: 32, offset: 20160)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !116, file: !117, line: 1328, baseType: !44, size: 32, offset: 20192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !116, file: !117, line: 1329, baseType: !557, size: 128, align: 64, offset: 20224)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !116, file: !117, line: 1332, baseType: !933, size: 128, offset: 20352)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !934, line: 51, size: 128, elements: !935)
!934 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!935 = !{!936, !941, !942}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !933, file: !934, line: 60, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !938, line: 7, size: 64, elements: !939)
!938 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!939 = !{!940}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !937, file: !938, line: 12, baseType: !378, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !933, file: !934, line: 63, baseType: !737, size: 8, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !933, file: !934, line: 70, baseType: !737, size: 8, offset: 72)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !116, file: !117, line: 1335, baseType: !944, size: 64, offset: 20480)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !117, line: 59, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !116, file: !117, line: 1337, baseType: !947, size: 128, offset: 20544)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !934, line: 39, size: 128, elements: !948)
!948 = !{!949, !953, !954}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !947, file: !934, line: 40, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !952, line: 19, flags: DIFlagFwdDecl)
!952 = !DIFile(filename: "./arch/x86/include/asm/page.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a6e97e761984fe2bbe50c4dfb6c2f4a3")
!953 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !947, file: !934, line: 42, baseType: !127, size: 32, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !947, file: !934, line: 43, baseType: !127, size: 32, offset: 96)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !116, file: !117, line: 1340, baseType: !956, size: 64, offset: 20672)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !117, line: 69, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !116, file: !117, line: 1351, baseType: !44, size: 32, offset: 20736)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !116, file: !117, line: 1352, baseType: !44, size: 32, offset: 20768)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !116, file: !117, line: 1354, baseType: !112, size: 64, offset: 20800)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !116, file: !117, line: 1364, baseType: !179, size: 64, offset: 20864)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !116, file: !117, line: 1365, baseType: !179, size: 64, offset: 20928)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !116, file: !117, line: 1412, baseType: !112, size: 64, offset: 20992)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !116, file: !117, line: 1453, baseType: !965, size: 64, offset: 21056)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !117, line: 1453, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !116, file: !117, line: 1457, baseType: !968, size: 64, offset: 21120)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !117, line: 1457, flags: DIFlagFwdDecl)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !116, file: !117, line: 1463, baseType: !971, offset: 21184)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !117, line: 739, elements: !972)
!972 = !{}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !116, file: !117, line: 1470, baseType: !557, size: 128, align: 64, offset: 21184)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !116, file: !117, line: 1471, baseType: !107, size: 32, offset: 21312)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !116, file: !117, line: 1472, baseType: !44, size: 32, offset: 21344)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !116, file: !117, line: 1474, baseType: !115, size: 64, offset: 21376)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !116, file: !117, line: 1475, baseType: !978, size: 320, offset: 21440)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !979, line: 11, size: 320, elements: !980)
!979 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!980 = !{!981, !982, !983, !988}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !978, file: !979, line: 16, baseType: !541, size: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !978, file: !979, line: 17, baseType: !112, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !978, file: !979, line: 18, baseType: !984, size: 64, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !987}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !978, file: !979, line: 19, baseType: !126, size: 32, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !116, file: !117, line: 1478, baseType: !990, size: 64, offset: 21760)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !117, line: 1478, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !116, file: !117, line: 1482, baseType: !107, size: 32, offset: 21824)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !116, file: !117, line: 1489, baseType: !31, size: 64, offset: 21888)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !116, file: !117, line: 1504, baseType: !31, size: 64, offset: 21952)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !116, file: !117, line: 1505, baseType: !180, size: 64, offset: 22016)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !116, file: !117, line: 1506, baseType: !179, size: 64, offset: 22080)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !116, file: !117, line: 1507, baseType: !180, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !116, file: !117, line: 1508, baseType: !180, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !116, file: !117, line: 1509, baseType: !180, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !116, file: !117, line: 1510, baseType: !557, size: 128, align: 64, offset: 22208)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !116, file: !117, line: 1511, baseType: !44, size: 32, offset: 22336)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !116, file: !117, line: 1515, baseType: !1003, size: 64, offset: 22400)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !141, line: 56, size: 64, elements: !1004)
!1004 = !{!1005}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1003, file: !141, line: 57, baseType: !144, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !116, file: !117, line: 1518, baseType: !1003, size: 64, offset: 22464)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !116, file: !117, line: 1528, baseType: !557, size: 128, align: 64, offset: 22528)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !116, file: !117, line: 1552, baseType: !1009, size: 35328, offset: 23040)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !432, line: 430, size: 35328, elements: !1010)
!1010 = !{!1011, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1040, !1041, !1042, !1043, !1044, !1045, !1048, !1049, !1050, !1051}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1009, file: !432, line: 432, baseType: !1012, size: 192)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1013, size: 192, elements: !612)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1014, line: 16, size: 64, elements: !1015)
!1014 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1015 = !{!1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1013, file: !1014, line: 17, baseType: !88, size: 16)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1013, file: !1014, line: 18, baseType: !88, size: 16, offset: 16)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1013, file: !1014, line: 19, baseType: !88, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1013, file: !1014, line: 19, baseType: !88, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1013, file: !1014, line: 19, baseType: !88, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1013, file: !1014, line: 19, baseType: !88, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1013, file: !1014, line: 19, baseType: !88, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1013, file: !1014, line: 20, baseType: !88, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1013, file: !1014, line: 20, baseType: !88, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1013, file: !1014, line: 20, baseType: !88, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1013, file: !1014, line: 20, baseType: !88, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1013, file: !1014, line: 20, baseType: !88, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1013, file: !1014, line: 20, baseType: !88, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1009, file: !432, line: 436, baseType: !112, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1009, file: !432, line: 440, baseType: !90, size: 16, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1009, file: !432, line: 441, baseType: !90, size: 16, offset: 272)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1009, file: !432, line: 442, baseType: !90, size: 16, offset: 288)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1009, file: !432, line: 443, baseType: !90, size: 16, offset: 304)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1009, file: !432, line: 447, baseType: !112, size: 64, offset: 320)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1009, file: !432, line: 448, baseType: !112, size: 64, offset: 384)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1009, file: !432, line: 459, baseType: !1037, size: 256, offset: 448)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1038, size: 256, elements: !546)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !432, line: 428, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1009, file: !432, line: 461, baseType: !112, size: 64, offset: 704)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1009, file: !432, line: 463, baseType: !112, size: 64, offset: 768)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1009, file: !432, line: 465, baseType: !112, size: 64, offset: 832)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1009, file: !432, line: 466, baseType: !112, size: 64, offset: 896)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1009, file: !432, line: 467, baseType: !112, size: 64, offset: 960)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1009, file: !432, line: 473, baseType: !1046, size: 64, offset: 1024)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !432, line: 10, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1009, file: !432, line: 480, baseType: !112, size: 64, offset: 1088)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1009, file: !432, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1009, file: !432, line: 491, baseType: !126, size: 32, offset: 1184)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1009, file: !432, line: 501, baseType: !1052, size: 33792, offset: 1536)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1053, line: 448, size: 33792, elements: !1054)
!1053 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1054 = !{!1055, !1056, !1057, !1225, !1226, !1232, !1233}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1052, file: !1053, line: 461, baseType: !7, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1052, file: !1053, line: 468, baseType: !112, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1052, file: !1053, line: 476, baseType: !1058, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1053, line: 356, size: 33280, align: 512, elements: !1060)
!1060 = !{!1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1059, file: !1053, line: 358, baseType: !7, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1059, file: !1053, line: 361, baseType: !7, size: 32, offset: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1059, file: !1053, line: 364, baseType: !179, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1059, file: !1053, line: 367, baseType: !179, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1059, file: !1053, line: 370, baseType: !179, size: 64, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1059, file: !1053, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1059, file: !1053, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1059, file: !1053, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1059, file: !1053, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1059, file: !1053, line: 397, baseType: !1071, size: 32768, offset: 512)
!1071 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1053, line: 348, size: 32768, elements: !1072)
!1072 = !{!1073, !1088, !1129, !1206, !1221}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1071, file: !1053, line: 349, baseType: !1074, size: 896)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1053, line: 12, size: 896, elements: !1075)
!1075 = !{!1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1087}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1074, file: !1053, line: 13, baseType: !126, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1074, file: !1053, line: 14, baseType: !126, size: 32, offset: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1074, file: !1053, line: 15, baseType: !126, size: 32, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1074, file: !1053, line: 16, baseType: !126, size: 32, offset: 96)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1074, file: !1053, line: 17, baseType: !126, size: 32, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1074, file: !1053, line: 18, baseType: !126, size: 32, offset: 160)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1074, file: !1053, line: 19, baseType: !126, size: 32, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1074, file: !1053, line: 22, baseType: !1084, size: 640, offset: 224)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 640, elements: !1085)
!1085 = !{!1086}
!1086 = !DISubrange(count: 20)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1074, file: !1053, line: 25, baseType: !126, size: 32, offset: 864)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1071, file: !1053, line: 350, baseType: !1089, size: 4096, align: 128)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1053, line: 34, size: 4096, align: 128, elements: !1090)
!1090 = !{!1091, !1092, !1093, !1094, !1095, !1110, !1111, !1112, !1116, !1120, !1124}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1089, file: !1053, line: 35, baseType: !88, size: 16)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1089, file: !1053, line: 36, baseType: !88, size: 16, offset: 16)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1089, file: !1053, line: 37, baseType: !88, size: 16, offset: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1089, file: !1053, line: 38, baseType: !88, size: 16, offset: 48)
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !1053, line: 39, baseType: !1096, size: 128, offset: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !1053, line: 39, size: 128, elements: !1097)
!1097 = !{!1098, !1103}
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !1053, line: 40, baseType: !1099, size: 128)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !1053, line: 40, size: 128, elements: !1100)
!1100 = !{!1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1099, file: !1053, line: 41, baseType: !179, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1099, file: !1053, line: 42, baseType: !179, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !1053, line: 44, baseType: !1104, size: 128)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !1053, line: 44, size: 128, elements: !1105)
!1105 = !{!1106, !1107, !1108, !1109}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1104, file: !1053, line: 45, baseType: !126, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1104, file: !1053, line: 46, baseType: !126, size: 32, offset: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1104, file: !1053, line: 47, baseType: !126, size: 32, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1104, file: !1053, line: 48, baseType: !126, size: 32, offset: 96)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1089, file: !1053, line: 51, baseType: !126, size: 32, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1089, file: !1053, line: 52, baseType: !126, size: 32, offset: 224)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1089, file: !1053, line: 55, baseType: !1113, size: 1024, offset: 256)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 1024, elements: !1114)
!1114 = !{!1115}
!1115 = !DISubrange(count: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1089, file: !1053, line: 58, baseType: !1117, size: 2048, offset: 1280)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 2048, elements: !1118)
!1118 = !{!1119}
!1119 = !DISubrange(count: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1089, file: !1053, line: 60, baseType: !1121, size: 384, offset: 3328)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 384, elements: !1122)
!1122 = !{!1123}
!1123 = !DISubrange(count: 12)
!1124 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !1053, line: 62, baseType: !1125, size: 384, offset: 3712)
!1125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !1053, line: 62, size: 384, elements: !1126)
!1126 = !{!1127, !1128}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1125, file: !1053, line: 63, baseType: !1121, size: 384)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1125, file: !1053, line: 64, baseType: !1121, size: 384)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1071, file: !1053, line: 351, baseType: !1130, size: 1088)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1053, line: 79, size: 1088, elements: !1131)
!1131 = !{!1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1205}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1130, file: !1053, line: 80, baseType: !126, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1130, file: !1053, line: 81, baseType: !126, size: 32, offset: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1130, file: !1053, line: 82, baseType: !126, size: 32, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1130, file: !1053, line: 83, baseType: !126, size: 32, offset: 96)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1130, file: !1053, line: 84, baseType: !126, size: 32, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1130, file: !1053, line: 85, baseType: !126, size: 32, offset: 160)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1130, file: !1053, line: 86, baseType: !126, size: 32, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1130, file: !1053, line: 88, baseType: !1084, size: 640, offset: 224)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1130, file: !1053, line: 89, baseType: !78, size: 8, offset: 864)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1130, file: !1053, line: 90, baseType: !78, size: 8, offset: 872)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1130, file: !1053, line: 91, baseType: !78, size: 8, offset: 880)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1130, file: !1053, line: 92, baseType: !78, size: 8, offset: 888)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1130, file: !1053, line: 93, baseType: !78, size: 8, offset: 896)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1130, file: !1053, line: 94, baseType: !78, size: 8, offset: 904)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1130, file: !1053, line: 95, baseType: !1147, size: 64, offset: 960)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1149, line: 11, size: 128, elements: !1150)
!1149 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1150 = !{!1151, !1152}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1148, file: !1149, line: 12, baseType: !463, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1148, file: !1149, line: 13, baseType: !1153, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1155, line: 103, size: 1344, elements: !1156)
!1155 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1156 = !{!1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1185, !1186, !1187}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1154, file: !1155, line: 109, baseType: !112, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1154, file: !1155, line: 110, baseType: !112, size: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1154, file: !1155, line: 111, baseType: !112, size: 64, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1154, file: !1155, line: 112, baseType: !112, size: 64, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1154, file: !1155, line: 113, baseType: !112, size: 64, offset: 256)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1154, file: !1155, line: 114, baseType: !112, size: 64, offset: 320)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1154, file: !1155, line: 117, baseType: !112, size: 64, offset: 384)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1154, file: !1155, line: 118, baseType: !112, size: 64, offset: 448)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1154, file: !1155, line: 119, baseType: !112, size: 64, offset: 512)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1154, file: !1155, line: 120, baseType: !112, size: 64, offset: 576)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1154, file: !1155, line: 121, baseType: !112, size: 64, offset: 640)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1154, file: !1155, line: 122, baseType: !112, size: 64, offset: 704)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1154, file: !1155, line: 123, baseType: !112, size: 64, offset: 768)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1154, file: !1155, line: 124, baseType: !112, size: 64, offset: 832)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1154, file: !1155, line: 125, baseType: !112, size: 64, offset: 896)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1154, file: !1155, line: 139, baseType: !112, size: 64, offset: 960)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1154, file: !1155, line: 142, baseType: !112, size: 64, offset: 1024)
!1174 = !DIDerivedType(tag: DW_TAG_member, scope: !1154, file: !1155, line: 144, baseType: !1175, size: 64, offset: 1088)
!1175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1154, file: !1155, line: 144, size: 64, elements: !1176)
!1176 = !{!1177, !1178, !1179}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1175, file: !1155, line: 146, baseType: !88, size: 16)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1175, file: !1155, line: 148, baseType: !179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1175, file: !1155, line: 150, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1155, line: 59, size: 64, elements: !1181)
!1181 = !{!1182, !1183, !1184}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1180, file: !1155, line: 61, baseType: !179, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1180, file: !1155, line: 63, baseType: !179, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1180, file: !1155, line: 65, baseType: !179, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1154, file: !1155, line: 153, baseType: !112, size: 64, offset: 1152)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1154, file: !1155, line: 154, baseType: !112, size: 64, offset: 1216)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1154, file: !1155, line: 156, baseType: !1188, size: 64, offset: 1280)
!1188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1154, file: !1155, line: 156, size: 64, elements: !1189)
!1189 = !{!1190, !1191, !1192}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1188, file: !1155, line: 158, baseType: !88, size: 16)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1188, file: !1155, line: 160, baseType: !179, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1188, file: !1155, line: 162, baseType: !1193, size: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1155, line: 69, size: 64, elements: !1194)
!1194 = !{!1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1193, file: !1155, line: 71, baseType: !179, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1193, file: !1155, line: 73, baseType: !179, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1193, file: !1155, line: 75, baseType: !179, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1193, file: !1155, line: 77, baseType: !179, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1193, file: !1155, line: 80, baseType: !179, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1193, file: !1155, line: 83, baseType: !179, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1193, file: !1155, line: 86, baseType: !179, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1193, file: !1155, line: 88, baseType: !179, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1193, file: !1155, line: 93, baseType: !179, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1193, file: !1155, line: 100, baseType: !179, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1130, file: !1053, line: 96, baseType: !126, size: 32, offset: 1024)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1071, file: !1053, line: 352, baseType: !1207, size: 4608, align: 512)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1053, line: 333, size: 4608, align: 512, elements: !1208)
!1208 = !{!1209, !1210, !1219}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1207, file: !1053, line: 334, baseType: !1089, size: 4096, align: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1207, file: !1053, line: 335, baseType: !1211, size: 512, offset: 4096)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1053, line: 312, size: 512, elements: !1212)
!1212 = !{!1213, !1214, !1215}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1211, file: !1053, line: 313, baseType: !179, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1211, file: !1053, line: 314, baseType: !179, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1211, file: !1053, line: 315, baseType: !1216, size: 384, offset: 128)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 384, elements: !1217)
!1217 = !{!1218}
!1218 = !DISubrange(count: 6)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1207, file: !1053, line: 336, baseType: !1220, offset: 4608)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, elements: !573)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1071, file: !1053, line: 353, baseType: !1222, size: 32768)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 32768, elements: !1223)
!1223 = !{!1224}
!1224 = !DISubrange(count: 4096)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1052, file: !1053, line: 484, baseType: !1058, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1052, file: !1053, line: 491, baseType: !1227, size: 128, offset: 256)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1053, line: 404, size: 128, elements: !1228)
!1228 = !{!1229, !1230, !1231}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1227, file: !1053, line: 424, baseType: !179, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1227, file: !1053, line: 432, baseType: !7, size: 32, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1227, file: !1053, line: 440, baseType: !7, size: 32, offset: 96)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1052, file: !1053, line: 498, baseType: !1227, size: 128, offset: 384)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1052, file: !1053, line: 508, baseType: !1059, size: 33280, align: 512, offset: 512)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_waiter", file: !3, line: 173, size: 320, elements: !1240)
!1240 = !{!1241, !1242, !1243, !1244}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1239, file: !3, line: 174, baseType: !37, size: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1239, file: !3, line: 175, baseType: !97, size: 64, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !1239, file: !3, line: 176, baseType: !115, size: 64, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "woken", scope: !1239, file: !3, line: 177, baseType: !44, size: 32, offset: 256)
!1245 = !{!0, !1246, !1248, !1250, !1252, !1254, !1256, !1258, !1260, !1262, !1264, !1266, !1268, !1270, !1273, !1275}
!1246 = !DIGlobalVariableExpression(var: !1247, expr: !DIExpression())
!1247 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_klist_add_head149", scope: !2, file: !3, line: 127, type: !31, isLocal: true, isDefinition: true)
!1248 = !DIGlobalVariableExpression(var: !1249, expr: !DIExpression())
!1249 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_klist_add_tail150", scope: !2, file: !3, line: 139, type: !31, isLocal: true, isDefinition: true)
!1250 = !DIGlobalVariableExpression(var: !1251, expr: !DIExpression())
!1251 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_klist_add_behind151", scope: !2, file: !3, line: 155, type: !31, isLocal: true, isDefinition: true)
!1252 = !DIGlobalVariableExpression(var: !1253, expr: !DIExpression())
!1253 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_klist_add_before152", scope: !2, file: !3, line: 171, type: !31, isLocal: true, isDefinition: true)
!1254 = !DIGlobalVariableExpression(var: !1255, expr: !DIExpression())
!1255 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_klist_del153", scope: !2, file: !3, line: 232, type: !31, isLocal: true, isDefinition: true)
!1256 = !DIGlobalVariableExpression(var: !1257, expr: !DIExpression())
!1257 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_klist_remove155", scope: !2, file: !3, line: 259, type: !31, isLocal: true, isDefinition: true)
!1258 = !DIGlobalVariableExpression(var: !1259, expr: !DIExpression())
!1259 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_klist_node_attached156", scope: !2, file: !3, line: 269, type: !31, isLocal: true, isDefinition: true)
!1260 = !DIGlobalVariableExpression(var: !1261, expr: !DIExpression())
!1261 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_klist_iter_init_node157", scope: !2, file: !3, line: 288, type: !31, isLocal: true, isDefinition: true)
!1262 = !DIGlobalVariableExpression(var: !1263, expr: !DIExpression())
!1263 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_klist_iter_init158", scope: !2, file: !3, line: 301, type: !31, isLocal: true, isDefinition: true)
!1264 = !DIGlobalVariableExpression(var: !1265, expr: !DIExpression())
!1265 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_klist_iter_exit159", scope: !2, file: !3, line: 318, type: !31, isLocal: true, isDefinition: true)
!1266 = !DIGlobalVariableExpression(var: !1267, expr: !DIExpression())
!1267 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_klist_prev160", scope: !2, file: !3, line: 365, type: !31, isLocal: true, isDefinition: true)
!1268 = !DIGlobalVariableExpression(var: !1269, expr: !DIExpression())
!1269 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_klist_next161", scope: !2, file: !3, line: 407, type: !31, isLocal: true, isDefinition: true)
!1270 = !DIGlobalVariableExpression(var: !1271, expr: !DIExpression())
!1271 = distinct !DIGlobalVariable(scope: null, file: !3, line: 62, type: !1272, isLocal: true, isDefinition: true)
!1272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 96, elements: !1122)
!1273 = !DIGlobalVariableExpression(var: !1274, expr: !DIExpression())
!1274 = distinct !DIGlobalVariable(name: "klist_remove_lock", scope: !2, file: !3, line: 180, type: !50, isLocal: true, isDefinition: true)
!1275 = !DIGlobalVariableExpression(var: !1276, expr: !DIExpression())
!1276 = distinct !DIGlobalVariable(name: "klist_remove_waiters", scope: !2, file: !3, line: 181, type: !37, isLocal: true, isDefinition: true)
!1277 = !{i32 7, !"Dwarf Version", i32 5}
!1278 = !{i32 2, !"Debug Info Version", i32 3}
!1279 = !{i32 1, !"wchar_size", i32 2}
!1280 = !{i32 8, !"cf-protection-branch", i32 1}
!1281 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1282 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1283 = !{i32 1, !"Code Model", i32 2}
!1284 = !{i32 1, !"override-stack-alignment", i32 8}
!1285 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1286 = distinct !DISubprogram(name: "klist_init", scope: !3, file: !3, line: 84, type: !1287, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1289)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !45, !94, !94}
!1289 = !{!1290, !1291, !1292}
!1290 = !DILocalVariable(name: "k", arg: 1, scope: !1286, file: !3, line: 84, type: !45)
!1291 = !DILocalVariable(name: "get", arg: 2, scope: !1286, file: !3, line: 84, type: !94)
!1292 = !DILocalVariable(name: "put", arg: 3, scope: !1286, file: !3, line: 85, type: !94)
!1293 = !DILocation(line: 84, column: 31, scope: !1286)
!1294 = !DILocation(line: 84, column: 41, scope: !1286)
!1295 = !DILocation(line: 85, column: 10, scope: !1286)
!1296 = !DILocation(line: 87, column: 18, scope: !1286)
!1297 = !DILocation(line: 87, column: 21, scope: !1286)
!1298 = !DILocation(line: 87, column: 2, scope: !1286)
!1299 = !DILocation(line: 88, column: 2, scope: !1286)
!1300 = !DILocation(line: 88, column: 2, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 88, column: 2)
!1302 = !DILocation(line: 89, column: 11, scope: !1286)
!1303 = !DILocation(line: 89, column: 2, scope: !1286)
!1304 = !DILocation(line: 89, column: 5, scope: !1286)
!1305 = !DILocation(line: 89, column: 9, scope: !1286)
!1306 = !DILocation(line: 90, column: 11, scope: !1286)
!1307 = !DILocation(line: 90, column: 2, scope: !1286)
!1308 = !DILocation(line: 90, column: 5, scope: !1286)
!1309 = !DILocation(line: 90, column: 9, scope: !1286)
!1310 = !DILocation(line: 91, column: 1, scope: !1286)
!1311 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !1312, file: !1312, line: 35, type: !1313, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1315)
!1312 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!1313 = !DISubroutineType(types: !1314)
!1314 = !{null, !36}
!1315 = !{!1316}
!1316 = !DILocalVariable(name: "list", arg: 1, scope: !1311, file: !1312, line: 35, type: !36)
!1317 = !DILocation(line: 35, column: 53, scope: !1311)
!1318 = !DILocation(line: 37, column: 2, scope: !1311)
!1319 = !DILocation(line: 37, column: 2, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1311, file: !1312, line: 37, column: 2)
!1321 = !DILocation(line: 37, column: 2, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1320, file: !1312, line: 37, column: 2)
!1323 = !DILocation(line: 37, column: 2, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1320, file: !1312, line: 37, column: 2)
!1325 = !DILocation(line: 38, column: 2, scope: !1311)
!1326 = !DILocation(line: 38, column: 2, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1311, file: !1312, line: 38, column: 2)
!1328 = !DILocation(line: 38, column: 2, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1327, file: !1312, line: 38, column: 2)
!1330 = !DILocation(line: 38, column: 2, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !1312, line: 38, column: 2)
!1332 = !DILocation(line: 39, column: 1, scope: !1311)
!1333 = distinct !DISubprogram(name: "spinlock_check", scope: !1334, file: !1334, line: 324, type: !1335, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1339)
!1334 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!1337, !1338}
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!1339 = !{!1340}
!1340 = !DILocalVariable(name: "lock", arg: 1, scope: !1333, file: !1334, line: 324, type: !1338)
!1341 = !DILocation(line: 324, column: 67, scope: !1333)
!1342 = !DILocation(line: 326, column: 10, scope: !1333)
!1343 = !DILocation(line: 326, column: 16, scope: !1333)
!1344 = !DILocation(line: 326, column: 2, scope: !1333)
!1345 = distinct !DISubprogram(name: "klist_add_head", scope: !3, file: !3, line: 122, type: !1346, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1348)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{null, !97, !45}
!1348 = !{!1349, !1350}
!1349 = !DILocalVariable(name: "n", arg: 1, scope: !1345, file: !3, line: 122, type: !97)
!1350 = !DILocalVariable(name: "k", arg: 2, scope: !1345, file: !3, line: 122, type: !45)
!1351 = !DILocation(line: 122, column: 40, scope: !1345)
!1352 = !DILocation(line: 122, column: 57, scope: !1345)
!1353 = !DILocation(line: 124, column: 18, scope: !1345)
!1354 = !DILocation(line: 124, column: 21, scope: !1345)
!1355 = !DILocation(line: 124, column: 2, scope: !1345)
!1356 = !DILocation(line: 125, column: 11, scope: !1345)
!1357 = !DILocation(line: 125, column: 14, scope: !1345)
!1358 = !DILocation(line: 125, column: 2, scope: !1345)
!1359 = !DILocation(line: 126, column: 1, scope: !1345)
!1360 = distinct !DISubprogram(name: "klist_node_init", scope: !3, file: !3, line: 108, type: !1361, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1363)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{null, !45, !97}
!1363 = !{!1364, !1365}
!1364 = !DILocalVariable(name: "k", arg: 1, scope: !1360, file: !3, line: 108, type: !45)
!1365 = !DILocalVariable(name: "n", arg: 2, scope: !1360, file: !3, line: 108, type: !97)
!1366 = !DILocation(line: 108, column: 43, scope: !1360)
!1367 = !DILocation(line: 108, column: 65, scope: !1360)
!1368 = !DILocation(line: 110, column: 18, scope: !1360)
!1369 = !DILocation(line: 110, column: 21, scope: !1360)
!1370 = !DILocation(line: 110, column: 2, scope: !1360)
!1371 = !DILocation(line: 111, column: 13, scope: !1360)
!1372 = !DILocation(line: 111, column: 16, scope: !1360)
!1373 = !DILocation(line: 111, column: 2, scope: !1360)
!1374 = !DILocation(line: 112, column: 18, scope: !1360)
!1375 = !DILocation(line: 112, column: 21, scope: !1360)
!1376 = !DILocation(line: 112, column: 2, scope: !1360)
!1377 = !DILocation(line: 113, column: 6, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 113, column: 6)
!1379 = !DILocation(line: 113, column: 9, scope: !1378)
!1380 = !DILocation(line: 113, column: 6, scope: !1360)
!1381 = !DILocation(line: 114, column: 3, scope: !1378)
!1382 = !DILocation(line: 114, column: 6, scope: !1378)
!1383 = !DILocation(line: 114, column: 10, scope: !1378)
!1384 = !DILocation(line: 115, column: 1, scope: !1360)
!1385 = distinct !DISubprogram(name: "add_head", scope: !3, file: !3, line: 94, type: !1361, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1386)
!1386 = !{!1387, !1388}
!1387 = !DILocalVariable(name: "k", arg: 1, scope: !1385, file: !3, line: 94, type: !45)
!1388 = !DILocalVariable(name: "n", arg: 2, scope: !1385, file: !3, line: 94, type: !97)
!1389 = !DILocation(line: 94, column: 36, scope: !1385)
!1390 = !DILocation(line: 94, column: 58, scope: !1385)
!1391 = !DILocation(line: 96, column: 13, scope: !1385)
!1392 = !DILocation(line: 96, column: 16, scope: !1385)
!1393 = !DILocation(line: 96, column: 2, scope: !1385)
!1394 = !DILocation(line: 97, column: 12, scope: !1385)
!1395 = !DILocation(line: 97, column: 15, scope: !1385)
!1396 = !DILocation(line: 97, column: 24, scope: !1385)
!1397 = !DILocation(line: 97, column: 27, scope: !1385)
!1398 = !DILocation(line: 97, column: 2, scope: !1385)
!1399 = !DILocation(line: 98, column: 15, scope: !1385)
!1400 = !DILocation(line: 98, column: 18, scope: !1385)
!1401 = !DILocation(line: 98, column: 2, scope: !1385)
!1402 = !DILocation(line: 99, column: 1, scope: !1385)
!1403 = distinct !DISubprogram(name: "klist_add_tail", scope: !3, file: !3, line: 134, type: !1346, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1404)
!1404 = !{!1405, !1406}
!1405 = !DILocalVariable(name: "n", arg: 1, scope: !1403, file: !3, line: 134, type: !97)
!1406 = !DILocalVariable(name: "k", arg: 2, scope: !1403, file: !3, line: 134, type: !45)
!1407 = !DILocation(line: 134, column: 40, scope: !1403)
!1408 = !DILocation(line: 134, column: 57, scope: !1403)
!1409 = !DILocation(line: 136, column: 18, scope: !1403)
!1410 = !DILocation(line: 136, column: 21, scope: !1403)
!1411 = !DILocation(line: 136, column: 2, scope: !1403)
!1412 = !DILocation(line: 137, column: 11, scope: !1403)
!1413 = !DILocation(line: 137, column: 14, scope: !1403)
!1414 = !DILocation(line: 137, column: 2, scope: !1403)
!1415 = !DILocation(line: 138, column: 1, scope: !1403)
!1416 = distinct !DISubprogram(name: "add_tail", scope: !3, file: !3, line: 101, type: !1361, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1417)
!1417 = !{!1418, !1419}
!1418 = !DILocalVariable(name: "k", arg: 1, scope: !1416, file: !3, line: 101, type: !45)
!1419 = !DILocalVariable(name: "n", arg: 2, scope: !1416, file: !3, line: 101, type: !97)
!1420 = !DILocation(line: 101, column: 36, scope: !1416)
!1421 = !DILocation(line: 101, column: 58, scope: !1416)
!1422 = !DILocation(line: 103, column: 13, scope: !1416)
!1423 = !DILocation(line: 103, column: 16, scope: !1416)
!1424 = !DILocation(line: 103, column: 2, scope: !1416)
!1425 = !DILocation(line: 104, column: 17, scope: !1416)
!1426 = !DILocation(line: 104, column: 20, scope: !1416)
!1427 = !DILocation(line: 104, column: 29, scope: !1416)
!1428 = !DILocation(line: 104, column: 32, scope: !1416)
!1429 = !DILocation(line: 104, column: 2, scope: !1416)
!1430 = !DILocation(line: 105, column: 15, scope: !1416)
!1431 = !DILocation(line: 105, column: 18, scope: !1416)
!1432 = !DILocation(line: 105, column: 2, scope: !1416)
!1433 = !DILocation(line: 106, column: 1, scope: !1416)
!1434 = distinct !DISubprogram(name: "klist_add_behind", scope: !3, file: !3, line: 146, type: !1435, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1437)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{null, !97, !97}
!1437 = !{!1438, !1439, !1440}
!1438 = !DILocalVariable(name: "n", arg: 1, scope: !1434, file: !3, line: 146, type: !97)
!1439 = !DILocalVariable(name: "pos", arg: 2, scope: !1434, file: !3, line: 146, type: !97)
!1440 = !DILocalVariable(name: "k", scope: !1434, file: !3, line: 148, type: !45)
!1441 = !DILocation(line: 146, column: 42, scope: !1434)
!1442 = !DILocation(line: 146, column: 64, scope: !1434)
!1443 = !DILocation(line: 148, column: 2, scope: !1434)
!1444 = !DILocation(line: 148, column: 16, scope: !1434)
!1445 = !DILocation(line: 148, column: 32, scope: !1434)
!1446 = !DILocation(line: 148, column: 20, scope: !1434)
!1447 = !DILocation(line: 150, column: 18, scope: !1434)
!1448 = !DILocation(line: 150, column: 21, scope: !1434)
!1449 = !DILocation(line: 150, column: 2, scope: !1434)
!1450 = !DILocation(line: 151, column: 13, scope: !1434)
!1451 = !DILocation(line: 151, column: 16, scope: !1434)
!1452 = !DILocation(line: 151, column: 2, scope: !1434)
!1453 = !DILocation(line: 152, column: 12, scope: !1434)
!1454 = !DILocation(line: 152, column: 15, scope: !1434)
!1455 = !DILocation(line: 152, column: 24, scope: !1434)
!1456 = !DILocation(line: 152, column: 29, scope: !1434)
!1457 = !DILocation(line: 152, column: 2, scope: !1434)
!1458 = !DILocation(line: 153, column: 15, scope: !1434)
!1459 = !DILocation(line: 153, column: 18, scope: !1434)
!1460 = !DILocation(line: 153, column: 2, scope: !1434)
!1461 = !DILocation(line: 154, column: 1, scope: !1434)
!1462 = distinct !DISubprogram(name: "knode_klist", scope: !3, file: !3, line: 47, type: !1463, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1465)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!45, !97}
!1465 = !{!1466}
!1466 = !DILocalVariable(name: "knode", arg: 1, scope: !1462, file: !3, line: 47, type: !97)
!1467 = !DILocation(line: 47, column: 53, scope: !1462)
!1468 = !DILocation(line: 50, column: 19, scope: !1462)
!1469 = !DILocation(line: 50, column: 26, scope: !1462)
!1470 = !DILocation(line: 50, column: 4, scope: !1462)
!1471 = !DILocation(line: 50, column: 34, scope: !1462)
!1472 = !DILocation(line: 49, column: 9, scope: !1462)
!1473 = !DILocation(line: 49, column: 2, scope: !1462)
!1474 = distinct !DISubprogram(name: "spin_lock", scope: !1334, file: !1334, line: 349, type: !1475, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1477)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{null, !1338}
!1477 = !{!1478}
!1478 = !DILocalVariable(name: "lock", arg: 1, scope: !1474, file: !1334, line: 349, type: !1338)
!1479 = !DILocation(line: 349, column: 51, scope: !1474)
!1480 = !DILocation(line: 351, column: 2, scope: !1474)
!1481 = !DILocation(line: 352, column: 1, scope: !1474)
!1482 = distinct !DISubprogram(name: "list_add", scope: !1312, file: !1312, line: 167, type: !1483, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1485)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !36, !36}
!1485 = !{!1486, !1487}
!1486 = !DILocalVariable(name: "new", arg: 1, scope: !1482, file: !1312, line: 167, type: !36)
!1487 = !DILocalVariable(name: "head", arg: 2, scope: !1482, file: !1312, line: 167, type: !36)
!1488 = !DILocation(line: 167, column: 47, scope: !1482)
!1489 = !DILocation(line: 167, column: 70, scope: !1482)
!1490 = !DILocation(line: 169, column: 13, scope: !1482)
!1491 = !DILocation(line: 169, column: 18, scope: !1482)
!1492 = !DILocation(line: 169, column: 24, scope: !1482)
!1493 = !DILocation(line: 169, column: 30, scope: !1482)
!1494 = !DILocation(line: 169, column: 2, scope: !1482)
!1495 = !DILocation(line: 170, column: 1, scope: !1482)
!1496 = distinct !DISubprogram(name: "spin_unlock", scope: !1334, file: !1334, line: 389, type: !1475, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1497)
!1497 = !{!1498}
!1498 = !DILocalVariable(name: "lock", arg: 1, scope: !1496, file: !1334, line: 389, type: !1338)
!1499 = !DILocation(line: 389, column: 53, scope: !1496)
!1500 = !DILocation(line: 391, column: 2, scope: !1496)
!1501 = !DILocation(line: 392, column: 1, scope: !1496)
!1502 = distinct !DISubprogram(name: "klist_add_before", scope: !3, file: !3, line: 162, type: !1435, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1503)
!1503 = !{!1504, !1505, !1506}
!1504 = !DILocalVariable(name: "n", arg: 1, scope: !1502, file: !3, line: 162, type: !97)
!1505 = !DILocalVariable(name: "pos", arg: 2, scope: !1502, file: !3, line: 162, type: !97)
!1506 = !DILocalVariable(name: "k", scope: !1502, file: !3, line: 164, type: !45)
!1507 = !DILocation(line: 162, column: 42, scope: !1502)
!1508 = !DILocation(line: 162, column: 64, scope: !1502)
!1509 = !DILocation(line: 164, column: 2, scope: !1502)
!1510 = !DILocation(line: 164, column: 16, scope: !1502)
!1511 = !DILocation(line: 164, column: 32, scope: !1502)
!1512 = !DILocation(line: 164, column: 20, scope: !1502)
!1513 = !DILocation(line: 166, column: 18, scope: !1502)
!1514 = !DILocation(line: 166, column: 21, scope: !1502)
!1515 = !DILocation(line: 166, column: 2, scope: !1502)
!1516 = !DILocation(line: 167, column: 13, scope: !1502)
!1517 = !DILocation(line: 167, column: 16, scope: !1502)
!1518 = !DILocation(line: 167, column: 2, scope: !1502)
!1519 = !DILocation(line: 168, column: 17, scope: !1502)
!1520 = !DILocation(line: 168, column: 20, scope: !1502)
!1521 = !DILocation(line: 168, column: 29, scope: !1502)
!1522 = !DILocation(line: 168, column: 34, scope: !1502)
!1523 = !DILocation(line: 168, column: 2, scope: !1502)
!1524 = !DILocation(line: 169, column: 15, scope: !1502)
!1525 = !DILocation(line: 169, column: 18, scope: !1502)
!1526 = !DILocation(line: 169, column: 2, scope: !1502)
!1527 = !DILocation(line: 170, column: 1, scope: !1502)
!1528 = distinct !DISubprogram(name: "list_add_tail", scope: !1312, file: !1312, line: 181, type: !1483, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1529)
!1529 = !{!1530, !1531}
!1530 = !DILocalVariable(name: "new", arg: 1, scope: !1528, file: !1312, line: 181, type: !36)
!1531 = !DILocalVariable(name: "head", arg: 2, scope: !1528, file: !1312, line: 181, type: !36)
!1532 = !DILocation(line: 181, column: 52, scope: !1528)
!1533 = !DILocation(line: 181, column: 75, scope: !1528)
!1534 = !DILocation(line: 183, column: 13, scope: !1528)
!1535 = !DILocation(line: 183, column: 18, scope: !1528)
!1536 = !DILocation(line: 183, column: 24, scope: !1528)
!1537 = !DILocation(line: 183, column: 30, scope: !1528)
!1538 = !DILocation(line: 183, column: 2, scope: !1528)
!1539 = !DILocation(line: 184, column: 1, scope: !1528)
!1540 = distinct !DISubprogram(name: "klist_del", scope: !3, file: !3, line: 228, type: !95, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1541)
!1541 = !{!1542}
!1542 = !DILocalVariable(name: "n", arg: 1, scope: !1540, file: !3, line: 228, type: !97)
!1543 = !DILocation(line: 228, column: 35, scope: !1540)
!1544 = !DILocation(line: 230, column: 12, scope: !1540)
!1545 = !DILocation(line: 230, column: 2, scope: !1540)
!1546 = !DILocation(line: 231, column: 1, scope: !1540)
!1547 = distinct !DISubprogram(name: "klist_put", scope: !3, file: !3, line: 209, type: !1548, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1550)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !97, !737}
!1550 = !{!1551, !1552, !1553, !1554}
!1551 = !DILocalVariable(name: "n", arg: 1, scope: !1547, file: !3, line: 209, type: !97)
!1552 = !DILocalVariable(name: "kill", arg: 2, scope: !1547, file: !3, line: 209, type: !737)
!1553 = !DILocalVariable(name: "k", scope: !1547, file: !3, line: 211, type: !45)
!1554 = !DILocalVariable(name: "put", scope: !1547, file: !3, line: 212, type: !94)
!1555 = !DILocation(line: 209, column: 42, scope: !1547)
!1556 = !DILocation(line: 209, column: 50, scope: !1547)
!1557 = !DILocation(line: 211, column: 2, scope: !1547)
!1558 = !DILocation(line: 211, column: 16, scope: !1547)
!1559 = !DILocation(line: 211, column: 32, scope: !1547)
!1560 = !DILocation(line: 211, column: 20, scope: !1547)
!1561 = !DILocation(line: 212, column: 2, scope: !1547)
!1562 = !DILocation(line: 212, column: 9, scope: !1547)
!1563 = !DILocation(line: 212, column: 37, scope: !1547)
!1564 = !DILocation(line: 212, column: 40, scope: !1547)
!1565 = !DILocation(line: 214, column: 13, scope: !1547)
!1566 = !DILocation(line: 214, column: 16, scope: !1547)
!1567 = !DILocation(line: 214, column: 2, scope: !1547)
!1568 = !DILocation(line: 215, column: 6, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 215, column: 6)
!1570 = !{i8 0, i8 2}
!1571 = !DILocation(line: 215, column: 6, scope: !1547)
!1572 = !DILocation(line: 216, column: 14, scope: !1569)
!1573 = !DILocation(line: 216, column: 3, scope: !1569)
!1574 = !DILocation(line: 217, column: 25, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 217, column: 6)
!1576 = !DILocation(line: 217, column: 7, scope: !1575)
!1577 = !DILocation(line: 217, column: 6, scope: !1547)
!1578 = !DILocation(line: 218, column: 7, scope: !1575)
!1579 = !DILocation(line: 218, column: 3, scope: !1575)
!1580 = !DILocation(line: 219, column: 15, scope: !1547)
!1581 = !DILocation(line: 219, column: 18, scope: !1547)
!1582 = !DILocation(line: 219, column: 2, scope: !1547)
!1583 = !DILocation(line: 220, column: 6, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 220, column: 6)
!1585 = !DILocation(line: 220, column: 6, scope: !1547)
!1586 = !DILocation(line: 221, column: 3, scope: !1584)
!1587 = !DILocation(line: 221, column: 7, scope: !1584)
!1588 = !DILocation(line: 222, column: 1, scope: !1547)
!1589 = distinct !DISubprogram(name: "klist_remove", scope: !3, file: !3, line: 238, type: !95, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1590)
!1590 = !{!1591, !1592, !1593, !1602}
!1591 = !DILocalVariable(name: "n", arg: 1, scope: !1589, file: !3, line: 238, type: !97)
!1592 = !DILocalVariable(name: "waiter", scope: !1589, file: !3, line: 240, type: !1239)
!1593 = !DILocalVariable(name: "__ai_ptr", scope: !1594, file: !3, line: 252, type: !1601)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 252, column: 3)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 252, column: 3)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 252, column: 3)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 252, column: 3)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 251, column: 11)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 251, column: 2)
!1600 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 251, column: 2)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1602 = !DILocalVariable(name: "__ret", scope: !1603, file: !3, line: 252, type: !7)
!1603 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 252, column: 3)
!1604 = !DILocation(line: 238, column: 38, scope: !1589)
!1605 = !DILocation(line: 240, column: 2, scope: !1589)
!1606 = !DILocation(line: 240, column: 22, scope: !1589)
!1607 = !DILocation(line: 242, column: 16, scope: !1589)
!1608 = !DILocation(line: 242, column: 9, scope: !1589)
!1609 = !DILocation(line: 242, column: 14, scope: !1589)
!1610 = !DILocation(line: 243, column: 19, scope: !1589)
!1611 = !DILocation(line: 243, column: 9, scope: !1589)
!1612 = !DILocation(line: 243, column: 17, scope: !1589)
!1613 = !DILocation(line: 244, column: 9, scope: !1589)
!1614 = !DILocation(line: 244, column: 15, scope: !1589)
!1615 = !DILocation(line: 245, column: 2, scope: !1589)
!1616 = !DILocation(line: 246, column: 19, scope: !1589)
!1617 = !DILocation(line: 246, column: 2, scope: !1589)
!1618 = !DILocation(line: 247, column: 2, scope: !1589)
!1619 = !DILocation(line: 249, column: 12, scope: !1589)
!1620 = !DILocation(line: 249, column: 2, scope: !1589)
!1621 = !DILocation(line: 251, column: 2, scope: !1589)
!1622 = !DILocation(line: 252, column: 3, scope: !1598)
!1623 = !DILocation(line: 252, column: 3, scope: !1597)
!1624 = !DILocation(line: 252, column: 3, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 252, column: 3)
!1626 = !DILocation(line: 252, column: 3, scope: !1596)
!1627 = !DILocation(line: 252, column: 3, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 252, column: 3)
!1629 = !DILocation(line: 252, column: 3, scope: !1594)
!1630 = !DILocation(line: 252, column: 3, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 252, column: 3)
!1632 = !DILocation(line: 252, column: 3, scope: !1603)
!1633 = !{i64 2150823816}
!1634 = !DILocation(line: 252, column: 3, scope: !1595)
!1635 = !DILocation(line: 253, column: 14, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 253, column: 7)
!1637 = !DILocation(line: 253, column: 7, scope: !1636)
!1638 = !DILocation(line: 253, column: 7, scope: !1598)
!1639 = !DILocation(line: 254, column: 4, scope: !1636)
!1640 = !DILocation(line: 255, column: 3, scope: !1598)
!1641 = !DILocation(line: 251, column: 2, scope: !1599)
!1642 = distinct !{!1642, !1643, !1644, !1645}
!1643 = !DILocation(line: 251, column: 2, scope: !1600)
!1644 = !DILocation(line: 256, column: 2, scope: !1600)
!1645 = !{!"llvm.loop.unroll.disable"}
!1646 = !DILocation(line: 257, column: 2, scope: !1589)
!1647 = !DILocation(line: 257, column: 2, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 257, column: 2)
!1649 = !DILocation(line: 257, column: 2, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 257, column: 2)
!1651 = !DILocation(line: 257, column: 2, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 257, column: 2)
!1653 = !DILocation(line: 257, column: 2, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 257, column: 2)
!1655 = !DILocation(line: 257, column: 2, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 257, column: 2)
!1657 = !DILocation(line: 258, column: 1, scope: !1589)
!1658 = distinct !DISubprogram(name: "get_current", scope: !1659, file: !1659, line: 39, type: !1660, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1662)
!1659 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!115}
!1662 = !{!1663, !1665, !1669}
!1663 = !DILocalVariable(name: "pscr_ret__", scope: !1664, file: !1659, line: 41, type: !115)
!1664 = distinct !DILexicalBlock(scope: !1658, file: !1659, line: 41, column: 9)
!1665 = !DILocalVariable(name: "__vpp_verify", scope: !1666, file: !1659, line: 41, type: !1667)
!1666 = distinct !DILexicalBlock(scope: !1664, file: !1659, line: 41, column: 9)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1669 = !DILocalVariable(name: "pfo_val__", scope: !1670, file: !1659, line: 41, type: !179)
!1670 = distinct !DILexicalBlock(scope: !1664, file: !1659, line: 41, column: 9)
!1671 = !DILocation(line: 41, column: 9, scope: !1664)
!1672 = !DILocation(line: 41, column: 9, scope: !1666)
!1673 = !DILocation(line: 41, column: 9, scope: !1670)
!1674 = !{i64 2148273478}
!1675 = !DILocation(line: 41, column: 9, scope: !1658)
!1676 = !DILocation(line: 41, column: 2, scope: !1658)
!1677 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !1678, file: !1678, line: 94, type: !1679, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1684)
!1678 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1679 = !DISubroutineType(types: !1680)
!1680 = !{null, !1681, !702}
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1683)
!1683 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1684 = !{!1685, !1686}
!1685 = !DILocalVariable(name: "v", arg: 1, scope: !1677, file: !1678, line: 94, type: !1681)
!1686 = !DILocalVariable(name: "size", arg: 2, scope: !1677, file: !1678, line: 94, type: !702)
!1687 = !DILocation(line: 94, column: 79, scope: !1677)
!1688 = !DILocation(line: 94, column: 89, scope: !1677)
!1689 = !DILocation(line: 96, column: 20, scope: !1677)
!1690 = !DILocation(line: 96, column: 23, scope: !1677)
!1691 = !DILocation(line: 96, column: 2, scope: !1677)
!1692 = !DILocation(line: 97, column: 2, scope: !1677)
!1693 = !DILocation(line: 98, column: 1, scope: !1677)
!1694 = !DISubprogram(name: "schedule", scope: !117, file: !117, line: 303, type: !1695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{null}
!1697 = distinct !DISubprogram(name: "klist_node_attached", scope: !3, file: !3, line: 265, type: !1698, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1700)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!44, !97}
!1700 = !{!1701}
!1701 = !DILocalVariable(name: "n", arg: 1, scope: !1697, file: !3, line: 265, type: !97)
!1702 = !DILocation(line: 265, column: 44, scope: !1697)
!1703 = !DILocation(line: 267, column: 10, scope: !1697)
!1704 = !DILocation(line: 267, column: 13, scope: !1697)
!1705 = !DILocation(line: 267, column: 21, scope: !1697)
!1706 = !DILocation(line: 267, column: 2, scope: !1697)
!1707 = distinct !DISubprogram(name: "klist_iter_init_node", scope: !3, file: !3, line: 280, type: !1708, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1715)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{null, !45, !1710, !97}
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_iter", file: !47, line: 54, size: 128, elements: !1712)
!1712 = !{!1713, !1714}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "i_klist", scope: !1711, file: !47, line: 55, baseType: !45, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "i_cur", scope: !1711, file: !47, line: 56, baseType: !97, size: 64, offset: 64)
!1715 = !{!1716, !1717, !1718}
!1716 = !DILocalVariable(name: "k", arg: 1, scope: !1707, file: !3, line: 280, type: !45)
!1717 = !DILocalVariable(name: "i", arg: 2, scope: !1707, file: !3, line: 280, type: !1710)
!1718 = !DILocalVariable(name: "n", arg: 3, scope: !1707, file: !3, line: 281, type: !97)
!1719 = !DILocation(line: 280, column: 41, scope: !1707)
!1720 = !DILocation(line: 280, column: 63, scope: !1707)
!1721 = !DILocation(line: 281, column: 25, scope: !1707)
!1722 = !DILocation(line: 283, column: 15, scope: !1707)
!1723 = !DILocation(line: 283, column: 2, scope: !1707)
!1724 = !DILocation(line: 283, column: 5, scope: !1707)
!1725 = !DILocation(line: 283, column: 13, scope: !1707)
!1726 = !DILocation(line: 284, column: 2, scope: !1707)
!1727 = !DILocation(line: 284, column: 5, scope: !1707)
!1728 = !DILocation(line: 284, column: 11, scope: !1707)
!1729 = !DILocation(line: 285, column: 6, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 285, column: 6)
!1731 = !DILocation(line: 285, column: 8, scope: !1730)
!1732 = !DILocation(line: 285, column: 33, scope: !1730)
!1733 = !DILocation(line: 285, column: 36, scope: !1730)
!1734 = !DILocation(line: 285, column: 11, scope: !1730)
!1735 = !DILocation(line: 285, column: 6, scope: !1707)
!1736 = !DILocation(line: 286, column: 14, scope: !1730)
!1737 = !DILocation(line: 286, column: 3, scope: !1730)
!1738 = !DILocation(line: 286, column: 6, scope: !1730)
!1739 = !DILocation(line: 286, column: 12, scope: !1730)
!1740 = !DILocation(line: 287, column: 1, scope: !1707)
!1741 = distinct !DISubprogram(name: "kref_get_unless_zero", scope: !104, file: !104, line: 109, type: !1742, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1745)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!44, !1744}
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1745 = !{!1746}
!1746 = !DILocalVariable(name: "kref", arg: 1, scope: !1741, file: !104, line: 109, type: !1744)
!1747 = !DILocation(line: 109, column: 66, scope: !1741)
!1748 = !DILocation(line: 111, column: 32, scope: !1741)
!1749 = !DILocation(line: 111, column: 38, scope: !1741)
!1750 = !DILocation(line: 111, column: 9, scope: !1741)
!1751 = !DILocation(line: 111, column: 2, scope: !1741)
!1752 = distinct !DISubprogram(name: "klist_iter_init", scope: !3, file: !3, line: 297, type: !1753, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1755)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{null, !45, !1710}
!1755 = !{!1756, !1757}
!1756 = !DILocalVariable(name: "k", arg: 1, scope: !1752, file: !3, line: 297, type: !45)
!1757 = !DILocalVariable(name: "i", arg: 2, scope: !1752, file: !3, line: 297, type: !1710)
!1758 = !DILocation(line: 297, column: 36, scope: !1752)
!1759 = !DILocation(line: 297, column: 58, scope: !1752)
!1760 = !DILocation(line: 299, column: 23, scope: !1752)
!1761 = !DILocation(line: 299, column: 26, scope: !1752)
!1762 = !DILocation(line: 299, column: 2, scope: !1752)
!1763 = !DILocation(line: 300, column: 1, scope: !1752)
!1764 = distinct !DISubprogram(name: "klist_iter_exit", scope: !3, file: !3, line: 311, type: !1765, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1767)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{null, !1710}
!1767 = !{!1768}
!1768 = !DILocalVariable(name: "i", arg: 1, scope: !1764, file: !3, line: 311, type: !1710)
!1769 = !DILocation(line: 311, column: 41, scope: !1764)
!1770 = !DILocation(line: 313, column: 6, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 313, column: 6)
!1772 = !DILocation(line: 313, column: 9, scope: !1771)
!1773 = !DILocation(line: 313, column: 6, scope: !1764)
!1774 = !DILocation(line: 314, column: 13, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 313, column: 16)
!1776 = !DILocation(line: 314, column: 16, scope: !1775)
!1777 = !DILocation(line: 314, column: 3, scope: !1775)
!1778 = !DILocation(line: 315, column: 3, scope: !1775)
!1779 = !DILocation(line: 315, column: 6, scope: !1775)
!1780 = !DILocation(line: 315, column: 12, scope: !1775)
!1781 = !DILocation(line: 316, column: 2, scope: !1775)
!1782 = !DILocation(line: 317, column: 1, scope: !1764)
!1783 = distinct !DISubprogram(name: "klist_prev", scope: !3, file: !3, line: 333, type: !1784, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1786)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!97, !1710}
!1786 = !{!1787, !1788, !1789, !1790, !1791, !1792, !1796}
!1787 = !DILocalVariable(name: "i", arg: 1, scope: !1783, file: !3, line: 333, type: !1710)
!1788 = !DILocalVariable(name: "put", scope: !1783, file: !3, line: 335, type: !94)
!1789 = !DILocalVariable(name: "last", scope: !1783, file: !3, line: 336, type: !97)
!1790 = !DILocalVariable(name: "prev", scope: !1783, file: !3, line: 337, type: !97)
!1791 = !DILocalVariable(name: "flags", scope: !1783, file: !3, line: 338, type: !112)
!1792 = !DILocalVariable(name: "__dummy", scope: !1793, file: !3, line: 340, type: !112)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 340, column: 2)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 340, column: 2)
!1795 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 340, column: 2)
!1796 = !DILocalVariable(name: "__dummy2", scope: !1793, file: !3, line: 340, type: !112)
!1797 = !DILocation(line: 333, column: 50, scope: !1783)
!1798 = !DILocation(line: 335, column: 2, scope: !1783)
!1799 = !DILocation(line: 335, column: 9, scope: !1783)
!1800 = !DILocation(line: 335, column: 37, scope: !1783)
!1801 = !DILocation(line: 335, column: 40, scope: !1783)
!1802 = !DILocation(line: 335, column: 49, scope: !1783)
!1803 = !DILocation(line: 336, column: 2, scope: !1783)
!1804 = !DILocation(line: 336, column: 21, scope: !1783)
!1805 = !DILocation(line: 336, column: 28, scope: !1783)
!1806 = !DILocation(line: 336, column: 31, scope: !1783)
!1807 = !DILocation(line: 337, column: 2, scope: !1783)
!1808 = !DILocation(line: 337, column: 21, scope: !1783)
!1809 = !DILocation(line: 338, column: 2, scope: !1783)
!1810 = !DILocation(line: 338, column: 16, scope: !1783)
!1811 = !DILocation(line: 340, column: 2, scope: !1783)
!1812 = !DILocation(line: 340, column: 2, scope: !1795)
!1813 = !DILocation(line: 340, column: 2, scope: !1793)
!1814 = !DILocation(line: 340, column: 2, scope: !1794)
!1815 = !DILocation(line: 342, column: 6, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 342, column: 6)
!1817 = !DILocation(line: 342, column: 6, scope: !1783)
!1818 = !DILocation(line: 343, column: 24, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 342, column: 12)
!1820 = !DILocation(line: 343, column: 30, scope: !1819)
!1821 = !DILocation(line: 343, column: 37, scope: !1819)
!1822 = !DILocation(line: 343, column: 10, scope: !1819)
!1823 = !DILocation(line: 343, column: 8, scope: !1819)
!1824 = !DILocation(line: 344, column: 26, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 344, column: 7)
!1826 = !DILocation(line: 344, column: 8, scope: !1825)
!1827 = !DILocation(line: 344, column: 7, scope: !1819)
!1828 = !DILocation(line: 345, column: 8, scope: !1825)
!1829 = !DILocation(line: 345, column: 4, scope: !1825)
!1830 = !DILocation(line: 346, column: 2, scope: !1819)
!1831 = !DILocation(line: 347, column: 24, scope: !1816)
!1832 = !DILocation(line: 347, column: 27, scope: !1816)
!1833 = !DILocation(line: 347, column: 36, scope: !1816)
!1834 = !DILocation(line: 347, column: 43, scope: !1816)
!1835 = !DILocation(line: 347, column: 10, scope: !1816)
!1836 = !DILocation(line: 347, column: 8, scope: !1816)
!1837 = !DILocation(line: 349, column: 2, scope: !1783)
!1838 = !DILocation(line: 349, column: 5, scope: !1783)
!1839 = !DILocation(line: 349, column: 11, scope: !1783)
!1840 = !DILocation(line: 350, column: 2, scope: !1783)
!1841 = !DILocation(line: 350, column: 9, scope: !1783)
!1842 = !DILocation(line: 350, column: 32, scope: !1783)
!1843 = !DILocation(line: 350, column: 35, scope: !1783)
!1844 = !DILocation(line: 350, column: 44, scope: !1783)
!1845 = !DILocation(line: 350, column: 17, scope: !1783)
!1846 = !DILocation(line: 350, column: 14, scope: !1783)
!1847 = !DILocation(line: 351, column: 7, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 351, column: 7)
!1849 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 350, column: 53)
!1850 = !DILocation(line: 351, column: 7, scope: !1849)
!1851 = !DILocation(line: 352, column: 14, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 351, column: 34)
!1853 = !DILocation(line: 352, column: 20, scope: !1852)
!1854 = !DILocation(line: 352, column: 4, scope: !1852)
!1855 = !DILocation(line: 353, column: 15, scope: !1852)
!1856 = !DILocation(line: 353, column: 4, scope: !1852)
!1857 = !DILocation(line: 353, column: 7, scope: !1852)
!1858 = !DILocation(line: 353, column: 13, scope: !1852)
!1859 = !DILocation(line: 354, column: 4, scope: !1852)
!1860 = !DILocation(line: 356, column: 24, scope: !1849)
!1861 = !DILocation(line: 356, column: 30, scope: !1849)
!1862 = !DILocation(line: 356, column: 37, scope: !1849)
!1863 = !DILocation(line: 356, column: 10, scope: !1849)
!1864 = !DILocation(line: 356, column: 8, scope: !1849)
!1865 = distinct !{!1865, !1840, !1866, !1867, !1645}
!1866 = !DILocation(line: 357, column: 2, scope: !1783)
!1867 = !{!"llvm.loop.mustprogress"}
!1868 = !DILocation(line: 359, column: 26, scope: !1783)
!1869 = !DILocation(line: 359, column: 29, scope: !1783)
!1870 = !DILocation(line: 359, column: 38, scope: !1783)
!1871 = !DILocation(line: 359, column: 46, scope: !1783)
!1872 = !DILocation(line: 359, column: 2, scope: !1783)
!1873 = !DILocation(line: 361, column: 6, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 361, column: 6)
!1875 = !DILocation(line: 361, column: 10, scope: !1874)
!1876 = !DILocation(line: 361, column: 13, scope: !1874)
!1877 = !DILocation(line: 361, column: 6, scope: !1783)
!1878 = !DILocation(line: 362, column: 3, scope: !1874)
!1879 = !DILocation(line: 362, column: 7, scope: !1874)
!1880 = !DILocation(line: 363, column: 9, scope: !1783)
!1881 = !DILocation(line: 363, column: 12, scope: !1783)
!1882 = !DILocation(line: 364, column: 1, scope: !1783)
!1883 = !DILocation(line: 363, column: 2, scope: !1783)
!1884 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !1885, file: !1885, line: 32, type: !1886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1885 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!112, !1337}
!1888 = distinct !DISubprogram(name: "to_klist_node", scope: !3, file: !3, line: 320, type: !1889, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1891)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!97, !36}
!1891 = !{!1892, !1893}
!1892 = !DILocalVariable(name: "n", arg: 1, scope: !1888, file: !3, line: 320, type: !36)
!1893 = !DILocalVariable(name: "__mptr", scope: !1894, file: !3, line: 322, type: !31)
!1894 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 322, column: 9)
!1895 = !DILocation(line: 320, column: 59, scope: !1888)
!1896 = !DILocation(line: 322, column: 9, scope: !1894)
!1897 = !DILocation(line: 322, column: 9, scope: !1888)
!1898 = !DILocation(line: 322, column: 2, scope: !1888)
!1899 = distinct !DISubprogram(name: "klist_dec_and_del", scope: !3, file: !3, line: 204, type: !1698, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1900)
!1900 = !{!1901}
!1901 = !DILocalVariable(name: "n", arg: 1, scope: !1899, file: !3, line: 204, type: !97)
!1902 = !DILocation(line: 204, column: 49, scope: !1899)
!1903 = !DILocation(line: 206, column: 19, scope: !1899)
!1904 = !DILocation(line: 206, column: 22, scope: !1899)
!1905 = !DILocation(line: 206, column: 9, scope: !1899)
!1906 = !DILocation(line: 206, column: 2, scope: !1899)
!1907 = distinct !DISubprogram(name: "knode_dead", scope: !3, file: !3, line: 53, type: !1908, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1910)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!737, !97}
!1910 = !{!1911}
!1911 = !DILocalVariable(name: "knode", arg: 1, scope: !1907, file: !3, line: 53, type: !97)
!1912 = !DILocation(line: 53, column: 43, scope: !1907)
!1913 = !DILocation(line: 55, column: 24, scope: !1907)
!1914 = !DILocation(line: 55, column: 31, scope: !1907)
!1915 = !DILocation(line: 55, column: 9, scope: !1907)
!1916 = !DILocation(line: 55, column: 39, scope: !1907)
!1917 = !DILocation(line: 55, column: 2, scope: !1907)
!1918 = distinct !DISubprogram(name: "kref_get", scope: !104, file: !104, line: 43, type: !1919, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1921)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{null, !1744}
!1921 = !{!1922}
!1922 = !DILocalVariable(name: "kref", arg: 1, scope: !1918, file: !104, line: 43, type: !1744)
!1923 = !DILocation(line: 43, column: 42, scope: !1918)
!1924 = !DILocation(line: 45, column: 16, scope: !1918)
!1925 = !DILocation(line: 45, column: 22, scope: !1918)
!1926 = !DILocation(line: 45, column: 2, scope: !1918)
!1927 = !DILocation(line: 46, column: 1, scope: !1918)
!1928 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !1334, file: !1334, line: 404, type: !1929, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1931)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null, !1338, !112}
!1931 = !{!1932, !1933, !1934, !1937}
!1932 = !DILocalVariable(name: "lock", arg: 1, scope: !1928, file: !1334, line: 404, type: !1338)
!1933 = !DILocalVariable(name: "flags", arg: 2, scope: !1928, file: !1334, line: 404, type: !112)
!1934 = !DILocalVariable(name: "__dummy", scope: !1935, file: !1334, line: 406, type: !112)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !1334, line: 406, column: 2)
!1936 = distinct !DILexicalBlock(scope: !1928, file: !1334, line: 406, column: 2)
!1937 = !DILocalVariable(name: "__dummy2", scope: !1935, file: !1334, line: 406, type: !112)
!1938 = !DILocation(line: 404, column: 64, scope: !1928)
!1939 = !DILocation(line: 404, column: 84, scope: !1928)
!1940 = !DILocation(line: 406, column: 2, scope: !1928)
!1941 = !DILocation(line: 406, column: 2, scope: !1935)
!1942 = !DILocation(line: 406, column: 2, scope: !1936)
!1943 = !DILocation(line: 407, column: 1, scope: !1928)
!1944 = distinct !DISubprogram(name: "klist_next", scope: !3, file: !3, line: 375, type: !1784, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1945)
!1945 = !{!1946, !1947, !1948, !1949, !1950, !1951, !1955}
!1946 = !DILocalVariable(name: "i", arg: 1, scope: !1944, file: !3, line: 375, type: !1710)
!1947 = !DILocalVariable(name: "put", scope: !1944, file: !3, line: 377, type: !94)
!1948 = !DILocalVariable(name: "last", scope: !1944, file: !3, line: 378, type: !97)
!1949 = !DILocalVariable(name: "next", scope: !1944, file: !3, line: 379, type: !97)
!1950 = !DILocalVariable(name: "flags", scope: !1944, file: !3, line: 380, type: !112)
!1951 = !DILocalVariable(name: "__dummy", scope: !1952, file: !3, line: 382, type: !112)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 382, column: 2)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 382, column: 2)
!1954 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 382, column: 2)
!1955 = !DILocalVariable(name: "__dummy2", scope: !1952, file: !3, line: 382, type: !112)
!1956 = !DILocation(line: 375, column: 50, scope: !1944)
!1957 = !DILocation(line: 377, column: 2, scope: !1944)
!1958 = !DILocation(line: 377, column: 9, scope: !1944)
!1959 = !DILocation(line: 377, column: 37, scope: !1944)
!1960 = !DILocation(line: 377, column: 40, scope: !1944)
!1961 = !DILocation(line: 377, column: 49, scope: !1944)
!1962 = !DILocation(line: 378, column: 2, scope: !1944)
!1963 = !DILocation(line: 378, column: 21, scope: !1944)
!1964 = !DILocation(line: 378, column: 28, scope: !1944)
!1965 = !DILocation(line: 378, column: 31, scope: !1944)
!1966 = !DILocation(line: 379, column: 2, scope: !1944)
!1967 = !DILocation(line: 379, column: 21, scope: !1944)
!1968 = !DILocation(line: 380, column: 2, scope: !1944)
!1969 = !DILocation(line: 380, column: 16, scope: !1944)
!1970 = !DILocation(line: 382, column: 2, scope: !1944)
!1971 = !DILocation(line: 382, column: 2, scope: !1954)
!1972 = !DILocation(line: 382, column: 2, scope: !1952)
!1973 = !DILocation(line: 382, column: 2, scope: !1953)
!1974 = !DILocation(line: 384, column: 6, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 384, column: 6)
!1976 = !DILocation(line: 384, column: 6, scope: !1944)
!1977 = !DILocation(line: 385, column: 24, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 384, column: 12)
!1979 = !DILocation(line: 385, column: 30, scope: !1978)
!1980 = !DILocation(line: 385, column: 37, scope: !1978)
!1981 = !DILocation(line: 385, column: 10, scope: !1978)
!1982 = !DILocation(line: 385, column: 8, scope: !1978)
!1983 = !DILocation(line: 386, column: 26, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 386, column: 7)
!1985 = !DILocation(line: 386, column: 8, scope: !1984)
!1986 = !DILocation(line: 386, column: 7, scope: !1978)
!1987 = !DILocation(line: 387, column: 8, scope: !1984)
!1988 = !DILocation(line: 387, column: 4, scope: !1984)
!1989 = !DILocation(line: 388, column: 2, scope: !1978)
!1990 = !DILocation(line: 389, column: 24, scope: !1975)
!1991 = !DILocation(line: 389, column: 27, scope: !1975)
!1992 = !DILocation(line: 389, column: 36, scope: !1975)
!1993 = !DILocation(line: 389, column: 43, scope: !1975)
!1994 = !DILocation(line: 389, column: 10, scope: !1975)
!1995 = !DILocation(line: 389, column: 8, scope: !1975)
!1996 = !DILocation(line: 391, column: 2, scope: !1944)
!1997 = !DILocation(line: 391, column: 5, scope: !1944)
!1998 = !DILocation(line: 391, column: 11, scope: !1944)
!1999 = !DILocation(line: 392, column: 2, scope: !1944)
!2000 = !DILocation(line: 392, column: 9, scope: !1944)
!2001 = !DILocation(line: 392, column: 32, scope: !1944)
!2002 = !DILocation(line: 392, column: 35, scope: !1944)
!2003 = !DILocation(line: 392, column: 44, scope: !1944)
!2004 = !DILocation(line: 392, column: 17, scope: !1944)
!2005 = !DILocation(line: 392, column: 14, scope: !1944)
!2006 = !DILocation(line: 393, column: 7, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 393, column: 7)
!2008 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 392, column: 53)
!2009 = !DILocation(line: 393, column: 7, scope: !2008)
!2010 = !DILocation(line: 394, column: 14, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 393, column: 34)
!2012 = !DILocation(line: 394, column: 20, scope: !2011)
!2013 = !DILocation(line: 394, column: 4, scope: !2011)
!2014 = !DILocation(line: 395, column: 15, scope: !2011)
!2015 = !DILocation(line: 395, column: 4, scope: !2011)
!2016 = !DILocation(line: 395, column: 7, scope: !2011)
!2017 = !DILocation(line: 395, column: 13, scope: !2011)
!2018 = !DILocation(line: 396, column: 4, scope: !2011)
!2019 = !DILocation(line: 398, column: 24, scope: !2008)
!2020 = !DILocation(line: 398, column: 30, scope: !2008)
!2021 = !DILocation(line: 398, column: 37, scope: !2008)
!2022 = !DILocation(line: 398, column: 10, scope: !2008)
!2023 = !DILocation(line: 398, column: 8, scope: !2008)
!2024 = distinct !{!2024, !1999, !2025, !1867, !1645}
!2025 = !DILocation(line: 399, column: 2, scope: !1944)
!2026 = !DILocation(line: 401, column: 26, scope: !1944)
!2027 = !DILocation(line: 401, column: 29, scope: !1944)
!2028 = !DILocation(line: 401, column: 38, scope: !1944)
!2029 = !DILocation(line: 401, column: 46, scope: !1944)
!2030 = !DILocation(line: 401, column: 2, scope: !1944)
!2031 = !DILocation(line: 403, column: 6, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 403, column: 6)
!2033 = !DILocation(line: 403, column: 10, scope: !2032)
!2034 = !DILocation(line: 403, column: 13, scope: !2032)
!2035 = !DILocation(line: 403, column: 6, scope: !1944)
!2036 = !DILocation(line: 404, column: 3, scope: !2032)
!2037 = !DILocation(line: 404, column: 7, scope: !2032)
!2038 = !DILocation(line: 405, column: 9, scope: !1944)
!2039 = !DILocation(line: 405, column: 12, scope: !1944)
!2040 = !DILocation(line: 406, column: 1, scope: !1944)
!2041 = !DILocation(line: 405, column: 2, scope: !1944)
!2042 = distinct !DISubprogram(name: "kref_init", scope: !104, file: !104, line: 29, type: !1919, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2043)
!2043 = !{!2044}
!2044 = !DILocalVariable(name: "kref", arg: 1, scope: !2042, file: !104, line: 29, type: !1744)
!2045 = !DILocation(line: 29, column: 43, scope: !2042)
!2046 = !DILocation(line: 31, column: 16, scope: !2042)
!2047 = !DILocation(line: 31, column: 22, scope: !2042)
!2048 = !DILocation(line: 31, column: 2, scope: !2042)
!2049 = !DILocation(line: 32, column: 1, scope: !2042)
!2050 = distinct !DISubprogram(name: "knode_set_klist", scope: !3, file: !3, line: 58, type: !1346, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2051)
!2051 = !{!2052, !2053, !2054, !2056}
!2052 = !DILocalVariable(name: "knode", arg: 1, scope: !2050, file: !3, line: 58, type: !97)
!2053 = !DILocalVariable(name: "klist", arg: 2, scope: !2050, file: !3, line: 58, type: !45)
!2054 = !DILocalVariable(name: "__ret_warn_on", scope: !2055, file: !3, line: 62, type: !44)
!2055 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 62, column: 2)
!2056 = !DILocalVariable(name: "__flags", scope: !2057, file: !3, line: 62, type: !44)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 62, column: 2)
!2058 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 62, column: 2)
!2059 = !DILocation(line: 58, column: 48, scope: !2050)
!2060 = !DILocation(line: 58, column: 69, scope: !2050)
!2061 = !DILocation(line: 60, column: 19, scope: !2050)
!2062 = !DILocation(line: 60, column: 2, scope: !2050)
!2063 = !DILocation(line: 60, column: 9, scope: !2050)
!2064 = !DILocation(line: 60, column: 17, scope: !2050)
!2065 = !DILocation(line: 62, column: 2, scope: !2055)
!2066 = !DILocation(line: 62, column: 2, scope: !2058)
!2067 = !DILocation(line: 62, column: 2, scope: !2057)
!2068 = !DILocation(line: 62, column: 2, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 62, column: 2)
!2070 = !DILocation(line: 62, column: 2, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 62, column: 2)
!2072 = !{i64 2150801063, i64 2150801092, i64 2150801138, i64 2150801196, i64 2150801250, i64 2150801304, i64 2150801359, i64 2150801390, i64 2150801698, i64 2150801704, i64 2150801751, i64 2150801774, i64 2150801800}
!2073 = !DILocation(line: 62, column: 2, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 62, column: 2)
!2075 = !DILocation(line: 62, column: 2, scope: !2050)
!2076 = !DILocation(line: 63, column: 1, scope: !2050)
!2077 = distinct !DISubprogram(name: "refcount_set", scope: !23, file: !23, line: 134, type: !2078, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2081)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !2080, !44}
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!2081 = !{!2082, !2083}
!2082 = !DILocalVariable(name: "r", arg: 1, scope: !2077, file: !23, line: 134, type: !2080)
!2083 = !DILocalVariable(name: "n", arg: 2, scope: !2077, file: !23, line: 134, type: !44)
!2084 = !DILocation(line: 134, column: 45, scope: !2077)
!2085 = !DILocation(line: 134, column: 52, scope: !2077)
!2086 = !DILocation(line: 136, column: 14, scope: !2077)
!2087 = !DILocation(line: 136, column: 17, scope: !2077)
!2088 = !DILocation(line: 136, column: 23, scope: !2077)
!2089 = !DILocation(line: 136, column: 2, scope: !2077)
!2090 = !DILocation(line: 137, column: 1, scope: !2077)
!2091 = distinct !DISubprogram(name: "atomic_set", scope: !2092, file: !2092, line: 65, type: !2093, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2096)
!2092 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!2093 = !DISubroutineType(types: !2094)
!2094 = !{null, !2095, !44}
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!2096 = !{!2097, !2098}
!2097 = !DILocalVariable(name: "v", arg: 1, scope: !2091, file: !2092, line: 65, type: !2095)
!2098 = !DILocalVariable(name: "i", arg: 2, scope: !2091, file: !2092, line: 65, type: !44)
!2099 = !DILocation(line: 65, column: 22, scope: !2091)
!2100 = !DILocation(line: 65, column: 29, scope: !2091)
!2101 = !DILocation(line: 67, column: 26, scope: !2091)
!2102 = !DILocation(line: 67, column: 2, scope: !2091)
!2103 = !DILocation(line: 68, column: 17, scope: !2091)
!2104 = !DILocation(line: 68, column: 20, scope: !2091)
!2105 = !DILocation(line: 68, column: 2, scope: !2091)
!2106 = !DILocation(line: 69, column: 1, scope: !2091)
!2107 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !1678, file: !1678, line: 80, type: !1679, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2108)
!2108 = !{!2109, !2110}
!2109 = !DILocalVariable(name: "v", arg: 1, scope: !2107, file: !1678, line: 80, type: !1681)
!2110 = !DILocalVariable(name: "size", arg: 2, scope: !2107, file: !1678, line: 80, type: !702)
!2111 = !DILocation(line: 80, column: 74, scope: !2107)
!2112 = !DILocation(line: 80, column: 84, scope: !2107)
!2113 = !DILocation(line: 82, column: 20, scope: !2107)
!2114 = !DILocation(line: 82, column: 23, scope: !2107)
!2115 = !DILocation(line: 82, column: 2, scope: !2107)
!2116 = !DILocation(line: 83, column: 2, scope: !2107)
!2117 = !DILocation(line: 84, column: 1, scope: !2107)
!2118 = distinct !DISubprogram(name: "raw_atomic_set", scope: !2119, file: !2119, line: 488, type: !2093, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2120)
!2119 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!2120 = !{!2121, !2122}
!2121 = !DILocalVariable(name: "v", arg: 1, scope: !2118, file: !2119, line: 488, type: !2095)
!2122 = !DILocalVariable(name: "i", arg: 2, scope: !2118, file: !2119, line: 488, type: !44)
!2123 = !DILocation(line: 488, column: 26, scope: !2118)
!2124 = !DILocation(line: 488, column: 33, scope: !2118)
!2125 = !DILocation(line: 490, column: 18, scope: !2118)
!2126 = !DILocation(line: 490, column: 21, scope: !2118)
!2127 = !DILocation(line: 490, column: 2, scope: !2118)
!2128 = !DILocation(line: 491, column: 1, scope: !2118)
!2129 = distinct !DISubprogram(name: "kasan_check_write", scope: !2130, file: !2130, line: 44, type: !2131, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2133)
!2130 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!737, !1681, !7}
!2133 = !{!2134, !2135}
!2134 = !DILocalVariable(name: "p", arg: 1, scope: !2129, file: !2130, line: 44, type: !1681)
!2135 = !DILocalVariable(name: "size", arg: 2, scope: !2129, file: !2130, line: 44, type: !7)
!2136 = !DILocation(line: 44, column: 59, scope: !2129)
!2137 = !DILocation(line: 44, column: 75, scope: !2129)
!2138 = !DILocation(line: 46, column: 2, scope: !2129)
!2139 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2140, file: !2140, line: 229, type: !2141, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2143)
!2140 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2141 = !DISubroutineType(types: !2142)
!2142 = !{null, !1681, !702, !44}
!2143 = !{!2144, !2145, !2146}
!2144 = !DILocalVariable(name: "ptr", arg: 1, scope: !2139, file: !2140, line: 229, type: !1681)
!2145 = !DILocalVariable(name: "size", arg: 2, scope: !2139, file: !2140, line: 229, type: !702)
!2146 = !DILocalVariable(name: "type", arg: 3, scope: !2139, file: !2140, line: 230, type: !44)
!2147 = !DILocation(line: 229, column: 60, scope: !2139)
!2148 = !DILocation(line: 229, column: 72, scope: !2139)
!2149 = !DILocation(line: 230, column: 15, scope: !2139)
!2150 = !DILocation(line: 230, column: 23, scope: !2139)
!2151 = distinct !DISubprogram(name: "arch_atomic_set", scope: !2152, file: !2152, line: 26, type: !2093, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2153)
!2152 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!2153 = !{!2154, !2155}
!2154 = !DILocalVariable(name: "v", arg: 1, scope: !2151, file: !2152, line: 26, type: !2095)
!2155 = !DILocalVariable(name: "i", arg: 2, scope: !2151, file: !2152, line: 26, type: !44)
!2156 = !DILocation(line: 26, column: 55, scope: !2151)
!2157 = !DILocation(line: 26, column: 62, scope: !2151)
!2158 = !DILocation(line: 28, column: 2, scope: !2151)
!2159 = !DILocation(line: 28, column: 2, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2151, file: !2152, line: 28, column: 2)
!2161 = !DILocation(line: 29, column: 1, scope: !2151)
!2162 = !DISubprogram(name: "_raw_spin_lock", scope: !1885, file: !1885, line: 22, type: !2163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{null, !1337}
!2165 = distinct !DISubprogram(name: "__list_add", scope: !1312, file: !1312, line: 146, type: !2166, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2168)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{null, !36, !36, !36}
!2168 = !{!2169, !2170, !2171}
!2169 = !DILocalVariable(name: "new", arg: 1, scope: !2165, file: !1312, line: 146, type: !36)
!2170 = !DILocalVariable(name: "prev", arg: 2, scope: !2165, file: !1312, line: 147, type: !36)
!2171 = !DILocalVariable(name: "next", arg: 3, scope: !2165, file: !1312, line: 148, type: !36)
!2172 = !DILocation(line: 146, column: 49, scope: !2165)
!2173 = !DILocation(line: 147, column: 28, scope: !2165)
!2174 = !DILocation(line: 148, column: 28, scope: !2165)
!2175 = !DILocation(line: 150, column: 24, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2165, file: !1312, line: 150, column: 6)
!2177 = !DILocation(line: 150, column: 29, scope: !2176)
!2178 = !DILocation(line: 150, column: 35, scope: !2176)
!2179 = !DILocation(line: 150, column: 7, scope: !2176)
!2180 = !DILocation(line: 150, column: 6, scope: !2165)
!2181 = !DILocation(line: 151, column: 3, scope: !2176)
!2182 = !DILocation(line: 153, column: 15, scope: !2165)
!2183 = !DILocation(line: 153, column: 2, scope: !2165)
!2184 = !DILocation(line: 153, column: 8, scope: !2165)
!2185 = !DILocation(line: 153, column: 13, scope: !2165)
!2186 = !DILocation(line: 154, column: 14, scope: !2165)
!2187 = !DILocation(line: 154, column: 2, scope: !2165)
!2188 = !DILocation(line: 154, column: 7, scope: !2165)
!2189 = !DILocation(line: 154, column: 12, scope: !2165)
!2190 = !DILocation(line: 155, column: 14, scope: !2165)
!2191 = !DILocation(line: 155, column: 2, scope: !2165)
!2192 = !DILocation(line: 155, column: 7, scope: !2165)
!2193 = !DILocation(line: 155, column: 12, scope: !2165)
!2194 = !DILocation(line: 156, column: 2, scope: !2165)
!2195 = !DILocation(line: 156, column: 2, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2165, file: !1312, line: 156, column: 2)
!2197 = !DILocation(line: 156, column: 2, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2196, file: !1312, line: 156, column: 2)
!2199 = !DILocation(line: 156, column: 2, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2196, file: !1312, line: 156, column: 2)
!2201 = !DILocation(line: 157, column: 1, scope: !2165)
!2202 = distinct !DISubprogram(name: "__list_add_valid", scope: !1312, file: !1312, line: 128, type: !2203, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2205)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!737, !36, !36, !36}
!2205 = !{!2206, !2207, !2208}
!2206 = !DILocalVariable(name: "new", arg: 1, scope: !2202, file: !1312, line: 128, type: !36)
!2207 = !DILocalVariable(name: "prev", arg: 2, scope: !2202, file: !1312, line: 129, type: !36)
!2208 = !DILocalVariable(name: "next", arg: 3, scope: !2202, file: !1312, line: 130, type: !36)
!2209 = !DILocation(line: 128, column: 55, scope: !2202)
!2210 = !DILocation(line: 129, column: 23, scope: !2202)
!2211 = !DILocation(line: 130, column: 23, scope: !2202)
!2212 = !DILocation(line: 132, column: 2, scope: !2202)
!2213 = !DISubprogram(name: "_raw_spin_unlock", scope: !1885, file: !1885, line: 39, type: !2163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2214 = distinct !DISubprogram(name: "knode_kill", scope: !3, file: !3, line: 65, type: !95, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2215)
!2215 = !{!2216, !2217, !2219}
!2216 = !DILocalVariable(name: "knode", arg: 1, scope: !2214, file: !3, line: 65, type: !97)
!2217 = !DILocalVariable(name: "__ret_warn_on", scope: !2218, file: !3, line: 68, type: !44)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 68, column: 2)
!2219 = !DILocalVariable(name: "__flags", scope: !2220, file: !3, line: 68, type: !44)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 68, column: 2)
!2221 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 68, column: 2)
!2222 = !DILocation(line: 65, column: 43, scope: !2214)
!2223 = !DILocation(line: 68, column: 2, scope: !2218)
!2224 = !DILocation(line: 68, column: 2, scope: !2221)
!2225 = !DILocation(line: 68, column: 2, scope: !2220)
!2226 = !DILocation(line: 68, column: 2, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 68, column: 2)
!2228 = !DILocation(line: 68, column: 2, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 68, column: 2)
!2230 = !{i64 2150802554, i64 2150802583, i64 2150802629, i64 2150802687, i64 2150802741, i64 2150802795, i64 2150802850, i64 2150802881, i64 2150803189, i64 2150803195, i64 2150803242, i64 2150803265, i64 2150803291}
!2231 = !DILocation(line: 68, column: 2, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 68, column: 2)
!2233 = !DILocation(line: 68, column: 2, scope: !2214)
!2234 = !DILocation(line: 69, column: 21, scope: !2214)
!2235 = !DILocation(line: 69, column: 28, scope: !2214)
!2236 = !DILocation(line: 69, column: 36, scope: !2214)
!2237 = !DILocation(line: 70, column: 1, scope: !2214)
!2238 = distinct !DISubprogram(name: "refcount_inc_not_zero", scope: !23, file: !23, line: 243, type: !2239, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!737, !2080}
!2241 = !{!2242}
!2242 = !DILocalVariable(name: "r", arg: 1, scope: !2238, file: !23, line: 243, type: !2080)
!2243 = !DILocation(line: 243, column: 67, scope: !2238)
!2244 = !DILocation(line: 245, column: 33, scope: !2238)
!2245 = !DILocation(line: 245, column: 9, scope: !2238)
!2246 = !DILocation(line: 245, column: 2, scope: !2238)
!2247 = distinct !DISubprogram(name: "__refcount_inc_not_zero", scope: !23, file: !23, line: 225, type: !2248, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2250)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!737, !2080, !584}
!2250 = !{!2251, !2252}
!2251 = !DILocalVariable(name: "r", arg: 1, scope: !2247, file: !23, line: 225, type: !2080)
!2252 = !DILocalVariable(name: "oldp", arg: 2, scope: !2247, file: !23, line: 225, type: !584)
!2253 = !DILocation(line: 225, column: 69, scope: !2247)
!2254 = !DILocation(line: 225, column: 77, scope: !2247)
!2255 = !DILocation(line: 227, column: 36, scope: !2247)
!2256 = !DILocation(line: 227, column: 39, scope: !2247)
!2257 = !DILocation(line: 227, column: 9, scope: !2247)
!2258 = !DILocation(line: 227, column: 2, scope: !2247)
!2259 = distinct !DISubprogram(name: "__refcount_add_not_zero", scope: !23, file: !23, line: 150, type: !2260, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2262)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!737, !44, !2080, !584}
!2262 = !{!2263, !2264, !2265, !2266}
!2263 = !DILocalVariable(name: "i", arg: 1, scope: !2259, file: !23, line: 150, type: !44)
!2264 = !DILocalVariable(name: "r", arg: 2, scope: !2259, file: !23, line: 150, type: !2080)
!2265 = !DILocalVariable(name: "oldp", arg: 3, scope: !2259, file: !23, line: 150, type: !584)
!2266 = !DILocalVariable(name: "old", scope: !2259, file: !23, line: 152, type: !44)
!2267 = !DILocation(line: 150, column: 61, scope: !2259)
!2268 = !DILocation(line: 150, column: 76, scope: !2259)
!2269 = !DILocation(line: 150, column: 84, scope: !2259)
!2270 = !DILocation(line: 152, column: 2, scope: !2259)
!2271 = !DILocation(line: 152, column: 6, scope: !2259)
!2272 = !DILocation(line: 152, column: 26, scope: !2259)
!2273 = !DILocation(line: 152, column: 12, scope: !2259)
!2274 = !DILocation(line: 154, column: 2, scope: !2259)
!2275 = !DILocation(line: 155, column: 8, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !23, line: 155, column: 7)
!2277 = distinct !DILexicalBlock(scope: !2259, file: !23, line: 154, column: 5)
!2278 = !DILocation(line: 155, column: 7, scope: !2277)
!2279 = !DILocation(line: 156, column: 4, scope: !2276)
!2280 = !DILocation(line: 157, column: 2, scope: !2277)
!2281 = !DILocation(line: 157, column: 40, scope: !2259)
!2282 = !DILocation(line: 157, column: 43, scope: !2259)
!2283 = !DILocation(line: 157, column: 55, scope: !2259)
!2284 = !DILocation(line: 157, column: 61, scope: !2259)
!2285 = !DILocation(line: 157, column: 59, scope: !2259)
!2286 = !DILocation(line: 157, column: 12, scope: !2259)
!2287 = !DILocation(line: 157, column: 11, scope: !2259)
!2288 = distinct !{!2288, !2274, !2289, !1867, !1645}
!2289 = !DILocation(line: 157, column: 63, scope: !2259)
!2290 = !DILocation(line: 159, column: 6, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2259, file: !23, line: 159, column: 6)
!2292 = !DILocation(line: 159, column: 6, scope: !2259)
!2293 = !DILocation(line: 160, column: 11, scope: !2291)
!2294 = !DILocation(line: 160, column: 4, scope: !2291)
!2295 = !DILocation(line: 160, column: 9, scope: !2291)
!2296 = !DILocation(line: 160, column: 3, scope: !2291)
!2297 = !DILocation(line: 162, column: 6, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2259, file: !23, line: 162, column: 6)
!2299 = !DILocation(line: 162, column: 6, scope: !2259)
!2300 = !DILocation(line: 163, column: 26, scope: !2298)
!2301 = !DILocation(line: 163, column: 3, scope: !2298)
!2302 = !DILocation(line: 165, column: 9, scope: !2259)
!2303 = !DILocation(line: 166, column: 1, scope: !2259)
!2304 = !DILocation(line: 165, column: 2, scope: !2259)
!2305 = distinct !DISubprogram(name: "refcount_read", scope: !23, file: !23, line: 145, type: !2306, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2310)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!7, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!2310 = !{!2311}
!2311 = !DILocalVariable(name: "r", arg: 1, scope: !2305, file: !23, line: 145, type: !2308)
!2312 = !DILocation(line: 145, column: 60, scope: !2305)
!2313 = !DILocation(line: 147, column: 22, scope: !2305)
!2314 = !DILocation(line: 147, column: 25, scope: !2305)
!2315 = !DILocation(line: 147, column: 9, scope: !2305)
!2316 = !DILocation(line: 147, column: 2, scope: !2305)
!2317 = distinct !DISubprogram(name: "atomic_try_cmpxchg_relaxed", scope: !2092, file: !2092, line: 1335, type: !2318, scopeLine: 1336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2320)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!737, !2095, !584, !44}
!2320 = !{!2321, !2322, !2323}
!2321 = !DILocalVariable(name: "v", arg: 1, scope: !2317, file: !2092, line: 1335, type: !2095)
!2322 = !DILocalVariable(name: "old", arg: 2, scope: !2317, file: !2092, line: 1335, type: !584)
!2323 = !DILocalVariable(name: "new", arg: 3, scope: !2317, file: !2092, line: 1335, type: !44)
!2324 = !DILocation(line: 1335, column: 38, scope: !2317)
!2325 = !DILocation(line: 1335, column: 46, scope: !2317)
!2326 = !DILocation(line: 1335, column: 55, scope: !2317)
!2327 = !DILocation(line: 1337, column: 31, scope: !2317)
!2328 = !DILocation(line: 1337, column: 2, scope: !2317)
!2329 = !DILocation(line: 1338, column: 31, scope: !2317)
!2330 = !DILocation(line: 1338, column: 2, scope: !2317)
!2331 = !DILocation(line: 1339, column: 40, scope: !2317)
!2332 = !DILocation(line: 1339, column: 43, scope: !2317)
!2333 = !DILocation(line: 1339, column: 48, scope: !2317)
!2334 = !DILocation(line: 1339, column: 9, scope: !2317)
!2335 = !DILocation(line: 1339, column: 2, scope: !2317)
!2336 = !DISubprogram(name: "refcount_warn_saturate", scope: !23, file: !23, line: 127, type: !2337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null, !2080, !22}
!2339 = distinct !DISubprogram(name: "atomic_read", scope: !2092, file: !2092, line: 30, type: !2340, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2344)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!44, !2342}
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!2344 = !{!2345}
!2345 = !DILocalVariable(name: "v", arg: 1, scope: !2339, file: !2092, line: 30, type: !2342)
!2346 = !DILocation(line: 30, column: 29, scope: !2339)
!2347 = !DILocation(line: 32, column: 25, scope: !2339)
!2348 = !DILocation(line: 32, column: 2, scope: !2339)
!2349 = !DILocation(line: 33, column: 25, scope: !2339)
!2350 = !DILocation(line: 33, column: 9, scope: !2339)
!2351 = !DILocation(line: 33, column: 2, scope: !2339)
!2352 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1678, file: !1678, line: 66, type: !1679, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2353)
!2353 = !{!2354, !2355}
!2354 = !DILocalVariable(name: "v", arg: 1, scope: !2352, file: !1678, line: 66, type: !1681)
!2355 = !DILocalVariable(name: "size", arg: 2, scope: !2352, file: !1678, line: 66, type: !702)
!2356 = !DILocation(line: 66, column: 73, scope: !2352)
!2357 = !DILocation(line: 66, column: 83, scope: !2352)
!2358 = !DILocation(line: 68, column: 19, scope: !2352)
!2359 = !DILocation(line: 68, column: 22, scope: !2352)
!2360 = !DILocation(line: 68, column: 2, scope: !2352)
!2361 = !DILocation(line: 69, column: 2, scope: !2352)
!2362 = !DILocation(line: 70, column: 1, scope: !2352)
!2363 = distinct !DISubprogram(name: "raw_atomic_read", scope: !2119, file: !2119, line: 442, type: !2340, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2364)
!2364 = !{!2365}
!2365 = !DILocalVariable(name: "v", arg: 1, scope: !2363, file: !2119, line: 442, type: !2342)
!2366 = !DILocation(line: 442, column: 33, scope: !2363)
!2367 = !DILocation(line: 444, column: 26, scope: !2363)
!2368 = !DILocation(line: 444, column: 9, scope: !2363)
!2369 = !DILocation(line: 444, column: 2, scope: !2363)
!2370 = distinct !DISubprogram(name: "kasan_check_read", scope: !2130, file: !2130, line: 40, type: !2131, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2371)
!2371 = !{!2372, !2373}
!2372 = !DILocalVariable(name: "p", arg: 1, scope: !2370, file: !2130, line: 40, type: !1681)
!2373 = !DILocalVariable(name: "size", arg: 2, scope: !2370, file: !2130, line: 40, type: !7)
!2374 = !DILocation(line: 40, column: 58, scope: !2370)
!2375 = !DILocation(line: 40, column: 74, scope: !2370)
!2376 = !DILocation(line: 42, column: 2, scope: !2370)
!2377 = distinct !DISubprogram(name: "arch_atomic_read", scope: !2152, file: !2152, line: 17, type: !2340, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2378)
!2378 = !{!2379}
!2379 = !DILocalVariable(name: "v", arg: 1, scope: !2377, file: !2152, line: 17, type: !2342)
!2380 = !DILocation(line: 17, column: 61, scope: !2377)
!2381 = !DILocation(line: 23, column: 9, scope: !2377)
!2382 = !DILocation(line: 23, column: 2, scope: !2377)
!2383 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_relaxed", scope: !2119, file: !2119, line: 2207, type: !2318, scopeLine: 2208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2384)
!2384 = !{!2385, !2386, !2387}
!2385 = !DILocalVariable(name: "v", arg: 1, scope: !2383, file: !2119, line: 2207, type: !2095)
!2386 = !DILocalVariable(name: "old", arg: 2, scope: !2383, file: !2119, line: 2207, type: !584)
!2387 = !DILocalVariable(name: "new", arg: 3, scope: !2383, file: !2119, line: 2207, type: !44)
!2388 = !DILocation(line: 2207, column: 42, scope: !2383)
!2389 = !DILocation(line: 2207, column: 50, scope: !2383)
!2390 = !DILocation(line: 2207, column: 59, scope: !2383)
!2391 = !DILocation(line: 2212, column: 33, scope: !2383)
!2392 = !DILocation(line: 2212, column: 36, scope: !2383)
!2393 = !DILocation(line: 2212, column: 41, scope: !2383)
!2394 = !DILocation(line: 2212, column: 9, scope: !2383)
!2395 = !DILocation(line: 2212, column: 2, scope: !2383)
!2396 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !2152, file: !2152, line: 113, type: !2318, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2397)
!2397 = !{!2398, !2399, !2400, !2401, !2403, !2404, !2405, !2406}
!2398 = !DILocalVariable(name: "v", arg: 1, scope: !2396, file: !2152, line: 113, type: !2095)
!2399 = !DILocalVariable(name: "old", arg: 2, scope: !2396, file: !2152, line: 113, type: !584)
!2400 = !DILocalVariable(name: "new", arg: 3, scope: !2396, file: !2152, line: 113, type: !44)
!2401 = !DILocalVariable(name: "success", scope: !2402, file: !2152, line: 115, type: !737)
!2402 = distinct !DILexicalBlock(scope: !2396, file: !2152, line: 115, column: 9)
!2403 = !DILocalVariable(name: "_old", scope: !2402, file: !2152, line: 115, type: !584)
!2404 = !DILocalVariable(name: "__old", scope: !2402, file: !2152, line: 115, type: !44)
!2405 = !DILocalVariable(name: "__new", scope: !2402, file: !2152, line: 115, type: !44)
!2406 = !DILocalVariable(name: "__ptr", scope: !2402, file: !2152, line: 115, type: !1236)
!2407 = !DILocation(line: 113, column: 63, scope: !2396)
!2408 = !DILocation(line: 113, column: 71, scope: !2396)
!2409 = !DILocation(line: 113, column: 80, scope: !2396)
!2410 = !DILocation(line: 115, column: 9, scope: !2402)
!2411 = !{i64 2148830312, i64 2148830351, i64 2148830372, i64 2148830409, i64 2148830432, i64 2148830441, i64 2148830739}
!2412 = !DILocation(line: 115, column: 9, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2402, file: !2152, line: 115, column: 9)
!2414 = !DILocation(line: 115, column: 9, scope: !2396)
!2415 = !DILocation(line: 115, column: 2, scope: !2396)
!2416 = distinct !DISubprogram(name: "kref_put", scope: !104, file: !104, line: 62, type: !2417, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2420)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!44, !1744, !2419}
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!2420 = !{!2421, !2422}
!2421 = !DILocalVariable(name: "kref", arg: 1, scope: !2416, file: !104, line: 62, type: !1744)
!2422 = !DILocalVariable(name: "release", arg: 2, scope: !2416, file: !104, line: 62, type: !2419)
!2423 = !DILocation(line: 62, column: 41, scope: !2416)
!2424 = !DILocation(line: 62, column: 54, scope: !2416)
!2425 = !DILocation(line: 64, column: 29, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2416, file: !104, line: 64, column: 6)
!2427 = !DILocation(line: 64, column: 35, scope: !2426)
!2428 = !DILocation(line: 64, column: 6, scope: !2426)
!2429 = !DILocation(line: 64, column: 6, scope: !2416)
!2430 = !DILocation(line: 65, column: 3, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2426, file: !104, line: 64, column: 46)
!2432 = !DILocation(line: 65, column: 11, scope: !2431)
!2433 = !DILocation(line: 66, column: 3, scope: !2431)
!2434 = !DILocation(line: 68, column: 2, scope: !2416)
!2435 = !DILocation(line: 69, column: 1, scope: !2416)
!2436 = distinct !DISubprogram(name: "klist_release", scope: !3, file: !3, line: 183, type: !1919, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2437)
!2437 = !{!2438, !2439, !2440, !2441, !2442, !2444, !2446, !2449, !2452, !2454}
!2438 = !DILocalVariable(name: "kref", arg: 1, scope: !2436, file: !3, line: 183, type: !1744)
!2439 = !DILocalVariable(name: "waiter", scope: !2436, file: !3, line: 185, type: !1238)
!2440 = !DILocalVariable(name: "tmp", scope: !2436, file: !3, line: 185, type: !1238)
!2441 = !DILocalVariable(name: "n", scope: !2436, file: !3, line: 186, type: !97)
!2442 = !DILocalVariable(name: "__mptr", scope: !2443, file: !3, line: 186, type: !31)
!2443 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 186, column: 25)
!2444 = !DILocalVariable(name: "__ret_warn_on", scope: !2445, file: !3, line: 188, type: !44)
!2445 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 188, column: 2)
!2446 = !DILocalVariable(name: "__flags", scope: !2447, file: !3, line: 188, type: !44)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 188, column: 2)
!2448 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 188, column: 2)
!2449 = !DILocalVariable(name: "__mptr", scope: !2450, file: !3, line: 191, type: !31)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 191, column: 2)
!2451 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 191, column: 2)
!2452 = !DILocalVariable(name: "__mptr", scope: !2453, file: !3, line: 191, type: !31)
!2453 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 191, column: 2)
!2454 = !DILocalVariable(name: "__mptr", scope: !2455, file: !3, line: 191, type: !31)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 191, column: 2)
!2456 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 191, column: 2)
!2457 = !DILocation(line: 183, column: 40, scope: !2436)
!2458 = !DILocation(line: 185, column: 2, scope: !2436)
!2459 = !DILocation(line: 185, column: 23, scope: !2436)
!2460 = !DILocation(line: 185, column: 32, scope: !2436)
!2461 = !DILocation(line: 186, column: 2, scope: !2436)
!2462 = !DILocation(line: 186, column: 21, scope: !2436)
!2463 = !DILocation(line: 186, column: 25, scope: !2443)
!2464 = !DILocation(line: 186, column: 25, scope: !2436)
!2465 = !DILocation(line: 188, column: 2, scope: !2445)
!2466 = !DILocation(line: 188, column: 2, scope: !2448)
!2467 = !DILocation(line: 188, column: 2, scope: !2447)
!2468 = !DILocation(line: 188, column: 2, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 188, column: 2)
!2470 = !DILocation(line: 188, column: 2, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 188, column: 2)
!2472 = !{i64 2150814697, i64 2150814726, i64 2150814772, i64 2150814830, i64 2150814884, i64 2150814938, i64 2150814993, i64 2150815024, i64 2150815332, i64 2150815338, i64 2150815385, i64 2150815408, i64 2150815434}
!2473 = !DILocation(line: 188, column: 2, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 188, column: 2)
!2475 = !DILocation(line: 188, column: 2, scope: !2436)
!2476 = !DILocation(line: 189, column: 12, scope: !2436)
!2477 = !DILocation(line: 189, column: 15, scope: !2436)
!2478 = !DILocation(line: 189, column: 2, scope: !2436)
!2479 = !DILocation(line: 190, column: 2, scope: !2436)
!2480 = !DILocation(line: 191, column: 2, scope: !2450)
!2481 = !DILocation(line: 191, column: 2, scope: !2451)
!2482 = !DILocation(line: 191, column: 2, scope: !2453)
!2483 = !DILocation(line: 191, column: 2, scope: !2456)
!2484 = !DILocation(line: 192, column: 7, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 192, column: 7)
!2486 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 191, column: 69)
!2487 = !DILocation(line: 192, column: 15, scope: !2485)
!2488 = !DILocation(line: 192, column: 23, scope: !2485)
!2489 = !DILocation(line: 192, column: 20, scope: !2485)
!2490 = !DILocation(line: 192, column: 7, scope: !2486)
!2491 = !DILocation(line: 193, column: 4, scope: !2485)
!2492 = !DILocation(line: 195, column: 13, scope: !2486)
!2493 = !DILocation(line: 195, column: 21, scope: !2486)
!2494 = !DILocation(line: 195, column: 3, scope: !2486)
!2495 = !DILocation(line: 196, column: 3, scope: !2486)
!2496 = !DILocation(line: 196, column: 11, scope: !2486)
!2497 = !DILocation(line: 196, column: 17, scope: !2486)
!2498 = !DILocation(line: 197, column: 3, scope: !2486)
!2499 = !DILocation(line: 197, column: 3, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 197, column: 3)
!2501 = !DILocation(line: 197, column: 3, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 197, column: 3)
!2503 = !{i64 2150820569}
!2504 = !DILocation(line: 198, column: 19, scope: !2486)
!2505 = !DILocation(line: 198, column: 27, scope: !2486)
!2506 = !DILocation(line: 198, column: 3, scope: !2486)
!2507 = !DILocation(line: 199, column: 2, scope: !2486)
!2508 = !DILocation(line: 191, column: 2, scope: !2455)
!2509 = distinct !{!2509, !2481, !2510, !1867, !1645}
!2510 = !DILocation(line: 199, column: 2, scope: !2451)
!2511 = !DILocation(line: 200, column: 2, scope: !2436)
!2512 = !DILocation(line: 201, column: 18, scope: !2436)
!2513 = !DILocation(line: 201, column: 2, scope: !2436)
!2514 = !DILocation(line: 202, column: 1, scope: !2436)
!2515 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !23, file: !23, line: 331, type: !2239, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2516)
!2516 = !{!2517}
!2517 = !DILocalVariable(name: "r", arg: 1, scope: !2515, file: !23, line: 331, type: !2080)
!2518 = !DILocation(line: 331, column: 67, scope: !2515)
!2519 = !DILocation(line: 333, column: 33, scope: !2515)
!2520 = !DILocation(line: 333, column: 9, scope: !2515)
!2521 = !DILocation(line: 333, column: 2, scope: !2515)
!2522 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !23, file: !23, line: 313, type: !2248, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2523)
!2523 = !{!2524, !2525}
!2524 = !DILocalVariable(name: "r", arg: 1, scope: !2522, file: !23, line: 313, type: !2080)
!2525 = !DILocalVariable(name: "oldp", arg: 2, scope: !2522, file: !23, line: 313, type: !584)
!2526 = !DILocation(line: 313, column: 69, scope: !2522)
!2527 = !DILocation(line: 313, column: 77, scope: !2522)
!2528 = !DILocation(line: 315, column: 36, scope: !2522)
!2529 = !DILocation(line: 315, column: 39, scope: !2522)
!2530 = !DILocation(line: 315, column: 9, scope: !2522)
!2531 = !DILocation(line: 315, column: 2, scope: !2522)
!2532 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !23, file: !23, line: 270, type: !2260, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2533)
!2533 = !{!2534, !2535, !2536, !2537}
!2534 = !DILocalVariable(name: "i", arg: 1, scope: !2532, file: !23, line: 270, type: !44)
!2535 = !DILocalVariable(name: "r", arg: 2, scope: !2532, file: !23, line: 270, type: !2080)
!2536 = !DILocalVariable(name: "oldp", arg: 3, scope: !2532, file: !23, line: 270, type: !584)
!2537 = !DILocalVariable(name: "old", scope: !2532, file: !23, line: 272, type: !44)
!2538 = !DILocation(line: 270, column: 61, scope: !2532)
!2539 = !DILocation(line: 270, column: 76, scope: !2532)
!2540 = !DILocation(line: 270, column: 84, scope: !2532)
!2541 = !DILocation(line: 272, column: 2, scope: !2532)
!2542 = !DILocation(line: 272, column: 6, scope: !2532)
!2543 = !DILocation(line: 272, column: 37, scope: !2532)
!2544 = !DILocation(line: 272, column: 41, scope: !2532)
!2545 = !DILocation(line: 272, column: 44, scope: !2532)
!2546 = !DILocation(line: 272, column: 12, scope: !2532)
!2547 = !DILocation(line: 274, column: 6, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2532, file: !23, line: 274, column: 6)
!2549 = !DILocation(line: 274, column: 6, scope: !2532)
!2550 = !DILocation(line: 275, column: 11, scope: !2548)
!2551 = !DILocation(line: 275, column: 4, scope: !2548)
!2552 = !DILocation(line: 275, column: 9, scope: !2548)
!2553 = !DILocation(line: 275, column: 3, scope: !2548)
!2554 = !DILocation(line: 277, column: 6, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2532, file: !23, line: 277, column: 6)
!2556 = !DILocation(line: 277, column: 13, scope: !2555)
!2557 = !DILocation(line: 277, column: 10, scope: !2555)
!2558 = !DILocation(line: 277, column: 6, scope: !2532)
!2559 = !DILocation(line: 278, column: 3, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2555, file: !23, line: 277, column: 16)
!2561 = !DILocation(line: 278, column: 3, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2560, file: !23, line: 278, column: 3)
!2563 = !DILocation(line: 278, column: 3, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2562, file: !23, line: 278, column: 3)
!2565 = !DILocation(line: 278, column: 3, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2562, file: !23, line: 278, column: 3)
!2567 = !DILocation(line: 278, column: 3, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2566, file: !23, line: 278, column: 3)
!2569 = !{i64 2149762990}
!2570 = !DILocation(line: 279, column: 3, scope: !2560)
!2571 = !DILocation(line: 282, column: 6, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2532, file: !23, line: 282, column: 6)
!2573 = !DILocation(line: 282, column: 6, scope: !2532)
!2574 = !DILocation(line: 283, column: 26, scope: !2572)
!2575 = !DILocation(line: 283, column: 3, scope: !2572)
!2576 = !DILocation(line: 285, column: 2, scope: !2532)
!2577 = !DILocation(line: 286, column: 1, scope: !2532)
!2578 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !2092, file: !2092, line: 397, type: !2579, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2581)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!44, !44, !2095}
!2581 = !{!2582, !2583}
!2582 = !DILocalVariable(name: "i", arg: 1, scope: !2578, file: !2092, line: 397, type: !44)
!2583 = !DILocalVariable(name: "v", arg: 2, scope: !2578, file: !2092, line: 397, type: !2095)
!2584 = !DILocation(line: 397, column: 30, scope: !2578)
!2585 = !DILocation(line: 397, column: 43, scope: !2578)
!2586 = !DILocation(line: 399, column: 2, scope: !2578)
!2587 = !DILocation(line: 399, column: 2, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2578, file: !2092, line: 399, column: 2)
!2589 = !DILocation(line: 400, column: 31, scope: !2578)
!2590 = !DILocation(line: 400, column: 2, scope: !2578)
!2591 = !DILocation(line: 401, column: 38, scope: !2578)
!2592 = !DILocation(line: 401, column: 41, scope: !2578)
!2593 = !DILocation(line: 401, column: 9, scope: !2578)
!2594 = !DILocation(line: 401, column: 2, scope: !2578)
!2595 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !2119, file: !2119, line: 928, type: !2579, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2596)
!2596 = !{!2597, !2598}
!2597 = !DILocalVariable(name: "i", arg: 1, scope: !2595, file: !2119, line: 928, type: !44)
!2598 = !DILocalVariable(name: "v", arg: 2, scope: !2595, file: !2119, line: 928, type: !2095)
!2599 = !DILocation(line: 928, column: 34, scope: !2595)
!2600 = !DILocation(line: 928, column: 47, scope: !2595)
!2601 = !DILocation(line: 936, column: 31, scope: !2595)
!2602 = !DILocation(line: 936, column: 34, scope: !2595)
!2603 = !DILocation(line: 936, column: 9, scope: !2595)
!2604 = !DILocation(line: 936, column: 2, scope: !2595)
!2605 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !2152, file: !2152, line: 101, type: !2579, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2606)
!2606 = !{!2607, !2608, !2609}
!2607 = !DILocalVariable(name: "i", arg: 1, scope: !2605, file: !2152, line: 101, type: !44)
!2608 = !DILocalVariable(name: "v", arg: 2, scope: !2605, file: !2152, line: 101, type: !2095)
!2609 = !DILocalVariable(name: "__ret", scope: !2610, file: !2152, line: 103, type: !44)
!2610 = distinct !DILexicalBlock(scope: !2605, file: !2152, line: 103, column: 9)
!2611 = !DILocation(line: 101, column: 54, scope: !2605)
!2612 = !DILocation(line: 101, column: 67, scope: !2605)
!2613 = !DILocation(line: 103, column: 9, scope: !2610)
!2614 = !{i64 2148824605, i64 2148824644, i64 2148824665, i64 2148824702, i64 2148824725, i64 2148824734}
!2615 = !DILocation(line: 103, column: 9, scope: !2605)
!2616 = !DILocation(line: 103, column: 2, scope: !2605)
!2617 = distinct !DISubprogram(name: "list_del", scope: !1312, file: !1312, line: 227, type: !1313, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2618)
!2618 = !{!2619}
!2619 = !DILocalVariable(name: "entry", arg: 1, scope: !2617, file: !1312, line: 227, type: !36)
!2620 = !DILocation(line: 227, column: 47, scope: !2617)
!2621 = !DILocation(line: 229, column: 19, scope: !2617)
!2622 = !DILocation(line: 229, column: 2, scope: !2617)
!2623 = !DILocation(line: 230, column: 2, scope: !2617)
!2624 = !DILocation(line: 230, column: 9, scope: !2617)
!2625 = !DILocation(line: 230, column: 14, scope: !2617)
!2626 = !DILocation(line: 231, column: 2, scope: !2617)
!2627 = !DILocation(line: 231, column: 9, scope: !2617)
!2628 = !DILocation(line: 231, column: 14, scope: !2617)
!2629 = !DILocation(line: 232, column: 1, scope: !2617)
!2630 = !DISubprogram(name: "wake_up_process", scope: !117, file: !117, line: 1998, type: !2631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!44, !115}
!2633 = distinct !DISubprogram(name: "__list_del_entry", scope: !1312, file: !1312, line: 213, type: !1313, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2634)
!2634 = !{!2635}
!2635 = !DILocalVariable(name: "entry", arg: 1, scope: !2633, file: !1312, line: 213, type: !36)
!2636 = !DILocation(line: 213, column: 55, scope: !2633)
!2637 = !DILocation(line: 215, column: 30, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2633, file: !1312, line: 215, column: 6)
!2639 = !DILocation(line: 215, column: 7, scope: !2638)
!2640 = !DILocation(line: 215, column: 6, scope: !2633)
!2641 = !DILocation(line: 216, column: 3, scope: !2638)
!2642 = !DILocation(line: 218, column: 13, scope: !2633)
!2643 = !DILocation(line: 218, column: 20, scope: !2633)
!2644 = !DILocation(line: 218, column: 26, scope: !2633)
!2645 = !DILocation(line: 218, column: 33, scope: !2633)
!2646 = !DILocation(line: 218, column: 2, scope: !2633)
!2647 = !DILocation(line: 219, column: 1, scope: !2633)
!2648 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !1312, file: !1312, line: 134, type: !2649, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2651)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!737, !36}
!2651 = !{!2652}
!2652 = !DILocalVariable(name: "entry", arg: 1, scope: !2648, file: !1312, line: 134, type: !36)
!2653 = !DILocation(line: 134, column: 61, scope: !2648)
!2654 = !DILocation(line: 136, column: 2, scope: !2648)
!2655 = distinct !DISubprogram(name: "__list_del", scope: !1312, file: !1312, line: 193, type: !1483, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2656)
!2656 = !{!2657, !2658}
!2657 = !DILocalVariable(name: "prev", arg: 1, scope: !2655, file: !1312, line: 193, type: !36)
!2658 = !DILocalVariable(name: "next", arg: 2, scope: !2655, file: !1312, line: 193, type: !36)
!2659 = !DILocation(line: 193, column: 50, scope: !2655)
!2660 = !DILocation(line: 193, column: 75, scope: !2655)
!2661 = !DILocation(line: 195, column: 15, scope: !2655)
!2662 = !DILocation(line: 195, column: 2, scope: !2655)
!2663 = !DILocation(line: 195, column: 8, scope: !2655)
!2664 = !DILocation(line: 195, column: 13, scope: !2655)
!2665 = !DILocation(line: 196, column: 2, scope: !2655)
!2666 = !DILocation(line: 196, column: 2, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2655, file: !1312, line: 196, column: 2)
!2668 = !DILocation(line: 196, column: 2, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2667, file: !1312, line: 196, column: 2)
!2670 = !DILocation(line: 196, column: 2, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2667, file: !1312, line: 196, column: 2)
!2672 = !DILocation(line: 197, column: 1, scope: !2655)
!2673 = distinct !DISubprogram(name: "refcount_inc", scope: !23, file: !23, line: 265, type: !2674, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2676)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{null, !2080}
!2676 = !{!2677}
!2677 = !DILocalVariable(name: "r", arg: 1, scope: !2673, file: !23, line: 265, type: !2080)
!2678 = !DILocation(line: 265, column: 45, scope: !2673)
!2679 = !DILocation(line: 267, column: 17, scope: !2673)
!2680 = !DILocation(line: 267, column: 2, scope: !2673)
!2681 = !DILocation(line: 268, column: 1, scope: !2673)
!2682 = distinct !DISubprogram(name: "__refcount_inc", scope: !23, file: !23, line: 248, type: !2683, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2685)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{null, !2080, !584}
!2685 = !{!2686, !2687}
!2686 = !DILocalVariable(name: "r", arg: 1, scope: !2682, file: !23, line: 248, type: !2080)
!2687 = !DILocalVariable(name: "oldp", arg: 2, scope: !2682, file: !23, line: 248, type: !584)
!2688 = !DILocation(line: 248, column: 47, scope: !2682)
!2689 = !DILocation(line: 248, column: 55, scope: !2682)
!2690 = !DILocation(line: 250, column: 20, scope: !2682)
!2691 = !DILocation(line: 250, column: 23, scope: !2682)
!2692 = !DILocation(line: 250, column: 2, scope: !2682)
!2693 = !DILocation(line: 251, column: 1, scope: !2682)
!2694 = distinct !DISubprogram(name: "__refcount_add", scope: !23, file: !23, line: 191, type: !2695, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2697)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{null, !44, !2080, !584}
!2697 = !{!2698, !2699, !2700, !2701}
!2698 = !DILocalVariable(name: "i", arg: 1, scope: !2694, file: !23, line: 191, type: !44)
!2699 = !DILocalVariable(name: "r", arg: 2, scope: !2694, file: !23, line: 191, type: !2080)
!2700 = !DILocalVariable(name: "oldp", arg: 3, scope: !2694, file: !23, line: 191, type: !584)
!2701 = !DILocalVariable(name: "old", scope: !2694, file: !23, line: 193, type: !44)
!2702 = !DILocation(line: 191, column: 39, scope: !2694)
!2703 = !DILocation(line: 191, column: 54, scope: !2694)
!2704 = !DILocation(line: 191, column: 62, scope: !2694)
!2705 = !DILocation(line: 193, column: 2, scope: !2694)
!2706 = !DILocation(line: 193, column: 6, scope: !2694)
!2707 = !DILocation(line: 193, column: 37, scope: !2694)
!2708 = !DILocation(line: 193, column: 41, scope: !2694)
!2709 = !DILocation(line: 193, column: 44, scope: !2694)
!2710 = !DILocation(line: 193, column: 12, scope: !2694)
!2711 = !DILocation(line: 195, column: 6, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2694, file: !23, line: 195, column: 6)
!2713 = !DILocation(line: 195, column: 6, scope: !2694)
!2714 = !DILocation(line: 196, column: 11, scope: !2712)
!2715 = !DILocation(line: 196, column: 4, scope: !2712)
!2716 = !DILocation(line: 196, column: 9, scope: !2712)
!2717 = !DILocation(line: 196, column: 3, scope: !2712)
!2718 = !DILocation(line: 198, column: 6, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2694, file: !23, line: 198, column: 6)
!2720 = !DILocation(line: 198, column: 6, scope: !2694)
!2721 = !DILocation(line: 199, column: 26, scope: !2719)
!2722 = !DILocation(line: 199, column: 3, scope: !2719)
!2723 = !DILocation(line: 200, column: 11, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2719, file: !23, line: 200, column: 11)
!2725 = !DILocation(line: 200, column: 11, scope: !2719)
!2726 = !DILocation(line: 201, column: 26, scope: !2724)
!2727 = !DILocation(line: 201, column: 3, scope: !2724)
!2728 = !DILocation(line: 202, column: 1, scope: !2694)
!2729 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !2092, file: !2092, line: 250, type: !2579, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2730)
!2730 = !{!2731, !2732}
!2731 = !DILocalVariable(name: "i", arg: 1, scope: !2729, file: !2092, line: 250, type: !44)
!2732 = !DILocalVariable(name: "v", arg: 2, scope: !2729, file: !2092, line: 250, type: !2095)
!2733 = !DILocation(line: 250, column: 30, scope: !2729)
!2734 = !DILocation(line: 250, column: 43, scope: !2729)
!2735 = !DILocation(line: 252, column: 31, scope: !2729)
!2736 = !DILocation(line: 252, column: 2, scope: !2729)
!2737 = !DILocation(line: 253, column: 38, scope: !2729)
!2738 = !DILocation(line: 253, column: 41, scope: !2729)
!2739 = !DILocation(line: 253, column: 9, scope: !2729)
!2740 = !DILocation(line: 253, column: 2, scope: !2729)
!2741 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !2119, file: !2119, line: 731, type: !2579, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2742)
!2742 = !{!2743, !2744}
!2743 = !DILocalVariable(name: "i", arg: 1, scope: !2741, file: !2119, line: 731, type: !44)
!2744 = !DILocalVariable(name: "v", arg: 2, scope: !2741, file: !2119, line: 731, type: !2095)
!2745 = !DILocation(line: 731, column: 34, scope: !2741)
!2746 = !DILocation(line: 731, column: 47, scope: !2741)
!2747 = !DILocation(line: 736, column: 31, scope: !2741)
!2748 = !DILocation(line: 736, column: 34, scope: !2741)
!2749 = !DILocation(line: 736, column: 9, scope: !2741)
!2750 = !DILocation(line: 736, column: 2, scope: !2741)
!2751 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !2152, file: !2152, line: 95, type: !2579, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2752)
!2752 = !{!2753, !2754, !2755}
!2753 = !DILocalVariable(name: "i", arg: 1, scope: !2751, file: !2152, line: 95, type: !44)
!2754 = !DILocalVariable(name: "v", arg: 2, scope: !2751, file: !2152, line: 95, type: !2095)
!2755 = !DILocalVariable(name: "__ret", scope: !2756, file: !2152, line: 97, type: !44)
!2756 = distinct !DILexicalBlock(scope: !2751, file: !2152, line: 97, column: 9)
!2757 = !DILocation(line: 95, column: 54, scope: !2751)
!2758 = !DILocation(line: 95, column: 67, scope: !2751)
!2759 = !DILocation(line: 97, column: 9, scope: !2756)
!2760 = !{i64 2148822420, i64 2148822459, i64 2148822480, i64 2148822517, i64 2148822540, i64 2148822549}
!2761 = !DILocation(line: 97, column: 9, scope: !2751)
!2762 = !DILocation(line: 97, column: 2, scope: !2751)
!2763 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !1885, file: !1885, line: 43, type: !2764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{null, !1337, !112}
