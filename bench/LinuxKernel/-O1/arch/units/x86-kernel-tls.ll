; ModuleID = 'arch/x86/kernel/tls.c'
source_filename = "arch/x86/kernel/tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_hot = type { %union.anon.21 }
%union.anon.21 = type { %struct.anon.22, [16 x i8] }
%struct.anon.22 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.23 }
%union.anon.23 = type { i64 }
%struct.gdt_page = type { [16 x %struct.desc_struct], [3968 x i8] }
%struct.desc_struct = type { i16, i16, i32 }
%struct.cpuinfo_x86 = type { %union.anon.24, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.26, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.24 = type { i32 }
%union.anon.26 = type { i64, [88 x i8] }
%struct.user_desc = type { i32, i32, i32, i8 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.8, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.8 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.10 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x ptr], i64, i64, i64, i64, i64, ptr, i64, i8, i32, [40 x i8], %struct.fpu }
%struct.fpu = type { i32, i64, ptr, ptr, %struct.fpu_state_perm, %struct.fpu_state_perm, %struct.fpstate }
%struct.fpu_state_perm = type { i64, i32, i32 }
%struct.fpstate = type { i32, i32, i64, i64, i64, i8, [31 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.15, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.18 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { i64, i64 }
%union.anon.18 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.19, i64, i64, %union.anon.20 }
%union.anon.19 = type { i64 }
%union.anon.20 = type { i64 }
%struct.membuf = type { ptr, i64 }

@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !7
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@set_tls_desc.__UNIQUE_ID___addressable___SCK__preempt_schedule318 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !13
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@gdt_page = external dso_local global %struct.gdt_page, section ".data..percpu..page_aligned", align 4096
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @set_tls_desc.__UNIQUE_ID___addressable___SCK__preempt_schedule318], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @do_set_thread_area(ptr noundef %p, i32 noundef %idx, ptr noundef %u_info, i32 noundef %can_allocate) #0 align 16 !dbg !5847 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %u_info.addr = alloca ptr, align 8
  %can_allocate.addr = alloca i32, align 4
  %info = alloca %struct.user_desc, align 4
  %sel = alloca i16, align 2
  %modified_sel = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp15 = alloca i64, align 8
  %__val = alloca i16, align 2
  %__val43 = alloca i16, align 2
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5851, metadata !DIExpression()), !dbg !5876
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5852, metadata !DIExpression()), !dbg !5877
  store ptr %u_info, ptr %u_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u_info.addr, metadata !5853, metadata !DIExpression()), !dbg !5878
  store i32 %can_allocate, ptr %can_allocate.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %can_allocate.addr, metadata !5854, metadata !DIExpression()), !dbg !5879
  call void @llvm.lifetime.start.p0(i64 16, ptr %info) #15, !dbg !5880
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5855, metadata !DIExpression()), !dbg !5881
  call void @llvm.lifetime.start.p0(i64 2, ptr %sel) #15, !dbg !5882
  call void @llvm.dbg.declare(metadata ptr %sel, metadata !5856, metadata !DIExpression()), !dbg !5883
  call void @llvm.lifetime.start.p0(i64 2, ptr %modified_sel) #15, !dbg !5882
  call void @llvm.dbg.declare(metadata ptr %modified_sel, metadata !5857, metadata !DIExpression()), !dbg !5884
  %0 = load ptr, ptr %u_info.addr, align 8, !dbg !5885
  %call = call i64 @copy_from_user(ptr noundef %info, ptr noundef %0, i64 noundef 16) #16, !dbg !5887
  %tobool = icmp ne i64 %call, 0, !dbg !5887
  br i1 %tobool, label %if.then, label %if.end, !dbg !5888

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !5889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5889

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @tls_desc_okay(ptr noundef %info) #16, !dbg !5890
  br i1 %call1, label %if.end3, label %if.then2, !dbg !5892

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5893
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5893

if.end3:                                          ; preds = %if.end
  %1 = load i32, ptr %idx.addr, align 4, !dbg !5894
  %cmp = icmp eq i32 %1, -1, !dbg !5896
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !5897

if.then4:                                         ; preds = %if.end3
  %entry_number = getelementptr inbounds %struct.user_desc, ptr %info, i32 0, i32 0, !dbg !5898
  %2 = load i32, ptr %entry_number, align 4, !dbg !5898
  store i32 %2, ptr %idx.addr, align 4, !dbg !5899
  br label %if.end5, !dbg !5900

if.end5:                                          ; preds = %if.then4, %if.end3
  %3 = load i32, ptr %idx.addr, align 4, !dbg !5901
  %cmp6 = icmp eq i32 %3, -1, !dbg !5902
  br i1 %cmp6, label %land.lhs.true, label %if.end19, !dbg !5903

land.lhs.true:                                    ; preds = %if.end5
  %4 = load i32, ptr %can_allocate.addr, align 4, !dbg !5904
  %tobool7 = icmp ne i32 %4, 0, !dbg !5904
  br i1 %tobool7, label %if.then8, label %if.end19, !dbg !5905

if.then8:                                         ; preds = %land.lhs.true
  %call9 = call i32 @get_free_idx() #16, !dbg !5906
  store i32 %call9, ptr %idx.addr, align 4, !dbg !5907
  %5 = load i32, ptr %idx.addr, align 4, !dbg !5908
  %cmp10 = icmp slt i32 %5, 0, !dbg !5910
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !5911

if.then11:                                        ; preds = %if.then8
  %6 = load i32, ptr %idx.addr, align 4, !dbg !5912
  store i32 %6, ptr %retval, align 4, !dbg !5913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5913

if.end12:                                         ; preds = %if.then8
  call void @might_fault() #16, !dbg !5914
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #15, !dbg !5915
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !5858, metadata !DIExpression()), !dbg !5915
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #15, !dbg !5915
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !5864, metadata !DIExpression()), !dbg !5915
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #15, !dbg !5915
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !5865, metadata !DIExpression()), !dbg !5915
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #15, !dbg !5915
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5866, metadata !DIExpression()), !dbg !5915
  %7 = load i32, ptr %idx.addr, align 4, !dbg !5915
  store i32 %7, ptr %__x, align 4, !dbg !5915
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !5915
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5867, metadata !DIExpression()), !dbg !5915
  %8 = load ptr, ptr %u_info.addr, align 8, !dbg !5915
  %entry_number13 = getelementptr inbounds %struct.user_desc, ptr %8, i32 0, i32 0, !dbg !5915
  store ptr %entry_number13, ptr %__ptr, align 8, !dbg !5915
  %9 = load ptr, ptr %__ptr, align 8, !dbg !5915
  store ptr %9, ptr %__ptr_pu, align 8, !dbg !5915
  %10 = load i32, ptr %__x, align 4, !dbg !5915
  store i32 %10, ptr %__val_pu, align 4, !dbg !5915
  %11 = call i64 @llvm.read_register.i64(metadata !5837), !dbg !5915
  %12 = load ptr, ptr %__ptr_pu, align 8, !dbg !5915
  %13 = load i32, ptr %__val_pu, align 4, !dbg !5915
  %14 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %12, i32 %13, i64 4, i64 %11) #15, !dbg !5915, !srcloc !5916
  %asmresult = extractvalue { ptr, i64 } %14, 0, !dbg !5915
  %asmresult14 = extractvalue { ptr, i64 } %14, 1, !dbg !5915
  %15 = ptrtoint ptr %asmresult to i64, !dbg !5915
  %16 = trunc i64 %15 to i32, !dbg !5915
  store i32 %16, ptr %__ret_pu, align 4, !dbg !5915
  call void @llvm.write_register.i64(metadata !5837, i64 %asmresult14), !dbg !5915
  %17 = load ptr, ptr %__ptr, align 8, !dbg !5917
  call void @kmsan_copy_to_user(ptr noundef %17, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #16, !dbg !5917
  %18 = load i32, ptr %__ret_pu, align 4, !dbg !5915
  %conv = sext i32 %18 to i64, !dbg !5915
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5915
  store i64 %expval, ptr %tmp15, align 8, !dbg !5915
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !5914
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #15, !dbg !5914
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #15, !dbg !5914
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #15, !dbg !5914
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #15, !dbg !5914
  %19 = load i64, ptr %tmp15, align 8, !dbg !5915
  store i64 %19, ptr %tmp, align 8, !dbg !5914
  %20 = load i64, ptr %tmp, align 8, !dbg !5914
  %tobool16 = icmp ne i64 %20, 0, !dbg !5919
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !5920

if.then17:                                        ; preds = %if.end12
  store i32 -14, ptr %retval, align 4, !dbg !5921
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5921

if.end18:                                         ; preds = %if.end12
  br label %if.end19, !dbg !5922

if.end19:                                         ; preds = %if.end18, %land.lhs.true, %if.end5
  %21 = load i32, ptr %idx.addr, align 4, !dbg !5923
  %cmp20 = icmp slt i32 %21, 12, !dbg !5925
  br i1 %cmp20, label %if.then24, label %lor.lhs.false, !dbg !5926

lor.lhs.false:                                    ; preds = %if.end19
  %22 = load i32, ptr %idx.addr, align 4, !dbg !5927
  %cmp22 = icmp sgt i32 %22, 14, !dbg !5928
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !5929

if.then24:                                        ; preds = %lor.lhs.false, %if.end19
  store i32 -22, ptr %retval, align 4, !dbg !5930
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5930

if.end25:                                         ; preds = %lor.lhs.false
  %23 = load ptr, ptr %p.addr, align 8, !dbg !5931
  %24 = load i32, ptr %idx.addr, align 4, !dbg !5932
  call void @set_tls_desc(ptr noundef %23, i32 noundef %24, ptr noundef %info, i32 noundef 1) #16, !dbg !5933
  %25 = load i32, ptr %idx.addr, align 4, !dbg !5934
  %shl = shl i32 %25, 3, !dbg !5935
  %or = or i32 %shl, 3, !dbg !5936
  %conv26 = trunc i32 %or to i16, !dbg !5937
  store i16 %conv26, ptr %modified_sel, align 2, !dbg !5938
  %26 = load ptr, ptr %p.addr, align 8, !dbg !5939
  %call27 = call ptr @get_current() #16, !dbg !5940
  %cmp28 = icmp eq ptr %26, %call27, !dbg !5941
  br i1 %cmp28, label %if.then30, label %if.else, !dbg !5942

if.then30:                                        ; preds = %if.end25
  %27 = call i16 asm "mov %ds,$0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5943, !srcloc !5944
  store i16 %27, ptr %sel, align 2, !dbg !5943
  %28 = load i16, ptr %sel, align 2, !dbg !5945
  %conv31 = zext i16 %28 to i32, !dbg !5945
  %29 = load i16, ptr %modified_sel, align 2, !dbg !5946
  %conv32 = zext i16 %29 to i32, !dbg !5946
  %cmp33 = icmp eq i32 %conv31, %conv32, !dbg !5947
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !5948

if.then35:                                        ; preds = %if.then30
  br label %do.body, !dbg !5949

do.body:                                          ; preds = %if.then35
  call void @llvm.lifetime.start.p0(i64 2, ptr %__val) #15, !dbg !5950
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !5868, metadata !DIExpression()), !dbg !5950
  %30 = load i16, ptr %sel, align 2, !dbg !5950
  store i16 %30, ptr %__val, align 2, !dbg !5950
  %31 = load i16, ptr %__val, align 2, !dbg !5950
  %32 = call i16 asm sideeffect "\09\09\09\09\09\09\0A1:\09movl ${0:k},%ds\09\09\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (1b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=${0:k}, type=(17 $| ((0) << 16)) \0A.purgem extable_type_reg\0A .popsection\0A", "=r,0,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %31) #15, !dbg !5950, !srcloc !5951
  store i16 %32, ptr %__val, align 2, !dbg !5950
  call void @llvm.lifetime.end.p0(i64 2, ptr %__val) #15, !dbg !5949
  br label %do.cond, !dbg !5950

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5950

do.end:                                           ; preds = %do.cond
  br label %if.end36, !dbg !5950

if.end36:                                         ; preds = %do.end, %if.then30
  %33 = call i16 asm "mov %es,$0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5952, !srcloc !5953
  store i16 %33, ptr %sel, align 2, !dbg !5952
  %34 = load i16, ptr %sel, align 2, !dbg !5954
  %conv37 = zext i16 %34 to i32, !dbg !5954
  %35 = load i16, ptr %modified_sel, align 2, !dbg !5955
  %conv38 = zext i16 %35 to i32, !dbg !5955
  %cmp39 = icmp eq i32 %conv37, %conv38, !dbg !5956
  br i1 %cmp39, label %if.then41, label %if.end46, !dbg !5957

if.then41:                                        ; preds = %if.end36
  br label %do.body42, !dbg !5958

do.body42:                                        ; preds = %if.then41
  call void @llvm.lifetime.start.p0(i64 2, ptr %__val43) #15, !dbg !5959
  call void @llvm.dbg.declare(metadata ptr %__val43, metadata !5873, metadata !DIExpression()), !dbg !5959
  %36 = load i16, ptr %sel, align 2, !dbg !5959
  store i16 %36, ptr %__val43, align 2, !dbg !5959
  %37 = load i16, ptr %__val43, align 2, !dbg !5959
  %38 = call i16 asm sideeffect "\09\09\09\09\09\09\0A1:\09movl ${0:k},%es\09\09\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (1b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=${0:k}, type=(17 $| ((0) << 16)) \0A.purgem extable_type_reg\0A .popsection\0A", "=r,0,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %37) #15, !dbg !5959, !srcloc !5960
  store i16 %38, ptr %__val43, align 2, !dbg !5959
  call void @llvm.lifetime.end.p0(i64 2, ptr %__val43) #15, !dbg !5958
  br label %do.cond44, !dbg !5959

do.cond44:                                        ; preds = %do.body42
  br label %do.end45, !dbg !5959

do.end45:                                         ; preds = %do.cond44
  br label %if.end46, !dbg !5959

if.end46:                                         ; preds = %do.end45, %if.end36
  %39 = call i16 asm "mov %fs,$0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5961, !srcloc !5962
  store i16 %39, ptr %sel, align 2, !dbg !5961
  %40 = load i16, ptr %sel, align 2, !dbg !5963
  %conv47 = zext i16 %40 to i32, !dbg !5963
  %41 = load i16, ptr %modified_sel, align 2, !dbg !5965
  %conv48 = zext i16 %41 to i32, !dbg !5965
  %cmp49 = icmp eq i32 %conv47, %conv48, !dbg !5966
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !5967

if.then51:                                        ; preds = %if.end46
  %42 = load i16, ptr %sel, align 2, !dbg !5968
  call void @__loadsegment_fs(i16 noundef zeroext %42) #16, !dbg !5968
  br label %if.end52, !dbg !5968

if.end52:                                         ; preds = %if.then51, %if.end46
  %43 = call i16 asm "mov %gs,$0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5969, !srcloc !5970
  store i16 %43, ptr %sel, align 2, !dbg !5969
  %44 = load i16, ptr %sel, align 2, !dbg !5971
  %conv53 = zext i16 %44 to i32, !dbg !5971
  %45 = load i16, ptr %modified_sel, align 2, !dbg !5973
  %conv54 = zext i16 %45 to i32, !dbg !5973
  %cmp55 = icmp eq i32 %conv53, %conv54, !dbg !5974
  br i1 %cmp55, label %if.then57, label %if.end59, !dbg !5975

if.then57:                                        ; preds = %if.end52
  %46 = load i16, ptr %sel, align 2, !dbg !5976
  %conv58 = zext i16 %46 to i32, !dbg !5976
  call void @load_gs_index(i32 noundef %conv58) #16, !dbg !5977
  br label %if.end59, !dbg !5977

if.end59:                                         ; preds = %if.then57, %if.end52
  br label %if.end78, !dbg !5978

if.else:                                          ; preds = %if.end25
  %47 = load ptr, ptr %p.addr, align 8, !dbg !5979
  %thread = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 197, !dbg !5982
  %fsindex = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 4, !dbg !5983
  %48 = load i16, ptr %fsindex, align 4, !dbg !5983
  %conv60 = zext i16 %48 to i32, !dbg !5979
  %49 = load i16, ptr %modified_sel, align 2, !dbg !5984
  %conv61 = zext i16 %49 to i32, !dbg !5984
  %cmp62 = icmp eq i32 %conv60, %conv61, !dbg !5985
  br i1 %cmp62, label %if.then64, label %if.end67, !dbg !5986

if.then64:                                        ; preds = %if.else
  %base_addr = getelementptr inbounds %struct.user_desc, ptr %info, i32 0, i32 1, !dbg !5987
  %50 = load i32, ptr %base_addr, align 4, !dbg !5987
  %conv65 = zext i32 %50 to i64, !dbg !5988
  %51 = load ptr, ptr %p.addr, align 8, !dbg !5989
  %thread66 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 197, !dbg !5990
  %fsbase = getelementptr inbounds %struct.thread_struct, ptr %thread66, i32 0, i32 6, !dbg !5991
  store i64 %conv65, ptr %fsbase, align 8, !dbg !5992
  br label %if.end67, !dbg !5989

if.end67:                                         ; preds = %if.then64, %if.else
  %52 = load ptr, ptr %p.addr, align 8, !dbg !5993
  %thread68 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 197, !dbg !5995
  %gsindex = getelementptr inbounds %struct.thread_struct, ptr %thread68, i32 0, i32 5, !dbg !5996
  %53 = load i16, ptr %gsindex, align 2, !dbg !5996
  %conv69 = zext i16 %53 to i32, !dbg !5993
  %54 = load i16, ptr %modified_sel, align 2, !dbg !5997
  %conv70 = zext i16 %54 to i32, !dbg !5997
  %cmp71 = icmp eq i32 %conv69, %conv70, !dbg !5998
  br i1 %cmp71, label %if.then73, label %if.end77, !dbg !5999

if.then73:                                        ; preds = %if.end67
  %base_addr74 = getelementptr inbounds %struct.user_desc, ptr %info, i32 0, i32 1, !dbg !6000
  %55 = load i32, ptr %base_addr74, align 4, !dbg !6000
  %conv75 = zext i32 %55 to i64, !dbg !6001
  %56 = load ptr, ptr %p.addr, align 8, !dbg !6002
  %thread76 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 197, !dbg !6003
  %gsbase = getelementptr inbounds %struct.thread_struct, ptr %thread76, i32 0, i32 7, !dbg !6004
  store i64 %conv75, ptr %gsbase, align 16, !dbg !6005
  br label %if.end77, !dbg !6002

if.end77:                                         ; preds = %if.then73, %if.end67
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end59
  store i32 0, ptr %retval, align 4, !dbg !6006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6006

cleanup:                                          ; preds = %if.end78, %if.then24, %if.then17, %if.then11, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %modified_sel) #15, !dbg !6007
  call void @llvm.lifetime.end.p0(i64 2, ptr %sel) #15, !dbg !6007
  call void @llvm.lifetime.end.p0(i64 16, ptr %info) #15, !dbg !6007
  %57 = load i32, ptr %retval, align 4, !dbg !6007
  ret i32 %57, !dbg !6007
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #3 align 16 !dbg !6008 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6013, metadata !DIExpression()), !dbg !6016
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6014, metadata !DIExpression()), !dbg !6017
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6015, metadata !DIExpression()), !dbg !6018
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6019
  %1 = load i64, ptr %n.addr, align 8, !dbg !6021
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #16, !dbg !6022
  br i1 %call, label %if.then, label %if.end, !dbg !6023

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6024
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6025
  %4 = load i64, ptr %n.addr, align 8, !dbg !6026
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #16, !dbg !6027
  store i64 %call1, ptr %n.addr, align 8, !dbg !6028
  br label %if.end, !dbg !6029

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6030
  ret i64 %5, !dbg !6031
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tls_desc_okay(ptr noundef %info) #0 align 16 !dbg !6032 {
entry:
  %retval = alloca i1, align 1
  %info.addr = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6036, metadata !DIExpression()), !dbg !6037
  %0 = load ptr, ptr %info.addr, align 8, !dbg !6038
  %base_addr = getelementptr inbounds %struct.user_desc, ptr %0, i32 0, i32 1, !dbg !6038
  %1 = load i32, ptr %base_addr, align 4, !dbg !6038
  %cmp = icmp eq i32 %1, 0, !dbg !6038
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !6038

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %info.addr, align 8, !dbg !6038
  %limit = getelementptr inbounds %struct.user_desc, ptr %2, i32 0, i32 2, !dbg !6038
  %3 = load i32, ptr %limit, align 4, !dbg !6038
  %cmp1 = icmp eq i32 %3, 0, !dbg !6038
  br i1 %cmp1, label %land.lhs.true2, label %lor.lhs.false, !dbg !6038

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %info.addr, align 8, !dbg !6038
  %contents = getelementptr inbounds %struct.user_desc, ptr %4, i32 0, i32 3, !dbg !6038
  %bf.load = load i8, ptr %contents, align 4, !dbg !6038
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !6038
  %bf.clear = and i8 %bf.lshr, 3, !dbg !6038
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6038
  %cmp3 = icmp eq i32 %bf.cast, 0, !dbg !6038
  br i1 %cmp3, label %land.lhs.true4, label %lor.lhs.false, !dbg !6038

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %5 = load ptr, ptr %info.addr, align 8, !dbg !6038
  %read_exec_only = getelementptr inbounds %struct.user_desc, ptr %5, i32 0, i32 3, !dbg !6038
  %bf.load5 = load i8, ptr %read_exec_only, align 4, !dbg !6038
  %bf.lshr6 = lshr i8 %bf.load5, 3, !dbg !6038
  %bf.clear7 = and i8 %bf.lshr6, 1, !dbg !6038
  %bf.cast8 = zext i8 %bf.clear7 to i32, !dbg !6038
  %cmp9 = icmp eq i32 %bf.cast8, 1, !dbg !6038
  br i1 %cmp9, label %land.lhs.true10, label %lor.lhs.false, !dbg !6038

land.lhs.true10:                                  ; preds = %land.lhs.true4
  %6 = load ptr, ptr %info.addr, align 8, !dbg !6038
  %seg_32bit = getelementptr inbounds %struct.user_desc, ptr %6, i32 0, i32 3, !dbg !6038
  %bf.load11 = load i8, ptr %seg_32bit, align 4, !dbg !6038
  %bf.clear12 = and i8 %bf.load11, 1, !dbg !6038
  %bf.cast13 = zext i8 %bf.clear12 to i32, !dbg !6038
  %cmp14 = icmp eq i32 %bf.cast13, 0, !dbg !6038
  br i1 %cmp14, label %land.lhs.true15, label %lor.lhs.false, !dbg !6038

land.lhs.true15:                                  ; preds = %land.lhs.true10
  %7 = load ptr, ptr %info.addr, align 8, !dbg !6038
  %limit_in_pages = getelementptr inbounds %struct.user_desc, ptr %7, i32 0, i32 3, !dbg !6038
  %bf.load16 = load i8, ptr %limit_in_pages, align 4, !dbg !6038
  %bf.lshr17 = lshr i8 %bf.load16, 4, !dbg !6038
  %bf.clear18 = and i8 %bf.lshr17, 1, !dbg !6038
  %bf.cast19 = zext i8 %bf.clear18 to i32, !dbg !6038
  %cmp20 = icmp eq i32 %bf.cast19, 0, !dbg !6038
  br i1 %cmp20, label %land.lhs.true21, label %lor.lhs.false, !dbg !6038

land.lhs.true21:                                  ; preds = %land.lhs.true15
  %8 = load ptr, ptr %info.addr, align 8, !dbg !6038
  %seg_not_present = getelementptr inbounds %struct.user_desc, ptr %8, i32 0, i32 3, !dbg !6038
  %bf.load22 = load i8, ptr %seg_not_present, align 4, !dbg !6038
  %bf.lshr23 = lshr i8 %bf.load22, 5, !dbg !6038
  %bf.clear24 = and i8 %bf.lshr23, 1, !dbg !6038
  %bf.cast25 = zext i8 %bf.clear24 to i32, !dbg !6038
  %cmp26 = icmp eq i32 %bf.cast25, 1, !dbg !6038
  br i1 %cmp26, label %land.lhs.true27, label %lor.lhs.false, !dbg !6038

land.lhs.true27:                                  ; preds = %land.lhs.true21
  %9 = load ptr, ptr %info.addr, align 8, !dbg !6038
  %useable = getelementptr inbounds %struct.user_desc, ptr %9, i32 0, i32 3, !dbg !6038
  %bf.load28 = load i8, ptr %useable, align 4, !dbg !6038
  %bf.lshr29 = lshr i8 %bf.load28, 6, !dbg !6038
  %bf.clear30 = and i8 %bf.lshr29, 1, !dbg !6038
  %bf.cast31 = zext i8 %bf.clear30 to i32, !dbg !6038
  %cmp32 = icmp eq i32 %bf.cast31, 0, !dbg !6038
  br i1 %cmp32, label %if.then, label %lor.lhs.false, !dbg !6040

lor.lhs.false:                                    ; preds = %land.lhs.true27, %land.lhs.true21, %land.lhs.true15, %land.lhs.true10, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %10 = load ptr, ptr %info.addr, align 8, !dbg !6041
  %call = call zeroext i1 @LDT_zero(ptr noundef %10) #16, !dbg !6042
  br i1 %call, label %if.then, label %if.end, !dbg !6043

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true27
  store i1 true, ptr %retval, align 1, !dbg !6044
  br label %return, !dbg !6044

if.end:                                           ; preds = %lor.lhs.false
  %11 = load ptr, ptr %info.addr, align 8, !dbg !6045
  %seg_32bit33 = getelementptr inbounds %struct.user_desc, ptr %11, i32 0, i32 3, !dbg !6047
  %bf.load34 = load i8, ptr %seg_32bit33, align 4, !dbg !6047
  %bf.clear35 = and i8 %bf.load34, 1, !dbg !6047
  %bf.cast36 = zext i8 %bf.clear35 to i32, !dbg !6047
  %tobool = icmp ne i32 %bf.cast36, 0, !dbg !6045
  br i1 %tobool, label %if.end38, label %if.then37, !dbg !6048

if.then37:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6049
  br label %return, !dbg !6049

if.end38:                                         ; preds = %if.end
  %12 = load ptr, ptr %info.addr, align 8, !dbg !6050
  %contents39 = getelementptr inbounds %struct.user_desc, ptr %12, i32 0, i32 3, !dbg !6052
  %bf.load40 = load i8, ptr %contents39, align 4, !dbg !6052
  %bf.lshr41 = lshr i8 %bf.load40, 1, !dbg !6052
  %bf.clear42 = and i8 %bf.lshr41, 3, !dbg !6052
  %bf.cast43 = zext i8 %bf.clear42 to i32, !dbg !6052
  %cmp44 = icmp sgt i32 %bf.cast43, 1, !dbg !6053
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !6054

if.then45:                                        ; preds = %if.end38
  store i1 false, ptr %retval, align 1, !dbg !6055
  br label %return, !dbg !6055

if.end46:                                         ; preds = %if.end38
  %13 = load ptr, ptr %info.addr, align 8, !dbg !6056
  %seg_not_present47 = getelementptr inbounds %struct.user_desc, ptr %13, i32 0, i32 3, !dbg !6058
  %bf.load48 = load i8, ptr %seg_not_present47, align 4, !dbg !6058
  %bf.lshr49 = lshr i8 %bf.load48, 5, !dbg !6058
  %bf.clear50 = and i8 %bf.lshr49, 1, !dbg !6058
  %bf.cast51 = zext i8 %bf.clear50 to i32, !dbg !6058
  %tobool52 = icmp ne i32 %bf.cast51, 0, !dbg !6056
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !6059

if.then53:                                        ; preds = %if.end46
  store i1 false, ptr %retval, align 1, !dbg !6060
  br label %return, !dbg !6060

if.end54:                                         ; preds = %if.end46
  store i1 true, ptr %retval, align 1, !dbg !6061
  br label %return, !dbg !6061

return:                                           ; preds = %if.end54, %if.then53, %if.then45, %if.then37, %if.then
  %14 = load i1, ptr %retval, align 1, !dbg !6062
  ret i1 %14, !dbg !6062
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_free_idx() #0 align 16 !dbg !6063 {
entry:
  %retval = alloca i32, align 4
  %t = alloca ptr, align 8
  %idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #15, !dbg !6067
  call void @llvm.dbg.declare(metadata ptr %t, metadata !6065, metadata !DIExpression()), !dbg !6068
  %call = call ptr @get_current() #16, !dbg !6069
  %thread = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 197, !dbg !6070
  store ptr %thread, ptr %t, align 8, !dbg !6068
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #15, !dbg !6071
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !6066, metadata !DIExpression()), !dbg !6072
  store i32 0, ptr %idx, align 4, !dbg !6073
  br label %for.cond, !dbg !6075

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %idx, align 4, !dbg !6076
  %cmp = icmp slt i32 %0, 3, !dbg !6078
  br i1 %cmp, label %for.body, label %for.end, !dbg !6079

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %t, align 8, !dbg !6080
  %tls_array = getelementptr inbounds %struct.thread_struct, ptr %1, i32 0, i32 0, !dbg !6082
  %2 = load i32, ptr %idx, align 4, !dbg !6083
  %idxprom = sext i32 %2 to i64, !dbg !6080
  %arrayidx = getelementptr [3 x %struct.desc_struct], ptr %tls_array, i64 0, i64 %idxprom, !dbg !6080
  %call1 = call i32 @desc_empty(ptr noundef %arrayidx) #16, !dbg !6084
  %tobool = icmp ne i32 %call1, 0, !dbg !6084
  br i1 %tobool, label %if.then, label %if.end, !dbg !6085

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %idx, align 4, !dbg !6086
  %add = add i32 %3, 12, !dbg !6087
  store i32 %add, ptr %retval, align 4, !dbg !6088
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6088

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6089

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %idx, align 4, !dbg !6090
  %inc = add i32 %4, 1, !dbg !6090
  store i32 %inc, ptr %idx, align 4, !dbg !6090
  br label %for.cond, !dbg !6091, !llvm.loop !6092

for.end:                                          ; preds = %for.cond
  store i32 -3, ptr %retval, align 4, !dbg !6096
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6096

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #15, !dbg !6097
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #15, !dbg !6097
  %5 = load i32, ptr %retval, align 4, !dbg !6097
  ret i32 %5, !dbg !6097
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #4 align 16 !dbg !6098 {
entry:
  ret void, !dbg !6100
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #4 align 16 !dbg !6101 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6106, metadata !DIExpression()), !dbg !6110
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6107, metadata !DIExpression()), !dbg !6111
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !6108, metadata !DIExpression()), !dbg !6112
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !6109, metadata !DIExpression()), !dbg !6113
  ret void, !dbg !6114
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_tls_desc(ptr noundef %p, i32 noundef %idx, ptr noundef %info, i32 noundef %n) #0 align 16 !dbg !15 {
entry:
  %p.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %t = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5820, metadata !DIExpression()), !dbg !6115
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5821, metadata !DIExpression()), !dbg !6116
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5822, metadata !DIExpression()), !dbg !6117
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5823, metadata !DIExpression()), !dbg !6118
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #15, !dbg !6119
  call void @llvm.dbg.declare(metadata ptr %t, metadata !5824, metadata !DIExpression()), !dbg !6120
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6121
  %thread = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 197, !dbg !6122
  store ptr %thread, ptr %t, align 8, !dbg !6120
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #15, !dbg !6123
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5826, metadata !DIExpression()), !dbg !6124
  %1 = load ptr, ptr %t, align 8, !dbg !6125
  %tls_array = getelementptr inbounds %struct.thread_struct, ptr %1, i32 0, i32 0, !dbg !6126
  %2 = load i32, ptr %idx.addr, align 4, !dbg !6127
  %sub = sub i32 %2, 12, !dbg !6128
  %idxprom = sext i32 %sub to i64, !dbg !6125
  %arrayidx = getelementptr [3 x %struct.desc_struct], ptr %tls_array, i64 0, i64 %idxprom, !dbg !6125
  store ptr %arrayidx, ptr %desc, align 8, !dbg !6124
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !6129
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !5828, metadata !DIExpression()), !dbg !6130
  br label %do.body, !dbg !6131

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #16, !dbg !6132
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !6132, !srcloc !6134
  br label %do.cond, !dbg !6132

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6132

do.end:                                           ; preds = %do.cond
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #16, !dbg !6135
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !6136
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5829, metadata !DIExpression()), !dbg !6136
  br label %do.body2, !dbg !6136

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6137
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5833, metadata !DIExpression()), !dbg !6137
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6137
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !6137
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6136
  br label %do.cond3, !dbg !6137

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6137

do.end4:                                          ; preds = %do.cond3
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !6138
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5835, metadata !DIExpression()), !dbg !6138
  %4 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 2)) #17, !dbg !6138, !srcloc !6139
  store i32 %4, ptr %pfo_val__, align 4, !dbg !6138
  %5 = load i32, ptr %pfo_val__, align 4, !dbg !6138
  %conv = zext i32 %5 to i64, !dbg !6138
  %conv6 = trunc i64 %conv to i32, !dbg !6138
  store i32 %conv6, ptr %tmp5, align 4, !dbg !6138
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !6136
  %6 = load i32, ptr %tmp5, align 4, !dbg !6138
  store i32 %6, ptr %pscr_ret__, align 4, !dbg !6136
  %7 = load i32, ptr %pscr_ret__, align 4, !dbg !6136
  store i32 %7, ptr %tmp7, align 4, !dbg !6136
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !6135
  %8 = load i32, ptr %tmp7, align 4, !dbg !6136
  store i32 %8, ptr %tmp1, align 4, !dbg !6135
  %9 = load i32, ptr %tmp1, align 4, !dbg !6135
  store i32 %9, ptr %tmp, align 4, !dbg !6132
  %10 = load i32, ptr %tmp, align 4, !dbg !6131
  store i32 %10, ptr %cpu, align 4, !dbg !6140
  br label %while.cond, !dbg !6141

while.cond:                                       ; preds = %if.end, %do.end4
  %11 = load i32, ptr %n.addr, align 4, !dbg !6142
  %dec = add i32 %11, -1, !dbg !6142
  store i32 %dec, ptr %n.addr, align 4, !dbg !6142
  %cmp = icmp sgt i32 %11, 0, !dbg !6143
  br i1 %cmp, label %while.body, label %while.end, !dbg !6141

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %info.addr, align 8, !dbg !6144
  %base_addr = getelementptr inbounds %struct.user_desc, ptr %12, i32 0, i32 1, !dbg !6144
  %13 = load i32, ptr %base_addr, align 4, !dbg !6144
  %cmp9 = icmp eq i32 %13, 0, !dbg !6144
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false, !dbg !6144

land.lhs.true:                                    ; preds = %while.body
  %14 = load ptr, ptr %info.addr, align 8, !dbg !6144
  %limit = getelementptr inbounds %struct.user_desc, ptr %14, i32 0, i32 2, !dbg !6144
  %15 = load i32, ptr %limit, align 4, !dbg !6144
  %cmp11 = icmp eq i32 %15, 0, !dbg !6144
  br i1 %cmp11, label %land.lhs.true13, label %lor.lhs.false, !dbg !6144

land.lhs.true13:                                  ; preds = %land.lhs.true
  %16 = load ptr, ptr %info.addr, align 8, !dbg !6144
  %contents = getelementptr inbounds %struct.user_desc, ptr %16, i32 0, i32 3, !dbg !6144
  %bf.load = load i8, ptr %contents, align 4, !dbg !6144
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !6144
  %bf.clear = and i8 %bf.lshr, 3, !dbg !6144
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6144
  %cmp14 = icmp eq i32 %bf.cast, 0, !dbg !6144
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false, !dbg !6144

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %17 = load ptr, ptr %info.addr, align 8, !dbg !6144
  %read_exec_only = getelementptr inbounds %struct.user_desc, ptr %17, i32 0, i32 3, !dbg !6144
  %bf.load17 = load i8, ptr %read_exec_only, align 4, !dbg !6144
  %bf.lshr18 = lshr i8 %bf.load17, 3, !dbg !6144
  %bf.clear19 = and i8 %bf.lshr18, 1, !dbg !6144
  %bf.cast20 = zext i8 %bf.clear19 to i32, !dbg !6144
  %cmp21 = icmp eq i32 %bf.cast20, 1, !dbg !6144
  br i1 %cmp21, label %land.lhs.true23, label %lor.lhs.false, !dbg !6144

land.lhs.true23:                                  ; preds = %land.lhs.true16
  %18 = load ptr, ptr %info.addr, align 8, !dbg !6144
  %seg_32bit = getelementptr inbounds %struct.user_desc, ptr %18, i32 0, i32 3, !dbg !6144
  %bf.load24 = load i8, ptr %seg_32bit, align 4, !dbg !6144
  %bf.clear25 = and i8 %bf.load24, 1, !dbg !6144
  %bf.cast26 = zext i8 %bf.clear25 to i32, !dbg !6144
  %cmp27 = icmp eq i32 %bf.cast26, 0, !dbg !6144
  br i1 %cmp27, label %land.lhs.true29, label %lor.lhs.false, !dbg !6144

land.lhs.true29:                                  ; preds = %land.lhs.true23
  %19 = load ptr, ptr %info.addr, align 8, !dbg !6144
  %limit_in_pages = getelementptr inbounds %struct.user_desc, ptr %19, i32 0, i32 3, !dbg !6144
  %bf.load30 = load i8, ptr %limit_in_pages, align 4, !dbg !6144
  %bf.lshr31 = lshr i8 %bf.load30, 4, !dbg !6144
  %bf.clear32 = and i8 %bf.lshr31, 1, !dbg !6144
  %bf.cast33 = zext i8 %bf.clear32 to i32, !dbg !6144
  %cmp34 = icmp eq i32 %bf.cast33, 0, !dbg !6144
  br i1 %cmp34, label %land.lhs.true36, label %lor.lhs.false, !dbg !6144

land.lhs.true36:                                  ; preds = %land.lhs.true29
  %20 = load ptr, ptr %info.addr, align 8, !dbg !6144
  %seg_not_present = getelementptr inbounds %struct.user_desc, ptr %20, i32 0, i32 3, !dbg !6144
  %bf.load37 = load i8, ptr %seg_not_present, align 4, !dbg !6144
  %bf.lshr38 = lshr i8 %bf.load37, 5, !dbg !6144
  %bf.clear39 = and i8 %bf.lshr38, 1, !dbg !6144
  %bf.cast40 = zext i8 %bf.clear39 to i32, !dbg !6144
  %cmp41 = icmp eq i32 %bf.cast40, 1, !dbg !6144
  br i1 %cmp41, label %land.lhs.true43, label %lor.lhs.false, !dbg !6144

land.lhs.true43:                                  ; preds = %land.lhs.true36
  %21 = load ptr, ptr %info.addr, align 8, !dbg !6144
  %useable = getelementptr inbounds %struct.user_desc, ptr %21, i32 0, i32 3, !dbg !6144
  %bf.load44 = load i8, ptr %useable, align 4, !dbg !6144
  %bf.lshr45 = lshr i8 %bf.load44, 6, !dbg !6144
  %bf.clear46 = and i8 %bf.lshr45, 1, !dbg !6144
  %bf.cast47 = zext i8 %bf.clear46 to i32, !dbg !6144
  %cmp48 = icmp eq i32 %bf.cast47, 0, !dbg !6144
  br i1 %cmp48, label %if.then, label %lor.lhs.false, !dbg !6147

lor.lhs.false:                                    ; preds = %land.lhs.true43, %land.lhs.true36, %land.lhs.true29, %land.lhs.true23, %land.lhs.true16, %land.lhs.true13, %land.lhs.true, %while.body
  %22 = load ptr, ptr %info.addr, align 8, !dbg !6148
  %call = call zeroext i1 @LDT_zero(ptr noundef %22) #16, !dbg !6149
  br i1 %call, label %if.then, label %if.else, !dbg !6150

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true43
  %23 = load ptr, ptr %desc, align 8, !dbg !6151
  call void @llvm.memset.p0.i64(ptr align 1 %23, i8 0, i64 8, i1 false), !dbg !6152
  br label %if.end, !dbg !6152

if.else:                                          ; preds = %lor.lhs.false
  %24 = load ptr, ptr %desc, align 8, !dbg !6153
  %25 = load ptr, ptr %info.addr, align 8, !dbg !6154
  call void @fill_ldt(ptr noundef %24, ptr noundef %25) #16, !dbg !6155
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = load ptr, ptr %info.addr, align 8, !dbg !6156
  %incdec.ptr = getelementptr %struct.user_desc, ptr %26, i32 1, !dbg !6156
  store ptr %incdec.ptr, ptr %info.addr, align 8, !dbg !6156
  %27 = load ptr, ptr %desc, align 8, !dbg !6157
  %incdec.ptr51 = getelementptr %struct.desc_struct, ptr %27, i32 1, !dbg !6157
  store ptr %incdec.ptr51, ptr %desc, align 8, !dbg !6157
  br label %while.cond, !dbg !6141, !llvm.loop !6158

while.end:                                        ; preds = %while.cond
  %28 = load ptr, ptr %t, align 8, !dbg !6160
  %call52 = call ptr @get_current() #16, !dbg !6162
  %thread53 = getelementptr inbounds %struct.task_struct, ptr %call52, i32 0, i32 197, !dbg !6163
  %cmp54 = icmp eq ptr %28, %thread53, !dbg !6164
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !6165

if.then56:                                        ; preds = %while.end
  %29 = load ptr, ptr %t, align 8, !dbg !6166
  %30 = load i32, ptr %cpu, align 4, !dbg !6166
  call void @native_load_tls(ptr noundef %29, i32 noundef %30) #16, !dbg !6166
  br label %if.end57, !dbg !6166

if.end57:                                         ; preds = %if.then56, %while.end
  br label %do.body58, !dbg !6167

do.body58:                                        ; preds = %if.end57
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !6168, !srcloc !6170
  %call59 = call zeroext i1 @__preempt_count_dec_and_test() #16, !dbg !6171
  %lnot = xor i1 %call59, true, !dbg !6171
  %lnot60 = xor i1 %lnot, true, !dbg !6171
  %lnot.ext = zext i1 %lnot60 to i32, !dbg !6171
  %conv61 = sext i32 %lnot.ext to i64, !dbg !6171
  %expval = call i64 @llvm.expect.i64(i64 %conv61, i64 0), !dbg !6171
  %tobool = icmp ne i64 %expval, 0, !dbg !6171
  br i1 %tobool, label %if.then62, label %if.end66, !dbg !6168

if.then62:                                        ; preds = %do.body58
  br label %do.body63, !dbg !6171

do.body63:                                        ; preds = %if.then62
  %31 = call i64 @llvm.read_register.i64(metadata !5837), !dbg !6173
  %32 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %31) #15, !dbg !6173, !srcloc !6175
  call void @llvm.write_register.i64(metadata !5837, i64 %32), !dbg !6173
  br label %do.cond64, !dbg !6173

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !6173

do.end65:                                         ; preds = %do.cond64
  br label %if.end66, !dbg !6173

if.end66:                                         ; preds = %do.end65, %do.body58
  br label %do.cond67, !dbg !6168

do.cond67:                                        ; preds = %if.end66
  br label %do.end68, !dbg !6168

do.end68:                                         ; preds = %do.cond67
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !6176
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #15, !dbg !6176
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #15, !dbg !6176
  ret void, !dbg !6176
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !6177 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !6188
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6182, metadata !DIExpression()), !dbg !6188
  br label %do.body, !dbg !6188

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6189
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6184, metadata !DIExpression()), !dbg !6189
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6189
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6189
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !6188
  br label %do.cond, !dbg !6189

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6189

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !6190
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6186, metadata !DIExpression()), !dbg !6190
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #18, !dbg !6190, !srcloc !6191
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6190
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6190
  %3 = inttoptr i64 %2 to ptr, !dbg !6190
  store ptr %3, ptr %tmp, align 8, !dbg !6190
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !6188
  %4 = load ptr, ptr %tmp, align 8, !dbg !6190
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6188
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6188
  store ptr %5, ptr %tmp1, align 8, !dbg !6188
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !6192
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6188
  ret ptr %6, !dbg !6193
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__loadsegment_fs(i16 noundef zeroext %value) #4 align 16 !dbg !6194 {
entry:
  %value.addr = alloca i16, align 2
  store i16 %value, ptr %value.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6199, metadata !DIExpression()), !dbg !6200
  %0 = load i16, ptr %value.addr, align 2, !dbg !6201
  call void asm sideeffect "\09\09\09\09\09\09\0A1:\09movw $0, %fs\09\09\09\0A2:\09\09\09\09\09\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 5 \0A .popsection\0A", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %0) #15, !dbg !6202, !srcloc !6203
  ret void, !dbg !6204
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @load_gs_index(i32 noundef %selector) #4 align 16 !dbg !6205 {
entry:
  %selector.addr = alloca i32, align 4
  store i32 %selector, ptr %selector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %selector.addr, metadata !6210, metadata !DIExpression()), !dbg !6211
  %0 = load i32, ptr %selector.addr, align 4, !dbg !6212
  call void @native_load_gs_index(i32 noundef %0) #16, !dbg !6213
  ret void, !dbg !6214
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_set_thread_area(ptr noundef %regs) #0 align 16 !dbg !6215 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6221, metadata !DIExpression()), !dbg !6222
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6222
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6222
  %1 = load i64, ptr %di, align 8, !dbg !6222
  %call = call i64 @__se_sys_set_thread_area(i64 noundef %1) #16, !dbg !6222
  ret i64 %call, !dbg !6222
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_set_thread_area(i64 noundef %u_info) #0 align 16 !dbg !6223 {
entry:
  %u_info.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %u_info, ptr %u_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u_info.addr, metadata !6227, metadata !DIExpression()), !dbg !6229
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !6229
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6228, metadata !DIExpression()), !dbg !6229
  %0 = load i64, ptr %u_info.addr, align 8, !dbg !6229
  %1 = inttoptr i64 %0 to ptr, !dbg !6229
  %call = call i64 @__do_sys_set_thread_area(ptr noundef %1) #16, !dbg !6229
  store i64 %call, ptr %ret, align 8, !dbg !6229
  br label %do.body, !dbg !6229

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6230

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6230

do.end:                                           ; preds = %do.cond
  %2 = load i64, ptr %ret, align 8, !dbg !6229
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !6229
  ret i64 %2, !dbg !6229
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_set_thread_area(ptr noundef %regs) #0 align 16 !dbg !6232 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6234, metadata !DIExpression()), !dbg !6235
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6235
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6235
  %1 = load i64, ptr %bx, align 8, !dbg !6235
  %conv = trunc i64 %1 to i32, !dbg !6235
  %conv1 = zext i32 %conv to i64, !dbg !6235
  %call = call i64 @__se_sys_set_thread_area(i64 noundef %conv1) #16, !dbg !6235
  ret i64 %call, !dbg !6235
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @do_get_thread_area(ptr noundef %p, i32 noundef %idx, ptr noundef %u_info) #0 align 16 !dbg !6236 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %u_info.addr = alloca ptr, align 8
  %info = alloca %struct.user_desc, align 4
  %index = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %tmp5 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %_i = alloca i32, align 4
  %_s = alloca i32, align 4
  %_mask = alloca i64, align 8
  %tmp18 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6240, metadata !DIExpression()), !dbg !6256
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6241, metadata !DIExpression()), !dbg !6257
  store ptr %u_info, ptr %u_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u_info.addr, metadata !6242, metadata !DIExpression()), !dbg !6258
  call void @llvm.lifetime.start.p0(i64 16, ptr %info) #15, !dbg !6259
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6243, metadata !DIExpression()), !dbg !6260
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !6261
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6244, metadata !DIExpression()), !dbg !6262
  %0 = load i32, ptr %idx.addr, align 4, !dbg !6263
  %cmp = icmp eq i32 %0, -1, !dbg !6264
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6265

land.lhs.true:                                    ; preds = %entry
  call void @might_fault() #16, !dbg !6266
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #15, !dbg !6267
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !6245, metadata !DIExpression()), !dbg !6267
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #15, !dbg !6267
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !6249, metadata !DIExpression()), !dbg !6267
  %1 = call i64 @llvm.read_register.i64(metadata !5837), !dbg !6267
  %2 = load ptr, ptr %u_info.addr, align 8, !dbg !6267
  %entry_number = getelementptr inbounds %struct.user_desc, ptr %2, i32 0, i32 0, !dbg !6267
  %3 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %entry_number, i64 4, i64 %1) #15, !dbg !6267, !srcloc !6268
  %asmresult = extractvalue { ptr, i32, i64 } %3, 0, !dbg !6267
  %asmresult1 = extractvalue { ptr, i32, i64 } %3, 1, !dbg !6267
  %asmresult2 = extractvalue { ptr, i32, i64 } %3, 2, !dbg !6267
  %4 = ptrtoint ptr %asmresult to i64, !dbg !6267
  %5 = trunc i64 %4 to i32, !dbg !6267
  store i32 %5, ptr %__ret_gu, align 4, !dbg !6267
  store i32 %asmresult1, ptr %__val_gu, align 4, !dbg !6267
  call void @llvm.write_register.i64(metadata !5837, i64 %asmresult2), !dbg !6267
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #15, !dbg !6269
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !6250, metadata !DIExpression()), !dbg !6269
  %6 = load i32, ptr %__val_gu, align 4, !dbg !6269
  %conv = zext i32 %6 to i64, !dbg !6269
  store i64 %conv, ptr %__tmp, align 8, !dbg !6269
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #16, !dbg !6269
  %7 = load i64, ptr %__tmp, align 8, !dbg !6269
  %conv4 = trunc i64 %7 to i32, !dbg !6269
  store i32 %conv4, ptr %__val_gu, align 4, !dbg !6269
  store i32 %conv4, ptr %tmp3, align 4, !dbg !6269
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #15, !dbg !6267
  %8 = load i32, ptr %tmp3, align 4, !dbg !6269
  %9 = load i32, ptr %__val_gu, align 4, !dbg !6267
  store i32 %9, ptr %idx.addr, align 4, !dbg !6267
  %10 = load i32, ptr %__ret_gu, align 4, !dbg !6267
  %conv6 = sext i32 %10 to i64, !dbg !6267
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6267
  store i64 %expval, ptr %tmp5, align 8, !dbg !6267
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #15, !dbg !6266
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #15, !dbg !6266
  %11 = load i64, ptr %tmp5, align 8, !dbg !6267
  store i64 %11, ptr %tmp, align 8, !dbg !6266
  %12 = load i64, ptr %tmp, align 8, !dbg !6266
  %tobool = icmp ne i64 %12, 0, !dbg !6270
  br i1 %tobool, label %if.then, label %if.end, !dbg !6271

if.then:                                          ; preds = %land.lhs.true
  store i32 -14, ptr %retval, align 4, !dbg !6272
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6272

if.end:                                           ; preds = %land.lhs.true, %entry
  %13 = load i32, ptr %idx.addr, align 4, !dbg !6273
  %cmp7 = icmp slt i32 %13, 12, !dbg !6275
  br i1 %cmp7, label %if.then11, label %lor.lhs.false, !dbg !6276

lor.lhs.false:                                    ; preds = %if.end
  %14 = load i32, ptr %idx.addr, align 4, !dbg !6277
  %cmp9 = icmp sgt i32 %14, 14, !dbg !6278
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !6279

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6280
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6280

if.end12:                                         ; preds = %lor.lhs.false
  %15 = load i32, ptr %idx.addr, align 4, !dbg !6281
  %sub = sub i32 %15, 12, !dbg !6282
  store i32 %sub, ptr %index, align 4, !dbg !6283
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #15, !dbg !6284
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !6252, metadata !DIExpression()), !dbg !6284
  %16 = load i32, ptr %index, align 4, !dbg !6284
  store i32 %16, ptr %_i, align 4, !dbg !6284
  call void @llvm.lifetime.start.p0(i64 4, ptr %_s) #15, !dbg !6284
  call void @llvm.dbg.declare(metadata ptr %_s, metadata !6254, metadata !DIExpression()), !dbg !6284
  store i32 3, ptr %_s, align 4, !dbg !6284
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mask) #15, !dbg !6284
  call void @llvm.dbg.declare(metadata ptr %_mask, metadata !6255, metadata !DIExpression()), !dbg !6284
  %17 = load i32, ptr %_i, align 4, !dbg !6284
  %conv13 = sext i32 %17 to i64, !dbg !6284
  %18 = load i32, ptr %_s, align 4, !dbg !6284
  %conv14 = sext i32 %18 to i64, !dbg !6284
  %call = call i64 @array_index_mask_nospec(i64 noundef %conv13, i64 noundef %conv14) #16, !dbg !6284
  store i64 %call, ptr %_mask, align 8, !dbg !6284
  br label %do.body, !dbg !6284

do.body:                                          ; preds = %if.end12
  br label %do.cond, !dbg !6285

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6285

do.end:                                           ; preds = %do.cond
  br label %do.body15, !dbg !6284

do.body15:                                        ; preds = %do.end
  br label %do.cond16, !dbg !6287

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6287

do.end17:                                         ; preds = %do.cond16
  %19 = load i32, ptr %_i, align 4, !dbg !6284
  %conv19 = sext i32 %19 to i64, !dbg !6284
  %20 = load i64, ptr %_mask, align 8, !dbg !6284
  %and = and i64 %conv19, %20, !dbg !6284
  %conv20 = trunc i64 %and to i32, !dbg !6284
  store i32 %conv20, ptr %tmp18, align 4, !dbg !6287
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mask) #15, !dbg !6289
  call void @llvm.lifetime.end.p0(i64 4, ptr %_s) #15, !dbg !6289
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #15, !dbg !6289
  %21 = load i32, ptr %tmp18, align 4, !dbg !6284
  store i32 %21, ptr %index, align 4, !dbg !6290
  %22 = load i32, ptr %idx.addr, align 4, !dbg !6291
  %23 = load ptr, ptr %p.addr, align 8, !dbg !6292
  %thread = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 197, !dbg !6293
  %tls_array = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 0, !dbg !6294
  %24 = load i32, ptr %index, align 4, !dbg !6295
  %idxprom = sext i32 %24 to i64, !dbg !6292
  %arrayidx = getelementptr [3 x %struct.desc_struct], ptr %tls_array, i64 0, i64 %idxprom, !dbg !6292
  call void @fill_user_desc(ptr noundef %info, i32 noundef %22, ptr noundef %arrayidx) #16, !dbg !6296
  %25 = load ptr, ptr %u_info.addr, align 8, !dbg !6297
  %call21 = call i64 @copy_to_user(ptr noundef %25, ptr noundef %info, i64 noundef 16) #16, !dbg !6299
  %tobool22 = icmp ne i64 %call21, 0, !dbg !6299
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !6300

if.then23:                                        ; preds = %do.end17
  store i32 -14, ptr %retval, align 4, !dbg !6301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6301

if.end24:                                         ; preds = %do.end17
  store i32 0, ptr %retval, align 4, !dbg !6302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6302

cleanup:                                          ; preds = %if.end24, %if.then23, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6303
  call void @llvm.lifetime.end.p0(i64 16, ptr %info) #15, !dbg !6303
  %26 = load i32, ptr %retval, align 4, !dbg !6303
  ret i32 %26, !dbg !6303
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #4 align 16 !dbg !6304 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6308, metadata !DIExpression()), !dbg !6310
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6309, metadata !DIExpression()), !dbg !6311
  ret void, !dbg !6312
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @array_index_mask_nospec(i64 noundef %index, i64 noundef %size) #4 align 16 !dbg !6313 {
entry:
  %index.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !6318, metadata !DIExpression()), !dbg !6321
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6319, metadata !DIExpression()), !dbg !6322
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !6323
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6320, metadata !DIExpression()), !dbg !6324
  %0 = load i64, ptr %size.addr, align 8, !dbg !6325
  %1 = load i64, ptr %index.addr, align 8, !dbg !6326
  %2 = call i64 asm sideeffect "cmp $1,$2; sbb $0,$0;", "=r,imr,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1) #15, !dbg !6327, !srcloc !6328
  store i64 %2, ptr %mask, align 8, !dbg !6327
  %3 = load i64, ptr %mask, align 8, !dbg !6329
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !6330
  ret i64 %3, !dbg !6331
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fill_user_desc(ptr noundef %info, i32 noundef %idx, ptr noundef %desc) #0 align 16 !dbg !6332 {
entry:
  %info.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6338, metadata !DIExpression()), !dbg !6341
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !6339, metadata !DIExpression()), !dbg !6342
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6340, metadata !DIExpression()), !dbg !6343
  %0 = load ptr, ptr %info.addr, align 8, !dbg !6344
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 16, i1 false), !dbg !6345
  %1 = load i32, ptr %idx.addr, align 4, !dbg !6346
  %2 = load ptr, ptr %info.addr, align 8, !dbg !6347
  %entry_number = getelementptr inbounds %struct.user_desc, ptr %2, i32 0, i32 0, !dbg !6348
  store i32 %1, ptr %entry_number, align 4, !dbg !6349
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !6350
  %call = call i64 @get_desc_base(ptr noundef %3) #16, !dbg !6351
  %conv = trunc i64 %call to i32, !dbg !6351
  %4 = load ptr, ptr %info.addr, align 8, !dbg !6352
  %base_addr = getelementptr inbounds %struct.user_desc, ptr %4, i32 0, i32 1, !dbg !6353
  store i32 %conv, ptr %base_addr, align 4, !dbg !6354
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !6355
  %call1 = call i64 @get_desc_limit(ptr noundef %5) #16, !dbg !6356
  %conv2 = trunc i64 %call1 to i32, !dbg !6356
  %6 = load ptr, ptr %info.addr, align 8, !dbg !6357
  %limit = getelementptr inbounds %struct.user_desc, ptr %6, i32 0, i32 2, !dbg !6358
  store i32 %conv2, ptr %limit, align 4, !dbg !6359
  %7 = load ptr, ptr %desc.addr, align 8, !dbg !6360
  %d = getelementptr inbounds %struct.desc_struct, ptr %7, i32 0, i32 2, !dbg !6361
  %bf.load = load i32, ptr %d, align 1, !dbg !6361
  %bf.lshr = lshr i32 %bf.load, 22, !dbg !6361
  %bf.clear = and i32 %bf.lshr, 1, !dbg !6361
  %bf.cast = trunc i32 %bf.clear to i16, !dbg !6361
  %conv3 = zext i16 %bf.cast to i32, !dbg !6360
  %8 = load ptr, ptr %info.addr, align 8, !dbg !6362
  %seg_32bit = getelementptr inbounds %struct.user_desc, ptr %8, i32 0, i32 3, !dbg !6363
  %9 = trunc i32 %conv3 to i8, !dbg !6364
  %bf.load4 = load i8, ptr %seg_32bit, align 4, !dbg !6364
  %bf.value = and i8 %9, 1, !dbg !6364
  %bf.clear5 = and i8 %bf.load4, -2, !dbg !6364
  %bf.set = or i8 %bf.clear5, %bf.value, !dbg !6364
  store i8 %bf.set, ptr %seg_32bit, align 4, !dbg !6364
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !6364
  %10 = load ptr, ptr %desc.addr, align 8, !dbg !6365
  %type = getelementptr inbounds %struct.desc_struct, ptr %10, i32 0, i32 2, !dbg !6366
  %bf.load6 = load i32, ptr %type, align 1, !dbg !6366
  %bf.lshr7 = lshr i32 %bf.load6, 8, !dbg !6366
  %bf.clear8 = and i32 %bf.lshr7, 15, !dbg !6366
  %bf.cast9 = trunc i32 %bf.clear8 to i16, !dbg !6366
  %conv10 = zext i16 %bf.cast9 to i32, !dbg !6365
  %shr = ashr i32 %conv10, 2, !dbg !6367
  %11 = load ptr, ptr %info.addr, align 8, !dbg !6368
  %contents = getelementptr inbounds %struct.user_desc, ptr %11, i32 0, i32 3, !dbg !6369
  %12 = trunc i32 %shr to i8, !dbg !6370
  %bf.load11 = load i8, ptr %contents, align 4, !dbg !6370
  %bf.value12 = and i8 %12, 3, !dbg !6370
  %bf.shl = shl i8 %bf.value12, 1, !dbg !6370
  %bf.clear13 = and i8 %bf.load11, -7, !dbg !6370
  %bf.set14 = or i8 %bf.clear13, %bf.shl, !dbg !6370
  store i8 %bf.set14, ptr %contents, align 4, !dbg !6370
  %bf.result.cast15 = zext i8 %bf.value12 to i32, !dbg !6370
  %13 = load ptr, ptr %desc.addr, align 8, !dbg !6371
  %type16 = getelementptr inbounds %struct.desc_struct, ptr %13, i32 0, i32 2, !dbg !6372
  %bf.load17 = load i32, ptr %type16, align 1, !dbg !6372
  %bf.lshr18 = lshr i32 %bf.load17, 8, !dbg !6372
  %bf.clear19 = and i32 %bf.lshr18, 15, !dbg !6372
  %bf.cast20 = trunc i32 %bf.clear19 to i16, !dbg !6372
  %conv21 = zext i16 %bf.cast20 to i32, !dbg !6371
  %and = and i32 %conv21, 2, !dbg !6373
  %tobool = icmp ne i32 %and, 0, !dbg !6374
  %lnot = xor i1 %tobool, true, !dbg !6374
  %lnot.ext = zext i1 %lnot to i32, !dbg !6374
  %14 = load ptr, ptr %info.addr, align 8, !dbg !6375
  %read_exec_only = getelementptr inbounds %struct.user_desc, ptr %14, i32 0, i32 3, !dbg !6376
  %15 = trunc i32 %lnot.ext to i8, !dbg !6377
  %bf.load22 = load i8, ptr %read_exec_only, align 4, !dbg !6377
  %bf.value23 = and i8 %15, 1, !dbg !6377
  %bf.shl24 = shl i8 %bf.value23, 3, !dbg !6377
  %bf.clear25 = and i8 %bf.load22, -9, !dbg !6377
  %bf.set26 = or i8 %bf.clear25, %bf.shl24, !dbg !6377
  store i8 %bf.set26, ptr %read_exec_only, align 4, !dbg !6377
  %bf.result.cast27 = zext i8 %bf.value23 to i32, !dbg !6377
  %16 = load ptr, ptr %desc.addr, align 8, !dbg !6378
  %g = getelementptr inbounds %struct.desc_struct, ptr %16, i32 0, i32 2, !dbg !6379
  %bf.load28 = load i32, ptr %g, align 1, !dbg !6379
  %bf.lshr29 = lshr i32 %bf.load28, 23, !dbg !6379
  %bf.clear30 = and i32 %bf.lshr29, 1, !dbg !6379
  %bf.cast31 = trunc i32 %bf.clear30 to i16, !dbg !6379
  %conv32 = zext i16 %bf.cast31 to i32, !dbg !6378
  %17 = load ptr, ptr %info.addr, align 8, !dbg !6380
  %limit_in_pages = getelementptr inbounds %struct.user_desc, ptr %17, i32 0, i32 3, !dbg !6381
  %18 = trunc i32 %conv32 to i8, !dbg !6382
  %bf.load33 = load i8, ptr %limit_in_pages, align 4, !dbg !6382
  %bf.value34 = and i8 %18, 1, !dbg !6382
  %bf.shl35 = shl i8 %bf.value34, 4, !dbg !6382
  %bf.clear36 = and i8 %bf.load33, -17, !dbg !6382
  %bf.set37 = or i8 %bf.clear36, %bf.shl35, !dbg !6382
  store i8 %bf.set37, ptr %limit_in_pages, align 4, !dbg !6382
  %bf.result.cast38 = zext i8 %bf.value34 to i32, !dbg !6382
  %19 = load ptr, ptr %desc.addr, align 8, !dbg !6383
  %p = getelementptr inbounds %struct.desc_struct, ptr %19, i32 0, i32 2, !dbg !6384
  %bf.load39 = load i32, ptr %p, align 1, !dbg !6384
  %bf.lshr40 = lshr i32 %bf.load39, 15, !dbg !6384
  %bf.clear41 = and i32 %bf.lshr40, 1, !dbg !6384
  %bf.cast42 = trunc i32 %bf.clear41 to i16, !dbg !6384
  %tobool43 = icmp ne i16 %bf.cast42, 0, !dbg !6385
  %lnot44 = xor i1 %tobool43, true, !dbg !6385
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !6385
  %20 = load ptr, ptr %info.addr, align 8, !dbg !6386
  %seg_not_present = getelementptr inbounds %struct.user_desc, ptr %20, i32 0, i32 3, !dbg !6387
  %21 = trunc i32 %lnot.ext45 to i8, !dbg !6388
  %bf.load46 = load i8, ptr %seg_not_present, align 4, !dbg !6388
  %bf.value47 = and i8 %21, 1, !dbg !6388
  %bf.shl48 = shl i8 %bf.value47, 5, !dbg !6388
  %bf.clear49 = and i8 %bf.load46, -33, !dbg !6388
  %bf.set50 = or i8 %bf.clear49, %bf.shl48, !dbg !6388
  store i8 %bf.set50, ptr %seg_not_present, align 4, !dbg !6388
  %bf.result.cast51 = zext i8 %bf.value47 to i32, !dbg !6388
  %22 = load ptr, ptr %desc.addr, align 8, !dbg !6389
  %avl = getelementptr inbounds %struct.desc_struct, ptr %22, i32 0, i32 2, !dbg !6390
  %bf.load52 = load i32, ptr %avl, align 1, !dbg !6390
  %bf.lshr53 = lshr i32 %bf.load52, 20, !dbg !6390
  %bf.clear54 = and i32 %bf.lshr53, 1, !dbg !6390
  %bf.cast55 = trunc i32 %bf.clear54 to i16, !dbg !6390
  %conv56 = zext i16 %bf.cast55 to i32, !dbg !6389
  %23 = load ptr, ptr %info.addr, align 8, !dbg !6391
  %useable = getelementptr inbounds %struct.user_desc, ptr %23, i32 0, i32 3, !dbg !6392
  %24 = trunc i32 %conv56 to i8, !dbg !6393
  %bf.load57 = load i8, ptr %useable, align 4, !dbg !6393
  %bf.value58 = and i8 %24, 1, !dbg !6393
  %bf.shl59 = shl i8 %bf.value58, 6, !dbg !6393
  %bf.clear60 = and i8 %bf.load57, -65, !dbg !6393
  %bf.set61 = or i8 %bf.clear60, %bf.shl59, !dbg !6393
  store i8 %bf.set61, ptr %useable, align 4, !dbg !6393
  %bf.result.cast62 = zext i8 %bf.value58 to i32, !dbg !6393
  %25 = load ptr, ptr %desc.addr, align 8, !dbg !6394
  %l = getelementptr inbounds %struct.desc_struct, ptr %25, i32 0, i32 2, !dbg !6395
  %bf.load63 = load i32, ptr %l, align 1, !dbg !6395
  %bf.lshr64 = lshr i32 %bf.load63, 21, !dbg !6395
  %bf.clear65 = and i32 %bf.lshr64, 1, !dbg !6395
  %bf.cast66 = trunc i32 %bf.clear65 to i16, !dbg !6395
  %conv67 = zext i16 %bf.cast66 to i32, !dbg !6394
  %26 = load ptr, ptr %info.addr, align 8, !dbg !6396
  %lm = getelementptr inbounds %struct.user_desc, ptr %26, i32 0, i32 3, !dbg !6397
  %27 = trunc i32 %conv67 to i8, !dbg !6398
  %bf.load68 = load i8, ptr %lm, align 4, !dbg !6398
  %bf.value69 = and i8 %27, 1, !dbg !6398
  %bf.shl70 = shl i8 %bf.value69, 7, !dbg !6398
  %bf.clear71 = and i8 %bf.load68, 127, !dbg !6398
  %bf.set72 = or i8 %bf.clear71, %bf.shl70, !dbg !6398
  store i8 %bf.set72, ptr %lm, align 4, !dbg !6398
  %bf.result.cast73 = zext i8 %bf.value69 to i32, !dbg !6398
  ret void, !dbg !6399
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #3 align 16 !dbg !6400 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6402, metadata !DIExpression()), !dbg !6405
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6403, metadata !DIExpression()), !dbg !6406
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6404, metadata !DIExpression()), !dbg !6407
  %0 = load ptr, ptr %from.addr, align 8, !dbg !6408
  %1 = load i64, ptr %n.addr, align 8, !dbg !6410
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #16, !dbg !6411
  br i1 %call, label %if.then, label %if.end, !dbg !6412

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6413
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6414
  %4 = load i64, ptr %n.addr, align 8, !dbg !6415
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #16, !dbg !6416
  store i64 %call1, ptr %n.addr, align 8, !dbg !6417
  br label %if.end, !dbg !6418

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6419
  ret i64 %5, !dbg !6420
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__x64_sys_get_thread_area(ptr noundef %regs) #0 align 16 !dbg !6421 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6423, metadata !DIExpression()), !dbg !6424
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6424
  %di = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 14, !dbg !6424
  %1 = load i64, ptr %di, align 8, !dbg !6424
  %call = call i64 @__se_sys_get_thread_area(i64 noundef %1) #16, !dbg !6424
  ret i64 %call, !dbg !6424
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__se_sys_get_thread_area(i64 noundef %u_info) #0 align 16 !dbg !6425 {
entry:
  %u_info.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %u_info, ptr %u_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u_info.addr, metadata !6427, metadata !DIExpression()), !dbg !6429
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !6429
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6428, metadata !DIExpression()), !dbg !6429
  %0 = load i64, ptr %u_info.addr, align 8, !dbg !6429
  %1 = inttoptr i64 %0 to ptr, !dbg !6429
  %call = call i64 @__do_sys_get_thread_area(ptr noundef %1) #16, !dbg !6429
  store i64 %call, ptr %ret, align 8, !dbg !6429
  br label %do.body, !dbg !6429

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6430

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6430

do.end:                                           ; preds = %do.cond
  %2 = load i64, ptr %ret, align 8, !dbg !6429
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !6429
  ret i64 %2, !dbg !6429
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__ia32_sys_get_thread_area(ptr noundef %regs) #0 align 16 !dbg !6432 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6434, metadata !DIExpression()), !dbg !6435
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !6435
  %bx = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 5, !dbg !6435
  %1 = load i64, ptr %bx, align 8, !dbg !6435
  %conv = trunc i64 %1 to i32, !dbg !6435
  %conv1 = zext i32 %conv to i64, !dbg !6435
  %call = call i64 @__se_sys_get_thread_area(i64 noundef %conv1) #16, !dbg !6435
  ret i64 %call, !dbg !6435
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @regset_tls_active(ptr noundef %target, ptr noundef %regset) #0 align 16 !dbg !6436 {
entry:
  %target.addr = alloca ptr, align 8
  %regset.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !6472, metadata !DIExpression()), !dbg !6476
  store ptr %regset, ptr %regset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regset.addr, metadata !6473, metadata !DIExpression()), !dbg !6477
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #15, !dbg !6478
  call void @llvm.dbg.declare(metadata ptr %t, metadata !6474, metadata !DIExpression()), !dbg !6479
  %0 = load ptr, ptr %target.addr, align 8, !dbg !6480
  %thread = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 197, !dbg !6481
  store ptr %thread, ptr %t, align 8, !dbg !6479
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #15, !dbg !6482
  call void @llvm.dbg.declare(metadata ptr %n, metadata !6475, metadata !DIExpression()), !dbg !6483
  store i32 3, ptr %n, align 4, !dbg !6483
  br label %while.cond, !dbg !6484

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %n, align 4, !dbg !6485
  %cmp = icmp sgt i32 %1, 0, !dbg !6486
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6487

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %t, align 8, !dbg !6488
  %tls_array = getelementptr inbounds %struct.thread_struct, ptr %2, i32 0, i32 0, !dbg !6489
  %3 = load i32, ptr %n, align 4, !dbg !6490
  %sub = sub i32 %3, 1, !dbg !6491
  %idxprom = sext i32 %sub to i64, !dbg !6488
  %arrayidx = getelementptr [3 x %struct.desc_struct], ptr %tls_array, i64 0, i64 %idxprom, !dbg !6488
  %call = call i32 @desc_empty(ptr noundef %arrayidx) #16, !dbg !6492
  %tobool = icmp ne i32 %call, 0, !dbg !6487
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ], !dbg !6493
  br i1 %4, label %while.body, label %while.end, !dbg !6484

while.body:                                       ; preds = %land.end
  %5 = load i32, ptr %n, align 4, !dbg !6494
  %dec = add i32 %5, -1, !dbg !6494
  store i32 %dec, ptr %n, align 4, !dbg !6494
  br label %while.cond, !dbg !6484, !llvm.loop !6495

while.end:                                        ; preds = %land.end
  %6 = load i32, ptr %n, align 4, !dbg !6497
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #15, !dbg !6498
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #15, !dbg !6498
  ret i32 %6, !dbg !6499
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @desc_empty(ptr noundef %ptr) #4 align 16 !dbg !6500 {
entry:
  %ptr.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6504, metadata !DIExpression()), !dbg !6508
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #15, !dbg !6509
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !6505, metadata !DIExpression()), !dbg !6510
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6511
  store ptr %0, ptr %desc, align 8, !dbg !6510
  %1 = load ptr, ptr %desc, align 8, !dbg !6512
  %arrayidx = getelementptr i32, ptr %1, i64 0, !dbg !6512
  %2 = load i32, ptr %arrayidx, align 4, !dbg !6512
  %3 = load ptr, ptr %desc, align 8, !dbg !6513
  %arrayidx1 = getelementptr i32, ptr %3, i64 1, !dbg !6513
  %4 = load i32, ptr %arrayidx1, align 4, !dbg !6513
  %or = or i32 %2, %4, !dbg !6514
  %tobool = icmp ne i32 %or, 0, !dbg !6515
  %lnot = xor i1 %tobool, true, !dbg !6515
  %lnot.ext = zext i1 %lnot to i32, !dbg !6515
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #15, !dbg !6516
  ret i32 %lnot.ext, !dbg !6517
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @regset_tls_get(ptr noundef %target, ptr noundef %regset, ptr %to.coerce0, i64 %to.coerce1) #0 align 16 !dbg !6518 {
entry:
  %to = alloca %struct.membuf, align 8
  %target.addr = alloca ptr, align 8
  %regset.addr = alloca ptr, align 8
  %tls = alloca ptr, align 8
  %v = alloca %struct.user_desc, align 4
  %pos = alloca i32, align 4
  %0 = getelementptr inbounds { ptr, i64 }, ptr %to, i32 0, i32 0
  store ptr %to.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %to, i32 0, i32 1
  store i64 %to.coerce1, ptr %1, align 8
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !6520, metadata !DIExpression()), !dbg !6526
  store ptr %regset, ptr %regset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regset.addr, metadata !6521, metadata !DIExpression()), !dbg !6527
  call void @llvm.dbg.declare(metadata ptr %to, metadata !6522, metadata !DIExpression()), !dbg !6528
  call void @llvm.lifetime.start.p0(i64 8, ptr %tls) #15, !dbg !6529
  call void @llvm.dbg.declare(metadata ptr %tls, metadata !6523, metadata !DIExpression()), !dbg !6530
  call void @llvm.lifetime.start.p0(i64 16, ptr %v) #15, !dbg !6531
  call void @llvm.dbg.declare(metadata ptr %v, metadata !6524, metadata !DIExpression()), !dbg !6532
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #15, !dbg !6533
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !6525, metadata !DIExpression()), !dbg !6534
  store i32 0, ptr %pos, align 4, !dbg !6535
  %2 = load ptr, ptr %target.addr, align 8, !dbg !6537
  %thread = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 197, !dbg !6538
  %tls_array = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 0, !dbg !6539
  %arraydecay = getelementptr inbounds [3 x %struct.desc_struct], ptr %tls_array, i64 0, i64 0, !dbg !6537
  store ptr %arraydecay, ptr %tls, align 8, !dbg !6540
  br label %for.cond, !dbg !6541

for.cond:                                         ; preds = %for.inc, %entry
  %left = getelementptr inbounds %struct.membuf, ptr %to, i32 0, i32 1, !dbg !6542
  %3 = load i64, ptr %left, align 8, !dbg !6542
  %tobool = icmp ne i64 %3, 0, !dbg !6544
  br i1 %tobool, label %for.body, label %for.end, !dbg !6544

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %pos, align 4, !dbg !6545
  %add = add i32 12, %4, !dbg !6547
  %5 = load ptr, ptr %tls, align 8, !dbg !6548
  call void @fill_user_desc(ptr noundef %v, i32 noundef %add, ptr noundef %5) #16, !dbg !6549
  %call = call i32 @membuf_write(ptr noundef %to, ptr noundef %v, i64 noundef 16) #16, !dbg !6550
  br label %for.inc, !dbg !6551

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %pos, align 4, !dbg !6552
  %inc = add i32 %6, 1, !dbg !6552
  store i32 %inc, ptr %pos, align 4, !dbg !6552
  %7 = load ptr, ptr %tls, align 8, !dbg !6553
  %incdec.ptr = getelementptr %struct.desc_struct, ptr %7, i32 1, !dbg !6553
  store ptr %incdec.ptr, ptr %tls, align 8, !dbg !6553
  br label %for.cond, !dbg !6554, !llvm.loop !6555

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #15, !dbg !6557
  call void @llvm.lifetime.end.p0(i64 16, ptr %v) #15, !dbg !6557
  call void @llvm.lifetime.end.p0(i64 8, ptr %tls) #15, !dbg !6557
  ret i32 0, !dbg !6558
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @membuf_write(ptr noundef %s, ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6559 {
entry:
  %s.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6564, metadata !DIExpression()), !dbg !6567
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6565, metadata !DIExpression()), !dbg !6568
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6566, metadata !DIExpression()), !dbg !6569
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6570
  %left = getelementptr inbounds %struct.membuf, ptr %0, i32 0, i32 1, !dbg !6572
  %1 = load i64, ptr %left, align 8, !dbg !6572
  %tobool = icmp ne i64 %1, 0, !dbg !6570
  br i1 %tobool, label %if.then, label %if.end6, !dbg !6573

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6574
  %3 = load ptr, ptr %s.addr, align 8, !dbg !6577
  %left1 = getelementptr inbounds %struct.membuf, ptr %3, i32 0, i32 1, !dbg !6578
  %4 = load i64, ptr %left1, align 8, !dbg !6578
  %cmp = icmp ugt i64 %2, %4, !dbg !6579
  br i1 %cmp, label %if.then2, label %if.end, !dbg !6580

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %s.addr, align 8, !dbg !6581
  %left3 = getelementptr inbounds %struct.membuf, ptr %5, i32 0, i32 1, !dbg !6582
  %6 = load i64, ptr %left3, align 8, !dbg !6582
  store i64 %6, ptr %size.addr, align 8, !dbg !6583
  br label %if.end, !dbg !6584

if.end:                                           ; preds = %if.then2, %if.then
  %7 = load ptr, ptr %s.addr, align 8, !dbg !6585
  %p = getelementptr inbounds %struct.membuf, ptr %7, i32 0, i32 0, !dbg !6586
  %8 = load ptr, ptr %p, align 8, !dbg !6586
  %9 = load ptr, ptr %v.addr, align 8, !dbg !6587
  %10 = load i64, ptr %size.addr, align 8, !dbg !6588
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %9, i64 %10, i1 false), !dbg !6589
  %11 = load i64, ptr %size.addr, align 8, !dbg !6590
  %12 = load ptr, ptr %s.addr, align 8, !dbg !6591
  %p4 = getelementptr inbounds %struct.membuf, ptr %12, i32 0, i32 0, !dbg !6592
  %13 = load ptr, ptr %p4, align 8, !dbg !6593
  %add.ptr = getelementptr i8, ptr %13, i64 %11, !dbg !6593
  store ptr %add.ptr, ptr %p4, align 8, !dbg !6593
  %14 = load i64, ptr %size.addr, align 8, !dbg !6594
  %15 = load ptr, ptr %s.addr, align 8, !dbg !6595
  %left5 = getelementptr inbounds %struct.membuf, ptr %15, i32 0, i32 1, !dbg !6596
  %16 = load i64, ptr %left5, align 8, !dbg !6597
  %sub = sub i64 %16, %14, !dbg !6597
  store i64 %sub, ptr %left5, align 8, !dbg !6597
  br label %if.end6, !dbg !6598

if.end6:                                          ; preds = %if.end, %entry
  %17 = load ptr, ptr %s.addr, align 8, !dbg !6599
  %left7 = getelementptr inbounds %struct.membuf, ptr %17, i32 0, i32 1, !dbg !6600
  %18 = load i64, ptr %left7, align 8, !dbg !6600
  %conv = trunc i64 %18 to i32, !dbg !6599
  ret i32 %conv, !dbg !6601
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @regset_tls_set(ptr noundef %target, ptr noundef %regset, i32 noundef %pos, i32 noundef %count, ptr noundef %kbuf, ptr noundef %ubuf) #0 align 16 !dbg !6602 {
entry:
  %retval = alloca i32, align 4
  %target.addr = alloca ptr, align 8
  %regset.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %kbuf.addr = alloca ptr, align 8
  %ubuf.addr = alloca ptr, align 8
  %infobuf = alloca [3 x %struct.user_desc], align 16
  %info = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !6604, metadata !DIExpression()), !dbg !6614
  store ptr %regset, ptr %regset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regset.addr, metadata !6605, metadata !DIExpression()), !dbg !6615
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6606, metadata !DIExpression()), !dbg !6616
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6607, metadata !DIExpression()), !dbg !6617
  store ptr %kbuf, ptr %kbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kbuf.addr, metadata !6608, metadata !DIExpression()), !dbg !6618
  store ptr %ubuf, ptr %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubuf.addr, metadata !6609, metadata !DIExpression()), !dbg !6619
  call void @llvm.lifetime.start.p0(i64 48, ptr %infobuf) #15, !dbg !6620
  call void @llvm.dbg.declare(metadata ptr %infobuf, metadata !6610, metadata !DIExpression()), !dbg !6621
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #15, !dbg !6622
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6612, metadata !DIExpression()), !dbg !6623
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6624
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6613, metadata !DIExpression()), !dbg !6625
  %0 = load i32, ptr %pos.addr, align 4, !dbg !6626
  %conv = zext i32 %0 to i64, !dbg !6626
  %cmp = icmp uge i64 %conv, 48, !dbg !6628
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6629

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %pos.addr, align 4, !dbg !6630
  %conv2 = zext i32 %1 to i64, !dbg !6630
  %rem = urem i64 %conv2, 16, !dbg !6631
  %cmp3 = icmp ne i64 %rem, 0, !dbg !6632
  br i1 %cmp3, label %if.then, label %lor.lhs.false5, !dbg !6633

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %count.addr, align 4, !dbg !6634
  %conv6 = zext i32 %2 to i64, !dbg !6634
  %rem7 = urem i64 %conv6, 16, !dbg !6635
  %cmp8 = icmp ne i64 %rem7, 0, !dbg !6636
  br i1 %cmp8, label %if.then, label %if.end, !dbg !6637

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !6638
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6638

if.end:                                           ; preds = %lor.lhs.false5
  %3 = load ptr, ptr %kbuf.addr, align 8, !dbg !6639
  %tobool = icmp ne ptr %3, null, !dbg !6639
  br i1 %tobool, label %if.then10, label %if.else, !dbg !6641

if.then10:                                        ; preds = %if.end
  %4 = load ptr, ptr %kbuf.addr, align 8, !dbg !6642
  store ptr %4, ptr %info, align 8, !dbg !6643
  br label %if.end17, !dbg !6644

if.else:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [3 x %struct.user_desc], ptr %infobuf, i64 0, i64 0, !dbg !6645
  %5 = load ptr, ptr %ubuf.addr, align 8, !dbg !6647
  %6 = load i32, ptr %count.addr, align 4, !dbg !6648
  %conv11 = zext i32 %6 to i64, !dbg !6648
  %call = call i64 @__copy_from_user(ptr noundef %arraydecay, ptr noundef %5, i64 noundef %conv11) #16, !dbg !6649
  %tobool12 = icmp ne i64 %call, 0, !dbg !6649
  br i1 %tobool12, label %if.then13, label %if.else14, !dbg !6650

if.then13:                                        ; preds = %if.else
  store i32 -14, ptr %retval, align 4, !dbg !6651
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6651

if.else14:                                        ; preds = %if.else
  %arraydecay15 = getelementptr inbounds [3 x %struct.user_desc], ptr %infobuf, i64 0, i64 0, !dbg !6652
  store ptr %arraydecay15, ptr %info, align 8, !dbg !6653
  br label %if.end16

if.end16:                                         ; preds = %if.else14
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then10
  store i32 0, ptr %i, align 4, !dbg !6654
  br label %for.cond, !dbg !6656

for.cond:                                         ; preds = %for.inc, %if.end17
  %7 = load i32, ptr %i, align 4, !dbg !6657
  %conv18 = sext i32 %7 to i64, !dbg !6657
  %8 = load i32, ptr %count.addr, align 4, !dbg !6659
  %conv19 = zext i32 %8 to i64, !dbg !6659
  %div = udiv i64 %conv19, 16, !dbg !6660
  %cmp20 = icmp ult i64 %conv18, %div, !dbg !6661
  br i1 %cmp20, label %for.body, label %for.end, !dbg !6662

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %info, align 8, !dbg !6663
  %10 = load i32, ptr %i, align 4, !dbg !6665
  %idx.ext = sext i32 %10 to i64, !dbg !6666
  %add.ptr = getelementptr %struct.user_desc, ptr %9, i64 %idx.ext, !dbg !6666
  %call22 = call zeroext i1 @tls_desc_okay(ptr noundef %add.ptr) #16, !dbg !6667
  br i1 %call22, label %if.end24, label %if.then23, !dbg !6668

if.then23:                                        ; preds = %for.body
  store i32 -22, ptr %retval, align 4, !dbg !6669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6669

if.end24:                                         ; preds = %for.body
  br label %for.inc, !dbg !6670

for.inc:                                          ; preds = %if.end24
  %11 = load i32, ptr %i, align 4, !dbg !6671
  %inc = add i32 %11, 1, !dbg !6671
  store i32 %inc, ptr %i, align 4, !dbg !6671
  br label %for.cond, !dbg !6672, !llvm.loop !6673

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %target.addr, align 8, !dbg !6675
  %13 = load i32, ptr %pos.addr, align 4, !dbg !6676
  %conv25 = zext i32 %13 to i64, !dbg !6676
  %div26 = udiv i64 %conv25, 16, !dbg !6677
  %add = add i64 12, %div26, !dbg !6678
  %conv27 = trunc i64 %add to i32, !dbg !6679
  %14 = load ptr, ptr %info, align 8, !dbg !6680
  %15 = load i32, ptr %count.addr, align 4, !dbg !6681
  %conv28 = zext i32 %15 to i64, !dbg !6681
  %div29 = udiv i64 %conv28, 16, !dbg !6682
  %conv30 = trunc i64 %div29 to i32, !dbg !6681
  call void @set_tls_desc(ptr noundef %12, i32 noundef %conv27, ptr noundef %14, i32 noundef %conv30) #16, !dbg !6683
  store i32 0, ptr %retval, align 4, !dbg !6684
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6684

cleanup:                                          ; preds = %for.end, %if.then23, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6685
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #15, !dbg !6685
  call void @llvm.lifetime.end.p0(i64 48, ptr %infobuf) #15, !dbg !6685
  %16 = load i32, ptr %retval, align 4, !dbg !6685
  ret i32 %16, !dbg !6685
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #3 align 16 !dbg !6686 {
entry:
  %retval = alloca i64, align 8
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %res = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6688, metadata !DIExpression()), !dbg !6692
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6689, metadata !DIExpression()), !dbg !6693
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6690, metadata !DIExpression()), !dbg !6694
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #15, !dbg !6695
  call void @llvm.dbg.declare(metadata ptr %res, metadata !6691, metadata !DIExpression()), !dbg !6696
  call void @might_fault() #16, !dbg !6697
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6698
  %1 = load ptr, ptr %from.addr, align 8, !dbg !6699
  %2 = load i64, ptr %n.addr, align 8, !dbg !6700
  call void @instrument_copy_from_user_before(ptr noundef %0, ptr noundef %1, i64 noundef %2) #16, !dbg !6701
  %call = call zeroext i1 @should_fail_usercopy() #16, !dbg !6702
  br i1 %call, label %if.then, label %if.end, !dbg !6704

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %n.addr, align 8, !dbg !6705
  store i64 %3, ptr %retval, align 8, !dbg !6706
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6706

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %to.addr, align 8, !dbg !6707
  %5 = load i64, ptr %n.addr, align 8, !dbg !6708
  call void @check_object_size(ptr noundef %4, i64 noundef %5, i1 noundef zeroext false) #16, !dbg !6709
  %6 = load ptr, ptr %to.addr, align 8, !dbg !6710
  %7 = load ptr, ptr %from.addr, align 8, !dbg !6711
  %8 = load i64, ptr %n.addr, align 8, !dbg !6712
  %call1 = call i64 @raw_copy_from_user(ptr noundef %6, ptr noundef %7, i64 noundef %8) #16, !dbg !6713
  store i64 %call1, ptr %res, align 8, !dbg !6714
  %9 = load ptr, ptr %to.addr, align 8, !dbg !6715
  %10 = load ptr, ptr %from.addr, align 8, !dbg !6716
  %11 = load i64, ptr %n.addr, align 8, !dbg !6717
  %12 = load i64, ptr %res, align 8, !dbg !6718
  call void @instrument_copy_from_user_after(ptr noundef %9, ptr noundef %10, i64 noundef %11, i64 noundef %12) #16, !dbg !6719
  %13 = load i64, ptr %res, align 8, !dbg !6720
  store i64 %13, ptr %retval, align 8, !dbg !6721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6721

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #15, !dbg !6722
  %14 = load i64, ptr %retval, align 8, !dbg !6722
  ret i64 %14, !dbg !6722
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #3 align 16 !dbg !6723 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6727, metadata !DIExpression()), !dbg !6737
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6728, metadata !DIExpression()), !dbg !6738
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6729, metadata !DIExpression()), !dbg !6739
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #15, !dbg !6740
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6730, metadata !DIExpression()), !dbg !6741
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6742
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6743
  %conv = trunc i64 %1 to i32, !dbg !6743
  store i32 %conv, ptr %sz, align 4, !dbg !6741
  %2 = load i32, ptr %sz, align 4, !dbg !6744
  %cmp = icmp sge i32 %2, 0, !dbg !6744
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6744

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6744
  %conv2 = sext i32 %3 to i64, !dbg !6744
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6744
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6744
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6746
  %lnot = xor i1 %5, true, !dbg !6744
  %lnot5 = xor i1 %lnot, true, !dbg !6744
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6744
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6744
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6744
  %tobool = icmp ne i64 %expval, 0, !dbg !6744
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6747

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6748
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6751
  br i1 %7, label %if.else, label %if.then7, !dbg !6752

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6753
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6754
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #16, !dbg !6755
  br label %if.end11, !dbg !6755

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6756, !range !6758, !noundef !417
  %tobool8 = trunc i8 %10 to i1, !dbg !6756
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6759

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #16, !dbg !6760, !srcloc !6761
  br label %if.end, !dbg !6760

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #16, !dbg !6762, !srcloc !6763
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6764
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6764

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6765
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6731, metadata !DIExpression()), !dbg !6765
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6765
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6765
  %lnot15 = xor i1 %cmp13, true, !dbg !6765
  %lnot17 = xor i1 %lnot15, true, !dbg !6765
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6765
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6765
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6766
  %tobool19 = icmp ne i32 %12, 0, !dbg !6766
  %lnot20 = xor i1 %tobool19, true, !dbg !6766
  %lnot22 = xor i1 %lnot20, true, !dbg !6766
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6766
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6766
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6766
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6766
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6765

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6766

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !6767
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6734, metadata !DIExpression()), !dbg !6767
  store i32 2307, ptr %__flags, align 4, !dbg !6767
  br label %do.body28, !dbg !6767

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6768

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6768

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6767

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6770
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 249, i32 %13, i64 12) #15, !dbg !6770, !srcloc !6772
  br label %do.cond30, !dbg !6770

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6770

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6767

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6773

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6773

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !6766
  br label %do.cond35, !dbg !6767

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6767

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6767

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6765
  %tobool38 = icmp ne i32 %14, 0, !dbg !6765
  %lnot39 = xor i1 %tobool38, true, !dbg !6765
  %lnot41 = xor i1 %lnot39, true, !dbg !6765
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6765
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6765
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6765
  store i64 %expval44, ptr %tmp, align 8, !dbg !6766
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6775
  %15 = load i64, ptr %tmp, align 8, !dbg !6765
  %tobool45 = icmp ne i64 %15, 0, !dbg !6775
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6776

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6777
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6777

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6778
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6779
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6780, !range !6758, !noundef !417
  %tobool48 = trunc i8 %18 to i1, !dbg !6780
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #16, !dbg !6781
  store i1 true, ptr %retval, align 1, !dbg !6782
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6782

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #15, !dbg !6783
  %19 = load i1, ptr %retval, align 1, !dbg !6783
  ret i1 %19, !dbg !6783
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6784 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #4 align 16 !dbg !6785 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6789, metadata !DIExpression()), !dbg !6791
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6790, metadata !DIExpression()), !dbg !6792
  %0 = load i32, ptr %size.addr, align 4, !dbg !6793
  %1 = load i64, ptr %count.addr, align 8, !dbg !6795
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #16, !dbg !6796
  ret void, !dbg !6797
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6798 dso_local void @__bad_copy_from() #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6799 dso_local void @__bad_copy_to() #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #4 align 16 !dbg !6800 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6804, metadata !DIExpression()), !dbg !6807
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6805, metadata !DIExpression()), !dbg !6808
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6806, metadata !DIExpression()), !dbg !6809
  ret void, !dbg !6810
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6811 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @LDT_zero(ptr noundef %info) #4 align 16 !dbg !6812 {
entry:
  %info.addr = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6814, metadata !DIExpression()), !dbg !6815
  %0 = load ptr, ptr %info.addr, align 8, !dbg !6816
  %base_addr = getelementptr inbounds %struct.user_desc, ptr %0, i32 0, i32 1, !dbg !6817
  %1 = load i32, ptr %base_addr, align 4, !dbg !6817
  %cmp = icmp eq i32 %1, 0, !dbg !6818
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !6819

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %info.addr, align 8, !dbg !6820
  %limit = getelementptr inbounds %struct.user_desc, ptr %2, i32 0, i32 2, !dbg !6821
  %3 = load i32, ptr %limit, align 4, !dbg !6821
  %cmp1 = icmp eq i32 %3, 0, !dbg !6822
  br i1 %cmp1, label %land.lhs.true2, label %land.end, !dbg !6823

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %info.addr, align 8, !dbg !6824
  %contents = getelementptr inbounds %struct.user_desc, ptr %4, i32 0, i32 3, !dbg !6825
  %bf.load = load i8, ptr %contents, align 4, !dbg !6825
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !6825
  %bf.clear = and i8 %bf.lshr, 3, !dbg !6825
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6825
  %cmp3 = icmp eq i32 %bf.cast, 0, !dbg !6826
  br i1 %cmp3, label %land.lhs.true4, label %land.end, !dbg !6827

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %5 = load ptr, ptr %info.addr, align 8, !dbg !6828
  %read_exec_only = getelementptr inbounds %struct.user_desc, ptr %5, i32 0, i32 3, !dbg !6829
  %bf.load5 = load i8, ptr %read_exec_only, align 4, !dbg !6829
  %bf.lshr6 = lshr i8 %bf.load5, 3, !dbg !6829
  %bf.clear7 = and i8 %bf.lshr6, 1, !dbg !6829
  %bf.cast8 = zext i8 %bf.clear7 to i32, !dbg !6829
  %cmp9 = icmp eq i32 %bf.cast8, 0, !dbg !6830
  br i1 %cmp9, label %land.lhs.true10, label %land.end, !dbg !6831

land.lhs.true10:                                  ; preds = %land.lhs.true4
  %6 = load ptr, ptr %info.addr, align 8, !dbg !6832
  %seg_32bit = getelementptr inbounds %struct.user_desc, ptr %6, i32 0, i32 3, !dbg !6833
  %bf.load11 = load i8, ptr %seg_32bit, align 4, !dbg !6833
  %bf.clear12 = and i8 %bf.load11, 1, !dbg !6833
  %bf.cast13 = zext i8 %bf.clear12 to i32, !dbg !6833
  %cmp14 = icmp eq i32 %bf.cast13, 0, !dbg !6834
  br i1 %cmp14, label %land.lhs.true15, label %land.end, !dbg !6835

land.lhs.true15:                                  ; preds = %land.lhs.true10
  %7 = load ptr, ptr %info.addr, align 8, !dbg !6836
  %limit_in_pages = getelementptr inbounds %struct.user_desc, ptr %7, i32 0, i32 3, !dbg !6837
  %bf.load16 = load i8, ptr %limit_in_pages, align 4, !dbg !6837
  %bf.lshr17 = lshr i8 %bf.load16, 4, !dbg !6837
  %bf.clear18 = and i8 %bf.lshr17, 1, !dbg !6837
  %bf.cast19 = zext i8 %bf.clear18 to i32, !dbg !6837
  %cmp20 = icmp eq i32 %bf.cast19, 0, !dbg !6838
  br i1 %cmp20, label %land.lhs.true21, label %land.end, !dbg !6839

land.lhs.true21:                                  ; preds = %land.lhs.true15
  %8 = load ptr, ptr %info.addr, align 8, !dbg !6840
  %seg_not_present = getelementptr inbounds %struct.user_desc, ptr %8, i32 0, i32 3, !dbg !6841
  %bf.load22 = load i8, ptr %seg_not_present, align 4, !dbg !6841
  %bf.lshr23 = lshr i8 %bf.load22, 5, !dbg !6841
  %bf.clear24 = and i8 %bf.lshr23, 1, !dbg !6841
  %bf.cast25 = zext i8 %bf.clear24 to i32, !dbg !6841
  %cmp26 = icmp eq i32 %bf.cast25, 0, !dbg !6842
  br i1 %cmp26, label %land.rhs, label %land.end, !dbg !6843

land.rhs:                                         ; preds = %land.lhs.true21
  %9 = load ptr, ptr %info.addr, align 8, !dbg !6844
  %useable = getelementptr inbounds %struct.user_desc, ptr %9, i32 0, i32 3, !dbg !6845
  %bf.load27 = load i8, ptr %useable, align 4, !dbg !6845
  %bf.lshr28 = lshr i8 %bf.load27, 6, !dbg !6845
  %bf.clear29 = and i8 %bf.lshr28, 1, !dbg !6845
  %bf.cast30 = zext i8 %bf.clear29 to i32, !dbg !6845
  %cmp31 = icmp eq i32 %bf.cast30, 0, !dbg !6846
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true21, %land.lhs.true15, %land.lhs.true10, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %10 = phi i1 [ false, %land.lhs.true21 ], [ false, %land.lhs.true15 ], [ false, %land.lhs.true10 ], [ false, %land.lhs.true4 ], [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp31, %land.rhs ], !dbg !6847
  ret i1 %10, !dbg !6848
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #3 align 16 !dbg !6849 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6852, metadata !DIExpression()), !dbg !6859
  br label %do.body, !dbg !6860

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #15, !dbg !6861
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !6853, metadata !DIExpression()), !dbg !6861
  %0 = load i32, ptr %val.addr, align 4, !dbg !6861
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6861
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6861

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !6861
  %cmp = icmp eq i32 %2, 1, !dbg !6861
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !6861

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !6861
  %cmp1 = icmp eq i32 %3, -1, !dbg !6861
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !6861

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !6861
  br label %cond.end, !dbg !6861

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !6861

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !6861
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !6861
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !6862
  %cmp2 = icmp eq i32 %5, 1, !dbg !6862
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6861

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !6863, !srcloc !6865
  br label %if.end8, !dbg !6862

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !6866
  %cmp3 = icmp eq i32 %6, -1, !dbg !6866
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !6862

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !6867, !srcloc !6869
  br label %if.end, !dbg !6866

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !6866

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #15, !dbg !6870
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !6855, metadata !DIExpression()), !dbg !6870
  %7 = load i32, ptr %val.addr, align 4, !dbg !6870
  %conv = sext i32 %7 to i64, !dbg !6870
  %and = and i64 %conv, 4294967295, !dbg !6870
  %conv7 = trunc i64 %and to i32, !dbg !6870
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !6870
  %8 = load i32, ptr %pto_val__, align 4, !dbg !6870
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !6870, !srcloc !6871
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #15, !dbg !6866
  br label %do.cond, !dbg !6870

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !6870

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #15, !dbg !6860
  br label %do.end10, !dbg !6861

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !6872
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #3 align 16 !dbg !6873 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !6878, metadata !DIExpression()), !dbg !6879
  ret void, !dbg !6880
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fill_ldt(ptr noundef %desc, ptr noundef %info) #4 align 16 !dbg !6881 {
entry:
  %desc.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6885, metadata !DIExpression()), !dbg !6887
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6886, metadata !DIExpression()), !dbg !6888
  %0 = load ptr, ptr %info.addr, align 8, !dbg !6889
  %limit = getelementptr inbounds %struct.user_desc, ptr %0, i32 0, i32 2, !dbg !6890
  %1 = load i32, ptr %limit, align 4, !dbg !6890
  %and = and i32 %1, 65535, !dbg !6891
  %conv = trunc i32 %and to i16, !dbg !6889
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !6892
  %limit0 = getelementptr inbounds %struct.desc_struct, ptr %2, i32 0, i32 0, !dbg !6893
  store i16 %conv, ptr %limit0, align 1, !dbg !6894
  %3 = load ptr, ptr %info.addr, align 8, !dbg !6895
  %base_addr = getelementptr inbounds %struct.user_desc, ptr %3, i32 0, i32 1, !dbg !6896
  %4 = load i32, ptr %base_addr, align 4, !dbg !6896
  %and1 = and i32 %4, 65535, !dbg !6897
  %conv2 = trunc i32 %and1 to i16, !dbg !6898
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !6899
  %base0 = getelementptr inbounds %struct.desc_struct, ptr %5, i32 0, i32 1, !dbg !6900
  store i16 %conv2, ptr %base0, align 1, !dbg !6901
  %6 = load ptr, ptr %info.addr, align 8, !dbg !6902
  %base_addr3 = getelementptr inbounds %struct.user_desc, ptr %6, i32 0, i32 1, !dbg !6903
  %7 = load i32, ptr %base_addr3, align 4, !dbg !6903
  %and4 = and i32 %7, 16711680, !dbg !6904
  %shr = lshr i32 %and4, 16, !dbg !6905
  %conv5 = trunc i32 %shr to i16, !dbg !6906
  %8 = load ptr, ptr %desc.addr, align 8, !dbg !6907
  %base1 = getelementptr inbounds %struct.desc_struct, ptr %8, i32 0, i32 2, !dbg !6908
  %9 = zext i16 %conv5 to i32, !dbg !6909
  %bf.load = load i32, ptr %base1, align 1, !dbg !6909
  %bf.value = and i32 %9, 255, !dbg !6909
  %bf.clear = and i32 %bf.load, -256, !dbg !6909
  %bf.set = or i32 %bf.clear, %bf.value, !dbg !6909
  store i32 %bf.set, ptr %base1, align 1, !dbg !6909
  %bf.result.cast = trunc i32 %bf.value to i16, !dbg !6909
  %10 = load ptr, ptr %info.addr, align 8, !dbg !6910
  %read_exec_only = getelementptr inbounds %struct.user_desc, ptr %10, i32 0, i32 3, !dbg !6911
  %bf.load6 = load i8, ptr %read_exec_only, align 4, !dbg !6911
  %bf.lshr = lshr i8 %bf.load6, 3, !dbg !6911
  %bf.clear7 = and i8 %bf.lshr, 1, !dbg !6911
  %bf.cast = zext i8 %bf.clear7 to i32, !dbg !6911
  %xor = xor i32 %bf.cast, 1, !dbg !6912
  %shl = shl i32 %xor, 1, !dbg !6913
  %conv8 = trunc i32 %shl to i16, !dbg !6914
  %11 = load ptr, ptr %desc.addr, align 8, !dbg !6915
  %type = getelementptr inbounds %struct.desc_struct, ptr %11, i32 0, i32 2, !dbg !6916
  %12 = zext i16 %conv8 to i32, !dbg !6917
  %bf.load9 = load i32, ptr %type, align 1, !dbg !6917
  %bf.value10 = and i32 %12, 15, !dbg !6917
  %bf.shl = shl i32 %bf.value10, 8, !dbg !6917
  %bf.clear11 = and i32 %bf.load9, -3841, !dbg !6917
  %bf.set12 = or i32 %bf.clear11, %bf.shl, !dbg !6917
  store i32 %bf.set12, ptr %type, align 1, !dbg !6917
  %bf.result.cast13 = trunc i32 %bf.value10 to i16, !dbg !6917
  %13 = load ptr, ptr %info.addr, align 8, !dbg !6918
  %contents = getelementptr inbounds %struct.user_desc, ptr %13, i32 0, i32 3, !dbg !6919
  %bf.load14 = load i8, ptr %contents, align 4, !dbg !6919
  %bf.lshr15 = lshr i8 %bf.load14, 1, !dbg !6919
  %bf.clear16 = and i8 %bf.lshr15, 3, !dbg !6919
  %bf.cast17 = zext i8 %bf.clear16 to i32, !dbg !6919
  %shl18 = shl i32 %bf.cast17, 2, !dbg !6920
  %14 = load ptr, ptr %desc.addr, align 8, !dbg !6921
  %type19 = getelementptr inbounds %struct.desc_struct, ptr %14, i32 0, i32 2, !dbg !6922
  %bf.load20 = load i32, ptr %type19, align 1, !dbg !6923
  %bf.lshr21 = lshr i32 %bf.load20, 8, !dbg !6923
  %bf.clear22 = and i32 %bf.lshr21, 15, !dbg !6923
  %bf.cast23 = trunc i32 %bf.clear22 to i16, !dbg !6923
  %conv24 = zext i16 %bf.cast23 to i32, !dbg !6923
  %or = or i32 %conv24, %shl18, !dbg !6923
  %conv25 = trunc i32 %or to i16, !dbg !6923
  %15 = zext i16 %conv25 to i32, !dbg !6923
  %bf.load26 = load i32, ptr %type19, align 1, !dbg !6923
  %bf.value27 = and i32 %15, 15, !dbg !6923
  %bf.shl28 = shl i32 %bf.value27, 8, !dbg !6923
  %bf.clear29 = and i32 %bf.load26, -3841, !dbg !6923
  %bf.set30 = or i32 %bf.clear29, %bf.shl28, !dbg !6923
  store i32 %bf.set30, ptr %type19, align 1, !dbg !6923
  %bf.result.cast31 = trunc i32 %bf.value27 to i16, !dbg !6923
  %16 = load ptr, ptr %desc.addr, align 8, !dbg !6924
  %type32 = getelementptr inbounds %struct.desc_struct, ptr %16, i32 0, i32 2, !dbg !6925
  %bf.load33 = load i32, ptr %type32, align 1, !dbg !6926
  %bf.lshr34 = lshr i32 %bf.load33, 8, !dbg !6926
  %bf.clear35 = and i32 %bf.lshr34, 15, !dbg !6926
  %bf.cast36 = trunc i32 %bf.clear35 to i16, !dbg !6926
  %conv37 = zext i16 %bf.cast36 to i32, !dbg !6926
  %or38 = or i32 %conv37, 1, !dbg !6926
  %conv39 = trunc i32 %or38 to i16, !dbg !6926
  %17 = zext i16 %conv39 to i32, !dbg !6926
  %bf.load40 = load i32, ptr %type32, align 1, !dbg !6926
  %bf.value41 = and i32 %17, 15, !dbg !6926
  %bf.shl42 = shl i32 %bf.value41, 8, !dbg !6926
  %bf.clear43 = and i32 %bf.load40, -3841, !dbg !6926
  %bf.set44 = or i32 %bf.clear43, %bf.shl42, !dbg !6926
  store i32 %bf.set44, ptr %type32, align 1, !dbg !6926
  %bf.result.cast45 = trunc i32 %bf.value41 to i16, !dbg !6926
  %18 = load ptr, ptr %desc.addr, align 8, !dbg !6927
  %s = getelementptr inbounds %struct.desc_struct, ptr %18, i32 0, i32 2, !dbg !6928
  %bf.load46 = load i32, ptr %s, align 1, !dbg !6929
  %bf.clear47 = and i32 %bf.load46, -4097, !dbg !6929
  %bf.set48 = or i32 %bf.clear47, 4096, !dbg !6929
  store i32 %bf.set48, ptr %s, align 1, !dbg !6929
  %19 = load ptr, ptr %desc.addr, align 8, !dbg !6930
  %dpl = getelementptr inbounds %struct.desc_struct, ptr %19, i32 0, i32 2, !dbg !6931
  %bf.load49 = load i32, ptr %dpl, align 1, !dbg !6932
  %bf.clear50 = and i32 %bf.load49, -24577, !dbg !6932
  %bf.set51 = or i32 %bf.clear50, 24576, !dbg !6932
  store i32 %bf.set51, ptr %dpl, align 1, !dbg !6932
  %20 = load ptr, ptr %info.addr, align 8, !dbg !6933
  %seg_not_present = getelementptr inbounds %struct.user_desc, ptr %20, i32 0, i32 3, !dbg !6934
  %bf.load52 = load i8, ptr %seg_not_present, align 4, !dbg !6934
  %bf.lshr53 = lshr i8 %bf.load52, 5, !dbg !6934
  %bf.clear54 = and i8 %bf.lshr53, 1, !dbg !6934
  %bf.cast55 = zext i8 %bf.clear54 to i32, !dbg !6934
  %xor56 = xor i32 %bf.cast55, 1, !dbg !6935
  %conv57 = trunc i32 %xor56 to i16, !dbg !6933
  %21 = load ptr, ptr %desc.addr, align 8, !dbg !6936
  %p = getelementptr inbounds %struct.desc_struct, ptr %21, i32 0, i32 2, !dbg !6937
  %22 = zext i16 %conv57 to i32, !dbg !6938
  %bf.load58 = load i32, ptr %p, align 1, !dbg !6938
  %bf.value59 = and i32 %22, 1, !dbg !6938
  %bf.shl60 = shl i32 %bf.value59, 15, !dbg !6938
  %bf.clear61 = and i32 %bf.load58, -32769, !dbg !6938
  %bf.set62 = or i32 %bf.clear61, %bf.shl60, !dbg !6938
  store i32 %bf.set62, ptr %p, align 1, !dbg !6938
  %bf.result.cast63 = trunc i32 %bf.value59 to i16, !dbg !6938
  %23 = load ptr, ptr %info.addr, align 8, !dbg !6939
  %limit64 = getelementptr inbounds %struct.user_desc, ptr %23, i32 0, i32 2, !dbg !6940
  %24 = load i32, ptr %limit64, align 4, !dbg !6940
  %and65 = and i32 %24, 983040, !dbg !6941
  %shr66 = lshr i32 %and65, 16, !dbg !6942
  %conv67 = trunc i32 %shr66 to i16, !dbg !6943
  %25 = load ptr, ptr %desc.addr, align 8, !dbg !6944
  %limit1 = getelementptr inbounds %struct.desc_struct, ptr %25, i32 0, i32 2, !dbg !6945
  %26 = zext i16 %conv67 to i32, !dbg !6946
  %bf.load68 = load i32, ptr %limit1, align 1, !dbg !6946
  %bf.value69 = and i32 %26, 15, !dbg !6946
  %bf.shl70 = shl i32 %bf.value69, 16, !dbg !6946
  %bf.clear71 = and i32 %bf.load68, -983041, !dbg !6946
  %bf.set72 = or i32 %bf.clear71, %bf.shl70, !dbg !6946
  store i32 %bf.set72, ptr %limit1, align 1, !dbg !6946
  %bf.result.cast73 = trunc i32 %bf.value69 to i16, !dbg !6946
  %27 = load ptr, ptr %info.addr, align 8, !dbg !6947
  %useable = getelementptr inbounds %struct.user_desc, ptr %27, i32 0, i32 3, !dbg !6948
  %bf.load74 = load i8, ptr %useable, align 4, !dbg !6948
  %bf.lshr75 = lshr i8 %bf.load74, 6, !dbg !6948
  %bf.clear76 = and i8 %bf.lshr75, 1, !dbg !6948
  %bf.cast77 = zext i8 %bf.clear76 to i32, !dbg !6948
  %conv78 = trunc i32 %bf.cast77 to i16, !dbg !6947
  %28 = load ptr, ptr %desc.addr, align 8, !dbg !6949
  %avl = getelementptr inbounds %struct.desc_struct, ptr %28, i32 0, i32 2, !dbg !6950
  %29 = zext i16 %conv78 to i32, !dbg !6951
  %bf.load79 = load i32, ptr %avl, align 1, !dbg !6951
  %bf.value80 = and i32 %29, 1, !dbg !6951
  %bf.shl81 = shl i32 %bf.value80, 20, !dbg !6951
  %bf.clear82 = and i32 %bf.load79, -1048577, !dbg !6951
  %bf.set83 = or i32 %bf.clear82, %bf.shl81, !dbg !6951
  store i32 %bf.set83, ptr %avl, align 1, !dbg !6951
  %bf.result.cast84 = trunc i32 %bf.value80 to i16, !dbg !6951
  %30 = load ptr, ptr %info.addr, align 8, !dbg !6952
  %seg_32bit = getelementptr inbounds %struct.user_desc, ptr %30, i32 0, i32 3, !dbg !6953
  %bf.load85 = load i8, ptr %seg_32bit, align 4, !dbg !6953
  %bf.clear86 = and i8 %bf.load85, 1, !dbg !6953
  %bf.cast87 = zext i8 %bf.clear86 to i32, !dbg !6953
  %conv88 = trunc i32 %bf.cast87 to i16, !dbg !6952
  %31 = load ptr, ptr %desc.addr, align 8, !dbg !6954
  %d = getelementptr inbounds %struct.desc_struct, ptr %31, i32 0, i32 2, !dbg !6955
  %32 = zext i16 %conv88 to i32, !dbg !6956
  %bf.load89 = load i32, ptr %d, align 1, !dbg !6956
  %bf.value90 = and i32 %32, 1, !dbg !6956
  %bf.shl91 = shl i32 %bf.value90, 22, !dbg !6956
  %bf.clear92 = and i32 %bf.load89, -4194305, !dbg !6956
  %bf.set93 = or i32 %bf.clear92, %bf.shl91, !dbg !6956
  store i32 %bf.set93, ptr %d, align 1, !dbg !6956
  %bf.result.cast94 = trunc i32 %bf.value90 to i16, !dbg !6956
  %33 = load ptr, ptr %info.addr, align 8, !dbg !6957
  %limit_in_pages = getelementptr inbounds %struct.user_desc, ptr %33, i32 0, i32 3, !dbg !6958
  %bf.load95 = load i8, ptr %limit_in_pages, align 4, !dbg !6958
  %bf.lshr96 = lshr i8 %bf.load95, 4, !dbg !6958
  %bf.clear97 = and i8 %bf.lshr96, 1, !dbg !6958
  %bf.cast98 = zext i8 %bf.clear97 to i32, !dbg !6958
  %conv99 = trunc i32 %bf.cast98 to i16, !dbg !6957
  %34 = load ptr, ptr %desc.addr, align 8, !dbg !6959
  %g = getelementptr inbounds %struct.desc_struct, ptr %34, i32 0, i32 2, !dbg !6960
  %35 = zext i16 %conv99 to i32, !dbg !6961
  %bf.load100 = load i32, ptr %g, align 1, !dbg !6961
  %bf.value101 = and i32 %35, 1, !dbg !6961
  %bf.shl102 = shl i32 %bf.value101, 23, !dbg !6961
  %bf.clear103 = and i32 %bf.load100, -8388609, !dbg !6961
  %bf.set104 = or i32 %bf.clear103, %bf.shl102, !dbg !6961
  store i32 %bf.set104, ptr %g, align 1, !dbg !6961
  %bf.result.cast105 = trunc i32 %bf.value101 to i16, !dbg !6961
  %36 = load ptr, ptr %info.addr, align 8, !dbg !6962
  %base_addr106 = getelementptr inbounds %struct.user_desc, ptr %36, i32 0, i32 1, !dbg !6963
  %37 = load i32, ptr %base_addr106, align 4, !dbg !6963
  %and107 = and i32 %37, -16777216, !dbg !6964
  %shr108 = lshr i32 %and107, 24, !dbg !6965
  %conv109 = trunc i32 %shr108 to i16, !dbg !6966
  %38 = load ptr, ptr %desc.addr, align 8, !dbg !6967
  %base2 = getelementptr inbounds %struct.desc_struct, ptr %38, i32 0, i32 2, !dbg !6968
  %39 = zext i16 %conv109 to i32, !dbg !6969
  %bf.load110 = load i32, ptr %base2, align 1, !dbg !6969
  %bf.value111 = and i32 %39, 255, !dbg !6969
  %bf.shl112 = shl i32 %bf.value111, 24, !dbg !6969
  %bf.clear113 = and i32 %bf.load110, 16777215, !dbg !6969
  %bf.set114 = or i32 %bf.clear113, %bf.shl112, !dbg !6969
  store i32 %bf.set114, ptr %base2, align 1, !dbg !6969
  %bf.result.cast115 = trunc i32 %bf.value111 to i16, !dbg !6969
  %40 = load ptr, ptr %desc.addr, align 8, !dbg !6970
  %l = getelementptr inbounds %struct.desc_struct, ptr %40, i32 0, i32 2, !dbg !6971
  %bf.load116 = load i32, ptr %l, align 1, !dbg !6972
  %bf.clear117 = and i32 %bf.load116, -2097153, !dbg !6972
  %bf.set118 = or i32 %bf.clear117, 0, !dbg !6972
  store i32 %bf.set118, ptr %l, align 1, !dbg !6972
  ret void, !dbg !6973
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_load_tls(ptr noundef %t, i32 noundef %cpu) #4 align 16 !dbg !6974 {
entry:
  %t.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %gdt = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !6978, metadata !DIExpression()), !dbg !6982
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6979, metadata !DIExpression()), !dbg !6983
  call void @llvm.lifetime.start.p0(i64 8, ptr %gdt) #15, !dbg !6984
  call void @llvm.dbg.declare(metadata ptr %gdt, metadata !6980, metadata !DIExpression()), !dbg !6985
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6986
  %call = call ptr @get_cpu_gdt_rw(i32 noundef %0) #16, !dbg !6987
  store ptr %call, ptr %gdt, align 8, !dbg !6985
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6988
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6981, metadata !DIExpression()), !dbg !6989
  store i32 0, ptr %i, align 4, !dbg !6990
  br label %for.cond, !dbg !6992

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !6993
  %cmp = icmp ult i32 %1, 3, !dbg !6995
  br i1 %cmp, label %for.body, label %for.end, !dbg !6996

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %gdt, align 8, !dbg !6997
  %3 = load i32, ptr %i, align 4, !dbg !6998
  %add = add i32 12, %3, !dbg !6999
  %idxprom = zext i32 %add to i64, !dbg !6997
  %arrayidx = getelementptr %struct.desc_struct, ptr %2, i64 %idxprom, !dbg !6997
  %4 = load ptr, ptr %t.addr, align 8, !dbg !7000
  %tls_array = getelementptr inbounds %struct.thread_struct, ptr %4, i32 0, i32 0, !dbg !7001
  %5 = load i32, ptr %i, align 4, !dbg !7002
  %idxprom1 = zext i32 %5 to i64, !dbg !7000
  %arrayidx2 = getelementptr [3 x %struct.desc_struct], ptr %tls_array, i64 0, i64 %idxprom1, !dbg !7000
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx, ptr align 8 %arrayidx2, i64 8, i1 false), !dbg !7000
  br label %for.inc, !dbg !6997

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !7003
  %inc = add i32 %6, 1, !dbg !7003
  store i32 %inc, ptr %i, align 4, !dbg !7003
  br label %for.cond, !dbg !7004, !llvm.loop !7005

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !7007
  call void @llvm.lifetime.end.p0(i64 8, ptr %gdt) #15, !dbg !7007
  ret void, !dbg !7007
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #3 align 16 !dbg !7008 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #15, !dbg !7012
  call void @llvm.dbg.declare(metadata ptr %c, metadata !7010, metadata !DIExpression()), !dbg !7012
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.22, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !7012, !srcloc !7013
  %1 = icmp ult i8 %0, 2, !dbg !7012
  call void @llvm.assume(i1 %1), !dbg !7012
  store i8 %0, ptr %c, align 1, !dbg !7012
  %2 = load i8, ptr %c, align 1, !dbg !7012, !range !6758, !noundef !417
  %tobool = trunc i8 %2 to i1, !dbg !7012
  %frombool = zext i1 %tobool to i8, !dbg !7012
  store i8 %frombool, ptr %tmp, align 1, !dbg !7012
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #15, !dbg !7014
  %3 = load i8, ptr %tmp, align 1, !dbg !7012, !range !6758, !noundef !417
  %tobool1 = trunc i8 %3 to i1, !dbg !7012
  ret i1 %tobool1, !dbg !7015
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_cpu_gdt_rw(i32 noundef %cpu) #4 align 16 !dbg !7016 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7020, metadata !DIExpression()), !dbg !7026
  br label %do.body, !dbg !7027

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !7028
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7021, metadata !DIExpression()), !dbg !7028
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7028
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !7028
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !7027
  br label %do.end, !dbg !7028

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !7029
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !7024, metadata !DIExpression()), !dbg !7029
  store i64 ptrtoint (ptr @gdt_page to i64), ptr %__ptr, align 8, !dbg !7029
  %1 = load i64, ptr %__ptr, align 8, !dbg !7029
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !7029
  %idxprom = zext i32 %2 to i64, !dbg !7029
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !7029
  %3 = load i64, ptr %arrayidx, align 8, !dbg !7029
  %add = add i64 %1, %3, !dbg !7029
  %4 = inttoptr i64 %add to ptr, !dbg !7029
  store ptr %4, ptr %tmp1, align 8, !dbg !7029
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !7027
  %5 = load ptr, ptr %tmp1, align 8, !dbg !7029
  store ptr %5, ptr %tmp, align 8, !dbg !7028
  %6 = load ptr, ptr %tmp, align 8, !dbg !7027
  %gdt = getelementptr inbounds %struct.gdt_page, ptr %6, i32 0, i32 0, !dbg !7030
  %arraydecay = getelementptr inbounds [16 x %struct.desc_struct], ptr %gdt, i64 0, i64 0, !dbg !7031
  ret ptr %arraydecay, !dbg !7032
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_load_gs_index(i32 noundef %selector) #4 align 16 !dbg !7033 {
entry:
  %selector.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy13 = alloca i64, align 8
  %__dummy214 = alloca i64, align 8
  %tmp17 = alloca i32, align 4
  store i32 %selector, ptr %selector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %selector.addr, metadata !7035, metadata !DIExpression()), !dbg !7049
  br i1 false, label %cond.true, label %cond.false, !dbg !7050

cond.true:                                        ; preds = %entry
  br i1 false, label %if.then, label %if.else, !dbg !7051

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !7050

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !7051

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.then, label %if.else, !dbg !7051

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 402, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #16, !dbg !7051
  br i1 %call, label %if.then, label %if.else, !dbg !7051

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 402) #16, !dbg !7051
  br i1 %call5, label %if.then, label %if.else, !dbg !7050

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %0 = load i32, ptr %selector.addr, align 4, !dbg !7052
  call void @native_lkgs(i32 noundef %0) #16, !dbg !7054
  br label %if.end, !dbg !7055

if.else:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !7056
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !7036, metadata !DIExpression()), !dbg !7057
  br label %do.body, !dbg !7058

do.body:                                          ; preds = %if.else
  br label %do.body6, !dbg !7059

do.body6:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !7060
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !7039, metadata !DIExpression()), !dbg !7060
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !7060
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !7043, metadata !DIExpression()), !dbg !7060
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !7060
  %conv = zext i1 %cmp to i32, !dbg !7060
  store i32 1, ptr %tmp, align 4, !dbg !7060
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !7061
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !7061
  %1 = load i32, ptr %tmp, align 4, !dbg !7060
  %call7 = call i64 @arch_local_irq_save() #16, !dbg !7061
  store i64 %call7, ptr %flags, align 8, !dbg !7061
  br label %do.cond, !dbg !7061

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !7061

do.end:                                           ; preds = %do.cond
  br label %do.cond8, !dbg !7059

do.cond8:                                         ; preds = %do.end
  br label %do.end9, !dbg !7059

do.end9:                                          ; preds = %do.cond8
  %2 = load i32, ptr %selector.addr, align 4, !dbg !7062
  %conv10 = trunc i32 %2 to i16, !dbg !7062
  call void @asm_load_gs_index(i16 noundef zeroext %conv10) #16, !dbg !7063
  br label %do.body11, !dbg !7064

do.body11:                                        ; preds = %do.end9
  br label %do.body12, !dbg !7065

do.body12:                                        ; preds = %do.body11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy13) #15, !dbg !7066
  call void @llvm.dbg.declare(metadata ptr %__dummy13, metadata !7044, metadata !DIExpression()), !dbg !7066
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy214) #15, !dbg !7066
  call void @llvm.dbg.declare(metadata ptr %__dummy214, metadata !7048, metadata !DIExpression()), !dbg !7066
  %cmp15 = icmp eq ptr %__dummy13, %__dummy214, !dbg !7066
  %conv16 = zext i1 %cmp15 to i32, !dbg !7066
  store i32 1, ptr %tmp17, align 4, !dbg !7066
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy214) #15, !dbg !7067
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy13) #15, !dbg !7067
  %3 = load i32, ptr %tmp17, align 4, !dbg !7066
  br label %do.body18, !dbg !7067

do.body18:                                        ; preds = %do.body12
  br label %do.cond19, !dbg !7068

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !7068

do.end20:                                         ; preds = %do.cond19
  %4 = load i64, ptr %flags, align 8, !dbg !7067
  call void @arch_local_irq_restore(i64 noundef %4) #16, !dbg !7067
  br label %do.cond21, !dbg !7067

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !7067

do.end22:                                         ; preds = %do.cond21
  br label %do.cond23, !dbg !7065

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !7065

do.end24:                                         ; preds = %do.cond23
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !7070
  br label %if.end

if.end:                                           ; preds = %do.end24, %if.then
  ret void, !dbg !7071
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !7072 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7080, metadata !DIExpression()), !dbg !7082
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7081, metadata !DIExpression()), !dbg !7083
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7084
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7085
  br i1 %1, label %cond.true, label %cond.false, !dbg !7085

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7086
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7087
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !7088
  %conv = zext i1 %call to i32, !dbg !7088
  br label %cond.end, !dbg !7085

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7089
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7090
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #16, !dbg !7091
  %conv2 = zext i1 %call1 to i32, !dbg !7091
  br label %cond.end, !dbg !7085

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7085
  %tobool = icmp ne i32 %cond, 0, !dbg !7085
  ret i1 %tobool, !dbg !7092
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #3 align 16 !dbg !7093 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !7098, metadata !DIExpression()), !dbg !7101
  %0 = load i16, ptr %bit.addr, align 2, !dbg !7102
  %1 = load i16, ptr %bit.addr, align 2, !dbg !7103
  %conv = zext i16 %1 to i32, !dbg !7103
  %and = and i32 %conv, 7, !dbg !7104
  %shl = shl i32 1, %and, !dbg !7105
  %2 = load i16, ptr %bit.addr, align 2, !dbg !7106
  %conv1 = zext i16 %2 to i32, !dbg !7106
  %shr = ashr i32 %conv1, 3, !dbg !7107
  %idxprom = sext i32 %shr to i64, !dbg !7108
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !7108
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #15
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !7109, !srcloc !7110

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !7109

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !7099), !dbg !7111
  store i1 true, ptr %retval, align 1, !dbg !7112
  br label %return, !dbg !7112

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !7100), !dbg !7113
  store i1 false, ptr %retval, align 1, !dbg !7114
  br label %return, !dbg !7114

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !7115
  ret i1 %3, !dbg !7115
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_lkgs(i32 noundef %selector) #4 align 16 !dbg !7116 {
entry:
  %selector.addr = alloca i32, align 4
  %sel = alloca i16, align 2
  store i32 %selector, ptr %selector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %selector.addr, metadata !7118, metadata !DIExpression()), !dbg !7120
  call void @llvm.lifetime.start.p0(i64 2, ptr %sel) #15, !dbg !7121
  call void @llvm.dbg.declare(metadata ptr %sel, metadata !7119, metadata !DIExpression()), !dbg !7122
  %0 = load i32, ptr %selector.addr, align 4, !dbg !7123
  %conv = trunc i32 %0 to i16, !dbg !7123
  store i16 %conv, ptr %sel, align 2, !dbg !7122
  %1 = load i16, ptr %sel, align 2, !dbg !7124
  %2 = call i16 asm sideeffect "1:  .byte 0xf2,0x0f,0x00,0xf7 ;  .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (1b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=${0:k}, type=(17 $| ((0) << 16)) \0A.purgem extable_type_reg\0A .popsection\0A", "={di},0,~{dirflag},~{fpsr},~{flags}"(i16 %1) #15, !dbg !7124, !srcloc !7125
  store i16 %2, ptr %sel, align 2, !dbg !7124
  call void @llvm.lifetime.end.p0(i64 2, ptr %sel) #15, !dbg !7126
  ret void, !dbg !7126
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #3 align 16 !dbg !7127 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !7133
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !7132, metadata !DIExpression()), !dbg !7134
  %call = call i64 @arch_local_save_flags() #16, !dbg !7135
  store i64 %call, ptr %flags, align 8, !dbg !7134
  call void @arch_local_irq_disable() #16, !dbg !7136
  %0 = load i64, ptr %flags, align 8, !dbg !7137
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !7138
  ret i64 %0, !dbg !7139
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7140 dso_local void @asm_load_gs_index(i16 noundef zeroext) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #3 align 16 !dbg !7143 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7147, metadata !DIExpression()), !dbg !7148
  %0 = load i64, ptr %flags.addr, align 8, !dbg !7149
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #16, !dbg !7151
  %tobool = icmp ne i32 %call, 0, !dbg !7151
  br i1 %tobool, label %if.end, label %if.then, !dbg !7152

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #16, !dbg !7153
  br label %if.end, !dbg !7153

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !7154
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !7155 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7159, metadata !DIExpression()), !dbg !7161
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7160, metadata !DIExpression()), !dbg !7162
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7163
  %and = and i64 %0, 63, !dbg !7164
  %shl = shl i64 1, %and, !dbg !7165
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7166
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7167
  %shr = ashr i64 %2, 6, !dbg !7168
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7166
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7166
  %and1 = and i64 %shl, %3, !dbg !7169
  %cmp = icmp ne i64 %and1, 0, !dbg !7170
  ret i1 %cmp, !dbg !7171
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !7172 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7174, metadata !DIExpression()), !dbg !7177
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7175, metadata !DIExpression()), !dbg !7178
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !7179
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7176, metadata !DIExpression()), !dbg !7180
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7181
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7182
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !7183, !srcloc !7184
  %3 = icmp ult i8 %2, 2, !dbg !7183
  call void @llvm.assume(i1 %3), !dbg !7183
  store i8 %2, ptr %oldbit, align 1, !dbg !7183
  %4 = load i8, ptr %oldbit, align 1, !dbg !7185, !range !6758, !noundef !417
  %tobool = trunc i8 %4 to i1, !dbg !7185
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !7186
  ret i1 %tobool, !dbg !7187
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #3 align 16 !dbg !7188 {
entry:
  %call = call i64 @native_save_fl() #16, !dbg !7189
  ret i64 %call, !dbg !7190
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #3 align 16 !dbg !7191 {
entry:
  call void @native_irq_disable() #16, !dbg !7192
  ret void, !dbg !7193
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #3 align 16 !dbg !7194 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !7197
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !7196, metadata !DIExpression()), !dbg !7198
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #15, !dbg !7199, !srcloc !7200
  %0 = load i64, ptr %flags, align 8, !dbg !7201
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !7202
  ret i64 %0, !dbg !7203
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #3 align 16 !dbg !7204 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !7205, !srcloc !7206
  ret void, !dbg !7207
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #3 align 16 !dbg !7208 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7212, metadata !DIExpression()), !dbg !7213
  %0 = load i64, ptr %flags.addr, align 8, !dbg !7214
  %and = and i64 %0, 512, !dbg !7215
  %tobool = icmp ne i64 %and, 0, !dbg !7216
  %lnot = xor i1 %tobool, true, !dbg !7216
  %lnot.ext = zext i1 %lnot to i32, !dbg !7216
  ret i32 %lnot.ext, !dbg !7217
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #3 align 16 !dbg !7218 {
entry:
  call void @native_irq_enable() #16, !dbg !7219
  ret void, !dbg !7220
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #3 align 16 !dbg !7221 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !7222, !srcloc !7223
  ret void, !dbg !7224
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_set_thread_area(ptr noundef %u_info) #4 align 16 !dbg !7225 {
entry:
  %u_info.addr = alloca ptr, align 8
  store ptr %u_info, ptr %u_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u_info.addr, metadata !7229, metadata !DIExpression()), !dbg !7230
  %call = call ptr @get_current() #16, !dbg !7231
  %0 = load ptr, ptr %u_info.addr, align 8, !dbg !7232
  %call1 = call i32 @do_set_thread_area(ptr noundef %call, i32 noundef -1, ptr noundef %0, i32 noundef 1) #16, !dbg !7233
  %conv = sext i32 %call1 to i64, !dbg !7233
  ret i64 %conv, !dbg !7234
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_desc_base(ptr noundef %desc) #4 align 16 !dbg !7235 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !7239, metadata !DIExpression()), !dbg !7240
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !7241
  %base0 = getelementptr inbounds %struct.desc_struct, ptr %0, i32 0, i32 1, !dbg !7242
  %1 = load i16, ptr %base0, align 1, !dbg !7242
  %conv = zext i16 %1 to i32, !dbg !7241
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !7243
  %base1 = getelementptr inbounds %struct.desc_struct, ptr %2, i32 0, i32 2, !dbg !7244
  %bf.load = load i32, ptr %base1, align 1, !dbg !7244
  %bf.clear = and i32 %bf.load, 255, !dbg !7244
  %bf.cast = trunc i32 %bf.clear to i16, !dbg !7244
  %conv1 = zext i16 %bf.cast to i32, !dbg !7245
  %shl = shl i32 %conv1, 16, !dbg !7246
  %or = or i32 %conv, %shl, !dbg !7247
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !7248
  %base2 = getelementptr inbounds %struct.desc_struct, ptr %3, i32 0, i32 2, !dbg !7249
  %bf.load2 = load i32, ptr %base2, align 1, !dbg !7249
  %bf.lshr = lshr i32 %bf.load2, 24, !dbg !7249
  %bf.cast3 = trunc i32 %bf.lshr to i16, !dbg !7249
  %conv4 = zext i16 %bf.cast3 to i32, !dbg !7250
  %shl5 = shl i32 %conv4, 24, !dbg !7251
  %or6 = or i32 %or, %shl5, !dbg !7252
  %conv7 = zext i32 %or6 to i64, !dbg !7253
  ret i64 %conv7, !dbg !7254
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_desc_limit(ptr noundef %desc) #4 align 16 !dbg !7255 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !7257, metadata !DIExpression()), !dbg !7258
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !7259
  %limit0 = getelementptr inbounds %struct.desc_struct, ptr %0, i32 0, i32 0, !dbg !7260
  %1 = load i16, ptr %limit0, align 1, !dbg !7260
  %conv = zext i16 %1 to i32, !dbg !7259
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !7261
  %limit1 = getelementptr inbounds %struct.desc_struct, ptr %2, i32 0, i32 2, !dbg !7262
  %bf.load = load i32, ptr %limit1, align 1, !dbg !7262
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !7262
  %bf.clear = and i32 %bf.lshr, 15, !dbg !7262
  %bf.cast = trunc i32 %bf.clear to i16, !dbg !7262
  %conv1 = zext i16 %bf.cast to i32, !dbg !7261
  %shl = shl i32 %conv1, 16, !dbg !7263
  %or = or i32 %conv, %shl, !dbg !7264
  %conv2 = sext i32 %or to i64, !dbg !7259
  ret i64 %conv2, !dbg !7265
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7266 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__do_sys_get_thread_area(ptr noundef %u_info) #4 align 16 !dbg !7267 {
entry:
  %u_info.addr = alloca ptr, align 8
  store ptr %u_info, ptr %u_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u_info.addr, metadata !7269, metadata !DIExpression()), !dbg !7270
  %call = call ptr @get_current() #16, !dbg !7271
  %0 = load ptr, ptr %u_info.addr, align 8, !dbg !7272
  %call1 = call i32 @do_get_thread_area(ptr noundef %call, i32 noundef -1, ptr noundef %0) #16, !dbg !7273
  %conv = sext i32 %call1 to i64, !dbg !7273
  ret i64 %conv, !dbg !7274
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_copy_from_user_before(ptr noundef %to, ptr noundef %from, i64 noundef %n) #3 align 16 !dbg !7275 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !7280, metadata !DIExpression()), !dbg !7283
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !7281, metadata !DIExpression()), !dbg !7284
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7282, metadata !DIExpression()), !dbg !7285
  %0 = load ptr, ptr %to.addr, align 8, !dbg !7286
  %1 = load i64, ptr %n.addr, align 8, !dbg !7287
  %conv = trunc i64 %1 to i32, !dbg !7287
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !7288
  %2 = load ptr, ptr %to.addr, align 8, !dbg !7289
  %3 = load i64, ptr %n.addr, align 8, !dbg !7289
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #16, !dbg !7289
  ret void, !dbg !7290
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @should_fail_usercopy() #4 align 16 !dbg !7291 {
entry:
  ret i1 false, !dbg !7293
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_copy_from_user(ptr noundef %dst, ptr noundef %src, i64 noundef %size) #3 align 16 !dbg !7294 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !7297, metadata !DIExpression()), !dbg !7300
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !7298, metadata !DIExpression()), !dbg !7301
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7299, metadata !DIExpression()), !dbg !7302
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !7303
  %1 = load ptr, ptr %src.addr, align 8, !dbg !7304
  %2 = load i64, ptr %size.addr, align 8, !dbg !7305
  %call = call i64 @copy_user_generic(ptr noundef %0, ptr noundef %1, i64 noundef %2) #16, !dbg !7306
  ret i64 %call, !dbg !7307
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_copy_from_user_after(ptr noundef %to, ptr noundef %from, i64 noundef %n, i64 noundef %left) #3 align 16 !dbg !7308 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !7312, metadata !DIExpression()), !dbg !7316
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !7313, metadata !DIExpression()), !dbg !7317
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7314, metadata !DIExpression()), !dbg !7318
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !7315, metadata !DIExpression()), !dbg !7319
  %0 = load ptr, ptr %to.addr, align 8, !dbg !7320
  %1 = load i64, ptr %n.addr, align 8, !dbg !7321
  %2 = load i64, ptr %left.addr, align 8, !dbg !7322
  %sub = sub i64 %1, %2, !dbg !7323
  call void @kmsan_unpoison_memory(ptr noundef %0, i64 noundef %sub) #16, !dbg !7324
  ret void, !dbg !7325
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !7326 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7334, metadata !DIExpression()), !dbg !7336
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7335, metadata !DIExpression()), !dbg !7337
  ret i1 true, !dbg !7338
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !7339 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7344, metadata !DIExpression()), !dbg !7347
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7345, metadata !DIExpression()), !dbg !7348
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7346, metadata !DIExpression()), !dbg !7349
  ret void, !dbg !7350
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_user_generic(ptr noundef %to, ptr noundef %from, i64 noundef %len) #3 align 16 !dbg !7351 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !7353, metadata !DIExpression()), !dbg !7356
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !7354, metadata !DIExpression()), !dbg !7357
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !7355, metadata !DIExpression()), !dbg !7358
  call void @stac() #16, !dbg !7359
  %0 = load i64, ptr %len.addr, align 8, !dbg !7360
  %1 = load ptr, ptr %to.addr, align 8, !dbg !7360
  %2 = load ptr, ptr %from.addr, align 8, !dbg !7360
  %3 = call i64 @llvm.read_register.i64(metadata !5837), !dbg !7360
  %4 = call { i64, ptr, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldnstr\0A661:\0A\09rep movsb\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (((1 << 0) << 16) $| ((18*32+ 4)))\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09call rep_movs_alternative\0A6651:\0A.popsection\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={si},={rsp},0,1,2,{rsp},~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 %0, ptr %1, ptr %2, i64 %3) #15, !dbg !7360, !srcloc !7361
  %asmresult = extractvalue { i64, ptr, ptr, i64 } %4, 0, !dbg !7360
  %asmresult1 = extractvalue { i64, ptr, ptr, i64 } %4, 1, !dbg !7360
  %asmresult2 = extractvalue { i64, ptr, ptr, i64 } %4, 2, !dbg !7360
  %asmresult3 = extractvalue { i64, ptr, ptr, i64 } %4, 3, !dbg !7360
  store i64 %asmresult, ptr %len.addr, align 8, !dbg !7360
  store ptr %asmresult1, ptr %to.addr, align 8, !dbg !7360
  store ptr %asmresult2, ptr %from.addr, align 8, !dbg !7360
  call void @llvm.write_register.i64(metadata !5837, i64 %asmresult3), !dbg !7360
  call void @clac() #16, !dbg !7362
  %5 = load i64, ptr %len.addr, align 8, !dbg !7363
  ret i64 %5, !dbg !7364
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stac() #3 align 16 !dbg !7365 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !7367, !srcloc !7368
  ret void, !dbg !7369
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clac() #3 align 16 !dbg !7370 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !7371, !srcloc !7372
  ret void, !dbg !7373
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #6 = { nocallback nounwind }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { nounwind memory(read) }
attributes #18 = { nounwind memory(none) }

!llvm.dbg.cu = !{!5802}
!llvm.named.register.rsp = !{!5837}
!llvm.module.flags = !{!5838, !5839, !5840, !5841, !5842, !5843, !5844, !5845}
!llvm.ident = !{!5846}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 95, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "arch/x86/kernel/tls.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74afb981f135ed601fbaf8f7aa455af0")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 5)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule318", scope: !15, file: !9, line: 109, type: !38, isLocal: true, isDefinition: true)
!15 = distinct !DISubprogram(name: "set_tls_desc", scope: !9, file: !9, line: 85, type: !16, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !5819)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !50, !5787, !50}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !20, line: 746, size: 58368, elements: !21)
!20 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!21 = !{!22, !36, !37, !39, !51, !52, !53, !54, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !146, !157, !289, !293, !296, !327, !328, !329, !330, !341, !343, !344, !345, !346, !347, !348, !359, !360, !363, !364, !365, !366, !367, !368, !369, !370, !377, !378, !385, !386, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4946, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4989, !4995, !4996, !4997, !4998, !4999, !5001, !5004, !5011, !5016, !5019, !5022, !5025, !5057, !5255, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5293, !5294, !5295, !5304, !5312, !5313, !5314, !5315, !5316, !5321, !5322, !5323, !5326, !5327, !5330, !5333, !5336, !5344, !5347, !5348, !5434, !5435, !5436, !5437, !5438, !5444, !5445, !5446, !5447, !5448, !5449, !5452, !5455, !5456, !5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5499, !5500, !5506, !5509, !5510, !5511, !5512, !5513, !5514, !5515, !5518, !5596, !5598, !5599, !5600, !5601, !5602, !5603, !5606, !5607, !5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5616, !5620, !5621, !5622}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !19, file: !20, line: 752, baseType: !23, size: 192)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !24, line: 56, size: 192, elements: !25)
!24 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!25 = !{!26, !28, !29, !35}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !23, file: !24, line: 57, baseType: !27, size: 64)
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !23, file: !24, line: 58, baseType: !27, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !23, file: !24, line: 59, baseType: !30, size: 32, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !31, line: 21, baseType: !32)
!31 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !33, line: 27, baseType: !34)
!33 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !23, file: !24, line: 61, baseType: !30, size: 32, offset: 160)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !19, file: !20, line: 754, baseType: !34, size: 32, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !19, file: !20, line: 767, baseType: !38, size: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !19, file: !20, line: 768, baseType: !40, size: 32, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !41, line: 113, baseType: !42)
!41 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !41, line: 111, size: 32, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !42, file: !41, line: 112, baseType: !45, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !46, line: 174, baseType: !47)
!46 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 172, size: 32, elements: !48)
!48 = !{!49}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !47, file: !46, line: 173, baseType: !50, size: 32)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !19, file: !20, line: 770, baseType: !34, size: 32, offset: 352)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !19, file: !20, line: 771, baseType: !34, size: 32, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !19, file: !20, line: 774, baseType: !50, size: 32, offset: 416)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !19, file: !20, line: 775, baseType: !55, size: 128, offset: 448)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !56, line: 58, size: 128, elements: !57)
!56 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!57 = !{!58, !64, !69, !73}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !55, file: !56, line: 59, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !60, line: 60, size: 64, elements: !61)
!60 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !59, file: !60, line: 61, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, scope: !55, file: !56, line: 60, baseType: !65, size: 32, offset: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !55, file: !56, line: 60, size: 32, elements: !66)
!66 = !{!67, !68}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !65, file: !56, line: 61, baseType: !34, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !65, file: !56, line: 62, baseType: !45, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !55, file: !56, line: 65, baseType: !70, size: 16, offset: 96)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !31, line: 19, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !33, line: 24, baseType: !72)
!72 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !55, file: !56, line: 65, baseType: !70, size: 16, offset: 112)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !19, file: !20, line: 776, baseType: !34, size: 32, offset: 576)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !19, file: !20, line: 777, baseType: !27, size: 64, offset: 640)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !19, file: !20, line: 778, baseType: !18, size: 64, offset: 704)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !19, file: !20, line: 787, baseType: !50, size: 32, offset: 768)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !19, file: !20, line: 788, baseType: !50, size: 32, offset: 800)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !19, file: !20, line: 790, baseType: !50, size: 32, offset: 832)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !19, file: !20, line: 792, baseType: !50, size: 32, offset: 864)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !19, file: !20, line: 793, baseType: !50, size: 32, offset: 896)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !19, file: !20, line: 794, baseType: !50, size: 32, offset: 928)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !19, file: !20, line: 795, baseType: !34, size: 32, offset: 960)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !19, file: !20, line: 797, baseType: !85, size: 2048, offset: 1024)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !20, line: 551, size: 2048, elements: !86)
!86 = !{!87, !92, !100, !104, !105, !111, !112, !113, !114, !115, !116, !120, !121, !122, !123, !125, !128, !129, !130}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !85, file: !20, line: 553, baseType: !88, size: 128)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !20, line: 411, size: 128, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !88, file: !20, line: 412, baseType: !27, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !88, file: !20, line: 413, baseType: !30, size: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !85, file: !20, line: 554, baseType: !93, size: 192, align: 64, offset: 128)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !94, line: 5, size: 192, align: 64, elements: !95)
!94 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!95 = !{!96, !97, !99}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !93, file: !94, line: 6, baseType: !27, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !93, file: !94, line: 7, baseType: !98, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !93, file: !94, line: 8, baseType: !98, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !85, file: !20, line: 555, baseType: !101, size: 64, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !31, line: 23, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !33, line: 31, baseType: !103)
!103 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !85, file: !20, line: 556, baseType: !101, size: 64, offset: 384)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !85, file: !20, line: 558, baseType: !106, size: 128, offset: 448)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !46, line: 190, size: 128, elements: !107)
!107 = !{!108, !110}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !106, file: !46, line: 191, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !106, file: !46, line: 191, baseType: !109, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !85, file: !20, line: 559, baseType: !34, size: 32, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !85, file: !20, line: 561, baseType: !101, size: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !85, file: !20, line: 562, baseType: !101, size: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !85, file: !20, line: 563, baseType: !101, size: 64, offset: 768)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !85, file: !20, line: 564, baseType: !101, size: 64, offset: 832)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !85, file: !20, line: 565, baseType: !117, size: 64, offset: 896)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !31, line: 22, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !33, line: 30, baseType: !119)
!119 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !85, file: !20, line: 566, baseType: !101, size: 64, offset: 960)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !85, file: !20, line: 568, baseType: !101, size: 64, offset: 1024)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !85, file: !20, line: 571, baseType: !50, size: 32, offset: 1088)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !85, file: !20, line: 572, baseType: !124, size: 64, offset: 1152)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !85, file: !20, line: 574, baseType: !126, size: 64, offset: 1216)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !20, line: 49, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !85, file: !20, line: 576, baseType: !126, size: 64, offset: 1280)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !85, file: !20, line: 578, baseType: !27, size: 64, offset: 1344)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !85, file: !20, line: 588, baseType: !131, size: 512, align: 512, offset: 1536)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !20, line: 497, size: 512, align: 512, elements: !132)
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !131, file: !20, line: 498, baseType: !101, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !131, file: !20, line: 499, baseType: !101, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !131, file: !20, line: 500, baseType: !101, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !131, file: !20, line: 501, baseType: !30, size: 32, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !131, file: !20, line: 502, baseType: !30, size: 32, offset: 224)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !131, file: !20, line: 503, baseType: !27, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !131, file: !20, line: 504, baseType: !27, size: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !131, file: !20, line: 505, baseType: !27, size: 64, offset: 384)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !131, file: !20, line: 506, baseType: !142, size: 64, align: 64, offset: 448)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !20, line: 445, size: 64, align: 64, elements: !143)
!143 = !{!144, !145}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !142, file: !20, line: 446, baseType: !34, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !142, file: !20, line: 447, baseType: !34, size: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !19, file: !20, line: 798, baseType: !147, size: 384, offset: 3072)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !20, line: 592, size: 384, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !147, file: !20, line: 593, baseType: !106, size: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !147, file: !20, line: 594, baseType: !27, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !147, file: !20, line: 595, baseType: !27, size: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !147, file: !20, line: 596, baseType: !34, size: 32, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !147, file: !20, line: 597, baseType: !72, size: 16, offset: 288)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !147, file: !20, line: 598, baseType: !72, size: 16, offset: 304)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !147, file: !20, line: 600, baseType: !156, size: 64, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !19, file: !20, line: 799, baseType: !158, size: 1792, offset: 3456)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !20, line: 610, size: 1792, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !286, !287}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !158, file: !20, line: 611, baseType: !93, size: 192, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !158, file: !20, line: 618, baseType: !101, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !158, file: !20, line: 619, baseType: !101, size: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !158, file: !20, line: 620, baseType: !101, size: 64, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !158, file: !20, line: 621, baseType: !101, size: 64, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !158, file: !20, line: 622, baseType: !101, size: 64, offset: 448)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !158, file: !20, line: 629, baseType: !117, size: 64, offset: 512)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !158, file: !20, line: 630, baseType: !101, size: 64, offset: 576)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !158, file: !20, line: 631, baseType: !34, size: 32, offset: 640)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !158, file: !20, line: 653, baseType: !34, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !158, file: !20, line: 654, baseType: !34, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !158, file: !20, line: 655, baseType: !34, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !158, file: !20, line: 656, baseType: !34, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !158, file: !20, line: 662, baseType: !174, size: 512, offset: 704)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !175, line: 118, size: 512, elements: !176)
!175 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!176 = !{!177, !185, !186, !195, !282, !283, !284, !285}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !174, file: !175, line: 119, baseType: !178, size: 256)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !179, line: 9, size: 256, elements: !180)
!179 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!180 = !{!181, !182}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !178, file: !179, line: 10, baseType: !93, size: 192, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !178, file: !179, line: 11, baseType: !183, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !184, line: 29, baseType: !117)
!184 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !174, file: !175, line: 120, baseType: !183, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !174, file: !175, line: 121, baseType: !187, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!190, !194}
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !175, line: 65, baseType: !34, size: 32, elements: !191)
!191 = !{!192, !193}
!192 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!193 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !174, file: !175, line: 122, baseType: !196, size: 64, offset: 384)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !175, line: 159, size: 512, align: 512, elements: !198)
!198 = !{!199, !250, !251, !255, !265, !266, !277, !281}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !197, file: !175, line: 160, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !175, line: 215, size: 4608, align: 512, elements: !202)
!202 = !{!203, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !201, file: !175, line: 216, baseType: !204, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !205, line: 23, baseType: !206)
!205 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !205, line: 14, size: 32, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !206, file: !205, line: 15, baseType: !209, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !210, line: 44, baseType: !211)
!210 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !210, line: 14, size: 32, elements: !212)
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, scope: !211, file: !210, line: 15, baseType: !214, size: 32)
!214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !211, file: !210, line: 15, size: 32, elements: !215)
!215 = !{!216, !217, !225}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !214, file: !210, line: 16, baseType: !45, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, scope: !214, file: !210, line: 24, baseType: !218, size: 16)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !214, file: !210, line: 24, size: 16, elements: !219)
!219 = !{!220, !224}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !218, file: !210, line: 25, baseType: !221, size: 8)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !31, line: 17, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !33, line: 21, baseType: !223)
!223 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !218, file: !210, line: 26, baseType: !221, size: 8, offset: 8)
!225 = !DIDerivedType(tag: DW_TAG_member, scope: !214, file: !210, line: 28, baseType: !226, size: 32)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !214, file: !210, line: 28, size: 32, elements: !227)
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !226, file: !210, line: 29, baseType: !70, size: 16)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !226, file: !210, line: 30, baseType: !70, size: 16, offset: 16)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !201, file: !175, line: 217, baseType: !34, size: 32, offset: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !201, file: !175, line: 218, baseType: !34, size: 32, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !201, file: !175, line: 219, baseType: !34, size: 32, offset: 96)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !201, file: !175, line: 220, baseType: !34, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !201, file: !175, line: 221, baseType: !34, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !201, file: !175, line: 222, baseType: !34, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !201, file: !175, line: 223, baseType: !34, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !201, file: !175, line: 224, baseType: !34, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !201, file: !175, line: 226, baseType: !34, size: 32, offset: 160)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !201, file: !175, line: 227, baseType: !72, size: 16, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !201, file: !175, line: 228, baseType: !72, size: 16, offset: 208)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !201, file: !175, line: 229, baseType: !34, size: 32, offset: 224)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !201, file: !175, line: 235, baseType: !183, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !201, file: !175, line: 236, baseType: !194, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !201, file: !175, line: 237, baseType: !183, size: 64, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !201, file: !175, line: 238, baseType: !194, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !201, file: !175, line: 239, baseType: !247, size: 4096, align: 512, offset: 512)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 4096, align: 512, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 8)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !197, file: !175, line: 161, baseType: !34, size: 32, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !197, file: !175, line: 162, baseType: !252, size: 32, offset: 96)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !46, line: 32, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !254, line: 96, baseType: !50)
!254 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!255 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !197, file: !175, line: 163, baseType: !256, size: 32, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !257, line: 274, baseType: !258)
!257 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !257, line: 274, size: 32, elements: !259)
!259 = !{!260}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !258, file: !257, line: 274, baseType: !261, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !257, line: 69, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !257, line: 64, size: 32, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !262, file: !257, line: 65, baseType: !34, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !197, file: !175, line: 164, baseType: !194, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !197, file: !175, line: 165, baseType: !267, size: 128, offset: 256)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !179, line: 14, size: 128, elements: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !267, file: !179, line: 15, baseType: !270, size: 128)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !94, line: 26, size: 128, elements: !271)
!271 = !{!272, !276}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !270, file: !94, line: 27, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !94, line: 12, size: 64, elements: !274)
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !273, file: !94, line: 13, baseType: !98, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !270, file: !94, line: 28, baseType: !98, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !197, file: !175, line: 166, baseType: !278, size: 64, offset: 384)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!183}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !197, file: !175, line: 167, baseType: !183, size: 64, offset: 448)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !174, file: !175, line: 123, baseType: !221, size: 8, offset: 448)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !174, file: !175, line: 124, baseType: !221, size: 8, offset: 456)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !174, file: !175, line: 125, baseType: !221, size: 8, offset: 464)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !174, file: !175, line: 126, baseType: !221, size: 8, offset: 472)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !158, file: !20, line: 671, baseType: !174, size: 512, offset: 1216)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !158, file: !20, line: 679, baseType: !288, size: 64, offset: 1728)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !19, file: !20, line: 800, baseType: !290, size: 64, offset: 5248)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !20, line: 800, flags: DIFlagFwdDecl)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !19, file: !20, line: 809, baseType: !294, size: 64, offset: 5312)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !20, line: 70, flags: DIFlagFwdDecl)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !19, file: !20, line: 825, baseType: !297, size: 2048, align: 512, offset: 5632)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !20, line: 509, size: 2048, align: 512, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !297, file: !20, line: 511, baseType: !101, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !297, file: !20, line: 512, baseType: !101, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !297, file: !20, line: 513, baseType: !101, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !297, file: !20, line: 514, baseType: !101, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !297, file: !20, line: 515, baseType: !101, size: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !297, file: !20, line: 516, baseType: !101, size: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !297, file: !20, line: 518, baseType: !101, size: 64, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !297, file: !20, line: 519, baseType: !101, size: 64, offset: 448)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !297, file: !20, line: 520, baseType: !117, size: 64, offset: 512)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !297, file: !20, line: 522, baseType: !101, size: 64, offset: 576)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !297, file: !20, line: 523, baseType: !101, size: 64, offset: 640)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !297, file: !20, line: 524, baseType: !117, size: 64, offset: 704)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !297, file: !20, line: 526, baseType: !117, size: 64, offset: 768)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !297, file: !20, line: 527, baseType: !101, size: 64, offset: 832)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !297, file: !20, line: 529, baseType: !101, size: 64, offset: 896)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !297, file: !20, line: 530, baseType: !101, size: 64, offset: 960)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !297, file: !20, line: 531, baseType: !101, size: 64, offset: 1024)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !297, file: !20, line: 532, baseType: !101, size: 64, offset: 1088)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !297, file: !20, line: 533, baseType: !101, size: 64, offset: 1152)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !297, file: !20, line: 535, baseType: !101, size: 64, offset: 1216)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !297, file: !20, line: 536, baseType: !101, size: 64, offset: 1280)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !297, file: !20, line: 537, baseType: !101, size: 64, offset: 1344)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !297, file: !20, line: 538, baseType: !101, size: 64, offset: 1408)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !297, file: !20, line: 539, baseType: !101, size: 64, offset: 1472)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !297, file: !20, line: 540, baseType: !101, size: 64, offset: 1536)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !297, file: !20, line: 541, baseType: !101, size: 64, offset: 1600)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !297, file: !20, line: 542, baseType: !101, size: 64, offset: 1664)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !297, file: !20, line: 543, baseType: !101, size: 64, offset: 1728)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !19, file: !20, line: 833, baseType: !34, size: 32, offset: 7680)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !19, file: !20, line: 836, baseType: !34, size: 32, offset: 7712)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !19, file: !20, line: 837, baseType: !50, size: 32, offset: 7744)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !19, file: !20, line: 838, baseType: !331, size: 64, offset: 7808)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !334, line: 19, baseType: !335)
!334 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !334, line: 19, size: 64, elements: !336)
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !335, file: !334, line: 19, baseType: !338, size: 64)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 64, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 1)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !19, file: !20, line: 839, baseType: !342, size: 64, offset: 7872)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !19, file: !20, line: 840, baseType: !333, size: 64, offset: 7936)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !19, file: !20, line: 841, baseType: !38, size: 64, offset: 8000)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !19, file: !20, line: 843, baseType: !72, size: 16, offset: 8064)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !19, file: !20, line: 845, baseType: !72, size: 16, offset: 8080)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !19, file: !20, line: 848, baseType: !50, size: 32, offset: 8096)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !19, file: !20, line: 849, baseType: !349, size: 32, offset: 8128)
!349 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !20, line: 718, size: 32, elements: !350)
!350 = !{!351, !358}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !349, file: !20, line: 724, baseType: !352, size: 32)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !349, file: !20, line: 719, size: 32, elements: !353)
!353 = !{!354, !355, !356, !357}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !352, file: !20, line: 720, baseType: !221, size: 8)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !352, file: !20, line: 721, baseType: !221, size: 8, offset: 8)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !352, file: !20, line: 722, baseType: !221, size: 8, offset: 16)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !352, file: !20, line: 723, baseType: !221, size: 8, offset: 24)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !349, file: !20, line: 725, baseType: !30, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !19, file: !20, line: 850, baseType: !106, size: 128, offset: 8192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !19, file: !20, line: 851, baseType: !361, size: 64, offset: 8320)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !20, line: 60, flags: DIFlagFwdDecl)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !19, file: !20, line: 855, baseType: !27, size: 64, offset: 8384)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !19, file: !20, line: 856, baseType: !221, size: 8, offset: 8448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !19, file: !20, line: 857, baseType: !221, size: 8, offset: 8456)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !19, file: !20, line: 858, baseType: !50, size: 32, offset: 8480)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !19, file: !20, line: 859, baseType: !106, size: 128, offset: 8512)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !19, file: !20, line: 860, baseType: !50, size: 32, offset: 8640)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !19, file: !20, line: 861, baseType: !106, size: 128, offset: 8704)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !19, file: !20, line: 873, baseType: !371, size: 256, offset: 8832)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !20, line: 376, size: 256, elements: !372)
!372 = !{!373, !374, !375, !376}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !371, file: !20, line: 381, baseType: !27, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !371, file: !20, line: 384, baseType: !103, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !371, file: !20, line: 389, baseType: !103, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !371, file: !20, line: 392, baseType: !103, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !19, file: !20, line: 875, baseType: !106, size: 128, offset: 9088)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !19, file: !20, line: 877, baseType: !379, size: 320, offset: 9216)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !380, line: 86, size: 320, elements: !381)
!380 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!381 = !{!382, !383, !384}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !379, file: !380, line: 87, baseType: !50, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !379, file: !380, line: 88, baseType: !106, size: 128, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !379, file: !380, line: 89, baseType: !106, size: 128, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !19, file: !20, line: 878, baseType: !93, size: 192, align: 64, offset: 9536)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !19, file: !20, line: 881, baseType: !387, size: 64, offset: 9728)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !389, line: 733, size: 10240, elements: !390)
!389 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!390 = !{!391, !4854}
!391 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !389, line: 734, baseType: !392, size: 10240)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !388, file: !389, line: 734, size: 10240, elements: !393)
!393 = !{!394, !398, !420, !4732, !4733, !4734, !4735, !4736, !4737, !4744, !4745, !4746, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4785, !4787, !4790, !4833, !4834, !4835, !4838, !4839, !4840, !4843, !4844, !4845, !4852, !4853}
!394 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !389, line: 739, baseType: !395, size: 512, align: 512)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !389, line: 739, size: 512, align: 512, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !395, file: !389, line: 747, baseType: !45, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !392, file: !389, line: 750, baseType: !399, size: 128, offset: 512)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !400, line: 218, size: 128, elements: !401)
!400 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!401 = !{!402, !418, !419}
!402 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !400, line: 219, baseType: !403, size: 32)
!403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !400, line: 219, size: 32, elements: !404)
!404 = !{!405, !414}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !403, file: !400, line: 220, baseType: !406, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !407, line: 29, baseType: !408)
!407 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !407, line: 17, size: 32, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !407, line: 18, baseType: !411, size: 32)
!411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !407, line: 18, size: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !411, file: !407, line: 19, baseType: !206, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !403, file: !400, line: 221, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !400, line: 197, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !400, line: 197, elements: !417)
!417 = !{}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !399, file: !400, line: 223, baseType: !34, size: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !399, file: !400, line: 224, baseType: !38, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !392, file: !389, line: 752, baseType: !421, size: 64, offset: 640)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!27, !424, !27, !27, !27, !27}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !426, line: 994, size: 1856, align: 64, elements: !427)
!426 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!427 = !{!428, !442, !443, !445, !452, !464, !467, !468, !896, !974, !983, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731}
!428 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !426, line: 995, baseType: !429, size: 128)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !426, line: 995, size: 128, elements: !430)
!430 = !{!431, !432, !441}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !429, file: !426, line: 996, baseType: !59, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !429, file: !426, line: 997, baseType: !433, size: 128, align: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !46, line: 232, size: 128, align: 64, elements: !434)
!434 = !{!435, !437}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !433, file: !46, line: 233, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !433, file: !46, line: 234, baseType: !438, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !436}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !429, file: !426, line: 998, baseType: !34, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !425, file: !426, line: 1005, baseType: !406, size: 32, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !425, file: !426, line: 1006, baseType: !444, size: 32, offset: 160)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !46, line: 156, baseType: !34)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !425, file: !426, line: 1007, baseType: !446, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !447, line: 13, baseType: !448)
!447 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !46, line: 181, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 179, size: 64, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !449, file: !46, line: 180, baseType: !117, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !425, file: !426, line: 1008, baseType: !453, size: 256, offset: 256)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !454, line: 66, size: 256, elements: !455)
!454 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!455 = !{!456, !457, !458, !463}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !453, file: !454, line: 67, baseType: !446, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !453, file: !454, line: 68, baseType: !204, size: 32, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !453, file: !454, line: 70, baseType: !459, size: 32, offset: 96)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !460, line: 15, size: 32, elements: !461)
!460 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !459, file: !460, line: 20, baseType: !45, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !453, file: !454, line: 72, baseType: !106, size: 128, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !425, file: !426, line: 1009, baseType: !465, size: 64, offset: 512)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !46, line: 52, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !254, line: 88, baseType: !119)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !425, file: !426, line: 1010, baseType: !34, size: 32, offset: 576)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !425, file: !426, line: 1011, baseType: !469, size: 256, offset: 640)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !426, line: 948, size: 256, elements: !470)
!470 = !{!471, !494, !885, !893, !894, !895}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !469, file: !426, line: 949, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !473, line: 34, baseType: !474)
!473 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 25, size: 64, elements: !475)
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !474, file: !473, line: 26, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !478, line: 27, baseType: !479)
!478 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !478, line: 13, size: 64, elements: !480)
!480 = !{!481, !493}
!481 = !DIDerivedType(tag: DW_TAG_member, scope: !479, file: !478, line: 14, baseType: !482, size: 32)
!482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !479, file: !478, line: 14, size: 32, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !482, file: !478, line: 15, baseType: !45, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, scope: !482, file: !478, line: 16, baseType: !486, size: 32)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !482, file: !478, line: 16, size: 32, elements: !487)
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !486, file: !478, line: 18, baseType: !221, size: 8)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !486, file: !478, line: 19, baseType: !490, size: 24, offset: 8)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 24, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 3)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !479, file: !478, line: 26, baseType: !209, size: 32, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !469, file: !426, line: 950, baseType: !495, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !497, line: 59, size: 768, elements: !498)
!497 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!498 = !{!499, !500, !501, !502, !515, !516, !523, !524}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !496, file: !497, line: 61, baseType: !40, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !496, file: !497, line: 62, baseType: !34, size: 32, offset: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !496, file: !497, line: 63, baseType: !406, size: 32, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !496, file: !497, line: 65, baseType: !503, size: 256, offset: 128)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, size: 256, elements: !513)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !46, line: 194, size: 64, elements: !505)
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !504, file: !46, line: 195, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !46, line: 198, size: 128, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !508, file: !46, line: 199, baseType: !507, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !508, file: !46, line: 199, baseType: !512, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!513 = !{!514}
!514 = !DISubrange(count: 4)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !496, file: !497, line: 66, baseType: !504, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !496, file: !497, line: 68, baseType: !517, size: 192, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !518, line: 41, baseType: !519)
!518 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !518, line: 37, size: 192, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !519, file: !518, line: 38, baseType: !406, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !519, file: !518, line: 39, baseType: !106, size: 128, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !496, file: !497, line: 69, baseType: !433, size: 128, align: 64, offset: 640)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !496, file: !497, line: 70, baseType: !525, offset: 768)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, elements: !883)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !497, line: 54, size: 128, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !526, file: !497, line: 55, baseType: !50, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !526, file: !497, line: 56, baseType: !530, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !532, line: 26, size: 1152, elements: !533)
!532 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!533 = !{!534, !548, !549, !550, !551, !555, !556, !557, !560, !879, !880, !881, !882}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !531, file: !532, line: 27, baseType: !535, size: 192)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !536, line: 19, size: 192, elements: !537)
!536 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!537 = !{!538, !546, !547}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !535, file: !536, line: 20, baseType: !539, size: 128)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !540, line: 296, size: 128, elements: !541)
!540 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!541 = !{!542, !543, !545}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !539, file: !540, line: 297, baseType: !406, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !539, file: !540, line: 299, baseType: !544, size: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !46, line: 154, baseType: !34)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !539, file: !540, line: 300, baseType: !38, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !535, file: !536, line: 21, baseType: !34, size: 32, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !535, file: !536, line: 22, baseType: !34, size: 32, offset: 160)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !531, file: !532, line: 28, baseType: !433, size: 128, align: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !531, file: !532, line: 29, baseType: !34, size: 32, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !531, file: !532, line: 30, baseType: !18, size: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !531, file: !532, line: 31, baseType: !552, size: 64, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !554, line: 325, flags: DIFlagFwdDecl)
!554 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!555 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !531, file: !532, line: 32, baseType: !34, size: 32, offset: 512)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !531, file: !532, line: 33, baseType: !530, size: 64, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !531, file: !532, line: 35, baseType: !558, size: 64, offset: 640)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !532, line: 17, flags: DIFlagFwdDecl)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !531, file: !532, line: 37, baseType: !561, size: 64, offset: 704)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !563, line: 68, size: 4800, elements: !564)
!563 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!564 = !{!565, !585, !586, !587, !588, !589, !597, !604, !615, !616, !619, !620, !744, !745, !757, !859, !860, !874, !877}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !562, file: !563, line: 69, baseType: !566, size: 576)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !563, line: 23, size: 576, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !566, file: !563, line: 24, baseType: !30, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !563, line: 25, baseType: !570, size: 512, offset: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !563, line: 25, size: 512, elements: !571)
!571 = !{!572, !579}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !570, file: !563, line: 26, baseType: !573, size: 480)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 480, elements: !11)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !563, line: 17, size: 96, elements: !575)
!575 = !{!576, !577, !578}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !574, file: !563, line: 18, baseType: !30, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !574, file: !563, line: 19, baseType: !30, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !574, file: !563, line: 20, baseType: !30, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, scope: !570, file: !563, line: 27, baseType: !580, size: 128)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !570, file: !563, line: 27, size: 128, elements: !581)
!581 = !{!582, !584}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !580, file: !563, line: 28, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !580, file: !563, line: 29, baseType: !583, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !562, file: !563, line: 70, baseType: !566, size: 576, offset: 576)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !562, file: !563, line: 71, baseType: !566, size: 576, offset: 1152)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !562, file: !563, line: 72, baseType: !561, size: 64, offset: 1728)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !562, file: !563, line: 73, baseType: !50, size: 32, offset: 1792)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !562, file: !563, line: 74, baseType: !590, size: 32, offset: 1824)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !591, line: 23, baseType: !592)
!591 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !591, line: 21, size: 32, elements: !593)
!593 = !{!594}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !592, file: !591, line: 22, baseType: !595, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !46, line: 37, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !254, line: 49, baseType: !34)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !562, file: !563, line: 75, baseType: !598, size: 32, offset: 1856)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !591, line: 28, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !591, line: 26, size: 32, elements: !600)
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !599, file: !591, line: 27, baseType: !602, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !46, line: 38, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !254, line: 50, baseType: !34)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !562, file: !563, line: 76, baseType: !605, size: 192, offset: 1920)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !606, line: 9, size: 192, elements: !607)
!606 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!607 = !{!608, !609, !613, !614}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !605, file: !606, line: 10, baseType: !446, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !605, file: !606, line: 11, baseType: !610, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !606, line: 7, flags: DIFlagFwdDecl)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !605, file: !606, line: 12, baseType: !34, size: 32, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !605, file: !606, line: 13, baseType: !40, size: 32, offset: 160)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !562, file: !563, line: 77, baseType: !27, size: 64, offset: 2112)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !562, file: !563, line: 80, baseType: !617, size: 8, offset: 2176)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !46, line: 35, baseType: !618)
!618 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !562, file: !563, line: 88, baseType: !106, size: 128, offset: 2240)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !562, file: !563, line: 89, baseType: !621, size: 64, offset: 2368)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !623, line: 195, size: 1728, elements: !624)
!623 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!624 = !{!625, !626, !631, !636, !645, !648, !649, !656, !657, !658, !659, !662, !663, !664, !666, !667, !708, !729}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !622, file: !623, line: 196, baseType: !40, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !622, file: !623, line: 197, baseType: !627, size: 32, offset: 32)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !623, line: 28, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !46, line: 104, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !31, line: 20, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !33, line: 26, baseType: !50)
!631 = !DIDerivedType(tag: DW_TAG_member, scope: !622, file: !623, line: 198, baseType: !632, size: 192, offset: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !622, file: !623, line: 198, size: 192, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !632, file: !623, line: 199, baseType: !106, size: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !632, file: !623, line: 200, baseType: !93, size: 192, align: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !622, file: !623, line: 205, baseType: !637, size: 320, offset: 256)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !638, line: 48, size: 320, elements: !639)
!638 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!639 = !{!640, !641, !642, !643, !644}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !637, file: !638, line: 49, baseType: !446, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !637, file: !638, line: 55, baseType: !446, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !637, file: !638, line: 57, baseType: !459, size: 32, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !637, file: !638, line: 59, baseType: !204, size: 32, offset: 160)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !637, file: !638, line: 60, baseType: !106, size: 128, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !622, file: !623, line: 206, baseType: !646, size: 64, offset: 576)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !623, line: 206, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !622, file: !623, line: 207, baseType: !38, size: 64, offset: 640)
!649 = !DIDerivedType(tag: DW_TAG_member, scope: !622, file: !623, line: 208, baseType: !650, size: 64, offset: 704)
!650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !622, file: !623, line: 208, size: 64, elements: !651)
!651 = !{!652, !655}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !650, file: !623, line: 209, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !654, line: 8, baseType: !118)
!654 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!655 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !650, file: !623, line: 210, baseType: !653, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !622, file: !623, line: 212, baseType: !653, size: 64, offset: 768)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !622, file: !623, line: 213, baseType: !590, size: 32, offset: 832)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !622, file: !623, line: 214, baseType: !598, size: 32, offset: 864)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !622, file: !623, line: 215, baseType: !660, size: 32, offset: 896)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !623, line: 31, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !46, line: 110, baseType: !30)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !622, file: !623, line: 216, baseType: !72, size: 16, offset: 928)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !622, file: !623, line: 217, baseType: !72, size: 16, offset: 944)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !622, file: !623, line: 221, baseType: !665, size: 16, offset: 960)
!665 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !622, file: !623, line: 228, baseType: !27, size: 64, offset: 1024)
!667 = !DIDerivedType(tag: DW_TAG_member, scope: !622, file: !623, line: 245, baseType: !668, size: 320, offset: 1088)
!668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !622, file: !623, line: 245, size: 320, elements: !669)
!669 = !{!670, !699}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !668, file: !623, line: 246, baseType: !671, size: 320)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !623, line: 114, size: 320, elements: !672)
!672 = !{!673, !674, !686, !689, !696}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !671, file: !623, line: 116, baseType: !27, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !623, line: 117, baseType: !675, size: 64, offset: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !623, line: 117, size: 64, elements: !676)
!676 = !{!677, !685}
!677 = !DIDerivedType(tag: DW_TAG_member, scope: !675, file: !623, line: 118, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !675, file: !623, line: 118, size: 64, elements: !679)
!679 = !{!680, !681}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !678, file: !623, line: 120, baseType: !70, size: 16)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !678, file: !623, line: 121, baseType: !682, size: 48, offset: 16)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 6)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !675, file: !623, line: 127, baseType: !27, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !623, line: 129, baseType: !687, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !623, line: 102, flags: DIFlagFwdDecl)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !671, file: !623, line: 130, baseType: !690, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !623, line: 108, size: 192, elements: !692)
!692 = !{!693, !694, !695}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !691, file: !623, line: 109, baseType: !433, size: 128, align: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !691, file: !623, line: 110, baseType: !40, size: 32, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !691, file: !623, line: 111, baseType: !617, size: 8, offset: 160)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !671, file: !623, line: 131, baseType: !697, size: 64, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!699 = !DIDerivedType(tag: DW_TAG_member, scope: !668, file: !623, line: 247, baseType: !700, size: 320)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !668, file: !623, line: 247, size: 320, elements: !701)
!701 = !{!702, !703, !704, !705, !706}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !700, file: !623, line: 248, baseType: !27, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !700, file: !623, line: 249, baseType: !27, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !700, file: !623, line: 250, baseType: !687, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !700, file: !623, line: 251, baseType: !690, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !700, file: !623, line: 252, baseType: !707, size: 64, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, scope: !622, file: !623, line: 260, baseType: !709, size: 256, offset: 1408)
!709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !622, file: !623, line: 260, size: 256, elements: !710)
!710 = !{!711, !717}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !709, file: !623, line: 261, baseType: !712, size: 256)
!712 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !623, line: 134, size: 256, elements: !713)
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !712, file: !623, line: 135, baseType: !38, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !712, file: !623, line: 136, baseType: !716, size: 256)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !513)
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !623, line: 262, baseType: !718, size: 256)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !623, line: 262, size: 256, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !718, file: !623, line: 264, baseType: !106, size: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !718, file: !623, line: 265, baseType: !722, size: 128, offset: 128)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !723, line: 22, size: 128, elements: !724)
!723 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!724 = !{!725, !728}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !722, file: !723, line: 23, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !723, line: 23, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !722, file: !723, line: 24, baseType: !27, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !622, file: !623, line: 280, baseType: !730, size: 64, offset: 1664)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !623, line: 176, size: 192, elements: !732)
!732 = !{!733, !742, !743}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !731, file: !623, line: 177, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !623, line: 171, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!50, !621, !738, !740, !621}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !688)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !731, file: !623, line: 178, baseType: !621, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !731, file: !623, line: 179, baseType: !687, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !562, file: !563, line: 90, baseType: !637, size: 320, offset: 2432)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !562, file: !563, line: 97, baseType: !746, size: 256, offset: 2752)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !747, line: 98, size: 256, elements: !748)
!747 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!748 = !{!749, !750, !751}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !746, file: !747, line: 99, baseType: !446, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !746, file: !747, line: 100, baseType: !106, size: 128, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !746, file: !747, line: 101, baseType: !752, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !747, line: 21, baseType: !753)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !756}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !562, file: !563, line: 99, baseType: !758, size: 768, offset: 3008)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !759, line: 199, size: 768, elements: !760)
!759 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!760 = !{!761, !766}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !758, file: !759, line: 200, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!50, !765}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !758, file: !759, line: 201, baseType: !767, size: 704, offset: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !759, line: 193, size: 704, elements: !768)
!768 = !{!769, !858}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !767, file: !759, line: 195, baseType: !770, size: 640)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !759, line: 173, size: 640, elements: !771)
!771 = !{!772, !815, !827, !828, !848, !849, !851, !857}
!772 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !759, line: 174, baseType: !773, size: 192)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !759, line: 174, size: 192, elements: !774)
!774 = !{!775, !814}
!775 = !DIDerivedType(tag: DW_TAG_member, scope: !773, file: !759, line: 175, baseType: !776, size: 192)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !773, file: !759, line: 175, size: 192, elements: !777)
!777 = !{!778, !810, !811, !812, !813}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !776, file: !759, line: 176, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !759, line: 135, size: 512, elements: !781)
!781 = !{!782, !783, !784, !785, !787, !792, !802, !808, !809}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !780, file: !759, line: 136, baseType: !697, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !780, file: !759, line: 137, baseType: !38, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !780, file: !759, line: 138, baseType: !50, size: 32, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !780, file: !759, line: 139, baseType: !786, size: 16, offset: 160)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !46, line: 24, baseType: !72)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !780, file: !759, line: 150, baseType: !788, size: 32, offset: 192)
!788 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !780, file: !759, line: 147, baseType: !34, size: 32, elements: !789)
!789 = !{!790, !791}
!790 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!791 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !780, file: !759, line: 151, baseType: !793, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !759, line: 64, baseType: !795)
!795 = !DISubroutineType(types: !796)
!796 = !{!50, !779, !50, !38, !797, !801}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 61, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !254, line: 72, baseType: !800)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !254, line: 16, baseType: !27)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !780, file: !759, line: 152, baseType: !803, size: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !759, line: 117, size: 256, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !804, file: !759, line: 118, baseType: !45, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !804, file: !759, line: 119, baseType: !517, size: 192, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !780, file: !759, line: 153, baseType: !38, size: 64, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !780, file: !759, line: 154, baseType: !38, size: 64, offset: 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !776, file: !759, line: 177, baseType: !50, size: 32, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !776, file: !759, line: 178, baseType: !50, size: 32, offset: 96)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !776, file: !759, line: 179, baseType: !50, size: 32, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !776, file: !759, line: 180, baseType: !50, size: 32, offset: 160)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !773, file: !759, line: 182, baseType: !433, size: 128, align: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !770, file: !759, line: 184, baseType: !816, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !818, line: 26, size: 256, elements: !819)
!818 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !817, file: !818, line: 27, baseType: !34, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !817, file: !818, line: 28, baseType: !822, size: 192, offset: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !823, line: 43, size: 192, elements: !824)
!823 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !822, file: !823, line: 44, baseType: !204, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !822, file: !823, line: 45, baseType: !106, size: 128, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !770, file: !759, line: 185, baseType: !779, size: 64, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !770, file: !759, line: 186, baseType: !829, size: 64, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !759, line: 204, size: 960, elements: !831)
!831 = !{!832, !833, !837, !844}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !830, file: !759, line: 205, baseType: !758, size: 768)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !830, file: !759, line: 206, baseType: !834, size: 64, offset: 768)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!765, !829}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !830, file: !759, line: 207, baseType: !838, size: 64, offset: 832)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !841, !842, !843}
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !830, file: !759, line: 209, baseType: !845, size: 64, offset: 896)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!50, !841, !779}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !770, file: !759, line: 187, baseType: !765, size: 64, offset: 384)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !770, file: !759, line: 188, baseType: !850, size: 64, offset: 448)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !770, file: !759, line: 189, baseType: !852, size: 64, offset: 512)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !759, line: 157, size: 256, elements: !854)
!854 = !{!855, !856}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !853, file: !759, line: 158, baseType: !93, size: 192, align: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !853, file: !759, line: 159, baseType: !841, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !770, file: !759, line: 190, baseType: !504, size: 64, offset: 576)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !767, file: !759, line: 196, baseType: !273, size: 64, offset: 640)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !562, file: !563, line: 100, baseType: !841, size: 64, offset: 3776)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !562, file: !563, line: 102, baseType: !861, size: 64, offset: 3840)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !563, line: 107, size: 1152, elements: !863)
!863 = !{!864, !865, !866, !867, !868, !872}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !862, file: !563, line: 108, baseType: !508, size: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !862, file: !563, line: 109, baseType: !561, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !862, file: !563, line: 110, baseType: !590, size: 32, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !862, file: !563, line: 111, baseType: !45, size: 32, offset: 224)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !862, file: !563, line: 112, baseType: !869, size: 640, offset: 256)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 640, elements: !870)
!870 = !{!871}
!871 = !DISubrange(count: 10)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !862, file: !563, line: 113, baseType: !873, size: 256, offset: 896)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 256, elements: !513)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !562, file: !563, line: 103, baseType: !875, size: 640, offset: 3904)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 640, elements: !870)
!876 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !562, file: !563, line: 104, baseType: !878, size: 256, offset: 4544)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 256, elements: !513)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !531, file: !532, line: 38, baseType: !861, size: 64, offset: 768)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !531, file: !532, line: 39, baseType: !50, size: 32, offset: 832)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !531, file: !532, line: 40, baseType: !605, size: 192, offset: 896)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !531, file: !532, line: 42, baseType: !50, size: 32, offset: 1088)
!883 = !{!884}
!884 = !DISubrange(count: -1)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !469, file: !426, line: 951, baseType: !886, size: 32, offset: 128)
!886 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !497, line: 9, baseType: !34, size: 32, elements: !887)
!887 = !{!888, !889, !890, !891, !892}
!888 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!889 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!890 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!891 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!892 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !469, file: !426, line: 952, baseType: !590, size: 32, offset: 160)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !469, file: !426, line: 952, baseType: !590, size: 32, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !469, file: !426, line: 953, baseType: !50, size: 32, offset: 224)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !425, file: !426, line: 1012, baseType: !897, size: 64, offset: 896)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !899)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !900, line: 110, size: 1472, elements: !901)
!900 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!901 = !{!902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !959, !960, !961, !969}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !899, file: !900, line: 111, baseType: !446, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !899, file: !900, line: 112, baseType: !590, size: 32, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !899, file: !900, line: 113, baseType: !598, size: 32, offset: 96)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !899, file: !900, line: 114, baseType: !590, size: 32, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !899, file: !900, line: 115, baseType: !598, size: 32, offset: 160)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !899, file: !900, line: 116, baseType: !590, size: 32, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !899, file: !900, line: 117, baseType: !598, size: 32, offset: 224)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !899, file: !900, line: 118, baseType: !590, size: 32, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !899, file: !900, line: 119, baseType: !598, size: 32, offset: 288)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !899, file: !900, line: 120, baseType: !34, size: 32, offset: 320)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !899, file: !900, line: 121, baseType: !913, size: 64, offset: 384)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !914, line: 24, baseType: !915)
!914 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !914, line: 24, size: 64, elements: !916)
!916 = !{!917}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !915, file: !914, line: 24, baseType: !101, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !899, file: !900, line: 122, baseType: !913, size: 64, offset: 448)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !899, file: !900, line: 123, baseType: !913, size: 64, offset: 512)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !899, file: !900, line: 124, baseType: !913, size: 64, offset: 576)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !899, file: !900, line: 125, baseType: !913, size: 64, offset: 640)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !899, file: !900, line: 127, baseType: !223, size: 8, offset: 704)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !899, file: !900, line: 129, baseType: !621, size: 64, offset: 768)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !899, file: !900, line: 130, baseType: !621, size: 64, offset: 832)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !899, file: !900, line: 131, baseType: !621, size: 64, offset: 896)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !899, file: !900, line: 132, baseType: !621, size: 64, offset: 960)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !899, file: !900, line: 135, baseType: !38, size: 64, offset: 1024)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !899, file: !900, line: 137, baseType: !929, size: 64, offset: 1088)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !931, line: 14, size: 1088, elements: !932)
!931 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!932 = !{!933, !934, !943, !944, !945, !946, !947, !948}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !930, file: !931, line: 15, baseType: !40, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !930, file: !931, line: 17, baseType: !935, size: 320, offset: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !936, line: 22, size: 320, elements: !937)
!936 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!937 = !{!938, !939, !940, !941}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !935, file: !936, line: 23, baseType: !204, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !935, file: !936, line: 24, baseType: !117, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !935, file: !936, line: 26, baseType: !106, size: 128, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !935, file: !936, line: 28, baseType: !942, size: 64, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !930, file: !931, line: 19, baseType: !27, size: 64, offset: 384)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !930, file: !931, line: 20, baseType: !446, size: 64, offset: 448)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !930, file: !931, line: 23, baseType: !508, size: 128, offset: 512)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !930, file: !931, line: 24, baseType: !590, size: 32, offset: 640)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !930, file: !931, line: 29, baseType: !446, size: 64, offset: 704)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !930, file: !931, line: 36, baseType: !949, size: 320, offset: 768)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !950, line: 15, size: 320, elements: !951)
!950 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!951 = !{!952, !953, !954, !955, !956, !957, !958}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !949, file: !950, line: 16, baseType: !204, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !949, file: !950, line: 18, baseType: !50, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !949, file: !950, line: 19, baseType: !50, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !949, file: !950, line: 20, baseType: !50, size: 32, offset: 96)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !949, file: !950, line: 21, baseType: !50, size: 32, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !949, file: !950, line: 22, baseType: !27, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !949, file: !950, line: 23, baseType: !27, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !899, file: !900, line: 138, baseType: !561, size: 64, offset: 1152)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !899, file: !900, line: 139, baseType: !861, size: 64, offset: 1216)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !899, file: !900, line: 140, baseType: !962, size: 64, offset: 1280)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !900, line: 25, size: 64, elements: !964)
!964 = !{!965, !966, !967}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !963, file: !900, line: 26, baseType: !45, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !963, file: !900, line: 27, baseType: !50, size: 32, offset: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !963, file: !900, line: 28, baseType: !968, offset: 64)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, elements: !883)
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !899, file: !900, line: 142, baseType: !970, size: 128, offset: 1344)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !899, file: !900, line: 142, size: 128, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !970, file: !900, line: 143, baseType: !50, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !970, file: !900, line: 144, baseType: !433, size: 128, align: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !425, file: !426, line: 1013, baseType: !975, size: 256, offset: 960)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !426, line: 970, size: 256, elements: !976)
!976 = !{!977, !978, !979, !980, !981, !982}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !975, file: !426, line: 971, baseType: !27, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !975, file: !426, line: 972, baseType: !34, size: 32, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !975, file: !426, line: 973, baseType: !34, size: 32, offset: 96)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !975, file: !426, line: 974, baseType: !34, size: 32, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !975, file: !426, line: 975, baseType: !34, size: 32, offset: 160)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !975, file: !426, line: 976, baseType: !465, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !425, file: !426, line: 1014, baseType: !984, size: 128, offset: 1216)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !985, line: 8, size: 128, elements: !986)
!985 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!986 = !{!987, !4722}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !984, file: !985, line: 9, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !990, line: 70, size: 256, elements: !991)
!990 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!991 = !{!992, !4719, !4720, !4721}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !989, file: !990, line: 71, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !995, line: 82, size: 1536, elements: !996)
!995 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!996 = !{!997, !998, !1003, !1011, !1012, !1027, !4687, !4689, !4702, !4703, !4704, !4705, !4706, !4711, !4712, !4713}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !994, file: !995, line: 84, baseType: !34, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !994, file: !995, line: 85, baseType: !999, size: 32, offset: 32)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !257, line: 275, baseType: !1000)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !257, line: 275, size: 32, elements: !1001)
!1001 = !{!1002}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1000, file: !257, line: 275, baseType: !261, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !994, file: !995, line: 86, baseType: !1004, size: 128, offset: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1005, line: 38, size: 128, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1006 = !{!1007, !1009}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1004, file: !1005, line: 39, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1004, file: !1005, line: 39, baseType: !1010, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !994, file: !995, line: 87, baseType: !993, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !994, file: !995, line: 88, baseType: !1013, size: 128, offset: 256)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !995, line: 49, size: 128, elements: !1014)
!1014 = !{!1015, !1024}
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1013, file: !995, line: 50, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1013, file: !995, line: 50, size: 64, elements: !1017)
!1017 = !{!1018, !1023}
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !995, line: 51, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1016, file: !995, line: 51, size: 64, elements: !1020)
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1019, file: !995, line: 52, baseType: !30, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1019, file: !995, line: 52, baseType: !30, size: 32, offset: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1016, file: !995, line: 54, baseType: !101, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1013, file: !995, line: 56, baseType: !1025, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !994, file: !995, line: 89, baseType: !1028, size: 64, offset: 384)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !426, line: 641, size: 4800, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036, !1037, !1040, !1041, !1228, !4502, !4503, !4504, !4505, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4669, !4672, !4673, !4674, !4683, !4684, !4685, !4686}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1029, file: !426, line: 642, baseType: !786, size: 16)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1029, file: !426, line: 643, baseType: !72, size: 16, offset: 16)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1029, file: !426, line: 644, baseType: !590, size: 32, offset: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1029, file: !426, line: 645, baseType: !106, size: 128, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1029, file: !426, line: 646, baseType: !598, size: 32, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1029, file: !426, line: 647, baseType: !34, size: 32, offset: 224)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1029, file: !426, line: 650, baseType: !1038, size: 64, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !426, line: 607, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1029, file: !426, line: 651, baseType: !1038, size: 64, offset: 320)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1029, file: !426, line: 654, baseType: !1042, size: 64, offset: 384)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1044)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !426, line: 1966, size: 2048, align: 512, elements: !1045)
!1045 = !{!1046, !1050, !1063, !1069, !1073, !1077, !1081, !1085, !1089, !1093, !1097, !1098, !1104, !1108, !1145, !1176, !1183, !1189, !1193, !1197, !1201, !1205, !1209, !1215, !1219}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1044, file: !426, line: 1967, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!993, !1028, !993, !34}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1044, file: !426, line: 1968, baseType: !1051, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!697, !993, !1028, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1056, line: 10, size: 128, elements: !1057)
!1056 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1057 = !{!1058, !1062}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1055, file: !1056, line: 11, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !38}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1055, file: !1056, line: 12, baseType: !38, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1044, file: !426, line: 1969, baseType: !1064, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!50, !1067, !1028, !50}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !914, line: 42, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1044, file: !426, line: 1970, baseType: !1070, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!1038, !1028, !50, !617}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1044, file: !426, line: 1972, baseType: !1074, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!50, !993, !707, !50}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1044, file: !426, line: 1974, baseType: !1078, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!50, !1067, !1028, !993, !786, !617}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1044, file: !426, line: 1976, baseType: !1082, size: 64, offset: 384)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!50, !993, !1028, !993}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1044, file: !426, line: 1977, baseType: !1086, size: 64, offset: 448)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!50, !1028, !993}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1044, file: !426, line: 1978, baseType: !1090, size: 64, offset: 512)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!50, !1067, !1028, !993, !697}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1044, file: !426, line: 1980, baseType: !1094, size: 64, offset: 576)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!50, !1067, !1028, !993, !786}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1044, file: !426, line: 1982, baseType: !1086, size: 64, offset: 640)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1044, file: !426, line: 1983, baseType: !1099, size: 64, offset: 704)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!50, !1067, !1028, !993, !786, !1102}
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !46, line: 21, baseType: !1103)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !46, line: 18, baseType: !30)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1044, file: !426, line: 1985, baseType: !1105, size: 64, offset: 768)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!50, !1067, !1028, !993, !1028, !993, !34}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1044, file: !426, line: 1987, baseType: !1109, size: 64, offset: 832)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!50, !1067, !993, !1112}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !426, line: 226, size: 640, elements: !1114)
!1114 = !{!1115, !1116, !1117, !1127, !1136, !1137, !1142, !1143, !1144}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1113, file: !426, line: 227, baseType: !34, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1113, file: !426, line: 228, baseType: !786, size: 16, offset: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, scope: !1113, file: !426, line: 241, baseType: !1118, size: 32, offset: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1113, file: !426, line: 241, size: 32, elements: !1119)
!1119 = !{!1120, !1121}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1118, file: !426, line: 242, baseType: !590, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1118, file: !426, line: 243, baseType: !1122, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1123, line: 16, baseType: !1124)
!1123 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1123, line: 14, size: 32, elements: !1125)
!1125 = !{!1126}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1124, file: !1123, line: 15, baseType: !595, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, scope: !1113, file: !426, line: 245, baseType: !1128, size: 32, offset: 96)
!1128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1113, file: !426, line: 245, size: 32, elements: !1129)
!1129 = !{!1130, !1131}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1128, file: !426, line: 246, baseType: !598, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1128, file: !426, line: 247, baseType: !1132, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1123, line: 20, baseType: !1133)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1123, line: 18, size: 32, elements: !1134)
!1134 = !{!1135}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1133, file: !1123, line: 19, baseType: !602, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1113, file: !426, line: 249, baseType: !465, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1113, file: !426, line: 250, baseType: !1138, size: 128, offset: 192)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !654, line: 13, size: 128, elements: !1139)
!1139 = !{!1140, !1141}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1138, file: !654, line: 14, baseType: !653, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1138, file: !654, line: 15, baseType: !876, size: 64, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1113, file: !426, line: 251, baseType: !1138, size: 128, offset: 320)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1113, file: !426, line: 252, baseType: !1138, size: 128, offset: 448)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1113, file: !426, line: 259, baseType: !424, size: 64, offset: 576)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1044, file: !426, line: 1988, baseType: !1146, size: 64, offset: 896)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!50, !1067, !1149, !1151, !30, !34}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1153, line: 22, size: 1280, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1152, file: !1153, line: 23, baseType: !30, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1152, file: !1153, line: 24, baseType: !786, size: 16, offset: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1152, file: !1153, line: 25, baseType: !34, size: 32, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1152, file: !1153, line: 26, baseType: !661, size: 32, offset: 96)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1152, file: !1153, line: 27, baseType: !101, size: 64, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1152, file: !1153, line: 28, baseType: !101, size: 64, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1152, file: !1153, line: 41, baseType: !101, size: 64, offset: 256)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1152, file: !1153, line: 42, baseType: !1102, size: 32, offset: 320)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1152, file: !1153, line: 43, baseType: !1102, size: 32, offset: 352)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1152, file: !1153, line: 44, baseType: !590, size: 32, offset: 384)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1152, file: !1153, line: 45, baseType: !598, size: 32, offset: 416)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1152, file: !1153, line: 46, baseType: !465, size: 64, offset: 448)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1152, file: !1153, line: 47, baseType: !1138, size: 128, offset: 512)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1152, file: !1153, line: 48, baseType: !1138, size: 128, offset: 640)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1152, file: !1153, line: 49, baseType: !1138, size: 128, offset: 768)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1152, file: !1153, line: 50, baseType: !1138, size: 128, offset: 896)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1152, file: !1153, line: 51, baseType: !101, size: 64, offset: 1024)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1152, file: !1153, line: 52, baseType: !101, size: 64, offset: 1088)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1152, file: !1153, line: 53, baseType: !30, size: 32, offset: 1152)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1152, file: !1153, line: 54, baseType: !30, size: 32, offset: 1184)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1152, file: !1153, line: 55, baseType: !101, size: 64, offset: 1216)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1044, file: !426, line: 1990, baseType: !1177, size: 64, offset: 960)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!1180, !993, !707, !798}
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !46, line: 66, baseType: !1181)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !254, line: 73, baseType: !1182)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !254, line: 15, baseType: !876)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1044, file: !426, line: 1991, baseType: !1184, size: 64, offset: 1024)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!50, !1028, !1187, !101, !101}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !426, line: 55, flags: DIFlagFwdDecl)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1044, file: !426, line: 1993, baseType: !1190, size: 64, offset: 1088)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!50, !1028, !50}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1044, file: !426, line: 1994, baseType: !1194, size: 64, offset: 1152)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!50, !1028, !993, !424, !34, !786}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1044, file: !426, line: 1997, baseType: !1198, size: 64, offset: 1216)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!50, !1067, !1028, !424, !786}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1044, file: !426, line: 1999, baseType: !1202, size: 64, offset: 1280)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!1038, !1067, !993, !50}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1044, file: !426, line: 2001, baseType: !1206, size: 64, offset: 1344)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!50, !1067, !993, !1038, !50}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1044, file: !426, line: 2003, baseType: !1210, size: 64, offset: 1408)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!50, !1067, !993, !1213}
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !426, line: 76, flags: DIFlagFwdDecl)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1044, file: !426, line: 2005, baseType: !1216, size: 64, offset: 1472)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!50, !993, !1213}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1044, file: !426, line: 2006, baseType: !1220, size: 64, offset: 1536)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!1223, !1028}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !426, line: 3192, size: 192, elements: !1225)
!1225 = !{!1226, !1227}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1224, file: !426, line: 3193, baseType: !539, size: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1224, file: !426, line: 3194, baseType: !30, size: 32, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1029, file: !426, line: 655, baseType: !1229, size: 64, offset: 448)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !426, line: 1190, size: 10752, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1235, !1236, !1237, !4009, !4151, !4191, !4274, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4291, !4295, !4296, !4299, !4302, !4305, !4308, !4309, !4310, !4351, !4373, !4374, !4375, !4376, !4377, !4378, !4381, !4385, !4394, !4395, !4396, !4397, !4456, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1230, file: !426, line: 1191, baseType: !106, size: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1230, file: !426, line: 1192, baseType: !1102, size: 32, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1230, file: !426, line: 1193, baseType: !223, size: 8, offset: 160)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1230, file: !426, line: 1194, baseType: !27, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1230, file: !426, line: 1195, baseType: !465, size: 64, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1230, file: !426, line: 1196, baseType: !1238, size: 64, offset: 320)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !426, line: 2366, size: 576, elements: !1240)
!1240 = !{!1241, !1242, !1243, !1249, !1253, !1257, !1261, !3997, !3998, !3999, !4001, !4002, !4003, !4005, !4006, !4007, !4008}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1239, file: !426, line: 2367, baseType: !697, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1239, file: !426, line: 2368, baseType: !50, size: 32, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1239, file: !426, line: 2376, baseType: !1244, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!50, !1247}
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !990, line: 21, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1239, file: !426, line: 2377, baseType: !1250, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1252)
!1252 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !426, line: 75, flags: DIFlagFwdDecl)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1239, file: !426, line: 2378, baseType: !1254, size: 64, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!993, !1238, !50, !697, !38}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1239, file: !426, line: 2380, baseType: !1258, size: 64, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !1229}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1239, file: !426, line: 2381, baseType: !1262, size: 64, offset: 384)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1264, line: 402, size: 9216, align: 512, elements: !1265)
!1264 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!1265 = !{!1266, !1273, !1274, !1278, !2124, !2150, !2151, !2152, !2153, !2157, !2160, !2161, !2162, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2230, !2234, !2254, !2274, !2275, !2276, !2277, !2286, !2309, !2310, !2313, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2327, !2328, !2427, !2435, !2436, !2437, !2439, !3975, !3976, !3985, !3986, !3987, !3988, !3990, !3991, !3992, !3993, !3994, !3995, !3996}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1263, file: !1264, line: 403, baseType: !1267, size: 32)
!1267 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !1264, line: 312, baseType: !34, size: 32, elements: !1268)
!1268 = !{!1269, !1270, !1271, !1272}
!1269 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!1270 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!1271 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!1272 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1263, file: !1264, line: 406, baseType: !106, size: 128, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1263, file: !1264, line: 409, baseType: !1275, size: 448, offset: 192)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1276)
!1276 = !{!1277}
!1277 = !DISubrange(count: 56)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1263, file: !1264, line: 417, baseType: !1279, size: 768, offset: 640)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !1264, line: 45, size: 768, elements: !1280)
!1280 = !{!1281, !2118, !2119, !2120, !2123}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1279, file: !1264, line: 46, baseType: !1282, size: 512)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1283, line: 64, size: 512, elements: !1284)
!1283 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1284 = !{!1285, !1286, !1287, !1289, !1333, !1965, !2108, !2113, !2114, !2115, !2116, !2117}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1282, file: !1283, line: 65, baseType: !697, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1282, file: !1283, line: 66, baseType: !106, size: 128, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1282, file: !1283, line: 67, baseType: !1288, size: 64, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1282, file: !1283, line: 68, baseType: !1290, size: 64, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1283, line: 168, size: 768, elements: !1292)
!1292 = !{!1293, !1294, !1295, !1296}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1291, file: !1283, line: 169, baseType: !106, size: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1291, file: !1283, line: 170, baseType: !406, size: 32, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1291, file: !1283, line: 171, baseType: !1282, size: 512, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1291, file: !1283, line: 172, baseType: !1297, size: 64, offset: 704)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1299)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1283, line: 133, size: 192, elements: !1300)
!1300 = !{!1301, !1308, !1313}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1299, file: !1283, line: 134, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!50, !1306}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1282)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1299, file: !1283, line: 135, baseType: !1309, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1310)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!697, !1306}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1299, file: !1283, line: 136, baseType: !1314, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1315)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!50, !1306, !1318}
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1283, line: 125, size: 20736, elements: !1320)
!1320 = !{!1321, !1323, !1327, !1328, !1332}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1319, file: !1283, line: 126, baseType: !1322, size: 192)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 192, elements: !491)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1319, file: !1283, line: 127, baseType: !1324, size: 4096, offset: 192)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 4096, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1319, file: !1283, line: 128, baseType: !50, size: 32, offset: 4288)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1319, file: !1283, line: 129, baseType: !1329, size: 16384, offset: 4320)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1330)
!1330 = !{!1331}
!1331 = !DISubrange(count: 2048)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1319, file: !1283, line: 130, baseType: !50, size: 32, offset: 20704)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1282, file: !1283, line: 69, baseType: !1334, size: 64, offset: 320)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1336)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1283, line: 116, size: 384, elements: !1337)
!1337 = !{!1338, !1342, !1361, !1921, !1957, !1961}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1336, file: !1283, line: 117, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{null, !1288}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1336, file: !1283, line: 118, baseType: !1343, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1345)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1346, line: 254, size: 128, elements: !1347)
!1346 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1347 = !{!1348, !1357}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1345, file: !1346, line: 255, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!1180, !1288, !1352, !707}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1346, line: 30, size: 128, elements: !1354)
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1353, file: !1346, line: 31, baseType: !697, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1353, file: !1346, line: 32, baseType: !786, size: 16, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1345, file: !1346, line: 256, baseType: !1358, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!1180, !1288, !1352, !697, !798}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1336, file: !1283, line: 119, baseType: !1362, size: 64, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1365)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1346, line: 84, size: 320, elements: !1366)
!1366 = !{!1367, !1368, !1372, !1917, !1919}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1365, file: !1346, line: 85, baseType: !697, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1365, file: !1346, line: 86, baseType: !1369, size: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!786, !1288, !1352, !50}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1365, file: !1346, line: 88, baseType: !1373, size: 64, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!786, !1288, !1376, !50}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1346, line: 175, size: 512, elements: !1378)
!1378 = !{!1379, !1380, !1381, !1382, !1908, !1912, !1913}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1377, file: !1346, line: 176, baseType: !1353, size: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1377, file: !1346, line: 177, baseType: !798, size: 64, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1377, file: !1346, line: 178, baseType: !38, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1377, file: !1346, line: 179, baseType: !1383, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1386}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !426, line: 472, size: 1536, align: 64, elements: !1388)
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1900, !1901, !1902, !1905, !1906, !1907}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1387, file: !426, line: 473, baseType: !1028, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1387, file: !426, line: 474, baseType: !539, size: 128, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1387, file: !426, line: 475, baseType: !637, size: 320, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1387, file: !426, line: 476, baseType: !544, size: 32, offset: 512)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1387, file: !426, line: 477, baseType: !45, size: 32, offset: 544)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1387, file: !426, line: 482, baseType: !270, size: 128, offset: 576)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1387, file: !426, line: 483, baseType: !27, size: 64, offset: 704)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1387, file: !426, line: 484, baseType: !27, size: 64, offset: 768)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1387, file: !426, line: 485, baseType: !1398, size: 64, offset: 832)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1400)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !426, line: 404, size: 1280, elements: !1401)
!1401 = !{!1402, !1718, !1788, !1792, !1796, !1802, !1808, !1812, !1817, !1821, !1825, !1829, !1857, !1868, !1872, !1876, !1881, !1885, !1892, !1896}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1400, file: !426, line: 405, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!50, !1406, !1716}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !389, line: 74, size: 512, align: 128, elements: !1408)
!1408 = !{!1409, !1410, !1710, !1715}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1407, file: !389, line: 75, baseType: !27, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1407, file: !389, line: 83, baseType: !1411, size: 320, offset: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1407, file: !389, line: 83, size: 320, elements: !1412)
!1412 = !{!1413, !1434, !1448, !1452, !1709}
!1413 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !389, line: 84, baseType: !1414, size: 320)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1411, file: !389, line: 84, size: 320, elements: !1415)
!1415 = !{!1416, !1427, !1428, !1433}
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !389, line: 90, baseType: !1417, size: 128)
!1417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !389, line: 90, size: 128, elements: !1418)
!1418 = !{!1419, !1420, !1425, !1426}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1417, file: !389, line: 91, baseType: !106, size: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, scope: !1417, file: !389, line: 94, baseType: !1421, size: 128)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1417, file: !389, line: 94, size: 128, elements: !1422)
!1422 = !{!1423, !1424}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1421, file: !389, line: 96, baseType: !38, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1421, file: !389, line: 98, baseType: !34, size: 32, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1417, file: !389, line: 102, baseType: !106, size: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1417, file: !389, line: 103, baseType: !106, size: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1414, file: !389, line: 106, baseType: !1386, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !389, line: 107, baseType: !1429, size: 64, offset: 192)
!1429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !389, line: 107, size: 64, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1429, file: !389, line: 108, baseType: !27, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1429, file: !389, line: 109, baseType: !27, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1414, file: !389, line: 117, baseType: !27, size: 64, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !389, line: 119, baseType: !1435, size: 320)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1411, file: !389, line: 119, size: 320, elements: !1436)
!1436 = !{!1437, !1438, !1441, !1442, !1443}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1435, file: !389, line: 124, baseType: !27, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1435, file: !389, line: 125, baseType: !1439, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !389, line: 125, flags: DIFlagFwdDecl)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1435, file: !389, line: 126, baseType: !27, size: 64, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1435, file: !389, line: 127, baseType: !27, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, scope: !1435, file: !389, line: 128, baseType: !1444, size: 64, offset: 256)
!1444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1435, file: !389, line: 128, size: 64, elements: !1445)
!1445 = !{!1446, !1447}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1444, file: !389, line: 133, baseType: !27, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1444, file: !389, line: 138, baseType: !446, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !389, line: 141, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1411, file: !389, line: 141, size: 64, elements: !1450)
!1450 = !{!1451}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1449, file: !389, line: 142, baseType: !27, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !389, line: 144, baseType: !1453, size: 128)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1411, file: !389, line: 144, size: 128, elements: !1454)
!1454 = !{!1455, !1708}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1453, file: !389, line: 146, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1458, line: 126, size: 1216, elements: !1459)
!1458 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!1459 = !{!1460, !1470, !1491, !1492, !1500, !1501, !1502, !1690, !1691, !1692}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1457, file: !1458, line: 127, baseType: !1461, size: 384)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !1458, line: 21, size: 384, elements: !1462)
!1462 = !{!1463, !1464, !1466, !1467, !1468, !1469}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1461, file: !1458, line: 22, baseType: !27, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1461, file: !1458, line: 23, baseType: !1465, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1461, file: !1458, line: 24, baseType: !1465, size: 64, offset: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1461, file: !1458, line: 25, baseType: !27, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1461, file: !1458, line: 26, baseType: !27, size: 64, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1461, file: !1458, line: 27, baseType: !27, size: 64, offset: 320)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1457, file: !1458, line: 128, baseType: !1471, size: 128, offset: 384)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1472, line: 105, size: 128, elements: !1473)
!1472 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1471, file: !1472, line: 110, baseType: !27, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1471, file: !1472, line: 118, baseType: !1476, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1472, line: 95, size: 448, elements: !1478)
!1478 = !{!1479, !1480, !1486, !1487, !1488, !1489, !1490}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1477, file: !1472, line: 96, baseType: !446, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1477, file: !1472, line: 97, baseType: !1481, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1472, line: 60, baseType: !1483)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !1485}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1477, file: !1472, line: 98, baseType: !1481, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1477, file: !1472, line: 99, baseType: !617, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1477, file: !1472, line: 100, baseType: !617, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1477, file: !1472, line: 101, baseType: !433, size: 128, align: 64, offset: 256)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1477, file: !1472, line: 102, baseType: !1485, size: 64, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1457, file: !1458, line: 129, baseType: !817, size: 256, offset: 512)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1457, file: !1458, line: 130, baseType: !1493, size: 32, offset: 768)
!1493 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !1458, line: 68, baseType: !34, size: 32, elements: !1494)
!1494 = !{!1495, !1496, !1497, !1498, !1499}
!1495 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!1496 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!1497 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!1498 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!1499 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1457, file: !1458, line: 131, baseType: !34, size: 32, offset: 800)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1457, file: !1458, line: 132, baseType: !27, size: 64, offset: 832)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1457, file: !1458, line: 133, baseType: !1503, size: 64, offset: 896)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !1458, line: 77, size: 192, elements: !1506)
!1506 = !{!1507, !1511, !1686}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1505, file: !1458, line: 83, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !1406}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1505, file: !1458, line: 89, baseType: !1512, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !389, line: 1184, baseType: !34)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1518, line: 512, size: 896, elements: !1519)
!1518 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1519 = !{!1520, !1638, !1654, !1661, !1668, !1678, !1679, !1680, !1682, !1684}
!1520 = !DIDerivedType(tag: DW_TAG_member, scope: !1517, file: !1518, line: 513, baseType: !1521, size: 320)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1517, file: !1518, line: 513, size: 320, elements: !1522)
!1522 = !{!1523, !1634, !1635, !1636, !1637}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1521, file: !1518, line: 514, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !389, line: 625, size: 1344, elements: !1526)
!1526 = !{!1527, !1536, !1537, !1545, !1552, !1553, !1558, !1559, !1564, !1565, !1568, !1627, !1628, !1629, !1630, !1631, !1632}
!1527 = !DIDerivedType(tag: DW_TAG_member, scope: !1525, file: !389, line: 628, baseType: !1528, size: 128)
!1528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1525, file: !389, line: 628, size: 128, elements: !1529)
!1529 = !{!1530, !1535}
!1530 = !DIDerivedType(tag: DW_TAG_member, scope: !1528, file: !389, line: 629, baseType: !1531, size: 128)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1528, file: !389, line: 629, size: 128, elements: !1532)
!1532 = !{!1533, !1534}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1531, file: !389, line: 631, baseType: !27, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1531, file: !389, line: 632, baseType: !27, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1528, file: !389, line: 635, baseType: !433, size: 128, align: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1525, file: !389, line: 639, baseType: !387, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1525, file: !389, line: 640, baseType: !1538, size: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1539, line: 297, baseType: !1540)
!1539 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1539, line: 297, size: 64, elements: !1541)
!1541 = !{!1542}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1540, file: !1539, line: 297, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1544, line: 19, baseType: !27)
!1544 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1545 = !DIDerivedType(tag: DW_TAG_member, scope: !1525, file: !389, line: 646, baseType: !1546, size: 64, offset: 256)
!1546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1525, file: !389, line: 646, size: 64, elements: !1547)
!1547 = !{!1548, !1551}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1546, file: !389, line: 647, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1550)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !389, line: 542, baseType: !27)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1546, file: !389, line: 648, baseType: !1550, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1525, file: !389, line: 666, baseType: !50, size: 32, offset: 320)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1525, file: !389, line: 667, baseType: !1554, size: 64, offset: 384)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !389, line: 579, size: 320, elements: !1556)
!1556 = !{!1557}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1555, file: !389, line: 580, baseType: !637, size: 320)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1525, file: !389, line: 670, baseType: !617, size: 8, offset: 448)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1525, file: !389, line: 681, baseType: !1560, size: 256, offset: 512)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1525, file: !389, line: 678, size: 256, elements: !1561)
!1561 = !{!1562, !1563}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1560, file: !389, line: 679, baseType: !93, size: 192, align: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1560, file: !389, line: 680, baseType: !27, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1525, file: !389, line: 689, baseType: !106, size: 128, offset: 768)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1525, file: !389, line: 691, baseType: !1566, size: 64, offset: 896)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !389, line: 691, flags: DIFlagFwdDecl)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1525, file: !389, line: 694, baseType: !1569, size: 64, offset: 960)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1571)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1518, line: 563, size: 1024, elements: !1572)
!1572 = !{!1573, !1577, !1578, !1582, !1586, !1590, !1591, !1595, !1599, !1603, !1604, !1605, !1609, !1613, !1619, !1623}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1571, file: !1518, line: 564, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{null, !1524}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1571, file: !1518, line: 569, baseType: !1574, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1571, file: !1518, line: 571, baseType: !1579, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!50, !1524, !27}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1571, file: !1518, line: 572, baseType: !1583, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!50, !1524}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1571, file: !1518, line: 578, baseType: !1587, size: 64, offset: 256)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!50, !1524, !27, !27, !27}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1571, file: !1518, line: 580, baseType: !1512, size: 64, offset: 320)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1571, file: !1518, line: 581, baseType: !1592, size: 64, offset: 384)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!1515, !1516, !34}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1571, file: !1518, line: 582, baseType: !1596, size: 64, offset: 448)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!1515, !1516, !27, !27}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1571, file: !1518, line: 584, baseType: !1600, size: 64, offset: 512)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!27, !1524}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1571, file: !1518, line: 588, baseType: !1512, size: 64, offset: 576)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1571, file: !1518, line: 591, baseType: !1512, size: 64, offset: 640)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1571, file: !1518, line: 597, baseType: !1606, size: 64, offset: 704)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!50, !1524, !27, !38, !50, !50}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1571, file: !1518, line: 603, baseType: !1610, size: 64, offset: 768)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!697, !1524}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1571, file: !1518, line: 613, baseType: !1614, size: 64, offset: 832)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!50, !1524, !1617}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !20, line: 54, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1571, file: !1518, line: 625, baseType: !1620, size: 64, offset: 896)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!1617, !1524, !27}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1571, file: !1518, line: 633, baseType: !1624, size: 64, offset: 960)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!1406, !1524, !27}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1525, file: !389, line: 697, baseType: !27, size: 64, offset: 1024)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1525, file: !389, line: 699, baseType: !424, size: 64, offset: 1088)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1525, file: !389, line: 700, baseType: !38, size: 64, offset: 1152)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1525, file: !389, line: 711, baseType: !446, size: 64, offset: 1216)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1525, file: !389, line: 717, baseType: !1617, size: 64, offset: 1280)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1525, file: !389, line: 722, baseType: !1633, offset: 1344)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !389, line: 570, elements: !417)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1521, file: !1518, line: 515, baseType: !544, size: 32, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1521, file: !1518, line: 516, baseType: !27, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1521, file: !1518, line: 517, baseType: !27, size: 64, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1521, file: !1518, line: 518, baseType: !27, size: 64, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1517, file: !1518, line: 520, baseType: !1639, size: 32, offset: 320)
!1639 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !389, line: 1325, baseType: !34, size: 32, elements: !1640)
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653}
!1641 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!1642 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!1643 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!1644 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!1645 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!1646 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!1647 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!1648 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!1649 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!1650 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!1651 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!1652 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!1653 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1517, file: !1518, line: 522, baseType: !1655, size: 64, offset: 384)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1544, line: 22, baseType: !1657)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1544, line: 22, size: 64, elements: !1658)
!1658 = !{!1659}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1657, file: !1544, line: 22, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1544, line: 15, baseType: !27)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1517, file: !1518, line: 524, baseType: !1662, size: 64, offset: 448)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1539, line: 372, baseType: !1664)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1539, line: 372, size: 64, elements: !1665)
!1665 = !{!1666}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1664, file: !1539, line: 372, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1544, line: 16, baseType: !27)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1517, file: !1518, line: 527, baseType: !1669, size: 64, offset: 512)
!1669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1517, file: !1518, line: 527, size: 64, elements: !1670)
!1670 = !{!1671, !1677}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1669, file: !1518, line: 528, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1544, line: 21, baseType: !1673)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1544, line: 21, size: 64, elements: !1674)
!1674 = !{!1675}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1673, file: !1544, line: 21, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1544, line: 14, baseType: !27)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1669, file: !1518, line: 529, baseType: !1656, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1517, file: !1518, line: 534, baseType: !1406, size: 64, offset: 576)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1517, file: !1518, line: 535, baseType: !1406, size: 64, offset: 640)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1517, file: !1518, line: 541, baseType: !1681, size: 64, offset: 704)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1517, file: !1518, line: 545, baseType: !1683, size: 64, offset: 768)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1517, file: !1518, line: 549, baseType: !1685, size: 64, offset: 832)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1539, line: 520, baseType: !1406)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1505, file: !1458, line: 100, baseType: !1687, size: 64, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!50, !1456, !27, !27, !50}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1457, file: !1458, line: 134, baseType: !38, size: 64, offset: 960)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1457, file: !1458, line: 135, baseType: !50, size: 32, offset: 1024)
!1692 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !1458, line: 136, baseType: !1693, size: 128, offset: 1088)
!1693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1457, file: !1458, line: 136, size: 128, elements: !1694)
!1694 = !{!1695, !1701}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1693, file: !1458, line: 137, baseType: !1696, size: 128)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1697, line: 6, size: 128, elements: !1698)
!1697 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1696, file: !1697, line: 7, baseType: !101, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1696, file: !1697, line: 8, baseType: !101, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !1458, line: 138, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !1458, line: 138, elements: !1703)
!1703 = !{!1704, !1706}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1702, file: !1458, line: 138, baseType: !1705)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1702, file: !1458, line: 138, elements: !417)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1702, file: !1458, line: 138, baseType: !1707)
!1707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1696, elements: !883)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1453, file: !389, line: 147, baseType: !38, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1411, file: !389, line: 161, baseType: !433, size: 128, align: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, scope: !1407, file: !389, line: 164, baseType: !1711, size: 32, offset: 384)
!1711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1407, file: !389, line: 164, size: 32, elements: !1712)
!1712 = !{!1713, !1714}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1711, file: !389, line: 169, baseType: !45, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1711, file: !389, line: 177, baseType: !34, size: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1407, file: !389, line: 181, baseType: !45, size: 32, offset: 416)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !426, line: 309, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1400, file: !426, line: 406, baseType: !1719, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!50, !424, !1722}
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !389, line: 293, size: 1536, elements: !1724)
!1724 = !{!1725, !1755, !1769}
!1725 = !DIDerivedType(tag: DW_TAG_member, scope: !1723, file: !389, line: 295, baseType: !1726, size: 512)
!1726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1723, file: !389, line: 295, size: 512, elements: !1727)
!1727 = !{!1728, !1754}
!1728 = !DIDerivedType(tag: DW_TAG_member, scope: !1726, file: !389, line: 296, baseType: !1729, size: 448)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1726, file: !389, line: 296, size: 448, elements: !1730)
!1730 = !{!1731, !1732, !1741, !1742, !1743, !1752, !1753}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1729, file: !389, line: 298, baseType: !27, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !389, line: 299, baseType: !1733, size: 128, offset: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1729, file: !389, line: 299, size: 128, elements: !1734)
!1734 = !{!1735, !1736}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1733, file: !389, line: 300, baseType: !106, size: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, scope: !1733, file: !389, line: 302, baseType: !1737, size: 128)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1733, file: !389, line: 302, size: 128, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1737, file: !389, line: 303, baseType: !38, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1737, file: !389, line: 305, baseType: !34, size: 32, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1729, file: !389, line: 310, baseType: !1386, size: 64, offset: 192)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1729, file: !389, line: 311, baseType: !27, size: 64, offset: 256)
!1743 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !389, line: 312, baseType: !1744, size: 64, offset: 320)
!1744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1729, file: !389, line: 312, size: 64, elements: !1745)
!1745 = !{!1746, !1747}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1744, file: !389, line: 313, baseType: !38, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1744, file: !389, line: 314, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !389, line: 257, baseType: !1749)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !389, line: 255, size: 64, elements: !1750)
!1750 = !{!1751}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1749, file: !389, line: 256, baseType: !27, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1729, file: !389, line: 316, baseType: !45, size: 32, offset: 384)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1729, file: !389, line: 317, baseType: !45, size: 32, offset: 416)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1726, file: !389, line: 323, baseType: !1407, size: 512, align: 128)
!1755 = !DIDerivedType(tag: DW_TAG_member, scope: !1723, file: !389, line: 325, baseType: !1756, size: 512, offset: 512)
!1756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1723, file: !389, line: 325, size: 512, elements: !1757)
!1757 = !{!1758, !1768}
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1756, file: !389, line: 326, baseType: !1759, size: 320)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1756, file: !389, line: 326, size: 320, elements: !1760)
!1760 = !{!1761, !1762, !1763, !1764, !1765, !1766, !1767}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1759, file: !389, line: 327, baseType: !27, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1759, file: !389, line: 328, baseType: !27, size: 64, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1759, file: !389, line: 329, baseType: !27, size: 64, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1759, file: !389, line: 331, baseType: !45, size: 32, offset: 192)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1759, file: !389, line: 332, baseType: !45, size: 32, offset: 224)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1759, file: !389, line: 333, baseType: !45, size: 32, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1759, file: !389, line: 335, baseType: !34, size: 32, offset: 288)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1756, file: !389, line: 339, baseType: !1407, size: 512, align: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1723, file: !389, line: 341, baseType: !1770, size: 512, offset: 1024)
!1770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1723, file: !389, line: 341, size: 512, elements: !1771)
!1771 = !{!1772, !1781, !1787}
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !389, line: 342, baseType: !1773, size: 384)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1770, file: !389, line: 342, size: 384, elements: !1774)
!1774 = !{!1775, !1776, !1777, !1778, !1779, !1780}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1773, file: !389, line: 343, baseType: !27, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1773, file: !389, line: 344, baseType: !27, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1773, file: !389, line: 346, baseType: !38, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1773, file: !389, line: 347, baseType: !38, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1773, file: !389, line: 348, baseType: !38, size: 64, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1773, file: !389, line: 349, baseType: !38, size: 64, offset: 320)
!1781 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !389, line: 352, baseType: !1782, size: 256)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1770, file: !389, line: 352, size: 256, elements: !1783)
!1783 = !{!1784, !1785, !1786}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1782, file: !389, line: 353, baseType: !27, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1782, file: !389, line: 354, baseType: !27, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1782, file: !389, line: 356, baseType: !106, size: 128, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1770, file: !389, line: 359, baseType: !1407, size: 512, align: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1400, file: !426, line: 409, baseType: !1789, size: 64, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!50, !1386, !1716}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1400, file: !426, line: 412, baseType: !1793, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!617, !1386, !1722}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1400, file: !426, line: 414, baseType: !1797, size: 64, offset: 256)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !1800}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !426, line: 310, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1400, file: !426, line: 416, baseType: !1803, size: 64, offset: 320)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!50, !424, !1386, !465, !34, !1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1400, file: !426, line: 419, baseType: !1809, size: 64, offset: 384)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!50, !424, !1386, !465, !34, !34, !1406, !38}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1400, file: !426, line: 424, baseType: !1813, size: 64, offset: 448)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!1816, !1386, !1816}
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !46, line: 131, baseType: !101)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1400, file: !426, line: 425, baseType: !1818, size: 64, offset: 512)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{null, !1722, !798, !798}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1400, file: !426, line: 426, baseType: !1822, size: 64, offset: 576)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!617, !1722, !544}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1400, file: !426, line: 427, baseType: !1826, size: 64, offset: 640)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{null, !1722}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1400, file: !426, line: 428, baseType: !1830, size: 64, offset: 704)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!1180, !1833, !1855}
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !426, line: 373, size: 384, elements: !1835)
!1835 = !{!1836, !1837, !1838, !1842, !1843, !1844, !1845}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1834, file: !426, line: 374, baseType: !424, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1834, file: !426, line: 375, baseType: !465, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1834, file: !426, line: 376, baseType: !1839, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null, !1833, !876}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1834, file: !426, line: 377, baseType: !38, size: 64, offset: 192)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1834, file: !426, line: 378, baseType: !50, size: 32, offset: 256)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1834, file: !426, line: 379, baseType: !70, size: 16, offset: 288)
!1845 = !DIDerivedType(tag: DW_TAG_member, scope: !1834, file: !426, line: 380, baseType: !1846, size: 64, offset: 320)
!1846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1834, file: !426, line: 380, size: 64, elements: !1847)
!1847 = !{!1848, !1851}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1846, file: !426, line: 386, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !426, line: 386, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1846, file: !426, line: 395, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!1180, !38}
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !426, line: 69, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1400, file: !426, line: 433, baseType: !1858, size: 64, offset: 768)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!50, !1386, !1722, !1722, !1861}
!1861 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !1862, line: 15, baseType: !34, size: 32, elements: !1863)
!1862 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!1863 = !{!1864, !1865, !1866, !1867}
!1864 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!1865 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!1866 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!1867 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1400, file: !426, line: 435, baseType: !1869, size: 64, offset: 832)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!50, !1722}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1400, file: !426, line: 436, baseType: !1873, size: 64, offset: 896)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!617, !1722, !798, !798}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1400, file: !426, line: 438, baseType: !1877, size: 64, offset: 960)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{null, !1722, !1880, !1880}
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1400, file: !426, line: 439, baseType: !1882, size: 64, offset: 1024)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!50, !1386, !1406}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1400, file: !426, line: 442, baseType: !1886, size: 64, offset: 1088)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!50, !1889, !424, !1891}
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !426, line: 66, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1400, file: !426, line: 444, baseType: !1893, size: 64, offset: 1152)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{null, !424}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1400, file: !426, line: 445, baseType: !1897, size: 64, offset: 1216)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!50, !1833, !1855}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1387, file: !426, line: 486, baseType: !27, size: 64, offset: 896)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1387, file: !426, line: 487, baseType: !637, size: 320, offset: 960)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1387, file: !426, line: 488, baseType: !1903, size: 32, offset: 1280)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1904, line: 8, baseType: !30)
!1904 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1387, file: !426, line: 489, baseType: !406, size: 32, offset: 1312)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1387, file: !426, line: 490, baseType: !106, size: 128, offset: 1344)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1387, file: !426, line: 491, baseType: !38, size: 64, offset: 1472)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1377, file: !1346, line: 180, baseType: !1909, size: 64, offset: 320)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!1180, !424, !1288, !1376, !707, !465, !798}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1377, file: !1346, line: 182, baseType: !1909, size: 64, offset: 384)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1377, file: !1346, line: 184, baseType: !1914, size: 64, offset: 448)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!50, !424, !1288, !1376, !1524}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1365, file: !1346, line: 90, baseType: !1918, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1365, file: !1346, line: 91, baseType: !1920, size: 64, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1336, file: !1283, line: 120, baseType: !1922, size: 64, offset: 192)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!1925, !1306}
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1927)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !1928, line: 39, size: 384, elements: !1929)
!1928 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!1929 = !{!1930, !1936, !1940, !1944, !1952, !1956}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1927, file: !1928, line: 40, baseType: !1931, size: 32)
!1931 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !1928, line: 26, baseType: !34, size: 32, elements: !1932)
!1932 = !{!1933, !1934, !1935}
!1933 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!1934 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!1935 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1927, file: !1928, line: 41, baseType: !1937, size: 64, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!617}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1927, file: !1928, line: 42, baseType: !1941, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!38}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1927, file: !1928, line: 43, baseType: !1945, size: 64, offset: 192)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!1948, !1950}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1928, line: 19, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1927, file: !1928, line: 44, baseType: !1953, size: 64, offset: 256)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!1948}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1927, file: !1928, line: 45, baseType: !1059, size: 64, offset: 320)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1336, file: !1283, line: 121, baseType: !1958, size: 64, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!1948, !1306}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1336, file: !1283, line: 122, baseType: !1962, size: 64, offset: 320)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{null, !1306, !842, !843}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1282, file: !1283, line: 70, baseType: !1966, size: 64, offset: 384)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1968, line: 190, size: 1152, elements: !1969)
!1968 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1969 = !{!1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !2100, !2101, !2102, !2103, !2104, !2107}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1967, file: !1968, line: 191, baseType: !45, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1967, file: !1968, line: 192, baseType: !45, size: 32, offset: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1967, file: !1968, line: 202, baseType: !1966, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1967, file: !1968, line: 203, baseType: !697, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1967, file: !1968, line: 205, baseType: !93, size: 192, align: 64, offset: 192)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1967, file: !1968, line: 207, baseType: !1948, size: 64, offset: 384)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1967, file: !1968, line: 208, baseType: !34, size: 32, offset: 448)
!1977 = !DIDerivedType(tag: DW_TAG_member, scope: !1967, file: !1968, line: 209, baseType: !1978, size: 256, offset: 512)
!1978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1967, file: !1968, line: 209, size: 256, elements: !1979)
!1979 = !{!1980, !1989, !1993}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1978, file: !1968, line: 210, baseType: !1981, size: 256)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1968, line: 153, size: 256, elements: !1982)
!1982 = !{!1983, !1984, !1985, !1988}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1981, file: !1968, line: 154, baseType: !27, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1981, file: !1968, line: 156, baseType: !273, size: 64, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1981, file: !1968, line: 162, baseType: !1986, size: 64, offset: 128)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1968, line: 162, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1981, file: !1968, line: 167, baseType: !27, size: 64, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1978, file: !1968, line: 211, baseType: !1990, size: 64)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1968, line: 170, size: 64, elements: !1991)
!1991 = !{!1992}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1990, file: !1968, line: 171, baseType: !1966, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1978, file: !1968, line: 212, baseType: !1994, size: 256)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1968, line: 174, size: 256, elements: !1995)
!1995 = !{!1996, !2095, !2098, !2099}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1994, file: !1968, line: 175, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1999)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1968, line: 271, size: 768, elements: !2000)
!2000 = !{!2001, !2059, !2063, !2064, !2065, !2066, !2067, !2071, !2072, !2073, !2074, !2091}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1999, file: !1968, line: 276, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!50, !2005}
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1968, line: 251, size: 1216, elements: !2007)
!2007 = !{!2008, !2009, !2010, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2006, file: !1968, line: 253, baseType: !1966, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2006, file: !1968, line: 254, baseType: !424, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2006, file: !1968, line: 255, baseType: !2011, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2013, line: 17, size: 960, elements: !2014)
!2013 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2014 = !{!2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2044, !2045, !2048}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2012, file: !2013, line: 18, baseType: !707, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2012, file: !2013, line: 19, baseType: !798, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2012, file: !2013, line: 20, baseType: !798, size: 64, offset: 128)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2012, file: !2013, line: 21, baseType: !798, size: 64, offset: 192)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2012, file: !2013, line: 22, baseType: !798, size: 64, offset: 256)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2012, file: !2013, line: 23, baseType: !465, size: 64, offset: 320)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2012, file: !2013, line: 24, baseType: !465, size: 64, offset: 384)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2012, file: !2013, line: 25, baseType: !453, size: 256, offset: 448)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2012, file: !2013, line: 26, baseType: !2024, size: 64, offset: 704)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2026)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2013, line: 32, size: 256, elements: !2027)
!2027 = !{!2028, !2032, !2036, !2040}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2026, file: !2013, line: 33, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!38, !2011, !801}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2026, file: !2013, line: 34, baseType: !2033, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !2011, !38}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2026, file: !2013, line: 35, baseType: !2037, size: 64, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!38, !2011, !38, !801}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2026, file: !2013, line: 36, baseType: !2041, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!50, !2011, !38}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2012, file: !2013, line: 27, baseType: !50, size: 32, offset: 768)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2012, file: !2013, line: 28, baseType: !2046, size: 64, offset: 832)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2012, file: !2013, line: 29, baseType: !38, size: 64, offset: 896)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2006, file: !1968, line: 256, baseType: !38, size: 64, offset: 192)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2006, file: !1968, line: 259, baseType: !453, size: 256, offset: 256)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2006, file: !1968, line: 260, baseType: !453, size: 256, offset: 512)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2006, file: !1968, line: 261, baseType: !50, size: 32, offset: 768)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2006, file: !1968, line: 262, baseType: !106, size: 128, offset: 832)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2006, file: !1968, line: 263, baseType: !707, size: 64, offset: 960)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2006, file: !1968, line: 265, baseType: !798, size: 64, offset: 1024)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2006, file: !1968, line: 266, baseType: !617, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2006, file: !1968, line: 267, baseType: !617, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2006, file: !1968, line: 268, baseType: !1569, size: 64, offset: 1152)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1999, file: !1968, line: 277, baseType: !2060, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{null, !2005}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1999, file: !1968, line: 290, baseType: !2041, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1999, file: !1968, line: 292, baseType: !2029, size: 64, offset: 192)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1999, file: !1968, line: 293, baseType: !2037, size: 64, offset: 256)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1999, file: !1968, line: 294, baseType: !2033, size: 64, offset: 320)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1999, file: !1968, line: 296, baseType: !2068, size: 64, offset: 384)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!1180, !2005, !707, !798, !465}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1999, file: !1968, line: 306, baseType: !798, size: 64, offset: 448)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1999, file: !1968, line: 313, baseType: !617, size: 8, offset: 512)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1999, file: !1968, line: 314, baseType: !2068, size: 64, offset: 576)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1999, file: !1968, line: 317, baseType: !2075, size: 64, offset: 640)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!2078, !2005, !2080}
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2079, line: 59, baseType: !34)
!2079 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2082, line: 37, size: 128, elements: !2083)
!2082 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2083 = !{!2084, !2090}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2081, file: !2082, line: 38, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2082, line: 31, baseType: !2086)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null, !424, !2089, !2080}
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2081, file: !2082, line: 39, baseType: !2078, size: 32, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1999, file: !1968, line: 320, baseType: !2092, size: 64, offset: 704)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!50, !2005, !1524}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1994, file: !1968, line: 176, baseType: !2096, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1968, line: 35, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1994, file: !1968, line: 177, baseType: !465, size: 64, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1994, file: !1968, line: 178, baseType: !1966, size: 64, offset: 192)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1967, file: !1968, line: 215, baseType: !38, size: 64, offset: 768)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1967, file: !1968, line: 221, baseType: !101, size: 64, offset: 832)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1967, file: !1968, line: 223, baseType: !72, size: 16, offset: 896)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1967, file: !1968, line: 224, baseType: !786, size: 16, offset: 912)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1967, file: !1968, line: 225, baseType: !2105, size: 64, offset: 960)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1968, line: 36, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1967, file: !1968, line: 227, baseType: !433, size: 128, align: 64, offset: 1024)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1282, file: !1283, line: 71, baseType: !2109, size: 32, offset: 448)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2110, line: 19, size: 32, elements: !2111)
!2110 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2111 = !{!2112}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2109, file: !2110, line: 20, baseType: !40, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1282, file: !1283, line: 73, baseType: !34, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1282, file: !1283, line: 74, baseType: !34, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1282, file: !1283, line: 75, baseType: !34, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1282, file: !1283, line: 76, baseType: !34, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1282, file: !1283, line: 77, baseType: !34, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1279, file: !1264, line: 47, baseType: !1262, size: 64, offset: 512)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1279, file: !1264, line: 48, baseType: !1288, size: 64, offset: 576)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1279, file: !1264, line: 49, baseType: !2121, size: 64, offset: 640)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !1264, line: 49, flags: DIFlagFwdDecl)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1279, file: !1264, line: 50, baseType: !816, size: 64, offset: 704)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1263, file: !1264, line: 418, baseType: !2125, size: 64, offset: 1408)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !1264, line: 53, size: 448, elements: !2127)
!2127 = !{!2128, !2129, !2134, !2138, !2142, !2146}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2126, file: !1264, line: 54, baseType: !1353, size: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2126, file: !1264, line: 55, baseType: !2130, size: 64, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!1180, !2125, !2133, !707}
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2126, file: !1264, line: 57, baseType: !2135, size: 64, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!1180, !2125, !2133, !697, !798}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2126, file: !1264, line: 59, baseType: !2139, size: 64, offset: 256)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !1262, !697}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2126, file: !1264, line: 60, baseType: !2143, size: 64, offset: 320)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!50, !1262}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2126, file: !1264, line: 61, baseType: !2147, size: 64, offset: 384)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{null, !1262}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1263, file: !1264, line: 419, baseType: !697, size: 64, offset: 1472)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1263, file: !1264, line: 420, baseType: !697, size: 64, offset: 1536)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1263, file: !1264, line: 421, baseType: !1288, size: 64, offset: 1600)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1263, file: !1264, line: 424, baseType: !2154, size: 64, offset: 1664)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2156)
!2156 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !1264, line: 424, flags: DIFlagFwdDecl)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1263, file: !1264, line: 425, baseType: !2158, size: 64, offset: 1728)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !629)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1263, file: !1264, line: 426, baseType: !34, size: 32, offset: 1792)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1263, file: !1264, line: 435, baseType: !453, size: 256, offset: 1856)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1263, file: !1264, line: 437, baseType: !2163, size: 64, offset: 2112)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2165, line: 69, size: 320, elements: !2166)
!2165 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2166 = !{!2167, !2168, !2169, !2186, !2188, !2192, !2193}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2164, file: !2165, line: 70, baseType: !697, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2164, file: !2165, line: 71, baseType: !1262, size: 64, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2164, file: !2165, line: 72, baseType: !2170, size: 64, offset: 128)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2172)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2165, line: 47, size: 256, elements: !2173)
!2173 = !{!2174, !2175, !2181, !2185}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2172, file: !2165, line: 49, baseType: !34, size: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2172, file: !2165, line: 51, baseType: !2176, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!50, !697, !2179}
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2164)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2172, file: !2165, line: 53, baseType: !2182, size: 64, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!50, !707, !2179}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2172, file: !2165, line: 55, baseType: !1059, size: 64, offset: 192)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2164, file: !2165, line: 73, baseType: !2187, size: 16, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2164, file: !2165, line: 74, baseType: !2189, size: 8, offset: 208)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !31, line: 16, baseType: !2190)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !33, line: 20, baseType: !2191)
!2191 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2164, file: !2165, line: 75, baseType: !221, size: 8, offset: 216)
!2193 = !DIDerivedType(tag: DW_TAG_member, scope: !2164, file: !2165, line: 76, baseType: !2194, size: 64, offset: 256)
!2194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2164, file: !2165, line: 76, size: 64, elements: !2195)
!2195 = !{!2196, !2197, !2204}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2194, file: !2165, line: 77, baseType: !38, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2194, file: !2165, line: 78, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2200)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2165, line: 86, size: 128, elements: !2201)
!2201 = !{!2202, !2203}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2200, file: !2165, line: 87, baseType: !34, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2200, file: !2165, line: 88, baseType: !707, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2194, file: !2165, line: 79, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2207)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2165, line: 92, size: 256, elements: !2208)
!2208 = !{!2209, !2210, !2211, !2213, !2214}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2207, file: !2165, line: 94, baseType: !34, size: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2207, file: !2165, line: 95, baseType: !34, size: 32, offset: 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2207, file: !2165, line: 96, baseType: !2212, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2207, file: !2165, line: 97, baseType: !2170, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2207, file: !2165, line: 98, baseType: !38, size: 64, offset: 192)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1263, file: !1264, line: 438, baseType: !34, size: 32, offset: 2176)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1263, file: !1264, line: 441, baseType: !34, size: 32, offset: 2208)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1263, file: !1264, line: 442, baseType: !2154, size: 64, offset: 2240)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1263, file: !1264, line: 443, baseType: !2158, size: 64, offset: 2304)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1263, file: !1264, line: 444, baseType: !617, size: 8, offset: 2368)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1263, file: !1264, line: 451, baseType: !617, size: 8, offset: 2376)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1263, file: !1264, line: 454, baseType: !34, size: 32, offset: 2400)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1263, file: !1264, line: 455, baseType: !2223, size: 64, offset: 2432)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2225, line: 23, size: 96, elements: !2226)
!2225 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2226 = !{!2227, !2228, !2229}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2224, file: !2225, line: 24, baseType: !50, size: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2224, file: !2225, line: 24, baseType: !50, size: 32, offset: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2224, file: !2225, line: 24, baseType: !50, size: 32, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1263, file: !1264, line: 458, baseType: !2231, size: 64, offset: 2496)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!50}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1263, file: !1264, line: 460, baseType: !2235, size: 4032, align: 512, offset: 2560)
!2235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2236, size: 4032, elements: !2252)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !1264, line: 362, size: 576, elements: !2237)
!2237 = !{!2238, !2239, !2240}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2236, file: !1264, line: 363, baseType: !38, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2236, file: !1264, line: 364, baseType: !34, size: 32, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2236, file: !1264, line: 367, baseType: !2241, size: 448, offset: 128)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !1264, line: 319, size: 448, elements: !2242)
!2242 = !{!2243, !2244}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2241, file: !1264, line: 320, baseType: !1262, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2241, file: !1264, line: 321, baseType: !2245, size: 384, offset: 64)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2246, line: 40, size: 384, elements: !2247)
!2246 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2247 = !{!2248}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2245, file: !2246, line: 41, baseType: !2249, size: 384, align: 64)
!2249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 384, align: 64, elements: !2250)
!2250 = !{!2251}
!2251 = !DISubrange(count: 2)
!2252 = !{!2253}
!2253 = !DISubrange(count: 7)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1263, file: !1264, line: 463, baseType: !2255, size: 192, offset: 6592)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2256, line: 8, size: 192, elements: !2257)
!2256 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2257 = !{!2258, !2259, !2261}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2255, file: !2256, line: 10, baseType: !34, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2255, file: !2256, line: 11, baseType: !2260, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2255, file: !2256, line: 12, baseType: !2262, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2264, line: 59, size: 48, elements: !2265)
!2264 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2265 = !{!2266, !2269, !2270, !2271, !2272, !2273}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2263, file: !2264, line: 60, baseType: !2267, size: 16)
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !31, line: 18, baseType: !2268)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !33, line: 23, baseType: !665)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2263, file: !2264, line: 61, baseType: !2267, size: 16, offset: 16)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2263, file: !2264, line: 63, baseType: !34, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2263, file: !2264, line: 64, baseType: !34, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2263, file: !2264, line: 65, baseType: !34, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2263, file: !2264, line: 66, baseType: !34, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1263, file: !1264, line: 465, baseType: !27, size: 64, offset: 6784)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1263, file: !1264, line: 469, baseType: !34, size: 32, offset: 6848)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1263, file: !1264, line: 470, baseType: !106, size: 128, offset: 6912)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1263, file: !1264, line: 471, baseType: !2278, size: 64, offset: 7040)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2280, line: 33, size: 96, elements: !2281)
!2280 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2281 = !{!2282, !2283, !2284, !2285}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2279, file: !2280, line: 37, baseType: !50, size: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2279, file: !2280, line: 43, baseType: !50, size: 32, offset: 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2279, file: !2280, line: 45, baseType: !72, size: 16, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2279, file: !2280, line: 47, baseType: !72, size: 16, offset: 80)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1263, file: !1264, line: 476, baseType: !2287, size: 64, offset: 7104)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !1264, line: 378, size: 256, elements: !2289)
!2289 = !{!2290, !2306, !2307, !2308}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2288, file: !1264, line: 379, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2293, line: 204, baseType: !2294)
!2293 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2293, line: 197, size: 192, elements: !2295)
!2295 = !{!2296, !2298, !2299, !2300, !2302, !2304}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2294, file: !2293, line: 198, baseType: !2297, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2293, line: 21, baseType: !32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2294, file: !2293, line: 199, baseType: !223, size: 8, offset: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2294, file: !2293, line: 200, baseType: !223, size: 8, offset: 40)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2294, file: !2293, line: 201, baseType: !2301, size: 16, offset: 48)
!2301 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2293, line: 17, baseType: !71)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2294, file: !2293, line: 202, baseType: !2303, size: 64, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2293, line: 16, baseType: !102)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2294, file: !2293, line: 203, baseType: !2305, size: 64, offset: 128)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2293, line: 22, baseType: !102)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2288, file: !1264, line: 380, baseType: !34, size: 32, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2288, file: !1264, line: 381, baseType: !707, size: 64, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2288, file: !1264, line: 382, baseType: !707, size: 64, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1263, file: !1264, line: 477, baseType: !2288, size: 256, offset: 7168)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1263, file: !1264, line: 480, baseType: !2311, size: 64, offset: 7424)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !1264, line: 480, flags: DIFlagFwdDecl)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1263, file: !1264, line: 483, baseType: !2314, size: 64, offset: 7488)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !1264, line: 483, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1263, file: !1264, line: 488, baseType: !707, size: 64, offset: 7552)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1263, file: !1264, line: 492, baseType: !38, size: 64, offset: 7616)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1263, file: !1264, line: 493, baseType: !34, size: 32, offset: 7680)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1263, file: !1264, line: 495, baseType: !38, size: 64, offset: 7744)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1263, file: !1264, line: 496, baseType: !34, size: 32, offset: 7808)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1263, file: !1264, line: 499, baseType: !34, size: 32, offset: 7840)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1263, file: !1264, line: 500, baseType: !2323, size: 64, offset: 7872)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2325, line: 45, baseType: !2326)
!2325 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1263, file: !1264, line: 503, baseType: !34, size: 32, offset: 7936)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1263, file: !1264, line: 504, baseType: !2329, size: 64, offset: 8000)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2332, line: 96, size: 192, elements: !2333)
!2332 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2333 = !{!2334, !2335, !2388, !2391}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2331, file: !2332, line: 97, baseType: !34, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2331, file: !2332, line: 98, baseType: !2336, size: 64, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2332, line: 24, size: 3072, elements: !2338)
!2338 = !{!2339, !2341, !2342, !2343, !2344, !2357, !2358, !2359, !2360, !2372, !2373, !2374, !2385, !2386, !2387}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2337, file: !2332, line: 26, baseType: !2340, size: 128)
!2340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 128, elements: !2250)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2337, file: !2332, line: 27, baseType: !2340, size: 128, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2337, file: !2332, line: 28, baseType: !50, size: 32, offset: 256)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2337, file: !2332, line: 31, baseType: !406, size: 32, align: 512, offset: 512)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2337, file: !2332, line: 32, baseType: !2345, size: 960, offset: 576)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2346, line: 206, size: 960, elements: !2347)
!2346 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2347 = !{!2348, !2349, !2352, !2354, !2355, !2356}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2345, file: !2346, line: 207, baseType: !436, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2345, file: !2346, line: 208, baseType: !2350, size: 256, offset: 64)
!2350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2351, size: 256, elements: !513)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2345, file: !2346, line: 209, baseType: !2353, size: 256, offset: 320)
!2353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 256, elements: !513)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2345, file: !2346, line: 213, baseType: !876, size: 64, offset: 576)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2345, file: !2346, line: 215, baseType: !878, size: 256, offset: 640)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2345, file: !2346, line: 216, baseType: !221, size: 8, offset: 896)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2337, file: !2332, line: 33, baseType: !27, size: 64, offset: 1536)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2337, file: !2332, line: 34, baseType: !27, size: 64, offset: 1600)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2337, file: !2332, line: 35, baseType: !617, size: 8, offset: 1664)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2337, file: !2332, line: 36, baseType: !2361, size: 320, offset: 1728)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2362, line: 11, size: 320, elements: !2363)
!2362 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2363 = !{!2364, !2365, !2366, !2371}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2361, file: !2362, line: 16, baseType: !508, size: 128)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2361, file: !2362, line: 17, baseType: !27, size: 64, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2361, file: !2362, line: 18, baseType: !2367, size: 64, offset: 192)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{null, !2370}
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2361, file: !2362, line: 19, baseType: !30, size: 32, offset: 256)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2337, file: !2332, line: 37, baseType: !746, size: 256, offset: 2048)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2337, file: !2332, line: 38, baseType: !433, size: 128, align: 64, offset: 2304)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2337, file: !2332, line: 39, baseType: !2375, size: 64, offset: 2432)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2332, line: 49, size: 768, elements: !2377)
!2377 = !{!2378, !2379, !2380, !2381, !2382, !2383, !2384}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2376, file: !2332, line: 50, baseType: !406, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2376, file: !2332, line: 51, baseType: !2353, size: 256, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2376, file: !2332, line: 53, baseType: !2353, size: 256, offset: 320)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2376, file: !2332, line: 54, baseType: !27, size: 64, offset: 576)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2376, file: !2332, line: 55, baseType: !2375, size: 64, offset: 640)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2376, file: !2332, line: 56, baseType: !50, size: 32, offset: 704)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2376, file: !2332, line: 57, baseType: !50, size: 32, offset: 736)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2337, file: !2332, line: 40, baseType: !27, size: 64, offset: 2496)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2337, file: !2332, line: 42, baseType: !50, size: 32, offset: 2560)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2337, file: !2332, line: 43, baseType: !2330, size: 64, offset: 2624)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2331, file: !2332, line: 99, baseType: !2389, offset: 128)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2390, line: 211, elements: !417)
!2390 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2331, file: !2332, line: 100, baseType: !2392, size: 64, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2332, line: 63, size: 3008, elements: !2394)
!2394 = !{!2395, !2396, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2426}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2393, file: !2332, line: 64, baseType: !2375, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2393, file: !2332, line: 65, baseType: !2397, size: 192, offset: 64)
!2397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2375, size: 192, elements: !491)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2393, file: !2332, line: 67, baseType: !50, size: 32, offset: 256)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2393, file: !2332, line: 68, baseType: !453, size: 256, offset: 320)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2393, file: !2332, line: 69, baseType: !406, size: 32, offset: 576)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2393, file: !2332, line: 70, baseType: !453, size: 256, offset: 640)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2393, file: !2332, line: 71, baseType: !27, size: 64, offset: 896)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2393, file: !2332, line: 72, baseType: !27, size: 64, offset: 960)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2393, file: !2332, line: 73, baseType: !27, size: 64, offset: 1024)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2393, file: !2332, line: 74, baseType: !27, size: 64, offset: 1088)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2393, file: !2332, line: 75, baseType: !27, size: 64, offset: 1152)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2393, file: !2332, line: 76, baseType: !27, size: 64, offset: 1216)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2393, file: !2332, line: 77, baseType: !27, size: 64, offset: 1280)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2393, file: !2332, line: 78, baseType: !27, size: 64, offset: 1344)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2393, file: !2332, line: 79, baseType: !617, size: 8, offset: 1408)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2393, file: !2332, line: 80, baseType: !27, size: 64, offset: 1472)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2393, file: !2332, line: 81, baseType: !453, size: 256, offset: 1536)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2393, file: !2332, line: 82, baseType: !817, size: 256, offset: 1792)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2393, file: !2332, line: 84, baseType: !45, size: 32, offset: 2048)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2393, file: !2332, line: 87, baseType: !27, size: 64, offset: 2112)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2393, file: !2332, line: 88, baseType: !27, size: 64, offset: 2176)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2393, file: !2332, line: 89, baseType: !2418, size: 704, offset: 2240)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !747, line: 111, size: 704, elements: !2419)
!2419 = !{!2420, !2421, !2422, !2425}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2418, file: !747, line: 112, baseType: !746, size: 256)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2418, file: !747, line: 113, baseType: !2361, size: 320, offset: 256)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2418, file: !747, line: 116, baseType: !2423, size: 64, offset: 576)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !747, line: 18, flags: DIFlagFwdDecl)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2418, file: !747, line: 117, baseType: !50, size: 32, offset: 640)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2393, file: !2332, line: 90, baseType: !2330, size: 64, offset: 2944)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1263, file: !1264, line: 515, baseType: !2428, size: 64, offset: 8064)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2430, line: 117, size: 128, elements: !2431)
!2430 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2431 = !{!2432, !2433, !2434}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2429, file: !2430, line: 118, baseType: !629, size: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2429, file: !2430, line: 119, baseType: !629, size: 32, offset: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2429, file: !2430, line: 120, baseType: !876, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1263, file: !1264, line: 516, baseType: !34, size: 32, offset: 8128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1263, file: !1264, line: 519, baseType: !34, size: 32, offset: 8160)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1263, file: !1264, line: 520, baseType: !2438, size: 64, offset: 8192)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1263, file: !1264, line: 523, baseType: !2440, size: 64, offset: 8256)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !2443, line: 372, size: 1024, elements: !2444)
!2443 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!2444 = !{!2445, !2446, !2496, !2556, !2643, !2644, !2648, !2653, !2654, !2655, !2656, !2658, !2661}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2442, file: !2443, line: 373, baseType: !106, size: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2442, file: !2443, line: 374, baseType: !2447, size: 64, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !2443, line: 291, size: 576, elements: !2449)
!2449 = !{!2450, !2451, !2452, !2453, !2467, !2490, !2494, !2495}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2448, file: !2443, line: 292, baseType: !697, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2448, file: !2443, line: 293, baseType: !38, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !2448, file: !2443, line: 295, baseType: !38, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2448, file: !2443, line: 297, baseType: !2454, size: 64, offset: 192)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!50, !2441, !2457, !38}
!2457 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !2443, line: 253, baseType: !34, size: 32, elements: !2458)
!2458 = !{!2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466}
!2459 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!2460 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!2461 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!2462 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!2463 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!2464 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!2465 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!2466 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !2448, file: !2443, line: 299, baseType: !2468, size: 64, offset: 256)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !2443, line: 275, size: 320, elements: !2470)
!2470 = !{!2471, !2472}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2469, file: !2443, line: 276, baseType: !697, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, scope: !2469, file: !2443, line: 277, baseType: !2473, size: 256, offset: 64)
!2473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2469, file: !2443, line: 277, size: 256, elements: !2474)
!2474 = !{!2475, !2486}
!2475 = !DIDerivedType(tag: DW_TAG_member, scope: !2473, file: !2443, line: 278, baseType: !2476, size: 256)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2473, file: !2443, line: 278, size: 256, elements: !2477)
!2477 = !{!2478, !2479, !2480, !2481, !2483, !2484, !2485}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2476, file: !2443, line: 279, baseType: !697, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2476, file: !2443, line: 280, baseType: !2326, size: 32, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2476, file: !2443, line: 281, baseType: !2326, size: 32, offset: 96)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !2476, file: !2443, line: 282, baseType: !2482, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !2476, file: !2443, line: 283, baseType: !34, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !2476, file: !2443, line: 284, baseType: !2326, size: 32, offset: 160)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2476, file: !2443, line: 285, baseType: !2326, size: 32, offset: 192)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !2473, file: !2443, line: 287, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!50, !2441}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !2448, file: !2443, line: 300, baseType: !2491, size: 64, offset: 320)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!109, !2441}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !2448, file: !2443, line: 301, baseType: !106, size: 128, offset: 384)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !2448, file: !2443, line: 302, baseType: !2487, size: 64, offset: 512)
!2496 = !DIDerivedType(tag: DW_TAG_member, scope: !2442, file: !2443, line: 375, baseType: !2497, size: 64, offset: 192)
!2497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2442, file: !2443, line: 375, size: 64, elements: !2498)
!2498 = !{!2499, !2500}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2497, file: !2443, line: 376, baseType: !697, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !2497, file: !2443, line: 378, baseType: !2501, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !2325, line: 32, size: 640, elements: !2503)
!2503 = !{!2504, !2505, !2517, !2541, !2542, !2543, !2544, !2545, !2549}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2502, file: !2325, line: 33, baseType: !697, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2502, file: !2325, line: 34, baseType: !2506, size: 128, offset: 64)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2430, line: 85, size: 128, elements: !2507)
!2507 = !{!2508, !2509}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2506, file: !2430, line: 86, baseType: !45, size: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, scope: !2506, file: !2430, line: 101, baseType: !2510, size: 64, offset: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2506, file: !2430, line: 101, size: 64, elements: !2511)
!2511 = !{!2512, !2513, !2514}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2510, file: !2430, line: 102, baseType: !27, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2510, file: !2430, line: 103, baseType: !2428, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2510, file: !2430, line: 104, baseType: !2515, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2430, line: 104, flags: DIFlagFwdDecl)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !2502, file: !2325, line: 35, baseType: !2518, size: 64, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !2520, line: 61, size: 128, elements: !2521)
!2520 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2521 = !{!2522, !2523}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2519, file: !2520, line: 62, baseType: !38, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, scope: !2519, file: !2520, line: 63, baseType: !2524, size: 64, offset: 64)
!2524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2519, file: !2520, line: 63, size: 64, elements: !2525)
!2525 = !{!2526, !2527, !2540}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2524, file: !2520, line: 65, baseType: !27, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !2524, file: !2520, line: 66, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !2530, line: 169, size: 192, elements: !2531)
!2530 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!2531 = !{!2532, !2533, !2534}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2529, file: !2530, line: 170, baseType: !2528, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2529, file: !2530, line: 171, baseType: !1262, size: 64, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2529, file: !2530, line: 172, baseType: !2535, size: 64, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2520, line: 32, size: 64, elements: !2537)
!2537 = !{!2538, !2539}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2536, file: !2520, line: 33, baseType: !629, size: 32)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2536, file: !2520, line: 34, baseType: !629, size: 32, offset: 32)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !2524, file: !2520, line: 67, baseType: !2535, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !2502, file: !2325, line: 36, baseType: !38, size: 64, offset: 256)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !2502, file: !2325, line: 37, baseType: !38, size: 64, offset: 320)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !2502, file: !2325, line: 38, baseType: !38, size: 64, offset: 384)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !2502, file: !2325, line: 39, baseType: !2231, size: 64, offset: 448)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !2502, file: !2325, line: 40, baseType: !2546, size: 64, offset: 512)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{null}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2502, file: !2325, line: 41, baseType: !2550, size: 64, offset: 576)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2325, line: 26, size: 192, elements: !2552)
!2552 = !{!2553, !2554, !2555}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2551, file: !2325, line: 27, baseType: !38, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2551, file: !2325, line: 28, baseType: !38, size: 64, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2551, file: !2325, line: 29, baseType: !50, size: 32, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2442, file: !2443, line: 380, baseType: !2557, size: 256, offset: 256)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !2443, line: 148, size: 256, elements: !2558)
!2558 = !{!2559, !2560, !2561}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2557, file: !2443, line: 149, baseType: !508, size: 128)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2557, file: !2443, line: 150, baseType: !50, size: 32, offset: 128)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !2557, file: !2443, line: 151, baseType: !2562, size: 64, offset: 192)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !2443, line: 141, size: 256, elements: !2564)
!2564 = !{!2565, !2640, !2641, !2642}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2563, file: !2443, line: 142, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !2443, line: 138, baseType: !2567)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!2570, !2576, !50, !2639}
!2570 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !2443, line: 158, baseType: !34, size: 32, elements: !2571)
!2571 = !{!2572, !2573, !2574, !2575}
!2572 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!2573 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!2574 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!2575 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !2443, line: 93, size: 67776, elements: !2578)
!2578 = !{!2579, !2582, !2585, !2588, !2589, !2590, !2591, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2619, !2622, !2623, !2624, !2632, !2633, !2634, !2635, !2636, !2637, !2638}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !2577, file: !2443, line: 94, baseType: !2580, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !2443, line: 13, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !2577, file: !2443, line: 95, baseType: !2583, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !2443, line: 15, flags: DIFlagFwdDecl)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !2577, file: !2443, line: 96, baseType: !2586, size: 64, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !2443, line: 14, flags: DIFlagFwdDecl)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2577, file: !2443, line: 97, baseType: !38, size: 64, offset: 192)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !2577, file: !2443, line: 98, baseType: !50, size: 32, offset: 256)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2577, file: !2443, line: 99, baseType: !453, size: 256, offset: 320)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !2577, file: !2443, line: 100, baseType: !2592, size: 64, offset: 576)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !2595, line: 10, flags: DIFlagFwdDecl)
!2595 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !2577, file: !2443, line: 101, baseType: !27, size: 64, offset: 640)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2577, file: !2443, line: 102, baseType: !38, size: 64, offset: 704)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !2577, file: !2443, line: 103, baseType: !34, size: 32, offset: 768)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2577, file: !2443, line: 104, baseType: !707, size: 64, offset: 832)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !2577, file: !2443, line: 105, baseType: !34, size: 32, offset: 896)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2577, file: !2443, line: 106, baseType: !876, size: 64, offset: 960)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !2577, file: !2443, line: 109, baseType: !2603, size: 33088, offset: 1024)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !2604, line: 14, size: 33088, elements: !2605)
!2604 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!2605 = !{!2606, !2610, !2617, !2618}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2603, file: !2604, line: 15, baseType: !2607, size: 32768)
!2607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !2608)
!2608 = !{!2609}
!2609 = !DISubrange(count: 4096)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2603, file: !2604, line: 16, baseType: !2611, size: 192, offset: 32768)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !2612, line: 18, size: 192, elements: !2613)
!2612 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!2613 = !{!2614, !2615, !2616}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2611, file: !2612, line: 19, baseType: !707, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2611, file: !2612, line: 20, baseType: !798, size: 64, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2611, file: !2612, line: 21, baseType: !798, size: 64, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !2603, file: !2604, line: 17, baseType: !798, size: 64, offset: 32960)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !2603, file: !2604, line: 18, baseType: !50, size: 32, offset: 33024)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !2577, file: !2443, line: 111, baseType: !2620, size: 64, offset: 34112)
!2620 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !334, line: 913, baseType: !2621)
!2621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 64, elements: !339)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !2577, file: !2443, line: 114, baseType: !617, size: 8, offset: 34176)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2577, file: !2443, line: 117, baseType: !2603, size: 33088, offset: 34240)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !2577, file: !2443, line: 118, baseType: !2625, size: 64, offset: 67328)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !2443, line: 79, size: 64, elements: !2627)
!2627 = !{!2628, !2629, !2630, !2631}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2626, file: !2443, line: 80, baseType: !72, size: 16)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2626, file: !2443, line: 81, baseType: !223, size: 8, offset: 16)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !2626, file: !2443, line: 82, baseType: !223, size: 8, offset: 24)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2626, file: !2443, line: 83, baseType: !50, size: 32, offset: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !2577, file: !2443, line: 119, baseType: !27, size: 64, offset: 67392)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !2577, file: !2443, line: 120, baseType: !50, size: 32, offset: 67456)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !2577, file: !2443, line: 121, baseType: !50, size: 32, offset: 67488)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2577, file: !2443, line: 122, baseType: !50, size: 32, offset: 67520)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !2577, file: !2443, line: 123, baseType: !101, size: 64, offset: 67584)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2577, file: !2443, line: 125, baseType: !465, size: 64, offset: 67648)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2577, file: !2443, line: 126, baseType: !876, size: 64, offset: 67712)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2563, file: !2443, line: 143, baseType: !2566, size: 64, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !2563, file: !2443, line: 144, baseType: !2566, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !2563, file: !2443, line: 145, baseType: !2566, size: 64, offset: 192)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !2442, file: !2443, line: 381, baseType: !707, size: 64, offset: 512)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2442, file: !2443, line: 382, baseType: !2645, size: 64, offset: 576)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !2647, line: 821, flags: DIFlagFwdDecl)
!2647 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!2648 = !DIDerivedType(tag: DW_TAG_member, scope: !2442, file: !2443, line: 387, baseType: !2649, size: 64, offset: 640)
!2649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2442, file: !2443, line: 387, size: 64, elements: !2650)
!2650 = !{!2651, !2652}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2649, file: !2443, line: 388, baseType: !38, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2649, file: !2443, line: 389, baseType: !45, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2442, file: !2443, line: 391, baseType: !38, size: 64, offset: 704)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2442, file: !2443, line: 394, baseType: !50, size: 32, offset: 768)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !2442, file: !2443, line: 397, baseType: !50, size: 32, offset: 800)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !2442, file: !2443, line: 398, baseType: !2657, size: 64, offset: 832)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !2442, file: !2443, line: 399, baseType: !2659, size: 64, offset: 896)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !2443, line: 399, flags: DIFlagFwdDecl)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !2442, file: !2443, line: 401, baseType: !2662, size: 64, offset: 960)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!50, !2441, !2665}
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2647, line: 671, size: 8512, elements: !2667)
!2667 = !{!2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !3253, !3254, !3263, !3264, !3270, !3271, !3272, !3273, !3274, !3358, !3359, !3360, !3361, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3481, !3482, !3483, !3484, !3485, !3486, !3501, !3502, !3503, !3504, !3505, !3511, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3528, !3699, !3700, !3701, !3702, !3972, !3973, !3974}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !2666, file: !2647, line: 678, baseType: !106, size: 128)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !2666, file: !2647, line: 684, baseType: !106, size: 128, offset: 128)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !2666, file: !2647, line: 685, baseType: !106, size: 128, offset: 256)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2666, file: !2647, line: 689, baseType: !93, size: 192, align: 64, offset: 384)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !2666, file: !2647, line: 690, baseType: !101, size: 64, offset: 576)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !2666, file: !2647, line: 696, baseType: !106, size: 128, offset: 640)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !2666, file: !2647, line: 698, baseType: !508, size: 128, offset: 768)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !2666, file: !2647, line: 699, baseType: !106, size: 128, offset: 896)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !2666, file: !2647, line: 700, baseType: !50, size: 32, offset: 1024)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !2666, file: !2647, line: 703, baseType: !50, size: 32, offset: 1056)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !2666, file: !2647, line: 705, baseType: !50, size: 32, offset: 1088)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !2666, file: !2647, line: 707, baseType: !34, size: 32, offset: 1120)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2666, file: !2647, line: 708, baseType: !2665, size: 64, offset: 1152)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !2666, file: !2647, line: 714, baseType: !2682, size: 64, offset: 1216)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !2647, line: 302, size: 2432, elements: !2684)
!2684 = !{!2685, !2686, !2687, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3163, !3164, !3165, !3166, !3167, !3171, !3172, !3176, !3180, !3181, !3185, !3189, !3190, !3191, !3195, !3199, !3203, !3204, !3205, !3209, !3210, !3214, !3218, !3219, !3239, !3243, !3244, !3245, !3249}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2683, file: !2647, line: 303, baseType: !106, size: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2683, file: !2647, line: 305, baseType: !1262, size: 64, offset: 128)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2683, file: !2647, line: 306, baseType: !2688, size: 64, offset: 192)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !2690, line: 705, size: 5824, elements: !2691)
!2690 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!2691 = !{!2692, !2693, !2694, !2697, !2698, !2752, !2828, !2829, !2830, !2831, !2832, !2845, !2951, !2964, !2974, !2978, !2980, !2981, !2982, !2986, !2993, !2994, !2997, !3000, !3004, !3007, !3008, !3009, !3010, !3011, !3012, !3042, !3043, !3044, !3047, !3050, !3078, !3085, !3086, !3087, !3088, !3089}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2689, file: !2690, line: 706, baseType: !1282, size: 512)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2689, file: !2690, line: 707, baseType: !2688, size: 64, offset: 512)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2689, file: !2690, line: 709, baseType: !2695, size: 64, offset: 576)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !2690, line: 37, flags: DIFlagFwdDecl)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2689, file: !2690, line: 711, baseType: !697, size: 64, offset: 640)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2689, file: !2690, line: 712, baseType: !2699, size: 64, offset: 704)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2701)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !2690, line: 89, size: 384, elements: !2702)
!2702 = !{!2703, !2704, !2705, !2711, !2716, !2720}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2701, file: !2690, line: 90, baseType: !697, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2701, file: !2690, line: 91, baseType: !1362, size: 64, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2701, file: !2690, line: 92, baseType: !2706, size: 64, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!50, !2709, !1318}
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2689)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2701, file: !2690, line: 93, baseType: !2712, size: 64, offset: 192)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!707, !2709, !2715, !842, !843}
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2701, file: !2690, line: 95, baseType: !2717, size: 64, offset: 256)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{null, !2688}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2701, file: !2690, line: 97, baseType: !2721, size: 64, offset: 320)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2723)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !2724, line: 286, size: 1472, elements: !2725)
!2724 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!2725 = !{!2726, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2723, file: !2724, line: 287, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!50, !2688}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2723, file: !2724, line: 288, baseType: !2717, size: 64, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2723, file: !2724, line: 289, baseType: !2727, size: 64, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2723, file: !2724, line: 290, baseType: !2727, size: 64, offset: 192)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2723, file: !2724, line: 291, baseType: !2727, size: 64, offset: 256)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2723, file: !2724, line: 292, baseType: !2727, size: 64, offset: 320)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2723, file: !2724, line: 293, baseType: !2727, size: 64, offset: 384)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2723, file: !2724, line: 294, baseType: !2727, size: 64, offset: 448)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2723, file: !2724, line: 295, baseType: !2727, size: 64, offset: 512)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2723, file: !2724, line: 296, baseType: !2727, size: 64, offset: 576)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2723, file: !2724, line: 297, baseType: !2727, size: 64, offset: 640)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2723, file: !2724, line: 298, baseType: !2727, size: 64, offset: 704)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2723, file: !2724, line: 299, baseType: !2727, size: 64, offset: 768)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2723, file: !2724, line: 300, baseType: !2727, size: 64, offset: 832)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2723, file: !2724, line: 301, baseType: !2727, size: 64, offset: 896)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2723, file: !2724, line: 302, baseType: !2727, size: 64, offset: 960)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2723, file: !2724, line: 303, baseType: !2727, size: 64, offset: 1024)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2723, file: !2724, line: 304, baseType: !2727, size: 64, offset: 1088)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2723, file: !2724, line: 305, baseType: !2727, size: 64, offset: 1152)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2723, file: !2724, line: 306, baseType: !2727, size: 64, offset: 1216)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2723, file: !2724, line: 307, baseType: !2727, size: 64, offset: 1280)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2723, file: !2724, line: 308, baseType: !2727, size: 64, offset: 1344)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2723, file: !2724, line: 309, baseType: !2727, size: 64, offset: 1408)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2689, file: !2690, line: 714, baseType: !2753, size: 64, offset: 768)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2755)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2756, line: 80, size: 1344, elements: !2757)
!2756 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2757 = !{!2758, !2759, !2760, !2761, !2762, !2763, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2827}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2755, file: !2756, line: 81, baseType: !697, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2755, file: !2756, line: 82, baseType: !697, size: 64, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2755, file: !2756, line: 83, baseType: !1362, size: 64, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2755, file: !2756, line: 84, baseType: !1362, size: 64, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2755, file: !2756, line: 85, baseType: !1362, size: 64, offset: 256)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2755, file: !2756, line: 87, baseType: !2764, size: 64, offset: 320)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!50, !2688, !2767}
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !2769, line: 96, size: 1152, elements: !2770)
!2769 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!2770 = !{!2771, !2772, !2773, !2774, !2775, !2776, !2782, !2786, !2790, !2791, !2792, !2793, !2794, !2802, !2803, !2804, !2805, !2806, !2807}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2768, file: !2769, line: 97, baseType: !697, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2768, file: !2769, line: 98, baseType: !2753, size: 64, offset: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2768, file: !2769, line: 100, baseType: !1262, size: 64, offset: 128)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2768, file: !2769, line: 101, baseType: !697, size: 64, offset: 192)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2768, file: !2769, line: 103, baseType: !617, size: 8, offset: 256)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2768, file: !2769, line: 104, baseType: !2777, size: 32, offset: 288)
!2777 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !2769, line: 45, baseType: !34, size: 32, elements: !2778)
!2778 = !{!2779, !2780, !2781}
!2779 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!2780 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!2781 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2768, file: !2769, line: 106, baseType: !2783, size: 64, offset: 320)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2785)
!2785 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2769, line: 106, flags: DIFlagFwdDecl)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2768, file: !2769, line: 107, baseType: !2787, size: 64, offset: 384)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2789)
!2789 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2769, line: 107, flags: DIFlagFwdDecl)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2768, file: !2769, line: 109, baseType: !2727, size: 64, offset: 448)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2768, file: !2769, line: 110, baseType: !2717, size: 64, offset: 512)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2768, file: !2769, line: 111, baseType: !2727, size: 64, offset: 576)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2768, file: !2769, line: 112, baseType: !2717, size: 64, offset: 640)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2768, file: !2769, line: 113, baseType: !2795, size: 64, offset: 704)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!50, !2688, !2798}
!2798 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !2724, line: 60, baseType: !2799)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !2724, line: 58, size: 32, elements: !2800)
!2800 = !{!2801}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2799, file: !2724, line: 59, baseType: !50, size: 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2768, file: !2769, line: 114, baseType: !2727, size: 64, offset: 768)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2768, file: !2769, line: 115, baseType: !1362, size: 64, offset: 832)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2768, file: !2769, line: 116, baseType: !1362, size: 64, offset: 896)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2768, file: !2769, line: 118, baseType: !2721, size: 64, offset: 960)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2768, file: !2769, line: 119, baseType: !2717, size: 64, offset: 1024)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2768, file: !2769, line: 121, baseType: !2808, size: 64, offset: 1088)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !2769, line: 121, flags: DIFlagFwdDecl)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2755, file: !2756, line: 88, baseType: !2706, size: 64, offset: 384)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2755, file: !2756, line: 89, baseType: !2727, size: 64, offset: 448)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2755, file: !2756, line: 90, baseType: !2717, size: 64, offset: 512)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2755, file: !2756, line: 91, baseType: !2717, size: 64, offset: 576)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2755, file: !2756, line: 92, baseType: !2717, size: 64, offset: 640)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2755, file: !2756, line: 94, baseType: !2727, size: 64, offset: 704)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2755, file: !2756, line: 95, baseType: !2727, size: 64, offset: 768)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2755, file: !2756, line: 97, baseType: !2795, size: 64, offset: 832)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2755, file: !2756, line: 98, baseType: !2727, size: 64, offset: 896)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2755, file: !2756, line: 100, baseType: !2727, size: 64, offset: 960)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2755, file: !2756, line: 102, baseType: !2727, size: 64, offset: 1024)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2755, file: !2756, line: 103, baseType: !2717, size: 64, offset: 1088)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2755, file: !2756, line: 105, baseType: !2721, size: 64, offset: 1152)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2755, file: !2756, line: 107, baseType: !2824, size: 64, offset: 1216)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2826)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2756, line: 107, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2755, file: !2756, line: 109, baseType: !617, size: 8, offset: 1280)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2689, file: !2690, line: 715, baseType: !2767, size: 64, offset: 832)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2689, file: !2690, line: 717, baseType: !38, size: 64, offset: 896)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2689, file: !2690, line: 719, baseType: !38, size: 64, offset: 960)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2689, file: !2690, line: 721, baseType: !453, size: 256, offset: 1024)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2689, file: !2690, line: 725, baseType: !2833, size: 448, offset: 1280)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !2690, line: 517, size: 448, elements: !2834)
!2834 = !{!2835, !2836, !2837, !2838}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2833, file: !2690, line: 518, baseType: !106, size: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2833, file: !2690, line: 519, baseType: !106, size: 128, offset: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2833, file: !2690, line: 520, baseType: !106, size: 128, offset: 256)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2833, file: !2690, line: 521, baseType: !2839, size: 32, offset: 384)
!2839 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !2690, line: 487, baseType: !34, size: 32, elements: !2840)
!2840 = !{!2841, !2842, !2843, !2844}
!2841 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!2842 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!2843 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!2844 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2689, file: !2690, line: 726, baseType: !2846, size: 2496, offset: 1728)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !2724, line: 663, size: 2496, elements: !2847)
!2847 = !{!2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2923, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2944, !2948}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2846, file: !2724, line: 664, baseType: !2798, size: 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2846, file: !2724, line: 665, baseType: !34, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2846, file: !2724, line: 666, baseType: !34, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2846, file: !2724, line: 667, baseType: !617, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2846, file: !2724, line: 668, baseType: !617, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2846, file: !2724, line: 669, baseType: !617, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2846, file: !2724, line: 670, baseType: !617, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2846, file: !2724, line: 671, baseType: !617, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2846, file: !2724, line: 672, baseType: !617, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2846, file: !2724, line: 673, baseType: !617, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2846, file: !2724, line: 674, baseType: !617, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2846, file: !2724, line: 675, baseType: !30, size: 32, offset: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2846, file: !2724, line: 676, baseType: !406, size: 32, offset: 96)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2846, file: !2724, line: 678, baseType: !106, size: 128, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2846, file: !2724, line: 679, baseType: !817, size: 256, offset: 256)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2846, file: !2724, line: 680, baseType: !2864, size: 64, offset: 512)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2866, line: 43, size: 1536, elements: !2867)
!2866 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2865, file: !2866, line: 44, baseType: !697, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2865, file: !2866, line: 45, baseType: !50, size: 32, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2865, file: !2866, line: 46, baseType: !106, size: 128, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2865, file: !2866, line: 47, baseType: !406, size: 32, offset: 256)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2865, file: !2866, line: 48, baseType: !2873, size: 64, offset: 320)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !2724, line: 629, flags: DIFlagFwdDecl)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2865, file: !2866, line: 49, baseType: !2361, size: 320, offset: 384)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2865, file: !2866, line: 50, baseType: !27, size: 64, offset: 704)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2865, file: !2866, line: 51, baseType: !183, size: 64, offset: 768)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2865, file: !2866, line: 52, baseType: !183, size: 64, offset: 832)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2865, file: !2866, line: 53, baseType: !183, size: 64, offset: 896)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2865, file: !2866, line: 54, baseType: !183, size: 64, offset: 960)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2865, file: !2866, line: 55, baseType: !183, size: 64, offset: 1024)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2865, file: !2866, line: 56, baseType: !27, size: 64, offset: 1088)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2865, file: !2866, line: 57, baseType: !27, size: 64, offset: 1152)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2865, file: !2866, line: 58, baseType: !27, size: 64, offset: 1216)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2865, file: !2866, line: 59, baseType: !27, size: 64, offset: 1280)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2865, file: !2866, line: 60, baseType: !27, size: 64, offset: 1344)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2865, file: !2866, line: 61, baseType: !2688, size: 64, offset: 1408)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2865, file: !2866, line: 62, baseType: !617, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2865, file: !2866, line: 63, baseType: !617, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2846, file: !2724, line: 681, baseType: !617, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2846, file: !2724, line: 682, baseType: !617, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2846, file: !2724, line: 683, baseType: !617, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2846, file: !2724, line: 684, baseType: !34, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2846, file: !2724, line: 685, baseType: !34, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2846, file: !2724, line: 690, baseType: !174, size: 512, offset: 640)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2846, file: !2724, line: 691, baseType: !101, size: 64, offset: 1152)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2846, file: !2724, line: 692, baseType: !746, size: 256, offset: 1216)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2846, file: !2724, line: 693, baseType: !517, size: 192, offset: 1472)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2846, file: !2724, line: 694, baseType: !2873, size: 64, offset: 1664)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2846, file: !2724, line: 695, baseType: !45, size: 32, offset: 1728)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2846, file: !2724, line: 696, baseType: !45, size: 32, offset: 1760)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2846, file: !2724, line: 697, baseType: !34, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2846, file: !2724, line: 698, baseType: !34, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2846, file: !2724, line: 699, baseType: !34, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2846, file: !2724, line: 700, baseType: !34, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2846, file: !2724, line: 701, baseType: !34, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2846, file: !2724, line: 702, baseType: !34, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2846, file: !2724, line: 703, baseType: !617, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2846, file: !2724, line: 704, baseType: !34, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2846, file: !2724, line: 705, baseType: !34, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2846, file: !2724, line: 706, baseType: !34, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2846, file: !2724, line: 707, baseType: !34, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2846, file: !2724, line: 708, baseType: !34, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2846, file: !2724, line: 709, baseType: !34, size: 32, offset: 1824)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2846, file: !2724, line: 710, baseType: !2916, size: 32, offset: 1856)
!2916 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !2724, line: 620, baseType: !34, size: 32, elements: !2917)
!2917 = !{!2918, !2919, !2920, !2921, !2922}
!2918 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!2919 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!2920 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!2921 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!2922 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2846, file: !2724, line: 711, baseType: !2924, size: 32, offset: 1888)
!2924 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !2724, line: 597, baseType: !50, size: 32, elements: !2925)
!2925 = !{!2926, !2927, !2928, !2929, !2930}
!2926 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!2927 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!2928 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!2929 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!2930 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2846, file: !2724, line: 712, baseType: !2924, size: 32, offset: 1920)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2846, file: !2724, line: 713, baseType: !50, size: 32, offset: 1952)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2846, file: !2724, line: 714, baseType: !50, size: 32, offset: 1984)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2846, file: !2724, line: 715, baseType: !101, size: 64, offset: 2048)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2846, file: !2724, line: 716, baseType: !101, size: 64, offset: 2112)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2846, file: !2724, line: 717, baseType: !101, size: 64, offset: 2176)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2846, file: !2724, line: 718, baseType: !101, size: 64, offset: 2240)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2846, file: !2724, line: 720, baseType: !2939, size: 64, offset: 2304)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !2724, line: 632, size: 64, elements: !2941)
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2940, file: !2724, line: 633, baseType: !406, size: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2940, file: !2724, line: 634, baseType: !34, size: 32, offset: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2846, file: !2724, line: 721, baseType: !2945, size: 64, offset: 2368)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{null, !2688, !629}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2846, file: !2724, line: 722, baseType: !2949, size: 64, offset: 2432)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !2724, line: 722, flags: DIFlagFwdDecl)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2689, file: !2690, line: 727, baseType: !2952, size: 64, offset: 4224)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !2724, line: 742, size: 1792, elements: !2954)
!2954 = !{!2955, !2956, !2957, !2961, !2962, !2963}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2953, file: !2724, line: 743, baseType: !2723, size: 1472)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2953, file: !2724, line: 744, baseType: !2727, size: 64, offset: 1472)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2953, file: !2724, line: 745, baseType: !2958, size: 64, offset: 1536)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{null, !2688, !617}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2953, file: !2724, line: 746, baseType: !2727, size: 64, offset: 1600)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2953, file: !2724, line: 747, baseType: !2717, size: 64, offset: 1664)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2953, file: !2724, line: 748, baseType: !2717, size: 64, offset: 1728)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2689, file: !2690, line: 736, baseType: !2965, size: 128, offset: 4288)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !2690, line: 529, size: 128, elements: !2966)
!2966 = !{!2967, !2971}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2965, file: !2690, line: 531, baseType: !2968, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2970, line: 13, flags: DIFlagFwdDecl)
!2970 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2965, file: !2690, line: 532, baseType: !2972, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !2690, line: 49, flags: DIFlagFwdDecl)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2689, file: !2690, line: 738, baseType: !2975, size: 64, offset: 4416)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2977)
!2977 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !2690, line: 738, flags: DIFlagFwdDecl)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2689, file: !2690, line: 740, baseType: !2979, size: 64, offset: 4480)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2689, file: !2690, line: 741, baseType: !101, size: 64, offset: 4544)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2689, file: !2690, line: 746, baseType: !101, size: 64, offset: 4608)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2689, file: !2690, line: 747, baseType: !2983, size: 64, offset: 4672)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2985)
!2985 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !2690, line: 747, flags: DIFlagFwdDecl)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2689, file: !2690, line: 749, baseType: !2987, size: 64, offset: 4736)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !2690, line: 428, size: 128, elements: !2989)
!2989 = !{!2990, !2991, !2992}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2988, file: !2690, line: 433, baseType: !34, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2988, file: !2690, line: 434, baseType: !34, size: 32, offset: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2988, file: !2690, line: 435, baseType: !27, size: 64, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2689, file: !2690, line: 751, baseType: !106, size: 128, offset: 4800)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2689, file: !2690, line: 762, baseType: !2995, size: 64, offset: 4928)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !2690, line: 762, flags: DIFlagFwdDecl)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2689, file: !2690, line: 770, baseType: !2998, offset: 4992)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2999, line: 5, elements: !417)
!2999 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2689, file: !2690, line: 772, baseType: !3001, size: 64, offset: 4992)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3003, line: 18, flags: DIFlagFwdDecl)
!3003 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2689, file: !2690, line: 773, baseType: !3005, size: 64, offset: 5056)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2756, line: 22, flags: DIFlagFwdDecl)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2689, file: !2690, line: 776, baseType: !50, size: 32, offset: 5120)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2689, file: !2690, line: 778, baseType: !1102, size: 32, offset: 5152)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2689, file: !2690, line: 779, baseType: !30, size: 32, offset: 5184)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2689, file: !2690, line: 781, baseType: !406, size: 32, offset: 5216)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2689, file: !2690, line: 782, baseType: !106, size: 128, offset: 5248)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2689, file: !2690, line: 784, baseType: !3013, size: 64, offset: 5376)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3015)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3016, line: 52, size: 768, elements: !3017)
!3016 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3017 = !{!3018, !3019, !3020, !3021, !3022, !3026, !3030, !3031, !3032, !3033, !3037, !3041}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3015, file: !3016, line: 53, baseType: !697, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3015, file: !3016, line: 55, baseType: !1362, size: 64, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3015, file: !3016, line: 56, baseType: !1362, size: 64, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3015, file: !3016, line: 58, baseType: !2706, size: 64, offset: 192)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3015, file: !3016, line: 59, baseType: !3023, size: 64, offset: 256)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!707, !2709, !2715}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3015, file: !3016, line: 61, baseType: !3027, size: 64, offset: 320)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{null, !3013}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3015, file: !3016, line: 62, baseType: !2717, size: 64, offset: 384)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3015, file: !3016, line: 64, baseType: !2727, size: 64, offset: 448)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3015, file: !3016, line: 66, baseType: !1925, size: 64, offset: 512)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3015, file: !3016, line: 67, baseType: !3034, size: 64, offset: 576)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!1948, !2709}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3015, file: !3016, line: 69, baseType: !3038, size: 64, offset: 640)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !2709, !842, !843}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3015, file: !3016, line: 71, baseType: !2721, size: 64, offset: 704)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2689, file: !2690, line: 785, baseType: !1362, size: 64, offset: 5440)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2689, file: !2690, line: 787, baseType: !2717, size: 64, offset: 5504)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2689, file: !2690, line: 788, baseType: !3045, size: 64, offset: 5568)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !2690, line: 46, flags: DIFlagFwdDecl)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2689, file: !2690, line: 789, baseType: !3048, size: 64, offset: 5632)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !2690, line: 48, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2689, file: !2690, line: 791, baseType: !3051, size: 64, offset: 5696)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !2690, line: 597, size: 128, elements: !3053)
!3053 = !{!3054, !3064, !3070, !3076, !3077}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3052, file: !2690, line: 598, baseType: !3055, size: 32)
!3055 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !2690, line: 547, baseType: !34, size: 32, elements: !3056)
!3056 = !{!3057, !3058, !3059, !3060, !3061, !3062, !3063}
!3057 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!3058 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!3059 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!3060 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!3061 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!3062 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!3063 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3052, file: !2690, line: 599, baseType: !3065, size: 32, offset: 32)
!3065 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !2690, line: 564, baseType: !34, size: 32, elements: !3066)
!3066 = !{!3067, !3068, !3069}
!3067 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!3068 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!3069 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3052, file: !2690, line: 600, baseType: !3071, size: 32, offset: 64)
!3071 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !2690, line: 577, baseType: !34, size: 32, elements: !3072)
!3072 = !{!3073, !3074, !3075}
!3073 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!3074 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!3075 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3052, file: !2690, line: 601, baseType: !617, size: 8, offset: 96)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3052, file: !2690, line: 602, baseType: !617, size: 8, offset: 104)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2689, file: !2690, line: 793, baseType: !3079, size: 32, offset: 5760)
!3079 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !2690, line: 503, baseType: !34, size: 32, elements: !3080)
!3080 = !{!3081, !3082, !3083, !3084}
!3081 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!3082 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!3083 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!3084 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2689, file: !2690, line: 795, baseType: !617, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2689, file: !2690, line: 796, baseType: !617, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2689, file: !2690, line: 797, baseType: !617, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2689, file: !2690, line: 798, baseType: !617, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2689, file: !2690, line: 799, baseType: !617, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2683, file: !2647, line: 307, baseType: !2688, size: 64, offset: 256)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !2683, file: !2647, line: 308, baseType: !1362, size: 64, offset: 320)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !2683, file: !2647, line: 309, baseType: !1362, size: 64, offset: 384)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2683, file: !2647, line: 310, baseType: !697, size: 64, offset: 448)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2683, file: !2647, line: 311, baseType: !50, size: 32, offset: 512)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2683, file: !2647, line: 316, baseType: !50, size: 32, offset: 544)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !2683, file: !2647, line: 318, baseType: !2260, size: 64, offset: 576)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !2683, file: !2647, line: 319, baseType: !3098, size: 64, offset: 640)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !2647, line: 977, size: 1856, elements: !3100)
!3100 = !{!3101, !3153, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3099, file: !2647, line: 978, baseType: !3102, size: 896)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !2647, line: 873, size: 896, elements: !3103)
!3103 = !{!3104, !3105, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3102, file: !2647, line: 874, baseType: !2682, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3102, file: !2647, line: 875, baseType: !3106, size: 64, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2647, line: 912, size: 1792, elements: !3108)
!3108 = !{!3109, !3110, !3111, !3112, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3107, file: !2647, line: 917, baseType: !204, size: 32)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3107, file: !2647, line: 923, baseType: !453, size: 256, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !3107, file: !2647, line: 925, baseType: !106, size: 128, offset: 320)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !3107, file: !2647, line: 926, baseType: !3113, size: 128, offset: 448)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !2647, line: 901, size: 128, elements: !3114)
!3114 = !{!3115, !3116}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3113, file: !2647, line: 902, baseType: !273, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3113, file: !2647, line: 903, baseType: !101, size: 64, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !3107, file: !2647, line: 927, baseType: !3113, size: 128, offset: 576)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !3107, file: !2647, line: 928, baseType: !106, size: 128, offset: 704)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3107, file: !2647, line: 930, baseType: !50, size: 32, offset: 832)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !3107, file: !2647, line: 931, baseType: !50, size: 32, offset: 864)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !3107, file: !2647, line: 932, baseType: !50, size: 32, offset: 896)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !3107, file: !2647, line: 934, baseType: !50, size: 32, offset: 928)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !3107, file: !2647, line: 935, baseType: !50, size: 32, offset: 960)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !3107, file: !2647, line: 936, baseType: !50, size: 32, offset: 992)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !3107, file: !2647, line: 937, baseType: !50, size: 32, offset: 1024)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3107, file: !2647, line: 939, baseType: !40, size: 32, offset: 1056)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3107, file: !2647, line: 940, baseType: !18, size: 64, offset: 1088)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3107, file: !2647, line: 945, baseType: !101, size: 64, offset: 1152)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3107, file: !2647, line: 946, baseType: !101, size: 64, offset: 1216)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3107, file: !2647, line: 947, baseType: !101, size: 64, offset: 1280)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !3107, file: !2647, line: 953, baseType: !3106, size: 64, offset: 1344)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !3107, file: !2647, line: 954, baseType: !101, size: 64, offset: 1408)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !3107, file: !2647, line: 955, baseType: !101, size: 64, offset: 1472)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !3107, file: !2647, line: 956, baseType: !50, size: 32, offset: 1536)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3107, file: !2647, line: 958, baseType: !50, size: 32, offset: 1568)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3107, file: !2647, line: 960, baseType: !433, size: 128, align: 64, offset: 1600)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !3107, file: !2647, line: 968, baseType: !3138, size: 64, offset: 1728)
!3138 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3139, line: 12, baseType: !3140)
!3139 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3139, line: 10, size: 64, elements: !3141)
!3141 = !{!3142}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3140, file: !3139, line: 11, baseType: !446, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3102, file: !2647, line: 877, baseType: !106, size: 128, offset: 128)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3102, file: !2647, line: 879, baseType: !106, size: 128, offset: 256)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3102, file: !2647, line: 880, baseType: !106, size: 128, offset: 384)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3102, file: !2647, line: 883, baseType: !34, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3102, file: !2647, line: 885, baseType: !34, size: 32, offset: 544)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3102, file: !2647, line: 886, baseType: !34, size: 32, offset: 576)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3102, file: !2647, line: 888, baseType: !45, size: 32, offset: 608)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3102, file: !2647, line: 889, baseType: !433, size: 128, align: 64, offset: 640)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3102, file: !2647, line: 891, baseType: !38, size: 64, offset: 768)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3102, file: !2647, line: 898, baseType: !50, size: 32, offset: 832)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3099, file: !2647, line: 979, baseType: !3154, size: 64, offset: 896)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3099, file: !2647, line: 981, baseType: !106, size: 128, offset: 960)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3099, file: !2647, line: 982, baseType: !50, size: 32, offset: 1088)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3099, file: !2647, line: 984, baseType: !50, size: 32, offset: 1120)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3099, file: !2647, line: 985, baseType: !50, size: 32, offset: 1152)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3099, file: !2647, line: 987, baseType: !204, size: 32, offset: 1184)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3099, file: !2647, line: 988, baseType: !174, size: 512, offset: 1216)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3099, file: !2647, line: 989, baseType: !183, size: 64, offset: 1728)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3099, file: !2647, line: 990, baseType: !34, size: 32, offset: 1792)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !2683, file: !2647, line: 320, baseType: !45, size: 32, offset: 704)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !2683, file: !2647, line: 321, baseType: !50, size: 32, offset: 736)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !2683, file: !2647, line: 322, baseType: !50, size: 32, offset: 768)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !2683, file: !2647, line: 325, baseType: !34, size: 32, offset: 800)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !2683, file: !2647, line: 331, baseType: !3168, size: 64, offset: 832)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{null, !2682}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !2683, file: !2647, line: 332, baseType: !3168, size: 64, offset: 896)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !2683, file: !2647, line: 350, baseType: !3173, size: 64, offset: 960)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!50, !2665}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !2683, file: !2647, line: 356, baseType: !3177, size: 64, offset: 1024)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{null, !2665, !387}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !2683, file: !2647, line: 357, baseType: !3177, size: 64, offset: 1088)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2683, file: !2647, line: 385, baseType: !3182, size: 64, offset: 1152)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!50, !2665, !50}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !2683, file: !2647, line: 386, baseType: !3186, size: 64, offset: 1216)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{null, !2665, !50}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2683, file: !2647, line: 406, baseType: !3186, size: 64, offset: 1280)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2683, file: !2647, line: 407, baseType: !3186, size: 64, offset: 1344)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2683, file: !2647, line: 415, baseType: !3192, size: 64, offset: 1408)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{null, !2665}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !2683, file: !2647, line: 427, baseType: !3196, size: 64, offset: 1472)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{null, !2682, !34}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !2683, file: !2647, line: 436, baseType: !3200, size: 64, offset: 1536)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!50, !2682}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !2683, file: !2647, line: 443, baseType: !3168, size: 64, offset: 1600)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !2683, file: !2647, line: 450, baseType: !3173, size: 64, offset: 1664)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !2683, file: !2647, line: 455, baseType: !3206, size: 64, offset: 1728)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{null, !3154, !617}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !2683, file: !2647, line: 461, baseType: !552, size: 64, offset: 1792)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !2683, file: !2647, line: 469, baseType: !3211, size: 64, offset: 1856)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{null, !3154, !3154}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !2683, file: !2647, line: 476, baseType: !3215, size: 64, offset: 1920)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!38, !2665, !1807, !50, !617}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !2683, file: !2647, line: 483, baseType: !1059, size: 64, offset: 1984)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !2683, file: !2647, line: 494, baseType: !3220, size: 64, offset: 2048)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!876, !2665, !3223, !27}
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !2647, line: 1014, size: 448, elements: !3225)
!3225 = !{!3226, !3227, !3230, !3231, !3232, !3233, !3238}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3224, file: !2647, line: 1015, baseType: !2665, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3224, file: !2647, line: 1016, baseType: !3228, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !2647, line: 641, flags: DIFlagFwdDecl)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3224, file: !2647, line: 1017, baseType: !27, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3224, file: !2647, line: 1018, baseType: !27, size: 64, offset: 192)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3224, file: !2647, line: 1019, baseType: !101, size: 64, offset: 256)
!3233 = !DIDerivedType(tag: DW_TAG_member, scope: !3224, file: !2647, line: 1020, baseType: !3234, size: 64, offset: 320)
!3234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3224, file: !2647, line: 1020, size: 64, elements: !3235)
!3235 = !{!3236, !3237}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3234, file: !2647, line: 1021, baseType: !38, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3234, file: !2647, line: 1022, baseType: !27, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3224, file: !2647, line: 1024, baseType: !50, size: 32, offset: 384)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !2683, file: !2647, line: 506, baseType: !3240, size: 64, offset: 2112)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!50, !109}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !2683, file: !2647, line: 520, baseType: !3192, size: 64, offset: 2176)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !2683, file: !2647, line: 530, baseType: !3173, size: 64, offset: 2240)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2683, file: !2647, line: 537, baseType: !3246, size: 64, offset: 2304)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!617, !2682, !50}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !2683, file: !2647, line: 542, baseType: !3250, size: 64, offset: 2368)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!50, !2665, !101}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !2666, file: !2647, line: 715, baseType: !38, size: 64, offset: 1280)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2666, file: !2647, line: 717, baseType: !3255, size: 32, offset: 1344)
!3255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !2647, line: 593, baseType: !50, size: 32, elements: !3256)
!3256 = !{!3257, !3258, !3259, !3260, !3261, !3262}
!3257 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!3258 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!3259 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!3260 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!3261 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!3262 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !2666, file: !2647, line: 718, baseType: !34, size: 32, offset: 1376)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2666, file: !2647, line: 719, baseType: !3265, size: 64, offset: 1408)
!3265 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3266, line: 26, baseType: !3267)
!3266 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3266, line: 24, size: 64, elements: !3268)
!3268 = !{!3269}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3267, file: !3266, line: 25, baseType: !3138, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2666, file: !2647, line: 720, baseType: !448, size: 64, offset: 1472)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !2666, file: !2647, line: 728, baseType: !101, size: 64, offset: 1536)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !2666, file: !2647, line: 729, baseType: !101, size: 64, offset: 1600)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2666, file: !2647, line: 730, baseType: !101, size: 64, offset: 1664)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2666, file: !2647, line: 732, baseType: !3275, size: 1088, offset: 1728)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3276, line: 385, size: 1088, elements: !3277)
!3276 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3277 = !{!3278, !3279, !3280, !3281, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3331, !3332, !3339, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3275, file: !3276, line: 390, baseType: !32, size: 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3275, file: !3276, line: 395, baseType: !32, size: 32, offset: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3275, file: !3276, line: 400, baseType: !102, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, scope: !3275, file: !3276, line: 402, baseType: !3282, size: 64, offset: 128)
!3282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3275, file: !3276, line: 402, size: 64, elements: !3283)
!3283 = !{!3284, !3285}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3282, file: !3276, line: 403, baseType: !102, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3282, file: !3276, line: 404, baseType: !102, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3275, file: !3276, line: 407, baseType: !102, size: 64, offset: 192)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3275, file: !3276, line: 408, baseType: !102, size: 64, offset: 256)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3275, file: !3276, line: 410, baseType: !102, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3275, file: !3276, line: 411, baseType: !102, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3275, file: !3276, line: 412, baseType: !102, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3275, file: !3276, line: 413, baseType: !102, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3275, file: !3276, line: 414, baseType: !102, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3275, file: !3276, line: 415, baseType: !102, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3275, file: !3276, line: 416, baseType: !102, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3275, file: !3276, line: 417, baseType: !102, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3275, file: !3276, line: 418, baseType: !102, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3275, file: !3276, line: 419, baseType: !102, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3275, file: !3276, line: 420, baseType: !102, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3275, file: !3276, line: 421, baseType: !102, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3275, file: !3276, line: 422, baseType: !102, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3275, file: !3276, line: 423, baseType: !102, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3275, file: !3276, line: 424, baseType: !102, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3275, file: !3276, line: 435, baseType: !102, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3275, file: !3276, line: 436, baseType: !102, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3275, file: !3276, line: 437, baseType: !102, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3275, file: !3276, line: 439, baseType: !102, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3275, file: !3276, line: 440, baseType: !102, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3275, file: !3276, line: 442, baseType: !102, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3275, file: !3276, line: 443, baseType: !102, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3275, file: !3276, line: 444, baseType: !102, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3275, file: !3276, line: 445, baseType: !102, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3275, file: !3276, line: 446, baseType: !102, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3275, file: !3276, line: 447, baseType: !102, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3275, file: !3276, line: 448, baseType: !102, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3275, file: !3276, line: 449, baseType: !102, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3275, file: !3276, line: 450, baseType: !102, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3275, file: !3276, line: 451, baseType: !102, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3275, file: !3276, line: 452, baseType: !102, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3275, file: !3276, line: 453, baseType: !102, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3275, file: !3276, line: 454, baseType: !102, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3275, file: !3276, line: 455, baseType: !102, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3275, file: !3276, line: 456, baseType: !102, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3275, file: !3276, line: 457, baseType: !102, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3275, file: !3276, line: 458, baseType: !102, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3275, file: !3276, line: 459, baseType: !102, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3326 = !DIDerivedType(tag: DW_TAG_member, scope: !3275, file: !3276, line: 461, baseType: !3327, size: 32, offset: 384)
!3327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3275, file: !3276, line: 461, size: 32, elements: !3328)
!3328 = !{!3329, !3330}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3327, file: !3276, line: 462, baseType: !32, size: 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3327, file: !3276, line: 463, baseType: !32, size: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3275, file: !3276, line: 466, baseType: !32, size: 32, offset: 416)
!3332 = !DIDerivedType(tag: DW_TAG_member, scope: !3275, file: !3276, line: 467, baseType: !3333, size: 64, offset: 448)
!3333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3275, file: !3276, line: 467, size: 64, elements: !3334)
!3334 = !{!3335, !3336, !3337, !3338}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3333, file: !3276, line: 468, baseType: !102, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3333, file: !3276, line: 469, baseType: !102, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3333, file: !3276, line: 470, baseType: !102, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3333, file: !3276, line: 471, baseType: !102, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, scope: !3275, file: !3276, line: 473, baseType: !3340, size: 64, offset: 512)
!3340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3275, file: !3276, line: 473, size: 64, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3345}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3340, file: !3276, line: 474, baseType: !102, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3340, file: !3276, line: 475, baseType: !102, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3340, file: !3276, line: 476, baseType: !102, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3340, file: !3276, line: 477, baseType: !102, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3275, file: !3276, line: 479, baseType: !102, size: 64, offset: 576)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3275, file: !3276, line: 485, baseType: !102, size: 64, offset: 640)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3275, file: !3276, line: 490, baseType: !32, size: 32, offset: 704)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3275, file: !3276, line: 492, baseType: !630, size: 32, offset: 736)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3275, file: !3276, line: 501, baseType: !102, size: 64, offset: 768)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3275, file: !3276, line: 506, baseType: !32, size: 32, offset: 832)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3275, file: !3276, line: 507, baseType: !71, size: 16, offset: 864)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3275, file: !3276, line: 508, baseType: !71, size: 16, offset: 880)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3275, file: !3276, line: 509, baseType: !32, size: 32, offset: 896)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3275, file: !3276, line: 510, baseType: !32, size: 32, offset: 928)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3275, file: !3276, line: 518, baseType: !102, size: 64, offset: 960)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3275, file: !3276, line: 520, baseType: !102, size: 64, offset: 1024)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !2666, file: !2647, line: 733, baseType: !70, size: 16, offset: 2816)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !2666, file: !2647, line: 734, baseType: !70, size: 16, offset: 2832)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !2666, file: !2647, line: 735, baseType: !70, size: 16, offset: 2848)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !2666, file: !2647, line: 736, baseType: !3362, size: 1536, offset: 2880)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !2647, line: 155, size: 1536, elements: !3363)
!3363 = !{!3364, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3448, !3449, !3450, !3451}
!3364 = !DIDerivedType(tag: DW_TAG_member, scope: !3362, file: !2647, line: 157, baseType: !3365, size: 768)
!3365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3362, file: !2647, line: 157, size: 768, elements: !3366)
!3366 = !{!3367, !3386, !3390, !3394, !3399, !3421}
!3367 = !DIDerivedType(tag: DW_TAG_member, scope: !3365, file: !2647, line: 158, baseType: !3368, size: 768)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3365, file: !2647, line: 158, size: 768, elements: !3369)
!3369 = !{!3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3385}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3368, file: !2647, line: 159, baseType: !101, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3368, file: !2647, line: 160, baseType: !101, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3368, file: !2647, line: 161, baseType: !27, size: 64, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3368, file: !2647, line: 162, baseType: !27, size: 64, offset: 192)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3368, file: !2647, line: 163, baseType: !50, size: 32, offset: 256)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3368, file: !2647, line: 164, baseType: !50, size: 32, offset: 288)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3368, file: !2647, line: 165, baseType: !50, size: 32, offset: 320)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3368, file: !2647, line: 166, baseType: !50, size: 32, offset: 352)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3368, file: !2647, line: 168, baseType: !3379, size: 192, offset: 384)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !2647, line: 134, size: 192, elements: !3380)
!3380 = !{!3381, !3382, !3383, !3384}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3379, file: !2647, line: 135, baseType: !101, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3379, file: !2647, line: 136, baseType: !34, size: 32, offset: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3379, file: !2647, line: 137, baseType: !50, size: 32, offset: 96)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3379, file: !2647, line: 138, baseType: !50, size: 32, offset: 128)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3368, file: !2647, line: 169, baseType: !3379, size: 192, offset: 576)
!3386 = !DIDerivedType(tag: DW_TAG_member, scope: !3365, file: !2647, line: 171, baseType: !3387, size: 512)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3365, file: !2647, line: 171, size: 512, elements: !3388)
!3388 = !{!3389}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3387, file: !2647, line: 172, baseType: !174, size: 512)
!3390 = !DIDerivedType(tag: DW_TAG_member, scope: !3365, file: !2647, line: 174, baseType: !3391, size: 128)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3365, file: !2647, line: 174, size: 128, elements: !3392)
!3392 = !{!3393}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !3391, file: !2647, line: 176, baseType: !106, size: 128)
!3394 = !DIDerivedType(tag: DW_TAG_member, scope: !3365, file: !2647, line: 178, baseType: !3395, size: 128)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3365, file: !2647, line: 178, size: 128, elements: !3396)
!3396 = !{!3397, !3398}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !3395, file: !2647, line: 179, baseType: !101, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !3395, file: !2647, line: 180, baseType: !101, size: 64, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, scope: !3365, file: !2647, line: 183, baseType: !3400, size: 320)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3365, file: !2647, line: 183, size: 320, elements: !3401)
!3401 = !{!3402, !3410}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3400, file: !2647, line: 189, baseType: !3403, size: 192)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !3404, line: 14, size: 192, elements: !3405)
!3404 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!3405 = !{!3406, !3407, !3408, !3409}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3403, file: !3404, line: 15, baseType: !27, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3403, file: !3404, line: 16, baseType: !27, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3403, file: !3404, line: 17, baseType: !221, size: 8, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3403, file: !3404, line: 18, baseType: !221, size: 8, offset: 136)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !3400, file: !2647, line: 190, baseType: !3411, size: 128, offset: 192)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !3412, line: 21, size: 128, elements: !3413)
!3412 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!3413 = !{!3414, !3419}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !3411, file: !3412, line: 22, baseType: !3415, size: 64)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !3412, line: 17, size: 64, elements: !3416)
!3416 = !{!3417}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3415, file: !3412, line: 18, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3411, file: !3412, line: 23, baseType: !3420, size: 64, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, scope: !3365, file: !2647, line: 193, baseType: !3422, size: 192)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3365, file: !2647, line: 193, size: 192, elements: !3423)
!3423 = !{!3424, !3425, !3426, !3427, !3428}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !3422, file: !2647, line: 194, baseType: !221, size: 8)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !3422, file: !2647, line: 195, baseType: !221, size: 8, offset: 8)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3422, file: !2647, line: 196, baseType: !70, size: 16, offset: 16)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !3422, file: !2647, line: 197, baseType: !101, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !3422, file: !2647, line: 198, baseType: !101, size: 64, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3362, file: !2647, line: 205, baseType: !18, size: 64, offset: 768)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3362, file: !2647, line: 211, baseType: !38, size: 64, offset: 832)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3362, file: !2647, line: 214, baseType: !27, size: 64, offset: 896)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3362, file: !2647, line: 223, baseType: !50, size: 32, offset: 960)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3362, file: !2647, line: 229, baseType: !3265, size: 64, offset: 1024)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3362, file: !2647, line: 234, baseType: !101, size: 64, offset: 1088)
!3435 = !DIDerivedType(tag: DW_TAG_member, scope: !3362, file: !2647, line: 236, baseType: !3436, size: 128, offset: 1152)
!3436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3362, file: !2647, line: 236, size: 128, elements: !3437)
!3437 = !{!3438, !3443}
!3438 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !2647, line: 237, baseType: !3439, size: 128)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3436, file: !2647, line: 237, size: 128, elements: !3440)
!3440 = !{!3441, !3442}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !3439, file: !2647, line: 241, baseType: !101, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !3439, file: !2647, line: 249, baseType: !3265, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !2647, line: 251, baseType: !3444, size: 128)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3436, file: !2647, line: 251, size: 128, elements: !3445)
!3445 = !{!3446, !3447}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !3444, file: !2647, line: 252, baseType: !101, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !3444, file: !2647, line: 253, baseType: !101, size: 64, offset: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3362, file: !2647, line: 261, baseType: !101, size: 64, offset: 1280)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3362, file: !2647, line: 262, baseType: !101, size: 64, offset: 1344)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3362, file: !2647, line: 268, baseType: !101, size: 64, offset: 1408)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3362, file: !2647, line: 269, baseType: !101, size: 64, offset: 1472)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2666, file: !2647, line: 738, baseType: !3106, size: 64, offset: 4416)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !2666, file: !2647, line: 744, baseType: !3154, size: 64, offset: 4480)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2666, file: !2647, line: 745, baseType: !446, size: 64, offset: 4544)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !2666, file: !2647, line: 751, baseType: !448, size: 64, offset: 4608)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !2666, file: !2647, line: 752, baseType: !448, size: 64, offset: 4672)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !2666, file: !2647, line: 757, baseType: !453, size: 256, offset: 4736)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !2666, file: !2647, line: 758, baseType: !106, size: 128, offset: 4992)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2666, file: !2647, line: 759, baseType: !2665, size: 64, offset: 5120)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !2666, file: !2647, line: 761, baseType: !50, size: 32, offset: 5184)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2666, file: !2647, line: 762, baseType: !50, size: 32, offset: 5216)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !2666, file: !2647, line: 764, baseType: !106, size: 128, offset: 5248)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2666, file: !2647, line: 765, baseType: !18, size: 64, offset: 5376)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !2666, file: !2647, line: 768, baseType: !453, size: 256, offset: 5440)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !2666, file: !2647, line: 769, baseType: !45, size: 32, offset: 5696)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2666, file: !2647, line: 771, baseType: !3228, size: 64, offset: 5760)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !2666, file: !2647, line: 772, baseType: !106, size: 128, offset: 5824)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !2666, file: !2647, line: 773, baseType: !27, size: 64, offset: 5952)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !2666, file: !2647, line: 774, baseType: !50, size: 32, offset: 6016)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !2666, file: !2647, line: 777, baseType: !517, size: 192, offset: 6080)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2666, file: !2647, line: 778, baseType: !3472, size: 64, offset: 6272)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !426, line: 1083, size: 384, elements: !3474)
!3474 = !{!3475, !3476, !3477, !3478, !3479, !3480}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3473, file: !426, line: 1084, baseType: !472, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3473, file: !426, line: 1085, baseType: !50, size: 32, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3473, file: !426, line: 1086, baseType: !50, size: 32, offset: 96)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3473, file: !426, line: 1087, baseType: !3472, size: 64, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3473, file: !426, line: 1088, baseType: !424, size: 64, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3473, file: !426, line: 1089, baseType: !433, size: 128, align: 64, offset: 256)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !2666, file: !2647, line: 781, baseType: !34, size: 32, offset: 6336)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !2666, file: !2647, line: 782, baseType: !34, size: 32, offset: 6368)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !2666, file: !2647, line: 783, baseType: !34, size: 32, offset: 6400)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !2666, file: !2647, line: 784, baseType: !34, size: 32, offset: 6432)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !2666, file: !2647, line: 785, baseType: !27, size: 64, offset: 6464)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !2666, file: !2647, line: 786, baseType: !3487, size: 256, offset: 6528)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !3488, line: 17, size: 256, elements: !3489)
!3488 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!3489 = !{!3490, !3491, !3496}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3487, file: !3488, line: 18, baseType: !55, size: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3487, file: !3488, line: 19, baseType: !3492, size: 64, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{null, !3495}
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !3487, file: !3488, line: 20, baseType: !3497, size: 64, offset: 192)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3498, line: 16, size: 64, elements: !3499)
!3498 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3499 = !{!3500}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3497, file: !3498, line: 17, baseType: !18, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !2666, file: !2647, line: 787, baseType: !433, size: 128, align: 64, offset: 6784)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !2666, file: !2647, line: 788, baseType: !34, size: 32, offset: 6912)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !2666, file: !2647, line: 789, baseType: !3497, size: 64, offset: 6976)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !2666, file: !2647, line: 791, baseType: !45, size: 32, offset: 7040)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !2666, file: !2647, line: 794, baseType: !3506, size: 192, offset: 7104)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !2647, line: 579, size: 192, elements: !3507)
!3507 = !{!3508, !3509, !3510}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3506, file: !2647, line: 580, baseType: !106, size: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3506, file: !2647, line: 581, baseType: !204, size: 32, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !3506, file: !2647, line: 582, baseType: !34, size: 32, offset: 160)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !2666, file: !2647, line: 796, baseType: !3512, size: 64, offset: 7296)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !2647, line: 585, size: 128, elements: !3514)
!3514 = !{!3515, !3516}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3513, file: !2647, line: 586, baseType: !27, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3513, file: !2647, line: 587, baseType: !27, size: 64, offset: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !2666, file: !2647, line: 797, baseType: !27, size: 64, offset: 7360)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !2666, file: !2647, line: 800, baseType: !2665, size: 64, offset: 7424)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2666, file: !2647, line: 802, baseType: !3192, size: 64, offset: 7488)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2666, file: !2647, line: 803, baseType: !433, size: 128, align: 64, offset: 7552)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2666, file: !2647, line: 805, baseType: !530, size: 64, offset: 7680)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2666, file: !2647, line: 806, baseType: !101, size: 64, offset: 7744)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !2666, file: !2647, line: 808, baseType: !448, size: 64, offset: 7808)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !2666, file: !2647, line: 810, baseType: !3525, size: 64, offset: 7872)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!101}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !2666, file: !2647, line: 811, baseType: !3529, size: 64, offset: 7936)
!3529 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !2647, line: 605, baseType: !3530)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{null, !2665, !3533, !3638}
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !2647, line: 1148, size: 2048, align: 512, elements: !3535)
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3545, !3546, !3547, !3552, !3553, !3560, !3581, !3603, !3613, !3631, !3632, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !3534, file: !2647, line: 1153, baseType: !101, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3534, file: !2647, line: 1154, baseType: !101, size: 64, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !3534, file: !2647, line: 1155, baseType: !101, size: 64, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3534, file: !2647, line: 1161, baseType: !101, size: 64, offset: 192)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !3534, file: !2647, line: 1165, baseType: !3541, size: 64, offset: 256)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3534, file: !2647, line: 1162, size: 64, elements: !3542)
!3542 = !{!3543, !3544}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3541, file: !2647, line: 1163, baseType: !30, size: 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !3541, file: !2647, line: 1164, baseType: !30, size: 32, offset: 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3534, file: !2647, line: 1166, baseType: !101, size: 64, offset: 320)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3534, file: !2647, line: 1167, baseType: !101, size: 64, offset: 384)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !3534, file: !2647, line: 1171, baseType: !3548, size: 64, offset: 448)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3534, file: !2647, line: 1168, size: 64, elements: !3549)
!3549 = !{!3550, !3551}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3548, file: !2647, line: 1169, baseType: !30, size: 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3548, file: !2647, line: 1170, baseType: !30, size: 32, offset: 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3534, file: !2647, line: 1177, baseType: !101, size: 64, offset: 512)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !3534, file: !2647, line: 1178, baseType: !3554, size: 64, offset: 576)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !2647, line: 67, size: 64, elements: !3556)
!3556 = !{!3557, !3558}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3555, file: !2647, line: 68, baseType: !102, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3555, file: !2647, line: 69, baseType: !3559, offset: 64)
!3559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, elements: !883)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !3534, file: !2647, line: 1179, baseType: !3561, size: 64, offset: 640)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !2647, line: 93, size: 256, elements: !3563)
!3563 = !{!3564, !3580}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !3562, file: !2647, line: 94, baseType: !3565, size: 224)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !2647, line: 83, size: 224, elements: !3566)
!3566 = !{!3567, !3573, !3578, !3579}
!3567 = !DIDerivedType(tag: DW_TAG_member, scope: !3565, file: !2647, line: 84, baseType: !3568, size: 64)
!3568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3565, file: !2647, line: 84, size: 64, elements: !3569)
!3569 = !{!3570, !3572}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3568, file: !2647, line: 85, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3568, file: !2647, line: 86, baseType: !27, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3565, file: !2647, line: 88, baseType: !3574, size: 64, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !2647, line: 80, baseType: !3575)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!27, !38, !1948, !27, !27}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3565, file: !2647, line: 89, baseType: !38, size: 64, offset: 128)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3565, file: !2647, line: 90, baseType: !30, size: 32, offset: 192)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3562, file: !2647, line: 95, baseType: !30, size: 32, offset: 224)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !3534, file: !2647, line: 1180, baseType: !3582, size: 64, offset: 704)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !2647, line: 123, size: 128, elements: !3584)
!3584 = !{!3585, !3586, !3587}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3583, file: !2647, line: 124, baseType: !102, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !3583, file: !2647, line: 125, baseType: !102, size: 64, offset: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3583, file: !2647, line: 126, baseType: !3588, offset: 128)
!3588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3589, elements: !883)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3276, line: 1415, size: 192, elements: !3590)
!3590 = !{!3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3589, file: !3276, line: 1416, baseType: !102, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !3589, file: !3276, line: 1417, baseType: !102, size: 64, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !3589, file: !3276, line: 1418, baseType: !102, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !3589, file: !3276, line: 1419, baseType: !102, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !3589, file: !3276, line: 1420, baseType: !102, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !3589, file: !3276, line: 1421, baseType: !102, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !3589, file: !3276, line: 1422, baseType: !102, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3589, file: !3276, line: 1423, baseType: !102, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !3589, file: !3276, line: 1424, baseType: !102, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !3589, file: !3276, line: 1425, baseType: !102, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3589, file: !3276, line: 1426, baseType: !102, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3589, file: !3276, line: 1427, baseType: !102, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3534, file: !2647, line: 1181, baseType: !3604, size: 64, offset: 768)
!3604 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3276, line: 1430, size: 64, elements: !3605)
!3605 = !{!3606, !3607}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !3604, file: !3276, line: 1431, baseType: !102, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, scope: !3604, file: !3276, line: 1433, baseType: !3608, size: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3604, file: !3276, line: 1433, size: 64, elements: !3609)
!3609 = !{!3610, !3611, !3612}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !3608, file: !3276, line: 1434, baseType: !32, size: 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !3608, file: !3276, line: 1435, baseType: !71, size: 16, offset: 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !3608, file: !3276, line: 1436, baseType: !71, size: 16, offset: 48)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !3534, file: !2647, line: 1182, baseType: !3614, size: 64, offset: 832)
!3614 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3276, line: 1267, size: 64, elements: !3615)
!3615 = !{!3616, !3617}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3614, file: !3276, line: 1268, baseType: !102, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, scope: !3614, file: !3276, line: 1269, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3614, file: !3276, line: 1269, size: 64, elements: !3619)
!3619 = !{!3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !3618, file: !3276, line: 1270, baseType: !102, size: 5, flags: DIFlagBitField, extraData: i64 0)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !3618, file: !3276, line: 1271, baseType: !102, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !3618, file: !3276, line: 1272, baseType: !102, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !3618, file: !3276, line: 1273, baseType: !102, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !3618, file: !3276, line: 1274, baseType: !102, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !3618, file: !3276, line: 1275, baseType: !102, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !3618, file: !3276, line: 1276, baseType: !102, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !3618, file: !3276, line: 1277, baseType: !102, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !3618, file: !3276, line: 1278, baseType: !102, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !3618, file: !3276, line: 1279, baseType: !102, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !3618, file: !3276, line: 1280, baseType: !102, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !3534, file: !2647, line: 1183, baseType: !101, size: 64, offset: 896)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !3534, file: !2647, line: 1185, baseType: !3633, size: 128, offset: 960)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !3634, line: 7, size: 128, elements: !3635)
!3634 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!3635 = !{!3636, !3637}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !3633, file: !3634, line: 8, baseType: !102, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3633, file: !3634, line: 9, baseType: !3638, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3640, line: 103, size: 1344, elements: !3641)
!3640 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3641 = !{!3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3670, !3671, !3672}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3639, file: !3640, line: 109, baseType: !27, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3639, file: !3640, line: 110, baseType: !27, size: 64, offset: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3639, file: !3640, line: 111, baseType: !27, size: 64, offset: 128)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3639, file: !3640, line: 112, baseType: !27, size: 64, offset: 192)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3639, file: !3640, line: 113, baseType: !27, size: 64, offset: 256)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3639, file: !3640, line: 114, baseType: !27, size: 64, offset: 320)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3639, file: !3640, line: 117, baseType: !27, size: 64, offset: 384)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3639, file: !3640, line: 118, baseType: !27, size: 64, offset: 448)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3639, file: !3640, line: 119, baseType: !27, size: 64, offset: 512)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3639, file: !3640, line: 120, baseType: !27, size: 64, offset: 576)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3639, file: !3640, line: 121, baseType: !27, size: 64, offset: 640)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3639, file: !3640, line: 122, baseType: !27, size: 64, offset: 704)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3639, file: !3640, line: 123, baseType: !27, size: 64, offset: 768)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3639, file: !3640, line: 124, baseType: !27, size: 64, offset: 832)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3639, file: !3640, line: 125, baseType: !27, size: 64, offset: 896)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3639, file: !3640, line: 139, baseType: !27, size: 64, offset: 960)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3639, file: !3640, line: 142, baseType: !27, size: 64, offset: 1024)
!3659 = !DIDerivedType(tag: DW_TAG_member, scope: !3639, file: !3640, line: 144, baseType: !3660, size: 64, offset: 1088)
!3660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3639, file: !3640, line: 144, size: 64, elements: !3661)
!3661 = !{!3662, !3663, !3664}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3660, file: !3640, line: 146, baseType: !70, size: 16)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3660, file: !3640, line: 148, baseType: !101, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3660, file: !3640, line: 150, baseType: !3665, size: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3640, line: 59, size: 64, elements: !3666)
!3666 = !{!3667, !3668, !3669}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3665, file: !3640, line: 61, baseType: !101, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3665, file: !3640, line: 63, baseType: !101, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3665, file: !3640, line: 65, baseType: !101, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3639, file: !3640, line: 153, baseType: !27, size: 64, offset: 1152)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3639, file: !3640, line: 154, baseType: !27, size: 64, offset: 1216)
!3672 = !DIDerivedType(tag: DW_TAG_member, scope: !3639, file: !3640, line: 156, baseType: !3673, size: 64, offset: 1280)
!3673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3639, file: !3640, line: 156, size: 64, elements: !3674)
!3674 = !{!3675, !3676, !3677}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3673, file: !3640, line: 158, baseType: !70, size: 16)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3673, file: !3640, line: 160, baseType: !101, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3673, file: !3640, line: 162, baseType: !3678, size: 64)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3640, line: 69, size: 64, elements: !3679)
!3679 = !{!3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3678, file: !3640, line: 71, baseType: !101, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3678, file: !3640, line: 73, baseType: !101, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3678, file: !3640, line: 75, baseType: !101, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3678, file: !3640, line: 77, baseType: !101, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3678, file: !3640, line: 80, baseType: !101, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3678, file: !3640, line: 83, baseType: !101, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3678, file: !3640, line: 86, baseType: !101, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3678, file: !3640, line: 88, baseType: !101, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3678, file: !3640, line: 93, baseType: !101, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3678, file: !3640, line: 100, baseType: !101, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !3534, file: !2647, line: 1186, baseType: !3633, size: 128, offset: 1088)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !3534, file: !2647, line: 1187, baseType: !101, size: 64, offset: 1216)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3534, file: !2647, line: 1189, baseType: !101, size: 64, offset: 1280)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3534, file: !2647, line: 1190, baseType: !101, size: 64, offset: 1344)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3534, file: !2647, line: 1191, baseType: !101, size: 64, offset: 1408)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3534, file: !2647, line: 1192, baseType: !101, size: 64, offset: 1472)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !3534, file: !2647, line: 1193, baseType: !101, size: 64, offset: 1536)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !3534, file: !2647, line: 1194, baseType: !101, size: 64, offset: 1600)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !3534, file: !2647, line: 1195, baseType: !101, size: 64, offset: 1664)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !2666, file: !2647, line: 812, baseType: !38, size: 64, offset: 8000)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !2666, file: !2647, line: 820, baseType: !2441, size: 64, offset: 8064)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2666, file: !2647, line: 821, baseType: !2645, size: 64, offset: 8128)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2666, file: !2647, line: 828, baseType: !3703, size: 64, offset: 8192)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !2647, line: 1046, size: 1664, elements: !3705)
!3705 = !{!3706, !3964}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !3704, file: !2647, line: 1047, baseType: !3707, size: 1600)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3708, line: 152, size: 1600, elements: !3709)
!3708 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3709 = !{!3710, !3820, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3963}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3707, file: !3708, line: 154, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3708, line: 389, size: 7872, elements: !3713)
!3713 = !{!3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3733, !3734, !3738, !3739, !3740, !3741, !3742, !3747, !3763, !3764, !3766, !3767, !3768, !3790, !3791, !3792, !3793, !3799, !3800, !3801, !3802, !3803, !3807, !3810, !3811, !3818}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3712, file: !3708, line: 391, baseType: !3707, size: 1600)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3712, file: !3708, line: 393, baseType: !27, size: 64, offset: 1600)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3712, file: !3708, line: 401, baseType: !50, size: 32, offset: 1664)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3712, file: !3708, line: 404, baseType: !50, size: 32, offset: 1696)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3712, file: !3708, line: 417, baseType: !50, size: 32, offset: 1728)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3712, file: !3708, line: 418, baseType: !50, size: 32, offset: 1760)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3712, file: !3708, line: 419, baseType: !50, size: 32, offset: 1792)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3712, file: !3708, line: 432, baseType: !50, size: 32, offset: 1824)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3712, file: !3708, line: 433, baseType: !50, size: 32, offset: 1856)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3712, file: !3708, line: 434, baseType: !50, size: 32, offset: 1888)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3712, file: !3708, line: 436, baseType: !50, size: 32, offset: 1920)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3712, file: !3708, line: 439, baseType: !34, size: 32, offset: 1952)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3712, file: !3708, line: 441, baseType: !1966, size: 64, offset: 1984)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3712, file: !3708, line: 442, baseType: !3728, size: 448, offset: 2048)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3708, line: 138, size: 448, elements: !3729)
!3729 = !{!3730, !3731, !3732}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3728, file: !3708, line: 140, baseType: !1966, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3728, file: !3708, line: 141, baseType: !27, size: 64, offset: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3728, file: !3708, line: 142, baseType: !2361, size: 320, offset: 128)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3712, file: !3708, line: 443, baseType: !3728, size: 448, offset: 2496)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3712, file: !3708, line: 446, baseType: !3735, offset: 2944)
!3735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3728, elements: !3736)
!3736 = !{!3737}
!3737 = !DISubrange(count: 0)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3712, file: !3708, line: 455, baseType: !70, size: 16, offset: 2944)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3712, file: !3708, line: 456, baseType: !70, size: 16, offset: 2960)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3712, file: !3708, line: 457, baseType: !70, size: 16, offset: 2976)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3712, file: !3708, line: 458, baseType: !70, size: 16, offset: 2992)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3712, file: !3708, line: 461, baseType: !3743, size: 896, offset: 3008)
!3743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3744, size: 896, elements: !3745)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3745 = !{!3746}
!3746 = !DISubrange(count: 14)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3712, file: !3708, line: 463, baseType: !3748, size: 64, offset: 3904)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3708, line: 537, size: 41664, elements: !3750)
!3750 = !{!3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3749, file: !3708, line: 538, baseType: !1986, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3749, file: !3708, line: 541, baseType: !34, size: 32, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3749, file: !3708, line: 544, baseType: !50, size: 32, offset: 96)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3749, file: !3708, line: 547, baseType: !106, size: 128, offset: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3749, file: !3708, line: 548, baseType: !433, size: 128, align: 64, offset: 256)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3749, file: !3708, line: 555, baseType: !3712, size: 7872, offset: 384)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3749, file: !3708, line: 558, baseType: !3711, size: 64, offset: 8256)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3749, file: !3708, line: 561, baseType: !45, size: 32, offset: 8320)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3749, file: !3708, line: 564, baseType: !34, size: 32, offset: 8352)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3749, file: !3708, line: 567, baseType: !2607, size: 32768, offset: 8384)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3749, file: !3708, line: 570, baseType: !3762, size: 512, offset: 41152)
!3762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1325)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3712, file: !3708, line: 469, baseType: !106, size: 128, offset: 3968)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3712, file: !3708, line: 478, baseType: !3765, size: 1792, offset: 4096)
!3765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 1792, elements: !3745)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3712, file: !3708, line: 487, baseType: !3711, size: 64, offset: 5888)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3712, file: !3708, line: 488, baseType: !3711, size: 64, offset: 5952)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3712, file: !3708, line: 491, baseType: !3769, size: 64, offset: 6016)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3708, line: 327, size: 896, elements: !3771)
!3771 = !{!3772, !3775, !3785, !3786, !3787, !3788, !3789}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3770, file: !3708, line: 332, baseType: !3773)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3774, line: 64, elements: !417)
!3774 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3770, file: !3708, line: 333, baseType: !3776, size: 192)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3708, line: 299, size: 192, elements: !3777)
!3777 = !{!3778}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3776, file: !3708, line: 300, baseType: !3779, size: 192)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3780, line: 17, size: 192, elements: !3781)
!3780 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3781 = !{!3782, !3783, !3784}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3779, file: !3780, line: 18, baseType: !101, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3779, file: !3780, line: 19, baseType: !101, size: 64, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3779, file: !3780, line: 20, baseType: !103, size: 64, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3770, file: !3708, line: 339, baseType: !3776, size: 192, offset: 192)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3770, file: !3708, line: 347, baseType: !3776, size: 192, offset: 384)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3770, file: !3708, line: 353, baseType: !3776, size: 192, offset: 576)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3770, file: !3708, line: 366, baseType: !3711, size: 64, offset: 768)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3770, file: !3708, line: 367, baseType: !3711, size: 64, offset: 832)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3712, file: !3708, line: 492, baseType: !106, size: 128, offset: 6080)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3712, file: !3708, line: 495, baseType: !3776, size: 192, offset: 6208)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3712, file: !3708, line: 496, baseType: !3776, size: 192, offset: 6400)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3712, file: !3708, line: 497, baseType: !3794, size: 192, offset: 6592)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !20, line: 324, size: 192, elements: !3795)
!3795 = !{!3796, !3797, !3798}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3794, file: !20, line: 326, baseType: !101, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3794, file: !20, line: 327, baseType: !101, size: 64, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3794, file: !20, line: 328, baseType: !204, size: 32, offset: 128)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3712, file: !3708, line: 503, baseType: !106, size: 128, offset: 6784)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3712, file: !3708, line: 504, baseType: !453, size: 256, offset: 6912)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3712, file: !3708, line: 507, baseType: !517, size: 192, offset: 7168)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3712, file: !3708, line: 510, baseType: !746, size: 256, offset: 7360)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3712, file: !3708, line: 513, baseType: !3804, size: 64, offset: 7616)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3806, line: 214, elements: !417)
!3806 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3712, file: !3708, line: 516, baseType: !3808, offset: 7680)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3809, line: 76, elements: !417)
!3809 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3712, file: !3708, line: 519, baseType: !45, size: 32, offset: 7680)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3712, file: !3708, line: 522, baseType: !3812, size: 128, offset: 7712)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3708, line: 370, size: 128, elements: !3813)
!3813 = !{!3814, !3815, !3816, !3817}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3812, file: !3708, line: 372, baseType: !617, size: 8)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3812, file: !3708, line: 375, baseType: !50, size: 32, offset: 32)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3812, file: !3708, line: 380, baseType: !50, size: 32, offset: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3812, file: !3708, line: 386, baseType: !50, size: 32, offset: 96)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3712, file: !3708, line: 529, baseType: !3819, offset: 7872)
!3819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3711, elements: !883)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3707, file: !3708, line: 157, baseType: !3821, size: 64, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3708, line: 669, size: 1984, elements: !3823)
!3823 = !{!3824, !3828, !3832, !3836, !3837, !3838, !3839, !3843, !3847, !3848, !3854, !3858, !3859, !3860, !3889, !3893, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3946, !3947}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3822, file: !3708, line: 670, baseType: !3825, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!3744, !3744}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3822, file: !3708, line: 671, baseType: !3829, size: 64, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!50, !3744}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3822, file: !3708, line: 672, baseType: !3833, size: 64, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{null, !3744}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3822, file: !3708, line: 673, baseType: !3833, size: 64, offset: 192)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3822, file: !3708, line: 674, baseType: !3833, size: 64, offset: 256)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3822, file: !3708, line: 675, baseType: !3833, size: 64, offset: 320)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3822, file: !3708, line: 676, baseType: !3840, size: 64, offset: 384)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{null, !3744, !50}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3822, file: !3708, line: 677, baseType: !3844, size: 64, offset: 448)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!50, !2011, !3744}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3822, file: !3708, line: 679, baseType: !3844, size: 64, offset: 512)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3822, file: !3708, line: 682, baseType: !3849, size: 64, offset: 576)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!50, !3852}
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3708, line: 30, flags: DIFlagFwdDecl)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3822, file: !3708, line: 683, baseType: !3855, size: 64, offset: 640)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{null, !3852}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3822, file: !3708, line: 684, baseType: !3855, size: 64, offset: 704)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3822, file: !3708, line: 685, baseType: !2546, size: 64, offset: 768)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3822, file: !3708, line: 686, baseType: !3861, size: 64, offset: 832)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!50, !18, !3864}
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3708, line: 209, size: 4736, elements: !3866)
!3866 = !{!3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3865, file: !3708, line: 215, baseType: !3743, size: 896)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3865, file: !3708, line: 218, baseType: !40, size: 32, offset: 896)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3865, file: !3708, line: 226, baseType: !3864, size: 64, offset: 960)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3865, file: !3708, line: 229, baseType: !3711, size: 64, offset: 1024)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3865, file: !3708, line: 232, baseType: !50, size: 32, offset: 1088)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3865, file: !3708, line: 241, baseType: !106, size: 128, offset: 1152)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3865, file: !3708, line: 242, baseType: !106, size: 128, offset: 1280)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3865, file: !3708, line: 243, baseType: !106, size: 128, offset: 1408)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3865, file: !3708, line: 246, baseType: !106, size: 128, offset: 1536)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3865, file: !3708, line: 255, baseType: !3765, size: 1792, offset: 1664)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3865, file: !3708, line: 258, baseType: !106, size: 128, offset: 3456)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3865, file: !3708, line: 259, baseType: !106, size: 128, offset: 3584)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3865, file: !3708, line: 265, baseType: !508, size: 128, offset: 3712)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3865, file: !3708, line: 271, baseType: !106, size: 128, offset: 3840)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3865, file: !3708, line: 277, baseType: !106, size: 128, offset: 3968)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3865, file: !3708, line: 278, baseType: !106, size: 128, offset: 4096)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3865, file: !3708, line: 279, baseType: !106, size: 128, offset: 4224)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3865, file: !3708, line: 288, baseType: !3711, size: 64, offset: 4352)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3865, file: !3708, line: 289, baseType: !3711, size: 64, offset: 4416)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3865, file: !3708, line: 290, baseType: !3864, size: 64, offset: 4480)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3865, file: !3708, line: 293, baseType: !617, size: 8, offset: 4544)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3865, file: !3708, line: 296, baseType: !433, size: 128, align: 64, offset: 4608)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3822, file: !3708, line: 688, baseType: !3890, size: 64, offset: 896)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{null, !18, !3864}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3822, file: !3708, line: 689, baseType: !3894, size: 64, offset: 960)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{null, !18}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3822, file: !3708, line: 690, baseType: !3894, size: 64, offset: 1024)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3822, file: !3708, line: 691, baseType: !3894, size: 64, offset: 1088)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3822, file: !3708, line: 692, baseType: !3833, size: 64, offset: 1152)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3822, file: !3708, line: 694, baseType: !617, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3822, file: !3708, line: 707, baseType: !617, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3822, file: !3708, line: 719, baseType: !617, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3822, file: !3708, line: 722, baseType: !50, size: 32, offset: 1248)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3822, file: !3708, line: 723, baseType: !697, size: 64, offset: 1280)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3822, file: !3708, line: 726, baseType: !697, size: 64, offset: 1344)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3822, file: !3708, line: 729, baseType: !3748, size: 64, offset: 1408)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3822, file: !3708, line: 732, baseType: !535, size: 192, offset: 1472)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3822, file: !3708, line: 738, baseType: !106, size: 128, offset: 1664)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3822, file: !3708, line: 744, baseType: !3910, size: 64, offset: 1792)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3708, line: 580, size: 1728, elements: !3912)
!3912 = !{!3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3922, !3923, !3924, !3928, !3932, !3933, !3934, !3935, !3936, !3940, !3944, !3945}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3911, file: !3708, line: 586, baseType: !3762, size: 512)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3911, file: !3708, line: 587, baseType: !27, size: 64, offset: 512)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3911, file: !3708, line: 593, baseType: !798, size: 64, offset: 576)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3911, file: !3708, line: 596, baseType: !34, size: 32, offset: 640)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3911, file: !3708, line: 604, baseType: !34, size: 32, offset: 672)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3911, file: !3708, line: 610, baseType: !3821, size: 64, offset: 704)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3911, file: !3708, line: 611, baseType: !106, size: 128, offset: 768)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3911, file: !3708, line: 612, baseType: !3921, size: 64, offset: 896)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3911, file: !3708, line: 614, baseType: !2002, size: 64, offset: 960)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3911, file: !3708, line: 615, baseType: !2060, size: 64, offset: 1024)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3911, file: !3708, line: 621, baseType: !3925, size: 64, offset: 1088)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!101, !3744, !3910}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3911, file: !3708, line: 625, baseType: !3929, size: 64, offset: 1152)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!117, !3744, !3910}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3911, file: !3708, line: 628, baseType: !2041, size: 64, offset: 1216)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3911, file: !3708, line: 631, baseType: !2029, size: 64, offset: 1280)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3911, file: !3708, line: 632, baseType: !2037, size: 64, offset: 1344)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3911, file: !3708, line: 633, baseType: !2033, size: 64, offset: 1408)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3911, file: !3708, line: 640, baseType: !3937, size: 64, offset: 1472)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!50, !3744, !3910, !101}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3911, file: !3708, line: 645, baseType: !3941, size: 64, offset: 1536)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!50, !3744, !3910, !117}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3911, file: !3708, line: 654, baseType: !2068, size: 64, offset: 1600)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3911, file: !3708, line: 657, baseType: !2075, size: 64, offset: 1664)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3822, file: !3708, line: 745, baseType: !3910, size: 64, offset: 1856)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3822, file: !3708, line: 754, baseType: !34, size: 32, offset: 1920)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3707, file: !3708, line: 160, baseType: !1471, size: 128, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3707, file: !3708, line: 163, baseType: !106, size: 128, offset: 256)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3707, file: !3708, line: 164, baseType: !106, size: 128, offset: 384)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3707, file: !3708, line: 167, baseType: !106, size: 128, offset: 512)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3707, file: !3708, line: 173, baseType: !50, size: 32, offset: 640)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3707, file: !3708, line: 175, baseType: !34, size: 32, offset: 672)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3707, file: !3708, line: 183, baseType: !101, size: 64, offset: 704)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3707, file: !3708, line: 189, baseType: !45, size: 32, offset: 768)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3707, file: !3708, line: 192, baseType: !746, size: 256, offset: 832)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3707, file: !3708, line: 193, baseType: !3958, size: 448, offset: 1088)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !747, line: 120, size: 448, elements: !3959)
!3959 = !{!3960, !3961, !3962}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3958, file: !747, line: 121, baseType: !746, size: 256)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3958, file: !747, line: 122, baseType: !433, size: 128, align: 64, offset: 256)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3958, file: !747, line: 125, baseType: !2423, size: 64, offset: 384)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3707, file: !3708, line: 199, baseType: !3744, size: 64, offset: 1536)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3704, file: !2647, line: 1048, baseType: !3965, size: 64, offset: 1600)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !2647, line: 1039, size: 256, elements: !3967)
!3967 = !{!3968, !3969, !3970, !3971}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3966, file: !2647, line: 1040, baseType: !101, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3966, file: !2647, line: 1041, baseType: !101, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !3966, file: !2647, line: 1042, baseType: !101, size: 64, offset: 128)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3966, file: !2647, line: 1043, baseType: !50, size: 32, offset: 192)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2666, file: !2647, line: 832, baseType: !38, size: 64, offset: 8256)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !2666, file: !2647, line: 834, baseType: !106, size: 128, offset: 8320)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !2666, file: !2647, line: 842, baseType: !32, size: 32, offset: 8448)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1263, file: !1264, line: 524, baseType: !34, size: 32, offset: 8320)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1263, file: !1264, line: 525, baseType: !3977, size: 64, offset: 8384)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !3980, line: 28, size: 192, elements: !3981)
!3980 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!3981 = !{!3982, !3983, !3984}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !3979, file: !3980, line: 29, baseType: !697, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !3979, file: !3980, line: 30, baseType: !697, size: 64, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !3979, file: !3980, line: 31, baseType: !27, size: 64, offset: 128)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1263, file: !1264, line: 526, baseType: !34, size: 32, offset: 8448)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1263, file: !1264, line: 533, baseType: !38, size: 64, offset: 8512)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1263, file: !1264, line: 534, baseType: !34, size: 32, offset: 8576)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1263, file: !1264, line: 535, baseType: !3989, size: 64, offset: 8640)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1263, file: !1264, line: 536, baseType: !34, size: 32, offset: 8704)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1263, file: !1264, line: 539, baseType: !50, size: 32, offset: 8736)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1263, file: !1264, line: 540, baseType: !2535, size: 64, offset: 8768)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1263, file: !1264, line: 563, baseType: !106, size: 128, offset: 8832)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1263, file: !1264, line: 565, baseType: !106, size: 128, offset: 8960)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1263, file: !1264, line: 568, baseType: !2546, size: 64, offset: 9088)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1263, file: !1264, line: 570, baseType: !45, size: 32, offset: 9152)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1239, file: !426, line: 2382, baseType: !1238, size: 64, offset: 448)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1239, file: !426, line: 2383, baseType: !504, size: 64, offset: 512)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1239, file: !426, line: 2385, baseType: !4000, offset: 576)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2390, line: 206, elements: !417)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1239, file: !426, line: 2386, baseType: !4000, offset: 576)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1239, file: !426, line: 2387, baseType: !4000, offset: 576)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1239, file: !426, line: 2388, baseType: !4004, offset: 576)
!4004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4000, elements: !491)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1239, file: !426, line: 2390, baseType: !4000, offset: 576)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1239, file: !426, line: 2391, baseType: !4000, offset: 576)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1239, file: !426, line: 2392, baseType: !4000, offset: 576)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1239, file: !426, line: 2393, baseType: !4000, offset: 576)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1230, file: !426, line: 1197, baseType: !4010, size: 64, offset: 384)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4012)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !426, line: 2057, size: 1664, elements: !4013)
!4013 = !{!4014, !4018, !4022, !4023, !4027, !4031, !4035, !4036, !4037, !4041, !4049, !4053, !4054, !4055, !4061, !4065, !4066, !4070, !4071, !4072, !4073, !4077, !4081, !4134, !4149, !4150}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4012, file: !426, line: 2058, baseType: !4015, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!1028, !1229}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4012, file: !426, line: 2059, baseType: !4019, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{null, !1028}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4012, file: !426, line: 2060, baseType: !4019, size: 64, offset: 128)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4012, file: !426, line: 2062, baseType: !4024, size: 64, offset: 192)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{null, !1028, !50}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4012, file: !426, line: 2063, baseType: !4028, size: 64, offset: 256)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!50, !1028, !1716}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4012, file: !426, line: 2064, baseType: !4032, size: 64, offset: 320)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!50, !1028}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4012, file: !426, line: 2065, baseType: !4019, size: 64, offset: 384)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4012, file: !426, line: 2066, baseType: !1258, size: 64, offset: 448)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4012, file: !426, line: 2067, baseType: !4038, size: 64, offset: 512)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!50, !1229, !50}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4012, file: !426, line: 2068, baseType: !4042, size: 64, offset: 576)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!50, !1229, !4045}
!4045 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !426, line: 2052, baseType: !34, size: 32, elements: !4046)
!4046 = !{!4047, !4048}
!4047 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!4048 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4012, file: !426, line: 2069, baseType: !4050, size: 64, offset: 640)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!50, !1229}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4012, file: !426, line: 2070, baseType: !4042, size: 64, offset: 704)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4012, file: !426, line: 2071, baseType: !4050, size: 64, offset: 768)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4012, file: !426, line: 2072, baseType: !4056, size: 64, offset: 832)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!50, !993, !4059}
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !426, line: 62, flags: DIFlagFwdDecl)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4012, file: !426, line: 2073, baseType: !4062, size: 64, offset: 896)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!50, !1229, !2260, !707}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4012, file: !426, line: 2074, baseType: !1258, size: 64, offset: 960)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4012, file: !426, line: 2076, baseType: !4067, size: 64, offset: 1024)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!50, !2011, !993}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4012, file: !426, line: 2077, baseType: !4067, size: 64, offset: 1088)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4012, file: !426, line: 2078, baseType: !4067, size: 64, offset: 1152)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4012, file: !426, line: 2079, baseType: !4067, size: 64, offset: 1216)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4012, file: !426, line: 2081, baseType: !4074, size: 64, offset: 1280)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!1180, !1229, !50, !707, !798, !465}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4012, file: !426, line: 2082, baseType: !4078, size: 64, offset: 1344)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!1180, !1229, !50, !697, !798, !465}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4012, file: !426, line: 2083, baseType: !4082, size: 64, offset: 1408)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!4085, !1028}
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !4088, line: 296, size: 1664, elements: !4089)
!4088 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!4089 = !{!4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4119, !4120, !4121}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4087, file: !4088, line: 297, baseType: !508, size: 128)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4087, file: !4088, line: 298, baseType: !106, size: 128, offset: 128)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4087, file: !4088, line: 299, baseType: !106, size: 128, offset: 256)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4087, file: !4088, line: 300, baseType: !106, size: 128, offset: 384)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4087, file: !4088, line: 301, baseType: !453, size: 256, offset: 512)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4087, file: !4088, line: 302, baseType: !406, size: 32, offset: 768)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4087, file: !4088, line: 303, baseType: !45, size: 32, offset: 800)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4087, file: !4088, line: 304, baseType: !1229, size: 64, offset: 832)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4087, file: !4088, line: 305, baseType: !4099, size: 64, offset: 896)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !4088, line: 68, size: 64, elements: !4100)
!4100 = !{!4101, !4113}
!4101 = !DIDerivedType(tag: DW_TAG_member, scope: !4099, file: !4088, line: 69, baseType: !4102, size: 32)
!4102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4099, file: !4088, line: 69, size: 32, elements: !4103)
!4103 = !{!4104, !4105, !4106}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4102, file: !4088, line: 70, baseType: !590, size: 32)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4102, file: !4088, line: 71, baseType: !598, size: 32)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4102, file: !4088, line: 72, baseType: !4107, size: 32)
!4107 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4108, line: 24, baseType: !4109)
!4108 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4108, line: 22, size: 32, elements: !4110)
!4110 = !{!4111}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4109, file: !4108, line: 23, baseType: !4112, size: 32)
!4112 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4108, line: 20, baseType: !596)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4099, file: !4088, line: 74, baseType: !4114, size: 32, offset: 32)
!4114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !4088, line: 54, baseType: !34, size: 32, elements: !4115)
!4115 = !{!4116, !4117, !4118}
!4116 = !DIEnumerator(name: "USRQUOTA", value: 0)
!4117 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!4118 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4087, file: !4088, line: 306, baseType: !465, size: 64, offset: 960)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4087, file: !4088, line: 307, baseType: !27, size: 64, offset: 1024)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4087, file: !4088, line: 308, baseType: !4122, size: 576, offset: 1088)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !4088, line: 205, size: 576, elements: !4123)
!4123 = !{!4124, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4122, file: !4088, line: 206, baseType: !4125, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !4088, line: 66, baseType: !119)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4122, file: !4088, line: 207, baseType: !4125, size: 64, offset: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4122, file: !4088, line: 208, baseType: !4125, size: 64, offset: 128)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4122, file: !4088, line: 209, baseType: !4125, size: 64, offset: 192)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4122, file: !4088, line: 210, baseType: !4125, size: 64, offset: 256)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4122, file: !4088, line: 211, baseType: !4125, size: 64, offset: 320)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4122, file: !4088, line: 212, baseType: !4125, size: 64, offset: 384)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4122, file: !4088, line: 213, baseType: !653, size: 64, offset: 448)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4122, file: !4088, line: 214, baseType: !653, size: 64, offset: 512)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4012, file: !426, line: 2085, baseType: !4135, size: 64, offset: 1472)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!876, !1229, !4138}
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4140, line: 15, size: 256, elements: !4141)
!4140 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4141 = !{!4142, !4143, !4144, !4145, !4146}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4139, file: !4140, line: 16, baseType: !544, size: 32)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4139, file: !4140, line: 19, baseType: !50, size: 32, offset: 32)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4139, file: !4140, line: 26, baseType: !27, size: 64, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4139, file: !4140, line: 33, baseType: !27, size: 64, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4139, file: !4140, line: 36, baseType: !4147, size: 64, offset: 192)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !389, line: 33, flags: DIFlagFwdDecl)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4012, file: !426, line: 2087, baseType: !4135, size: 64, offset: 1536)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4012, file: !426, line: 2089, baseType: !1258, size: 64, offset: 1600)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1230, file: !426, line: 1198, baseType: !4152, size: 64, offset: 448)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4154)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !4088, line: 324, size: 704, elements: !4155)
!4155 = !{!4156, !4160, !4164, !4168, !4169, !4170, !4171, !4172, !4177, !4182, !4186}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4154, file: !4088, line: 325, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!50, !4086}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4154, file: !4088, line: 326, baseType: !4161, size: 64, offset: 64)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!4086, !1229, !50}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4154, file: !4088, line: 327, baseType: !4165, size: 64, offset: 128)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{null, !4086}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4154, file: !4088, line: 328, baseType: !4157, size: 64, offset: 192)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4154, file: !4088, line: 329, baseType: !4157, size: 64, offset: 256)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4154, file: !4088, line: 330, baseType: !4157, size: 64, offset: 320)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4154, file: !4088, line: 331, baseType: !4038, size: 64, offset: 384)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4154, file: !4088, line: 334, baseType: !4173, size: 64, offset: 448)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!4176, !1028}
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4154, file: !4088, line: 335, baseType: !4178, size: 64, offset: 512)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!50, !1028, !4181}
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4154, file: !4088, line: 337, baseType: !4183, size: 64, offset: 576)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!50, !1028, !4176}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4154, file: !4088, line: 339, baseType: !4187, size: 64, offset: 640)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!50, !1229, !4190}
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1230, file: !426, line: 1199, baseType: !4192, size: 64, offset: 512)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4194)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !4088, line: 430, size: 704, elements: !4195)
!4195 = !{!4196, !4200, !4201, !4205, !4206, !4207, !4222, !4245, !4249, !4250, !4273}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4194, file: !4088, line: 431, baseType: !4197, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!50, !1229, !50, !50, !1149}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4194, file: !4088, line: 432, baseType: !4038, size: 64, offset: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4194, file: !4088, line: 433, baseType: !4202, size: 64, offset: 128)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!50, !1229, !34}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4194, file: !4088, line: 434, baseType: !4202, size: 64, offset: 192)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4194, file: !4088, line: 435, baseType: !4038, size: 64, offset: 256)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4194, file: !4088, line: 436, baseType: !4208, size: 64, offset: 320)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!50, !1229, !50, !4211}
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !4088, line: 417, size: 256, elements: !4213)
!4213 = !{!4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4212, file: !4088, line: 418, baseType: !50, size: 32)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4212, file: !4088, line: 419, baseType: !34, size: 32, offset: 32)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4212, file: !4088, line: 420, baseType: !34, size: 32, offset: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4212, file: !4088, line: 422, baseType: !34, size: 32, offset: 96)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4212, file: !4088, line: 423, baseType: !34, size: 32, offset: 128)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4212, file: !4088, line: 424, baseType: !34, size: 32, offset: 160)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4212, file: !4088, line: 425, baseType: !34, size: 32, offset: 192)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4212, file: !4088, line: 426, baseType: !34, size: 32, offset: 224)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4194, file: !4088, line: 437, baseType: !4223, size: 64, offset: 384)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!50, !1229, !4099, !4226}
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !4088, line: 345, size: 960, elements: !4228)
!4228 = !{!4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4227, file: !4088, line: 346, baseType: !50, size: 32)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4227, file: !4088, line: 347, baseType: !101, size: 64, offset: 64)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4227, file: !4088, line: 348, baseType: !101, size: 64, offset: 128)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4227, file: !4088, line: 349, baseType: !101, size: 64, offset: 192)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4227, file: !4088, line: 350, baseType: !101, size: 64, offset: 256)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4227, file: !4088, line: 351, baseType: !101, size: 64, offset: 320)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4227, file: !4088, line: 352, baseType: !101, size: 64, offset: 384)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4227, file: !4088, line: 353, baseType: !117, size: 64, offset: 448)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4227, file: !4088, line: 355, baseType: !117, size: 64, offset: 512)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4227, file: !4088, line: 356, baseType: !50, size: 32, offset: 576)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4227, file: !4088, line: 357, baseType: !50, size: 32, offset: 608)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4227, file: !4088, line: 358, baseType: !101, size: 64, offset: 640)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4227, file: !4088, line: 359, baseType: !101, size: 64, offset: 704)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4227, file: !4088, line: 360, baseType: !101, size: 64, offset: 768)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4227, file: !4088, line: 361, baseType: !117, size: 64, offset: 832)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4227, file: !4088, line: 362, baseType: !50, size: 32, offset: 896)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4194, file: !4088, line: 438, baseType: !4246, size: 64, offset: 448)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!50, !1229, !4190, !4226}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4194, file: !4088, line: 440, baseType: !4223, size: 64, offset: 512)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4194, file: !4088, line: 441, baseType: !4251, size: 64, offset: 576)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!50, !1229, !4254}
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !4088, line: 411, size: 1408, elements: !4256)
!4256 = !{!4257, !4258}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4255, file: !4088, line: 412, baseType: !34, size: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4255, file: !4088, line: 413, baseType: !4259, size: 1344, offset: 64)
!4259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4260, size: 1344, elements: !491)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !4088, line: 397, size: 448, elements: !4261)
!4261 = !{!4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4272}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4260, file: !4088, line: 398, baseType: !34, size: 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4260, file: !4088, line: 399, baseType: !34, size: 32, offset: 32)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4260, file: !4088, line: 401, baseType: !34, size: 32, offset: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4260, file: !4088, line: 402, baseType: !34, size: 32, offset: 96)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4260, file: !4088, line: 403, baseType: !34, size: 32, offset: 128)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4260, file: !4088, line: 404, baseType: !34, size: 32, offset: 160)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4260, file: !4088, line: 405, baseType: !34, size: 32, offset: 192)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4260, file: !4088, line: 406, baseType: !103, size: 64, offset: 256)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4260, file: !4088, line: 407, baseType: !4271, size: 64, offset: 320)
!4271 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !46, line: 132, baseType: !101)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4260, file: !4088, line: 408, baseType: !4271, size: 64, offset: 384)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4194, file: !4088, line: 442, baseType: !4202, size: 64, offset: 640)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1230, file: !426, line: 1200, baseType: !4275, size: 64, offset: 576)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4277)
!4277 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !426, line: 54, flags: DIFlagFwdDecl)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1230, file: !426, line: 1201, baseType: !27, size: 64, offset: 640)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1230, file: !426, line: 1202, baseType: !27, size: 64, offset: 704)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1230, file: !426, line: 1203, baseType: !27, size: 64, offset: 768)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1230, file: !426, line: 1204, baseType: !993, size: 64, offset: 832)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1230, file: !426, line: 1205, baseType: !637, size: 320, offset: 896)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1230, file: !426, line: 1206, baseType: !50, size: 32, offset: 1216)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1230, file: !426, line: 1207, baseType: !45, size: 32, offset: 1248)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1230, file: !426, line: 1209, baseType: !38, size: 64, offset: 1280)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1230, file: !426, line: 1211, baseType: !4287, size: 64, offset: 1344)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4290)
!4290 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !426, line: 1211, flags: DIFlagFwdDecl)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1230, file: !426, line: 1223, baseType: !4292, size: 64, offset: 1408)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1005, line: 34, size: 64, elements: !4293)
!4293 = !{!4294}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4292, file: !1005, line: 35, baseType: !1008, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1230, file: !426, line: 1224, baseType: !106, size: 128, offset: 1472)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1230, file: !426, line: 1225, baseType: !4297, size: 64, offset: 1600)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !426, line: 1225, flags: DIFlagFwdDecl)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1230, file: !426, line: 1226, baseType: !4300, size: 64, offset: 1664)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !426, line: 1226, flags: DIFlagFwdDecl)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1230, file: !426, line: 1227, baseType: !4303, size: 64, offset: 1728)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !426, line: 50, flags: DIFlagFwdDecl)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1230, file: !426, line: 1228, baseType: !4306, size: 64, offset: 1792)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !426, line: 1228, flags: DIFlagFwdDecl)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1230, file: !426, line: 1229, baseType: !508, size: 128, offset: 1856)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1230, file: !426, line: 1230, baseType: !34, size: 32, offset: 1984)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1230, file: !426, line: 1231, baseType: !4311, size: 2496, offset: 2048)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !4088, line: 521, size: 2496, elements: !4312)
!4312 = !{!4313, !4314, !4315, !4317, !4349}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4311, file: !4088, line: 522, baseType: !34, size: 32)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4311, file: !4088, line: 523, baseType: !637, size: 320, offset: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4311, file: !4088, line: 524, baseType: !4316, size: 192, offset: 384)
!4316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1028, size: 192, elements: !491)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4311, file: !4088, line: 525, baseType: !4318, size: 1728, offset: 576)
!4318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4319, size: 1728, elements: !491)
!4319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !4088, line: 222, size: 576, elements: !4320)
!4320 = !{!4321, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4319, file: !4088, line: 223, baseType: !4322, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !4088, line: 445, size: 256, elements: !4324)
!4324 = !{!4325, !4326, !4339, !4340}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4323, file: !4088, line: 446, baseType: !50, size: 32)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4323, file: !4088, line: 447, baseType: !4327, size: 64, offset: 64)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4329)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !4088, line: 312, size: 512, elements: !4330)
!4330 = !{!4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4329, file: !4088, line: 313, baseType: !4038, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4329, file: !4088, line: 314, baseType: !4038, size: 64, offset: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4329, file: !4088, line: 315, baseType: !4038, size: 64, offset: 128)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4329, file: !4088, line: 316, baseType: !4038, size: 64, offset: 192)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4329, file: !4088, line: 317, baseType: !4157, size: 64, offset: 256)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4329, file: !4088, line: 318, baseType: !4157, size: 64, offset: 320)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4329, file: !4088, line: 319, baseType: !4157, size: 64, offset: 384)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4329, file: !4088, line: 320, baseType: !4187, size: 64, offset: 448)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4323, file: !4088, line: 448, baseType: !1262, size: 64, offset: 128)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4323, file: !4088, line: 449, baseType: !4322, size: 64, offset: 192)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4319, file: !4088, line: 224, baseType: !50, size: 32, offset: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4319, file: !4088, line: 226, baseType: !106, size: 128, offset: 128)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4319, file: !4088, line: 227, baseType: !27, size: 64, offset: 256)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4319, file: !4088, line: 228, baseType: !34, size: 32, offset: 320)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4319, file: !4088, line: 229, baseType: !34, size: 32, offset: 352)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4319, file: !4088, line: 230, baseType: !4125, size: 64, offset: 384)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4319, file: !4088, line: 231, baseType: !4125, size: 64, offset: 448)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4319, file: !4088, line: 232, baseType: !38, size: 64, offset: 512)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4311, file: !4088, line: 526, baseType: !4350, size: 192, offset: 2304)
!4350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4327, size: 192, elements: !491)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1230, file: !426, line: 1233, baseType: !4352, size: 2368, offset: 4544)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !426, line: 1184, size: 2368, elements: !4353)
!4353 = !{!4354, !4355, !4356}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4352, file: !426, line: 1185, baseType: !72, size: 16)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4352, file: !426, line: 1186, baseType: !72, size: 16, offset: 16)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4352, file: !426, line: 1187, baseType: !4357, size: 2304, offset: 64)
!4357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4358, size: 2304, elements: !491)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4359, line: 12, size: 768, elements: !4360)
!4359 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4360 = !{!4361, !4369, !4370, !4371, !4372}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4358, file: !4359, line: 13, baseType: !4362, size: 384)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4363, line: 17, size: 384, elements: !4364)
!4363 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4364 = !{!4365, !4366, !4367, !4368}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4362, file: !4363, line: 18, baseType: !50, size: 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4362, file: !4363, line: 19, baseType: !50, size: 32, offset: 32)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4362, file: !4363, line: 20, baseType: !517, size: 192, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4362, file: !4363, line: 22, baseType: !433, size: 128, align: 64, offset: 256)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4358, file: !4359, line: 14, baseType: !2212, size: 64, offset: 384)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4358, file: !4359, line: 15, baseType: !3497, size: 64, offset: 448)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4358, file: !4359, line: 16, baseType: !517, size: 192, offset: 512)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4358, file: !4359, line: 17, baseType: !45, size: 32, offset: 704)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1230, file: !426, line: 1240, baseType: !38, size: 64, offset: 6912)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1230, file: !426, line: 1243, baseType: !30, size: 32, offset: 6976)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1230, file: !426, line: 1245, baseType: !653, size: 64, offset: 7040)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1230, file: !426, line: 1246, baseType: !653, size: 64, offset: 7104)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1230, file: !426, line: 1248, baseType: !32, size: 32, offset: 7168)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1230, file: !426, line: 1249, baseType: !4379, size: 64, offset: 7232)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !426, line: 634, flags: DIFlagFwdDecl)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1230, file: !426, line: 1252, baseType: !4382, size: 256, offset: 7296)
!4382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !4383)
!4383 = !{!4384}
!4384 = !DISubrange(count: 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1230, file: !426, line: 1253, baseType: !4386, size: 128, offset: 7552)
!4386 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4387, line: 21, baseType: !4388)
!4387 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4387, line: 19, size: 128, elements: !4389)
!4389 = !{!4390}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4388, file: !4387, line: 20, baseType: !4391, size: 128)
!4391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 128, elements: !4392)
!4392 = !{!4393}
!4393 = !DISubrange(count: 16)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1230, file: !426, line: 1255, baseType: !34, size: 32, offset: 7680)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1230, file: !426, line: 1261, baseType: !453, size: 256, offset: 7744)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1230, file: !426, line: 1267, baseType: !697, size: 64, offset: 8000)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1230, file: !426, line: 1269, baseType: !4398, size: 64, offset: 8064)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4400)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !995, line: 128, size: 1024, align: 512, elements: !4401)
!4401 = !{!4402, !4406, !4407, !4414, !4420, !4424, !4428, !4432, !4433, !4437, !4441, !4446, !4450}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4400, file: !995, line: 129, baseType: !4403, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!50, !993, !34}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4400, file: !995, line: 130, baseType: !4403, size: 64, offset: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4400, file: !995, line: 131, baseType: !4408, size: 64, offset: 128)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!50, !4411, !4413}
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !994)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4400, file: !995, line: 132, baseType: !4415, size: 64, offset: 192)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{!50, !4411, !34, !697, !4418}
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1013)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4400, file: !995, line: 134, baseType: !4421, size: 64, offset: 256)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!50, !4411}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4400, file: !995, line: 135, baseType: !4425, size: 64, offset: 320)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!50, !993}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4400, file: !995, line: 136, baseType: !4429, size: 64, offset: 384)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{null, !993}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4400, file: !995, line: 137, baseType: !4429, size: 64, offset: 448)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4400, file: !995, line: 138, baseType: !4434, size: 64, offset: 512)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{null, !993, !1028}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4400, file: !995, line: 139, baseType: !4438, size: 64, offset: 576)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!707, !993, !707, !50}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4400, file: !995, line: 140, baseType: !4442, size: 64, offset: 640)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!988, !4445}
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4400, file: !995, line: 141, baseType: !4447, size: 64, offset: 704)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!50, !1149, !617}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4400, file: !995, line: 142, baseType: !4451, size: 64, offset: 768)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!993, !993, !4454}
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1029)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1230, file: !426, line: 1271, baseType: !4457, size: 448, offset: 8128)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4140, line: 63, size: 448, elements: !4458)
!4458 = !{!4459, !4464, !4465, !4466, !4467, !4468, !4469}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4457, file: !4140, line: 64, baseType: !4460, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!27, !4463, !4138}
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4457, file: !4140, line: 66, baseType: !4460, size: 64, offset: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4457, file: !4140, line: 69, baseType: !876, size: 64, offset: 128)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4457, file: !4140, line: 70, baseType: !50, size: 32, offset: 192)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4457, file: !4140, line: 71, baseType: !34, size: 32, offset: 224)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4457, file: !4140, line: 74, baseType: !106, size: 128, offset: 256)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4457, file: !4140, line: 85, baseType: !4470, size: 64, offset: 384)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1230, file: !426, line: 1274, baseType: !446, size: 64, offset: 8576)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1230, file: !426, line: 1280, baseType: !446, size: 64, offset: 8640)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1230, file: !426, line: 1283, baseType: !50, size: 32, offset: 8704)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1230, file: !426, line: 1286, baseType: !1903, size: 32, offset: 8736)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1230, file: !426, line: 1289, baseType: !2423, size: 64, offset: 8768)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1230, file: !426, line: 1290, baseType: !504, size: 64, offset: 8832)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1230, file: !426, line: 1297, baseType: !561, size: 64, offset: 8896)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1230, file: !426, line: 1304, baseType: !4479, size: 64, offset: 8960)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4480, line: 49, size: 64, elements: !4481)
!4480 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4481 = !{!4482}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4479, file: !4480, line: 50, baseType: !4483, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4480, line: 41, size: 512, align: 512, elements: !4485)
!4485 = !{!4486, !4487, !4492}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4484, file: !4480, line: 43, baseType: !406, size: 32)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4484, file: !4480, line: 45, baseType: !4488, size: 192, offset: 64)
!4488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4480, line: 29, size: 192, elements: !4489)
!4489 = !{!4490, !4491}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4488, file: !4480, line: 30, baseType: !106, size: 128)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4488, file: !4480, line: 32, baseType: !876, size: 64, offset: 128)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4484, file: !4480, line: 46, baseType: !876, size: 64, offset: 256)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1230, file: !426, line: 1305, baseType: !4479, size: 64, offset: 9024)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1230, file: !426, line: 1306, baseType: !433, size: 128, align: 64, offset: 9088)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1230, file: !426, line: 1307, baseType: !746, size: 256, offset: 9216)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1230, file: !426, line: 1309, baseType: !453, size: 256, offset: 9472)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1230, file: !426, line: 1314, baseType: !50, size: 32, offset: 9728)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1230, file: !426, line: 1317, baseType: !406, size: 32, align: 512, offset: 10240)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1230, file: !426, line: 1318, baseType: !106, size: 128, offset: 10304)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1230, file: !426, line: 1320, baseType: !406, size: 32, offset: 10432)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1230, file: !426, line: 1321, baseType: !106, size: 128, offset: 10496)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1029, file: !426, line: 656, baseType: !1386, size: 64, offset: 512)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1029, file: !426, line: 659, baseType: !38, size: 64, offset: 576)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1029, file: !426, line: 663, baseType: !27, size: 64, offset: 640)
!4505 = !DIDerivedType(tag: DW_TAG_member, scope: !1029, file: !426, line: 671, baseType: !4506, size: 32, offset: 704)
!4506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1029, file: !426, line: 671, size: 32, elements: !4507)
!4507 = !{!4508, !4509}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4506, file: !426, line: 672, baseType: !2482, size: 32)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4506, file: !426, line: 673, baseType: !34, size: 32)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1029, file: !426, line: 675, baseType: !1102, size: 32, offset: 736)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1029, file: !426, line: 676, baseType: !465, size: 64, offset: 768)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1029, file: !426, line: 677, baseType: !1138, size: 128, offset: 832)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1029, file: !426, line: 678, baseType: !1138, size: 128, offset: 960)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1029, file: !426, line: 679, baseType: !1138, size: 128, offset: 1088)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1029, file: !426, line: 680, baseType: !406, size: 32, offset: 1216)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1029, file: !426, line: 681, baseType: !72, size: 16, offset: 1248)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1029, file: !426, line: 682, baseType: !221, size: 8, offset: 1264)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1029, file: !426, line: 683, baseType: !221, size: 8, offset: 1272)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1029, file: !426, line: 684, baseType: !4271, size: 64, offset: 1280)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1029, file: !426, line: 691, baseType: !27, size: 64, offset: 1344)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1029, file: !426, line: 692, baseType: !637, size: 320, offset: 1408)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1029, file: !426, line: 694, baseType: !27, size: 64, offset: 1728)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1029, file: !426, line: 695, baseType: !27, size: 64, offset: 1792)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1029, file: !426, line: 697, baseType: !508, size: 128, offset: 1856)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1029, file: !426, line: 698, baseType: !106, size: 128, offset: 1984)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1029, file: !426, line: 707, baseType: !106, size: 128, offset: 2112)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1029, file: !426, line: 708, baseType: !106, size: 128, offset: 2240)
!4528 = !DIDerivedType(tag: DW_TAG_member, scope: !1029, file: !426, line: 709, baseType: !4529, size: 128, offset: 2368)
!4529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1029, file: !426, line: 709, size: 128, elements: !4530)
!4530 = !{!4531, !4532}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4529, file: !426, line: 710, baseType: !504, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4529, file: !426, line: 711, baseType: !433, size: 128, align: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1029, file: !426, line: 713, baseType: !448, size: 64, offset: 2496)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1029, file: !426, line: 714, baseType: !448, size: 64, offset: 2560)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1029, file: !426, line: 715, baseType: !45, size: 32, offset: 2624)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1029, file: !426, line: 716, baseType: !45, size: 32, offset: 2656)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1029, file: !426, line: 717, baseType: !45, size: 32, offset: 2688)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1029, file: !426, line: 719, baseType: !45, size: 32, offset: 2720)
!4539 = !DIDerivedType(tag: DW_TAG_member, scope: !1029, file: !426, line: 721, baseType: !4540, size: 64, offset: 2752)
!4540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1029, file: !426, line: 721, size: 64, elements: !4541)
!4541 = !{!4542, !4668}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4540, file: !426, line: 722, baseType: !4543, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4545)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !426, line: 1914, size: 2112, elements: !4546)
!4546 = !{!4547, !4548, !4552, !4556, !4560, !4561, !4562, !4568, !4581, !4585, !4589, !4590, !4594, !4595, !4599, !4604, !4605, !4609, !4613, !4619, !4620, !4624, !4625, !4631, !4635, !4636, !4641, !4645, !4649, !4653, !4657, !4658, !4664}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4545, file: !426, line: 1915, baseType: !1262, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4545, file: !426, line: 1916, baseType: !4549, size: 64, offset: 64)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!465, !424, !465, !50}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4545, file: !426, line: 1917, baseType: !4553, size: 64, offset: 128)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!1180, !424, !707, !798, !801}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4545, file: !426, line: 1918, baseType: !4557, size: 64, offset: 192)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!1180, !424, !697, !798, !801}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4545, file: !426, line: 1919, baseType: !1830, size: 64, offset: 256)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4545, file: !426, line: 1920, baseType: !1830, size: 64, offset: 320)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4545, file: !426, line: 1921, baseType: !4563, size: 64, offset: 384)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!50, !1833, !4566, !34}
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !426, line: 53, flags: DIFlagFwdDecl)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4545, file: !426, line: 1923, baseType: !4569, size: 64, offset: 448)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!50, !424, !4572}
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !426, line: 1858, size: 128, elements: !4574)
!4574 = !{!4575, !4580}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4573, file: !426, line: 1859, baseType: !4576, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !426, line: 1855, baseType: !4577)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!617, !4572, !697, !50, !465, !101, !34}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4573, file: !426, line: 1860, baseType: !465, size: 64, offset: 64)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4545, file: !426, line: 1924, baseType: !4582, size: 64, offset: 512)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!2078, !424, !2080}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4545, file: !426, line: 1925, baseType: !4586, size: 64, offset: 576)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!876, !424, !34, !27}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4545, file: !426, line: 1926, baseType: !4586, size: 64, offset: 640)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4545, file: !426, line: 1927, baseType: !4591, size: 64, offset: 704)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!50, !424, !1524}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4545, file: !426, line: 1928, baseType: !27, size: 64, offset: 768)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4545, file: !426, line: 1929, baseType: !4596, size: 64, offset: 832)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!50, !1028, !424}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4545, file: !426, line: 1930, baseType: !4600, size: 64, offset: 896)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!50, !424, !4603}
!4603 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !426, line: 1061, baseType: !38)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4545, file: !426, line: 1931, baseType: !4596, size: 64, offset: 960)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4545, file: !426, line: 1932, baseType: !4606, size: 64, offset: 1024)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!50, !424, !465, !465, !50}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4545, file: !426, line: 1933, baseType: !4610, size: 64, offset: 1088)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!50, !50, !424, !50}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4545, file: !426, line: 1934, baseType: !4614, size: 64, offset: 1152)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!50, !424, !50, !4617}
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !426, line: 1063, flags: DIFlagFwdDecl)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4545, file: !426, line: 1935, baseType: !421, size: 64, offset: 1216)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4545, file: !426, line: 1936, baseType: !4621, size: 64, offset: 1280)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!50, !50}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4545, file: !426, line: 1937, baseType: !4614, size: 64, offset: 1344)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4545, file: !426, line: 1938, baseType: !4626, size: 64, offset: 1408)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!1180, !4629, !424, !801, !798, !34}
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !20, line: 59, flags: DIFlagFwdDecl)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4545, file: !426, line: 1939, baseType: !4632, size: 64, offset: 1472)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!1180, !424, !801, !4629, !798, !34}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4545, file: !426, line: 1940, baseType: !1893, size: 64, offset: 1536)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4545, file: !426, line: 1941, baseType: !4637, size: 64, offset: 1600)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!50, !424, !50, !4640, !1807}
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4545, file: !426, line: 1942, baseType: !4642, size: 64, offset: 1664)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!876, !424, !50, !465, !465}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4545, file: !426, line: 1944, baseType: !4646, size: 64, offset: 1728)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{null, !2011, !424}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4545, file: !426, line: 1948, baseType: !4650, size: 64, offset: 1792)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!1180, !424, !465, !424, !465, !798, !34}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4545, file: !426, line: 1950, baseType: !4654, size: 64, offset: 1856)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!465, !424, !465, !424, !465, !465, !34}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4545, file: !426, line: 1953, baseType: !4606, size: 64, offset: 1920)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4545, file: !426, line: 1954, baseType: !4659, size: 64, offset: 1984)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!50, !4662, !34}
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !426, line: 1911, flags: DIFlagFwdDecl)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4545, file: !426, line: 1955, baseType: !4665, size: 64, offset: 2048)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!50, !4662, !4566, !34}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4540, file: !426, line: 723, baseType: !4019, size: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1029, file: !426, line: 725, baseType: !4670, size: 64, offset: 2816)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !426, line: 725, flags: DIFlagFwdDecl)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1029, file: !426, line: 726, baseType: !1387, size: 1536, align: 64, offset: 2880)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1029, file: !426, line: 727, baseType: !106, size: 128, offset: 4416)
!4674 = !DIDerivedType(tag: DW_TAG_member, scope: !1029, file: !426, line: 728, baseType: !4675, size: 64, offset: 4544)
!4675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1029, file: !426, line: 728, size: 64, elements: !4676)
!4676 = !{!4677, !4678, !4681, !4682}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4675, file: !426, line: 729, baseType: !4629, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4675, file: !426, line: 730, baseType: !4679, size: 64)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !426, line: 730, flags: DIFlagFwdDecl)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4675, file: !426, line: 731, baseType: !707, size: 64)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4675, file: !426, line: 732, baseType: !34, size: 32)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1029, file: !426, line: 735, baseType: !32, size: 32, offset: 4608)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1029, file: !426, line: 738, baseType: !32, size: 32, offset: 4640)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1029, file: !426, line: 739, baseType: !4379, size: 64, offset: 4672)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1029, file: !426, line: 750, baseType: !38, size: 64, offset: 4736)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !994, file: !995, line: 91, baseType: !4688, size: 256, offset: 448)
!4688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 256, elements: !4383)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !994, file: !995, line: 94, baseType: !4690, size: 64, offset: 704)
!4690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4691, line: 25, size: 64, elements: !4692)
!4691 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4692 = !{!4693}
!4693 = !DIDerivedType(tag: DW_TAG_member, scope: !4690, file: !4691, line: 26, baseType: !4694, size: 64)
!4694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4690, file: !4691, line: 26, size: 64, elements: !4695)
!4695 = !{!4696, !4697}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4694, file: !4691, line: 28, baseType: !102, size: 64, align: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, scope: !4694, file: !4691, line: 30, baseType: !4698, size: 64)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4694, file: !4691, line: 30, size: 64, elements: !4699)
!4699 = !{!4700, !4701}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4698, file: !4691, line: 31, baseType: !406, size: 32)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4698, file: !4691, line: 32, baseType: !50, size: 32, offset: 32)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !994, file: !995, line: 95, baseType: !4398, size: 64, offset: 768)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !994, file: !995, line: 96, baseType: !1229, size: 64, offset: 832)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !994, file: !995, line: 97, baseType: !27, size: 64, offset: 896)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !994, file: !995, line: 98, baseType: !38, size: 64, offset: 960)
!4706 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !995, line: 100, baseType: !4707, size: 128, offset: 1024)
!4707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !994, file: !995, line: 100, size: 128, elements: !4708)
!4708 = !{!4709, !4710}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4707, file: !995, line: 101, baseType: !106, size: 128)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4707, file: !995, line: 102, baseType: !2089, size: 64)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !994, file: !995, line: 104, baseType: !106, size: 128, offset: 1152)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !994, file: !995, line: 105, baseType: !106, size: 128, offset: 1280)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !994, file: !995, line: 113, baseType: !4714, size: 128, offset: 1408)
!4714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !994, file: !995, line: 109, size: 128, elements: !4715)
!4715 = !{!4716, !4717, !4718}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4714, file: !995, line: 110, baseType: !508, size: 128)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4714, file: !995, line: 111, baseType: !1004, size: 128)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4714, file: !995, line: 112, baseType: !433, size: 128, align: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !989, file: !990, line: 72, baseType: !1229, size: 64, offset: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !989, file: !990, line: 73, baseType: !50, size: 32, offset: 128)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !989, file: !990, line: 74, baseType: !1067, size: 64, offset: 192)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !984, file: !985, line: 10, baseType: !993, size: 64, offset: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !425, file: !426, line: 1015, baseType: !1028, size: 64, offset: 1344)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !425, file: !426, line: 1016, baseType: !4543, size: 64, offset: 1408)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !425, file: !426, line: 1018, baseType: !101, size: 64, offset: 1472)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !425, file: !426, line: 1020, baseType: !38, size: 64, offset: 1536)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !425, file: !426, line: 1023, baseType: !38, size: 64, offset: 1600)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !425, file: !426, line: 1027, baseType: !2657, size: 64, offset: 1664)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !425, file: !426, line: 1029, baseType: !1386, size: 64, offset: 1728)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !425, file: !426, line: 1030, baseType: !1903, size: 32, offset: 1792)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !425, file: !426, line: 1031, baseType: !1903, size: 32, offset: 1824)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !392, file: !389, line: 756, baseType: !27, size: 64, offset: 704)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !392, file: !389, line: 757, baseType: !27, size: 64, offset: 768)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !392, file: !389, line: 760, baseType: !27, size: 64, offset: 832)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !392, file: !389, line: 761, baseType: !27, size: 64, offset: 896)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !392, file: !389, line: 763, baseType: !27, size: 64, offset: 960)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !392, file: !389, line: 764, baseType: !4738, size: 64, offset: 1024)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1539, line: 299, baseType: !4740)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1539, line: 299, size: 64, elements: !4741)
!4741 = !{!4742}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4740, file: !1539, line: 299, baseType: !4743, size: 64)
!4743 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1544, line: 18, baseType: !27)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !392, file: !389, line: 773, baseType: !45, size: 32, offset: 1088)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !392, file: !389, line: 785, baseType: !45, size: 32, offset: 1120)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !392, file: !389, line: 795, baseType: !4747, size: 64, offset: 1152)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !389, line: 726, size: 128, elements: !4749)
!4749 = !{!4750, !4751}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4748, file: !389, line: 727, baseType: !101, size: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4748, file: !389, line: 728, baseType: !50, size: 32, offset: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !392, file: !389, line: 801, baseType: !27, size: 64, offset: 1216)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !392, file: !389, line: 804, baseType: !446, size: 64, offset: 1280)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !392, file: !389, line: 806, baseType: !50, size: 32, offset: 1344)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !392, file: !389, line: 808, baseType: !406, size: 32, offset: 1376)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !392, file: !389, line: 823, baseType: !637, size: 320, offset: 1408)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !392, file: !389, line: 825, baseType: !106, size: 128, offset: 1728)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !392, file: !389, line: 845, baseType: !50, size: 32, offset: 1856)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !392, file: !389, line: 849, baseType: !27, size: 64, offset: 1920)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !392, file: !389, line: 850, baseType: !27, size: 64, offset: 1984)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !392, file: !389, line: 852, baseType: !27, size: 64, offset: 2048)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !392, file: !389, line: 853, baseType: !27, size: 64, offset: 2112)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !392, file: !389, line: 854, baseType: !448, size: 64, offset: 2176)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !392, file: !389, line: 855, baseType: !27, size: 64, offset: 2240)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !392, file: !389, line: 856, baseType: !27, size: 64, offset: 2304)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !392, file: !389, line: 857, baseType: !27, size: 64, offset: 2368)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !392, file: !389, line: 858, baseType: !27, size: 64, offset: 2432)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !392, file: !389, line: 865, baseType: !261, size: 32, offset: 2496)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !392, file: !389, line: 867, baseType: !406, size: 32, offset: 2528)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !392, file: !389, line: 869, baseType: !27, size: 64, offset: 2560)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !392, file: !389, line: 869, baseType: !27, size: 64, offset: 2624)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !392, file: !389, line: 869, baseType: !27, size: 64, offset: 2688)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !392, file: !389, line: 869, baseType: !27, size: 64, offset: 2752)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !392, file: !389, line: 870, baseType: !27, size: 64, offset: 2816)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !392, file: !389, line: 870, baseType: !27, size: 64, offset: 2880)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !392, file: !389, line: 870, baseType: !27, size: 64, offset: 2944)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !392, file: !389, line: 871, baseType: !27, size: 64, offset: 3008)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !392, file: !389, line: 871, baseType: !27, size: 64, offset: 3072)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !392, file: !389, line: 871, baseType: !27, size: 64, offset: 3136)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !392, file: !389, line: 871, baseType: !27, size: 64, offset: 3200)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !392, file: !389, line: 873, baseType: !4782, size: 3328, offset: 3264)
!4782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 3328, elements: !4783)
!4783 = !{!4784}
!4784 = !DISubrange(count: 52)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !392, file: !389, line: 875, baseType: !4786, size: 1280, offset: 6592)
!4786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !935, size: 1280, elements: !513)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !392, file: !389, line: 877, baseType: !4788, size: 64, offset: 7872)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !389, line: 877, flags: DIFlagFwdDecl)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !392, file: !389, line: 880, baseType: !4791, size: 1088, offset: 7936)
!4791 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4792, line: 72, baseType: !4793)
!4792 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4792, line: 23, size: 1088, elements: !4794)
!4794 = !{!4795, !4796, !4797, !4798, !4799, !4802, !4803, !4804, !4805, !4830, !4831, !4832}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4793, file: !4792, line: 28, baseType: !101, size: 64)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4793, file: !4792, line: 38, baseType: !448, size: 64, offset: 64)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4793, file: !4792, line: 40, baseType: !27, size: 64, offset: 128)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4793, file: !4792, line: 43, baseType: !637, size: 320, offset: 192)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4793, file: !4792, line: 44, baseType: !4800, size: 64, offset: 512)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4792, line: 44, flags: DIFlagFwdDecl)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4793, file: !4792, line: 48, baseType: !27, size: 64, offset: 576)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4793, file: !4792, line: 59, baseType: !453, size: 256, offset: 640)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4793, file: !4792, line: 60, baseType: !38, size: 64, offset: 896)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4793, file: !4792, line: 61, baseType: !4806, size: 64, offset: 960)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4808)
!4808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4809, line: 13, size: 1216, elements: !4810)
!4809 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4810 = !{!4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829}
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4808, file: !4809, line: 14, baseType: !38, size: 64)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4808, file: !4809, line: 15, baseType: !27, size: 64, offset: 64)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4808, file: !4809, line: 17, baseType: !27, size: 64, offset: 128)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4808, file: !4809, line: 17, baseType: !27, size: 64, offset: 192)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4808, file: !4809, line: 18, baseType: !27, size: 64, offset: 256)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4808, file: !4809, line: 18, baseType: !27, size: 64, offset: 320)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4808, file: !4809, line: 19, baseType: !1948, size: 64, offset: 384)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4808, file: !4809, line: 21, baseType: !876, size: 64, offset: 448)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4808, file: !4809, line: 23, baseType: !876, size: 64, offset: 512)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4808, file: !4809, line: 24, baseType: !876, size: 64, offset: 576)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4808, file: !4809, line: 25, baseType: !876, size: 64, offset: 640)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4808, file: !4809, line: 26, baseType: !876, size: 64, offset: 704)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4808, file: !4809, line: 27, baseType: !876, size: 64, offset: 768)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4808, file: !4809, line: 28, baseType: !876, size: 64, offset: 832)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4808, file: !4809, line: 29, baseType: !876, size: 64, offset: 896)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4808, file: !4809, line: 30, baseType: !876, size: 64, offset: 960)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4808, file: !4809, line: 31, baseType: !876, size: 64, offset: 1024)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4808, file: !4809, line: 32, baseType: !876, size: 64, offset: 1088)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4808, file: !4809, line: 33, baseType: !876, size: 64, offset: 1152)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4793, file: !4792, line: 63, baseType: !45, size: 32, offset: 1024)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4793, file: !4792, line: 69, baseType: !70, size: 16, offset: 1056)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4793, file: !4792, line: 70, baseType: !2267, size: 16, offset: 1072)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !392, file: !389, line: 882, baseType: !27, size: 64, offset: 9024)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !392, file: !389, line: 885, baseType: !406, size: 32, offset: 9088)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !392, file: !389, line: 886, baseType: !4836, size: 64, offset: 9152)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !389, line: 732, flags: DIFlagFwdDecl)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !392, file: !389, line: 901, baseType: !561, size: 64, offset: 9216)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !392, file: !389, line: 904, baseType: !424, size: 64, offset: 9280)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !392, file: !389, line: 906, baseType: !4841, size: 64, offset: 9344)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !389, line: 906, flags: DIFlagFwdDecl)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !392, file: !389, line: 930, baseType: !45, size: 32, offset: 9408)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !392, file: !389, line: 933, baseType: !45, size: 32, offset: 9440)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !392, file: !389, line: 935, baseType: !4846, size: 64, offset: 9472)
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !4847, line: 103, size: 64, elements: !4848)
!4847 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!4848 = !{!4849}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4846, file: !4847, line: 104, baseType: !4850, size: 64)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !4847, line: 101, flags: DIFlagFwdDecl)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !392, file: !389, line: 940, baseType: !446, size: 64, offset: 9536)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !392, file: !389, line: 942, baseType: !746, size: 256, offset: 9600)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !388, file: !389, line: 986, baseType: !4855, offset: 10240)
!4855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, elements: !883)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !19, file: !20, line: 882, baseType: !387, size: 64, offset: 9792)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !19, file: !20, line: 884, baseType: !50, size: 32, offset: 9856)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !19, file: !20, line: 885, baseType: !50, size: 32, offset: 9888)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !19, file: !20, line: 886, baseType: !50, size: 32, offset: 9920)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !19, file: !20, line: 888, baseType: !50, size: 32, offset: 9952)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !19, file: !20, line: 890, baseType: !27, size: 64, offset: 9984)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !19, file: !20, line: 893, baseType: !34, size: 32, offset: 10048)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !19, file: !20, line: 896, baseType: !34, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !19, file: !20, line: 897, baseType: !34, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !19, file: !20, line: 898, baseType: !34, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !19, file: !20, line: 899, baseType: !34, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !19, file: !20, line: 919, baseType: !34, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !19, file: !20, line: 922, baseType: !34, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !19, file: !20, line: 923, baseType: !34, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !19, file: !20, line: 925, baseType: !34, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !19, file: !20, line: 939, baseType: !34, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !19, file: !20, line: 941, baseType: !34, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !19, file: !20, line: 944, baseType: !34, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !19, file: !20, line: 956, baseType: !34, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !19, file: !20, line: 962, baseType: !34, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !19, file: !20, line: 966, baseType: !34, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !19, file: !20, line: 969, baseType: !27, size: 64, offset: 10176)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !19, file: !20, line: 971, baseType: !4879, size: 448, offset: 10240)
!4879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !4880, line: 25, size: 448, elements: !4881)
!4880 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!4881 = !{!4882, !4883, !4888}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4879, file: !4880, line: 26, baseType: !27, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4879, file: !4880, line: 27, baseType: !4884, size: 64, offset: 64)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{!876, !4887}
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4888 = !DIDerivedType(tag: DW_TAG_member, scope: !4879, file: !4880, line: 28, baseType: !4889, size: 320, offset: 128)
!4889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4879, file: !4880, line: 28, size: 320, elements: !4890)
!4890 = !{!4891, !4901, !4931}
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4889, file: !4880, line: 37, baseType: !4892, size: 320)
!4892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4889, file: !4880, line: 30, size: 320, elements: !4893)
!4893 = !{!4894, !4896, !4897, !4898, !4899, !4900}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4892, file: !4880, line: 31, baseType: !4895, size: 64)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4892, file: !4880, line: 32, baseType: !30, size: 32, offset: 64)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4892, file: !4880, line: 33, baseType: !30, size: 32, offset: 96)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4892, file: !4880, line: 34, baseType: !30, size: 32, offset: 128)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4892, file: !4880, line: 35, baseType: !101, size: 64, offset: 192)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4892, file: !4880, line: 36, baseType: !4895, size: 64, offset: 256)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4889, file: !4880, line: 47, baseType: !4902, size: 192)
!4902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4889, file: !4880, line: 39, size: 192, elements: !4903)
!4903 = !{!4904, !4905, !4911, !4930}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4902, file: !4880, line: 40, baseType: !252, size: 32)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4902, file: !4880, line: 41, baseType: !4906, size: 32, offset: 32)
!4906 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !4880, line: 16, baseType: !34, size: 32, elements: !4907)
!4907 = !{!4908, !4909, !4910}
!4908 = !DIEnumerator(name: "TT_NONE", value: 0)
!4909 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!4910 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!4911 = !DIDerivedType(tag: DW_TAG_member, scope: !4902, file: !4880, line: 42, baseType: !4912, size: 64, offset: 64)
!4912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4902, file: !4880, line: 42, size: 64, elements: !4913)
!4913 = !{!4914, !4922}
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4912, file: !4880, line: 43, baseType: !4915, size: 64)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4917, line: 7, size: 128, elements: !4918)
!4917 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4918 = !{!4919, !4921}
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4916, file: !4917, line: 8, baseType: !4920, size: 64)
!4920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !254, line: 93, baseType: !119)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4916, file: !4917, line: 9, baseType: !119, size: 64, offset: 64)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4912, file: !4880, line: 44, baseType: !4923, size: 64)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4925, line: 7, size: 64, elements: !4926)
!4925 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4926 = !{!4927, !4929}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4924, file: !4925, line: 8, baseType: !4928, size: 32)
!4928 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4925, line: 5, baseType: !629)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4924, file: !4925, line: 9, baseType: !629, size: 32, offset: 32)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4902, file: !4880, line: 46, baseType: !101, size: 64, offset: 128)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4889, file: !4880, line: 55, baseType: !4932, size: 256)
!4932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4889, file: !4880, line: 49, size: 256, elements: !4933)
!4933 = !{!4934, !4942, !4943, !4944, !4945}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4932, file: !4880, line: 50, baseType: !4935, size: 64)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !4937, line: 36, size: 64, elements: !4938)
!4937 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!4938 = !{!4939, !4940, !4941}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !4936, file: !4937, line: 37, baseType: !50, size: 32)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4936, file: !4937, line: 38, baseType: !665, size: 16, offset: 32)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !4936, file: !4937, line: 39, baseType: !665, size: 16, offset: 48)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4932, file: !4880, line: 51, baseType: !50, size: 32, offset: 64)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4932, file: !4880, line: 52, baseType: !50, size: 32, offset: 96)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4932, file: !4880, line: 53, baseType: !27, size: 64, offset: 128)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4932, file: !4880, line: 54, baseType: !27, size: 64, offset: 192)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !19, file: !20, line: 973, baseType: !4947, size: 32, offset: 10688)
!4947 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !46, line: 27, baseType: !4948)
!4948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !254, line: 28, baseType: !50)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !19, file: !20, line: 974, baseType: !4947, size: 32, offset: 10720)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !19, file: !20, line: 978, baseType: !27, size: 64, offset: 10752)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !19, file: !20, line: 987, baseType: !18, size: 64, offset: 10816)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !19, file: !20, line: 990, baseType: !18, size: 64, offset: 10880)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !19, file: !20, line: 995, baseType: !106, size: 128, offset: 10944)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !19, file: !20, line: 996, baseType: !106, size: 128, offset: 11072)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !19, file: !20, line: 997, baseType: !18, size: 64, offset: 11200)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !19, file: !20, line: 1005, baseType: !106, size: 128, offset: 11264)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !19, file: !20, line: 1006, baseType: !106, size: 128, offset: 11392)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !19, file: !20, line: 1009, baseType: !495, size: 64, offset: 11520)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !19, file: !20, line: 1010, baseType: !4960, size: 512, offset: 11584)
!4960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 512, elements: !513)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !19, file: !20, line: 1011, baseType: !106, size: 128, offset: 12096)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !19, file: !20, line: 1012, baseType: !106, size: 128, offset: 12224)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !19, file: !20, line: 1014, baseType: !816, size: 64, offset: 12352)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !19, file: !20, line: 1017, baseType: !2260, size: 64, offset: 12416)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !19, file: !20, line: 1020, baseType: !2260, size: 64, offset: 12480)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !19, file: !20, line: 1023, baseType: !38, size: 64, offset: 12544)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !19, file: !20, line: 1025, baseType: !101, size: 64, offset: 12608)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !19, file: !20, line: 1026, baseType: !101, size: 64, offset: 12672)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !19, file: !20, line: 1031, baseType: !101, size: 64, offset: 12736)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !19, file: !20, line: 1032, baseType: !3794, size: 192, offset: 12800)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !19, file: !20, line: 1041, baseType: !27, size: 64, offset: 12992)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !19, file: !20, line: 1042, baseType: !27, size: 64, offset: 13056)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !19, file: !20, line: 1045, baseType: !101, size: 64, offset: 13120)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !19, file: !20, line: 1048, baseType: !101, size: 64, offset: 13184)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !19, file: !20, line: 1051, baseType: !27, size: 64, offset: 13248)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !19, file: !20, line: 1052, baseType: !27, size: 64, offset: 13312)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !19, file: !20, line: 1055, baseType: !4978, size: 640, offset: 13376)
!4978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4979, line: 132, size: 640, elements: !4980)
!4979 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!4980 = !{!4981, !4987, !4988}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4978, file: !4979, line: 133, baseType: !4982, size: 576)
!4982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4983, size: 576, elements: !491)
!4983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4979, line: 117, size: 192, elements: !4984)
!4984 = !{!4985, !4986}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4983, file: !4979, line: 118, baseType: !101, size: 64)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4983, file: !4979, line: 119, baseType: !267, size: 128, offset: 64)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4978, file: !4979, line: 134, baseType: !34, size: 32, offset: 576)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4978, file: !4979, line: 135, baseType: !34, size: 32, offset: 608)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !19, file: !20, line: 1058, baseType: !4990, size: 448, offset: 14016)
!4990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4979, line: 144, size: 448, elements: !4991)
!4991 = !{!4992, !4993, !4994}
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4990, file: !4979, line: 145, baseType: !433, size: 128, align: 64)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4990, file: !4979, line: 146, baseType: !453, size: 256, offset: 128)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4990, file: !4979, line: 147, baseType: !34, size: 32, offset: 384)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !19, file: !20, line: 1064, baseType: !897, size: 64, offset: 14464)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !19, file: !20, line: 1067, baseType: !897, size: 64, offset: 14528)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !19, file: !20, line: 1070, baseType: !897, size: 64, offset: 14592)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !19, file: !20, line: 1074, baseType: !621, size: 64, offset: 14656)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !19, file: !20, line: 1084, baseType: !5000, size: 128, offset: 14720)
!5000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !4392)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !19, file: !20, line: 1086, baseType: !5002, size: 64, offset: 14848)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !20, line: 55, flags: DIFlagFwdDecl)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !19, file: !20, line: 1089, baseType: !5005, size: 64, offset: 14912)
!5005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !5006, line: 12, size: 64, elements: !5007)
!5006 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!5007 = !{!5008}
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !5005, file: !5006, line: 13, baseType: !5009, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !5006, line: 8, flags: DIFlagFwdDecl)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !19, file: !20, line: 1090, baseType: !5012, size: 128, offset: 14976)
!5012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !5013, line: 13, size: 128, elements: !5014)
!5013 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!5014 = !{!5015}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !5012, file: !5013, line: 14, baseType: !106, size: 128)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !19, file: !20, line: 1097, baseType: !5017, size: 64, offset: 15104)
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5018, size: 64)
!5018 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !20, line: 50, flags: DIFlagFwdDecl)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !19, file: !20, line: 1100, baseType: !5020, size: 64, offset: 15168)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !20, line: 1100, flags: DIFlagFwdDecl)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !19, file: !20, line: 1103, baseType: !5023, size: 64, offset: 15232)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5024 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !20, line: 53, flags: DIFlagFwdDecl)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !19, file: !20, line: 1107, baseType: !5026, size: 64, offset: 15296)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !5028, line: 31, size: 576, elements: !5029)
!5028 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!5029 = !{!5030, !5031, !5034, !5037, !5040, !5041, !5044, !5047, !5048}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5027, file: !5028, line: 32, baseType: !40, size: 32)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !5027, file: !5028, line: 33, baseType: !5032, size: 64, offset: 64)
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5033 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !5028, line: 9, flags: DIFlagFwdDecl)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !5027, file: !5028, line: 34, baseType: !5035, size: 64, offset: 128)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !5028, line: 10, flags: DIFlagFwdDecl)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !5027, file: !5028, line: 35, baseType: !5038, size: 64, offset: 192)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !5028, line: 8, flags: DIFlagFwdDecl)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !5027, file: !5028, line: 36, baseType: !530, size: 64, offset: 256)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !5027, file: !5028, line: 37, baseType: !5042, size: 64, offset: 320)
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !623, line: 34, flags: DIFlagFwdDecl)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !5027, file: !5028, line: 38, baseType: !5045, size: 64, offset: 384)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5046 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !5028, line: 38, flags: DIFlagFwdDecl)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !5027, file: !5028, line: 39, baseType: !5045, size: 64, offset: 448)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !5027, file: !5028, line: 40, baseType: !5049, size: 64, offset: 512)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !5051, line: 771, size: 384, elements: !5052)
!5051 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!5052 = !{!5053, !5054, !5055, !5056}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5050, file: !5051, line: 772, baseType: !605, size: 192)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !5050, file: !5051, line: 773, baseType: !561, size: 64, offset: 192)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5050, file: !5051, line: 774, baseType: !861, size: 64, offset: 256)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !5050, file: !5051, line: 775, baseType: !3864, size: 64, offset: 320)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !19, file: !20, line: 1110, baseType: !5058, size: 64, offset: 15360)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !5060, line: 93, size: 8768, elements: !5061)
!5060 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!5061 = !{!5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5110, !5119, !5120, !5122, !5123, !5124, !5127, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5165, !5166, !5173, !5183, !5245, !5246, !5249, !5250, !5251, !5252, !5253, !5254}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !5059, file: !5060, line: 94, baseType: !40, size: 32)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !5059, file: !5060, line: 95, baseType: !45, size: 32, offset: 32)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5059, file: !5060, line: 96, baseType: !50, size: 32, offset: 64)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !5059, file: !5060, line: 97, baseType: !50, size: 32, offset: 96)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !5059, file: !5060, line: 98, baseType: !106, size: 128, offset: 128)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !5059, file: !5060, line: 100, baseType: !517, size: 192, offset: 256)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !5059, file: !5060, line: 103, baseType: !18, size: 64, offset: 448)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !5059, file: !5060, line: 106, baseType: !5070, size: 192, offset: 512)
!5070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !5071, line: 32, size: 192, elements: !5072)
!5071 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!5072 = !{!5073, !5074}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5070, file: !5071, line: 33, baseType: !106, size: 128)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5070, file: !5071, line: 34, baseType: !5075, size: 64, offset: 128)
!5075 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5076, line: 25, baseType: !5077)
!5076 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5077 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5076, line: 23, size: 64, elements: !5078)
!5078 = !{!5079}
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5077, file: !5076, line: 24, baseType: !338, size: 64)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !5059, file: !5060, line: 109, baseType: !504, size: 64, offset: 704)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !5059, file: !5060, line: 112, baseType: !50, size: 32, offset: 768)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !5059, file: !5060, line: 114, baseType: !50, size: 32, offset: 800)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !5059, file: !5060, line: 115, baseType: !18, size: 64, offset: 832)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !5059, file: !5060, line: 118, baseType: !50, size: 32, offset: 896)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5059, file: !5060, line: 119, baseType: !34, size: 32, offset: 928)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !5059, file: !5060, line: 121, baseType: !5087, size: 64, offset: 960)
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5088, size: 64)
!5088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !5060, line: 80, size: 448, elements: !5089)
!5089 = !{!5090, !5091, !5097}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5088, file: !5060, line: 81, baseType: !45, size: 32)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5088, file: !5060, line: 82, baseType: !5092, size: 128, offset: 64)
!5092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !5060, line: 75, size: 128, elements: !5093)
!5093 = !{!5094, !5095}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5092, file: !5060, line: 76, baseType: !18, size: 64)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5092, file: !5060, line: 77, baseType: !5096, size: 64, offset: 64)
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5088, file: !5060, line: 83, baseType: !817, size: 256, offset: 192)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !5059, file: !5060, line: 132, baseType: !34, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !5059, file: !5060, line: 133, baseType: !34, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !5059, file: !5060, line: 138, baseType: !34, size: 32, offset: 1056)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !5059, file: !5060, line: 139, baseType: !106, size: 128, offset: 1088)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !5059, file: !5060, line: 142, baseType: !174, size: 512, offset: 1216)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !5059, file: !5060, line: 143, baseType: !183, size: 64, offset: 1728)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !5059, file: !5060, line: 150, baseType: !5105, size: 256, offset: 1792)
!5105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5106, size: 256, elements: !2250)
!5106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !5060, line: 38, size: 128, elements: !5107)
!5107 = !{!5108, !5109}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5106, file: !5060, line: 39, baseType: !101, size: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5106, file: !5060, line: 40, baseType: !101, size: 64, offset: 64)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !5059, file: !5060, line: 156, baseType: !5111, size: 192, offset: 2048)
!5111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !5060, line: 66, size: 192, elements: !5112)
!5112 = !{!5113}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5111, file: !5060, line: 67, baseType: !5114, size: 192)
!5114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !5060, line: 47, size: 192, elements: !5115)
!5115 = !{!5116, !5117, !5118}
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5114, file: !5060, line: 48, baseType: !448, size: 64)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5114, file: !5060, line: 49, baseType: !448, size: 64, offset: 64)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5114, file: !5060, line: 50, baseType: !448, size: 64, offset: 128)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !5059, file: !5060, line: 160, baseType: !4978, size: 640, offset: 2240)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5059, file: !5060, line: 163, baseType: !5121, size: 256, offset: 2880)
!5121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 256, elements: !513)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !5059, file: !5060, line: 169, baseType: !495, size: 64, offset: 3136)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !5059, file: !5060, line: 172, baseType: !50, size: 32, offset: 3200)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5059, file: !5060, line: 174, baseType: !5125, size: 64, offset: 3264)
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5126 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !5060, line: 174, flags: DIFlagFwdDecl)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !5059, file: !5060, line: 185, baseType: !5128, size: 64, offset: 3328)
!5128 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !257, line: 860, baseType: !5129)
!5129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !257, line: 853, size: 64, elements: !5130)
!5130 = !{!5131, !5132}
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5129, file: !257, line: 858, baseType: !999, size: 32)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5129, file: !257, line: 859, baseType: !406, size: 32, offset: 32)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5059, file: !5060, line: 186, baseType: !101, size: 64, offset: 3392)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5059, file: !5060, line: 186, baseType: !101, size: 64, offset: 3456)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !5059, file: !5060, line: 186, baseType: !101, size: 64, offset: 3520)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !5059, file: !5060, line: 186, baseType: !101, size: 64, offset: 3584)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !5059, file: !5060, line: 187, baseType: !101, size: 64, offset: 3648)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !5059, file: !5060, line: 188, baseType: !101, size: 64, offset: 3712)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !5059, file: !5060, line: 189, baseType: !3794, size: 192, offset: 3776)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5059, file: !5060, line: 190, baseType: !27, size: 64, offset: 3968)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5059, file: !5060, line: 190, baseType: !27, size: 64, offset: 4032)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !5059, file: !5060, line: 190, baseType: !27, size: 64, offset: 4096)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !5059, file: !5060, line: 190, baseType: !27, size: 64, offset: 4160)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !5059, file: !5060, line: 191, baseType: !27, size: 64, offset: 4224)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !5059, file: !5060, line: 191, baseType: !27, size: 64, offset: 4288)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !5059, file: !5060, line: 191, baseType: !27, size: 64, offset: 4352)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !5059, file: !5060, line: 191, baseType: !27, size: 64, offset: 4416)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !5059, file: !5060, line: 192, baseType: !27, size: 64, offset: 4480)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !5059, file: !5060, line: 192, baseType: !27, size: 64, offset: 4544)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !5059, file: !5060, line: 192, baseType: !27, size: 64, offset: 4608)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !5059, file: !5060, line: 192, baseType: !27, size: 64, offset: 4672)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !5059, file: !5060, line: 193, baseType: !27, size: 64, offset: 4736)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !5059, file: !5060, line: 193, baseType: !27, size: 64, offset: 4800)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !5059, file: !5060, line: 194, baseType: !5155, size: 448, offset: 4864)
!5155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5156, line: 12, size: 448, elements: !5157)
!5156 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5157 = !{!5158, !5159, !5160, !5161, !5162, !5163, !5164}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5155, file: !5156, line: 15, baseType: !101, size: 64)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5155, file: !5156, line: 17, baseType: !101, size: 64, offset: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5155, file: !5156, line: 19, baseType: !101, size: 64, offset: 128)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5155, file: !5156, line: 21, baseType: !101, size: 64, offset: 192)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5155, file: !5156, line: 29, baseType: !101, size: 64, offset: 256)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5155, file: !5156, line: 35, baseType: !101, size: 64, offset: 320)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5155, file: !5156, line: 44, baseType: !101, size: 64, offset: 384)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !5059, file: !5060, line: 202, baseType: !103, size: 64, offset: 5312)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !5059, file: !5060, line: 213, baseType: !5167, size: 2048, offset: 5376)
!5167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5168, size: 2048, elements: !4392)
!5168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5169, line: 43, size: 128, elements: !5170)
!5169 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5170 = !{!5171, !5172}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5168, file: !5169, line: 44, baseType: !800, size: 64)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5168, file: !5169, line: 45, baseType: !800, size: 64, offset: 64)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !5059, file: !5060, line: 216, baseType: !5174, size: 448, offset: 7424)
!5174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !5060, line: 30, size: 448, elements: !5175)
!5175 = !{!5176, !5177, !5178, !5179, !5180, !5181, !5182}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5174, file: !5060, line: 31, baseType: !50, size: 32)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5174, file: !5060, line: 32, baseType: !876, size: 64, offset: 64)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5174, file: !5060, line: 33, baseType: !27, size: 64, offset: 128)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5174, file: !5060, line: 34, baseType: !101, size: 64, offset: 192)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5174, file: !5060, line: 34, baseType: !101, size: 64, offset: 256)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5174, file: !5060, line: 35, baseType: !27, size: 64, offset: 320)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5174, file: !5060, line: 35, baseType: !27, size: 64, offset: 384)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !5059, file: !5060, line: 219, baseType: !5184, size: 64, offset: 7872)
!5184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5185, size: 64)
!5185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5186, line: 41, size: 3456, elements: !5187)
!5186 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5187 = !{!5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5185, file: !5186, line: 47, baseType: !71, size: 16)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5185, file: !5186, line: 48, baseType: !32, size: 32, offset: 32)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5185, file: !5186, line: 54, baseType: !222, size: 8, offset: 64)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5185, file: !5186, line: 55, baseType: !222, size: 8, offset: 72)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5185, file: !5186, line: 73, baseType: !102, size: 64, align: 64, offset: 128)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5185, file: !5186, line: 74, baseType: !102, size: 64, offset: 192)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5185, file: !5186, line: 81, baseType: !102, size: 64, offset: 256)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5185, file: !5186, line: 82, baseType: !102, size: 64, offset: 320)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5185, file: !5186, line: 85, baseType: !102, size: 64, offset: 384)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5185, file: !5186, line: 86, baseType: !102, size: 64, offset: 448)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5185, file: !5186, line: 94, baseType: !102, size: 64, offset: 512)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5185, file: !5186, line: 102, baseType: !102, size: 64, offset: 576)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5185, file: !5186, line: 107, baseType: !4382, size: 256, offset: 640)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5185, file: !5186, line: 108, baseType: !222, size: 8, align: 64, offset: 896)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5185, file: !5186, line: 110, baseType: !5203, size: 24, offset: 904)
!5203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 24, elements: !491)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5185, file: !5186, line: 111, baseType: !32, size: 32, align: 64, offset: 960)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5185, file: !5186, line: 113, baseType: !32, size: 32, offset: 992)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5185, file: !5186, line: 114, baseType: !32, size: 32, offset: 1024)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5185, file: !5186, line: 115, baseType: !32, size: 32, offset: 1056)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5185, file: !5186, line: 117, baseType: !32, size: 32, offset: 1088)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5185, file: !5186, line: 118, baseType: !102, size: 64, align: 64, offset: 1152)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5185, file: !5186, line: 120, baseType: !102, size: 64, offset: 1216)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5185, file: !5186, line: 121, baseType: !102, size: 64, offset: 1280)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5185, file: !5186, line: 122, baseType: !102, size: 64, offset: 1344)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5185, file: !5186, line: 123, baseType: !102, size: 64, offset: 1408)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5185, file: !5186, line: 133, baseType: !102, size: 64, offset: 1472)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5185, file: !5186, line: 137, baseType: !102, size: 64, offset: 1536)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5185, file: !5186, line: 142, baseType: !102, size: 64, offset: 1600)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5185, file: !5186, line: 143, baseType: !102, size: 64, offset: 1664)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5185, file: !5186, line: 146, baseType: !102, size: 64, offset: 1728)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5185, file: !5186, line: 147, baseType: !102, size: 64, offset: 1792)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5185, file: !5186, line: 148, baseType: !102, size: 64, offset: 1856)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5185, file: !5186, line: 149, baseType: !102, size: 64, offset: 1920)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5185, file: !5186, line: 154, baseType: !102, size: 64, offset: 1984)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5185, file: !5186, line: 155, baseType: !102, size: 64, offset: 2048)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5185, file: !5186, line: 156, baseType: !102, size: 64, offset: 2112)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5185, file: !5186, line: 158, baseType: !102, size: 64, offset: 2176)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5185, file: !5186, line: 159, baseType: !102, size: 64, offset: 2240)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5185, file: !5186, line: 162, baseType: !102, size: 64, offset: 2304)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5185, file: !5186, line: 163, baseType: !102, size: 64, offset: 2368)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5185, file: !5186, line: 164, baseType: !102, size: 64, offset: 2432)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5185, file: !5186, line: 167, baseType: !102, size: 64, offset: 2496)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5185, file: !5186, line: 168, baseType: !102, size: 64, offset: 2560)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5185, file: !5186, line: 171, baseType: !102, size: 64, offset: 2624)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5185, file: !5186, line: 172, baseType: !102, size: 64, offset: 2688)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5185, file: !5186, line: 175, baseType: !102, size: 64, offset: 2752)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5185, file: !5186, line: 178, baseType: !102, size: 64, offset: 2816)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5185, file: !5186, line: 179, baseType: !102, size: 64, offset: 2880)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5185, file: !5186, line: 182, baseType: !32, size: 32, offset: 2944)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5185, file: !5186, line: 186, baseType: !102, size: 64, align: 64, offset: 3008)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5185, file: !5186, line: 194, baseType: !102, size: 64, offset: 3072)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5185, file: !5186, line: 195, baseType: !102, size: 64, offset: 3136)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5185, file: !5186, line: 199, baseType: !102, size: 64, offset: 3200)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5185, file: !5186, line: 200, baseType: !102, size: 64, offset: 3264)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5185, file: !5186, line: 203, baseType: !102, size: 64, offset: 3328)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5185, file: !5186, line: 204, baseType: !102, size: 64, offset: 3392)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !5059, file: !5060, line: 222, baseType: !34, size: 32, offset: 7936)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !5059, file: !5060, line: 223, baseType: !5247, size: 64, offset: 8000)
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5248, size: 64)
!5248 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !5060, line: 223, flags: DIFlagFwdDecl)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !5059, file: !5060, line: 230, baseType: !617, size: 8, offset: 8064)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !5059, file: !5060, line: 231, baseType: !665, size: 16, offset: 8080)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !5059, file: !5060, line: 232, baseType: !665, size: 16, offset: 8096)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !5059, file: !5060, line: 234, baseType: !387, size: 64, offset: 8128)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !5059, file: !5060, line: 237, baseType: !453, size: 256, offset: 8192)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !5059, file: !5060, line: 243, baseType: !637, size: 320, offset: 8448)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !19, file: !20, line: 1111, baseType: !5256, size: 64, offset: 15424)
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5257, size: 64)
!5257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !5060, line: 20, size: 16640, elements: !5258)
!5258 = !{!5259, !5260, !5261, !5262}
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5257, file: !5060, line: 21, baseType: !406, size: 32)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5257, file: !5060, line: 22, baseType: !40, size: 32, offset: 32)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5257, file: !5060, line: 23, baseType: !517, size: 192, offset: 64)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5257, file: !5060, line: 24, baseType: !5263, size: 16384, offset: 256)
!5263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5264, size: 16384, elements: !1325)
!5264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !5071, line: 51, size: 256, elements: !5265)
!5265 = !{!5266}
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5264, file: !5071, line: 52, baseType: !5267, size: 256)
!5267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !5071, line: 37, size: 256, elements: !5268)
!5268 = !{!5269, !5276, !5277, !5281}
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5267, file: !5071, line: 39, baseType: !5270, size: 64)
!5270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5271, line: 83, baseType: !5272)
!5271 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5273, size: 64)
!5273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5271, line: 82, baseType: !5274)
!5274 = !DISubroutineType(types: !5275)
!5275 = !{null, !50}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5267, file: !5071, line: 40, baseType: !27, size: 64, offset: 64)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5267, file: !5071, line: 46, baseType: !5278, size: 64, offset: 128)
!5278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5271, line: 86, baseType: !5279)
!5279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5280, size: 64)
!5280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5271, line: 85, baseType: !2547)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5267, file: !5071, line: 48, baseType: !5075, size: 64, offset: 192)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !19, file: !20, line: 1112, baseType: !5075, size: 64, offset: 15488)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !19, file: !20, line: 1113, baseType: !5075, size: 64, offset: 15552)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !19, file: !20, line: 1115, baseType: !5075, size: 64, offset: 15616)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !19, file: !20, line: 1116, baseType: !5070, size: 192, offset: 15680)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !19, file: !20, line: 1117, baseType: !27, size: 64, offset: 15872)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !19, file: !20, line: 1118, baseType: !798, size: 64, offset: 15936)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !19, file: !20, line: 1119, baseType: !34, size: 32, offset: 16000)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !19, file: !20, line: 1121, baseType: !436, size: 64, offset: 16064)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !19, file: !20, line: 1125, baseType: !5291, size: 64, offset: 16128)
!5291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5292, size: 64)
!5292 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !20, line: 43, flags: DIFlagFwdDecl)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !19, file: !20, line: 1127, baseType: !590, size: 32, offset: 16192)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !19, file: !20, line: 1128, baseType: !34, size: 32, offset: 16224)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !19, file: !20, line: 1130, baseType: !5296, size: 128, offset: 16256)
!5296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5297, line: 37, size: 128, elements: !5298)
!5297 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5298 = !{!5299, !5300, !5301}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5296, file: !5297, line: 38, baseType: !50, size: 32)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5296, file: !5297, line: 39, baseType: !45, size: 32, offset: 32)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5296, file: !5297, line: 40, baseType: !5302, size: 64, offset: 64)
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5297, line: 24, flags: DIFlagFwdDecl)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !19, file: !20, line: 1131, baseType: !5305, size: 256, offset: 16384)
!5305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5306, line: 12, size: 256, elements: !5307)
!5306 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5307 = !{!5308, !5309, !5310, !5311}
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5305, file: !5306, line: 13, baseType: !707, size: 64)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5305, file: !5306, line: 14, baseType: !27, size: 64, offset: 64)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5305, file: !5306, line: 15, baseType: !27, size: 64, offset: 128)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5305, file: !5306, line: 16, baseType: !617, size: 8, offset: 192)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !19, file: !20, line: 1134, baseType: !101, size: 64, offset: 16640)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !19, file: !20, line: 1135, baseType: !101, size: 64, offset: 16704)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !19, file: !20, line: 1138, baseType: !406, size: 32, offset: 16768)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !19, file: !20, line: 1141, baseType: !204, size: 32, offset: 16800)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !19, file: !20, line: 1143, baseType: !5317, size: 64, offset: 16832)
!5317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !20, line: 735, size: 64, elements: !5318)
!5318 = !{!5319}
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5317, file: !20, line: 736, baseType: !5320, size: 64)
!5320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5317, size: 64)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !19, file: !20, line: 1147, baseType: !270, size: 128, offset: 16896)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !19, file: !20, line: 1149, baseType: !18, size: 64, offset: 17024)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !19, file: !20, line: 1151, baseType: !5324, size: 64, offset: 17088)
!5324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5325, size: 64)
!5325 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !20, line: 1151, flags: DIFlagFwdDecl)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !19, file: !20, line: 1188, baseType: !38, size: 64, offset: 17152)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !19, file: !20, line: 1191, baseType: !5328, size: 64, offset: 17216)
!5328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5329, size: 64)
!5329 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !20, line: 44, flags: DIFlagFwdDecl)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !19, file: !20, line: 1194, baseType: !5331, size: 64, offset: 17280)
!5331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5332, size: 64)
!5332 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !20, line: 45, flags: DIFlagFwdDecl)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !19, file: !20, line: 1197, baseType: !5334, size: 64, offset: 17344)
!5334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5335, size: 64)
!5335 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !20, line: 61, flags: DIFlagFwdDecl)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !19, file: !20, line: 1199, baseType: !5337, size: 64, offset: 17408)
!5337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5338, size: 64)
!5338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5339, line: 99, size: 128, elements: !5340)
!5339 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5340 = !{!5341, !5342, !5343}
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5338, file: !5339, line: 100, baseType: !446, size: 64)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5338, file: !5339, line: 101, baseType: !45, size: 32, offset: 64)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5338, file: !5339, line: 103, baseType: !72, size: 16, offset: 96)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !19, file: !20, line: 1202, baseType: !5345, size: 64, offset: 17472)
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5346, size: 64)
!5346 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !20, line: 48, flags: DIFlagFwdDecl)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !19, file: !20, line: 1205, baseType: !27, size: 64, offset: 17536)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !19, file: !20, line: 1206, baseType: !5349, size: 64, offset: 17600)
!5349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5350, size: 64)
!5350 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !5071, line: 14, baseType: !5351)
!5351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !5071, line: 12, size: 384, elements: !5352)
!5352 = !{!5353}
!5353 = !DIDerivedType(tag: DW_TAG_member, scope: !5351, file: !5071, line: 13, baseType: !5354, size: 384)
!5354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5351, file: !5071, line: 13, size: 384, elements: !5355)
!5355 = !{!5356, !5357, !5358, !5359}
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5354, file: !5071, line: 13, baseType: !50, size: 32)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5354, file: !5071, line: 13, baseType: !50, size: 32, offset: 32)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5354, file: !5071, line: 13, baseType: !50, size: 32, offset: 64)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5354, file: !5071, line: 13, baseType: !5360, size: 256, offset: 128)
!5360 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5361, line: 37, size: 256, elements: !5362)
!5361 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5362 = !{!5363, !5368, !5381, !5387, !5396, !5423, !5428}
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5360, file: !5361, line: 42, baseType: !5364, size: 64)
!5364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5360, file: !5361, line: 39, size: 64, elements: !5365)
!5365 = !{!5366, !5367}
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5364, file: !5361, line: 40, baseType: !4948, size: 32)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5364, file: !5361, line: 41, baseType: !596, size: 32, offset: 32)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5360, file: !5361, line: 50, baseType: !5369, size: 192)
!5369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5360, file: !5361, line: 45, size: 192, elements: !5370)
!5370 = !{!5371, !5373, !5374, !5380}
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5369, file: !5361, line: 46, baseType: !5372, size: 32)
!5372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !254, line: 95, baseType: !50)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5369, file: !5361, line: 47, baseType: !50, size: 32, offset: 32)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5369, file: !5361, line: 48, baseType: !5375, size: 64, offset: 64)
!5375 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5361, line: 11, baseType: !5376)
!5376 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5361, line: 8, size: 64, elements: !5377)
!5377 = !{!5378, !5379}
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5376, file: !5361, line: 9, baseType: !50, size: 32)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5376, file: !5361, line: 10, baseType: !38, size: 64)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5369, file: !5361, line: 49, baseType: !50, size: 32, offset: 128)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5360, file: !5361, line: 57, baseType: !5382, size: 128)
!5382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5360, file: !5361, line: 53, size: 128, elements: !5383)
!5383 = !{!5384, !5385, !5386}
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5382, file: !5361, line: 54, baseType: !4948, size: 32)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5382, file: !5361, line: 55, baseType: !596, size: 32, offset: 32)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5382, file: !5361, line: 56, baseType: !5375, size: 64, offset: 64)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5360, file: !5361, line: 66, baseType: !5388, size: 256)
!5388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5360, file: !5361, line: 60, size: 256, elements: !5389)
!5389 = !{!5390, !5391, !5392, !5393, !5395}
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5388, file: !5361, line: 61, baseType: !4948, size: 32)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5388, file: !5361, line: 62, baseType: !596, size: 32, offset: 32)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5388, file: !5361, line: 63, baseType: !50, size: 32, offset: 64)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5388, file: !5361, line: 64, baseType: !5394, size: 64, offset: 128)
!5394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !254, line: 94, baseType: !1182)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5388, file: !5361, line: 65, baseType: !5394, size: 64, offset: 192)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5360, file: !5361, line: 105, baseType: !5397, size: 256)
!5397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5360, file: !5361, line: 69, size: 256, elements: !5398)
!5398 = !{!5399, !5400}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5397, file: !5361, line: 70, baseType: !38, size: 64)
!5400 = !DIDerivedType(tag: DW_TAG_member, scope: !5397, file: !5361, line: 79, baseType: !5401, size: 192, offset: 64)
!5401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5397, file: !5361, line: 79, size: 192, elements: !5402)
!5402 = !{!5403, !5404, !5405, !5412, !5417}
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5401, file: !5361, line: 81, baseType: !50, size: 32)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5401, file: !5361, line: 86, baseType: !665, size: 16)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5401, file: !5361, line: 92, baseType: !5406, size: 192)
!5406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5401, file: !5361, line: 88, size: 192, elements: !5407)
!5407 = !{!5408, !5410, !5411}
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5406, file: !5361, line: 89, baseType: !5409, size: 64)
!5409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !248)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5406, file: !5361, line: 90, baseType: !38, size: 64, offset: 64)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5406, file: !5361, line: 91, baseType: !38, size: 64, offset: 128)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5401, file: !5361, line: 97, baseType: !5413, size: 96)
!5413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5401, file: !5361, line: 94, size: 96, elements: !5414)
!5414 = !{!5415, !5416}
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5413, file: !5361, line: 95, baseType: !5409, size: 64)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5413, file: !5361, line: 96, baseType: !32, size: 32, offset: 64)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5401, file: !5361, line: 103, baseType: !5418, size: 128)
!5418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5401, file: !5361, line: 99, size: 128, elements: !5419)
!5419 = !{!5420, !5421, !5422}
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5418, file: !5361, line: 100, baseType: !27, size: 64)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5418, file: !5361, line: 101, baseType: !32, size: 32, offset: 64)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5418, file: !5361, line: 102, baseType: !32, size: 32, offset: 96)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5360, file: !5361, line: 111, baseType: !5424, size: 128)
!5424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5360, file: !5361, line: 108, size: 128, elements: !5425)
!5425 = !{!5426, !5427}
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5424, file: !5361, line: 109, baseType: !876, size: 64)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5424, file: !5361, line: 110, baseType: !50, size: 32, offset: 64)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5360, file: !5361, line: 118, baseType: !5429, size: 128)
!5429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5360, file: !5361, line: 114, size: 128, elements: !5430)
!5430 = !{!5431, !5432, !5433}
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5429, file: !5361, line: 115, baseType: !38, size: 64)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5429, file: !5361, line: 116, baseType: !50, size: 32, offset: 64)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5429, file: !5361, line: 117, baseType: !34, size: 32, offset: 96)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !19, file: !20, line: 1208, baseType: !5155, size: 448, offset: 17664)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !19, file: !20, line: 1215, baseType: !101, size: 64, offset: 18112)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !19, file: !20, line: 1217, baseType: !101, size: 64, offset: 18176)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !19, file: !20, line: 1219, baseType: !101, size: 64, offset: 18240)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !19, file: !20, line: 1223, baseType: !5439, size: 64, offset: 18304)
!5439 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !5440, line: 99, baseType: !5441)
!5440 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!5441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5440, line: 99, size: 64, elements: !5442)
!5442 = !{!5443}
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5441, file: !5440, line: 99, baseType: !338, size: 64)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !19, file: !20, line: 1225, baseType: !999, size: 32, offset: 18368)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !19, file: !20, line: 1226, baseType: !50, size: 32, offset: 18400)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !19, file: !20, line: 1227, baseType: !50, size: 32, offset: 18432)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !19, file: !20, line: 1231, baseType: !3864, size: 64, offset: 18496)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !19, file: !20, line: 1233, baseType: !106, size: 128, offset: 18560)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !19, file: !20, line: 1240, baseType: !5450, size: 64, offset: 18688)
!5450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5451, size: 64)
!5451 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !20, line: 62, flags: DIFlagFwdDecl)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !19, file: !20, line: 1242, baseType: !5453, size: 64, offset: 18752)
!5453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5454, size: 64)
!5454 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !20, line: 1242, flags: DIFlagFwdDecl)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !19, file: !20, line: 1244, baseType: !106, size: 128, offset: 18816)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !19, file: !20, line: 1245, baseType: !5457, size: 64, offset: 18944)
!5457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5458, size: 64)
!5458 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !20, line: 51, flags: DIFlagFwdDecl)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !19, file: !20, line: 1246, baseType: !453, size: 256, offset: 19008)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !19, file: !20, line: 1247, baseType: !34, size: 32, offset: 19264)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !19, file: !20, line: 1250, baseType: !3106, size: 64, offset: 19328)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !19, file: !20, line: 1251, baseType: !453, size: 256, offset: 19392)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !19, file: !20, line: 1252, baseType: !106, size: 128, offset: 19648)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !19, file: !20, line: 1259, baseType: !1617, size: 64, offset: 19776)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !19, file: !20, line: 1260, baseType: !665, size: 16, offset: 19840)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !19, file: !20, line: 1261, baseType: !665, size: 16, offset: 19856)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !19, file: !20, line: 1314, baseType: !5468, size: 64, offset: 19904)
!5468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5469, size: 64)
!5469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5470, line: 62, size: 256, align: 256, elements: !5471)
!5470 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5471 = !{!5472, !5473, !5474, !5475, !5476, !5477, !5478}
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5469, file: !5470, line: 75, baseType: !32, size: 32)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5469, file: !5470, line: 90, baseType: !32, size: 32, offset: 32)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5469, file: !5470, line: 112, baseType: !102, size: 64, offset: 64)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5469, file: !5470, line: 132, baseType: !32, size: 32, offset: 128)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5469, file: !5470, line: 140, baseType: !32, size: 32, offset: 160)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5469, file: !5470, line: 149, baseType: !32, size: 32, offset: 192)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5469, file: !5470, line: 154, baseType: !5479, offset: 224)
!5479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !883)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !19, file: !20, line: 1315, baseType: !30, size: 32, offset: 19968)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !19, file: !20, line: 1316, baseType: !30, size: 32, offset: 20000)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !19, file: !20, line: 1321, baseType: !27, size: 64, offset: 20032)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !19, file: !20, line: 1325, baseType: !50, size: 32, offset: 20096)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !19, file: !20, line: 1326, baseType: !50, size: 32, offset: 20128)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !19, file: !20, line: 1327, baseType: !50, size: 32, offset: 20160)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !19, file: !20, line: 1328, baseType: !50, size: 32, offset: 20192)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !19, file: !20, line: 1329, baseType: !433, size: 128, align: 64, offset: 20224)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !19, file: !20, line: 1332, baseType: !5489, size: 128, offset: 20352)
!5489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5490, line: 51, size: 128, elements: !5491)
!5490 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5491 = !{!5492, !5497, !5498}
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5489, file: !5490, line: 60, baseType: !5493, size: 64)
!5493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5494, line: 7, size: 64, elements: !5495)
!5494 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5495 = !{!5496}
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5493, file: !5494, line: 12, baseType: !335, size: 64)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5489, file: !5490, line: 63, baseType: !617, size: 8, offset: 64)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5489, file: !5490, line: 70, baseType: !617, size: 8, offset: 72)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !19, file: !20, line: 1335, baseType: !4629, size: 64, offset: 20480)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !19, file: !20, line: 1337, baseType: !5501, size: 128, offset: 20544)
!5501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5490, line: 39, size: 128, elements: !5502)
!5502 = !{!5503, !5504, !5505}
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5501, file: !5490, line: 40, baseType: !1406, size: 64)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5501, file: !5490, line: 42, baseType: !32, size: 32, offset: 64)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5501, file: !5490, line: 43, baseType: !32, size: 32, offset: 96)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !19, file: !20, line: 1340, baseType: !5507, size: 64, offset: 20672)
!5507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5508, size: 64)
!5508 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !20, line: 69, flags: DIFlagFwdDecl)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !19, file: !20, line: 1351, baseType: !50, size: 32, offset: 20736)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !19, file: !20, line: 1352, baseType: !50, size: 32, offset: 20768)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !19, file: !20, line: 1354, baseType: !27, size: 64, offset: 20800)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !19, file: !20, line: 1364, baseType: !101, size: 64, offset: 20864)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !19, file: !20, line: 1365, baseType: !101, size: 64, offset: 20928)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !19, file: !20, line: 1412, baseType: !27, size: 64, offset: 20992)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !19, file: !20, line: 1453, baseType: !5516, size: 64, offset: 21056)
!5516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5517, size: 64)
!5517 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !20, line: 1453, flags: DIFlagFwdDecl)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !19, file: !20, line: 1457, baseType: !5519, size: 64, offset: 21120)
!5519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5520, size: 64)
!5520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !4847, line: 61, size: 576, elements: !5521)
!5521 = !{!5522, !5529, !5548, !5551, !5552, !5585, !5595}
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5520, file: !4847, line: 62, baseType: !5523, size: 32)
!5523 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !4847, line: 51, baseType: !34, size: 32, elements: !5524)
!5524 = !{!5525, !5526, !5527, !5528}
!5525 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!5526 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!5527 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!5528 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!5529 = !DIDerivedType(tag: DW_TAG_member, scope: !5520, file: !4847, line: 64, baseType: !5530, size: 192, offset: 64)
!5530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5520, file: !4847, line: 64, size: 192, elements: !5531)
!5531 = !{!5532, !5543}
!5532 = !DIDerivedType(tag: DW_TAG_member, scope: !5530, file: !4847, line: 65, baseType: !5533, size: 192)
!5533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5530, file: !4847, line: 65, size: 192, elements: !5534)
!5534 = !{!5535, !5542}
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5533, file: !4847, line: 66, baseType: !5536, size: 128)
!5536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5537, line: 50, size: 128, elements: !5538)
!5537 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5538 = !{!5539, !5540, !5541}
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5536, file: !5537, line: 52, baseType: !27, size: 64)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5536, file: !5537, line: 54, baseType: !34, size: 32, offset: 64)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5536, file: !5537, line: 55, baseType: !34, size: 32, offset: 96)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5533, file: !4847, line: 67, baseType: !27, size: 64, offset: 128)
!5543 = !DIDerivedType(tag: DW_TAG_member, scope: !5530, file: !4847, line: 70, baseType: !5544, size: 192)
!5544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5530, file: !4847, line: 70, size: 192, elements: !5545)
!5545 = !{!5546, !5547}
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5544, file: !4847, line: 71, baseType: !433, size: 128, align: 64)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5544, file: !4847, line: 72, baseType: !27, size: 64, offset: 128)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5520, file: !4847, line: 76, baseType: !5549, size: 64, offset: 256)
!5549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5550, size: 64)
!5550 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !4847, line: 76, flags: DIFlagFwdDecl)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5520, file: !4847, line: 77, baseType: !27, size: 64, offset: 320)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5520, file: !4847, line: 79, baseType: !5553, size: 64, offset: 384)
!5553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5554, size: 64)
!5554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5537, line: 25, size: 256, elements: !5555)
!5555 = !{!5556, !5562, !5566}
!5556 = !DIDerivedType(tag: DW_TAG_member, scope: !5554, file: !5537, line: 26, baseType: !5557, size: 128)
!5557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5554, file: !5537, line: 26, size: 128, elements: !5558)
!5558 = !{!5559, !5561}
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5557, file: !5537, line: 27, baseType: !5560, size: 128)
!5560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 128, elements: !4392)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5557, file: !5537, line: 28, baseType: !5560, size: 128)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5554, file: !5537, line: 31, baseType: !5563, size: 64, offset: 128)
!5563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5564, size: 64)
!5564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5565)
!5565 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5537, line: 23, flags: DIFlagFwdDecl)
!5566 = !DIDerivedType(tag: DW_TAG_member, scope: !5554, file: !5537, line: 33, baseType: !5567, size: 64, offset: 192)
!5567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5554, file: !5537, line: 33, size: 64, elements: !5568)
!5568 = !{!5569, !5575, !5580}
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5567, file: !5537, line: 38, baseType: !5570, size: 64)
!5570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5567, file: !5537, line: 34, size: 64, elements: !5571)
!5571 = !{!5572, !5573, !5574}
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5570, file: !5537, line: 35, baseType: !629, size: 32)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5570, file: !5537, line: 36, baseType: !221, size: 8, offset: 32)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5570, file: !5537, line: 37, baseType: !221, size: 8, offset: 40)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5567, file: !5537, line: 42, baseType: !5576, size: 16)
!5576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5567, file: !5537, line: 39, size: 16, elements: !5577)
!5577 = !{!5578, !5579}
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5576, file: !5537, line: 40, baseType: !221, size: 8)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5576, file: !5537, line: 41, baseType: !221, size: 8, offset: 8)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5567, file: !5537, line: 46, baseType: !5581, size: 16)
!5581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5567, file: !5537, line: 43, size: 16, elements: !5582)
!5582 = !{!5583, !5584}
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5581, file: !5537, line: 44, baseType: !221, size: 8)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5581, file: !5537, line: 45, baseType: !221, size: 8, offset: 8)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5520, file: !4847, line: 81, baseType: !5586, size: 64, offset: 448)
!5586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5587, size: 64)
!5587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !4847, line: 85, size: 384, elements: !5588)
!5588 = !{!5589, !5590, !5591, !5592, !5593, !5594}
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5587, file: !4847, line: 86, baseType: !5549, size: 64)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5587, file: !4847, line: 87, baseType: !27, size: 64, offset: 64)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5587, file: !4847, line: 88, baseType: !27, size: 64, offset: 128)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5587, file: !4847, line: 89, baseType: !27, size: 64, offset: 192)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5587, file: !4847, line: 90, baseType: !617, size: 8, offset: 256)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5587, file: !4847, line: 92, baseType: !5586, size: 64, offset: 320)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5520, file: !4847, line: 82, baseType: !34, size: 32, offset: 512)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !19, file: !20, line: 1463, baseType: !5597, offset: 21184)
!5597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !20, line: 739, elements: !417)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !19, file: !20, line: 1470, baseType: !433, size: 128, align: 64, offset: 21184)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !19, file: !20, line: 1471, baseType: !40, size: 32, offset: 21312)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !19, file: !20, line: 1472, baseType: !50, size: 32, offset: 21344)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !19, file: !20, line: 1474, baseType: !18, size: 64, offset: 21376)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !19, file: !20, line: 1475, baseType: !2361, size: 320, offset: 21440)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !19, file: !20, line: 1478, baseType: !5604, size: 64, offset: 21760)
!5604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5605, size: 64)
!5605 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !20, line: 1478, flags: DIFlagFwdDecl)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !19, file: !20, line: 1482, baseType: !40, size: 32, offset: 21824)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !19, file: !20, line: 1489, baseType: !38, size: 64, offset: 21888)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !19, file: !20, line: 1504, baseType: !38, size: 64, offset: 21952)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !19, file: !20, line: 1505, baseType: !102, size: 64, offset: 22016)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !19, file: !20, line: 1506, baseType: !101, size: 64, offset: 22080)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !19, file: !20, line: 1507, baseType: !102, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !19, file: !20, line: 1508, baseType: !102, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !19, file: !20, line: 1509, baseType: !102, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !19, file: !20, line: 1510, baseType: !433, size: 128, align: 64, offset: 22208)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !19, file: !20, line: 1511, baseType: !50, size: 32, offset: 22336)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !19, file: !20, line: 1515, baseType: !5617, size: 64, offset: 22400)
!5617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !60, line: 56, size: 64, elements: !5618)
!5618 = !{!5619}
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5617, file: !60, line: 57, baseType: !63, size: 64)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !19, file: !20, line: 1518, baseType: !5617, size: 64, offset: 22464)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !19, file: !20, line: 1528, baseType: !433, size: 128, align: 64, offset: 22528)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !19, file: !20, line: 1552, baseType: !5623, size: 35328, offset: 23040)
!5623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5624, line: 430, size: 35328, elements: !5625)
!5624 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5625 = !{!5626, !5644, !5645, !5646, !5647, !5648, !5649, !5650, !5651, !5653, !5654, !5655, !5656, !5657, !5658, !5661, !5662, !5663, !5664}
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5623, file: !5624, line: 432, baseType: !5627, size: 192)
!5627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5628, size: 192, elements: !491)
!5628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5629, line: 16, size: 64, elements: !5630)
!5629 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5630 = !{!5631, !5632, !5633, !5634, !5635, !5636, !5637, !5638, !5639, !5640, !5641, !5642, !5643}
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5628, file: !5629, line: 17, baseType: !70, size: 16)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5628, file: !5629, line: 18, baseType: !70, size: 16, offset: 16)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5628, file: !5629, line: 19, baseType: !70, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5628, file: !5629, line: 19, baseType: !70, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5628, file: !5629, line: 19, baseType: !70, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5628, file: !5629, line: 19, baseType: !70, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5628, file: !5629, line: 19, baseType: !70, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5628, file: !5629, line: 20, baseType: !70, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5628, file: !5629, line: 20, baseType: !70, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5628, file: !5629, line: 20, baseType: !70, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5628, file: !5629, line: 20, baseType: !70, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5628, file: !5629, line: 20, baseType: !70, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5628, file: !5629, line: 20, baseType: !70, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5623, file: !5624, line: 436, baseType: !27, size: 64, offset: 192)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5623, file: !5624, line: 440, baseType: !72, size: 16, offset: 256)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5623, file: !5624, line: 441, baseType: !72, size: 16, offset: 272)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5623, file: !5624, line: 442, baseType: !72, size: 16, offset: 288)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5623, file: !5624, line: 443, baseType: !72, size: 16, offset: 304)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5623, file: !5624, line: 447, baseType: !27, size: 64, offset: 320)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5623, file: !5624, line: 448, baseType: !27, size: 64, offset: 384)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5623, file: !5624, line: 459, baseType: !5652, size: 256, offset: 448)
!5652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2665, size: 256, elements: !513)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5623, file: !5624, line: 461, baseType: !27, size: 64, offset: 704)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5623, file: !5624, line: 463, baseType: !27, size: 64, offset: 768)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5623, file: !5624, line: 465, baseType: !27, size: 64, offset: 832)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5623, file: !5624, line: 466, baseType: !27, size: 64, offset: 896)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5623, file: !5624, line: 467, baseType: !27, size: 64, offset: 960)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5623, file: !5624, line: 473, baseType: !5659, size: 64, offset: 1024)
!5659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5660, size: 64)
!5660 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5624, line: 10, flags: DIFlagFwdDecl)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5623, file: !5624, line: 480, baseType: !27, size: 64, offset: 1088)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5623, file: !5624, line: 482, baseType: !34, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5623, file: !5624, line: 491, baseType: !30, size: 32, offset: 1184)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5623, file: !5624, line: 501, baseType: !5665, size: 33792, offset: 1536)
!5665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5666, line: 448, size: 33792, elements: !5667)
!5666 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5667 = !{!5668, !5669, !5670, !5778, !5779, !5785, !5786}
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5665, file: !5666, line: 461, baseType: !34, size: 32)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5665, file: !5666, line: 468, baseType: !27, size: 64, offset: 64)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5665, file: !5666, line: 476, baseType: !5671, size: 64, offset: 128)
!5671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5672, size: 64)
!5672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5666, line: 356, size: 33280, align: 512, elements: !5673)
!5673 = !{!5674, !5675, !5676, !5677, !5678, !5679, !5680, !5681, !5682, !5683}
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5672, file: !5666, line: 358, baseType: !34, size: 32)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5672, file: !5666, line: 361, baseType: !34, size: 32, offset: 32)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5672, file: !5666, line: 364, baseType: !101, size: 64, offset: 64)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5672, file: !5666, line: 367, baseType: !101, size: 64, offset: 128)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5672, file: !5666, line: 370, baseType: !101, size: 64, offset: 192)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5672, file: !5666, line: 373, baseType: !34, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5672, file: !5666, line: 376, baseType: !34, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5672, file: !5666, line: 391, baseType: !34, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5672, file: !5666, line: 394, baseType: !34, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5672, file: !5666, line: 397, baseType: !5684, size: 32768, offset: 512)
!5684 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5666, line: 348, size: 32768, elements: !5685)
!5685 = !{!5686, !5701, !5738, !5763, !5776}
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5684, file: !5666, line: 349, baseType: !5687, size: 896)
!5687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5666, line: 12, size: 896, elements: !5688)
!5688 = !{!5689, !5690, !5691, !5692, !5693, !5694, !5695, !5696, !5700}
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5687, file: !5666, line: 13, baseType: !30, size: 32)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5687, file: !5666, line: 14, baseType: !30, size: 32, offset: 32)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5687, file: !5666, line: 15, baseType: !30, size: 32, offset: 64)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5687, file: !5666, line: 16, baseType: !30, size: 32, offset: 96)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5687, file: !5666, line: 17, baseType: !30, size: 32, offset: 128)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5687, file: !5666, line: 18, baseType: !30, size: 32, offset: 160)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5687, file: !5666, line: 19, baseType: !30, size: 32, offset: 192)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5687, file: !5666, line: 22, baseType: !5697, size: 640, offset: 224)
!5697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 640, elements: !5698)
!5698 = !{!5699}
!5699 = !DISubrange(count: 20)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5687, file: !5666, line: 25, baseType: !30, size: 32, offset: 864)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5684, file: !5666, line: 350, baseType: !5702, size: 4096, align: 128)
!5702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5666, line: 34, size: 4096, align: 128, elements: !5703)
!5703 = !{!5704, !5705, !5706, !5707, !5708, !5723, !5724, !5725, !5727, !5729, !5733}
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5702, file: !5666, line: 35, baseType: !70, size: 16)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5702, file: !5666, line: 36, baseType: !70, size: 16, offset: 16)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5702, file: !5666, line: 37, baseType: !70, size: 16, offset: 32)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5702, file: !5666, line: 38, baseType: !70, size: 16, offset: 48)
!5708 = !DIDerivedType(tag: DW_TAG_member, scope: !5702, file: !5666, line: 39, baseType: !5709, size: 128, offset: 64)
!5709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5702, file: !5666, line: 39, size: 128, elements: !5710)
!5710 = !{!5711, !5716}
!5711 = !DIDerivedType(tag: DW_TAG_member, scope: !5709, file: !5666, line: 40, baseType: !5712, size: 128)
!5712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5709, file: !5666, line: 40, size: 128, elements: !5713)
!5713 = !{!5714, !5715}
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5712, file: !5666, line: 41, baseType: !101, size: 64)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5712, file: !5666, line: 42, baseType: !101, size: 64, offset: 64)
!5716 = !DIDerivedType(tag: DW_TAG_member, scope: !5709, file: !5666, line: 44, baseType: !5717, size: 128)
!5717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5709, file: !5666, line: 44, size: 128, elements: !5718)
!5718 = !{!5719, !5720, !5721, !5722}
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5717, file: !5666, line: 45, baseType: !30, size: 32)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5717, file: !5666, line: 46, baseType: !30, size: 32, offset: 32)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5717, file: !5666, line: 47, baseType: !30, size: 32, offset: 64)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5717, file: !5666, line: 48, baseType: !30, size: 32, offset: 96)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5702, file: !5666, line: 51, baseType: !30, size: 32, offset: 192)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5702, file: !5666, line: 52, baseType: !30, size: 32, offset: 224)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5702, file: !5666, line: 55, baseType: !5726, size: 1024, offset: 256)
!5726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1024, elements: !4383)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5702, file: !5666, line: 58, baseType: !5728, size: 2048, offset: 1280)
!5728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !1325)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5702, file: !5666, line: 60, baseType: !5730, size: 384, offset: 3328)
!5730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 384, elements: !5731)
!5731 = !{!5732}
!5732 = !DISubrange(count: 12)
!5733 = !DIDerivedType(tag: DW_TAG_member, scope: !5702, file: !5666, line: 62, baseType: !5734, size: 384, offset: 3712)
!5734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5702, file: !5666, line: 62, size: 384, elements: !5735)
!5735 = !{!5736, !5737}
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5734, file: !5666, line: 63, baseType: !5730, size: 384)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5734, file: !5666, line: 64, baseType: !5730, size: 384)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5684, file: !5666, line: 351, baseType: !5739, size: 1088)
!5739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5666, line: 79, size: 1088, elements: !5740)
!5740 = !{!5741, !5742, !5743, !5744, !5745, !5746, !5747, !5748, !5749, !5750, !5751, !5752, !5753, !5754, !5755, !5762}
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5739, file: !5666, line: 80, baseType: !30, size: 32)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5739, file: !5666, line: 81, baseType: !30, size: 32, offset: 32)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5739, file: !5666, line: 82, baseType: !30, size: 32, offset: 64)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5739, file: !5666, line: 83, baseType: !30, size: 32, offset: 96)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5739, file: !5666, line: 84, baseType: !30, size: 32, offset: 128)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5739, file: !5666, line: 85, baseType: !30, size: 32, offset: 160)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5739, file: !5666, line: 86, baseType: !30, size: 32, offset: 192)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5739, file: !5666, line: 88, baseType: !5697, size: 640, offset: 224)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5739, file: !5666, line: 89, baseType: !221, size: 8, offset: 864)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5739, file: !5666, line: 90, baseType: !221, size: 8, offset: 872)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5739, file: !5666, line: 91, baseType: !221, size: 8, offset: 880)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5739, file: !5666, line: 92, baseType: !221, size: 8, offset: 888)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5739, file: !5666, line: 93, baseType: !221, size: 8, offset: 896)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5739, file: !5666, line: 94, baseType: !221, size: 8, offset: 904)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5739, file: !5666, line: 95, baseType: !5756, size: 64, offset: 960)
!5756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5757, size: 64)
!5757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5758, line: 11, size: 128, elements: !5759)
!5758 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5759 = !{!5760, !5761}
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5757, file: !5758, line: 12, baseType: !876, size: 64)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5757, file: !5758, line: 13, baseType: !3638, size: 64, offset: 64)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5739, file: !5666, line: 96, baseType: !30, size: 32, offset: 1024)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5684, file: !5666, line: 352, baseType: !5764, size: 4608, align: 512)
!5764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5666, line: 333, size: 4608, align: 512, elements: !5765)
!5765 = !{!5766, !5767, !5774}
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5764, file: !5666, line: 334, baseType: !5702, size: 4096, align: 128)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5764, file: !5666, line: 335, baseType: !5768, size: 512, offset: 4096)
!5768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5666, line: 312, size: 512, elements: !5769)
!5769 = !{!5770, !5771, !5772}
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5768, file: !5666, line: 313, baseType: !101, size: 64)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5768, file: !5666, line: 314, baseType: !101, size: 64, offset: 64)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5768, file: !5666, line: 315, baseType: !5773, size: 384, offset: 128)
!5773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 384, elements: !683)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5764, file: !5666, line: 336, baseType: !5775, offset: 4608)
!5775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, elements: !883)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5684, file: !5666, line: 353, baseType: !5777, size: 32768)
!5777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 32768, elements: !2608)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5665, file: !5666, line: 484, baseType: !5671, size: 64, offset: 192)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5665, file: !5666, line: 491, baseType: !5780, size: 128, offset: 256)
!5780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5666, line: 404, size: 128, elements: !5781)
!5781 = !{!5782, !5783, !5784}
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5780, file: !5666, line: 424, baseType: !101, size: 64)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5780, file: !5666, line: 432, baseType: !34, size: 32, offset: 64)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5780, file: !5666, line: 440, baseType: !34, size: 32, offset: 96)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5665, file: !5666, line: 498, baseType: !5780, size: 128, offset: 384)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5665, file: !5666, line: 508, baseType: !5672, size: 33280, align: 512, offset: 512)
!5787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5788, size: 64)
!5788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5789)
!5789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_desc", file: !5790, line: 21, size: 128, elements: !5791)
!5790 = !DIFile(filename: "./arch/x86/include/uapi/asm/ldt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95775a4881c173758a83d1fe9957ac84")
!5791 = !{!5792, !5793, !5794, !5795, !5796, !5797, !5798, !5799, !5800, !5801}
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "entry_number", scope: !5789, file: !5790, line: 22, baseType: !34, size: 32)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "base_addr", scope: !5789, file: !5790, line: 23, baseType: !34, size: 32, offset: 32)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !5789, file: !5790, line: 24, baseType: !34, size: 32, offset: 64)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "seg_32bit", scope: !5789, file: !5790, line: 25, baseType: !34, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !5789, file: !5790, line: 26, baseType: !34, size: 2, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "read_exec_only", scope: !5789, file: !5790, line: 27, baseType: !34, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "limit_in_pages", scope: !5789, file: !5790, line: 28, baseType: !34, size: 1, offset: 100, flags: DIFlagBitField, extraData: i64 96)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "seg_not_present", scope: !5789, file: !5790, line: 29, baseType: !34, size: 1, offset: 101, flags: DIFlagBitField, extraData: i64 96)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "useable", scope: !5789, file: !5790, line: 30, baseType: !34, size: 1, offset: 102, flags: DIFlagBitField, extraData: i64 96)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5789, file: !5790, line: 39, baseType: !34, size: 1, offset: 103, flags: DIFlagBitField, extraData: i64 96)
!5802 = distinct !DICompileUnit(language: DW_LANG_C11, file: !9, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.tls.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/tls\22 -D KBUILD_BASENAME=\22tls\22 -D KBUILD_MODNAME=\22tls\22 -D __KBUILD_MODNAME=kmod_tls -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/tls.ll arch/x86/kernel/tls.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !5803, retainedTypes: !5809, globals: !5818, splitDebugInlining: false, nameTableKind: None)
!5803 = !{!190, !788, !886, !1267, !1493, !1639, !1861, !1931, !2457, !2570, !2777, !2839, !2916, !2924, !3055, !3065, !3071, !3079, !3255, !4045, !4114, !4906, !5523, !5804}
!5804 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !5805, line: 10, baseType: !34, size: 32, elements: !5806)
!5805 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!5806 = !{!5807, !5808}
!5807 = !DIEnumerator(name: "false", value: 0)
!5808 = !DIEnumerator(name: "true", value: 1)
!5809 = !{!34, !101, !50, !2260, !38, !27, !30, !5810, !5816, !18, !3989, !697, !5817}
!5810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5811, size: 64)
!5811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gdt_page", file: !5812, line: 44, size: 32768, align: 32768, elements: !5813)
!5812 = !DIFile(filename: "./arch/x86/include/asm/desc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ce8a8e19f799ab03a132d4ddc6cfe6d")
!5813 = !{!5814}
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "gdt", scope: !5811, file: !5812, line: 45, baseType: !5815, size: 1024)
!5815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5628, size: 1024, elements: !4392)
!5816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!5817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5789, size: 64)
!5818 = !{!0, !7, !13}
!5819 = !{!5820, !5821, !5822, !5823, !5824, !5826, !5828, !5829, !5833, !5835}
!5820 = !DILocalVariable(name: "p", arg: 1, scope: !15, file: !9, line: 85, type: !18)
!5821 = !DILocalVariable(name: "idx", arg: 2, scope: !15, file: !9, line: 85, type: !50)
!5822 = !DILocalVariable(name: "info", arg: 3, scope: !15, file: !9, line: 86, type: !5787)
!5823 = !DILocalVariable(name: "n", arg: 4, scope: !15, file: !9, line: 86, type: !50)
!5824 = !DILocalVariable(name: "t", scope: !15, file: !9, line: 88, type: !5825)
!5825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5623, size: 64)
!5826 = !DILocalVariable(name: "desc", scope: !15, file: !9, line: 89, type: !5827)
!5827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5628, size: 64)
!5828 = !DILocalVariable(name: "cpu", scope: !15, file: !9, line: 90, type: !50)
!5829 = !DILocalVariable(name: "pscr_ret__", scope: !5830, file: !9, line: 95, type: !50)
!5830 = distinct !DILexicalBlock(scope: !5831, file: !9, line: 95, column: 8)
!5831 = distinct !DILexicalBlock(scope: !5832, file: !9, line: 95, column: 8)
!5832 = distinct !DILexicalBlock(scope: !15, file: !9, line: 95, column: 8)
!5833 = !DILocalVariable(name: "__vpp_verify", scope: !5834, file: !9, line: 95, type: !1948)
!5834 = distinct !DILexicalBlock(scope: !5830, file: !9, line: 95, column: 8)
!5835 = !DILocalVariable(name: "pfo_val__", scope: !5836, file: !9, line: 95, type: !30)
!5836 = distinct !DILexicalBlock(scope: !5830, file: !9, line: 95, column: 8)
!5837 = !{!"rsp"}
!5838 = !{i32 7, !"Dwarf Version", i32 5}
!5839 = !{i32 2, !"Debug Info Version", i32 3}
!5840 = !{i32 1, !"wchar_size", i32 2}
!5841 = !{i32 8, !"cf-protection-branch", i32 1}
!5842 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5843 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5844 = !{i32 1, !"Code Model", i32 2}
!5845 = !{i32 1, !"override-stack-alignment", i32 8}
!5846 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5847 = distinct !DISubprogram(name: "do_set_thread_area", scope: !9, file: !9, line: 115, type: !5848, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !5850)
!5848 = !DISubroutineType(types: !5849)
!5849 = !{!50, !18, !50, !5817, !50}
!5850 = !{!5851, !5852, !5853, !5854, !5855, !5856, !5857, !5858, !5864, !5865, !5866, !5867, !5868, !5873}
!5851 = !DILocalVariable(name: "p", arg: 1, scope: !5847, file: !9, line: 115, type: !18)
!5852 = !DILocalVariable(name: "idx", arg: 2, scope: !5847, file: !9, line: 115, type: !50)
!5853 = !DILocalVariable(name: "u_info", arg: 3, scope: !5847, file: !9, line: 116, type: !5817)
!5854 = !DILocalVariable(name: "can_allocate", arg: 4, scope: !5847, file: !9, line: 117, type: !50)
!5855 = !DILocalVariable(name: "info", scope: !5847, file: !9, line: 119, type: !5789)
!5856 = !DILocalVariable(name: "sel", scope: !5847, file: !9, line: 120, type: !72)
!5857 = !DILocalVariable(name: "modified_sel", scope: !5847, file: !9, line: 120, type: !72)
!5858 = !DILocalVariable(name: "__ret_pu", scope: !5859, file: !9, line: 139, type: !50)
!5859 = distinct !DILexicalBlock(scope: !5860, file: !9, line: 139, column: 7)
!5860 = distinct !DILexicalBlock(scope: !5861, file: !9, line: 139, column: 7)
!5861 = distinct !DILexicalBlock(scope: !5862, file: !9, line: 139, column: 7)
!5862 = distinct !DILexicalBlock(scope: !5863, file: !9, line: 135, column: 33)
!5863 = distinct !DILexicalBlock(scope: !5847, file: !9, line: 135, column: 6)
!5864 = !DILocalVariable(name: "__ptr_pu", scope: !5859, file: !9, line: 139, type: !38)
!5865 = !DILocalVariable(name: "__val_pu", scope: !5859, file: !9, line: 139, type: !34)
!5866 = !DILocalVariable(name: "__x", scope: !5859, file: !9, line: 139, type: !34)
!5867 = !DILocalVariable(name: "__ptr", scope: !5859, file: !9, line: 139, type: !2212)
!5868 = !DILocalVariable(name: "__val", scope: !5869, file: !9, line: 159, type: !72)
!5869 = distinct !DILexicalBlock(scope: !5870, file: !9, line: 159, column: 4)
!5870 = distinct !DILexicalBlock(scope: !5871, file: !9, line: 158, column: 7)
!5871 = distinct !DILexicalBlock(scope: !5872, file: !9, line: 155, column: 20)
!5872 = distinct !DILexicalBlock(scope: !5847, file: !9, line: 155, column: 6)
!5873 = !DILocalVariable(name: "__val", scope: !5874, file: !9, line: 163, type: !72)
!5874 = distinct !DILexicalBlock(scope: !5875, file: !9, line: 163, column: 4)
!5875 = distinct !DILexicalBlock(scope: !5871, file: !9, line: 162, column: 7)
!5876 = !DILocation(line: 115, column: 44, scope: !5847)
!5877 = !DILocation(line: 115, column: 51, scope: !5847)
!5878 = !DILocation(line: 116, column: 35, scope: !5847)
!5879 = !DILocation(line: 117, column: 14, scope: !5847)
!5880 = !DILocation(line: 119, column: 2, scope: !5847)
!5881 = !DILocation(line: 119, column: 19, scope: !5847)
!5882 = !DILocation(line: 120, column: 2, scope: !5847)
!5883 = !DILocation(line: 120, column: 32, scope: !5847)
!5884 = !DILocation(line: 120, column: 37, scope: !5847)
!5885 = !DILocation(line: 122, column: 28, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5847, file: !9, line: 122, column: 6)
!5887 = !DILocation(line: 122, column: 6, scope: !5886)
!5888 = !DILocation(line: 122, column: 6, scope: !5847)
!5889 = !DILocation(line: 123, column: 3, scope: !5886)
!5890 = !DILocation(line: 125, column: 7, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5847, file: !9, line: 125, column: 6)
!5892 = !DILocation(line: 125, column: 6, scope: !5847)
!5893 = !DILocation(line: 126, column: 3, scope: !5891)
!5894 = !DILocation(line: 128, column: 6, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5847, file: !9, line: 128, column: 6)
!5896 = !DILocation(line: 128, column: 10, scope: !5895)
!5897 = !DILocation(line: 128, column: 6, scope: !5847)
!5898 = !DILocation(line: 129, column: 14, scope: !5895)
!5899 = !DILocation(line: 129, column: 7, scope: !5895)
!5900 = !DILocation(line: 129, column: 3, scope: !5895)
!5901 = !DILocation(line: 135, column: 6, scope: !5863)
!5902 = !DILocation(line: 135, column: 10, scope: !5863)
!5903 = !DILocation(line: 135, column: 16, scope: !5863)
!5904 = !DILocation(line: 135, column: 19, scope: !5863)
!5905 = !DILocation(line: 135, column: 6, scope: !5847)
!5906 = !DILocation(line: 136, column: 9, scope: !5862)
!5907 = !DILocation(line: 136, column: 7, scope: !5862)
!5908 = !DILocation(line: 137, column: 7, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5862, file: !9, line: 137, column: 7)
!5910 = !DILocation(line: 137, column: 11, scope: !5909)
!5911 = !DILocation(line: 137, column: 7, scope: !5862)
!5912 = !DILocation(line: 138, column: 11, scope: !5909)
!5913 = !DILocation(line: 138, column: 4, scope: !5909)
!5914 = !DILocation(line: 139, column: 7, scope: !5860)
!5915 = !DILocation(line: 139, column: 7, scope: !5859)
!5916 = !{i64 2155576395}
!5917 = !DILocation(line: 139, column: 7, scope: !5918)
!5918 = distinct !DILexicalBlock(scope: !5859, file: !9, line: 139, column: 7)
!5919 = !DILocation(line: 139, column: 7, scope: !5861)
!5920 = !DILocation(line: 139, column: 7, scope: !5862)
!5921 = !DILocation(line: 140, column: 4, scope: !5861)
!5922 = !DILocation(line: 141, column: 2, scope: !5862)
!5923 = !DILocation(line: 143, column: 6, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5847, file: !9, line: 143, column: 6)
!5925 = !DILocation(line: 143, column: 10, scope: !5924)
!5926 = !DILocation(line: 143, column: 30, scope: !5924)
!5927 = !DILocation(line: 143, column: 33, scope: !5924)
!5928 = !DILocation(line: 143, column: 37, scope: !5924)
!5929 = !DILocation(line: 143, column: 6, scope: !5847)
!5930 = !DILocation(line: 144, column: 3, scope: !5924)
!5931 = !DILocation(line: 146, column: 15, scope: !5847)
!5932 = !DILocation(line: 146, column: 18, scope: !5847)
!5933 = !DILocation(line: 146, column: 2, scope: !5847)
!5934 = !DILocation(line: 153, column: 18, scope: !5847)
!5935 = !DILocation(line: 153, column: 22, scope: !5847)
!5936 = !DILocation(line: 153, column: 28, scope: !5847)
!5937 = !DILocation(line: 153, column: 17, scope: !5847)
!5938 = !DILocation(line: 153, column: 15, scope: !5847)
!5939 = !DILocation(line: 155, column: 6, scope: !5872)
!5940 = !DILocation(line: 155, column: 11, scope: !5872)
!5941 = !DILocation(line: 155, column: 8, scope: !5872)
!5942 = !DILocation(line: 155, column: 6, scope: !5847)
!5943 = !DILocation(line: 157, column: 3, scope: !5871)
!5944 = !{i64 2155577165}
!5945 = !DILocation(line: 158, column: 7, scope: !5870)
!5946 = !DILocation(line: 158, column: 14, scope: !5870)
!5947 = !DILocation(line: 158, column: 11, scope: !5870)
!5948 = !DILocation(line: 158, column: 7, scope: !5871)
!5949 = !DILocation(line: 159, column: 4, scope: !5870)
!5950 = !DILocation(line: 159, column: 4, scope: !5869)
!5951 = !{i64 2155577394, i64 2155577415, i64 2155577573, i64 2155577619, i64 2155577644, i64 2155577679, i64 2155577983, i64 2155578036, i64 2155578067, i64 2155578098, i64 2155578176, i64 2155578210, i64 2155578248, i64 2155578291, i64 2155578314, i64 2155578352, i64 2155578374, i64 2155578405, i64 2155578490, i64 2155578524, i64 2155578562, i64 2155578605, i64 2155578628, i64 2155578666, i64 2155578688, i64 2155578722, i64 2155578784, i64 2155578807, i64 2155577745, i64 2155578912, i64 2155577856}
!5952 = !DILocation(line: 161, column: 3, scope: !5871)
!5953 = !{i64 2155578944}
!5954 = !DILocation(line: 162, column: 7, scope: !5875)
!5955 = !DILocation(line: 162, column: 14, scope: !5875)
!5956 = !DILocation(line: 162, column: 11, scope: !5875)
!5957 = !DILocation(line: 162, column: 7, scope: !5871)
!5958 = !DILocation(line: 163, column: 4, scope: !5875)
!5959 = !DILocation(line: 163, column: 4, scope: !5874)
!5960 = !{i64 2155579173, i64 2155579194, i64 2155579352, i64 2155579398, i64 2155579423, i64 2155579458, i64 2155579762, i64 2155579815, i64 2155579846, i64 2155579877, i64 2155579955, i64 2155579989, i64 2155580027, i64 2155580070, i64 2155580093, i64 2155580131, i64 2155580153, i64 2155580184, i64 2155580269, i64 2155580303, i64 2155580341, i64 2155580384, i64 2155580407, i64 2155580445, i64 2155580467, i64 2155580501, i64 2155580563, i64 2155580586, i64 2155579524, i64 2155580691, i64 2155579635}
!5961 = !DILocation(line: 165, column: 3, scope: !5871)
!5962 = !{i64 2155580723}
!5963 = !DILocation(line: 166, column: 7, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5871, file: !9, line: 166, column: 7)
!5965 = !DILocation(line: 166, column: 14, scope: !5964)
!5966 = !DILocation(line: 166, column: 11, scope: !5964)
!5967 = !DILocation(line: 166, column: 7, scope: !5871)
!5968 = !DILocation(line: 167, column: 4, scope: !5964)
!5969 = !DILocation(line: 170, column: 3, scope: !5871)
!5970 = !{i64 2155580837}
!5971 = !DILocation(line: 171, column: 7, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5871, file: !9, line: 171, column: 7)
!5973 = !DILocation(line: 171, column: 14, scope: !5972)
!5974 = !DILocation(line: 171, column: 11, scope: !5972)
!5975 = !DILocation(line: 171, column: 7, scope: !5871)
!5976 = !DILocation(line: 172, column: 18, scope: !5972)
!5977 = !DILocation(line: 172, column: 4, scope: !5972)
!5978 = !DILocation(line: 173, column: 2, scope: !5871)
!5979 = !DILocation(line: 175, column: 7, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5981, file: !9, line: 175, column: 7)
!5981 = distinct !DILexicalBlock(scope: !5872, file: !9, line: 173, column: 9)
!5982 = !DILocation(line: 175, column: 10, scope: !5980)
!5983 = !DILocation(line: 175, column: 17, scope: !5980)
!5984 = !DILocation(line: 175, column: 28, scope: !5980)
!5985 = !DILocation(line: 175, column: 25, scope: !5980)
!5986 = !DILocation(line: 175, column: 7, scope: !5981)
!5987 = !DILocation(line: 176, column: 28, scope: !5980)
!5988 = !DILocation(line: 176, column: 23, scope: !5980)
!5989 = !DILocation(line: 176, column: 4, scope: !5980)
!5990 = !DILocation(line: 176, column: 7, scope: !5980)
!5991 = !DILocation(line: 176, column: 14, scope: !5980)
!5992 = !DILocation(line: 176, column: 21, scope: !5980)
!5993 = !DILocation(line: 178, column: 7, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5981, file: !9, line: 178, column: 7)
!5995 = !DILocation(line: 178, column: 10, scope: !5994)
!5996 = !DILocation(line: 178, column: 17, scope: !5994)
!5997 = !DILocation(line: 178, column: 28, scope: !5994)
!5998 = !DILocation(line: 178, column: 25, scope: !5994)
!5999 = !DILocation(line: 178, column: 7, scope: !5981)
!6000 = !DILocation(line: 179, column: 28, scope: !5994)
!6001 = !DILocation(line: 179, column: 23, scope: !5994)
!6002 = !DILocation(line: 179, column: 4, scope: !5994)
!6003 = !DILocation(line: 179, column: 7, scope: !5994)
!6004 = !DILocation(line: 179, column: 14, scope: !5994)
!6005 = !DILocation(line: 179, column: 21, scope: !5994)
!6006 = !DILocation(line: 183, column: 2, scope: !5847)
!6007 = !DILocation(line: 184, column: 1, scope: !5847)
!6008 = distinct !DISubprogram(name: "copy_from_user", scope: !6009, file: !6009, line: 180, type: !6010, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6012)
!6009 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6010 = !DISubroutineType(types: !6011)
!6011 = !{!27, !38, !1948, !27}
!6012 = !{!6013, !6014, !6015}
!6013 = !DILocalVariable(name: "to", arg: 1, scope: !6008, file: !6009, line: 180, type: !38)
!6014 = !DILocalVariable(name: "from", arg: 2, scope: !6008, file: !6009, line: 180, type: !1948)
!6015 = !DILocalVariable(name: "n", arg: 3, scope: !6008, file: !6009, line: 180, type: !27)
!6016 = !DILocation(line: 180, column: 22, scope: !6008)
!6017 = !DILocation(line: 180, column: 45, scope: !6008)
!6018 = !DILocation(line: 180, column: 65, scope: !6008)
!6019 = !DILocation(line: 182, column: 22, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !6008, file: !6009, line: 182, column: 6)
!6021 = !DILocation(line: 182, column: 26, scope: !6020)
!6022 = !DILocation(line: 182, column: 6, scope: !6020)
!6023 = !DILocation(line: 182, column: 6, scope: !6008)
!6024 = !DILocation(line: 183, column: 23, scope: !6020)
!6025 = !DILocation(line: 183, column: 27, scope: !6020)
!6026 = !DILocation(line: 183, column: 33, scope: !6020)
!6027 = !DILocation(line: 183, column: 7, scope: !6020)
!6028 = !DILocation(line: 183, column: 5, scope: !6020)
!6029 = !DILocation(line: 183, column: 3, scope: !6020)
!6030 = !DILocation(line: 184, column: 9, scope: !6008)
!6031 = !DILocation(line: 184, column: 2, scope: !6008)
!6032 = distinct !DISubprogram(name: "tls_desc_okay", scope: !9, file: !9, line: 33, type: !6033, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6035)
!6033 = !DISubroutineType(types: !6034)
!6034 = !{!617, !5787}
!6035 = !{!6036}
!6036 = !DILocalVariable(name: "info", arg: 1, scope: !6032, file: !9, line: 33, type: !5787)
!6037 = !DILocation(line: 33, column: 51, scope: !6032)
!6038 = !DILocation(line: 56, column: 6, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !6032, file: !9, line: 56, column: 6)
!6040 = !DILocation(line: 56, column: 22, scope: !6039)
!6041 = !DILocation(line: 56, column: 34, scope: !6039)
!6042 = !DILocation(line: 56, column: 25, scope: !6039)
!6043 = !DILocation(line: 56, column: 6, scope: !6032)
!6044 = !DILocation(line: 57, column: 3, scope: !6039)
!6045 = !DILocation(line: 63, column: 7, scope: !6046)
!6046 = distinct !DILexicalBlock(scope: !6032, file: !9, line: 63, column: 6)
!6047 = !DILocation(line: 63, column: 13, scope: !6046)
!6048 = !DILocation(line: 63, column: 6, scope: !6032)
!6049 = !DILocation(line: 64, column: 3, scope: !6046)
!6050 = !DILocation(line: 67, column: 6, scope: !6051)
!6051 = distinct !DILexicalBlock(scope: !6032, file: !9, line: 67, column: 6)
!6052 = !DILocation(line: 67, column: 12, scope: !6051)
!6053 = !DILocation(line: 67, column: 21, scope: !6051)
!6054 = !DILocation(line: 67, column: 6, scope: !6032)
!6055 = !DILocation(line: 68, column: 3, scope: !6051)
!6056 = !DILocation(line: 79, column: 6, scope: !6057)
!6057 = distinct !DILexicalBlock(scope: !6032, file: !9, line: 79, column: 6)
!6058 = !DILocation(line: 79, column: 12, scope: !6057)
!6059 = !DILocation(line: 79, column: 6, scope: !6032)
!6060 = !DILocation(line: 80, column: 3, scope: !6057)
!6061 = !DILocation(line: 82, column: 2, scope: !6032)
!6062 = !DILocation(line: 83, column: 1, scope: !6032)
!6063 = distinct !DISubprogram(name: "get_free_idx", scope: !9, file: !9, line: 22, type: !2232, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6064)
!6064 = !{!6065, !6066}
!6065 = !DILocalVariable(name: "t", scope: !6063, file: !9, line: 24, type: !5825)
!6066 = !DILocalVariable(name: "idx", scope: !6063, file: !9, line: 25, type: !50)
!6067 = !DILocation(line: 24, column: 2, scope: !6063)
!6068 = !DILocation(line: 24, column: 24, scope: !6063)
!6069 = !DILocation(line: 24, column: 29, scope: !6063)
!6070 = !DILocation(line: 24, column: 38, scope: !6063)
!6071 = !DILocation(line: 25, column: 2, scope: !6063)
!6072 = !DILocation(line: 25, column: 6, scope: !6063)
!6073 = !DILocation(line: 27, column: 11, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6063, file: !9, line: 27, column: 2)
!6075 = !DILocation(line: 27, column: 7, scope: !6074)
!6076 = !DILocation(line: 27, column: 16, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6074, file: !9, line: 27, column: 2)
!6078 = !DILocation(line: 27, column: 20, scope: !6077)
!6079 = !DILocation(line: 27, column: 2, scope: !6074)
!6080 = !DILocation(line: 28, column: 19, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6077, file: !9, line: 28, column: 7)
!6082 = !DILocation(line: 28, column: 22, scope: !6081)
!6083 = !DILocation(line: 28, column: 32, scope: !6081)
!6084 = !DILocation(line: 28, column: 7, scope: !6081)
!6085 = !DILocation(line: 28, column: 7, scope: !6077)
!6086 = !DILocation(line: 29, column: 11, scope: !6081)
!6087 = !DILocation(line: 29, column: 15, scope: !6081)
!6088 = !DILocation(line: 29, column: 4, scope: !6081)
!6089 = !DILocation(line: 28, column: 36, scope: !6081)
!6090 = !DILocation(line: 27, column: 48, scope: !6077)
!6091 = !DILocation(line: 27, column: 2, scope: !6077)
!6092 = distinct !{!6092, !6079, !6093, !6094, !6095}
!6093 = !DILocation(line: 29, column: 17, scope: !6074)
!6094 = !{!"llvm.loop.mustprogress"}
!6095 = !{!"llvm.loop.unroll.disable"}
!6096 = !DILocation(line: 30, column: 2, scope: !6063)
!6097 = !DILocation(line: 31, column: 1, scope: !6063)
!6098 = distinct !DISubprogram(name: "might_fault", scope: !6099, file: !6099, line: 202, type: !2547, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802)
!6099 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6100 = !DILocation(line: 202, column: 40, scope: !6098)
!6101 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !6102, file: !6102, line: 76, type: !6103, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6105)
!6102 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6103 = !DISubroutineType(types: !6104)
!6104 = !{null, !38, !1948, !798, !798}
!6105 = !{!6106, !6107, !6108, !6109}
!6106 = !DILocalVariable(name: "to", arg: 1, scope: !6101, file: !6102, line: 76, type: !38)
!6107 = !DILocalVariable(name: "from", arg: 2, scope: !6101, file: !6102, line: 76, type: !1948)
!6108 = !DILocalVariable(name: "to_copy", arg: 3, scope: !6101, file: !6102, line: 77, type: !798)
!6109 = !DILocalVariable(name: "left", arg: 4, scope: !6101, file: !6102, line: 77, type: !798)
!6110 = !DILocation(line: 76, column: 52, scope: !6101)
!6111 = !DILocation(line: 76, column: 68, scope: !6101)
!6112 = !DILocation(line: 77, column: 18, scope: !6101)
!6113 = !DILocation(line: 77, column: 34, scope: !6101)
!6114 = !DILocation(line: 79, column: 1, scope: !6101)
!6115 = !DILocation(line: 85, column: 46, scope: !15)
!6116 = !DILocation(line: 85, column: 53, scope: !15)
!6117 = !DILocation(line: 86, column: 29, scope: !15)
!6118 = !DILocation(line: 86, column: 39, scope: !15)
!6119 = !DILocation(line: 88, column: 2, scope: !15)
!6120 = !DILocation(line: 88, column: 24, scope: !15)
!6121 = !DILocation(line: 88, column: 29, scope: !15)
!6122 = !DILocation(line: 88, column: 32, scope: !15)
!6123 = !DILocation(line: 89, column: 2, scope: !15)
!6124 = !DILocation(line: 89, column: 22, scope: !15)
!6125 = !DILocation(line: 89, column: 30, scope: !15)
!6126 = !DILocation(line: 89, column: 33, scope: !15)
!6127 = !DILocation(line: 89, column: 43, scope: !15)
!6128 = !DILocation(line: 89, column: 47, scope: !15)
!6129 = !DILocation(line: 90, column: 2, scope: !15)
!6130 = !DILocation(line: 90, column: 6, scope: !15)
!6131 = !DILocation(line: 95, column: 8, scope: !5832)
!6132 = !DILocation(line: 95, column: 8, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !5832, file: !9, line: 95, column: 8)
!6134 = !{i64 2155566196}
!6135 = !DILocation(line: 95, column: 8, scope: !5831)
!6136 = !DILocation(line: 95, column: 8, scope: !5830)
!6137 = !DILocation(line: 95, column: 8, scope: !5834)
!6138 = !DILocation(line: 95, column: 8, scope: !5836)
!6139 = !{i64 2155568834}
!6140 = !DILocation(line: 95, column: 6, scope: !15)
!6141 = !DILocation(line: 97, column: 2, scope: !15)
!6142 = !DILocation(line: 97, column: 10, scope: !15)
!6143 = !DILocation(line: 97, column: 13, scope: !15)
!6144 = !DILocation(line: 98, column: 7, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6146, file: !9, line: 98, column: 7)
!6146 = distinct !DILexicalBlock(scope: !15, file: !9, line: 97, column: 18)
!6147 = !DILocation(line: 98, column: 23, scope: !6145)
!6148 = !DILocation(line: 98, column: 35, scope: !6145)
!6149 = !DILocation(line: 98, column: 26, scope: !6145)
!6150 = !DILocation(line: 98, column: 7, scope: !6146)
!6151 = !DILocation(line: 99, column: 11, scope: !6145)
!6152 = !DILocation(line: 99, column: 4, scope: !6145)
!6153 = !DILocation(line: 101, column: 13, scope: !6145)
!6154 = !DILocation(line: 101, column: 19, scope: !6145)
!6155 = !DILocation(line: 101, column: 4, scope: !6145)
!6156 = !DILocation(line: 102, column: 3, scope: !6146)
!6157 = !DILocation(line: 103, column: 3, scope: !6146)
!6158 = distinct !{!6158, !6141, !6159, !6094, !6095}
!6159 = !DILocation(line: 104, column: 2, scope: !15)
!6160 = !DILocation(line: 106, column: 6, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !15, file: !9, line: 106, column: 6)
!6162 = !DILocation(line: 106, column: 12, scope: !6161)
!6163 = !DILocation(line: 106, column: 21, scope: !6161)
!6164 = !DILocation(line: 106, column: 8, scope: !6161)
!6165 = !DILocation(line: 106, column: 6, scope: !15)
!6166 = !DILocation(line: 107, column: 3, scope: !6161)
!6167 = !DILocation(line: 109, column: 2, scope: !15)
!6168 = !DILocation(line: 109, column: 2, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !15, file: !9, line: 109, column: 2)
!6170 = !{i64 2155570087}
!6171 = !DILocation(line: 109, column: 2, scope: !6172)
!6172 = distinct !DILexicalBlock(scope: !6169, file: !9, line: 109, column: 2)
!6173 = !DILocation(line: 109, column: 2, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6172, file: !9, line: 109, column: 2)
!6175 = !{i64 2155570269}
!6176 = !DILocation(line: 110, column: 1, scope: !15)
!6177 = distinct !DISubprogram(name: "get_current", scope: !6178, file: !6178, line: 39, type: !6179, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6181)
!6178 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6179 = !DISubroutineType(types: !6180)
!6180 = !{!18}
!6181 = !{!6182, !6184, !6186}
!6182 = !DILocalVariable(name: "pscr_ret__", scope: !6183, file: !6178, line: 41, type: !18)
!6183 = distinct !DILexicalBlock(scope: !6177, file: !6178, line: 41, column: 9)
!6184 = !DILocalVariable(name: "__vpp_verify", scope: !6185, file: !6178, line: 41, type: !1948)
!6185 = distinct !DILexicalBlock(scope: !6183, file: !6178, line: 41, column: 9)
!6186 = !DILocalVariable(name: "pfo_val__", scope: !6187, file: !6178, line: 41, type: !101)
!6187 = distinct !DILexicalBlock(scope: !6183, file: !6178, line: 41, column: 9)
!6188 = !DILocation(line: 41, column: 9, scope: !6183)
!6189 = !DILocation(line: 41, column: 9, scope: !6185)
!6190 = !DILocation(line: 41, column: 9, scope: !6187)
!6191 = !{i64 2148205098}
!6192 = !DILocation(line: 41, column: 9, scope: !6177)
!6193 = !DILocation(line: 41, column: 2, scope: !6177)
!6194 = distinct !DISubprogram(name: "__loadsegment_fs", scope: !6195, file: !6195, line: 330, type: !6196, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6198)
!6195 = !DIFile(filename: "./arch/x86/include/asm/segment.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0acd26a367bd989e3418ddf9d21a076")
!6196 = !DISubroutineType(types: !6197)
!6197 = !{null, !72}
!6198 = !{!6199}
!6199 = !DILocalVariable(name: "value", arg: 1, scope: !6194, file: !6195, line: 330, type: !72)
!6200 = !DILocation(line: 330, column: 52, scope: !6194)
!6201 = !DILocation(line: 338, column: 18, scope: !6194)
!6202 = !DILocation(line: 332, column: 2, scope: !6194)
!6203 = !{i64 1580210, i64 1580229, i64 1580260, i64 2149066515, i64 2149066559, i64 2149066582, i64 2149066615, i64 2149066646, i64 2149066685}
!6204 = !DILocation(line: 339, column: 1, scope: !6194)
!6205 = distinct !DISubprogram(name: "load_gs_index", scope: !6206, file: !6206, line: 55, type: !6207, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6209)
!6206 = !DIFile(filename: "./arch/x86/include/asm/gsseg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a828521a223b02c61bae88a8ba5c4c9")
!6207 = !DISubroutineType(types: !6208)
!6208 = !{null, !34}
!6209 = !{!6210}
!6210 = !DILocalVariable(name: "selector", arg: 1, scope: !6205, file: !6206, line: 55, type: !34)
!6211 = !DILocation(line: 55, column: 47, scope: !6205)
!6212 = !DILocation(line: 58, column: 23, scope: !6205)
!6213 = !DILocation(line: 58, column: 2, scope: !6205)
!6214 = !DILocation(line: 62, column: 1, scope: !6205)
!6215 = distinct !DISubprogram(name: "__x64_sys_set_thread_area", scope: !9, file: !9, line: 186, type: !6216, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6220)
!6216 = !DISubroutineType(types: !6217)
!6217 = !{!876, !6218}
!6218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6219, size: 64)
!6219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3639)
!6220 = !{!6221}
!6221 = !DILocalVariable(name: "regs", arg: 1, scope: !6215, file: !9, line: 186, type: !6218)
!6222 = !DILocation(line: 186, column: 1, scope: !6215)
!6223 = distinct !DISubprogram(name: "__se_sys_set_thread_area", scope: !9, file: !9, line: 186, type: !6224, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6226)
!6224 = !DISubroutineType(types: !6225)
!6225 = !{!876, !876}
!6226 = !{!6227, !6228}
!6227 = !DILocalVariable(name: "u_info", arg: 1, scope: !6223, file: !9, line: 186, type: !876)
!6228 = !DILocalVariable(name: "ret", scope: !6223, file: !9, line: 186, type: !876)
!6229 = !DILocation(line: 186, column: 1, scope: !6223)
!6230 = !DILocation(line: 186, column: 1, scope: !6231)
!6231 = distinct !DILexicalBlock(scope: !6223, file: !9, line: 186, column: 1)
!6232 = distinct !DISubprogram(name: "__ia32_sys_set_thread_area", scope: !9, file: !9, line: 186, type: !6216, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6233)
!6233 = !{!6234}
!6234 = !DILocalVariable(name: "regs", arg: 1, scope: !6232, file: !9, line: 186, type: !6218)
!6235 = !DILocation(line: 186, column: 1, scope: !6232)
!6236 = distinct !DISubprogram(name: "do_get_thread_area", scope: !9, file: !9, line: 215, type: !6237, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6239)
!6237 = !DISubroutineType(types: !6238)
!6238 = !{!50, !18, !50, !5817}
!6239 = !{!6240, !6241, !6242, !6243, !6244, !6245, !6249, !6250, !6252, !6254, !6255}
!6240 = !DILocalVariable(name: "p", arg: 1, scope: !6236, file: !9, line: 215, type: !18)
!6241 = !DILocalVariable(name: "idx", arg: 2, scope: !6236, file: !9, line: 215, type: !50)
!6242 = !DILocalVariable(name: "u_info", arg: 3, scope: !6236, file: !9, line: 216, type: !5817)
!6243 = !DILocalVariable(name: "info", scope: !6236, file: !9, line: 218, type: !5789)
!6244 = !DILocalVariable(name: "index", scope: !6236, file: !9, line: 219, type: !50)
!6245 = !DILocalVariable(name: "__ret_gu", scope: !6246, file: !9, line: 221, type: !50)
!6246 = distinct !DILexicalBlock(scope: !6247, file: !9, line: 221, column: 19)
!6247 = distinct !DILexicalBlock(scope: !6248, file: !9, line: 221, column: 19)
!6248 = distinct !DILexicalBlock(scope: !6236, file: !9, line: 221, column: 6)
!6249 = !DILocalVariable(name: "__val_gu", scope: !6246, file: !9, line: 221, type: !34)
!6250 = !DILocalVariable(name: "__tmp", scope: !6251, file: !9, line: 221, type: !101)
!6251 = distinct !DILexicalBlock(scope: !6246, file: !9, line: 221, column: 19)
!6252 = !DILocalVariable(name: "_i", scope: !6253, file: !9, line: 228, type: !50)
!6253 = distinct !DILexicalBlock(scope: !6236, file: !9, line: 228, column: 10)
!6254 = !DILocalVariable(name: "_s", scope: !6253, file: !9, line: 228, type: !50)
!6255 = !DILocalVariable(name: "_mask", scope: !6253, file: !9, line: 228, type: !27)
!6256 = !DILocation(line: 215, column: 44, scope: !6236)
!6257 = !DILocation(line: 215, column: 51, scope: !6236)
!6258 = !DILocation(line: 216, column: 35, scope: !6236)
!6259 = !DILocation(line: 218, column: 2, scope: !6236)
!6260 = !DILocation(line: 218, column: 19, scope: !6236)
!6261 = !DILocation(line: 219, column: 2, scope: !6236)
!6262 = !DILocation(line: 219, column: 6, scope: !6236)
!6263 = !DILocation(line: 221, column: 6, scope: !6248)
!6264 = !DILocation(line: 221, column: 10, scope: !6248)
!6265 = !DILocation(line: 221, column: 16, scope: !6248)
!6266 = !DILocation(line: 221, column: 19, scope: !6247)
!6267 = !DILocation(line: 221, column: 19, scope: !6246)
!6268 = !{i64 2155588019}
!6269 = !DILocation(line: 221, column: 19, scope: !6251)
!6270 = !DILocation(line: 221, column: 19, scope: !6248)
!6271 = !DILocation(line: 221, column: 6, scope: !6236)
!6272 = !DILocation(line: 222, column: 3, scope: !6248)
!6273 = !DILocation(line: 224, column: 6, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6236, file: !9, line: 224, column: 6)
!6275 = !DILocation(line: 224, column: 10, scope: !6274)
!6276 = !DILocation(line: 224, column: 30, scope: !6274)
!6277 = !DILocation(line: 224, column: 33, scope: !6274)
!6278 = !DILocation(line: 224, column: 37, scope: !6274)
!6279 = !DILocation(line: 224, column: 6, scope: !6236)
!6280 = !DILocation(line: 225, column: 3, scope: !6274)
!6281 = !DILocation(line: 227, column: 10, scope: !6236)
!6282 = !DILocation(line: 227, column: 14, scope: !6236)
!6283 = !DILocation(line: 227, column: 8, scope: !6236)
!6284 = !DILocation(line: 228, column: 10, scope: !6253)
!6285 = !DILocation(line: 228, column: 10, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6253, file: !9, line: 228, column: 10)
!6287 = !DILocation(line: 228, column: 10, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6253, file: !9, line: 228, column: 10)
!6289 = !DILocation(line: 228, column: 10, scope: !6236)
!6290 = !DILocation(line: 228, column: 8, scope: !6236)
!6291 = !DILocation(line: 231, column: 24, scope: !6236)
!6292 = !DILocation(line: 231, column: 30, scope: !6236)
!6293 = !DILocation(line: 231, column: 33, scope: !6236)
!6294 = !DILocation(line: 231, column: 40, scope: !6236)
!6295 = !DILocation(line: 231, column: 50, scope: !6236)
!6296 = !DILocation(line: 231, column: 2, scope: !6236)
!6297 = !DILocation(line: 233, column: 19, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6236, file: !9, line: 233, column: 6)
!6299 = !DILocation(line: 233, column: 6, scope: !6298)
!6300 = !DILocation(line: 233, column: 6, scope: !6236)
!6301 = !DILocation(line: 234, column: 3, scope: !6298)
!6302 = !DILocation(line: 235, column: 2, scope: !6236)
!6303 = !DILocation(line: 236, column: 1, scope: !6236)
!6304 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !6102, file: !6102, line: 70, type: !6305, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6307)
!6305 = !DISubroutineType(types: !6306)
!6306 = !{null, !1948, !798}
!6307 = !{!6308, !6309}
!6308 = !DILocalVariable(name: "address", arg: 1, scope: !6304, file: !6102, line: 70, type: !1948)
!6309 = !DILocalVariable(name: "size", arg: 2, scope: !6304, file: !6102, line: 70, type: !798)
!6310 = !DILocation(line: 70, column: 54, scope: !6304)
!6311 = !DILocation(line: 70, column: 70, scope: !6304)
!6312 = !DILocation(line: 72, column: 1, scope: !6304)
!6313 = distinct !DISubprogram(name: "array_index_mask_nospec", scope: !6314, file: !6314, line: 36, type: !6315, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6317)
!6314 = !DIFile(filename: "./arch/x86/include/asm/barrier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "43f72005da64ca67c9ee720127636784")
!6315 = !DISubroutineType(types: !6316)
!6316 = !{!27, !27, !27}
!6317 = !{!6318, !6319, !6320}
!6318 = !DILocalVariable(name: "index", arg: 1, scope: !6313, file: !6314, line: 36, type: !27)
!6319 = !DILocalVariable(name: "size", arg: 2, scope: !6313, file: !6314, line: 37, type: !27)
!6320 = !DILocalVariable(name: "mask", scope: !6313, file: !6314, line: 39, type: !27)
!6321 = !DILocation(line: 36, column: 67, scope: !6313)
!6322 = !DILocation(line: 37, column: 17, scope: !6313)
!6323 = !DILocation(line: 39, column: 2, scope: !6313)
!6324 = !DILocation(line: 39, column: 16, scope: !6313)
!6325 = !DILocation(line: 43, column: 9, scope: !6313)
!6326 = !DILocation(line: 43, column: 20, scope: !6313)
!6327 = !DILocation(line: 41, column: 2, scope: !6313)
!6328 = !{i64 251112}
!6329 = !DILocation(line: 45, column: 9, scope: !6313)
!6330 = !DILocation(line: 46, column: 1, scope: !6313)
!6331 = !DILocation(line: 45, column: 2, scope: !6313)
!6332 = distinct !DISubprogram(name: "fill_user_desc", scope: !9, file: !9, line: 196, type: !6333, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6337)
!6333 = !DISubroutineType(types: !6334)
!6334 = !{null, !5817, !50, !6335}
!6335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6336, size: 64)
!6336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5628)
!6337 = !{!6338, !6339, !6340}
!6338 = !DILocalVariable(name: "info", arg: 1, scope: !6332, file: !9, line: 196, type: !5817)
!6339 = !DILocalVariable(name: "idx", arg: 2, scope: !6332, file: !9, line: 196, type: !50)
!6340 = !DILocalVariable(name: "desc", arg: 3, scope: !6332, file: !9, line: 197, type: !6335)
!6341 = !DILocation(line: 196, column: 46, scope: !6332)
!6342 = !DILocation(line: 196, column: 56, scope: !6332)
!6343 = !DILocation(line: 197, column: 33, scope: !6332)
!6344 = !DILocation(line: 200, column: 9, scope: !6332)
!6345 = !DILocation(line: 200, column: 2, scope: !6332)
!6346 = !DILocation(line: 201, column: 23, scope: !6332)
!6347 = !DILocation(line: 201, column: 2, scope: !6332)
!6348 = !DILocation(line: 201, column: 8, scope: !6332)
!6349 = !DILocation(line: 201, column: 21, scope: !6332)
!6350 = !DILocation(line: 202, column: 34, scope: !6332)
!6351 = !DILocation(line: 202, column: 20, scope: !6332)
!6352 = !DILocation(line: 202, column: 2, scope: !6332)
!6353 = !DILocation(line: 202, column: 8, scope: !6332)
!6354 = !DILocation(line: 202, column: 18, scope: !6332)
!6355 = !DILocation(line: 203, column: 31, scope: !6332)
!6356 = !DILocation(line: 203, column: 16, scope: !6332)
!6357 = !DILocation(line: 203, column: 2, scope: !6332)
!6358 = !DILocation(line: 203, column: 8, scope: !6332)
!6359 = !DILocation(line: 203, column: 14, scope: !6332)
!6360 = !DILocation(line: 204, column: 20, scope: !6332)
!6361 = !DILocation(line: 204, column: 26, scope: !6332)
!6362 = !DILocation(line: 204, column: 2, scope: !6332)
!6363 = !DILocation(line: 204, column: 8, scope: !6332)
!6364 = !DILocation(line: 204, column: 18, scope: !6332)
!6365 = !DILocation(line: 205, column: 19, scope: !6332)
!6366 = !DILocation(line: 205, column: 25, scope: !6332)
!6367 = !DILocation(line: 205, column: 30, scope: !6332)
!6368 = !DILocation(line: 205, column: 2, scope: !6332)
!6369 = !DILocation(line: 205, column: 8, scope: !6332)
!6370 = !DILocation(line: 205, column: 17, scope: !6332)
!6371 = !DILocation(line: 206, column: 27, scope: !6332)
!6372 = !DILocation(line: 206, column: 33, scope: !6332)
!6373 = !DILocation(line: 206, column: 38, scope: !6332)
!6374 = !DILocation(line: 206, column: 25, scope: !6332)
!6375 = !DILocation(line: 206, column: 2, scope: !6332)
!6376 = !DILocation(line: 206, column: 8, scope: !6332)
!6377 = !DILocation(line: 206, column: 23, scope: !6332)
!6378 = !DILocation(line: 207, column: 25, scope: !6332)
!6379 = !DILocation(line: 207, column: 31, scope: !6332)
!6380 = !DILocation(line: 207, column: 2, scope: !6332)
!6381 = !DILocation(line: 207, column: 8, scope: !6332)
!6382 = !DILocation(line: 207, column: 23, scope: !6332)
!6383 = !DILocation(line: 208, column: 27, scope: !6332)
!6384 = !DILocation(line: 208, column: 33, scope: !6332)
!6385 = !DILocation(line: 208, column: 26, scope: !6332)
!6386 = !DILocation(line: 208, column: 2, scope: !6332)
!6387 = !DILocation(line: 208, column: 8, scope: !6332)
!6388 = !DILocation(line: 208, column: 24, scope: !6332)
!6389 = !DILocation(line: 209, column: 18, scope: !6332)
!6390 = !DILocation(line: 209, column: 24, scope: !6332)
!6391 = !DILocation(line: 209, column: 2, scope: !6332)
!6392 = !DILocation(line: 209, column: 8, scope: !6332)
!6393 = !DILocation(line: 209, column: 16, scope: !6332)
!6394 = !DILocation(line: 211, column: 13, scope: !6332)
!6395 = !DILocation(line: 211, column: 19, scope: !6332)
!6396 = !DILocation(line: 211, column: 2, scope: !6332)
!6397 = !DILocation(line: 211, column: 8, scope: !6332)
!6398 = !DILocation(line: 211, column: 11, scope: !6332)
!6399 = !DILocation(line: 213, column: 1, scope: !6332)
!6400 = distinct !DISubprogram(name: "copy_to_user", scope: !6009, file: !6009, line: 188, type: !6010, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6401)
!6401 = !{!6402, !6403, !6404}
!6402 = !DILocalVariable(name: "to", arg: 1, scope: !6400, file: !6009, line: 188, type: !38)
!6403 = !DILocalVariable(name: "from", arg: 2, scope: !6400, file: !6009, line: 188, type: !1948)
!6404 = !DILocalVariable(name: "n", arg: 3, scope: !6400, file: !6009, line: 188, type: !27)
!6405 = !DILocation(line: 188, column: 27, scope: !6400)
!6406 = !DILocation(line: 188, column: 43, scope: !6400)
!6407 = !DILocation(line: 188, column: 63, scope: !6400)
!6408 = !DILocation(line: 190, column: 22, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6400, file: !6009, line: 190, column: 6)
!6410 = !DILocation(line: 190, column: 28, scope: !6409)
!6411 = !DILocation(line: 190, column: 6, scope: !6409)
!6412 = !DILocation(line: 190, column: 6, scope: !6400)
!6413 = !DILocation(line: 191, column: 21, scope: !6409)
!6414 = !DILocation(line: 191, column: 25, scope: !6409)
!6415 = !DILocation(line: 191, column: 31, scope: !6409)
!6416 = !DILocation(line: 191, column: 7, scope: !6409)
!6417 = !DILocation(line: 191, column: 5, scope: !6409)
!6418 = !DILocation(line: 191, column: 3, scope: !6409)
!6419 = !DILocation(line: 192, column: 9, scope: !6400)
!6420 = !DILocation(line: 192, column: 2, scope: !6400)
!6421 = distinct !DISubprogram(name: "__x64_sys_get_thread_area", scope: !9, file: !9, line: 238, type: !6216, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6422)
!6422 = !{!6423}
!6423 = !DILocalVariable(name: "regs", arg: 1, scope: !6421, file: !9, line: 238, type: !6218)
!6424 = !DILocation(line: 238, column: 1, scope: !6421)
!6425 = distinct !DISubprogram(name: "__se_sys_get_thread_area", scope: !9, file: !9, line: 238, type: !6224, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6426)
!6426 = !{!6427, !6428}
!6427 = !DILocalVariable(name: "u_info", arg: 1, scope: !6425, file: !9, line: 238, type: !876)
!6428 = !DILocalVariable(name: "ret", scope: !6425, file: !9, line: 238, type: !876)
!6429 = !DILocation(line: 238, column: 1, scope: !6425)
!6430 = !DILocation(line: 238, column: 1, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6425, file: !9, line: 238, column: 1)
!6432 = distinct !DISubprogram(name: "__ia32_sys_get_thread_area", scope: !9, file: !9, line: 238, type: !6216, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6433)
!6433 = !{!6434}
!6434 = !DILocalVariable(name: "regs", arg: 1, scope: !6432, file: !9, line: 238, type: !6218)
!6435 = !DILocation(line: 238, column: 1, scope: !6432)
!6436 = distinct !DISubprogram(name: "regset_tls_active", scope: !9, file: !9, line: 243, type: !6437, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6471)
!6437 = !DISubroutineType(types: !6438)
!6438 = !{!50, !18, !6439}
!6439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6440, size: 64)
!6440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6441)
!6441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_regset", file: !6442, line: 200, size: 448, elements: !6443)
!6442 = !DIFile(filename: "./include/linux/regset.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0524d92e3e6b24697a98894d57839a2")
!6443 = !{!6444, !6453, !6458, !6461, !6466, !6467, !6468, !6469, !6470}
!6444 = !DIDerivedType(tag: DW_TAG_member, name: "regset_get", scope: !6441, file: !6442, line: 201, baseType: !6445, size: 64)
!6445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6446, size: 64)
!6446 = !DIDerivedType(tag: DW_TAG_typedef, name: "user_regset_get2_fn", file: !6442, line: 97, baseType: !6447)
!6447 = !DISubroutineType(types: !6448)
!6448 = !{!50, !18, !6439, !6449}
!6449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "membuf", file: !6442, line: 20, size: 128, elements: !6450)
!6450 = !{!6451, !6452}
!6451 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !6449, file: !6442, line: 21, baseType: !38, size: 64)
!6452 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !6449, file: !6442, line: 22, baseType: !798, size: 64, offset: 64)
!6453 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !6441, file: !6442, line: 202, baseType: !6454, size: 64, offset: 64)
!6454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6455, size: 64)
!6455 = !DIDerivedType(tag: DW_TAG_typedef, name: "user_regset_set_fn", file: !6442, line: 117, baseType: !6456)
!6456 = !DISubroutineType(types: !6457)
!6457 = !{!50, !18, !6439, !34, !34, !1948, !1948}
!6458 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !6441, file: !6442, line: 203, baseType: !6459, size: 64, offset: 128)
!6459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6460, size: 64)
!6460 = !DIDerivedType(tag: DW_TAG_typedef, name: "user_regset_active_fn", file: !6442, line: 94, baseType: !6437)
!6461 = !DIDerivedType(tag: DW_TAG_member, name: "writeback", scope: !6441, file: !6442, line: 204, baseType: !6462, size: 64, offset: 192)
!6462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6463, size: 64)
!6463 = !DIDerivedType(tag: DW_TAG_typedef, name: "user_regset_writeback_fn", file: !6442, line: 143, baseType: !6464)
!6464 = !DISubroutineType(types: !6465)
!6465 = !{!50, !18, !6439, !50}
!6466 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !6441, file: !6442, line: 205, baseType: !34, size: 32, offset: 256)
!6467 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6441, file: !6442, line: 206, baseType: !34, size: 32, offset: 288)
!6468 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !6441, file: !6442, line: 207, baseType: !34, size: 32, offset: 320)
!6469 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !6441, file: !6442, line: 208, baseType: !34, size: 32, offset: 352)
!6470 = !DIDerivedType(tag: DW_TAG_member, name: "core_note_type", scope: !6441, file: !6442, line: 209, baseType: !34, size: 32, offset: 384)
!6471 = !{!6472, !6473, !6474, !6475}
!6472 = !DILocalVariable(name: "target", arg: 1, scope: !6436, file: !9, line: 243, type: !18)
!6473 = !DILocalVariable(name: "regset", arg: 2, scope: !6436, file: !9, line: 244, type: !6439)
!6474 = !DILocalVariable(name: "t", scope: !6436, file: !9, line: 246, type: !5825)
!6475 = !DILocalVariable(name: "n", scope: !6436, file: !9, line: 247, type: !50)
!6476 = !DILocation(line: 243, column: 43, scope: !6436)
!6477 = !DILocation(line: 244, column: 35, scope: !6436)
!6478 = !DILocation(line: 246, column: 2, scope: !6436)
!6479 = !DILocation(line: 246, column: 24, scope: !6436)
!6480 = !DILocation(line: 246, column: 29, scope: !6436)
!6481 = !DILocation(line: 246, column: 37, scope: !6436)
!6482 = !DILocation(line: 247, column: 2, scope: !6436)
!6483 = !DILocation(line: 247, column: 6, scope: !6436)
!6484 = !DILocation(line: 248, column: 2, scope: !6436)
!6485 = !DILocation(line: 248, column: 9, scope: !6436)
!6486 = !DILocation(line: 248, column: 11, scope: !6436)
!6487 = !DILocation(line: 248, column: 15, scope: !6436)
!6488 = !DILocation(line: 248, column: 30, scope: !6436)
!6489 = !DILocation(line: 248, column: 33, scope: !6436)
!6490 = !DILocation(line: 248, column: 43, scope: !6436)
!6491 = !DILocation(line: 248, column: 45, scope: !6436)
!6492 = !DILocation(line: 248, column: 18, scope: !6436)
!6493 = !DILocation(line: 0, scope: !6436)
!6494 = !DILocation(line: 249, column: 3, scope: !6436)
!6495 = distinct !{!6495, !6484, !6496, !6094, !6095}
!6496 = !DILocation(line: 249, column: 5, scope: !6436)
!6497 = !DILocation(line: 250, column: 9, scope: !6436)
!6498 = !DILocation(line: 251, column: 1, scope: !6436)
!6499 = !DILocation(line: 250, column: 2, scope: !6436)
!6500 = distinct !DISubprogram(name: "desc_empty", scope: !5812, file: !5812, line: 100, type: !6501, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6503)
!6501 = !DISubroutineType(types: !6502)
!6502 = !{!50, !1948}
!6503 = !{!6504, !6505}
!6504 = !DILocalVariable(name: "ptr", arg: 1, scope: !6500, file: !5812, line: 100, type: !1948)
!6505 = !DILocalVariable(name: "desc", scope: !6500, file: !5812, line: 102, type: !6506)
!6506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6507, size: 64)
!6507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!6508 = !DILocation(line: 100, column: 42, scope: !6500)
!6509 = !DILocation(line: 102, column: 2, scope: !6500)
!6510 = !DILocation(line: 102, column: 13, scope: !6500)
!6511 = !DILocation(line: 102, column: 20, scope: !6500)
!6512 = !DILocation(line: 104, column: 11, scope: !6500)
!6513 = !DILocation(line: 104, column: 21, scope: !6500)
!6514 = !DILocation(line: 104, column: 19, scope: !6500)
!6515 = !DILocation(line: 104, column: 9, scope: !6500)
!6516 = !DILocation(line: 105, column: 1, scope: !6500)
!6517 = !DILocation(line: 104, column: 2, scope: !6500)
!6518 = distinct !DISubprogram(name: "regset_tls_get", scope: !9, file: !9, line: 253, type: !6447, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6519)
!6519 = !{!6520, !6521, !6522, !6523, !6524, !6525}
!6520 = !DILocalVariable(name: "target", arg: 1, scope: !6518, file: !9, line: 253, type: !18)
!6521 = !DILocalVariable(name: "regset", arg: 2, scope: !6518, file: !9, line: 253, type: !6439)
!6522 = !DILocalVariable(name: "to", arg: 3, scope: !6518, file: !9, line: 254, type: !6449)
!6523 = !DILocalVariable(name: "tls", scope: !6518, file: !9, line: 256, type: !6335)
!6524 = !DILocalVariable(name: "v", scope: !6518, file: !9, line: 257, type: !5789)
!6525 = !DILocalVariable(name: "pos", scope: !6518, file: !9, line: 258, type: !50)
!6526 = !DILocation(line: 253, column: 40, scope: !6518)
!6527 = !DILocation(line: 253, column: 74, scope: !6518)
!6528 = !DILocation(line: 254, column: 20, scope: !6518)
!6529 = !DILocation(line: 256, column: 2, scope: !6518)
!6530 = !DILocation(line: 256, column: 28, scope: !6518)
!6531 = !DILocation(line: 257, column: 2, scope: !6518)
!6532 = !DILocation(line: 257, column: 19, scope: !6518)
!6533 = !DILocation(line: 258, column: 2, scope: !6518)
!6534 = !DILocation(line: 258, column: 6, scope: !6518)
!6535 = !DILocation(line: 260, column: 11, scope: !6536)
!6536 = distinct !DILexicalBlock(scope: !6518, file: !9, line: 260, column: 2)
!6537 = !DILocation(line: 260, column: 22, scope: !6536)
!6538 = !DILocation(line: 260, column: 30, scope: !6536)
!6539 = !DILocation(line: 260, column: 37, scope: !6536)
!6540 = !DILocation(line: 260, column: 20, scope: !6536)
!6541 = !DILocation(line: 260, column: 7, scope: !6536)
!6542 = !DILocation(line: 260, column: 51, scope: !6543)
!6543 = distinct !DILexicalBlock(scope: !6536, file: !9, line: 260, column: 2)
!6544 = !DILocation(line: 260, column: 2, scope: !6536)
!6545 = !DILocation(line: 261, column: 42, scope: !6546)
!6546 = distinct !DILexicalBlock(scope: !6543, file: !9, line: 260, column: 71)
!6547 = !DILocation(line: 261, column: 40, scope: !6546)
!6548 = !DILocation(line: 261, column: 47, scope: !6546)
!6549 = !DILocation(line: 261, column: 3, scope: !6546)
!6550 = !DILocation(line: 262, column: 3, scope: !6546)
!6551 = !DILocation(line: 263, column: 2, scope: !6546)
!6552 = !DILocation(line: 260, column: 60, scope: !6543)
!6553 = !DILocation(line: 260, column: 67, scope: !6543)
!6554 = !DILocation(line: 260, column: 2, scope: !6543)
!6555 = distinct !{!6555, !6544, !6556, !6094, !6095}
!6556 = !DILocation(line: 263, column: 2, scope: !6536)
!6557 = !DILocation(line: 265, column: 1, scope: !6518)
!6558 = !DILocation(line: 264, column: 2, scope: !6518)
!6559 = distinct !DISubprogram(name: "membuf_write", scope: !6442, file: !6442, line: 37, type: !6560, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6563)
!6560 = !DISubroutineType(types: !6561)
!6561 = !{!50, !6562, !1948, !798}
!6562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6449, size: 64)
!6563 = !{!6564, !6565, !6566}
!6564 = !DILocalVariable(name: "s", arg: 1, scope: !6559, file: !6442, line: 37, type: !6562)
!6565 = !DILocalVariable(name: "v", arg: 2, scope: !6559, file: !6442, line: 37, type: !1948)
!6566 = !DILocalVariable(name: "size", arg: 3, scope: !6559, file: !6442, line: 37, type: !798)
!6567 = !DILocation(line: 37, column: 47, scope: !6559)
!6568 = !DILocation(line: 37, column: 62, scope: !6559)
!6569 = !DILocation(line: 37, column: 72, scope: !6559)
!6570 = !DILocation(line: 39, column: 6, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6559, file: !6442, line: 39, column: 6)
!6572 = !DILocation(line: 39, column: 9, scope: !6571)
!6573 = !DILocation(line: 39, column: 6, scope: !6559)
!6574 = !DILocation(line: 40, column: 7, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6576, file: !6442, line: 40, column: 7)
!6576 = distinct !DILexicalBlock(scope: !6571, file: !6442, line: 39, column: 15)
!6577 = !DILocation(line: 40, column: 14, scope: !6575)
!6578 = !DILocation(line: 40, column: 17, scope: !6575)
!6579 = !DILocation(line: 40, column: 12, scope: !6575)
!6580 = !DILocation(line: 40, column: 7, scope: !6576)
!6581 = !DILocation(line: 41, column: 11, scope: !6575)
!6582 = !DILocation(line: 41, column: 14, scope: !6575)
!6583 = !DILocation(line: 41, column: 9, scope: !6575)
!6584 = !DILocation(line: 41, column: 4, scope: !6575)
!6585 = !DILocation(line: 42, column: 10, scope: !6576)
!6586 = !DILocation(line: 42, column: 13, scope: !6576)
!6587 = !DILocation(line: 42, column: 16, scope: !6576)
!6588 = !DILocation(line: 42, column: 19, scope: !6576)
!6589 = !DILocation(line: 42, column: 3, scope: !6576)
!6590 = !DILocation(line: 43, column: 11, scope: !6576)
!6591 = !DILocation(line: 43, column: 3, scope: !6576)
!6592 = !DILocation(line: 43, column: 6, scope: !6576)
!6593 = !DILocation(line: 43, column: 8, scope: !6576)
!6594 = !DILocation(line: 44, column: 14, scope: !6576)
!6595 = !DILocation(line: 44, column: 3, scope: !6576)
!6596 = !DILocation(line: 44, column: 6, scope: !6576)
!6597 = !DILocation(line: 44, column: 11, scope: !6576)
!6598 = !DILocation(line: 45, column: 2, scope: !6576)
!6599 = !DILocation(line: 46, column: 9, scope: !6559)
!6600 = !DILocation(line: 46, column: 12, scope: !6559)
!6601 = !DILocation(line: 46, column: 2, scope: !6559)
!6602 = distinct !DISubprogram(name: "regset_tls_set", scope: !9, file: !9, line: 267, type: !6456, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6603)
!6603 = !{!6604, !6605, !6606, !6607, !6608, !6609, !6610, !6612, !6613}
!6604 = !DILocalVariable(name: "target", arg: 1, scope: !6602, file: !9, line: 267, type: !18)
!6605 = !DILocalVariable(name: "regset", arg: 2, scope: !6602, file: !9, line: 267, type: !6439)
!6606 = !DILocalVariable(name: "pos", arg: 3, scope: !6602, file: !9, line: 268, type: !34)
!6607 = !DILocalVariable(name: "count", arg: 4, scope: !6602, file: !9, line: 268, type: !34)
!6608 = !DILocalVariable(name: "kbuf", arg: 5, scope: !6602, file: !9, line: 269, type: !1948)
!6609 = !DILocalVariable(name: "ubuf", arg: 6, scope: !6602, file: !9, line: 269, type: !1948)
!6610 = !DILocalVariable(name: "infobuf", scope: !6602, file: !9, line: 271, type: !6611)
!6611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5789, size: 384, elements: !491)
!6612 = !DILocalVariable(name: "info", scope: !6602, file: !9, line: 272, type: !5787)
!6613 = !DILocalVariable(name: "i", scope: !6602, file: !9, line: 273, type: !50)
!6614 = !DILocation(line: 267, column: 40, scope: !6602)
!6615 = !DILocation(line: 267, column: 74, scope: !6602)
!6616 = !DILocation(line: 268, column: 19, scope: !6602)
!6617 = !DILocation(line: 268, column: 37, scope: !6602)
!6618 = !DILocation(line: 269, column: 18, scope: !6602)
!6619 = !DILocation(line: 269, column: 43, scope: !6602)
!6620 = !DILocation(line: 271, column: 2, scope: !6602)
!6621 = !DILocation(line: 271, column: 19, scope: !6602)
!6622 = !DILocation(line: 272, column: 2, scope: !6602)
!6623 = !DILocation(line: 272, column: 26, scope: !6602)
!6624 = !DILocation(line: 273, column: 2, scope: !6602)
!6625 = !DILocation(line: 273, column: 6, scope: !6602)
!6626 = !DILocation(line: 275, column: 6, scope: !6627)
!6627 = distinct !DILexicalBlock(scope: !6602, file: !9, line: 275, column: 6)
!6628 = !DILocation(line: 275, column: 10, scope: !6627)
!6629 = !DILocation(line: 275, column: 62, scope: !6627)
!6630 = !DILocation(line: 276, column: 7, scope: !6627)
!6631 = !DILocation(line: 276, column: 11, scope: !6627)
!6632 = !DILocation(line: 276, column: 39, scope: !6627)
!6633 = !DILocation(line: 276, column: 44, scope: !6627)
!6634 = !DILocation(line: 277, column: 7, scope: !6627)
!6635 = !DILocation(line: 277, column: 13, scope: !6627)
!6636 = !DILocation(line: 277, column: 41, scope: !6627)
!6637 = !DILocation(line: 275, column: 6, scope: !6602)
!6638 = !DILocation(line: 278, column: 3, scope: !6627)
!6639 = !DILocation(line: 280, column: 6, scope: !6640)
!6640 = distinct !DILexicalBlock(scope: !6602, file: !9, line: 280, column: 6)
!6641 = !DILocation(line: 280, column: 6, scope: !6602)
!6642 = !DILocation(line: 281, column: 10, scope: !6640)
!6643 = !DILocation(line: 281, column: 8, scope: !6640)
!6644 = !DILocation(line: 281, column: 3, scope: !6640)
!6645 = !DILocation(line: 282, column: 28, scope: !6646)
!6646 = distinct !DILexicalBlock(scope: !6640, file: !9, line: 282, column: 11)
!6647 = !DILocation(line: 282, column: 37, scope: !6646)
!6648 = !DILocation(line: 282, column: 43, scope: !6646)
!6649 = !DILocation(line: 282, column: 11, scope: !6646)
!6650 = !DILocation(line: 282, column: 11, scope: !6640)
!6651 = !DILocation(line: 283, column: 3, scope: !6646)
!6652 = !DILocation(line: 285, column: 10, scope: !6646)
!6653 = !DILocation(line: 285, column: 8, scope: !6646)
!6654 = !DILocation(line: 287, column: 9, scope: !6655)
!6655 = distinct !DILexicalBlock(scope: !6602, file: !9, line: 287, column: 2)
!6656 = !DILocation(line: 287, column: 7, scope: !6655)
!6657 = !DILocation(line: 287, column: 14, scope: !6658)
!6658 = distinct !DILexicalBlock(scope: !6655, file: !9, line: 287, column: 2)
!6659 = !DILocation(line: 287, column: 18, scope: !6658)
!6660 = !DILocation(line: 287, column: 24, scope: !6658)
!6661 = !DILocation(line: 287, column: 16, scope: !6658)
!6662 = !DILocation(line: 287, column: 2, scope: !6655)
!6663 = !DILocation(line: 288, column: 22, scope: !6664)
!6664 = distinct !DILexicalBlock(scope: !6658, file: !9, line: 288, column: 7)
!6665 = !DILocation(line: 288, column: 29, scope: !6664)
!6666 = !DILocation(line: 288, column: 27, scope: !6664)
!6667 = !DILocation(line: 288, column: 8, scope: !6664)
!6668 = !DILocation(line: 288, column: 7, scope: !6658)
!6669 = !DILocation(line: 289, column: 4, scope: !6664)
!6670 = !DILocation(line: 288, column: 30, scope: !6664)
!6671 = !DILocation(line: 287, column: 53, scope: !6658)
!6672 = !DILocation(line: 287, column: 2, scope: !6658)
!6673 = distinct !{!6673, !6662, !6674, !6094, !6095}
!6674 = !DILocation(line: 289, column: 12, scope: !6655)
!6675 = !DILocation(line: 291, column: 15, scope: !6602)
!6676 = !DILocation(line: 292, column: 29, scope: !6602)
!6677 = !DILocation(line: 292, column: 33, scope: !6602)
!6678 = !DILocation(line: 292, column: 26, scope: !6602)
!6679 = !DILocation(line: 292, column: 8, scope: !6602)
!6680 = !DILocation(line: 293, column: 8, scope: !6602)
!6681 = !DILocation(line: 293, column: 14, scope: !6602)
!6682 = !DILocation(line: 293, column: 20, scope: !6602)
!6683 = !DILocation(line: 291, column: 2, scope: !6602)
!6684 = !DILocation(line: 295, column: 2, scope: !6602)
!6685 = !DILocation(line: 296, column: 1, scope: !6602)
!6686 = distinct !DISubprogram(name: "__copy_from_user", scope: !6009, file: !6009, line: 93, type: !6010, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6687)
!6687 = !{!6688, !6689, !6690, !6691}
!6688 = !DILocalVariable(name: "to", arg: 1, scope: !6686, file: !6009, line: 93, type: !38)
!6689 = !DILocalVariable(name: "from", arg: 2, scope: !6686, file: !6009, line: 93, type: !1948)
!6690 = !DILocalVariable(name: "n", arg: 3, scope: !6686, file: !6009, line: 93, type: !27)
!6691 = !DILocalVariable(name: "res", scope: !6686, file: !6009, line: 95, type: !27)
!6692 = !DILocation(line: 93, column: 24, scope: !6686)
!6693 = !DILocation(line: 93, column: 47, scope: !6686)
!6694 = !DILocation(line: 93, column: 67, scope: !6686)
!6695 = !DILocation(line: 95, column: 2, scope: !6686)
!6696 = !DILocation(line: 95, column: 16, scope: !6686)
!6697 = !DILocation(line: 97, column: 2, scope: !6686)
!6698 = !DILocation(line: 98, column: 35, scope: !6686)
!6699 = !DILocation(line: 98, column: 39, scope: !6686)
!6700 = !DILocation(line: 98, column: 45, scope: !6686)
!6701 = !DILocation(line: 98, column: 2, scope: !6686)
!6702 = !DILocation(line: 99, column: 6, scope: !6703)
!6703 = distinct !DILexicalBlock(scope: !6686, file: !6009, line: 99, column: 6)
!6704 = !DILocation(line: 99, column: 6, scope: !6686)
!6705 = !DILocation(line: 100, column: 10, scope: !6703)
!6706 = !DILocation(line: 100, column: 3, scope: !6703)
!6707 = !DILocation(line: 101, column: 20, scope: !6686)
!6708 = !DILocation(line: 101, column: 24, scope: !6686)
!6709 = !DILocation(line: 101, column: 2, scope: !6686)
!6710 = !DILocation(line: 102, column: 27, scope: !6686)
!6711 = !DILocation(line: 102, column: 31, scope: !6686)
!6712 = !DILocation(line: 102, column: 37, scope: !6686)
!6713 = !DILocation(line: 102, column: 8, scope: !6686)
!6714 = !DILocation(line: 102, column: 6, scope: !6686)
!6715 = !DILocation(line: 103, column: 34, scope: !6686)
!6716 = !DILocation(line: 103, column: 38, scope: !6686)
!6717 = !DILocation(line: 103, column: 44, scope: !6686)
!6718 = !DILocation(line: 103, column: 47, scope: !6686)
!6719 = !DILocation(line: 103, column: 2, scope: !6686)
!6720 = !DILocation(line: 104, column: 9, scope: !6686)
!6721 = !DILocation(line: 104, column: 2, scope: !6686)
!6722 = !DILocation(line: 105, column: 1, scope: !6686)
!6723 = distinct !DISubprogram(name: "check_copy_size", scope: !2, file: !2, line: 237, type: !6724, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6726)
!6724 = !DISubroutineType(types: !6725)
!6725 = !{!617, !1948, !798, !617}
!6726 = !{!6727, !6728, !6729, !6730, !6731, !6734}
!6727 = !DILocalVariable(name: "addr", arg: 1, scope: !6723, file: !2, line: 237, type: !1948)
!6728 = !DILocalVariable(name: "bytes", arg: 2, scope: !6723, file: !2, line: 237, type: !798)
!6729 = !DILocalVariable(name: "is_source", arg: 3, scope: !6723, file: !2, line: 237, type: !617)
!6730 = !DILocalVariable(name: "sz", scope: !6723, file: !2, line: 239, type: !50)
!6731 = !DILocalVariable(name: "__ret_warn_on", scope: !6732, file: !2, line: 249, type: !50)
!6732 = distinct !DILexicalBlock(scope: !6733, file: !2, line: 249, column: 6)
!6733 = distinct !DILexicalBlock(scope: !6723, file: !2, line: 249, column: 6)
!6734 = !DILocalVariable(name: "__flags", scope: !6735, file: !2, line: 249, type: !50)
!6735 = distinct !DILexicalBlock(scope: !6736, file: !2, line: 249, column: 6)
!6736 = distinct !DILexicalBlock(scope: !6732, file: !2, line: 249, column: 6)
!6737 = !DILocation(line: 237, column: 29, scope: !6723)
!6738 = !DILocation(line: 237, column: 42, scope: !6723)
!6739 = !DILocation(line: 237, column: 54, scope: !6723)
!6740 = !DILocation(line: 239, column: 2, scope: !6723)
!6741 = !DILocation(line: 239, column: 6, scope: !6723)
!6742 = !DILocation(line: 239, column: 33, scope: !6723)
!6743 = !DILocation(line: 239, column: 11, scope: !6723)
!6744 = !DILocation(line: 240, column: 6, scope: !6745)
!6745 = distinct !DILexicalBlock(scope: !6723, file: !2, line: 240, column: 6)
!6746 = !DILocation(line: 0, scope: !6745)
!6747 = !DILocation(line: 240, column: 6, scope: !6723)
!6748 = !DILocation(line: 241, column: 29, scope: !6749)
!6749 = distinct !DILexicalBlock(scope: !6750, file: !2, line: 241, column: 7)
!6750 = distinct !DILexicalBlock(scope: !6745, file: !2, line: 240, column: 39)
!6751 = !DILocation(line: 241, column: 8, scope: !6749)
!6752 = !DILocation(line: 241, column: 7, scope: !6750)
!6753 = !DILocation(line: 242, column: 18, scope: !6749)
!6754 = !DILocation(line: 242, column: 22, scope: !6749)
!6755 = !DILocation(line: 242, column: 4, scope: !6749)
!6756 = !DILocation(line: 243, column: 12, scope: !6757)
!6757 = distinct !DILexicalBlock(scope: !6749, file: !2, line: 243, column: 12)
!6758 = !{i8 0, i8 2}
!6759 = !DILocation(line: 243, column: 12, scope: !6749)
!6760 = !DILocation(line: 244, column: 4, scope: !6757)
!6761 = !{i32 1619509}
!6762 = !DILocation(line: 246, column: 4, scope: !6757)
!6763 = !{i32 1619538}
!6764 = !DILocation(line: 247, column: 3, scope: !6750)
!6765 = !DILocation(line: 249, column: 6, scope: !6732)
!6766 = !DILocation(line: 249, column: 6, scope: !6736)
!6767 = !DILocation(line: 249, column: 6, scope: !6735)
!6768 = !DILocation(line: 249, column: 6, scope: !6769)
!6769 = distinct !DILexicalBlock(scope: !6735, file: !2, line: 249, column: 6)
!6770 = !DILocation(line: 249, column: 6, scope: !6771)
!6771 = distinct !DILexicalBlock(scope: !6735, file: !2, line: 249, column: 6)
!6772 = !{i64 2149581632, i64 2149581661, i64 2149581707, i64 2149581765, i64 2149581819, i64 2149581873, i64 2149581928, i64 2149581959, i64 2149582267, i64 2149582273, i64 2149582320, i64 2149582343, i64 2149582369}
!6773 = !DILocation(line: 249, column: 6, scope: !6774)
!6774 = distinct !DILexicalBlock(scope: !6735, file: !2, line: 249, column: 6)
!6775 = !DILocation(line: 249, column: 6, scope: !6733)
!6776 = !DILocation(line: 249, column: 6, scope: !6723)
!6777 = !DILocation(line: 250, column: 3, scope: !6733)
!6778 = !DILocation(line: 251, column: 20, scope: !6723)
!6779 = !DILocation(line: 251, column: 26, scope: !6723)
!6780 = !DILocation(line: 251, column: 33, scope: !6723)
!6781 = !DILocation(line: 251, column: 2, scope: !6723)
!6782 = !DILocation(line: 252, column: 2, scope: !6723)
!6783 = !DILocation(line: 253, column: 1, scope: !6723)
!6784 = !DISubprogram(name: "_copy_from_user", scope: !6009, file: !6009, line: 158, type: !6010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6785 = distinct !DISubprogram(name: "copy_overflow", scope: !2, file: !2, line: 230, type: !6786, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6788)
!6786 = !DISubroutineType(types: !6787)
!6787 = !{null, !50, !27}
!6788 = !{!6789, !6790}
!6789 = !DILocalVariable(name: "size", arg: 1, scope: !6785, file: !2, line: 230, type: !50)
!6790 = !DILocalVariable(name: "count", arg: 2, scope: !6785, file: !2, line: 230, type: !27)
!6791 = !DILocation(line: 230, column: 38, scope: !6785)
!6792 = !DILocation(line: 230, column: 58, scope: !6785)
!6793 = !DILocation(line: 233, column: 19, scope: !6794)
!6794 = distinct !DILexicalBlock(scope: !6785, file: !2, line: 232, column: 6)
!6795 = !DILocation(line: 233, column: 25, scope: !6794)
!6796 = !DILocation(line: 233, column: 3, scope: !6794)
!6797 = !DILocation(line: 234, column: 1, scope: !6785)
!6798 = !DISubprogram(name: "__bad_copy_from", scope: !2, file: !2, line: 224, type: !2547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6799 = !DISubprogram(name: "__bad_copy_to", scope: !2, file: !2, line: 226, type: !2547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6800 = distinct !DISubprogram(name: "check_object_size", scope: !2, file: !2, line: 218, type: !6801, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6803)
!6801 = !DISubroutineType(types: !6802)
!6802 = !{null, !1948, !27, !617}
!6803 = !{!6804, !6805, !6806}
!6804 = !DILocalVariable(name: "ptr", arg: 1, scope: !6800, file: !2, line: 218, type: !1948)
!6805 = !DILocalVariable(name: "n", arg: 2, scope: !6800, file: !2, line: 218, type: !27)
!6806 = !DILocalVariable(name: "to_user", arg: 3, scope: !6800, file: !2, line: 219, type: !617)
!6807 = !DILocation(line: 218, column: 50, scope: !6800)
!6808 = !DILocation(line: 218, column: 69, scope: !6800)
!6809 = !DILocation(line: 219, column: 15, scope: !6800)
!6810 = !DILocation(line: 220, column: 3, scope: !6800)
!6811 = !DISubprogram(name: "__copy_overflow", scope: !2, file: !2, line: 228, type: !6786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6812 = distinct !DISubprogram(name: "LDT_zero", scope: !5812, file: !5812, line: 365, type: !6033, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6813)
!6813 = !{!6814}
!6814 = !DILocalVariable(name: "info", arg: 1, scope: !6812, file: !5812, line: 365, type: !5787)
!6815 = !DILocation(line: 365, column: 53, scope: !6812)
!6816 = !DILocation(line: 367, column: 10, scope: !6812)
!6817 = !DILocation(line: 367, column: 16, scope: !6812)
!6818 = !DILocation(line: 367, column: 27, scope: !6812)
!6819 = !DILocation(line: 367, column: 32, scope: !6812)
!6820 = !DILocation(line: 368, column: 3, scope: !6812)
!6821 = !DILocation(line: 368, column: 9, scope: !6812)
!6822 = !DILocation(line: 368, column: 16, scope: !6812)
!6823 = !DILocation(line: 368, column: 21, scope: !6812)
!6824 = !DILocation(line: 369, column: 3, scope: !6812)
!6825 = !DILocation(line: 369, column: 9, scope: !6812)
!6826 = !DILocation(line: 369, column: 19, scope: !6812)
!6827 = !DILocation(line: 369, column: 24, scope: !6812)
!6828 = !DILocation(line: 370, column: 3, scope: !6812)
!6829 = !DILocation(line: 370, column: 9, scope: !6812)
!6830 = !DILocation(line: 370, column: 24, scope: !6812)
!6831 = !DILocation(line: 370, column: 29, scope: !6812)
!6832 = !DILocation(line: 371, column: 3, scope: !6812)
!6833 = !DILocation(line: 371, column: 9, scope: !6812)
!6834 = !DILocation(line: 371, column: 20, scope: !6812)
!6835 = !DILocation(line: 371, column: 25, scope: !6812)
!6836 = !DILocation(line: 372, column: 3, scope: !6812)
!6837 = !DILocation(line: 372, column: 9, scope: !6812)
!6838 = !DILocation(line: 372, column: 24, scope: !6812)
!6839 = !DILocation(line: 372, column: 29, scope: !6812)
!6840 = !DILocation(line: 373, column: 3, scope: !6812)
!6841 = !DILocation(line: 373, column: 9, scope: !6812)
!6842 = !DILocation(line: 373, column: 25, scope: !6812)
!6843 = !DILocation(line: 373, column: 30, scope: !6812)
!6844 = !DILocation(line: 374, column: 3, scope: !6812)
!6845 = !DILocation(line: 374, column: 9, scope: !6812)
!6846 = !DILocation(line: 374, column: 18, scope: !6812)
!6847 = !DILocation(line: 0, scope: !6812)
!6848 = !DILocation(line: 367, column: 2, scope: !6812)
!6849 = distinct !DISubprogram(name: "__preempt_count_add", scope: !6850, file: !6850, line: 78, type: !5274, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6851)
!6850 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!6851 = !{!6852, !6853, !6855}
!6852 = !DILocalVariable(name: "val", arg: 1, scope: !6849, file: !6850, line: 78, type: !50)
!6853 = !DILocalVariable(name: "pao_ID__", scope: !6854, file: !6850, line: 80, type: !2326)
!6854 = distinct !DILexicalBlock(scope: !6849, file: !6850, line: 80, column: 2)
!6855 = !DILocalVariable(name: "pto_val__", scope: !6856, file: !6850, line: 80, type: !30)
!6856 = distinct !DILexicalBlock(scope: !6857, file: !6850, line: 80, column: 2)
!6857 = distinct !DILexicalBlock(scope: !6858, file: !6850, line: 80, column: 2)
!6858 = distinct !DILexicalBlock(scope: !6854, file: !6850, line: 80, column: 2)
!6859 = !DILocation(line: 78, column: 53, scope: !6849)
!6860 = !DILocation(line: 80, column: 2, scope: !6849)
!6861 = !DILocation(line: 80, column: 2, scope: !6854)
!6862 = !DILocation(line: 80, column: 2, scope: !6858)
!6863 = !DILocation(line: 80, column: 2, scope: !6864)
!6864 = distinct !DILexicalBlock(scope: !6858, file: !6850, line: 80, column: 2)
!6865 = !{i64 2149593203}
!6866 = !DILocation(line: 80, column: 2, scope: !6857)
!6867 = !DILocation(line: 80, column: 2, scope: !6868)
!6868 = distinct !DILexicalBlock(scope: !6857, file: !6850, line: 80, column: 2)
!6869 = !{i64 2149593498}
!6870 = !DILocation(line: 80, column: 2, scope: !6856)
!6871 = !{i64 2149594203}
!6872 = !DILocation(line: 81, column: 1, scope: !6849)
!6873 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !6874, file: !6874, line: 313, type: !6875, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6877)
!6874 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!6875 = !DISubroutineType(types: !6876)
!6876 = !{null, !697}
!6877 = !{!6878}
!6878 = !DILocalVariable(name: "op", arg: 1, scope: !6873, file: !6874, line: 313, type: !697)
!6879 = !DILocation(line: 313, column: 66, scope: !6873)
!6880 = !DILocation(line: 313, column: 72, scope: !6873)
!6881 = distinct !DISubprogram(name: "fill_ldt", scope: !5812, file: !5812, line: 16, type: !6882, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6884)
!6882 = !DISubroutineType(types: !6883)
!6883 = !{null, !5827, !5787}
!6884 = !{!6885, !6886}
!6885 = !DILocalVariable(name: "desc", arg: 1, scope: !6881, file: !5812, line: 16, type: !5827)
!6886 = !DILocalVariable(name: "info", arg: 2, scope: !6881, file: !5812, line: 16, type: !5787)
!6887 = !DILocation(line: 16, column: 49, scope: !6881)
!6888 = !DILocation(line: 16, column: 79, scope: !6881)
!6889 = !DILocation(line: 18, column: 18, scope: !6881)
!6890 = !DILocation(line: 18, column: 24, scope: !6881)
!6891 = !DILocation(line: 18, column: 30, scope: !6881)
!6892 = !DILocation(line: 18, column: 2, scope: !6881)
!6893 = !DILocation(line: 18, column: 8, scope: !6881)
!6894 = !DILocation(line: 18, column: 16, scope: !6881)
!6895 = !DILocation(line: 20, column: 18, scope: !6881)
!6896 = !DILocation(line: 20, column: 24, scope: !6881)
!6897 = !DILocation(line: 20, column: 34, scope: !6881)
!6898 = !DILocation(line: 20, column: 17, scope: !6881)
!6899 = !DILocation(line: 20, column: 2, scope: !6881)
!6900 = !DILocation(line: 20, column: 8, scope: !6881)
!6901 = !DILocation(line: 20, column: 15, scope: !6881)
!6902 = !DILocation(line: 21, column: 18, scope: !6881)
!6903 = !DILocation(line: 21, column: 24, scope: !6881)
!6904 = !DILocation(line: 21, column: 34, scope: !6881)
!6905 = !DILocation(line: 21, column: 48, scope: !6881)
!6906 = !DILocation(line: 21, column: 17, scope: !6881)
!6907 = !DILocation(line: 21, column: 2, scope: !6881)
!6908 = !DILocation(line: 21, column: 8, scope: !6881)
!6909 = !DILocation(line: 21, column: 15, scope: !6881)
!6910 = !DILocation(line: 23, column: 17, scope: !6881)
!6911 = !DILocation(line: 23, column: 23, scope: !6881)
!6912 = !DILocation(line: 23, column: 38, scope: !6881)
!6913 = !DILocation(line: 23, column: 43, scope: !6881)
!6914 = !DILocation(line: 23, column: 16, scope: !6881)
!6915 = !DILocation(line: 23, column: 2, scope: !6881)
!6916 = !DILocation(line: 23, column: 8, scope: !6881)
!6917 = !DILocation(line: 23, column: 14, scope: !6881)
!6918 = !DILocation(line: 24, column: 23, scope: !6881)
!6919 = !DILocation(line: 24, column: 29, scope: !6881)
!6920 = !DILocation(line: 24, column: 38, scope: !6881)
!6921 = !DILocation(line: 24, column: 2, scope: !6881)
!6922 = !DILocation(line: 24, column: 8, scope: !6881)
!6923 = !DILocation(line: 24, column: 20, scope: !6881)
!6924 = !DILocation(line: 26, column: 2, scope: !6881)
!6925 = !DILocation(line: 26, column: 8, scope: !6881)
!6926 = !DILocation(line: 26, column: 20, scope: !6881)
!6927 = !DILocation(line: 28, column: 2, scope: !6881)
!6928 = !DILocation(line: 28, column: 8, scope: !6881)
!6929 = !DILocation(line: 28, column: 12, scope: !6881)
!6930 = !DILocation(line: 29, column: 2, scope: !6881)
!6931 = !DILocation(line: 29, column: 8, scope: !6881)
!6932 = !DILocation(line: 29, column: 13, scope: !6881)
!6933 = !DILocation(line: 30, column: 14, scope: !6881)
!6934 = !DILocation(line: 30, column: 20, scope: !6881)
!6935 = !DILocation(line: 30, column: 36, scope: !6881)
!6936 = !DILocation(line: 30, column: 2, scope: !6881)
!6937 = !DILocation(line: 30, column: 8, scope: !6881)
!6938 = !DILocation(line: 30, column: 12, scope: !6881)
!6939 = !DILocation(line: 31, column: 19, scope: !6881)
!6940 = !DILocation(line: 31, column: 25, scope: !6881)
!6941 = !DILocation(line: 31, column: 31, scope: !6881)
!6942 = !DILocation(line: 31, column: 42, scope: !6881)
!6943 = !DILocation(line: 31, column: 18, scope: !6881)
!6944 = !DILocation(line: 31, column: 2, scope: !6881)
!6945 = !DILocation(line: 31, column: 8, scope: !6881)
!6946 = !DILocation(line: 31, column: 16, scope: !6881)
!6947 = !DILocation(line: 32, column: 15, scope: !6881)
!6948 = !DILocation(line: 32, column: 21, scope: !6881)
!6949 = !DILocation(line: 32, column: 2, scope: !6881)
!6950 = !DILocation(line: 32, column: 8, scope: !6881)
!6951 = !DILocation(line: 32, column: 13, scope: !6881)
!6952 = !DILocation(line: 33, column: 14, scope: !6881)
!6953 = !DILocation(line: 33, column: 20, scope: !6881)
!6954 = !DILocation(line: 33, column: 2, scope: !6881)
!6955 = !DILocation(line: 33, column: 8, scope: !6881)
!6956 = !DILocation(line: 33, column: 12, scope: !6881)
!6957 = !DILocation(line: 34, column: 14, scope: !6881)
!6958 = !DILocation(line: 34, column: 20, scope: !6881)
!6959 = !DILocation(line: 34, column: 2, scope: !6881)
!6960 = !DILocation(line: 34, column: 8, scope: !6881)
!6961 = !DILocation(line: 34, column: 12, scope: !6881)
!6962 = !DILocation(line: 36, column: 18, scope: !6881)
!6963 = !DILocation(line: 36, column: 24, scope: !6881)
!6964 = !DILocation(line: 36, column: 34, scope: !6881)
!6965 = !DILocation(line: 36, column: 48, scope: !6881)
!6966 = !DILocation(line: 36, column: 17, scope: !6881)
!6967 = !DILocation(line: 36, column: 2, scope: !6881)
!6968 = !DILocation(line: 36, column: 8, scope: !6881)
!6969 = !DILocation(line: 36, column: 15, scope: !6881)
!6970 = !DILocation(line: 41, column: 2, scope: !6881)
!6971 = !DILocation(line: 41, column: 8, scope: !6881)
!6972 = !DILocation(line: 41, column: 12, scope: !6881)
!6973 = !DILocation(line: 42, column: 1, scope: !6881)
!6974 = distinct !DISubprogram(name: "native_load_tls", scope: !5812, file: !5812, line: 292, type: !6975, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !6977)
!6975 = !DISubroutineType(types: !6976)
!6976 = !{null, !5825, !34}
!6977 = !{!6978, !6979, !6980, !6981}
!6978 = !DILocalVariable(name: "t", arg: 1, scope: !6974, file: !5812, line: 292, type: !5825)
!6979 = !DILocalVariable(name: "cpu", arg: 2, scope: !6974, file: !5812, line: 292, type: !34)
!6980 = !DILocalVariable(name: "gdt", scope: !6974, file: !5812, line: 294, type: !5827)
!6981 = !DILocalVariable(name: "i", scope: !6974, file: !5812, line: 295, type: !34)
!6982 = !DILocation(line: 292, column: 58, scope: !6974)
!6983 = !DILocation(line: 292, column: 74, scope: !6974)
!6984 = !DILocation(line: 294, column: 2, scope: !6974)
!6985 = !DILocation(line: 294, column: 22, scope: !6974)
!6986 = !DILocation(line: 294, column: 43, scope: !6974)
!6987 = !DILocation(line: 294, column: 28, scope: !6974)
!6988 = !DILocation(line: 295, column: 2, scope: !6974)
!6989 = !DILocation(line: 295, column: 15, scope: !6974)
!6990 = !DILocation(line: 297, column: 9, scope: !6991)
!6991 = distinct !DILexicalBlock(scope: !6974, file: !5812, line: 297, column: 2)
!6992 = !DILocation(line: 297, column: 7, scope: !6991)
!6993 = !DILocation(line: 297, column: 14, scope: !6994)
!6994 = distinct !DILexicalBlock(scope: !6991, file: !5812, line: 297, column: 2)
!6995 = !DILocation(line: 297, column: 16, scope: !6994)
!6996 = !DILocation(line: 297, column: 2, scope: !6991)
!6997 = !DILocation(line: 298, column: 3, scope: !6994)
!6998 = !DILocation(line: 298, column: 27, scope: !6994)
!6999 = !DILocation(line: 298, column: 25, scope: !6994)
!7000 = !DILocation(line: 298, column: 32, scope: !6994)
!7001 = !DILocation(line: 298, column: 35, scope: !6994)
!7002 = !DILocation(line: 298, column: 45, scope: !6994)
!7003 = !DILocation(line: 297, column: 42, scope: !6994)
!7004 = !DILocation(line: 297, column: 2, scope: !6994)
!7005 = distinct !{!7005, !6996, !7006, !6094, !6095}
!7006 = !DILocation(line: 298, column: 46, scope: !6991)
!7007 = !DILocation(line: 299, column: 1, scope: !6974)
!7008 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !6850, file: !6850, line: 93, type: !1938, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7009)
!7009 = !{!7010}
!7010 = !DILocalVariable(name: "c", scope: !7011, file: !6850, line: 95, type: !617)
!7011 = distinct !DILexicalBlock(scope: !7008, file: !6850, line: 95, column: 9)
!7012 = !DILocation(line: 95, column: 9, scope: !7011)
!7013 = !{i64 2149597559, i64 2149597652}
!7014 = !DILocation(line: 95, column: 9, scope: !7008)
!7015 = !DILocation(line: 95, column: 2, scope: !7008)
!7016 = distinct !DISubprogram(name: "get_cpu_gdt_rw", scope: !5812, file: !5812, line: 51, type: !7017, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7019)
!7017 = !DISubroutineType(types: !7018)
!7018 = !{!5827, !34}
!7019 = !{!7020, !7021, !7024}
!7020 = !DILocalVariable(name: "cpu", arg: 1, scope: !7016, file: !5812, line: 51, type: !34)
!7021 = !DILocalVariable(name: "__vpp_verify", scope: !7022, file: !5812, line: 53, type: !1948)
!7022 = distinct !DILexicalBlock(scope: !7023, file: !5812, line: 53, column: 9)
!7023 = distinct !DILexicalBlock(scope: !7016, file: !5812, line: 53, column: 9)
!7024 = !DILocalVariable(name: "__ptr", scope: !7025, file: !5812, line: 53, type: !27)
!7025 = distinct !DILexicalBlock(scope: !7023, file: !5812, line: 53, column: 9)
!7026 = !DILocation(line: 51, column: 63, scope: !7016)
!7027 = !DILocation(line: 53, column: 9, scope: !7023)
!7028 = !DILocation(line: 53, column: 9, scope: !7022)
!7029 = !DILocation(line: 53, column: 9, scope: !7025)
!7030 = !DILocation(line: 53, column: 32, scope: !7016)
!7031 = !DILocation(line: 53, column: 9, scope: !7016)
!7032 = !DILocation(line: 53, column: 2, scope: !7016)
!7033 = distinct !DISubprogram(name: "native_load_gs_index", scope: !6206, file: !6206, line: 28, type: !6207, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7034)
!7034 = !{!7035, !7036, !7039, !7043, !7044, !7048}
!7035 = !DILocalVariable(name: "selector", arg: 1, scope: !7033, file: !6206, line: 28, type: !34)
!7036 = !DILocalVariable(name: "flags", scope: !7037, file: !6206, line: 33, type: !27)
!7037 = distinct !DILexicalBlock(scope: !7038, file: !6206, line: 32, column: 9)
!7038 = distinct !DILexicalBlock(scope: !7033, file: !6206, line: 30, column: 6)
!7039 = !DILocalVariable(name: "__dummy", scope: !7040, file: !6206, line: 35, type: !27)
!7040 = distinct !DILexicalBlock(scope: !7041, file: !6206, line: 35, column: 3)
!7041 = distinct !DILexicalBlock(scope: !7042, file: !6206, line: 35, column: 3)
!7042 = distinct !DILexicalBlock(scope: !7037, file: !6206, line: 35, column: 3)
!7043 = !DILocalVariable(name: "__dummy2", scope: !7040, file: !6206, line: 35, type: !27)
!7044 = !DILocalVariable(name: "__dummy", scope: !7045, file: !6206, line: 37, type: !27)
!7045 = distinct !DILexicalBlock(scope: !7046, file: !6206, line: 37, column: 3)
!7046 = distinct !DILexicalBlock(scope: !7047, file: !6206, line: 37, column: 3)
!7047 = distinct !DILexicalBlock(scope: !7037, file: !6206, line: 37, column: 3)
!7048 = !DILocalVariable(name: "__dummy2", scope: !7045, file: !6206, line: 37, type: !27)
!7049 = !DILocation(line: 28, column: 54, scope: !7033)
!7050 = !DILocation(line: 30, column: 6, scope: !7033)
!7051 = !DILocation(line: 30, column: 6, scope: !7038)
!7052 = !DILocation(line: 31, column: 15, scope: !7053)
!7053 = distinct !DILexicalBlock(scope: !7038, file: !6206, line: 30, column: 45)
!7054 = !DILocation(line: 31, column: 3, scope: !7053)
!7055 = !DILocation(line: 32, column: 2, scope: !7053)
!7056 = !DILocation(line: 33, column: 3, scope: !7037)
!7057 = !DILocation(line: 33, column: 17, scope: !7037)
!7058 = !DILocation(line: 35, column: 3, scope: !7037)
!7059 = !DILocation(line: 35, column: 3, scope: !7042)
!7060 = !DILocation(line: 35, column: 3, scope: !7040)
!7061 = !DILocation(line: 35, column: 3, scope: !7041)
!7062 = !DILocation(line: 36, column: 21, scope: !7037)
!7063 = !DILocation(line: 36, column: 3, scope: !7037)
!7064 = !DILocation(line: 37, column: 3, scope: !7037)
!7065 = !DILocation(line: 37, column: 3, scope: !7047)
!7066 = !DILocation(line: 37, column: 3, scope: !7045)
!7067 = !DILocation(line: 37, column: 3, scope: !7046)
!7068 = !DILocation(line: 37, column: 3, scope: !7069)
!7069 = distinct !DILexicalBlock(scope: !7046, file: !6206, line: 37, column: 3)
!7070 = !DILocation(line: 38, column: 2, scope: !7038)
!7071 = !DILocation(line: 39, column: 1, scope: !7033)
!7072 = distinct !DISubprogram(name: "arch_test_bit", scope: !7073, file: !7073, line: 237, type: !7074, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7079)
!7073 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7074 = !DISubroutineType(types: !7075)
!7075 = !{!617, !27, !7076}
!7076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7077, size: 64)
!7077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7078)
!7078 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!7079 = !{!7080, !7081}
!7080 = !DILocalVariable(name: "nr", arg: 1, scope: !7072, file: !7073, line: 237, type: !27)
!7081 = !DILocalVariable(name: "addr", arg: 2, scope: !7072, file: !7073, line: 237, type: !7076)
!7082 = !DILocation(line: 237, column: 29, scope: !7072)
!7083 = !DILocation(line: 237, column: 63, scope: !7072)
!7084 = !DILocation(line: 239, column: 30, scope: !7072)
!7085 = !DILocation(line: 239, column: 9, scope: !7072)
!7086 = !DILocation(line: 239, column: 54, scope: !7072)
!7087 = !DILocation(line: 239, column: 58, scope: !7072)
!7088 = !DILocation(line: 239, column: 36, scope: !7072)
!7089 = !DILocation(line: 240, column: 26, scope: !7072)
!7090 = !DILocation(line: 240, column: 30, scope: !7072)
!7091 = !DILocation(line: 240, column: 8, scope: !7072)
!7092 = !DILocation(line: 239, column: 2, scope: !7072)
!7093 = distinct !DISubprogram(name: "_static_cpu_has", scope: !7094, file: !7094, line: 173, type: !7095, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7097)
!7094 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!7095 = !DISubroutineType(types: !7096)
!7096 = !{!617, !70}
!7097 = !{!7098, !7099, !7100}
!7098 = !DILocalVariable(name: "bit", arg: 1, scope: !7093, file: !7094, line: 173, type: !70)
!7099 = !DILabel(scope: !7093, name: "t_yes", file: !7094, line: 187)
!7100 = !DILabel(scope: !7093, name: "t_no", file: !7094, line: 189)
!7101 = !DILocation(line: 173, column: 49, scope: !7093)
!7102 = !DILocation(line: 183, column: 24, scope: !7093)
!7103 = !DILocation(line: 184, column: 30, scope: !7093)
!7104 = !DILocation(line: 184, column: 34, scope: !7093)
!7105 = !DILocation(line: 184, column: 26, scope: !7093)
!7106 = !DILocation(line: 185, column: 70, scope: !7093)
!7107 = !DILocation(line: 185, column: 74, scope: !7093)
!7108 = !DILocation(line: 185, column: 25, scope: !7093)
!7109 = !DILocation(line: 175, column: 2, scope: !7093)
!7110 = !{i64 2149572114, i64 2149572147, i64 2149572153, i64 2149572169, i64 2149572188, i64 2149572219, i64 2149573172, i64 2149571761, i64 2149573178, i64 2149573226, i64 2149573290, i64 2149573354, i64 2149573411, i64 2149573618, i64 2149573666, i64 2149573730, i64 2149573794, i64 2149573851, i64 2149571879, i64 2149571904, i64 2149574061, i64 2149574189, i64 2149574122, i64 2149574203, i64 2149574217, i64 2149574333, i64 2149574278, i64 2149574347, i64 2149572038, i64 1698859, i64 1698899, i64 1698908, i64 1698958, i64 1698979, i64 1698999}
!7111 = !DILocation(line: 187, column: 1, scope: !7093)
!7112 = !DILocation(line: 188, column: 2, scope: !7093)
!7113 = !DILocation(line: 189, column: 1, scope: !7093)
!7114 = !DILocation(line: 190, column: 2, scope: !7093)
!7115 = !DILocation(line: 191, column: 1, scope: !7093)
!7116 = distinct !DISubprogram(name: "native_lkgs", scope: !6206, file: !6206, line: 20, type: !6207, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7117)
!7117 = !{!7118, !7119}
!7118 = !DILocalVariable(name: "selector", arg: 1, scope: !7116, file: !6206, line: 20, type: !34)
!7119 = !DILocalVariable(name: "sel", scope: !7116, file: !6206, line: 22, type: !70)
!7120 = !DILocation(line: 20, column: 45, scope: !7116)
!7121 = !DILocation(line: 22, column: 2, scope: !7116)
!7122 = !DILocation(line: 22, column: 6, scope: !7116)
!7123 = !DILocation(line: 22, column: 12, scope: !7116)
!7124 = !DILocation(line: 23, column: 2, scope: !7116)
!7125 = !{i64 8061478, i64 2155546441, i64 2155546466, i64 2155546501, i64 2155546809, i64 2155546862, i64 2155546893, i64 2155546924, i64 2155547002, i64 2155547036, i64 2155547074, i64 2155547117, i64 2155547140, i64 2155547178, i64 2155547200, i64 2155547231, i64 2155547316, i64 2155547350, i64 2155547388, i64 2155547431, i64 2155547454, i64 2155547492, i64 2155547514, i64 2155547548, i64 2155547610, i64 2155547633, i64 2155546567, i64 2155547746, i64 2155546678}
!7126 = !DILocation(line: 26, column: 1, scope: !7116)
!7127 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !7128, file: !7128, line: 101, type: !7129, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7131)
!7128 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!7129 = !DISubroutineType(types: !7130)
!7130 = !{!27}
!7131 = !{!7132}
!7132 = !DILocalVariable(name: "flags", scope: !7127, file: !7128, line: 103, type: !27)
!7133 = !DILocation(line: 103, column: 2, scope: !7127)
!7134 = !DILocation(line: 103, column: 16, scope: !7127)
!7135 = !DILocation(line: 103, column: 24, scope: !7127)
!7136 = !DILocation(line: 104, column: 2, scope: !7127)
!7137 = !DILocation(line: 105, column: 9, scope: !7127)
!7138 = !DILocation(line: 106, column: 1, scope: !7127)
!7139 = !DILocation(line: 105, column: 2, scope: !7127)
!7140 = !DISubprogram(name: "asm_load_gs_index", scope: !6206, file: !6206, line: 15, type: !7141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7141 = !DISubroutineType(types: !7142)
!7142 = !{null, !70}
!7143 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !7128, file: !7128, line: 132, type: !7144, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7146)
!7144 = !DISubroutineType(types: !7145)
!7145 = !{null, !27}
!7146 = !{!7147}
!7147 = !DILocalVariable(name: "flags", arg: 1, scope: !7143, file: !7128, line: 132, type: !27)
!7148 = !DILocation(line: 132, column: 66, scope: !7143)
!7149 = !DILocation(line: 134, column: 32, scope: !7150)
!7150 = distinct !DILexicalBlock(scope: !7143, file: !7128, line: 134, column: 6)
!7151 = !DILocation(line: 134, column: 7, scope: !7150)
!7152 = !DILocation(line: 134, column: 6, scope: !7143)
!7153 = !DILocation(line: 135, column: 3, scope: !7150)
!7154 = !DILocation(line: 136, column: 1, scope: !7143)
!7155 = distinct !DISubprogram(name: "constant_test_bit", scope: !7073, file: !7073, line: 204, type: !7156, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7158)
!7156 = !DISubroutineType(types: !7157)
!7157 = !{!617, !876, !7076}
!7158 = !{!7159, !7160}
!7159 = !DILocalVariable(name: "nr", arg: 1, scope: !7155, file: !7073, line: 204, type: !876)
!7160 = !DILocalVariable(name: "addr", arg: 2, scope: !7155, file: !7073, line: 204, type: !7076)
!7161 = !DILocation(line: 204, column: 52, scope: !7155)
!7162 = !DILocation(line: 204, column: 86, scope: !7155)
!7163 = !DILocation(line: 206, column: 19, scope: !7155)
!7164 = !DILocation(line: 206, column: 22, scope: !7155)
!7165 = !DILocation(line: 206, column: 15, scope: !7155)
!7166 = !DILocation(line: 207, column: 4, scope: !7155)
!7167 = !DILocation(line: 207, column: 9, scope: !7155)
!7168 = !DILocation(line: 207, column: 12, scope: !7155)
!7169 = !DILocation(line: 206, column: 44, scope: !7155)
!7170 = !DILocation(line: 207, column: 37, scope: !7155)
!7171 = !DILocation(line: 206, column: 2, scope: !7155)
!7172 = distinct !DISubprogram(name: "variable_test_bit", scope: !7073, file: !7073, line: 224, type: !7156, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7173)
!7173 = !{!7174, !7175, !7176}
!7174 = !DILocalVariable(name: "nr", arg: 1, scope: !7172, file: !7073, line: 224, type: !876)
!7175 = !DILocalVariable(name: "addr", arg: 2, scope: !7172, file: !7073, line: 224, type: !7076)
!7176 = !DILocalVariable(name: "oldbit", scope: !7172, file: !7073, line: 226, type: !617)
!7177 = !DILocation(line: 224, column: 52, scope: !7172)
!7178 = !DILocation(line: 224, column: 86, scope: !7172)
!7179 = !DILocation(line: 226, column: 2, scope: !7172)
!7180 = !DILocation(line: 226, column: 7, scope: !7172)
!7181 = !DILocation(line: 231, column: 33, scope: !7172)
!7182 = !DILocation(line: 231, column: 46, scope: !7172)
!7183 = !DILocation(line: 228, column: 2, scope: !7172)
!7184 = !{i64 2147805063, i64 2147805137}
!7185 = !DILocation(line: 233, column: 9, scope: !7172)
!7186 = !DILocation(line: 234, column: 1, scope: !7172)
!7187 = !DILocation(line: 233, column: 2, scope: !7172)
!7188 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !7128, file: !7128, line: 65, type: !7129, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802)
!7189 = !DILocation(line: 67, column: 9, scope: !7188)
!7190 = !DILocation(line: 67, column: 2, scope: !7188)
!7191 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !7128, file: !7128, line: 70, type: !2547, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802)
!7192 = !DILocation(line: 72, column: 2, scope: !7191)
!7193 = !DILocation(line: 73, column: 1, scope: !7191)
!7194 = distinct !DISubprogram(name: "native_save_fl", scope: !7128, file: !7128, line: 17, type: !7129, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7195)
!7195 = !{!7196}
!7196 = !DILocalVariable(name: "flags", scope: !7194, file: !7128, line: 19, type: !27)
!7197 = !DILocation(line: 19, column: 2, scope: !7194)
!7198 = !DILocation(line: 19, column: 16, scope: !7194)
!7199 = !DILocation(line: 26, column: 2, scope: !7194)
!7200 = !{i64 1436653, i64 1436674}
!7201 = !DILocation(line: 32, column: 9, scope: !7194)
!7202 = !DILocation(line: 33, column: 1, scope: !7194)
!7203 = !DILocation(line: 32, column: 2, scope: !7194)
!7204 = distinct !DISubprogram(name: "native_irq_disable", scope: !7128, file: !7128, line: 35, type: !2547, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802)
!7205 = !DILocation(line: 37, column: 2, scope: !7204)
!7206 = !{i64 1436857}
!7207 = !DILocation(line: 38, column: 1, scope: !7204)
!7208 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !7128, file: !7128, line: 120, type: !7209, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7211)
!7209 = !DISubroutineType(types: !7210)
!7210 = !{!50, !27}
!7211 = !{!7212}
!7212 = !DILocalVariable(name: "flags", arg: 1, scope: !7208, file: !7128, line: 120, type: !27)
!7213 = !DILocation(line: 120, column: 67, scope: !7208)
!7214 = !DILocation(line: 122, column: 11, scope: !7208)
!7215 = !DILocation(line: 122, column: 17, scope: !7208)
!7216 = !DILocation(line: 122, column: 9, scope: !7208)
!7217 = !DILocation(line: 122, column: 2, scope: !7208)
!7218 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !7128, file: !7128, line: 75, type: !2547, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802)
!7219 = !DILocation(line: 77, column: 2, scope: !7218)
!7220 = !DILocation(line: 78, column: 1, scope: !7218)
!7221 = distinct !DISubprogram(name: "native_irq_enable", scope: !7128, file: !7128, line: 40, type: !2547, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802)
!7222 = !DILocation(line: 42, column: 2, scope: !7221)
!7223 = !{i64 1436949}
!7224 = !DILocation(line: 43, column: 1, scope: !7221)
!7225 = distinct !DISubprogram(name: "__do_sys_set_thread_area", scope: !9, file: !9, line: 186, type: !7226, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7228)
!7226 = !DISubroutineType(types: !7227)
!7227 = !{!876, !5817}
!7228 = !{!7229}
!7229 = !DILocalVariable(name: "u_info", arg: 1, scope: !7225, file: !9, line: 186, type: !5817)
!7230 = !DILocation(line: 186, column: 1, scope: !7225)
!7231 = !DILocation(line: 188, column: 28, scope: !7225)
!7232 = !DILocation(line: 188, column: 41, scope: !7225)
!7233 = !DILocation(line: 188, column: 9, scope: !7225)
!7234 = !DILocation(line: 188, column: 2, scope: !7225)
!7235 = distinct !DISubprogram(name: "get_desc_base", scope: !5812, file: !5812, line: 382, type: !7236, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7238)
!7236 = !DISubroutineType(types: !7237)
!7237 = !{!27, !6335}
!7238 = !{!7239}
!7239 = !DILocalVariable(name: "desc", arg: 1, scope: !7235, file: !5812, line: 382, type: !6335)
!7240 = !DILocation(line: 382, column: 69, scope: !7235)
!7241 = !DILocation(line: 384, column: 20, scope: !7235)
!7242 = !DILocation(line: 384, column: 26, scope: !7235)
!7243 = !DILocation(line: 384, column: 36, scope: !7235)
!7244 = !DILocation(line: 384, column: 42, scope: !7235)
!7245 = !DILocation(line: 384, column: 35, scope: !7235)
!7246 = !DILocation(line: 384, column: 49, scope: !7235)
!7247 = !DILocation(line: 384, column: 32, scope: !7235)
!7248 = !DILocation(line: 384, column: 60, scope: !7235)
!7249 = !DILocation(line: 384, column: 66, scope: !7235)
!7250 = !DILocation(line: 384, column: 59, scope: !7235)
!7251 = !DILocation(line: 384, column: 73, scope: !7235)
!7252 = !DILocation(line: 384, column: 56, scope: !7235)
!7253 = !DILocation(line: 384, column: 9, scope: !7235)
!7254 = !DILocation(line: 384, column: 2, scope: !7235)
!7255 = distinct !DISubprogram(name: "get_desc_limit", scope: !5812, file: !5812, line: 394, type: !7236, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7256)
!7256 = !{!7257}
!7257 = !DILocalVariable(name: "desc", arg: 1, scope: !7255, file: !5812, line: 394, type: !6335)
!7258 = !DILocation(line: 394, column: 70, scope: !7255)
!7259 = !DILocation(line: 396, column: 9, scope: !7255)
!7260 = !DILocation(line: 396, column: 15, scope: !7255)
!7261 = !DILocation(line: 396, column: 25, scope: !7255)
!7262 = !DILocation(line: 396, column: 31, scope: !7255)
!7263 = !DILocation(line: 396, column: 38, scope: !7255)
!7264 = !DILocation(line: 396, column: 22, scope: !7255)
!7265 = !DILocation(line: 396, column: 2, scope: !7255)
!7266 = !DISubprogram(name: "_copy_to_user", scope: !6009, file: !6009, line: 176, type: !6010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7267 = distinct !DISubprogram(name: "__do_sys_get_thread_area", scope: !9, file: !9, line: 238, type: !7226, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7268)
!7268 = !{!7269}
!7269 = !DILocalVariable(name: "u_info", arg: 1, scope: !7267, file: !9, line: 238, type: !5817)
!7270 = !DILocation(line: 238, column: 1, scope: !7267)
!7271 = !DILocation(line: 240, column: 28, scope: !7267)
!7272 = !DILocation(line: 240, column: 41, scope: !7267)
!7273 = !DILocation(line: 240, column: 9, scope: !7267)
!7274 = !DILocation(line: 240, column: 2, scope: !7267)
!7275 = distinct !DISubprogram(name: "instrument_copy_from_user_before", scope: !7276, file: !7276, line: 127, type: !7277, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7279)
!7276 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7277 = !DISubroutineType(types: !7278)
!7278 = !{null, !1948, !1948, !27}
!7279 = !{!7280, !7281, !7282}
!7280 = !DILocalVariable(name: "to", arg: 1, scope: !7275, file: !7276, line: 127, type: !1948)
!7281 = !DILocalVariable(name: "from", arg: 2, scope: !7275, file: !7276, line: 127, type: !1948)
!7282 = !DILocalVariable(name: "n", arg: 3, scope: !7275, file: !7276, line: 127, type: !27)
!7283 = !DILocation(line: 127, column: 46, scope: !7275)
!7284 = !DILocation(line: 127, column: 69, scope: !7275)
!7285 = !DILocation(line: 127, column: 89, scope: !7275)
!7286 = !DILocation(line: 129, column: 20, scope: !7275)
!7287 = !DILocation(line: 129, column: 24, scope: !7275)
!7288 = !DILocation(line: 129, column: 2, scope: !7275)
!7289 = !DILocation(line: 130, column: 2, scope: !7275)
!7290 = !DILocation(line: 131, column: 1, scope: !7275)
!7291 = distinct !DISubprogram(name: "should_fail_usercopy", scope: !7292, file: !7292, line: 18, type: !1938, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802)
!7292 = !DIFile(filename: "./include/linux/fault-inject-usercopy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c50bc45f7dd45d85340e9f2bf0c47d5")
!7293 = !DILocation(line: 18, column: 49, scope: !7291)
!7294 = distinct !DISubprogram(name: "raw_copy_from_user", scope: !7295, file: !7295, line: 125, type: !6010, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7296)
!7295 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!7296 = !{!7297, !7298, !7299}
!7297 = !DILocalVariable(name: "dst", arg: 1, scope: !7294, file: !7295, line: 125, type: !38)
!7298 = !DILocalVariable(name: "src", arg: 2, scope: !7294, file: !7295, line: 125, type: !1948)
!7299 = !DILocalVariable(name: "size", arg: 3, scope: !7294, file: !7295, line: 125, type: !27)
!7300 = !DILocation(line: 125, column: 26, scope: !7294)
!7301 = !DILocation(line: 125, column: 50, scope: !7294)
!7302 = !DILocation(line: 125, column: 69, scope: !7294)
!7303 = !DILocation(line: 127, column: 27, scope: !7294)
!7304 = !DILocation(line: 127, column: 48, scope: !7294)
!7305 = !DILocation(line: 127, column: 53, scope: !7294)
!7306 = !DILocation(line: 127, column: 9, scope: !7294)
!7307 = !DILocation(line: 127, column: 2, scope: !7294)
!7308 = distinct !DISubprogram(name: "instrument_copy_from_user_after", scope: !7276, file: !7276, line: 144, type: !7309, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7311)
!7309 = !DISubroutineType(types: !7310)
!7310 = !{null, !1948, !1948, !27, !27}
!7311 = !{!7312, !7313, !7314, !7315}
!7312 = !DILocalVariable(name: "to", arg: 1, scope: !7308, file: !7276, line: 144, type: !1948)
!7313 = !DILocalVariable(name: "from", arg: 2, scope: !7308, file: !7276, line: 144, type: !1948)
!7314 = !DILocalVariable(name: "n", arg: 3, scope: !7308, file: !7276, line: 145, type: !27)
!7315 = !DILocalVariable(name: "left", arg: 4, scope: !7308, file: !7276, line: 145, type: !27)
!7316 = !DILocation(line: 144, column: 45, scope: !7308)
!7317 = !DILocation(line: 144, column: 68, scope: !7308)
!7318 = !DILocation(line: 145, column: 19, scope: !7308)
!7319 = !DILocation(line: 145, column: 36, scope: !7308)
!7320 = !DILocation(line: 147, column: 24, scope: !7308)
!7321 = !DILocation(line: 147, column: 28, scope: !7308)
!7322 = !DILocation(line: 147, column: 32, scope: !7308)
!7323 = !DILocation(line: 147, column: 30, scope: !7308)
!7324 = !DILocation(line: 147, column: 2, scope: !7308)
!7325 = !DILocation(line: 148, column: 1, scope: !7308)
!7326 = distinct !DISubprogram(name: "kasan_check_write", scope: !7327, file: !7327, line: 44, type: !7328, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7333)
!7327 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7328 = !DISubroutineType(types: !7329)
!7329 = !{!617, !7330, !34}
!7330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7331, size: 64)
!7331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7332)
!7332 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7333 = !{!7334, !7335}
!7334 = !DILocalVariable(name: "p", arg: 1, scope: !7326, file: !7327, line: 44, type: !7330)
!7335 = !DILocalVariable(name: "size", arg: 2, scope: !7326, file: !7327, line: 44, type: !34)
!7336 = !DILocation(line: 44, column: 59, scope: !7326)
!7337 = !DILocation(line: 44, column: 75, scope: !7326)
!7338 = !DILocation(line: 46, column: 2, scope: !7326)
!7339 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7340, file: !7340, line: 229, type: !7341, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7343)
!7340 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7341 = !DISubroutineType(types: !7342)
!7342 = !{null, !7330, !798, !50}
!7343 = !{!7344, !7345, !7346}
!7344 = !DILocalVariable(name: "ptr", arg: 1, scope: !7339, file: !7340, line: 229, type: !7330)
!7345 = !DILocalVariable(name: "size", arg: 2, scope: !7339, file: !7340, line: 229, type: !798)
!7346 = !DILocalVariable(name: "type", arg: 3, scope: !7339, file: !7340, line: 230, type: !50)
!7347 = !DILocation(line: 229, column: 60, scope: !7339)
!7348 = !DILocation(line: 229, column: 72, scope: !7339)
!7349 = !DILocation(line: 230, column: 15, scope: !7339)
!7350 = !DILocation(line: 230, column: 23, scope: !7339)
!7351 = distinct !DISubprogram(name: "copy_user_generic", scope: !7295, file: !7295, line: 105, type: !6010, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802, retainedNodes: !7352)
!7352 = !{!7353, !7354, !7355}
!7353 = !DILocalVariable(name: "to", arg: 1, scope: !7351, file: !7295, line: 105, type: !38)
!7354 = !DILocalVariable(name: "from", arg: 2, scope: !7351, file: !7295, line: 105, type: !1948)
!7355 = !DILocalVariable(name: "len", arg: 3, scope: !7351, file: !7295, line: 105, type: !27)
!7356 = !DILocation(line: 105, column: 25, scope: !7351)
!7357 = !DILocation(line: 105, column: 41, scope: !7351)
!7358 = !DILocation(line: 105, column: 61, scope: !7351)
!7359 = !DILocation(line: 107, column: 2, scope: !7351)
!7360 = !DILocation(line: 112, column: 2, scope: !7351)
!7361 = !{i64 4169912, i64 4169917, i64 2151656607, i64 2151656613, i64 2151656629, i64 2151656645, i64 2151656672, i64 2151656995, i64 2151656206, i64 2151657001, i64 2151657049, i64 2151657113, i64 2151657177, i64 2151657234, i64 2151656287, i64 2151656312, i64 2151657518, i64 2151657659, i64 2151657579, i64 2151657673, i64 2151656404, i64 4170014, i64 2151657738, i64 2151657782, i64 2151657805, i64 2151657838, i64 2151657869, i64 2151657908}
!7362 = !DILocation(line: 120, column: 2, scope: !7351)
!7363 = !DILocation(line: 121, column: 9, scope: !7351)
!7364 = !DILocation(line: 121, column: 2, scope: !7351)
!7365 = distinct !DISubprogram(name: "stac", scope: !7366, file: !7366, line: 36, type: !2547, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802)
!7366 = !DIFile(filename: "./arch/x86/include/asm/smap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f3f8be6e1b47df7f19894949839b589")
!7367 = !DILocation(line: 39, column: 2, scope: !7365)
!7368 = !{i64 2151096794, i64 2151096822, i64 2151096828, i64 2151096844, i64 2151096860, i64 2151096887, i64 2151097201, i64 2151096544, i64 2151097207, i64 2151097255, i64 2151097319, i64 2151097383, i64 2151097440, i64 2151096625, i64 2151096650, i64 2151097647, i64 2151097783, i64 2151097708, i64 2151097797, i64 2151096742}
!7369 = !DILocation(line: 40, column: 1, scope: !7365)
!7370 = distinct !DISubprogram(name: "clac", scope: !7366, file: !7366, line: 30, type: !2547, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5802)
!7371 = !DILocation(line: 33, column: 2, scope: !7370)
!7372 = !{i64 2151095127, i64 2151095155, i64 2151095161, i64 2151095177, i64 2151095193, i64 2151095220, i64 2151095534, i64 2151094877, i64 2151095540, i64 2151095588, i64 2151095652, i64 2151095716, i64 2151095773, i64 2151094958, i64 2151094983, i64 2151095980, i64 2151096116, i64 2151096041, i64 2151096130, i64 2151095075}
!7373 = !DILocation(line: 34, column: 1, scope: !7370)
