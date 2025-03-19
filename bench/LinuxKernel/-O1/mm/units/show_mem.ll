; ModuleID = 'mm/show_mem.c'
source_filename = "mm/show_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__totalram_pages: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _totalram_pages ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_si_mem_available: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad si_mem_available ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_si_meminfo: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad si_meminfo ; .previous"

%struct.atomic64_t = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.nodemask_t = type { [1 x i64] }
%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.pglist_data = type { [4 x %struct.zone], [2 x %struct.zonelist], i32, i64, i64, i64, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i64, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i64, i64, i64, [56 x i8], %struct.cacheline_padding, %struct.lruvec, i64, [48 x i8], %struct.cacheline_padding, ptr, [41 x %struct.atomic64_t], ptr, [40 x i8] }
%struct.zone = type { [4 x i64], i64, i64, [4 x i64], i32, ptr, ptr, ptr, i32, i32, i64, %struct.atomic64_t, i64, i64, ptr, i32, [28 x i8], %struct.cacheline_padding, [11 x %struct.free_area], i64, %struct.spinlock, [28 x i8], %struct.cacheline_padding, i64, i64, [2 x i64], i64, i64, i32, i32, i32, i8, i8, [2 x i8], %struct.cacheline_padding, [10 x %struct.atomic64_t], [6 x %struct.atomic64_t] }
%struct.free_area = type { [4 x %struct.list_head], i64 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.zonelist = type { [257 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i64, i64, %struct.atomic64_t, [2 x i64], i64 }
%struct.cacheline_padding = type { [0 x i8] }
%struct.sysinfo = type { i64, [3 x i64], i64, i64, i64, i64, i64, i64, i16, i16, i64, i64, i32, [0 x i8] }
%struct.per_cpu_pages = type { %struct.spinlock, i32, i32, i32, i16, i16, [12 x %struct.list_head], [40 x i8] }
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
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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

@_totalram_pages = hidden global %struct.atomic64_t zeroinitializer, section ".data..read_mostly", align 8, !dbg !0
@__UNIQUE_ID___addressable__totalram_pages364 = internal global ptr @_totalram_pages, section ".discard.addressable", align 8, !dbg !5912
@totalreserve_pages = hidden global i64 0, section ".data..read_mostly", align 8, !dbg !5934
@__UNIQUE_ID___addressable_si_mem_available369 = internal global ptr @si_mem_available, section ".discard.addressable", align 8, !dbg !5914
@__UNIQUE_ID___addressable_si_meminfo370 = internal global ptr @si_meminfo, section ".discard.addressable", align 8, !dbg !5916
@node_data = external dso_local global [0 x ptr], align 8
@.str = private unnamed_addr constant [11 x i8] c"Mem-Info:\0A\00", align 1, !dbg !5918
@.str.1 = private unnamed_addr constant [15 x i8] c"%lu pages RAM\0A\00", align 1, !dbg !5921
@.str.2 = private unnamed_addr constant [31 x i8] c"%lu pages HighMem/MovableOnly\0A\00", align 1, !dbg !5926
@.str.3 = private unnamed_addr constant [20 x i8] c"%lu pages reserved\0A\00", align 1, !dbg !5931
@totalcma_pages = hidden global i64 0, section ".data..read_mostly", align 8, !dbg !5936
@vm_zone_stat = external dso_local global [10 x %struct.atomic64_t], align 16
@vm_node_stat = external dso_local global [41 x %struct.atomic64_t], align 16
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@.str.4 = private unnamed_addr constant [325 x i8] c"active_anon:%lu inactive_anon:%lu isolated_anon:%lu\0A active_file:%lu inactive_file:%lu isolated_file:%lu\0A unevictable:%lu dirty:%lu writeback:%lu\0A slab_reclaimable:%lu slab_unreclaimable:%lu\0A mapped:%lu shmem:%lu pagetables:%lu\0A sec_pagetables:%lu bounce:%lu\0A kernel_misc_reclaimable:%lu\0A free:%lu free_pcp:%lu free_cma:%lu\0A\00", align 1, !dbg !5938
@.str.5 = private unnamed_addr constant [297 x i8] c"Node %d active_anon:%lukB inactive_anon:%lukB active_file:%lukB inactive_file:%lukB unevictable:%lukB isolated(anon):%lukB isolated(file):%lukB mapped:%lukB dirty:%lukB writeback:%lukB shmem:%lukB writeback_tmp:%lukB kernel_stack:%lukB pagetables:%lukB sec_pagetables:%lukB all_unreclaimable? %s\0A\00", align 1, !dbg !5943
@.str.6 = private unnamed_addr constant [4 x i8] c"yes\00", align 1, !dbg !5948
@.str.7 = private unnamed_addr constant [3 x i8] c"no\00", align 1, !dbg !5951
@.str.8 = private unnamed_addr constant [299 x i8] c"\01c%s free:%lukB boost:%lukB min:%lukB low:%lukB high:%lukB reserved_highatomic:%luKB active_anon:%lukB inactive_anon:%lukB active_file:%lukB inactive_file:%lukB unevictable:%lukB writepending:%lukB present:%lukB managed:%lukB mlocked:%lukB bounce:%lukB free_pcp:%lukB local_pcp:%ukB free_cma:%lukB\0A\00", align 1, !dbg !5954
@.str.9 = private unnamed_addr constant [18 x i8] c"lowmem_reserve[]:\00", align 1, !dbg !5959
@.str.10 = private unnamed_addr constant [7 x i8] c"\01c %ld\00", align 1, !dbg !5964
@.str.11 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1, !dbg !5967
@.str.12 = private unnamed_addr constant [7 x i8] c"\01c%s: \00", align 1, !dbg !5969
@.str.13 = private unnamed_addr constant [13 x i8] c"\01c%lu*%lukB \00", align 1, !dbg !5971
@.str.14 = private unnamed_addr constant [11 x i8] c"\01c= %lukB\0A\00", align 1, !dbg !5976
@node_states = external dso_local global [6 x %struct.nodemask_t], align 16
@.str.15 = private unnamed_addr constant [27 x i8] c"%ld total pagecache pages\0A\00", align 1, !dbg !5978
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.16 = private unnamed_addr constant [9 x i8] c"Node %d \00", align 1, !dbg !5983
@show_migration_types.types = internal constant [4 x i8] c"UMEH", align 1, !dbg !5988
@.str.17 = private unnamed_addr constant [8 x i8] c"\01c(%s) \00", align 1, !dbg !6000
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable__totalram_pages364, ptr @__UNIQUE_ID___addressable_si_mem_available369, ptr @__UNIQUE_ID___addressable_si_meminfo370], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @si_mem_available() #0 align 16 !dbg !6011 {
entry:
  %available = alloca i64, align 8
  %pagecache = alloca i64, align 8
  %wmark_low = alloca i64, align 8
  %pages = alloca [5 x i64], align 16
  %reclaimable = alloca i64, align 8
  %zone = alloca ptr, align 8
  %lru = alloca i32, align 4
  %__UNIQUE_ID___x365 = alloca i64, align 8
  %__UNIQUE_ID___y366 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x367 = alloca i64, align 8
  %__UNIQUE_ID___y368 = alloca i64, align 8
  %tmp21 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %available) #10, !dbg !6029
  call void @llvm.dbg.declare(metadata ptr %available, metadata !6015, metadata !DIExpression()), !dbg !6030
  call void @llvm.lifetime.start.p0(i64 8, ptr %pagecache) #10, !dbg !6031
  call void @llvm.dbg.declare(metadata ptr %pagecache, metadata !6016, metadata !DIExpression()), !dbg !6032
  call void @llvm.lifetime.start.p0(i64 8, ptr %wmark_low) #10, !dbg !6033
  call void @llvm.dbg.declare(metadata ptr %wmark_low, metadata !6017, metadata !DIExpression()), !dbg !6034
  store i64 0, ptr %wmark_low, align 8, !dbg !6034
  call void @llvm.lifetime.start.p0(i64 40, ptr %pages) #10, !dbg !6035
  call void @llvm.dbg.declare(metadata ptr %pages, metadata !6018, metadata !DIExpression()), !dbg !6036
  call void @llvm.lifetime.start.p0(i64 8, ptr %reclaimable) #10, !dbg !6037
  call void @llvm.dbg.declare(metadata ptr %reclaimable, metadata !6020, metadata !DIExpression()), !dbg !6038
  call void @llvm.lifetime.start.p0(i64 8, ptr %zone) #10, !dbg !6039
  call void @llvm.dbg.declare(metadata ptr %zone, metadata !6021, metadata !DIExpression()), !dbg !6040
  call void @llvm.lifetime.start.p0(i64 4, ptr %lru) #10, !dbg !6041
  call void @llvm.dbg.declare(metadata ptr %lru, metadata !6022, metadata !DIExpression()), !dbg !6042
  store i32 0, ptr %lru, align 4, !dbg !6043
  br label %for.cond, !dbg !6045

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %lru, align 4, !dbg !6046
  %cmp = icmp slt i32 %0, 5, !dbg !6048
  br i1 %cmp, label %for.body, label %for.end, !dbg !6049

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %lru, align 4, !dbg !6050
  %add = add i32 0, %1, !dbg !6051
  %call = call i64 @global_node_page_state(i32 noundef %add) #11, !dbg !6052
  %2 = load i32, ptr %lru, align 4, !dbg !6053
  %idxprom = sext i32 %2 to i64, !dbg !6054
  %arrayidx = getelementptr [5 x i64], ptr %pages, i64 0, i64 %idxprom, !dbg !6054
  store i64 %call, ptr %arrayidx, align 8, !dbg !6055
  br label %for.inc, !dbg !6054

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %lru, align 4, !dbg !6056
  %inc = add i32 %3, 1, !dbg !6056
  store i32 %inc, ptr %lru, align 4, !dbg !6056
  br label %for.cond, !dbg !6057, !llvm.loop !6058

for.end:                                          ; preds = %for.cond
  %call1 = call ptr @first_online_pgdat() #11, !dbg !6062
  %node_zones = getelementptr inbounds %struct.pglist_data, ptr %call1, i32 0, i32 0, !dbg !6062
  %arraydecay = getelementptr inbounds [4 x %struct.zone], ptr %node_zones, i64 0, i64 0, !dbg !6062
  store ptr %arraydecay, ptr %zone, align 8, !dbg !6062
  br label %for.cond2, !dbg !6062

for.cond2:                                        ; preds = %for.inc7, %for.end
  %4 = load ptr, ptr %zone, align 8, !dbg !6064
  %tobool = icmp ne ptr %4, null, !dbg !6062
  br i1 %tobool, label %for.body3, label %for.end9, !dbg !6062

for.body3:                                        ; preds = %for.cond2
  %5 = load ptr, ptr %zone, align 8, !dbg !6066
  %_watermark = getelementptr inbounds %struct.zone, ptr %5, i32 0, i32 0, !dbg !6066
  %arrayidx4 = getelementptr [4 x i64], ptr %_watermark, i64 0, i64 1, !dbg !6066
  %6 = load i64, ptr %arrayidx4, align 8, !dbg !6066
  %7 = load ptr, ptr %zone, align 8, !dbg !6066
  %watermark_boost = getelementptr inbounds %struct.zone, ptr %7, i32 0, i32 1, !dbg !6066
  %8 = load i64, ptr %watermark_boost, align 32, !dbg !6066
  %add5 = add i64 %6, %8, !dbg !6066
  %9 = load i64, ptr %wmark_low, align 8, !dbg !6067
  %add6 = add i64 %9, %add5, !dbg !6067
  store i64 %add6, ptr %wmark_low, align 8, !dbg !6067
  br label %for.inc7, !dbg !6068

for.inc7:                                         ; preds = %for.body3
  %10 = load ptr, ptr %zone, align 8, !dbg !6064
  %call8 = call ptr @next_zone(ptr noundef %10) #11, !dbg !6064
  store ptr %call8, ptr %zone, align 8, !dbg !6064
  br label %for.cond2, !dbg !6064, !llvm.loop !6069

for.end9:                                         ; preds = %for.cond2
  %call10 = call i64 @global_zone_page_state(i32 noundef 0) #11, !dbg !6071
  %11 = load i64, ptr @totalreserve_pages, align 8, !dbg !6072
  %sub = sub i64 %call10, %11, !dbg !6073
  store i64 %sub, ptr %available, align 8, !dbg !6074
  %arrayidx11 = getelementptr [5 x i64], ptr %pages, i64 0, i64 3, !dbg !6075
  %12 = load i64, ptr %arrayidx11, align 8, !dbg !6075
  %arrayidx12 = getelementptr [5 x i64], ptr %pages, i64 0, i64 2, !dbg !6076
  %13 = load i64, ptr %arrayidx12, align 16, !dbg !6076
  %add13 = add i64 %12, %13, !dbg !6077
  store i64 %add13, ptr %pagecache, align 8, !dbg !6078
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x365) #10, !dbg !6079
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x365, metadata !6023, metadata !DIExpression()), !dbg !6079
  %14 = load i64, ptr %pagecache, align 8, !dbg !6079
  %div = udiv i64 %14, 2, !dbg !6079
  store i64 %div, ptr %__UNIQUE_ID___x365, align 8, !dbg !6079
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y366) #10, !dbg !6079
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y366, metadata !6025, metadata !DIExpression()), !dbg !6079
  %15 = load i64, ptr %wmark_low, align 8, !dbg !6079
  store i64 %15, ptr %__UNIQUE_ID___y366, align 8, !dbg !6079
  %16 = load i64, ptr %__UNIQUE_ID___x365, align 8, !dbg !6079
  %17 = load i64, ptr %__UNIQUE_ID___y366, align 8, !dbg !6079
  %cmp14 = icmp ult i64 %16, %17, !dbg !6079
  br i1 %cmp14, label %cond.true, label %cond.false, !dbg !6079

cond.true:                                        ; preds = %for.end9
  %18 = load i64, ptr %__UNIQUE_ID___x365, align 8, !dbg !6079
  br label %cond.end, !dbg !6079

cond.false:                                       ; preds = %for.end9
  %19 = load i64, ptr %__UNIQUE_ID___y366, align 8, !dbg !6079
  br label %cond.end, !dbg !6079

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %18, %cond.true ], [ %19, %cond.false ], !dbg !6079
  store i64 %cond, ptr %tmp, align 8, !dbg !6079
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y366) #10, !dbg !6080
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x365) #10, !dbg !6080
  %20 = load i64, ptr %tmp, align 8, !dbg !6079
  %21 = load i64, ptr %pagecache, align 8, !dbg !6081
  %sub15 = sub i64 %21, %20, !dbg !6081
  store i64 %sub15, ptr %pagecache, align 8, !dbg !6081
  %22 = load i64, ptr %pagecache, align 8, !dbg !6082
  %23 = load i64, ptr %available, align 8, !dbg !6083
  %add16 = add i64 %23, %22, !dbg !6083
  store i64 %add16, ptr %available, align 8, !dbg !6083
  %call17 = call i64 @global_node_page_state_pages(i32 noundef 5) #11, !dbg !6084
  %call18 = call i64 @global_node_page_state(i32 noundef 34) #11, !dbg !6085
  %add19 = add i64 %call17, %call18, !dbg !6086
  store i64 %add19, ptr %reclaimable, align 8, !dbg !6087
  %24 = load i64, ptr %reclaimable, align 8, !dbg !6088
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x367) #10, !dbg !6089
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x367, metadata !6026, metadata !DIExpression()), !dbg !6089
  %25 = load i64, ptr %reclaimable, align 8, !dbg !6089
  %div20 = udiv i64 %25, 2, !dbg !6089
  store i64 %div20, ptr %__UNIQUE_ID___x367, align 8, !dbg !6089
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y368) #10, !dbg !6089
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y368, metadata !6028, metadata !DIExpression()), !dbg !6089
  %26 = load i64, ptr %wmark_low, align 8, !dbg !6089
  store i64 %26, ptr %__UNIQUE_ID___y368, align 8, !dbg !6089
  %27 = load i64, ptr %__UNIQUE_ID___x367, align 8, !dbg !6089
  %28 = load i64, ptr %__UNIQUE_ID___y368, align 8, !dbg !6089
  %cmp22 = icmp ult i64 %27, %28, !dbg !6089
  br i1 %cmp22, label %cond.true23, label %cond.false24, !dbg !6089

cond.true23:                                      ; preds = %cond.end
  %29 = load i64, ptr %__UNIQUE_ID___x367, align 8, !dbg !6089
  br label %cond.end25, !dbg !6089

cond.false24:                                     ; preds = %cond.end
  %30 = load i64, ptr %__UNIQUE_ID___y368, align 8, !dbg !6089
  br label %cond.end25, !dbg !6089

cond.end25:                                       ; preds = %cond.false24, %cond.true23
  %cond26 = phi i64 [ %29, %cond.true23 ], [ %30, %cond.false24 ], !dbg !6089
  store i64 %cond26, ptr %tmp21, align 8, !dbg !6089
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y368) #10, !dbg !6090
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x367) #10, !dbg !6090
  %31 = load i64, ptr %tmp21, align 8, !dbg !6089
  %sub27 = sub i64 %24, %31, !dbg !6091
  %32 = load i64, ptr %available, align 8, !dbg !6092
  %add28 = add i64 %32, %sub27, !dbg !6092
  store i64 %add28, ptr %available, align 8, !dbg !6092
  %33 = load i64, ptr %available, align 8, !dbg !6093
  %cmp29 = icmp slt i64 %33, 0, !dbg !6095
  br i1 %cmp29, label %if.then, label %if.end, !dbg !6096

if.then:                                          ; preds = %cond.end25
  store i64 0, ptr %available, align 8, !dbg !6097
  br label %if.end, !dbg !6098

if.end:                                           ; preds = %if.then, %cond.end25
  %34 = load i64, ptr %available, align 8, !dbg !6099
  call void @llvm.lifetime.end.p0(i64 4, ptr %lru) #10, !dbg !6100
  call void @llvm.lifetime.end.p0(i64 8, ptr %zone) #10, !dbg !6100
  call void @llvm.lifetime.end.p0(i64 8, ptr %reclaimable) #10, !dbg !6100
  call void @llvm.lifetime.end.p0(i64 40, ptr %pages) #10, !dbg !6100
  call void @llvm.lifetime.end.p0(i64 8, ptr %wmark_low) #10, !dbg !6100
  call void @llvm.lifetime.end.p0(i64 8, ptr %pagecache) #10, !dbg !6100
  call void @llvm.lifetime.end.p0(i64 8, ptr %available) #10, !dbg !6100
  ret i64 %34, !dbg !6101
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @global_node_page_state(i32 noundef %item) #3 align 16 !dbg !6102 {
entry:
  %item.addr = alloca i32, align 4
  store i32 %item, ptr %item.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !6107, metadata !DIExpression()), !dbg !6108
  %0 = load i32, ptr %item.addr, align 4, !dbg !6109
  %call = call i64 @global_node_page_state_pages(i32 noundef %0) #11, !dbg !6110
  ret i64 %call, !dbg !6111
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6112 dso_local ptr @first_online_pgdat() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6115 dso_local ptr @next_zone(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @global_zone_page_state(i32 noundef %item) #3 align 16 !dbg !6118 {
entry:
  %item.addr = alloca i32, align 4
  %x = alloca i64, align 8
  store i32 %item, ptr %item.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !6122, metadata !DIExpression()), !dbg !6124
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #10, !dbg !6125
  call void @llvm.dbg.declare(metadata ptr %x, metadata !6123, metadata !DIExpression()), !dbg !6126
  %0 = load i32, ptr %item.addr, align 4, !dbg !6127
  %idxprom = zext i32 %0 to i64, !dbg !6128
  %arrayidx = getelementptr [10 x %struct.atomic64_t], ptr @vm_zone_stat, i64 0, i64 %idxprom, !dbg !6128
  %call = call i64 @atomic_long_read(ptr noundef %arrayidx) #11, !dbg !6129
  store i64 %call, ptr %x, align 8, !dbg !6126
  %1 = load i64, ptr %x, align 8, !dbg !6130
  %cmp = icmp slt i64 %1, 0, !dbg !6132
  br i1 %cmp, label %if.then, label %if.end, !dbg !6133

if.then:                                          ; preds = %entry
  store i64 0, ptr %x, align 8, !dbg !6134
  br label %if.end, !dbg !6135

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, ptr %x, align 8, !dbg !6136
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #10, !dbg !6137
  ret i64 %2, !dbg !6138
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @global_node_page_state_pages(i32 noundef %item) #3 align 16 !dbg !6139 {
entry:
  %item.addr = alloca i32, align 4
  %x = alloca i64, align 8
  store i32 %item, ptr %item.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !6141, metadata !DIExpression()), !dbg !6143
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #10, !dbg !6144
  call void @llvm.dbg.declare(metadata ptr %x, metadata !6142, metadata !DIExpression()), !dbg !6145
  %0 = load i32, ptr %item.addr, align 4, !dbg !6146
  %idxprom = zext i32 %0 to i64, !dbg !6147
  %arrayidx = getelementptr [41 x %struct.atomic64_t], ptr @vm_node_stat, i64 0, i64 %idxprom, !dbg !6147
  %call = call i64 @atomic_long_read(ptr noundef %arrayidx) #11, !dbg !6148
  store i64 %call, ptr %x, align 8, !dbg !6145
  %1 = load i64, ptr %x, align 8, !dbg !6149
  %cmp = icmp slt i64 %1, 0, !dbg !6151
  br i1 %cmp, label %if.then, label %if.end, !dbg !6152

if.then:                                          ; preds = %entry
  store i64 0, ptr %x, align 8, !dbg !6153
  br label %if.end, !dbg !6154

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, ptr %x, align 8, !dbg !6155
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #10, !dbg !6156
  ret i64 %2, !dbg !6157
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @si_meminfo(ptr noundef %val) #0 align 16 !dbg !6158 {
entry:
  %val.addr = alloca ptr, align 8
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6181, metadata !DIExpression()), !dbg !6182
  %call = call i64 @totalram_pages() #11, !dbg !6183
  %0 = load ptr, ptr %val.addr, align 8, !dbg !6184
  %totalram = getelementptr inbounds %struct.sysinfo, ptr %0, i32 0, i32 2, !dbg !6185
  store i64 %call, ptr %totalram, align 8, !dbg !6186
  %call1 = call i64 @global_node_page_state(i32 noundef 23) #11, !dbg !6187
  %1 = load ptr, ptr %val.addr, align 8, !dbg !6188
  %sharedram = getelementptr inbounds %struct.sysinfo, ptr %1, i32 0, i32 4, !dbg !6189
  store i64 %call1, ptr %sharedram, align 8, !dbg !6190
  %call2 = call i64 @global_zone_page_state(i32 noundef 0) #11, !dbg !6191
  %2 = load ptr, ptr %val.addr, align 8, !dbg !6192
  %freeram = getelementptr inbounds %struct.sysinfo, ptr %2, i32 0, i32 3, !dbg !6193
  store i64 %call2, ptr %freeram, align 8, !dbg !6194
  %call3 = call i64 @nr_blockdev_pages() #11, !dbg !6195
  %3 = load ptr, ptr %val.addr, align 8, !dbg !6196
  %bufferram = getelementptr inbounds %struct.sysinfo, ptr %3, i32 0, i32 5, !dbg !6197
  store i64 %call3, ptr %bufferram, align 8, !dbg !6198
  %call4 = call i64 @totalhigh_pages() #11, !dbg !6199
  %4 = load ptr, ptr %val.addr, align 8, !dbg !6200
  %totalhigh = getelementptr inbounds %struct.sysinfo, ptr %4, i32 0, i32 10, !dbg !6201
  store i64 %call4, ptr %totalhigh, align 8, !dbg !6202
  %call5 = call i32 @nr_free_highpages() #11, !dbg !6203
  %conv = zext i32 %call5 to i64, !dbg !6203
  %5 = load ptr, ptr %val.addr, align 8, !dbg !6204
  %freehigh = getelementptr inbounds %struct.sysinfo, ptr %5, i32 0, i32 11, !dbg !6205
  store i64 %conv, ptr %freehigh, align 8, !dbg !6206
  %6 = load ptr, ptr %val.addr, align 8, !dbg !6207
  %mem_unit = getelementptr inbounds %struct.sysinfo, ptr %6, i32 0, i32 12, !dbg !6208
  store i32 4096, ptr %mem_unit, align 8, !dbg !6209
  ret void, !dbg !6210
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @totalram_pages() #3 align 16 !dbg !6211 {
entry:
  %call = call i64 @atomic_long_read(ptr noundef @_totalram_pages) #11, !dbg !6214
  ret i64 %call, !dbg !6215
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6216 dso_local i64 @nr_blockdev_pages() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @totalhigh_pages() #3 align 16 !dbg !6217 {
entry:
  ret i64 0, !dbg !6219
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nr_free_highpages() #3 align 16 !dbg !6220 {
entry:
  ret i32 0, !dbg !6223
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @si_meminfo_node(ptr noundef %val, i32 noundef %nid) #0 align 16 !dbg !6224 {
entry:
  %val.addr = alloca ptr, align 8
  %nid.addr = alloca i32, align 4
  %zone_type = alloca i32, align 4
  %managed_pages = alloca i64, align 8
  %managed_highpages = alloca i64, align 8
  %free_highpages = alloca i64, align 8
  %pgdat = alloca ptr, align 8
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6228, metadata !DIExpression()), !dbg !6237
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6229, metadata !DIExpression()), !dbg !6238
  call void @llvm.lifetime.start.p0(i64 4, ptr %zone_type) #10, !dbg !6239
  call void @llvm.dbg.declare(metadata ptr %zone_type, metadata !6230, metadata !DIExpression()), !dbg !6240
  call void @llvm.lifetime.start.p0(i64 8, ptr %managed_pages) #10, !dbg !6241
  call void @llvm.dbg.declare(metadata ptr %managed_pages, metadata !6231, metadata !DIExpression()), !dbg !6242
  store i64 0, ptr %managed_pages, align 8, !dbg !6242
  call void @llvm.lifetime.start.p0(i64 8, ptr %managed_highpages) #10, !dbg !6243
  call void @llvm.dbg.declare(metadata ptr %managed_highpages, metadata !6232, metadata !DIExpression()), !dbg !6244
  store i64 0, ptr %managed_highpages, align 8, !dbg !6244
  call void @llvm.lifetime.start.p0(i64 8, ptr %free_highpages) #10, !dbg !6245
  call void @llvm.dbg.declare(metadata ptr %free_highpages, metadata !6233, metadata !DIExpression()), !dbg !6246
  store i64 0, ptr %free_highpages, align 8, !dbg !6246
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgdat) #10, !dbg !6247
  call void @llvm.dbg.declare(metadata ptr %pgdat, metadata !6234, metadata !DIExpression()), !dbg !6248
  %0 = load i32, ptr %nid.addr, align 4, !dbg !6249
  %idxprom = sext i32 %0 to i64, !dbg !6249
  %arrayidx = getelementptr [0 x ptr], ptr @node_data, i64 0, i64 %idxprom, !dbg !6249
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !6249
  store ptr %1, ptr %pgdat, align 8, !dbg !6248
  store i32 0, ptr %zone_type, align 4, !dbg !6250
  br label %for.cond, !dbg !6252

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %zone_type, align 4, !dbg !6253
  %cmp = icmp slt i32 %2, 4, !dbg !6255
  br i1 %cmp, label %for.body, label %for.end, !dbg !6256

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pgdat, align 8, !dbg !6257
  %node_zones = getelementptr inbounds %struct.pglist_data, ptr %3, i32 0, i32 0, !dbg !6258
  %4 = load i32, ptr %zone_type, align 4, !dbg !6259
  %idxprom1 = sext i32 %4 to i64, !dbg !6257
  %arrayidx2 = getelementptr [4 x %struct.zone], ptr %node_zones, i64 0, i64 %idxprom1, !dbg !6257
  %call = call i64 @zone_managed_pages(ptr noundef %arrayidx2) #11, !dbg !6260
  %5 = load i64, ptr %managed_pages, align 8, !dbg !6261
  %add = add i64 %5, %call, !dbg !6261
  store i64 %add, ptr %managed_pages, align 8, !dbg !6261
  br label %for.inc, !dbg !6262

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %zone_type, align 4, !dbg !6263
  %inc = add i32 %6, 1, !dbg !6263
  store i32 %inc, ptr %zone_type, align 4, !dbg !6263
  br label %for.cond, !dbg !6264, !llvm.loop !6265

for.end:                                          ; preds = %for.cond
  %7 = load i64, ptr %managed_pages, align 8, !dbg !6267
  %8 = load ptr, ptr %val.addr, align 8, !dbg !6268
  %totalram = getelementptr inbounds %struct.sysinfo, ptr %8, i32 0, i32 2, !dbg !6269
  store i64 %7, ptr %totalram, align 8, !dbg !6270
  %9 = load ptr, ptr %pgdat, align 8, !dbg !6271
  %call3 = call i64 @node_page_state(ptr noundef %9, i32 noundef 23) #11, !dbg !6272
  %10 = load ptr, ptr %val.addr, align 8, !dbg !6273
  %sharedram = getelementptr inbounds %struct.sysinfo, ptr %10, i32 0, i32 4, !dbg !6274
  store i64 %call3, ptr %sharedram, align 8, !dbg !6275
  %11 = load i32, ptr %nid.addr, align 4, !dbg !6276
  %call4 = call i64 @sum_zone_node_page_state(i32 noundef %11, i32 noundef 0) #11, !dbg !6277
  %12 = load ptr, ptr %val.addr, align 8, !dbg !6278
  %freeram = getelementptr inbounds %struct.sysinfo, ptr %12, i32 0, i32 3, !dbg !6279
  store i64 %call4, ptr %freeram, align 8, !dbg !6280
  %13 = load i64, ptr %managed_highpages, align 8, !dbg !6281
  %14 = load ptr, ptr %val.addr, align 8, !dbg !6282
  %totalhigh = getelementptr inbounds %struct.sysinfo, ptr %14, i32 0, i32 10, !dbg !6283
  store i64 %13, ptr %totalhigh, align 8, !dbg !6284
  %15 = load i64, ptr %free_highpages, align 8, !dbg !6285
  %16 = load ptr, ptr %val.addr, align 8, !dbg !6286
  %freehigh = getelementptr inbounds %struct.sysinfo, ptr %16, i32 0, i32 11, !dbg !6287
  store i64 %15, ptr %freehigh, align 8, !dbg !6288
  %17 = load ptr, ptr %val.addr, align 8, !dbg !6289
  %mem_unit = getelementptr inbounds %struct.sysinfo, ptr %17, i32 0, i32 12, !dbg !6290
  store i32 4096, ptr %mem_unit, align 8, !dbg !6291
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgdat) #10, !dbg !6292
  call void @llvm.lifetime.end.p0(i64 8, ptr %free_highpages) #10, !dbg !6292
  call void @llvm.lifetime.end.p0(i64 8, ptr %managed_highpages) #10, !dbg !6292
  call void @llvm.lifetime.end.p0(i64 8, ptr %managed_pages) #10, !dbg !6292
  call void @llvm.lifetime.end.p0(i64 4, ptr %zone_type) #10, !dbg !6292
  ret void, !dbg !6292
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @zone_managed_pages(ptr noundef %zone) #3 align 16 !dbg !6293 {
entry:
  %zone.addr = alloca ptr, align 8
  store ptr %zone, ptr %zone.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zone.addr, metadata !6297, metadata !DIExpression()), !dbg !6298
  %0 = load ptr, ptr %zone.addr, align 8, !dbg !6299
  %managed_pages = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 11, !dbg !6300
  %call = call i64 @atomic_long_read(ptr noundef %managed_pages) #11, !dbg !6301
  ret i64 %call, !dbg !6302
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6303 dso_local i64 @node_page_state(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6306 dso_local i64 @sum_zone_node_page_state(i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__show_mem(i32 noundef %filter, ptr noundef %nodemask, i32 noundef %max_zone_idx) #0 align 16 !dbg !6309 {
entry:
  %filter.addr = alloca i32, align 4
  %nodemask.addr = alloca ptr, align 8
  %max_zone_idx.addr = alloca i32, align 4
  %total = alloca i64, align 8
  %reserved = alloca i64, align 8
  %highmem = alloca i64, align 8
  %zone = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %tmp21 = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  store i32 %filter, ptr %filter.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %filter.addr, metadata !6314, metadata !DIExpression()), !dbg !6321
  store ptr %nodemask, ptr %nodemask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nodemask.addr, metadata !6315, metadata !DIExpression()), !dbg !6322
  store i32 %max_zone_idx, ptr %max_zone_idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_zone_idx.addr, metadata !6316, metadata !DIExpression()), !dbg !6323
  call void @llvm.lifetime.start.p0(i64 8, ptr %total) #10, !dbg !6324
  call void @llvm.dbg.declare(metadata ptr %total, metadata !6317, metadata !DIExpression()), !dbg !6325
  store i64 0, ptr %total, align 8, !dbg !6325
  call void @llvm.lifetime.start.p0(i64 8, ptr %reserved) #10, !dbg !6324
  call void @llvm.dbg.declare(metadata ptr %reserved, metadata !6318, metadata !DIExpression()), !dbg !6326
  store i64 0, ptr %reserved, align 8, !dbg !6326
  call void @llvm.lifetime.start.p0(i64 8, ptr %highmem) #10, !dbg !6324
  call void @llvm.dbg.declare(metadata ptr %highmem, metadata !6319, metadata !DIExpression()), !dbg !6327
  store i64 0, ptr %highmem, align 8, !dbg !6327
  call void @llvm.lifetime.start.p0(i64 8, ptr %zone) #10, !dbg !6328
  call void @llvm.dbg.declare(metadata ptr %zone, metadata !6320, metadata !DIExpression()), !dbg !6329
  br label %do.body, !dbg !6330

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6332

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6332

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str) #12, !dbg !6330
  store i32 %call, ptr %tmp, align 4, !dbg !6332
  %0 = load i32, ptr %tmp, align 4, !dbg !6330
  %1 = load i32, ptr %filter.addr, align 4, !dbg !6334
  %2 = load ptr, ptr %nodemask.addr, align 8, !dbg !6335
  %3 = load i32, ptr %max_zone_idx.addr, align 4, !dbg !6336
  call void @show_free_areas(i32 noundef %1, ptr noundef %2, i32 noundef %3) #11, !dbg !6337
  %call1 = call ptr @first_online_pgdat() #11, !dbg !6338
  %node_zones = getelementptr inbounds %struct.pglist_data, ptr %call1, i32 0, i32 0, !dbg !6338
  %arraydecay = getelementptr inbounds [4 x %struct.zone], ptr %node_zones, i64 0, i64 0, !dbg !6338
  store ptr %arraydecay, ptr %zone, align 8, !dbg !6338
  br label %for.cond, !dbg !6338

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load ptr, ptr %zone, align 8, !dbg !6340
  %tobool = icmp ne ptr %4, null, !dbg !6338
  br i1 %tobool, label %for.body, label %for.end, !dbg !6338

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %zone, align 8, !dbg !6342
  %call2 = call zeroext i1 @populated_zone(ptr noundef %5) #11, !dbg !6342
  br i1 %call2, label %if.else, label %if.then, !dbg !6340

if.then:                                          ; preds = %for.body
  br label %if.end11, !dbg !6340

if.else:                                          ; preds = %for.body
  %6 = load ptr, ptr %zone, align 8, !dbg !6344
  %present_pages = getelementptr inbounds %struct.zone, ptr %6, i32 0, i32 13, !dbg !6346
  %7 = load i64, ptr %present_pages, align 16, !dbg !6346
  %8 = load i64, ptr %total, align 8, !dbg !6347
  %add = add i64 %8, %7, !dbg !6347
  store i64 %add, ptr %total, align 8, !dbg !6347
  %9 = load ptr, ptr %zone, align 8, !dbg !6348
  %present_pages3 = getelementptr inbounds %struct.zone, ptr %9, i32 0, i32 13, !dbg !6349
  %10 = load i64, ptr %present_pages3, align 16, !dbg !6349
  %11 = load ptr, ptr %zone, align 8, !dbg !6350
  %call4 = call i64 @zone_managed_pages(ptr noundef %11) #11, !dbg !6351
  %sub = sub i64 %10, %call4, !dbg !6352
  %12 = load i64, ptr %reserved, align 8, !dbg !6353
  %add5 = add i64 %12, %sub, !dbg !6353
  store i64 %add5, ptr %reserved, align 8, !dbg !6353
  %13 = load ptr, ptr %zone, align 8, !dbg !6354
  %call6 = call i32 @is_highmem(ptr noundef %13) #11, !dbg !6356
  %tobool7 = icmp ne i32 %call6, 0, !dbg !6356
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !6357

if.then8:                                         ; preds = %if.else
  %14 = load ptr, ptr %zone, align 8, !dbg !6358
  %present_pages9 = getelementptr inbounds %struct.zone, ptr %14, i32 0, i32 13, !dbg !6359
  %15 = load i64, ptr %present_pages9, align 16, !dbg !6359
  %16 = load i64, ptr %highmem, align 8, !dbg !6360
  %add10 = add i64 %16, %15, !dbg !6360
  store i64 %add10, ptr %highmem, align 8, !dbg !6360
  br label %if.end, !dbg !6361

if.end:                                           ; preds = %if.then8, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  br label %for.inc, !dbg !6342

for.inc:                                          ; preds = %if.end11
  %17 = load ptr, ptr %zone, align 8, !dbg !6340
  %call12 = call ptr @next_zone(ptr noundef %17) #11, !dbg !6340
  store ptr %call12, ptr %zone, align 8, !dbg !6340
  br label %for.cond, !dbg !6340, !llvm.loop !6362

for.end:                                          ; preds = %for.cond
  br label %do.body13, !dbg !6364

do.body13:                                        ; preds = %for.end
  br label %do.cond14, !dbg !6366

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6366

do.end15:                                         ; preds = %do.cond14
  %18 = load i64, ptr %total, align 8, !dbg !6364
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i64 noundef %18) #12, !dbg !6364
  store i32 %call17, ptr %tmp16, align 4, !dbg !6366
  %19 = load i32, ptr %tmp16, align 4, !dbg !6364
  br label %do.body18, !dbg !6368

do.body18:                                        ; preds = %do.end15
  br label %do.cond19, !dbg !6370

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !6370

do.end20:                                         ; preds = %do.cond19
  %20 = load i64, ptr %highmem, align 8, !dbg !6368
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i64 noundef %20) #12, !dbg !6368
  store i32 %call22, ptr %tmp21, align 4, !dbg !6370
  %21 = load i32, ptr %tmp21, align 4, !dbg !6368
  br label %do.body23, !dbg !6372

do.body23:                                        ; preds = %do.end20
  br label %do.cond24, !dbg !6374

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !6374

do.end25:                                         ; preds = %do.cond24
  %22 = load i64, ptr %reserved, align 8, !dbg !6372
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i64 noundef %22) #12, !dbg !6372
  store i32 %call27, ptr %tmp26, align 4, !dbg !6374
  %23 = load i32, ptr %tmp26, align 4, !dbg !6372
  call void @llvm.lifetime.end.p0(i64 8, ptr %zone) #10, !dbg !6376
  call void @llvm.lifetime.end.p0(i64 8, ptr %highmem) #10, !dbg !6376
  call void @llvm.lifetime.end.p0(i64 8, ptr %reserved) #10, !dbg !6376
  call void @llvm.lifetime.end.p0(i64 8, ptr %total) #10, !dbg !6376
  ret void, !dbg !6376
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6377 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @show_free_areas(i32 noundef %filter, ptr noundef %nodemask, i32 noundef %max_zone_idx) #0 align 16 !dbg !6381 {
entry:
  %filter.addr = alloca i32, align 4
  %nodemask.addr = alloca ptr, align 8
  %max_zone_idx.addr = alloca i32, align 4
  %free_pcp = alloca i64, align 8
  %cpu = alloca i32, align 4
  %nid = alloca i32, align 4
  %zone = alloca ptr, align 8
  %pgdat = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp17 = alloca ptr, align 8
  %tmp27 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify130 = alloca ptr, align 8
  %tmp133 = alloca ptr, align 8
  %__ptr134 = alloca i64, align 8
  %tmp136 = alloca ptr, align 8
  %tmp149 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify189 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp194 = alloca i32, align 4
  %tmp197 = alloca i32, align 4
  %tmp205 = alloca i32, align 4
  %tmp214 = alloca i32, align 4
  %tmp224 = alloca i32, align 4
  %order = alloca i32, align 4
  %nr = alloca [11 x i64], align 16
  %flags = alloca i64, align 8
  %total = alloca i64, align 8
  %types = alloca [11 x i8], align 1
  %tmp258 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp265 = alloca i32, align 4
  %area = alloca ptr, align 8
  %type = alloca i32, align 4
  %tmp312 = alloca i32, align 4
  %tmp331 = alloca i32, align 4
  %tmp359 = alloca i32, align 4
  store i32 %filter, ptr %filter.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %filter.addr, metadata !6383, metadata !DIExpression()), !dbg !6443
  store ptr %nodemask, ptr %nodemask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nodemask.addr, metadata !6384, metadata !DIExpression()), !dbg !6444
  store i32 %max_zone_idx, ptr %max_zone_idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_zone_idx.addr, metadata !6385, metadata !DIExpression()), !dbg !6445
  call void @llvm.lifetime.start.p0(i64 8, ptr %free_pcp) #10, !dbg !6446
  call void @llvm.dbg.declare(metadata ptr %free_pcp, metadata !6386, metadata !DIExpression()), !dbg !6447
  store i64 0, ptr %free_pcp, align 8, !dbg !6447
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #10, !dbg !6448
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !6387, metadata !DIExpression()), !dbg !6449
  call void @llvm.lifetime.start.p0(i64 4, ptr %nid) #10, !dbg !6448
  call void @llvm.dbg.declare(metadata ptr %nid, metadata !6388, metadata !DIExpression()), !dbg !6450
  call void @llvm.lifetime.start.p0(i64 8, ptr %zone) #10, !dbg !6451
  call void @llvm.dbg.declare(metadata ptr %zone, metadata !6389, metadata !DIExpression()), !dbg !6452
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgdat) #10, !dbg !6453
  call void @llvm.dbg.declare(metadata ptr %pgdat, metadata !6390, metadata !DIExpression()), !dbg !6454
  %call = call ptr @first_online_pgdat() #11, !dbg !6455
  %node_zones = getelementptr inbounds %struct.pglist_data, ptr %call, i32 0, i32 0, !dbg !6455
  %arraydecay = getelementptr inbounds [4 x %struct.zone], ptr %node_zones, i64 0, i64 0, !dbg !6455
  store ptr %arraydecay, ptr %zone, align 8, !dbg !6455
  br label %for.cond, !dbg !6455

for.cond:                                         ; preds = %for.inc21, %entry
  %0 = load ptr, ptr %zone, align 8, !dbg !6456
  %tobool = icmp ne ptr %0, null, !dbg !6455
  br i1 %tobool, label %for.body, label %for.end23, !dbg !6455

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %zone, align 8, !dbg !6457
  %call1 = call zeroext i1 @populated_zone(ptr noundef %1) #11, !dbg !6457
  br i1 %call1, label %if.else, label %if.then, !dbg !6456

if.then:                                          ; preds = %for.body
  br label %if.end20, !dbg !6456

if.else:                                          ; preds = %for.body
  %2 = load ptr, ptr %zone, align 8, !dbg !6458
  %3 = load ptr, ptr %zone, align 8, !dbg !6458
  %zone_pgdat = getelementptr inbounds %struct.zone, ptr %3, i32 0, i32 5, !dbg !6458
  %4 = load ptr, ptr %zone_pgdat, align 8, !dbg !6458
  %node_zones2 = getelementptr inbounds %struct.pglist_data, ptr %4, i32 0, i32 0, !dbg !6458
  %arraydecay3 = getelementptr inbounds [4 x %struct.zone], ptr %node_zones2, i64 0, i64 0, !dbg !6458
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64, !dbg !6458
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay3 to i64, !dbg !6458
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6458
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 1216, !dbg !6458
  %5 = load i32, ptr %max_zone_idx.addr, align 4, !dbg !6460
  %conv = sext i32 %5 to i64, !dbg !6460
  %cmp = icmp sgt i64 %sub.ptr.div, %conv, !dbg !6461
  br i1 %cmp, label %if.then5, label %if.end, !dbg !6462

if.then5:                                         ; preds = %if.else
  br label %for.inc21, !dbg !6463

if.end:                                           ; preds = %if.else
  %6 = load i32, ptr %filter.addr, align 4, !dbg !6464
  %7 = load ptr, ptr %zone, align 8, !dbg !6466
  %call6 = call i32 @zone_to_nid(ptr noundef %7) #11, !dbg !6467
  %8 = load ptr, ptr %nodemask.addr, align 8, !dbg !6468
  %call7 = call zeroext i1 @show_mem_node_skip(i32 noundef %6, i32 noundef %call6, ptr noundef %8) #11, !dbg !6469
  br i1 %call7, label %if.then8, label %if.end9, !dbg !6470

if.then8:                                         ; preds = %if.end
  br label %for.inc21, !dbg !6471

if.end9:                                          ; preds = %if.end
  store i32 0, ptr %cpu, align 4, !dbg !6472
  br label %for.cond10, !dbg !6472

for.cond10:                                       ; preds = %for.inc, %if.end9
  %9 = load i32, ptr %cpu, align 4, !dbg !6473
  %conv11 = sext i32 %9 to i64, !dbg !6473
  %call12 = call i64 @find_next_bit(ptr noundef @__cpu_online_mask, i64 noundef 64, i64 noundef %conv11) #11, !dbg !6473
  %conv13 = trunc i64 %call12 to i32, !dbg !6473
  store i32 %conv13, ptr %cpu, align 4, !dbg !6473
  %10 = load i32, ptr %cpu, align 4, !dbg !6473
  %cmp14 = icmp ult i32 %10, 64, !dbg !6473
  br i1 %cmp14, label %for.body16, label %for.end, !dbg !6472

for.body16:                                       ; preds = %for.cond10
  br label %do.body, !dbg !6474

do.body:                                          ; preds = %for.body16
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !6475
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6391, metadata !DIExpression()), !dbg !6475
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6475
  %11 = load ptr, ptr %__vpp_verify, align 8, !dbg !6475
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !6474
  br label %do.cond, !dbg !6475

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6475

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !6476
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6400, metadata !DIExpression()), !dbg !6476
  %12 = load ptr, ptr %zone, align 8, !dbg !6476
  %per_cpu_pageset = getelementptr inbounds %struct.zone, ptr %12, i32 0, i32 6, !dbg !6476
  %13 = load ptr, ptr %per_cpu_pageset, align 32, !dbg !6476
  %14 = ptrtoint ptr %13 to i64, !dbg !6476
  store i64 %14, ptr %__ptr, align 8, !dbg !6476
  %15 = load i64, ptr %__ptr, align 8, !dbg !6476
  %16 = load i32, ptr %cpu, align 4, !dbg !6476
  %idxprom = sext i32 %16 to i64, !dbg !6476
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6476
  %17 = load i64, ptr %arrayidx, align 8, !dbg !6476
  %add = add i64 %15, %17, !dbg !6476
  %18 = inttoptr i64 %add to ptr, !dbg !6476
  store ptr %18, ptr %tmp17, align 8, !dbg !6476
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !6474
  %19 = load ptr, ptr %tmp17, align 8, !dbg !6476
  store ptr %19, ptr %tmp, align 8, !dbg !6475
  %20 = load ptr, ptr %tmp, align 8, !dbg !6474
  %count = getelementptr inbounds %struct.per_cpu_pages, ptr %20, i32 0, i32 1, !dbg !6477
  %21 = load i32, ptr %count, align 4, !dbg !6477
  %conv18 = sext i32 %21 to i64, !dbg !6478
  %22 = load i64, ptr %free_pcp, align 8, !dbg !6479
  %add19 = add i64 %22, %conv18, !dbg !6479
  store i64 %add19, ptr %free_pcp, align 8, !dbg !6479
  br label %for.inc, !dbg !6480

for.inc:                                          ; preds = %do.end
  %23 = load i32, ptr %cpu, align 4, !dbg !6473
  %inc = add i32 %23, 1, !dbg !6473
  store i32 %inc, ptr %cpu, align 4, !dbg !6473
  br label %for.cond10, !dbg !6473, !llvm.loop !6481

for.end:                                          ; preds = %for.cond10
  br label %if.end20

if.end20:                                         ; preds = %for.end, %if.then
  br label %for.inc21, !dbg !6457

for.inc21:                                        ; preds = %if.end20, %if.then8, %if.then5
  %24 = load ptr, ptr %zone, align 8, !dbg !6456
  %call22 = call ptr @next_zone(ptr noundef %24) #11, !dbg !6456
  store ptr %call22, ptr %zone, align 8, !dbg !6456
  br label %for.cond, !dbg !6456, !llvm.loop !6483

for.end23:                                        ; preds = %for.cond
  br label %do.body24, !dbg !6485

do.body24:                                        ; preds = %for.end23
  br label %do.cond25, !dbg !6487

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !6487

do.end26:                                         ; preds = %do.cond25
  %call28 = call i64 @global_node_page_state(i32 noundef 1) #11, !dbg !6485
  %call29 = call i64 @global_node_page_state(i32 noundef 0) #11, !dbg !6485
  %call30 = call i64 @global_node_page_state(i32 noundef 7) #11, !dbg !6485
  %call31 = call i64 @global_node_page_state(i32 noundef 3) #11, !dbg !6485
  %call32 = call i64 @global_node_page_state(i32 noundef 2) #11, !dbg !6485
  %call33 = call i64 @global_node_page_state(i32 noundef 8) #11, !dbg !6485
  %call34 = call i64 @global_node_page_state(i32 noundef 4) #11, !dbg !6485
  %call35 = call i64 @global_node_page_state(i32 noundef 20) #11, !dbg !6485
  %call36 = call i64 @global_node_page_state(i32 noundef 21) #11, !dbg !6485
  %call37 = call i64 @global_node_page_state_pages(i32 noundef 5) #11, !dbg !6485
  %call38 = call i64 @global_node_page_state_pages(i32 noundef 6) #11, !dbg !6485
  %call39 = call i64 @global_node_page_state(i32 noundef 18) #11, !dbg !6485
  %call40 = call i64 @global_node_page_state(i32 noundef 23) #11, !dbg !6485
  %call41 = call i64 @global_node_page_state(i32 noundef 38) #11, !dbg !6485
  %call42 = call i64 @global_node_page_state(i32 noundef 39) #11, !dbg !6485
  %call43 = call i64 @global_zone_page_state(i32 noundef 8) #11, !dbg !6485
  %call44 = call i64 @global_node_page_state(i32 noundef 34) #11, !dbg !6485
  %call45 = call i64 @global_zone_page_state(i32 noundef 0) #11, !dbg !6485
  %25 = load i64, ptr %free_pcp, align 8, !dbg !6485
  %call46 = call i64 @global_zone_page_state(i32 noundef 9) #11, !dbg !6485
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i64 noundef %call28, i64 noundef %call29, i64 noundef %call30, i64 noundef %call31, i64 noundef %call32, i64 noundef %call33, i64 noundef %call34, i64 noundef %call35, i64 noundef %call36, i64 noundef %call37, i64 noundef %call38, i64 noundef %call39, i64 noundef %call40, i64 noundef %call41, i64 noundef %call42, i64 noundef %call43, i64 noundef %call44, i64 noundef %call45, i64 noundef %25, i64 noundef %call46) #12, !dbg !6485
  store i32 %call47, ptr %tmp27, align 4, !dbg !6487
  %26 = load i32, ptr %tmp27, align 4, !dbg !6485
  %call48 = call ptr @first_online_pgdat() #11, !dbg !6489
  store ptr %call48, ptr %pgdat, align 8, !dbg !6489
  br label %for.cond49, !dbg !6489

for.cond49:                                       ; preds = %for.inc94, %do.end26
  %27 = load ptr, ptr %pgdat, align 8, !dbg !6491
  %tobool50 = icmp ne ptr %27, null, !dbg !6489
  br i1 %tobool50, label %for.body51, label %for.end96, !dbg !6489

for.body51:                                       ; preds = %for.cond49
  %28 = load i32, ptr %filter.addr, align 4, !dbg !6493
  %29 = load ptr, ptr %pgdat, align 8, !dbg !6496
  %node_id = getelementptr inbounds %struct.pglist_data, ptr %29, i32 0, i32 6, !dbg !6497
  %30 = load i32, ptr %node_id, align 64, !dbg !6497
  %31 = load ptr, ptr %nodemask.addr, align 8, !dbg !6498
  %call52 = call zeroext i1 @show_mem_node_skip(i32 noundef %28, i32 noundef %30, ptr noundef %31) #11, !dbg !6499
  br i1 %call52, label %if.then53, label %if.end54, !dbg !6500

if.then53:                                        ; preds = %for.body51
  br label %for.inc94, !dbg !6501

if.end54:                                         ; preds = %for.body51
  %32 = load ptr, ptr %pgdat, align 8, !dbg !6502
  %33 = load i32, ptr %max_zone_idx.addr, align 4, !dbg !6504
  %call55 = call zeroext i1 @node_has_managed_zones(ptr noundef %32, i32 noundef %33) #11, !dbg !6505
  br i1 %call55, label %if.end57, label %if.then56, !dbg !6506

if.then56:                                        ; preds = %if.end54
  br label %for.inc94, !dbg !6507

if.end57:                                         ; preds = %if.end54
  br label %do.body58, !dbg !6508

do.body58:                                        ; preds = %if.end57
  br label %do.cond59, !dbg !6510

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !6510

do.end60:                                         ; preds = %do.cond59
  %34 = load ptr, ptr %pgdat, align 8, !dbg !6508
  %node_id62 = getelementptr inbounds %struct.pglist_data, ptr %34, i32 0, i32 6, !dbg !6508
  %35 = load i32, ptr %node_id62, align 64, !dbg !6508
  %36 = load ptr, ptr %pgdat, align 8, !dbg !6508
  %call63 = call i64 @node_page_state(ptr noundef %36, i32 noundef 1) #11, !dbg !6508
  %shl = shl i64 %call63, 2, !dbg !6508
  %37 = load ptr, ptr %pgdat, align 8, !dbg !6508
  %call64 = call i64 @node_page_state(ptr noundef %37, i32 noundef 0) #11, !dbg !6508
  %shl65 = shl i64 %call64, 2, !dbg !6508
  %38 = load ptr, ptr %pgdat, align 8, !dbg !6508
  %call66 = call i64 @node_page_state(ptr noundef %38, i32 noundef 3) #11, !dbg !6508
  %shl67 = shl i64 %call66, 2, !dbg !6508
  %39 = load ptr, ptr %pgdat, align 8, !dbg !6508
  %call68 = call i64 @node_page_state(ptr noundef %39, i32 noundef 2) #11, !dbg !6508
  %shl69 = shl i64 %call68, 2, !dbg !6508
  %40 = load ptr, ptr %pgdat, align 8, !dbg !6508
  %call70 = call i64 @node_page_state(ptr noundef %40, i32 noundef 4) #11, !dbg !6508
  %shl71 = shl i64 %call70, 2, !dbg !6508
  %41 = load ptr, ptr %pgdat, align 8, !dbg !6508
  %call72 = call i64 @node_page_state(ptr noundef %41, i32 noundef 7) #11, !dbg !6508
  %shl73 = shl i64 %call72, 2, !dbg !6508
  %42 = load ptr, ptr %pgdat, align 8, !dbg !6508
  %call74 = call i64 @node_page_state(ptr noundef %42, i32 noundef 8) #11, !dbg !6508
  %shl75 = shl i64 %call74, 2, !dbg !6508
  %43 = load ptr, ptr %pgdat, align 8, !dbg !6508
  %call76 = call i64 @node_page_state(ptr noundef %43, i32 noundef 18) #11, !dbg !6508
  %shl77 = shl i64 %call76, 2, !dbg !6508
  %44 = load ptr, ptr %pgdat, align 8, !dbg !6508
  %call78 = call i64 @node_page_state(ptr noundef %44, i32 noundef 20) #11, !dbg !6508
  %shl79 = shl i64 %call78, 2, !dbg !6508
  %45 = load ptr, ptr %pgdat, align 8, !dbg !6508
  %call80 = call i64 @node_page_state(ptr noundef %45, i32 noundef 21) #11, !dbg !6508
  %shl81 = shl i64 %call80, 2, !dbg !6508
  %46 = load ptr, ptr %pgdat, align 8, !dbg !6508
  %call82 = call i64 @node_page_state(ptr noundef %46, i32 noundef 23) #11, !dbg !6508
  %shl83 = shl i64 %call82, 2, !dbg !6508
  %47 = load ptr, ptr %pgdat, align 8, !dbg !6508
  %call84 = call i64 @node_page_state(ptr noundef %47, i32 noundef 22) #11, !dbg !6508
  %shl85 = shl i64 %call84, 2, !dbg !6508
  %48 = load ptr, ptr %pgdat, align 8, !dbg !6508
  %call86 = call i64 @node_page_state(ptr noundef %48, i32 noundef 37) #11, !dbg !6508
  %49 = load ptr, ptr %pgdat, align 8, !dbg !6508
  %call87 = call i64 @node_page_state(ptr noundef %49, i32 noundef 38) #11, !dbg !6508
  %shl88 = shl i64 %call87, 2, !dbg !6508
  %50 = load ptr, ptr %pgdat, align 8, !dbg !6508
  %call89 = call i64 @node_page_state(ptr noundef %50, i32 noundef 39) #11, !dbg !6508
  %shl90 = shl i64 %call89, 2, !dbg !6508
  %51 = load ptr, ptr %pgdat, align 8, !dbg !6508
  %kswapd_failures = getelementptr inbounds %struct.pglist_data, ptr %51, i32 0, i32 15, !dbg !6508
  %52 = load i32, ptr %kswapd_failures, align 8, !dbg !6508
  %cmp91 = icmp sge i32 %52, 16, !dbg !6508
  %53 = zext i1 %cmp91 to i64, !dbg !6508
  %cond = select i1 %cmp91, ptr @.str.6, ptr @.str.7, !dbg !6508
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef %35, i64 noundef %shl, i64 noundef %shl65, i64 noundef %shl67, i64 noundef %shl69, i64 noundef %shl71, i64 noundef %shl73, i64 noundef %shl75, i64 noundef %shl77, i64 noundef %shl79, i64 noundef %shl81, i64 noundef %shl83, i64 noundef %shl85, i64 noundef %call86, i64 noundef %shl88, i64 noundef %shl90, ptr noundef %cond) #12, !dbg !6508
  store i32 %call93, ptr %tmp61, align 4, !dbg !6510
  %54 = load i32, ptr %tmp61, align 4, !dbg !6508
  br label %for.inc94, !dbg !6512

for.inc94:                                        ; preds = %do.end60, %if.then56, %if.then53
  %55 = load ptr, ptr %pgdat, align 8, !dbg !6491
  %call95 = call ptr @next_online_pgdat(ptr noundef %55) #11, !dbg !6491
  store ptr %call95, ptr %pgdat, align 8, !dbg !6491
  br label %for.cond49, !dbg !6491, !llvm.loop !6513

for.end96:                                        ; preds = %for.cond49
  %call97 = call ptr @first_online_pgdat() #11, !dbg !6515
  %node_zones98 = getelementptr inbounds %struct.pglist_data, ptr %call97, i32 0, i32 0, !dbg !6515
  %arraydecay99 = getelementptr inbounds [4 x %struct.zone], ptr %node_zones98, i64 0, i64 0, !dbg !6515
  store ptr %arraydecay99, ptr %zone, align 8, !dbg !6515
  br label %for.cond100, !dbg !6515

for.cond100:                                      ; preds = %for.inc227, %for.end96
  %56 = load ptr, ptr %zone, align 8, !dbg !6516
  %tobool101 = icmp ne ptr %56, null, !dbg !6515
  br i1 %tobool101, label %for.body102, label %for.end229, !dbg !6515

for.body102:                                      ; preds = %for.cond100
  %57 = load ptr, ptr %zone, align 8, !dbg !6517
  %call103 = call zeroext i1 @populated_zone(ptr noundef %57) #11, !dbg !6517
  br i1 %call103, label %if.else105, label %if.then104, !dbg !6516

if.then104:                                       ; preds = %for.body102
  br label %if.end226, !dbg !6516

if.else105:                                       ; preds = %for.body102
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !6518
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6402, metadata !DIExpression()), !dbg !6519
  %58 = load ptr, ptr %zone, align 8, !dbg !6520
  %59 = load ptr, ptr %zone, align 8, !dbg !6520
  %zone_pgdat106 = getelementptr inbounds %struct.zone, ptr %59, i32 0, i32 5, !dbg !6520
  %60 = load ptr, ptr %zone_pgdat106, align 8, !dbg !6520
  %node_zones107 = getelementptr inbounds %struct.pglist_data, ptr %60, i32 0, i32 0, !dbg !6520
  %arraydecay108 = getelementptr inbounds [4 x %struct.zone], ptr %node_zones107, i64 0, i64 0, !dbg !6520
  %sub.ptr.lhs.cast109 = ptrtoint ptr %58 to i64, !dbg !6520
  %sub.ptr.rhs.cast110 = ptrtoint ptr %arraydecay108 to i64, !dbg !6520
  %sub.ptr.sub111 = sub i64 %sub.ptr.lhs.cast109, %sub.ptr.rhs.cast110, !dbg !6520
  %sub.ptr.div112 = sdiv exact i64 %sub.ptr.sub111, 1216, !dbg !6520
  %61 = load i32, ptr %max_zone_idx.addr, align 4, !dbg !6522
  %conv113 = sext i32 %61 to i64, !dbg !6522
  %cmp114 = icmp sgt i64 %sub.ptr.div112, %conv113, !dbg !6523
  br i1 %cmp114, label %if.then116, label %if.end117, !dbg !6524

if.then116:                                       ; preds = %if.else105
  store i32 19, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6525

if.end117:                                        ; preds = %if.else105
  %62 = load i32, ptr %filter.addr, align 4, !dbg !6526
  %63 = load ptr, ptr %zone, align 8, !dbg !6528
  %call118 = call i32 @zone_to_nid(ptr noundef %63) #11, !dbg !6529
  %64 = load ptr, ptr %nodemask.addr, align 8, !dbg !6530
  %call119 = call zeroext i1 @show_mem_node_skip(i32 noundef %62, i32 noundef %call118, ptr noundef %64) #11, !dbg !6531
  br i1 %call119, label %if.then120, label %if.end121, !dbg !6532

if.then120:                                       ; preds = %if.end117
  store i32 19, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6533

if.end121:                                        ; preds = %if.end117
  store i64 0, ptr %free_pcp, align 8, !dbg !6534
  store i32 0, ptr %cpu, align 4, !dbg !6535
  br label %for.cond122, !dbg !6535

for.cond122:                                      ; preds = %for.inc143, %if.end121
  %65 = load i32, ptr %cpu, align 4, !dbg !6536
  %conv123 = sext i32 %65 to i64, !dbg !6536
  %call124 = call i64 @find_next_bit(ptr noundef @__cpu_online_mask, i64 noundef 64, i64 noundef %conv123) #11, !dbg !6536
  %conv125 = trunc i64 %call124 to i32, !dbg !6536
  store i32 %conv125, ptr %cpu, align 4, !dbg !6536
  %66 = load i32, ptr %cpu, align 4, !dbg !6536
  %cmp126 = icmp ult i32 %66, 64, !dbg !6536
  br i1 %cmp126, label %for.body128, label %for.end145, !dbg !6535

for.body128:                                      ; preds = %for.cond122
  br label %do.body129, !dbg !6537

do.body129:                                       ; preds = %for.body128
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify130) #10, !dbg !6538
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify130, metadata !6407, metadata !DIExpression()), !dbg !6538
  store ptr null, ptr %__vpp_verify130, align 8, !dbg !6538
  %67 = load ptr, ptr %__vpp_verify130, align 8, !dbg !6538
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify130) #10, !dbg !6537
  br label %do.cond131, !dbg !6538

do.cond131:                                       ; preds = %do.body129
  br label %do.end132, !dbg !6538

do.end132:                                        ; preds = %do.cond131
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr134) #10, !dbg !6539
  call void @llvm.dbg.declare(metadata ptr %__ptr134, metadata !6412, metadata !DIExpression()), !dbg !6539
  %68 = load ptr, ptr %zone, align 8, !dbg !6539
  %per_cpu_pageset135 = getelementptr inbounds %struct.zone, ptr %68, i32 0, i32 6, !dbg !6539
  %69 = load ptr, ptr %per_cpu_pageset135, align 32, !dbg !6539
  %70 = ptrtoint ptr %69 to i64, !dbg !6539
  store i64 %70, ptr %__ptr134, align 8, !dbg !6539
  %71 = load i64, ptr %__ptr134, align 8, !dbg !6539
  %72 = load i32, ptr %cpu, align 4, !dbg !6539
  %idxprom137 = sext i32 %72 to i64, !dbg !6539
  %arrayidx138 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom137, !dbg !6539
  %73 = load i64, ptr %arrayidx138, align 8, !dbg !6539
  %add139 = add i64 %71, %73, !dbg !6539
  %74 = inttoptr i64 %add139 to ptr, !dbg !6539
  store ptr %74, ptr %tmp136, align 8, !dbg !6539
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr134) #10, !dbg !6537
  %75 = load ptr, ptr %tmp136, align 8, !dbg !6539
  store ptr %75, ptr %tmp133, align 8, !dbg !6538
  %76 = load ptr, ptr %tmp133, align 8, !dbg !6537
  %count140 = getelementptr inbounds %struct.per_cpu_pages, ptr %76, i32 0, i32 1, !dbg !6540
  %77 = load i32, ptr %count140, align 4, !dbg !6540
  %conv141 = sext i32 %77 to i64, !dbg !6541
  %78 = load i64, ptr %free_pcp, align 8, !dbg !6542
  %add142 = add i64 %78, %conv141, !dbg !6542
  store i64 %add142, ptr %free_pcp, align 8, !dbg !6542
  br label %for.inc143, !dbg !6543

for.inc143:                                       ; preds = %do.end132
  %79 = load i32, ptr %cpu, align 4, !dbg !6536
  %inc144 = add i32 %79, 1, !dbg !6536
  store i32 %inc144, ptr %cpu, align 4, !dbg !6536
  br label %for.cond122, !dbg !6536, !llvm.loop !6544

for.end145:                                       ; preds = %for.cond122
  %80 = load ptr, ptr %zone, align 8, !dbg !6546
  call void @show_node(ptr noundef %80) #11, !dbg !6547
  br label %do.body146, !dbg !6548

do.body146:                                       ; preds = %for.end145
  br label %do.cond147, !dbg !6549

do.cond147:                                       ; preds = %do.body146
  br label %do.end148, !dbg !6549

do.end148:                                        ; preds = %do.cond147
  %81 = load ptr, ptr %zone, align 8, !dbg !6548
  %name = getelementptr inbounds %struct.zone, ptr %81, i32 0, i32 14, !dbg !6548
  %82 = load ptr, ptr %name, align 8, !dbg !6548
  %83 = load ptr, ptr %zone, align 8, !dbg !6548
  %call150 = call i64 @zone_page_state(ptr noundef %83, i32 noundef 0) #11, !dbg !6548
  %shl151 = shl i64 %call150, 2, !dbg !6548
  %84 = load ptr, ptr %zone, align 8, !dbg !6548
  %watermark_boost = getelementptr inbounds %struct.zone, ptr %84, i32 0, i32 1, !dbg !6548
  %85 = load i64, ptr %watermark_boost, align 32, !dbg !6548
  %shl152 = shl i64 %85, 2, !dbg !6548
  %86 = load ptr, ptr %zone, align 8, !dbg !6548
  %_watermark = getelementptr inbounds %struct.zone, ptr %86, i32 0, i32 0, !dbg !6548
  %arrayidx153 = getelementptr [4 x i64], ptr %_watermark, i64 0, i64 0, !dbg !6548
  %87 = load i64, ptr %arrayidx153, align 64, !dbg !6548
  %88 = load ptr, ptr %zone, align 8, !dbg !6548
  %watermark_boost154 = getelementptr inbounds %struct.zone, ptr %88, i32 0, i32 1, !dbg !6548
  %89 = load i64, ptr %watermark_boost154, align 32, !dbg !6548
  %add155 = add i64 %87, %89, !dbg !6548
  %shl156 = shl i64 %add155, 2, !dbg !6548
  %90 = load ptr, ptr %zone, align 8, !dbg !6548
  %_watermark157 = getelementptr inbounds %struct.zone, ptr %90, i32 0, i32 0, !dbg !6548
  %arrayidx158 = getelementptr [4 x i64], ptr %_watermark157, i64 0, i64 1, !dbg !6548
  %91 = load i64, ptr %arrayidx158, align 8, !dbg !6548
  %92 = load ptr, ptr %zone, align 8, !dbg !6548
  %watermark_boost159 = getelementptr inbounds %struct.zone, ptr %92, i32 0, i32 1, !dbg !6548
  %93 = load i64, ptr %watermark_boost159, align 32, !dbg !6548
  %add160 = add i64 %91, %93, !dbg !6548
  %shl161 = shl i64 %add160, 2, !dbg !6548
  %94 = load ptr, ptr %zone, align 8, !dbg !6548
  %_watermark162 = getelementptr inbounds %struct.zone, ptr %94, i32 0, i32 0, !dbg !6548
  %arrayidx163 = getelementptr [4 x i64], ptr %_watermark162, i64 0, i64 2, !dbg !6548
  %95 = load i64, ptr %arrayidx163, align 16, !dbg !6548
  %96 = load ptr, ptr %zone, align 8, !dbg !6548
  %watermark_boost164 = getelementptr inbounds %struct.zone, ptr %96, i32 0, i32 1, !dbg !6548
  %97 = load i64, ptr %watermark_boost164, align 32, !dbg !6548
  %add165 = add i64 %95, %97, !dbg !6548
  %shl166 = shl i64 %add165, 2, !dbg !6548
  %98 = load ptr, ptr %zone, align 8, !dbg !6548
  %nr_reserved_highatomic = getelementptr inbounds %struct.zone, ptr %98, i32 0, i32 2, !dbg !6548
  %99 = load i64, ptr %nr_reserved_highatomic, align 8, !dbg !6548
  %shl167 = shl i64 %99, 2, !dbg !6548
  %100 = load ptr, ptr %zone, align 8, !dbg !6548
  %call168 = call i64 @zone_page_state(ptr noundef %100, i32 noundef 2) #11, !dbg !6548
  %shl169 = shl i64 %call168, 2, !dbg !6548
  %101 = load ptr, ptr %zone, align 8, !dbg !6548
  %call170 = call i64 @zone_page_state(ptr noundef %101, i32 noundef 1) #11, !dbg !6548
  %shl171 = shl i64 %call170, 2, !dbg !6548
  %102 = load ptr, ptr %zone, align 8, !dbg !6548
  %call172 = call i64 @zone_page_state(ptr noundef %102, i32 noundef 4) #11, !dbg !6548
  %shl173 = shl i64 %call172, 2, !dbg !6548
  %103 = load ptr, ptr %zone, align 8, !dbg !6548
  %call174 = call i64 @zone_page_state(ptr noundef %103, i32 noundef 3) #11, !dbg !6548
  %shl175 = shl i64 %call174, 2, !dbg !6548
  %104 = load ptr, ptr %zone, align 8, !dbg !6548
  %call176 = call i64 @zone_page_state(ptr noundef %104, i32 noundef 5) #11, !dbg !6548
  %shl177 = shl i64 %call176, 2, !dbg !6548
  %105 = load ptr, ptr %zone, align 8, !dbg !6548
  %call178 = call i64 @zone_page_state(ptr noundef %105, i32 noundef 6) #11, !dbg !6548
  %shl179 = shl i64 %call178, 2, !dbg !6548
  %106 = load ptr, ptr %zone, align 8, !dbg !6548
  %present_pages = getelementptr inbounds %struct.zone, ptr %106, i32 0, i32 13, !dbg !6548
  %107 = load i64, ptr %present_pages, align 16, !dbg !6548
  %shl180 = shl i64 %107, 2, !dbg !6548
  %108 = load ptr, ptr %zone, align 8, !dbg !6548
  %call181 = call i64 @zone_managed_pages(ptr noundef %108) #11, !dbg !6548
  %shl182 = shl i64 %call181, 2, !dbg !6548
  %109 = load ptr, ptr %zone, align 8, !dbg !6548
  %call183 = call i64 @zone_page_state(ptr noundef %109, i32 noundef 7) #11, !dbg !6548
  %shl184 = shl i64 %call183, 2, !dbg !6548
  %110 = load ptr, ptr %zone, align 8, !dbg !6548
  %call185 = call i64 @zone_page_state(ptr noundef %110, i32 noundef 8) #11, !dbg !6548
  %shl186 = shl i64 %call185, 2, !dbg !6548
  %111 = load i64, ptr %free_pcp, align 8, !dbg !6548
  %shl187 = shl i64 %111, 2, !dbg !6548
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #10, !dbg !6551
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6414, metadata !DIExpression()), !dbg !6551
  br label %do.body188, !dbg !6551

do.body188:                                       ; preds = %do.end148
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify189) #10, !dbg !6552
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify189, metadata !6417, metadata !DIExpression()), !dbg !6552
  store ptr null, ptr %__vpp_verify189, align 8, !dbg !6552
  %112 = load ptr, ptr %__vpp_verify189, align 8, !dbg !6552
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify189) #10, !dbg !6551
  br label %do.cond190, !dbg !6552

do.cond190:                                       ; preds = %do.body188
  br label %do.end191, !dbg !6552

do.end191:                                        ; preds = %do.cond190
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #10, !dbg !6553
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6419, metadata !DIExpression()), !dbg !6553
  %113 = load ptr, ptr %zone, align 8, !dbg !6553
  %per_cpu_pageset192 = getelementptr inbounds %struct.zone, ptr %113, i32 0, i32 6, !dbg !6553
  %114 = load ptr, ptr %per_cpu_pageset192, align 32, !dbg !6553
  %count193 = getelementptr inbounds %struct.per_cpu_pages, ptr %114, i32 0, i32 1, !dbg !6553
  %115 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %count193) #10, !dbg !6553, !srcloc !6554
  store i32 %115, ptr %pfo_val__, align 4, !dbg !6553
  %116 = load i32, ptr %pfo_val__, align 4, !dbg !6553
  %conv195 = zext i32 %116 to i64, !dbg !6553
  %conv196 = trunc i64 %conv195 to i32, !dbg !6553
  store i32 %conv196, ptr %tmp194, align 4, !dbg !6553
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #10, !dbg !6551
  %117 = load i32, ptr %tmp194, align 4, !dbg !6553
  store i32 %117, ptr %pscr_ret__, align 4, !dbg !6551
  %118 = load i32, ptr %pscr_ret__, align 4, !dbg !6551
  store i32 %118, ptr %tmp197, align 4, !dbg !6551
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #10, !dbg !6548
  %119 = load i32, ptr %tmp197, align 4, !dbg !6551
  %shl198 = shl i32 %119, 2, !dbg !6548
  %120 = load ptr, ptr %zone, align 8, !dbg !6548
  %call199 = call i64 @zone_page_state(ptr noundef %120, i32 noundef 9) #11, !dbg !6548
  %shl200 = shl i64 %call199, 2, !dbg !6548
  %call201 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, ptr noundef %82, i64 noundef %shl151, i64 noundef %shl152, i64 noundef %shl156, i64 noundef %shl161, i64 noundef %shl166, i64 noundef %shl167, i64 noundef %shl169, i64 noundef %shl171, i64 noundef %shl173, i64 noundef %shl175, i64 noundef %shl177, i64 noundef %shl179, i64 noundef %shl180, i64 noundef %shl182, i64 noundef %shl184, i64 noundef %shl186, i64 noundef %shl187, i32 noundef %shl198, i64 noundef %shl200) #12, !dbg !6548
  store i32 %call201, ptr %tmp149, align 4, !dbg !6549
  %121 = load i32, ptr %tmp149, align 4, !dbg !6548
  br label %do.body202, !dbg !6555

do.body202:                                       ; preds = %do.end191
  br label %do.cond203, !dbg !6557

do.cond203:                                       ; preds = %do.body202
  br label %do.end204, !dbg !6557

do.end204:                                        ; preds = %do.cond203
  %call206 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9) #12, !dbg !6555
  store i32 %call206, ptr %tmp205, align 4, !dbg !6557
  %122 = load i32, ptr %tmp205, align 4, !dbg !6555
  store i32 0, ptr %i, align 4, !dbg !6559
  br label %for.cond207, !dbg !6561

for.cond207:                                      ; preds = %for.inc218, %do.end204
  %123 = load i32, ptr %i, align 4, !dbg !6562
  %cmp208 = icmp slt i32 %123, 4, !dbg !6564
  br i1 %cmp208, label %for.body210, label %for.end220, !dbg !6565

for.body210:                                      ; preds = %for.cond207
  br label %do.body211, !dbg !6566

do.body211:                                       ; preds = %for.body210
  br label %do.cond212, !dbg !6568

do.cond212:                                       ; preds = %do.body211
  br label %do.end213, !dbg !6568

do.end213:                                        ; preds = %do.cond212
  %124 = load ptr, ptr %zone, align 8, !dbg !6566
  %lowmem_reserve = getelementptr inbounds %struct.zone, ptr %124, i32 0, i32 3, !dbg !6566
  %125 = load i32, ptr %i, align 4, !dbg !6566
  %idxprom215 = sext i32 %125 to i64, !dbg !6566
  %arrayidx216 = getelementptr [4 x i64], ptr %lowmem_reserve, i64 0, i64 %idxprom215, !dbg !6566
  %126 = load i64, ptr %arrayidx216, align 8, !dbg !6566
  %call217 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, i64 noundef %126) #12, !dbg !6566
  store i32 %call217, ptr %tmp214, align 4, !dbg !6568
  %127 = load i32, ptr %tmp214, align 4, !dbg !6566
  br label %for.inc218, !dbg !6570

for.inc218:                                       ; preds = %do.end213
  %128 = load i32, ptr %i, align 4, !dbg !6571
  %inc219 = add i32 %128, 1, !dbg !6571
  store i32 %inc219, ptr %i, align 4, !dbg !6571
  br label %for.cond207, !dbg !6572, !llvm.loop !6573

for.end220:                                       ; preds = %for.cond207
  br label %do.body221, !dbg !6575

do.body221:                                       ; preds = %for.end220
  br label %do.cond222, !dbg !6577

do.cond222:                                       ; preds = %do.body221
  br label %do.end223, !dbg !6577

do.end223:                                        ; preds = %do.cond222
  %call225 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11) #12, !dbg !6575
  store i32 %call225, ptr %tmp224, align 4, !dbg !6577
  %129 = load i32, ptr %tmp224, align 4, !dbg !6575
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6579
  br label %cleanup, !dbg !6579

cleanup:                                          ; preds = %do.end223, %if.then120, %if.then116
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !6579
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 19, label %for.inc227
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end226

if.end226:                                        ; preds = %cleanup.cont, %if.then104
  br label %for.inc227, !dbg !6517

for.inc227:                                       ; preds = %if.end226, %cleanup
  %130 = load ptr, ptr %zone, align 8, !dbg !6516
  %call228 = call ptr @next_zone(ptr noundef %130) #11, !dbg !6516
  store ptr %call228, ptr %zone, align 8, !dbg !6516
  br label %for.cond100, !dbg !6516, !llvm.loop !6580

for.end229:                                       ; preds = %for.cond100
  %call230 = call ptr @first_online_pgdat() #11, !dbg !6582
  %node_zones231 = getelementptr inbounds %struct.pglist_data, ptr %call230, i32 0, i32 0, !dbg !6582
  %arraydecay232 = getelementptr inbounds [4 x %struct.zone], ptr %node_zones231, i64 0, i64 0, !dbg !6582
  store ptr %arraydecay232, ptr %zone, align 8, !dbg !6582
  br label %for.cond233, !dbg !6582

for.cond233:                                      ; preds = %for.inc342, %for.end229
  %131 = load ptr, ptr %zone, align 8, !dbg !6583
  %tobool234 = icmp ne ptr %131, null, !dbg !6582
  br i1 %tobool234, label %for.body235, label %for.end344, !dbg !6582

for.body235:                                      ; preds = %for.cond233
  %132 = load ptr, ptr %zone, align 8, !dbg !6584
  %call236 = call zeroext i1 @populated_zone(ptr noundef %132) #11, !dbg !6584
  br i1 %call236, label %if.else238, label %if.then237, !dbg !6583

if.then237:                                       ; preds = %for.body235
  br label %if.end341, !dbg !6583

if.else238:                                       ; preds = %for.body235
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #10, !dbg !6585
  call void @llvm.dbg.declare(metadata ptr %order, metadata !6421, metadata !DIExpression()), !dbg !6586
  call void @llvm.lifetime.start.p0(i64 88, ptr %nr) #10, !dbg !6587
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !6426, metadata !DIExpression()), !dbg !6588
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !6587
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6428, metadata !DIExpression()), !dbg !6589
  call void @llvm.lifetime.start.p0(i64 8, ptr %total) #10, !dbg !6587
  call void @llvm.dbg.declare(metadata ptr %total, metadata !6429, metadata !DIExpression()), !dbg !6590
  store i64 0, ptr %total, align 8, !dbg !6590
  call void @llvm.lifetime.start.p0(i64 11, ptr %types) #10, !dbg !6591
  call void @llvm.dbg.declare(metadata ptr %types, metadata !6430, metadata !DIExpression()), !dbg !6592
  %133 = load ptr, ptr %zone, align 8, !dbg !6593
  %134 = load ptr, ptr %zone, align 8, !dbg !6593
  %zone_pgdat239 = getelementptr inbounds %struct.zone, ptr %134, i32 0, i32 5, !dbg !6593
  %135 = load ptr, ptr %zone_pgdat239, align 8, !dbg !6593
  %node_zones240 = getelementptr inbounds %struct.pglist_data, ptr %135, i32 0, i32 0, !dbg !6593
  %arraydecay241 = getelementptr inbounds [4 x %struct.zone], ptr %node_zones240, i64 0, i64 0, !dbg !6593
  %sub.ptr.lhs.cast242 = ptrtoint ptr %133 to i64, !dbg !6593
  %sub.ptr.rhs.cast243 = ptrtoint ptr %arraydecay241 to i64, !dbg !6593
  %sub.ptr.sub244 = sub i64 %sub.ptr.lhs.cast242, %sub.ptr.rhs.cast243, !dbg !6593
  %sub.ptr.div245 = sdiv exact i64 %sub.ptr.sub244, 1216, !dbg !6593
  %136 = load i32, ptr %max_zone_idx.addr, align 4, !dbg !6595
  %conv246 = sext i32 %136 to i64, !dbg !6595
  %cmp247 = icmp sgt i64 %sub.ptr.div245, %conv246, !dbg !6596
  br i1 %cmp247, label %if.then249, label %if.end250, !dbg !6597

if.then249:                                       ; preds = %if.else238
  store i32 40, ptr %cleanup.dest.slot, align 4
  br label %cleanup334, !dbg !6598

if.end250:                                        ; preds = %if.else238
  %137 = load i32, ptr %filter.addr, align 4, !dbg !6599
  %138 = load ptr, ptr %zone, align 8, !dbg !6601
  %call251 = call i32 @zone_to_nid(ptr noundef %138) #11, !dbg !6602
  %139 = load ptr, ptr %nodemask.addr, align 8, !dbg !6603
  %call252 = call zeroext i1 @show_mem_node_skip(i32 noundef %137, i32 noundef %call251, ptr noundef %139) #11, !dbg !6604
  br i1 %call252, label %if.then253, label %if.end254, !dbg !6605

if.then253:                                       ; preds = %if.end250
  store i32 40, ptr %cleanup.dest.slot, align 4
  br label %cleanup334, !dbg !6606

if.end254:                                        ; preds = %if.end250
  %140 = load ptr, ptr %zone, align 8, !dbg !6607
  call void @show_node(ptr noundef %140) #11, !dbg !6608
  br label %do.body255, !dbg !6609

do.body255:                                       ; preds = %if.end254
  br label %do.cond256, !dbg !6611

do.cond256:                                       ; preds = %do.body255
  br label %do.end257, !dbg !6611

do.end257:                                        ; preds = %do.cond256
  %141 = load ptr, ptr %zone, align 8, !dbg !6609
  %name259 = getelementptr inbounds %struct.zone, ptr %141, i32 0, i32 14, !dbg !6609
  %142 = load ptr, ptr %name259, align 8, !dbg !6609
  %call260 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12, ptr noundef %142) #12, !dbg !6609
  store i32 %call260, ptr %tmp258, align 4, !dbg !6611
  %143 = load i32, ptr %tmp258, align 4, !dbg !6609
  br label %do.body261, !dbg !6613

do.body261:                                       ; preds = %do.end257
  br label %do.body262, !dbg !6614

do.body262:                                       ; preds = %do.body261
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !6615
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6432, metadata !DIExpression()), !dbg !6615
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !6615
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6436, metadata !DIExpression()), !dbg !6615
  %cmp263 = icmp eq ptr %__dummy, %__dummy2, !dbg !6615
  %conv264 = zext i1 %cmp263 to i32, !dbg !6615
  store i32 1, ptr %tmp265, align 4, !dbg !6615
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !6616
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !6616
  %144 = load i32, ptr %tmp265, align 4, !dbg !6615
  %145 = load ptr, ptr %zone, align 8, !dbg !6616
  %lock = getelementptr inbounds %struct.zone, ptr %145, i32 0, i32 20, !dbg !6616
  %call266 = call ptr @spinlock_check(ptr noundef %lock) #11, !dbg !6616
  %call267 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call266) #11, !dbg !6616
  store i64 %call267, ptr %flags, align 8, !dbg !6616
  br label %do.cond268, !dbg !6616

do.cond268:                                       ; preds = %do.body262
  br label %do.end269, !dbg !6616

do.end269:                                        ; preds = %do.cond268
  br label %do.cond270, !dbg !6614

do.cond270:                                       ; preds = %do.end269
  br label %do.end271, !dbg !6614

do.end271:                                        ; preds = %do.cond270
  store i32 0, ptr %order, align 4, !dbg !6617
  br label %for.cond272, !dbg !6618

for.cond272:                                      ; preds = %for.inc301, %do.end271
  %146 = load i32, ptr %order, align 4, !dbg !6619
  %cmp273 = icmp ult i32 %146, 11, !dbg !6620
  br i1 %cmp273, label %for.body275, label %for.end303, !dbg !6621

for.body275:                                      ; preds = %for.cond272
  call void @llvm.lifetime.start.p0(i64 8, ptr %area) #10, !dbg !6622
  call void @llvm.dbg.declare(metadata ptr %area, metadata !6437, metadata !DIExpression()), !dbg !6623
  %147 = load ptr, ptr %zone, align 8, !dbg !6624
  %free_area = getelementptr inbounds %struct.zone, ptr %147, i32 0, i32 18, !dbg !6625
  %148 = load i32, ptr %order, align 4, !dbg !6626
  %idxprom276 = zext i32 %148 to i64, !dbg !6624
  %arrayidx277 = getelementptr [11 x %struct.free_area], ptr %free_area, i64 0, i64 %idxprom276, !dbg !6624
  store ptr %arrayidx277, ptr %area, align 8, !dbg !6623
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #10, !dbg !6627
  call void @llvm.dbg.declare(metadata ptr %type, metadata !6442, metadata !DIExpression()), !dbg !6628
  %149 = load ptr, ptr %area, align 8, !dbg !6629
  %nr_free = getelementptr inbounds %struct.free_area, ptr %149, i32 0, i32 1, !dbg !6630
  %150 = load i64, ptr %nr_free, align 8, !dbg !6630
  %151 = load i32, ptr %order, align 4, !dbg !6631
  %idxprom278 = zext i32 %151 to i64, !dbg !6632
  %arrayidx279 = getelementptr [11 x i64], ptr %nr, i64 0, i64 %idxprom278, !dbg !6632
  store i64 %150, ptr %arrayidx279, align 8, !dbg !6633
  %152 = load i32, ptr %order, align 4, !dbg !6634
  %idxprom280 = zext i32 %152 to i64, !dbg !6635
  %arrayidx281 = getelementptr [11 x i64], ptr %nr, i64 0, i64 %idxprom280, !dbg !6635
  %153 = load i64, ptr %arrayidx281, align 8, !dbg !6635
  %154 = load i32, ptr %order, align 4, !dbg !6636
  %sh_prom = zext i32 %154 to i64, !dbg !6637
  %shl282 = shl i64 %153, %sh_prom, !dbg !6637
  %155 = load i64, ptr %total, align 8, !dbg !6638
  %add283 = add i64 %155, %shl282, !dbg !6638
  store i64 %add283, ptr %total, align 8, !dbg !6638
  %156 = load i32, ptr %order, align 4, !dbg !6639
  %idxprom284 = zext i32 %156 to i64, !dbg !6640
  %arrayidx285 = getelementptr [11 x i8], ptr %types, i64 0, i64 %idxprom284, !dbg !6640
  store i8 0, ptr %arrayidx285, align 1, !dbg !6641
  store i32 0, ptr %type, align 4, !dbg !6642
  br label %for.cond286, !dbg !6644

for.cond286:                                      ; preds = %for.inc298, %for.body275
  %157 = load i32, ptr %type, align 4, !dbg !6645
  %cmp287 = icmp slt i32 %157, 4, !dbg !6647
  br i1 %cmp287, label %for.body289, label %for.end300, !dbg !6648

for.body289:                                      ; preds = %for.cond286
  %158 = load ptr, ptr %area, align 8, !dbg !6649
  %159 = load i32, ptr %type, align 4, !dbg !6652
  %call290 = call zeroext i1 @free_area_empty(ptr noundef %158, i32 noundef %159) #11, !dbg !6653
  br i1 %call290, label %if.end297, label %if.then291, !dbg !6654

if.then291:                                       ; preds = %for.body289
  %160 = load i32, ptr %type, align 4, !dbg !6655
  %shl292 = shl i32 1, %160, !dbg !6656
  %161 = load i32, ptr %order, align 4, !dbg !6657
  %idxprom293 = zext i32 %161 to i64, !dbg !6658
  %arrayidx294 = getelementptr [11 x i8], ptr %types, i64 0, i64 %idxprom293, !dbg !6658
  %162 = load i8, ptr %arrayidx294, align 1, !dbg !6659
  %conv295 = zext i8 %162 to i32, !dbg !6659
  %or = or i32 %conv295, %shl292, !dbg !6659
  %conv296 = trunc i32 %or to i8, !dbg !6659
  store i8 %conv296, ptr %arrayidx294, align 1, !dbg !6659
  br label %if.end297, !dbg !6658

if.end297:                                        ; preds = %if.then291, %for.body289
  br label %for.inc298, !dbg !6660

for.inc298:                                       ; preds = %if.end297
  %163 = load i32, ptr %type, align 4, !dbg !6661
  %inc299 = add i32 %163, 1, !dbg !6661
  store i32 %inc299, ptr %type, align 4, !dbg !6661
  br label %for.cond286, !dbg !6662, !llvm.loop !6663

for.end300:                                       ; preds = %for.cond286
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #10, !dbg !6665
  call void @llvm.lifetime.end.p0(i64 8, ptr %area) #10, !dbg !6665
  br label %for.inc301, !dbg !6666

for.inc301:                                       ; preds = %for.end300
  %164 = load i32, ptr %order, align 4, !dbg !6667
  %inc302 = add i32 %164, 1, !dbg !6667
  store i32 %inc302, ptr %order, align 4, !dbg !6667
  br label %for.cond272, !dbg !6668, !llvm.loop !6669

for.end303:                                       ; preds = %for.cond272
  %165 = load ptr, ptr %zone, align 8, !dbg !6671
  %lock304 = getelementptr inbounds %struct.zone, ptr %165, i32 0, i32 20, !dbg !6672
  %166 = load i64, ptr %flags, align 8, !dbg !6673
  call void @spin_unlock_irqrestore(ptr noundef %lock304, i64 noundef %166) #11, !dbg !6674
  store i32 0, ptr %order, align 4, !dbg !6675
  br label %for.cond305, !dbg !6677

for.cond305:                                      ; preds = %for.inc325, %for.end303
  %167 = load i32, ptr %order, align 4, !dbg !6678
  %cmp306 = icmp ult i32 %167, 11, !dbg !6680
  br i1 %cmp306, label %for.body308, label %for.end327, !dbg !6681

for.body308:                                      ; preds = %for.cond305
  br label %do.body309, !dbg !6682

do.body309:                                       ; preds = %for.body308
  br label %do.cond310, !dbg !6685

do.cond310:                                       ; preds = %do.body309
  br label %do.end311, !dbg !6685

do.end311:                                        ; preds = %do.cond310
  %168 = load i32, ptr %order, align 4, !dbg !6682
  %idxprom313 = zext i32 %168 to i64, !dbg !6682
  %arrayidx314 = getelementptr [11 x i64], ptr %nr, i64 0, i64 %idxprom313, !dbg !6682
  %169 = load i64, ptr %arrayidx314, align 8, !dbg !6682
  %170 = load i32, ptr %order, align 4, !dbg !6682
  %sh_prom315 = zext i32 %170 to i64, !dbg !6682
  %shl316 = shl i64 4, %sh_prom315, !dbg !6682
  %call317 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, i64 noundef %169, i64 noundef %shl316) #12, !dbg !6682
  store i32 %call317, ptr %tmp312, align 4, !dbg !6685
  %171 = load i32, ptr %tmp312, align 4, !dbg !6682
  %172 = load i32, ptr %order, align 4, !dbg !6687
  %idxprom318 = zext i32 %172 to i64, !dbg !6689
  %arrayidx319 = getelementptr [11 x i64], ptr %nr, i64 0, i64 %idxprom318, !dbg !6689
  %173 = load i64, ptr %arrayidx319, align 8, !dbg !6689
  %tobool320 = icmp ne i64 %173, 0, !dbg !6689
  br i1 %tobool320, label %if.then321, label %if.end324, !dbg !6690

if.then321:                                       ; preds = %do.end311
  %174 = load i32, ptr %order, align 4, !dbg !6691
  %idxprom322 = zext i32 %174 to i64, !dbg !6692
  %arrayidx323 = getelementptr [11 x i8], ptr %types, i64 0, i64 %idxprom322, !dbg !6692
  %175 = load i8, ptr %arrayidx323, align 1, !dbg !6692
  call void @show_migration_types(i8 noundef zeroext %175) #11, !dbg !6693
  br label %if.end324, !dbg !6693

if.end324:                                        ; preds = %if.then321, %do.end311
  br label %for.inc325, !dbg !6694

for.inc325:                                       ; preds = %if.end324
  %176 = load i32, ptr %order, align 4, !dbg !6695
  %inc326 = add i32 %176, 1, !dbg !6695
  store i32 %inc326, ptr %order, align 4, !dbg !6695
  br label %for.cond305, !dbg !6696, !llvm.loop !6697

for.end327:                                       ; preds = %for.cond305
  br label %do.body328, !dbg !6699

do.body328:                                       ; preds = %for.end327
  br label %do.cond329, !dbg !6701

do.cond329:                                       ; preds = %do.body328
  br label %do.end330, !dbg !6701

do.end330:                                        ; preds = %do.cond329
  %177 = load i64, ptr %total, align 8, !dbg !6699
  %shl332 = shl i64 %177, 2, !dbg !6699
  %call333 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14, i64 noundef %shl332) #12, !dbg !6699
  store i32 %call333, ptr %tmp331, align 4, !dbg !6701
  %178 = load i32, ptr %tmp331, align 4, !dbg !6699
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6703
  br label %cleanup334, !dbg !6703

cleanup334:                                       ; preds = %do.end330, %if.then253, %if.then249
  call void @llvm.lifetime.end.p0(i64 11, ptr %types) #10, !dbg !6703
  call void @llvm.lifetime.end.p0(i64 8, ptr %total) #10, !dbg !6703
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !6703
  call void @llvm.lifetime.end.p0(i64 88, ptr %nr) #10, !dbg !6703
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #10, !dbg !6703
  %cleanup.dest339 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest339, label %unreachable [
    i32 0, label %cleanup.cont340
    i32 40, label %for.inc342
  ]

cleanup.cont340:                                  ; preds = %cleanup334
  br label %if.end341

if.end341:                                        ; preds = %cleanup.cont340, %if.then237
  br label %for.inc342, !dbg !6584

for.inc342:                                       ; preds = %if.end341, %cleanup334
  %179 = load ptr, ptr %zone, align 8, !dbg !6583
  %call343 = call ptr @next_zone(ptr noundef %179) #11, !dbg !6583
  store ptr %call343, ptr %zone, align 8, !dbg !6583
  br label %for.cond233, !dbg !6583, !llvm.loop !6704

for.end344:                                       ; preds = %for.cond233
  %call345 = call i32 @__first_node(ptr noundef getelementptr inbounds ([6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 1)) #11, !dbg !6706
  store i32 %call345, ptr %nid, align 4, !dbg !6706
  br label %for.cond346, !dbg !6706

for.cond346:                                      ; preds = %for.inc353, %for.end344
  %180 = load i32, ptr %nid, align 4, !dbg !6708
  %cmp347 = icmp slt i32 %180, 64, !dbg !6708
  br i1 %cmp347, label %for.body349, label %for.end355, !dbg !6706

for.body349:                                      ; preds = %for.cond346
  %181 = load i32, ptr %filter.addr, align 4, !dbg !6710
  %182 = load i32, ptr %nid, align 4, !dbg !6713
  %183 = load ptr, ptr %nodemask.addr, align 8, !dbg !6714
  %call350 = call zeroext i1 @show_mem_node_skip(i32 noundef %181, i32 noundef %182, ptr noundef %183) #11, !dbg !6715
  br i1 %call350, label %if.then351, label %if.end352, !dbg !6716

if.then351:                                       ; preds = %for.body349
  br label %for.inc353, !dbg !6717

if.end352:                                        ; preds = %for.body349
  %184 = load i32, ptr %nid, align 4, !dbg !6718
  call void @hugetlb_show_meminfo_node(i32 noundef %184) #11, !dbg !6719
  br label %for.inc353, !dbg !6720

for.inc353:                                       ; preds = %if.end352, %if.then351
  %185 = load i32, ptr %nid, align 4, !dbg !6708
  %call354 = call i32 @__next_node(i32 noundef %185, ptr noundef getelementptr inbounds ([6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 1)) #11, !dbg !6708
  store i32 %call354, ptr %nid, align 4, !dbg !6708
  br label %for.cond346, !dbg !6708, !llvm.loop !6721

for.end355:                                       ; preds = %for.cond346
  br label %do.body356, !dbg !6723

do.body356:                                       ; preds = %for.end355
  br label %do.cond357, !dbg !6725

do.cond357:                                       ; preds = %do.body356
  br label %do.end358, !dbg !6725

do.end358:                                        ; preds = %do.cond357
  %call360 = call i64 @global_node_page_state(i32 noundef 19) #11, !dbg !6723
  %call361 = call i32 (ptr, ...) @_printk(ptr noundef @.str.15, i64 noundef %call360) #12, !dbg !6723
  store i32 %call361, ptr %tmp359, align 4, !dbg !6725
  %186 = load i32, ptr %tmp359, align 4, !dbg !6723
  call void @show_swap_cache_info() #11, !dbg !6727
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgdat) #10, !dbg !6728
  call void @llvm.lifetime.end.p0(i64 8, ptr %zone) #10, !dbg !6728
  call void @llvm.lifetime.end.p0(i64 4, ptr %nid) #10, !dbg !6728
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #10, !dbg !6728
  call void @llvm.lifetime.end.p0(i64 8, ptr %free_pcp) #10, !dbg !6728
  ret void, !dbg !6728

unreachable:                                      ; preds = %cleanup334, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @populated_zone(ptr noundef %zone) #3 align 16 !dbg !6729 {
entry:
  %zone.addr = alloca ptr, align 8
  store ptr %zone, ptr %zone.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zone.addr, metadata !6733, metadata !DIExpression()), !dbg !6734
  %0 = load ptr, ptr %zone.addr, align 8, !dbg !6735
  %present_pages = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 13, !dbg !6736
  %1 = load i64, ptr %present_pages, align 16, !dbg !6736
  %tobool = icmp ne i64 %1, 0, !dbg !6735
  ret i1 %tobool, !dbg !6737
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_highmem(ptr noundef %zone) #3 align 16 !dbg !6738 {
entry:
  %zone.addr = alloca ptr, align 8
  store ptr %zone, ptr %zone.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zone.addr, metadata !6742, metadata !DIExpression()), !dbg !6743
  %0 = load ptr, ptr %zone.addr, align 8, !dbg !6744
  %1 = load ptr, ptr %zone.addr, align 8, !dbg !6744
  %zone_pgdat = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 5, !dbg !6744
  %2 = load ptr, ptr %zone_pgdat, align 8, !dbg !6744
  %node_zones = getelementptr inbounds %struct.pglist_data, ptr %2, i32 0, i32 0, !dbg !6744
  %arraydecay = getelementptr inbounds [4 x %struct.zone], ptr %node_zones, i64 0, i64 0, !dbg !6744
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !6744
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay to i64, !dbg !6744
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6744
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 1216, !dbg !6744
  %conv = trunc i64 %sub.ptr.div to i32, !dbg !6744
  %call = call i32 @is_highmem_idx(i32 noundef %conv) #11, !dbg !6745
  ret i32 %call, !dbg !6746
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #6 align 16 !dbg !6747 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6754, metadata !DIExpression()), !dbg !6755
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6756
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #11, !dbg !6757
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6758
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #11, !dbg !6759
  ret i64 %call, !dbg !6760
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6761 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6769, metadata !DIExpression()), !dbg !6771
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6770, metadata !DIExpression()), !dbg !6772
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6773
  %1 = load i64, ptr %size.addr, align 8, !dbg !6774
  %conv = trunc i64 %1 to i32, !dbg !6774
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !6775
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6776
  %3 = load i64, ptr %size.addr, align 8, !dbg !6776
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !6776
  ret void, !dbg !6777
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #6 align 16 !dbg !6778 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6780, metadata !DIExpression()), !dbg !6781
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6782
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #11, !dbg !6783
  ret i64 %call, !dbg !6784
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6785 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6790, metadata !DIExpression()), !dbg !6792
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6791, metadata !DIExpression()), !dbg !6793
  ret i1 true, !dbg !6794
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6795 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6800, metadata !DIExpression()), !dbg !6803
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6801, metadata !DIExpression()), !dbg !6804
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6802, metadata !DIExpression()), !dbg !6805
  ret void, !dbg !6806
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #6 align 16 !dbg !6807 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6814, metadata !DIExpression()), !dbg !6815
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6816
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #11, !dbg !6817
  ret i64 %call, !dbg !6818
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #6 align 16 !dbg !6819 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6822, metadata !DIExpression()), !dbg !6823
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6824
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !6824
  %1 = load volatile i64, ptr %counter, align 8, !dbg !6824
  ret i64 %1, !dbg !6825
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @show_mem_node_skip(i32 noundef %flags, i32 noundef %nid, ptr noundef %nodemask) #0 align 16 !dbg !6826 {
entry:
  %retval = alloca i1, align 1
  %flags.addr = alloca i32, align 4
  %nid.addr = alloca i32, align 4
  %nodemask.addr = alloca ptr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6830, metadata !DIExpression()), !dbg !6833
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6831, metadata !DIExpression()), !dbg !6834
  store ptr %nodemask, ptr %nodemask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nodemask.addr, metadata !6832, metadata !DIExpression()), !dbg !6835
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6836
  %and = and i32 %0, 1, !dbg !6838
  %tobool = icmp ne i32 %and, 0, !dbg !6838
  br i1 %tobool, label %if.end, label %if.then, !dbg !6839

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6840
  br label %return, !dbg !6840

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %nodemask.addr, align 8, !dbg !6841
  %tobool1 = icmp ne ptr %1, null, !dbg !6841
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !6843

if.then2:                                         ; preds = %if.end
  %call = call ptr @get_current() #11, !dbg !6844
  %mems_allowed = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 139, !dbg !6844
  store ptr %mems_allowed, ptr %nodemask.addr, align 8, !dbg !6845
  br label %if.end3, !dbg !6846

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load i32, ptr %nid.addr, align 4, !dbg !6847
  %3 = call i1 @llvm.is.constant.i32(i32 %2), !dbg !6847
  br i1 %3, label %land.lhs.true, label %cond.false, !dbg !6847

land.lhs.true:                                    ; preds = %if.end3
  %4 = load ptr, ptr %nodemask.addr, align 8, !dbg !6847
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %4, i32 0, i32 0, !dbg !6847
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6847
  %5 = ptrtoint ptr %arraydecay to i64, !dbg !6847
  %cmp = icmp ne i64 %5, 0, !dbg !6847
  %conv = zext i1 %cmp to i32, !dbg !6847
  %6 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6847
  br i1 %6, label %land.lhs.true4, label %cond.false, !dbg !6847

land.lhs.true4:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %nodemask.addr, align 8, !dbg !6847
  %bits5 = getelementptr inbounds %struct.nodemask_t, ptr %7, i32 0, i32 0, !dbg !6847
  %arraydecay6 = getelementptr inbounds [1 x i64], ptr %bits5, i64 0, i64 0, !dbg !6847
  %8 = ptrtoint ptr %arraydecay6 to i64, !dbg !6847
  %cmp7 = icmp ne i64 %8, 0, !dbg !6847
  br i1 %cmp7, label %land.lhs.true9, label %cond.false, !dbg !6847

land.lhs.true9:                                   ; preds = %land.lhs.true4
  %9 = load ptr, ptr %nodemask.addr, align 8, !dbg !6847
  %bits10 = getelementptr inbounds %struct.nodemask_t, ptr %9, i32 0, i32 0, !dbg !6847
  %arraydecay11 = getelementptr inbounds [1 x i64], ptr %bits10, i64 0, i64 0, !dbg !6847
  %10 = load i64, ptr %arraydecay11, align 8, !dbg !6847
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !6847
  br i1 %11, label %cond.true, label %cond.false, !dbg !6847

cond.true:                                        ; preds = %land.lhs.true9
  %12 = load i32, ptr %nid.addr, align 4, !dbg !6847
  %conv12 = sext i32 %12 to i64, !dbg !6847
  %13 = load ptr, ptr %nodemask.addr, align 8, !dbg !6847
  %bits13 = getelementptr inbounds %struct.nodemask_t, ptr %13, i32 0, i32 0, !dbg !6847
  %arraydecay14 = getelementptr inbounds [1 x i64], ptr %bits13, i64 0, i64 0, !dbg !6847
  %call15 = call zeroext i1 @const_test_bit(i64 noundef %conv12, ptr noundef %arraydecay14) #11, !dbg !6847
  %conv16 = zext i1 %call15 to i32, !dbg !6847
  br label %cond.end, !dbg !6847

cond.false:                                       ; preds = %land.lhs.true9, %land.lhs.true4, %land.lhs.true, %if.end3
  %14 = load i32, ptr %nid.addr, align 4, !dbg !6847
  %conv17 = sext i32 %14 to i64, !dbg !6847
  %15 = load ptr, ptr %nodemask.addr, align 8, !dbg !6847
  %bits18 = getelementptr inbounds %struct.nodemask_t, ptr %15, i32 0, i32 0, !dbg !6847
  %arraydecay19 = getelementptr inbounds [1 x i64], ptr %bits18, i64 0, i64 0, !dbg !6847
  %call20 = call zeroext i1 @_test_bit(i64 noundef %conv17, ptr noundef %arraydecay19) #11, !dbg !6847
  %conv21 = zext i1 %call20 to i32, !dbg !6847
  br label %cond.end, !dbg !6847

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv16, %cond.true ], [ %conv21, %cond.false ], !dbg !6847
  %tobool22 = icmp ne i32 %cond, 0, !dbg !6848
  %lnot = xor i1 %tobool22, true, !dbg !6848
  store i1 %lnot, ptr %retval, align 1, !dbg !6849
  br label %return, !dbg !6849

return:                                           ; preds = %cond.end, %if.then
  %16 = load i1, ptr %retval, align 1, !dbg !6850
  ret i1 %16, !dbg !6850
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @zone_to_nid(ptr noundef %zone) #3 align 16 !dbg !6851 {
entry:
  %zone.addr = alloca ptr, align 8
  store ptr %zone, ptr %zone.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zone.addr, metadata !6853, metadata !DIExpression()), !dbg !6854
  %0 = load ptr, ptr %zone.addr, align 8, !dbg !6855
  %node = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 4, !dbg !6856
  %1 = load i32, ptr %node, align 16, !dbg !6856
  ret i32 %1, !dbg !6857
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !6858 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6863, metadata !DIExpression()), !dbg !6869
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6864, metadata !DIExpression()), !dbg !6870
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6865, metadata !DIExpression()), !dbg !6871
  %0 = load i64, ptr %size.addr, align 8, !dbg !6872
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6872
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !6872

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6872
  %cmp = icmp ule i64 %2, 64, !dbg !6872
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !6872

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !6872
  %cmp2 = icmp ugt i64 %3, 0, !dbg !6872
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !6873

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !6874
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6866, metadata !DIExpression()), !dbg !6875
  %4 = load i64, ptr %offset.addr, align 8, !dbg !6876
  %5 = load i64, ptr %size.addr, align 8, !dbg !6876
  %cmp3 = icmp uge i64 %4, %5, !dbg !6876
  %lnot = xor i1 %cmp3, true, !dbg !6876
  %lnot4 = xor i1 %lnot, true, !dbg !6876
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6876
  %conv = sext i32 %lnot.ext to i64, !dbg !6876
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6876
  %tobool = icmp ne i64 %expval, 0, !dbg !6876
  br i1 %tobool, label %if.then5, label %if.end, !dbg !6878

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6879
  store i64 %6, ptr %retval, align 8, !dbg !6880
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6880

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !6881
  %8 = load i64, ptr %7, align 8, !dbg !6882
  %9 = load i64, ptr %offset.addr, align 8, !dbg !6883
  %shl = shl i64 1, %9, !dbg !6883
  %sub = sub i64 -1, %shl, !dbg !6883
  %add = add i64 %sub, 1, !dbg !6883
  %10 = load i64, ptr %size.addr, align 8, !dbg !6883
  %sub6 = sub i64 %10, 1, !dbg !6883
  %sub7 = sub i64 63, %sub6, !dbg !6883
  %shr = lshr i64 -1, %sub7, !dbg !6883
  %and = and i64 %add, %shr, !dbg !6883
  %add8 = add i64 0, %and, !dbg !6883
  %and9 = and i64 %8, %add8, !dbg !6884
  store i64 %and9, ptr %val, align 8, !dbg !6885
  %11 = load i64, ptr %val, align 8, !dbg !6886
  %tobool10 = icmp ne i64 %11, 0, !dbg !6886
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !6886

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !6887
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !6887
  br i1 %13, label %cond.true11, label %cond.false, !dbg !6887

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !6887
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !6887
  %cast = trunc i64 %15 to i32, !dbg !6887
  %conv12 = sext i32 %cast to i64, !dbg !6887
  br label %cond.end, !dbg !6887

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !6887
  %call = call i64 @variable__ffs(i64 noundef %16) #11, !dbg !6887
  br label %cond.end, !dbg !6887

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !6887
  br label %cond.end14, !dbg !6886

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !6888
  br label %cond.end14, !dbg !6886

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !6886
  store i64 %cond15, ptr %retval, align 8, !dbg !6889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6889

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !6890
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !6891
  %19 = load i64, ptr %size.addr, align 8, !dbg !6892
  %20 = load i64, ptr %offset.addr, align 8, !dbg !6893
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #11, !dbg !6894
  store i64 %call17, ptr %retval, align 8, !dbg !6895
  br label %return, !dbg !6895

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !6896
  ret i64 %21, !dbg !6896
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @node_has_managed_zones(ptr noundef %pgdat, i32 noundef %max_zone_idx) #0 align 16 !dbg !6897 {
entry:
  %retval = alloca i1, align 1
  %pgdat.addr = alloca ptr, align 8
  %max_zone_idx.addr = alloca i32, align 4
  %zone_idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pgdat, ptr %pgdat.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdat.addr, metadata !6901, metadata !DIExpression()), !dbg !6904
  store i32 %max_zone_idx, ptr %max_zone_idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_zone_idx.addr, metadata !6902, metadata !DIExpression()), !dbg !6905
  call void @llvm.lifetime.start.p0(i64 4, ptr %zone_idx) #10, !dbg !6906
  call void @llvm.dbg.declare(metadata ptr %zone_idx, metadata !6903, metadata !DIExpression()), !dbg !6907
  store i32 0, ptr %zone_idx, align 4, !dbg !6908
  br label %for.cond, !dbg !6910

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %zone_idx, align 4, !dbg !6911
  %1 = load i32, ptr %max_zone_idx.addr, align 4, !dbg !6913
  %cmp = icmp sle i32 %0, %1, !dbg !6914
  br i1 %cmp, label %for.body, label %for.end, !dbg !6915

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %pgdat.addr, align 8, !dbg !6916
  %node_zones = getelementptr inbounds %struct.pglist_data, ptr %2, i32 0, i32 0, !dbg !6918
  %arraydecay = getelementptr inbounds [4 x %struct.zone], ptr %node_zones, i64 0, i64 0, !dbg !6916
  %3 = load i32, ptr %zone_idx, align 4, !dbg !6919
  %idx.ext = sext i32 %3 to i64, !dbg !6920
  %add.ptr = getelementptr %struct.zone, ptr %arraydecay, i64 %idx.ext, !dbg !6920
  %call = call i64 @zone_managed_pages(ptr noundef %add.ptr) #11, !dbg !6921
  %tobool = icmp ne i64 %call, 0, !dbg !6921
  br i1 %tobool, label %if.then, label %if.end, !dbg !6922

if.then:                                          ; preds = %for.body
  store i1 true, ptr %retval, align 1, !dbg !6923
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6923

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6924

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %zone_idx, align 4, !dbg !6925
  %inc = add i32 %4, 1, !dbg !6925
  store i32 %inc, ptr %zone_idx, align 4, !dbg !6925
  br label %for.cond, !dbg !6926, !llvm.loop !6927

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !6929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6929

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %zone_idx) #10, !dbg !6930
  %5 = load i1, ptr %retval, align 1, !dbg !6930
  ret i1 %5, !dbg !6930
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6931 dso_local ptr @next_online_pgdat(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @show_node(ptr noundef %zone) #3 align 16 !dbg !6934 {
entry:
  %zone.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %zone, ptr %zone.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zone.addr, metadata !6938, metadata !DIExpression()), !dbg !6939
  br label %do.body, !dbg !6940

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6943

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %zone.addr, align 8, !dbg !6940
  %call = call i32 @zone_to_nid(ptr noundef %0) #11, !dbg !6940
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.16, i32 noundef %call) #12, !dbg !6940
  store i32 %call1, ptr %tmp, align 4, !dbg !6943
  %1 = load i32, ptr %tmp, align 4, !dbg !6940
  ret void, !dbg !6945
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @zone_page_state(ptr noundef %zone, i32 noundef %item) #3 align 16 !dbg !6946 {
entry:
  %zone.addr = alloca ptr, align 8
  %item.addr = alloca i32, align 4
  %x = alloca i64, align 8
  store ptr %zone, ptr %zone.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %zone.addr, metadata !6950, metadata !DIExpression()), !dbg !6953
  store i32 %item, ptr %item.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !6951, metadata !DIExpression()), !dbg !6954
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #10, !dbg !6955
  call void @llvm.dbg.declare(metadata ptr %x, metadata !6952, metadata !DIExpression()), !dbg !6956
  %0 = load ptr, ptr %zone.addr, align 8, !dbg !6957
  %vm_stat = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 35, !dbg !6958
  %1 = load i32, ptr %item.addr, align 4, !dbg !6959
  %idxprom = zext i32 %1 to i64, !dbg !6957
  %arrayidx = getelementptr [10 x %struct.atomic64_t], ptr %vm_stat, i64 0, i64 %idxprom, !dbg !6957
  %call = call i64 @atomic_long_read(ptr noundef %arrayidx) #11, !dbg !6960
  store i64 %call, ptr %x, align 8, !dbg !6956
  %2 = load i64, ptr %x, align 8, !dbg !6961
  %cmp = icmp slt i64 %2, 0, !dbg !6963
  br i1 %cmp, label %if.then, label %if.end, !dbg !6964

if.then:                                          ; preds = %entry
  store i64 0, ptr %x, align 8, !dbg !6965
  br label %if.end, !dbg !6966

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %x, align 8, !dbg !6967
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #10, !dbg !6968
  ret i64 %3, !dbg !6969
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6970 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !6975 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6980, metadata !DIExpression()), !dbg !6981
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6982
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6983
  ret ptr %1, !dbg !6984
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @free_area_empty(ptr noundef %area, i32 noundef %migratetype) #3 align 16 !dbg !6985 {
entry:
  %area.addr = alloca ptr, align 8
  %migratetype.addr = alloca i32, align 4
  store ptr %area, ptr %area.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %area.addr, metadata !6989, metadata !DIExpression()), !dbg !6991
  store i32 %migratetype, ptr %migratetype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %migratetype.addr, metadata !6990, metadata !DIExpression()), !dbg !6992
  %0 = load ptr, ptr %area.addr, align 8, !dbg !6993
  %free_list = getelementptr inbounds %struct.free_area, ptr %0, i32 0, i32 0, !dbg !6994
  %1 = load i32, ptr %migratetype.addr, align 4, !dbg !6995
  %idxprom = sext i32 %1 to i64, !dbg !6993
  %arrayidx = getelementptr [4 x %struct.list_head], ptr %free_list, i64 0, i64 %idxprom, !dbg !6993
  %call = call i32 @list_empty(ptr noundef %arrayidx) #11, !dbg !6996
  %tobool = icmp ne i32 %call, 0, !dbg !6996
  ret i1 %tobool, !dbg !6997
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #6 align 16 !dbg !6998 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7002, metadata !DIExpression()), !dbg !7008
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7003, metadata !DIExpression()), !dbg !7009
  br label %do.body, !dbg !7010

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !7011
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !7004, metadata !DIExpression()), !dbg !7011
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !7011
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !7007, metadata !DIExpression()), !dbg !7011
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !7011
  %conv = zext i1 %cmp to i32, !dbg !7011
  store i32 1, ptr %tmp, align 4, !dbg !7011
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !7012
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !7012
  %0 = load i32, ptr %tmp, align 4, !dbg !7011
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !7012
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !7012
  %3 = load i64, ptr %flags.addr, align 8, !dbg !7012
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #11, !dbg !7012
  br label %do.end, !dbg !7012

do.end:                                           ; preds = %do.body
  ret void, !dbg !7013
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @show_migration_types(i8 noundef zeroext %type) #0 align 16 !dbg !5990 {
entry:
  %type.addr = alloca i8, align 1
  %tmp = alloca [5 x i8], align 1
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  store i8 %type, ptr %type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5994, metadata !DIExpression()), !dbg !7014
  call void @llvm.lifetime.start.p0(i64 5, ptr %tmp) #10, !dbg !7015
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5995, metadata !DIExpression()), !dbg !7016
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !7017
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5997, metadata !DIExpression()), !dbg !7018
  %arraydecay = getelementptr inbounds [5 x i8], ptr %tmp, i64 0, i64 0, !dbg !7019
  store ptr %arraydecay, ptr %p, align 8, !dbg !7018
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !7020
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5998, metadata !DIExpression()), !dbg !7021
  store i32 0, ptr %i, align 4, !dbg !7022
  br label %for.cond, !dbg !7024

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !7025
  %cmp = icmp slt i32 %0, 4, !dbg !7027
  br i1 %cmp, label %for.body, label %for.end, !dbg !7028

for.body:                                         ; preds = %for.cond
  %1 = load i8, ptr %type.addr, align 1, !dbg !7029
  %conv = zext i8 %1 to i32, !dbg !7029
  %2 = load i32, ptr %i, align 4, !dbg !7032
  %shl = shl i32 1, %2, !dbg !7033
  %and = and i32 %conv, %shl, !dbg !7034
  %tobool = icmp ne i32 %and, 0, !dbg !7034
  br i1 %tobool, label %if.then, label %if.end, !dbg !7035

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !dbg !7036
  %idxprom = sext i32 %3 to i64, !dbg !7037
  %arrayidx = getelementptr [4 x i8], ptr @show_migration_types.types, i64 0, i64 %idxprom, !dbg !7037
  %4 = load i8, ptr %arrayidx, align 1, !dbg !7037
  %5 = load ptr, ptr %p, align 8, !dbg !7038
  %incdec.ptr = getelementptr i8, ptr %5, i32 1, !dbg !7038
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !7038
  store i8 %4, ptr %5, align 1, !dbg !7039
  br label %if.end, !dbg !7040

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !7041

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4, !dbg !7042
  %inc = add i32 %6, 1, !dbg !7042
  store i32 %inc, ptr %i, align 4, !dbg !7042
  br label %for.cond, !dbg !7043, !llvm.loop !7044

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %p, align 8, !dbg !7046
  store i8 0, ptr %7, align 1, !dbg !7047
  br label %do.body, !dbg !7048

do.body:                                          ; preds = %for.end
  br label %do.cond, !dbg !7050

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7050

do.end:                                           ; preds = %do.cond
  %arraydecay2 = getelementptr inbounds [5 x i8], ptr %tmp, i64 0, i64 0, !dbg !7048
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.17, ptr noundef %arraydecay2) #12, !dbg !7048
  store i32 %call, ptr %tmp1, align 4, !dbg !7050
  %8 = load i32, ptr %tmp1, align 4, !dbg !7048
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !7052
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !7052
  call void @llvm.lifetime.end.p0(i64 5, ptr %tmp) #10, !dbg !7052
  ret void, !dbg !7052
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__first_node(ptr noundef %srcp) #3 align 16 !dbg !7053 {
entry:
  %srcp.addr = alloca ptr, align 8
  %__UNIQUE_ID___x138 = alloca i32, align 4
  %__UNIQUE_ID___y139 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !7059, metadata !DIExpression()), !dbg !7063
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x138) #10, !dbg !7064
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x138, metadata !7060, metadata !DIExpression()), !dbg !7064
  store i32 64, ptr %__UNIQUE_ID___x138, align 4, !dbg !7064
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y139) #10, !dbg !7064
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y139, metadata !7062, metadata !DIExpression()), !dbg !7064
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !7064
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %0, i32 0, i32 0, !dbg !7064
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !7064
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 64) #11, !dbg !7064
  %conv = trunc i64 %call to i32, !dbg !7064
  store i32 %conv, ptr %__UNIQUE_ID___y139, align 4, !dbg !7064
  %1 = load i32, ptr %__UNIQUE_ID___x138, align 4, !dbg !7064
  %2 = load i32, ptr %__UNIQUE_ID___y139, align 4, !dbg !7064
  %cmp = icmp ult i32 %1, %2, !dbg !7064
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !7064

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %__UNIQUE_ID___x138, align 4, !dbg !7064
  br label %cond.end, !dbg !7064

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___y139, align 4, !dbg !7064
  br label %cond.end, !dbg !7064

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !7064
  store i32 %cond, ptr %tmp, align 4, !dbg !7064
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y139) #10, !dbg !7065
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x138) #10, !dbg !7065
  %5 = load i32, ptr %tmp, align 4, !dbg !7064
  ret i32 %5, !dbg !7066
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7067 dso_local void @hugetlb_show_meminfo_node(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__next_node(i32 noundef %n, ptr noundef %srcp) #3 align 16 !dbg !7069 {
entry:
  %n.addr = alloca i32, align 4
  %srcp.addr = alloca ptr, align 8
  %__UNIQUE_ID___x140 = alloca i32, align 4
  %__UNIQUE_ID___y141 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7073, metadata !DIExpression()), !dbg !7078
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !7074, metadata !DIExpression()), !dbg !7079
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x140) #10, !dbg !7080
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x140, metadata !7075, metadata !DIExpression()), !dbg !7080
  store i32 64, ptr %__UNIQUE_ID___x140, align 4, !dbg !7080
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y141) #10, !dbg !7080
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y141, metadata !7077, metadata !DIExpression()), !dbg !7080
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !7080
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %0, i32 0, i32 0, !dbg !7080
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !7080
  %1 = load i32, ptr %n.addr, align 4, !dbg !7080
  %add = add i32 %1, 1, !dbg !7080
  %conv = sext i32 %add to i64, !dbg !7080
  %call = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv) #11, !dbg !7080
  %conv1 = trunc i64 %call to i32, !dbg !7080
  store i32 %conv1, ptr %__UNIQUE_ID___y141, align 4, !dbg !7080
  %2 = load i32, ptr %__UNIQUE_ID___x140, align 4, !dbg !7080
  %3 = load i32, ptr %__UNIQUE_ID___y141, align 4, !dbg !7080
  %cmp = icmp ult i32 %2, %3, !dbg !7080
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !7080

cond.true:                                        ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___x140, align 4, !dbg !7080
  br label %cond.end, !dbg !7080

cond.false:                                       ; preds = %entry
  %5 = load i32, ptr %__UNIQUE_ID___y141, align 4, !dbg !7080
  br label %cond.end, !dbg !7080

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !7080
  store i32 %cond, ptr %tmp, align 4, !dbg !7080
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y141) #10, !dbg !7081
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x140) #10, !dbg !7081
  %6 = load i32, ptr %tmp, align 4, !dbg !7080
  ret i32 %6, !dbg !7082
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7083 dso_local void @show_swap_cache_info() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !7085 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #10, !dbg !7096
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !7090, metadata !DIExpression()), !dbg !7096
  br label %do.body, !dbg !7096

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !7097
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7092, metadata !DIExpression()), !dbg !7097
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7097
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !7097
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !7096
  br label %do.cond, !dbg !7097

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7097

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #10, !dbg !7098
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !7094, metadata !DIExpression()), !dbg !7098
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #13, !dbg !7098, !srcloc !7099
  store i64 %1, ptr %pfo_val__, align 8, !dbg !7098
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !7098
  %3 = inttoptr i64 %2 to ptr, !dbg !7098
  store ptr %3, ptr %tmp, align 8, !dbg !7098
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #10, !dbg !7096
  %4 = load ptr, ptr %tmp, align 8, !dbg !7098
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !7096
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !7096
  store ptr %5, ptr %tmp1, align 8, !dbg !7096
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #10, !dbg !7100
  %6 = load ptr, ptr %tmp1, align 8, !dbg !7096
  ret ptr %6, !dbg !7101
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7102 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7110, metadata !DIExpression()), !dbg !7115
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7111, metadata !DIExpression()), !dbg !7116
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !7117
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7112, metadata !DIExpression()), !dbg !7118
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7119
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7120
  %div = udiv i64 %1, 64, !dbg !7120
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7121
  store ptr %add.ptr, ptr %p, align 8, !dbg !7118
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !7122
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7113, metadata !DIExpression()), !dbg !7123
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7124
  %rem = urem i64 %2, 64, !dbg !7124
  %shl = shl i64 1, %rem, !dbg !7124
  store i64 %shl, ptr %mask, align 8, !dbg !7123
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !7125
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7114, metadata !DIExpression()), !dbg !7126
  %3 = load ptr, ptr %p, align 8, !dbg !7127
  %4 = load i64, ptr %3, align 8, !dbg !7128
  store i64 %4, ptr %val, align 8, !dbg !7126
  %5 = load i64, ptr %val, align 8, !dbg !7129
  %6 = load i64, ptr %mask, align 8, !dbg !7130
  %and = and i64 %5, %6, !dbg !7131
  %tobool = icmp ne i64 %and, 0, !dbg !7132
  %lnot = xor i1 %tobool, true, !dbg !7132
  %lnot1 = xor i1 %lnot, true, !dbg !7133
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !7134
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !7134
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !7134
  ret i1 %lnot1, !dbg !7135
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7136 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7139, metadata !DIExpression()), !dbg !7141
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7140, metadata !DIExpression()), !dbg !7142
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7143
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7144
  %div = udiv i64 %1, 64, !dbg !7144
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7145
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !7146
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7147
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7148
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !7149
  ret i1 %call, !dbg !7150
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7151 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7154, metadata !DIExpression()), !dbg !7156
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7155, metadata !DIExpression()), !dbg !7157
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7158
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7159
  br i1 %1, label %cond.true, label %cond.false, !dbg !7159

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7160
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7161
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !7162
  %conv = zext i1 %call to i32, !dbg !7162
  br label %cond.end, !dbg !7159

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7163
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7164
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !7165
  %conv2 = zext i1 %call1 to i32, !dbg !7165
  br label %cond.end, !dbg !7159

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7159
  %tobool = icmp ne i32 %cond, 0, !dbg !7159
  ret i1 %tobool, !dbg !7166
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7167 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7171, metadata !DIExpression()), !dbg !7173
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7172, metadata !DIExpression()), !dbg !7174
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7175
  %and = and i64 %0, 63, !dbg !7176
  %shl = shl i64 1, %and, !dbg !7177
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7178
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7179
  %shr = ashr i64 %2, 6, !dbg !7180
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7178
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7178
  %and1 = and i64 %shl, %3, !dbg !7181
  %cmp = icmp ne i64 %and1, 0, !dbg !7182
  ret i1 %cmp, !dbg !7183
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !7184 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7186, metadata !DIExpression()), !dbg !7189
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7187, metadata !DIExpression()), !dbg !7190
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #10, !dbg !7191
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7188, metadata !DIExpression()), !dbg !7192
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7193
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7194
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !7195, !srcloc !7196
  %3 = icmp ult i8 %2, 2, !dbg !7195
  call void @llvm.assume(i1 %3), !dbg !7195
  store i8 %2, ptr %oldbit, align 1, !dbg !7195
  %4 = load i8, ptr %oldbit, align 1, !dbg !7197, !range !7198, !noundef !741
  %tobool = trunc i8 %4 to i1, !dbg !7197
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #10, !dbg !7199
  ret i1 %tobool, !dbg !7200
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #6 align 16 !dbg !7201 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !7205, metadata !DIExpression()), !dbg !7206
  %0 = load i64, ptr %word.addr, align 8, !dbg !7207
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #14, !dbg !7208, !srcloc !7209
  store i64 %1, ptr %word.addr, align 8, !dbg !7208
  %2 = load i64, ptr %word.addr, align 8, !dbg !7210
  ret i64 %2, !dbg !7211
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7212 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !7213 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7220, metadata !DIExpression()), !dbg !7221
  br label %do.body, !dbg !7222

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7224

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !7222
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !7222
  %1 = load volatile ptr, ptr %next, align 8, !dbg !7222
  store ptr %1, ptr %tmp, align 8, !dbg !7224
  %2 = load ptr, ptr %tmp, align 8, !dbg !7222
  %3 = load ptr, ptr %head.addr, align 8, !dbg !7226
  %cmp = icmp eq ptr %2, %3, !dbg !7227
  %conv = zext i1 %cmp to i32, !dbg !7227
  ret i32 %conv, !dbg !7228
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7229 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #3 align 16 !dbg !7232 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7236, metadata !DIExpression()), !dbg !7241
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7237, metadata !DIExpression()), !dbg !7242
  %0 = load i64, ptr %size.addr, align 8, !dbg !7243
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7243
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !7243

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !7243
  %cmp = icmp ule i64 %2, 64, !dbg !7243
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !7243

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !7243
  %cmp2 = icmp ugt i64 %3, 0, !dbg !7243
  br i1 %cmp2, label %if.then, label %if.end, !dbg !7244

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !7245
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7238, metadata !DIExpression()), !dbg !7246
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !7247
  %5 = load i64, ptr %4, align 8, !dbg !7248
  %6 = load i64, ptr %size.addr, align 8, !dbg !7249
  %sub = sub i64 %6, 1, !dbg !7249
  %sub3 = sub i64 63, %sub, !dbg !7249
  %shr = lshr i64 -1, %sub3, !dbg !7249
  %and = and i64 -1, %shr, !dbg !7249
  %add = add i64 0, %and, !dbg !7249
  %and4 = and i64 %5, %add, !dbg !7250
  store i64 %and4, ptr %val, align 8, !dbg !7246
  %7 = load i64, ptr %val, align 8, !dbg !7251
  %tobool = icmp ne i64 %7, 0, !dbg !7251
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !7251

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !7252
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !7252
  br i1 %9, label %cond.true5, label %cond.false, !dbg !7252

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !7252
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !7252
  %cast = trunc i64 %11 to i32, !dbg !7252
  %conv = sext i32 %cast to i64, !dbg !7252
  br label %cond.end, !dbg !7252

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !7252
  %call = call i64 @variable__ffs(i64 noundef %12) #11, !dbg !7252
  br label %cond.end, !dbg !7252

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !7252
  br label %cond.end7, !dbg !7251

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !7253
  br label %cond.end7, !dbg !7251

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !7251
  store i64 %cond8, ptr %retval, align 8, !dbg !7254
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !7255
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !7256
  %15 = load i64, ptr %size.addr, align 8, !dbg !7257
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #11, !dbg !7258
  store i64 %call9, ptr %retval, align 8, !dbg !7259
  br label %return, !dbg !7259

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !7260
  ret i64 %16, !dbg !7260
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7261 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_highmem_idx(i32 noundef %idx) #3 align 16 !dbg !7262 {
entry:
  %idx.addr = alloca i32, align 4
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !7266, metadata !DIExpression()), !dbg !7267
  ret i32 0, !dbg !7268
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }
attributes #13 = { nounwind memory(none) }
attributes #14 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6002, !6003, !6004, !6005, !6006, !6007, !6008, !6009}
!llvm.ident = !{!6010}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_totalram_pages", scope: !2, file: !3, line: 21, type: !769, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.show_mem.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/show_mem\22 -D KBUILD_BASENAME=\22show_mem\22 -D KBUILD_MODNAME=\22show_mem\22 -D __KBUILD_MODNAME=kmod_show_mem -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/show_mem.ll mm/show_mem.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !377, globals: !5911, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "mm/show_mem.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4817c8fd5e315f2e3c1c5ba604e33151")
!4 = !{!5, !11, !19, !115, !122, !130, !146, !151, !158, !164, !170, !177, !185, !192, !198, !207, !212, !217, !223, !227, !232, !244, !249, !255, !261, !268, !276, !284, !332, !339, !353, !358, !366}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !12, line: 9, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!15 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!16 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!17 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!18 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !21, file: !20, line: 147, baseType: !7, size: 32, elements: !112)
!20 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !20, line: 135, size: 512, elements: !22)
!22 = !{!23, !27, !29, !31, !35, !36, !52, !110, !111}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !21, file: !20, line: 136, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !21, file: !20, line: 137, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !21, file: !20, line: 138, baseType: !30, size: 32, offset: 128)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !21, file: !20, line: 139, baseType: !32, size: 16, offset: 160)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !33, line: 24, baseType: !34)
!33 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !21, file: !20, line: 150, baseType: !19, size: 32, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !21, file: !20, line: 151, baseType: !37, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !20, line: 64, baseType: !39)
!39 = !DISubroutineType(types: !40)
!40 = !{!30, !41, !30, !28, !42, !48}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 61, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !45, line: 72, baseType: !46)
!45 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !45, line: 16, baseType: !47)
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !33, line: 52, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !45, line: 88, baseType: !51)
!51 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !21, file: !20, line: 152, baseType: !53, size: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !20, line: 117, size: 256, elements: !55)
!55 = !{!56, !61}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !54, file: !20, line: 118, baseType: !57, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !33, line: 174, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 172, size: 32, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !58, file: !33, line: 173, baseType: !30, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !54, file: !20, line: 119, baseType: !62, size: 192, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !63, line: 41, baseType: !64)
!63 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !63, line: 37, size: 192, elements: !65)
!65 = !{!66, !104}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !64, file: !63, line: 38, baseType: !67, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !68, line: 29, baseType: !69)
!68 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !68, line: 17, size: 32, elements: !70)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, scope: !69, file: !68, line: 18, baseType: !72, size: 32)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !69, file: !68, line: 18, size: 32, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !72, file: !68, line: 19, baseType: !75, size: 32)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !76, line: 14, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !75, file: !76, line: 15, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !80, line: 44, baseType: !81)
!80 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !80, line: 14, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !80, line: 15, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !80, line: 15, size: 32, elements: !85)
!85 = !{!86, !87, !97}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !84, file: !80, line: 16, baseType: !57, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !80, line: 24, baseType: !88, size: 16)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !80, line: 24, size: 16, elements: !89)
!89 = !{!90, !96}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !88, file: !80, line: 25, baseType: !91, size: 8)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !92, line: 17, baseType: !93)
!92 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !94, line: 21, baseType: !95)
!94 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!95 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !88, file: !80, line: 26, baseType: !91, size: 8, offset: 8)
!97 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !80, line: 28, baseType: !98, size: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !80, line: 28, size: 32, elements: !99)
!99 = !{!100, !103}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !98, file: !80, line: 29, baseType: !101, size: 16)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !92, line: 19, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !94, line: 24, baseType: !34)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !98, file: !80, line: 30, baseType: !101, size: 16, offset: 16)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !64, file: !63, line: 39, baseType: !105, size: 128, offset: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !33, line: 190, size: 128, elements: !106)
!106 = !{!107, !109}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !33, line: 191, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !105, file: !33, line: 191, baseType: !108, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !21, file: !20, line: 153, baseType: !28, size: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !21, file: !20, line: 154, baseType: !28, size: 64, offset: 448)
!112 = !{!113, !114}
!113 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!114 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !116, line: 312, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!117 = !{!118, !119, !120, !121}
!118 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!119 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!120 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!121 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !123, line: 68, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!124 = !{!125, !126, !127, !128, !129}
!125 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!126 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!127 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!128 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!129 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !131, line: 1325, baseType: !7, size: 32, elements: !132)
!131 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!133 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!134 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!135 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!136 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!137 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!138 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!139 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!140 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!141 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!142 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!143 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!144 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!145 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !147, line: 32, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!148 = !{!149, !150}
!149 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!150 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !152, line: 15, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!155 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!156 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!157 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !159, line: 1381, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!160 = !{!161, !162, !163}
!161 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!162 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!163 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !165, line: 45, baseType: !7, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!166 = !{!167, !168, !169}
!167 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!168 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!169 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !171, line: 487, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!172 = !{!173, !174, !175, !176}
!173 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!174 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!175 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!176 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !178, line: 620, baseType: !7, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!179 = !{!180, !181, !182, !183, !184}
!180 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!181 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!182 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!183 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!184 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !178, line: 597, baseType: !30, size: 32, elements: !186)
!186 = !{!187, !188, !189, !190, !191}
!187 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!188 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!189 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!190 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!191 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !193, line: 26, baseType: !7, size: 32, elements: !194)
!193 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!194 = !{!195, !196, !197}
!195 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!196 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!197 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !171, line: 547, baseType: !7, size: 32, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206}
!200 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!201 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!202 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!203 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!204 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!205 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!206 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !171, line: 564, baseType: !7, size: 32, elements: !208)
!208 = !{!209, !210, !211}
!209 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!210 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!211 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !171, line: 577, baseType: !7, size: 32, elements: !213)
!213 = !{!214, !215, !216}
!214 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!215 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!216 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !171, line: 503, baseType: !7, size: 32, elements: !218)
!218 = !{!219, !220, !221, !222}
!219 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!220 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!221 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!222 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !159, line: 295, baseType: !7, size: 32, elements: !224)
!224 = !{!225, !226}
!225 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!226 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !159, line: 285, baseType: !7, size: 32, elements: !228)
!228 = !{!229, !230, !231}
!229 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!230 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!231 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !233, line: 44, baseType: !7, size: 32, elements: !234)
!233 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243}
!235 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!236 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!237 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!238 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!239 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!240 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!241 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!242 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!243 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !245, line: 2052, baseType: !7, size: 32, elements: !246)
!245 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!246 = !{!247, !248}
!247 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!248 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !250, line: 54, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!251 = !{!252, !253, !254}
!252 = !DIEnumerator(name: "USRQUOTA", value: 0)
!253 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!254 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !256, line: 16, baseType: !7, size: 32, elements: !257)
!256 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!257 = !{!258, !259, !260}
!258 = !DIEnumerator(name: "TT_NONE", value: 0)
!259 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!260 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !262, line: 51, baseType: !7, size: 32, elements: !263)
!262 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!263 = !{!264, !265, !266, !267}
!264 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!265 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!266 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!267 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!268 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zone_type", file: !269, line: 720, baseType: !7, size: 32, elements: !270)
!269 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e018db7b4c78b2d835997a33e792065c")
!270 = !{!271, !272, !273, !274, !275}
!271 = !DIEnumerator(name: "ZONE_DMA", value: 0)
!272 = !DIEnumerator(name: "ZONE_DMA32", value: 1)
!273 = !DIEnumerator(name: "ZONE_NORMAL", value: 2)
!274 = !DIEnumerator(name: "ZONE_MOVABLE", value: 3)
!275 = !DIEnumerator(name: "__MAX_NR_ZONES", value: 4)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lru_list", file: !269, line: 265, baseType: !7, size: 32, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283}
!278 = !DIEnumerator(name: "LRU_INACTIVE_ANON", value: 0)
!279 = !DIEnumerator(name: "LRU_ACTIVE_ANON", value: 1)
!280 = !DIEnumerator(name: "LRU_INACTIVE_FILE", value: 2)
!281 = !DIEnumerator(name: "LRU_ACTIVE_FILE", value: 3)
!282 = !DIEnumerator(name: "LRU_UNEVICTABLE", value: 4)
!283 = !DIEnumerator(name: "NR_LRU_LISTS", value: 5)
!284 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_stat_item", file: !269, line: 156, baseType: !7, size: 32, elements: !285)
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!286 = !DIEnumerator(name: "NR_LRU_BASE", value: 0)
!287 = !DIEnumerator(name: "NR_INACTIVE_ANON", value: 0)
!288 = !DIEnumerator(name: "NR_ACTIVE_ANON", value: 1)
!289 = !DIEnumerator(name: "NR_INACTIVE_FILE", value: 2)
!290 = !DIEnumerator(name: "NR_ACTIVE_FILE", value: 3)
!291 = !DIEnumerator(name: "NR_UNEVICTABLE", value: 4)
!292 = !DIEnumerator(name: "NR_SLAB_RECLAIMABLE_B", value: 5)
!293 = !DIEnumerator(name: "NR_SLAB_UNRECLAIMABLE_B", value: 6)
!294 = !DIEnumerator(name: "NR_ISOLATED_ANON", value: 7)
!295 = !DIEnumerator(name: "NR_ISOLATED_FILE", value: 8)
!296 = !DIEnumerator(name: "WORKINGSET_NODES", value: 9)
!297 = !DIEnumerator(name: "WORKINGSET_REFAULT_BASE", value: 10)
!298 = !DIEnumerator(name: "WORKINGSET_REFAULT_ANON", value: 10)
!299 = !DIEnumerator(name: "WORKINGSET_REFAULT_FILE", value: 11)
!300 = !DIEnumerator(name: "WORKINGSET_ACTIVATE_BASE", value: 12)
!301 = !DIEnumerator(name: "WORKINGSET_ACTIVATE_ANON", value: 12)
!302 = !DIEnumerator(name: "WORKINGSET_ACTIVATE_FILE", value: 13)
!303 = !DIEnumerator(name: "WORKINGSET_RESTORE_BASE", value: 14)
!304 = !DIEnumerator(name: "WORKINGSET_RESTORE_ANON", value: 14)
!305 = !DIEnumerator(name: "WORKINGSET_RESTORE_FILE", value: 15)
!306 = !DIEnumerator(name: "WORKINGSET_NODERECLAIM", value: 16)
!307 = !DIEnumerator(name: "NR_ANON_MAPPED", value: 17)
!308 = !DIEnumerator(name: "NR_FILE_MAPPED", value: 18)
!309 = !DIEnumerator(name: "NR_FILE_PAGES", value: 19)
!310 = !DIEnumerator(name: "NR_FILE_DIRTY", value: 20)
!311 = !DIEnumerator(name: "NR_WRITEBACK", value: 21)
!312 = !DIEnumerator(name: "NR_WRITEBACK_TEMP", value: 22)
!313 = !DIEnumerator(name: "NR_SHMEM", value: 23)
!314 = !DIEnumerator(name: "NR_SHMEM_THPS", value: 24)
!315 = !DIEnumerator(name: "NR_SHMEM_PMDMAPPED", value: 25)
!316 = !DIEnumerator(name: "NR_FILE_THPS", value: 26)
!317 = !DIEnumerator(name: "NR_FILE_PMDMAPPED", value: 27)
!318 = !DIEnumerator(name: "NR_ANON_THPS", value: 28)
!319 = !DIEnumerator(name: "NR_VMSCAN_WRITE", value: 29)
!320 = !DIEnumerator(name: "NR_VMSCAN_IMMEDIATE", value: 30)
!321 = !DIEnumerator(name: "NR_DIRTIED", value: 31)
!322 = !DIEnumerator(name: "NR_WRITTEN", value: 32)
!323 = !DIEnumerator(name: "NR_THROTTLED_WRITTEN", value: 33)
!324 = !DIEnumerator(name: "NR_KERNEL_MISC_RECLAIMABLE", value: 34)
!325 = !DIEnumerator(name: "NR_FOLL_PIN_ACQUIRED", value: 35)
!326 = !DIEnumerator(name: "NR_FOLL_PIN_RELEASED", value: 36)
!327 = !DIEnumerator(name: "NR_KERNEL_STACK_KB", value: 37)
!328 = !DIEnumerator(name: "NR_PAGETABLE", value: 38)
!329 = !DIEnumerator(name: "NR_SECONDARY_PAGETABLE", value: 39)
!330 = !DIEnumerator(name: "NR_SWAPCACHE", value: 40)
!331 = !DIEnumerator(name: "NR_VM_NODE_STAT_ITEMS", value: 41)
!332 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zone_watermarks", file: !269, line: 658, baseType: !7, size: 32, elements: !333)
!333 = !{!334, !335, !336, !337, !338}
!334 = !DIEnumerator(name: "WMARK_MIN", value: 0)
!335 = !DIEnumerator(name: "WMARK_LOW", value: 1)
!336 = !DIEnumerator(name: "WMARK_HIGH", value: 2)
!337 = !DIEnumerator(name: "WMARK_PROMO", value: 3)
!338 = !DIEnumerator(name: "NR_WMARK", value: 4)
!339 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zone_stat_item", file: !269, line: 134, baseType: !7, size: 32, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352}
!341 = !DIEnumerator(name: "NR_FREE_PAGES", value: 0)
!342 = !DIEnumerator(name: "NR_ZONE_LRU_BASE", value: 1)
!343 = !DIEnumerator(name: "NR_ZONE_INACTIVE_ANON", value: 1)
!344 = !DIEnumerator(name: "NR_ZONE_ACTIVE_ANON", value: 2)
!345 = !DIEnumerator(name: "NR_ZONE_INACTIVE_FILE", value: 3)
!346 = !DIEnumerator(name: "NR_ZONE_ACTIVE_FILE", value: 4)
!347 = !DIEnumerator(name: "NR_ZONE_UNEVICTABLE", value: 5)
!348 = !DIEnumerator(name: "NR_ZONE_WRITE_PENDING", value: 6)
!349 = !DIEnumerator(name: "NR_MLOCK", value: 7)
!350 = !DIEnumerator(name: "NR_BOUNCE", value: 8)
!351 = !DIEnumerator(name: "NR_FREE_CMA_PAGES", value: 9)
!352 = !DIEnumerator(name: "NR_VM_ZONE_STAT_ITEMS", value: 10)
!353 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !354, line: 10, baseType: !7, size: 32, elements: !355)
!354 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!355 = !{!356, !357}
!356 = !DIEnumerator(name: "false", value: 0)
!357 = !DIEnumerator(name: "true", value: 1)
!358 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migratetype", file: !269, line: 47, baseType: !7, size: 32, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365}
!360 = !DIEnumerator(name: "MIGRATE_UNMOVABLE", value: 0)
!361 = !DIEnumerator(name: "MIGRATE_MOVABLE", value: 1)
!362 = !DIEnumerator(name: "MIGRATE_RECLAIMABLE", value: 2)
!363 = !DIEnumerator(name: "MIGRATE_PCPTYPES", value: 3)
!364 = !DIEnumerator(name: "MIGRATE_HIGHATOMIC", value: 3)
!365 = !DIEnumerator(name: "MIGRATE_TYPES", value: 4)
!366 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_states", file: !367, line: 398, baseType: !7, size: 32, elements: !368)
!367 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376}
!369 = !DIEnumerator(name: "N_POSSIBLE", value: 0)
!370 = !DIEnumerator(name: "N_ONLINE", value: 1)
!371 = !DIEnumerator(name: "N_NORMAL_MEMORY", value: 2)
!372 = !DIEnumerator(name: "N_HIGH_MEMORY", value: 2)
!373 = !DIEnumerator(name: "N_MEMORY", value: 3)
!374 = !DIEnumerator(name: "N_CPU", value: 4)
!375 = !DIEnumerator(name: "N_GENERIC_INITIATOR", value: 5)
!376 = !DIEnumerator(name: "NR_NODE_STATES", value: 6)
!377 = !{!28, !378, !47, !381, !7, !390, !404, !30, !405, !406, !408, !409, !3639, !5908}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !384, line: 19, size: 64, elements: !385)
!384 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !383, file: !384, line: 19, baseType: !387, size: 64)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 1)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_pages", file: !269, line: 684, size: 2048, align: 512, elements: !392)
!392 = !{!393, !394, !395, !396, !397, !399, !400}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !391, file: !269, line: 685, baseType: !67, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !391, file: !269, line: 686, baseType: !30, size: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !391, file: !269, line: 687, baseType: !30, size: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !391, file: !269, line: 688, baseType: !30, size: 32, offset: 96)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "free_factor", scope: !391, file: !269, line: 689, baseType: !398, size: 16, offset: 128)
!398 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !391, file: !269, line: 691, baseType: !398, size: 16, offset: 144)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !391, file: !269, line: 695, baseType: !401, size: 1536, offset: 192)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 1536, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 12)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !33, line: 42, baseType: !47)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !411, line: 746, size: 58368, elements: !412)
!411 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!412 = !{!413, !423, !424, !425, !431, !432, !433, !434, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !517, !528, !629, !633, !636, !667, !668, !669, !670, !674, !676, !677, !678, !679, !680, !681, !692, !693, !696, !697, !698, !699, !700, !701, !702, !703, !710, !711, !718, !719, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4605, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4653, !4659, !4660, !4661, !4662, !4663, !4665, !4668, !4675, !4680, !4683, !4686, !4689, !4981, !5179, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5217, !5218, !5219, !5228, !5236, !5237, !5238, !5239, !5240, !5245, !5246, !5247, !5250, !5251, !5253, !5264, !5269, !5277, !5443, !5444, !5530, !5531, !5532, !5533, !5534, !5535, !5536, !5537, !5538, !5539, !5540, !5543, !5546, !5547, !5550, !5551, !5552, !5555, !5556, !5557, !5558, !5559, !5560, !5573, !5574, !5575, !5576, !5577, !5578, !5579, !5580, !5581, !5592, !5593, !5599, !5602, !5603, !5604, !5605, !5606, !5607, !5608, !5609, !5681, !5683, !5684, !5685, !5686, !5687, !5688, !5691, !5692, !5693, !5694, !5695, !5696, !5697, !5698, !5699, !5700, !5701, !5705, !5706, !5707}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !410, file: !411, line: 752, baseType: !414, size: 192)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !415, line: 56, size: 192, elements: !416)
!415 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!416 = !{!417, !418, !419, !422}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !415, line: 57, baseType: !47, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !414, file: !415, line: 58, baseType: !47, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !414, file: !415, line: 59, baseType: !420, size: 32, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !92, line: 21, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !94, line: 27, baseType: !7)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !414, file: !415, line: 61, baseType: !420, size: 32, offset: 160)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !410, file: !411, line: 754, baseType: !7, size: 32, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !410, file: !411, line: 767, baseType: !28, size: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !410, file: !411, line: 768, baseType: !426, size: 32, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !427, line: 113, baseType: !428)
!427 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !427, line: 111, size: 32, elements: !429)
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !428, file: !427, line: 112, baseType: !57, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !410, file: !411, line: 770, baseType: !7, size: 32, offset: 352)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !410, file: !411, line: 771, baseType: !7, size: 32, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !410, file: !411, line: 774, baseType: !30, size: 32, offset: 416)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !410, file: !411, line: 775, baseType: !435, size: 128, offset: 448)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !436, line: 58, size: 128, elements: !437)
!436 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!437 = !{!438, !444, !449, !450}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !435, file: !436, line: 59, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !440, line: 60, size: 64, elements: !441)
!440 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !439, file: !440, line: 61, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, scope: !435, file: !436, line: 60, baseType: !445, size: 32, offset: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !435, file: !436, line: 60, size: 32, elements: !446)
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !445, file: !436, line: 61, baseType: !7, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !445, file: !436, line: 62, baseType: !57, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !435, file: !436, line: 65, baseType: !101, size: 16, offset: 96)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !435, file: !436, line: 65, baseType: !101, size: 16, offset: 112)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !410, file: !411, line: 776, baseType: !7, size: 32, offset: 576)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !410, file: !411, line: 777, baseType: !47, size: 64, offset: 640)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !410, file: !411, line: 778, baseType: !409, size: 64, offset: 704)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !410, file: !411, line: 787, baseType: !30, size: 32, offset: 768)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !410, file: !411, line: 788, baseType: !30, size: 32, offset: 800)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !410, file: !411, line: 790, baseType: !30, size: 32, offset: 832)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !410, file: !411, line: 792, baseType: !30, size: 32, offset: 864)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !410, file: !411, line: 793, baseType: !30, size: 32, offset: 896)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !410, file: !411, line: 794, baseType: !30, size: 32, offset: 928)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !410, file: !411, line: 795, baseType: !7, size: 32, offset: 960)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !410, file: !411, line: 797, baseType: !462, size: 2048, offset: 1024)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !411, line: 551, size: 2048, elements: !463)
!463 = !{!464, !469, !477, !481, !482, !483, !484, !485, !486, !487, !488, !491, !492, !493, !494, !496, !499, !500, !501}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !462, file: !411, line: 553, baseType: !465, size: 128)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !411, line: 411, size: 128, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !465, file: !411, line: 412, baseType: !47, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !465, file: !411, line: 413, baseType: !420, size: 32, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !462, file: !411, line: 554, baseType: !470, size: 192, align: 64, offset: 128)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !471, line: 5, size: 192, align: 64, elements: !472)
!471 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!472 = !{!473, !474, !476}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !470, file: !471, line: 6, baseType: !47, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !470, file: !471, line: 7, baseType: !475, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !470, file: !471, line: 8, baseType: !475, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !462, file: !411, line: 555, baseType: !478, size: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !92, line: 23, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !94, line: 31, baseType: !480)
!480 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !462, file: !411, line: 556, baseType: !478, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !462, file: !411, line: 558, baseType: !105, size: 128, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !462, file: !411, line: 559, baseType: !7, size: 32, offset: 576)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !462, file: !411, line: 561, baseType: !478, size: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !462, file: !411, line: 562, baseType: !478, size: 64, offset: 704)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !462, file: !411, line: 563, baseType: !478, size: 64, offset: 768)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !462, file: !411, line: 564, baseType: !478, size: 64, offset: 832)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !462, file: !411, line: 565, baseType: !489, size: 64, offset: 896)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !92, line: 22, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !94, line: 30, baseType: !51)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !462, file: !411, line: 566, baseType: !478, size: 64, offset: 960)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !462, file: !411, line: 568, baseType: !478, size: 64, offset: 1024)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !462, file: !411, line: 571, baseType: !30, size: 32, offset: 1088)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !462, file: !411, line: 572, baseType: !495, size: 64, offset: 1152)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !462, file: !411, line: 574, baseType: !497, size: 64, offset: 1216)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !411, line: 49, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !462, file: !411, line: 576, baseType: !497, size: 64, offset: 1280)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !462, file: !411, line: 578, baseType: !47, size: 64, offset: 1344)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !462, file: !411, line: 588, baseType: !502, size: 512, align: 512, offset: 1536)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !411, line: 497, size: 512, align: 512, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !509, !510, !511, !512}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !502, file: !411, line: 498, baseType: !478, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !502, file: !411, line: 499, baseType: !478, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !502, file: !411, line: 500, baseType: !478, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !502, file: !411, line: 501, baseType: !420, size: 32, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !502, file: !411, line: 502, baseType: !420, size: 32, offset: 224)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !502, file: !411, line: 503, baseType: !47, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !502, file: !411, line: 504, baseType: !47, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !502, file: !411, line: 505, baseType: !47, size: 64, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !502, file: !411, line: 506, baseType: !513, size: 64, align: 64, offset: 448)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !411, line: 445, size: 64, align: 64, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !513, file: !411, line: 446, baseType: !7, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !513, file: !411, line: 447, baseType: !7, size: 32, offset: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !410, file: !411, line: 798, baseType: !518, size: 384, offset: 3072)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !411, line: 592, size: 384, elements: !519)
!519 = !{!520, !521, !522, !523, !524, !525, !526}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !518, file: !411, line: 593, baseType: !105, size: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !518, file: !411, line: 594, baseType: !47, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !518, file: !411, line: 595, baseType: !47, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !518, file: !411, line: 596, baseType: !7, size: 32, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !518, file: !411, line: 597, baseType: !34, size: 16, offset: 288)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !518, file: !411, line: 598, baseType: !34, size: 16, offset: 304)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !518, file: !411, line: 600, baseType: !527, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !410, file: !411, line: 799, baseType: !529, size: 1792, offset: 3456)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !411, line: 610, size: 1792, elements: !530)
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !626, !627}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !529, file: !411, line: 611, baseType: !470, size: 192, align: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !529, file: !411, line: 618, baseType: !478, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !529, file: !411, line: 619, baseType: !478, size: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !529, file: !411, line: 620, baseType: !478, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !529, file: !411, line: 621, baseType: !478, size: 64, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !529, file: !411, line: 622, baseType: !478, size: 64, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !529, file: !411, line: 629, baseType: !489, size: 64, offset: 512)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !529, file: !411, line: 630, baseType: !478, size: 64, offset: 576)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !529, file: !411, line: 631, baseType: !7, size: 32, offset: 640)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !529, file: !411, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !529, file: !411, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !529, file: !411, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !529, file: !411, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !529, file: !411, line: 662, baseType: !545, size: 512, offset: 704)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !546)
!546 = !{!547, !555, !556, !561, !622, !623, !624, !625}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !545, file: !6, line: 119, baseType: !548, size: 256)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !549, line: 9, size: 256, elements: !550)
!549 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !548, file: !549, line: 10, baseType: !470, size: 192, align: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !548, file: !549, line: 11, baseType: !553, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !554, line: 29, baseType: !489)
!554 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !545, file: !6, line: 120, baseType: !553, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !545, file: !6, line: 121, baseType: !557, size: 64, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!5, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !545, file: !6, line: 122, baseType: !562, size: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !564)
!564 = !{!565, !591, !592, !595, !605, !606, !617, !621}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !563, file: !6, line: 160, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !568)
!568 = !{!569, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !567, file: !6, line: 216, baseType: !570, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !76, line: 23, baseType: !75)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !567, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !567, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !567, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !567, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !567, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !567, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !567, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !567, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !567, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !567, file: !6, line: 227, baseType: !34, size: 16, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !567, file: !6, line: 228, baseType: !34, size: 16, offset: 208)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !567, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !567, file: !6, line: 235, baseType: !553, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !567, file: !6, line: 236, baseType: !560, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !567, file: !6, line: 237, baseType: !553, size: 64, offset: 384)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !567, file: !6, line: 238, baseType: !560, size: 64, offset: 448)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !567, file: !6, line: 239, baseType: !588, size: 4096, align: 512, offset: 512)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 4096, align: 512, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 8)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !563, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !563, file: !6, line: 162, baseType: !593, size: 32, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !33, line: 32, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !45, line: 96, baseType: !30)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !563, file: !6, line: 163, baseType: !596, size: 32, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !597, line: 274, baseType: !598)
!597 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !597, line: 274, size: 32, elements: !599)
!599 = !{!600}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !598, file: !597, line: 274, baseType: !601, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !597, line: 69, baseType: !602)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !597, line: 64, size: 32, elements: !603)
!603 = !{!604}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !602, file: !597, line: 65, baseType: !7, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !563, file: !6, line: 164, baseType: !560, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !563, file: !6, line: 165, baseType: !607, size: 128, offset: 256)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !549, line: 14, size: 128, elements: !608)
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !607, file: !549, line: 15, baseType: !610, size: 128)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !471, line: 26, size: 128, elements: !611)
!611 = !{!612, !616}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !610, file: !471, line: 27, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !471, line: 12, size: 64, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !613, file: !471, line: 13, baseType: !475, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !610, file: !471, line: 28, baseType: !475, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !563, file: !6, line: 166, baseType: !618, size: 64, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!553}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !563, file: !6, line: 167, baseType: !553, size: 64, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !545, file: !6, line: 123, baseType: !91, size: 8, offset: 448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !545, file: !6, line: 124, baseType: !91, size: 8, offset: 456)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !545, file: !6, line: 125, baseType: !91, size: 8, offset: 464)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !545, file: !6, line: 126, baseType: !91, size: 8, offset: 472)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !529, file: !411, line: 671, baseType: !545, size: 512, offset: 1216)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !529, file: !411, line: 679, baseType: !628, size: 64, offset: 1728)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !410, file: !411, line: 800, baseType: !630, size: 64, offset: 5248)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !411, line: 800, flags: DIFlagFwdDecl)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !410, file: !411, line: 809, baseType: !634, size: 64, offset: 5312)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !411, line: 70, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !410, file: !411, line: 825, baseType: !637, size: 2048, align: 512, offset: 5632)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !411, line: 509, size: 2048, align: 512, elements: !638)
!638 = !{!639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !637, file: !411, line: 511, baseType: !478, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !637, file: !411, line: 512, baseType: !478, size: 64, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !637, file: !411, line: 513, baseType: !478, size: 64, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !637, file: !411, line: 514, baseType: !478, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !637, file: !411, line: 515, baseType: !478, size: 64, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !637, file: !411, line: 516, baseType: !478, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !637, file: !411, line: 518, baseType: !478, size: 64, offset: 384)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !637, file: !411, line: 519, baseType: !478, size: 64, offset: 448)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !637, file: !411, line: 520, baseType: !489, size: 64, offset: 512)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !637, file: !411, line: 522, baseType: !478, size: 64, offset: 576)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !637, file: !411, line: 523, baseType: !478, size: 64, offset: 640)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !637, file: !411, line: 524, baseType: !489, size: 64, offset: 704)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !637, file: !411, line: 526, baseType: !489, size: 64, offset: 768)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !637, file: !411, line: 527, baseType: !478, size: 64, offset: 832)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !637, file: !411, line: 529, baseType: !478, size: 64, offset: 896)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !637, file: !411, line: 530, baseType: !478, size: 64, offset: 960)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !637, file: !411, line: 531, baseType: !478, size: 64, offset: 1024)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !637, file: !411, line: 532, baseType: !478, size: 64, offset: 1088)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !637, file: !411, line: 533, baseType: !478, size: 64, offset: 1152)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !637, file: !411, line: 535, baseType: !478, size: 64, offset: 1216)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !637, file: !411, line: 536, baseType: !478, size: 64, offset: 1280)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !637, file: !411, line: 537, baseType: !478, size: 64, offset: 1344)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !637, file: !411, line: 538, baseType: !478, size: 64, offset: 1408)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !637, file: !411, line: 539, baseType: !478, size: 64, offset: 1472)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !637, file: !411, line: 540, baseType: !478, size: 64, offset: 1536)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !637, file: !411, line: 541, baseType: !478, size: 64, offset: 1600)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !637, file: !411, line: 542, baseType: !478, size: 64, offset: 1664)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !637, file: !411, line: 543, baseType: !478, size: 64, offset: 1728)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !410, file: !411, line: 833, baseType: !7, size: 32, offset: 7680)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !410, file: !411, line: 836, baseType: !7, size: 32, offset: 7712)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !410, file: !411, line: 837, baseType: !30, size: 32, offset: 7744)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !410, file: !411, line: 838, baseType: !671, size: 64, offset: 7808)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !384, line: 19, baseType: !383)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !410, file: !411, line: 839, baseType: !675, size: 64, offset: 7872)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !410, file: !411, line: 840, baseType: !673, size: 64, offset: 7936)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !410, file: !411, line: 841, baseType: !28, size: 64, offset: 8000)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !410, file: !411, line: 843, baseType: !34, size: 16, offset: 8064)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !410, file: !411, line: 845, baseType: !34, size: 16, offset: 8080)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !410, file: !411, line: 848, baseType: !30, size: 32, offset: 8096)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !410, file: !411, line: 849, baseType: !682, size: 32, offset: 8128)
!682 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !411, line: 718, size: 32, elements: !683)
!683 = !{!684, !691}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !682, file: !411, line: 724, baseType: !685, size: 32)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !411, line: 719, size: 32, elements: !686)
!686 = !{!687, !688, !689, !690}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !685, file: !411, line: 720, baseType: !91, size: 8)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !685, file: !411, line: 721, baseType: !91, size: 8, offset: 8)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !685, file: !411, line: 722, baseType: !91, size: 8, offset: 16)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !685, file: !411, line: 723, baseType: !91, size: 8, offset: 24)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !682, file: !411, line: 725, baseType: !420, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !410, file: !411, line: 850, baseType: !105, size: 128, offset: 8192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !410, file: !411, line: 851, baseType: !694, size: 64, offset: 8320)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !411, line: 60, flags: DIFlagFwdDecl)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !410, file: !411, line: 855, baseType: !47, size: 64, offset: 8384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !410, file: !411, line: 856, baseType: !91, size: 8, offset: 8448)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !410, file: !411, line: 857, baseType: !91, size: 8, offset: 8456)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !410, file: !411, line: 858, baseType: !30, size: 32, offset: 8480)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !410, file: !411, line: 859, baseType: !105, size: 128, offset: 8512)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !410, file: !411, line: 860, baseType: !30, size: 32, offset: 8640)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !410, file: !411, line: 861, baseType: !105, size: 128, offset: 8704)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !410, file: !411, line: 873, baseType: !704, size: 256, offset: 8832)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !411, line: 376, size: 256, elements: !705)
!705 = !{!706, !707, !708, !709}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !704, file: !411, line: 381, baseType: !47, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !704, file: !411, line: 384, baseType: !480, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !704, file: !411, line: 389, baseType: !480, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !704, file: !411, line: 392, baseType: !480, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !410, file: !411, line: 875, baseType: !105, size: 128, offset: 9088)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !410, file: !411, line: 877, baseType: !712, size: 320, offset: 9216)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !713, line: 86, size: 320, elements: !714)
!713 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!714 = !{!715, !716, !717}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !712, file: !713, line: 87, baseType: !30, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !712, file: !713, line: 88, baseType: !105, size: 128, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !712, file: !713, line: 89, baseType: !105, size: 128, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !410, file: !411, line: 878, baseType: !470, size: 192, align: 64, offset: 9536)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !410, file: !411, line: 881, baseType: !720, size: 64, offset: 9728)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !131, line: 733, size: 10240, elements: !722)
!722 = !{!723, !4524}
!723 = !DIDerivedType(tag: DW_TAG_member, scope: !721, file: !131, line: 734, baseType: !724, size: 10240)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !721, file: !131, line: 734, size: 10240, elements: !725)
!725 = !{!726, !730, !744, !4382, !4383, !4384, !4385, !4386, !4387, !4394, !4395, !4396, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4435, !4436, !4439, !4504, !4505, !4506, !4509, !4510, !4511, !4514, !4515, !4516, !4522, !4523}
!726 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !131, line: 739, baseType: !727, size: 512, align: 512)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !131, line: 739, size: 512, align: 512, elements: !728)
!728 = !{!729}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !727, file: !131, line: 747, baseType: !57, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !724, file: !131, line: 750, baseType: !731, size: 128, offset: 512)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !732, line: 218, size: 128, elements: !733)
!732 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!733 = !{!734, !742, !743}
!734 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !732, line: 219, baseType: !735, size: 32)
!735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !732, line: 219, size: 32, elements: !736)
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !735, file: !732, line: 220, baseType: !67, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !735, file: !732, line: 221, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !732, line: 197, baseType: !740)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !732, line: 197, elements: !741)
!741 = !{}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !731, file: !732, line: 223, baseType: !7, size: 32, offset: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !731, file: !732, line: 224, baseType: !28, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !724, file: !131, line: 752, baseType: !745, size: 64, offset: 640)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!47, !748, !47, !47, !47, !47}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !245, line: 994, size: 1856, align: 64, elements: !750)
!750 = !{!751, !765, !766, !768, !775, !787, !788, !789, !859, !1215, !1224, !4372, !4373, !4374, !4375, !4376, !4377, !4379, !4380, !4381}
!751 = !DIDerivedType(tag: DW_TAG_member, scope: !749, file: !245, line: 995, baseType: !752, size: 128)
!752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !245, line: 995, size: 128, elements: !753)
!753 = !{!754, !755, !764}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !752, file: !245, line: 996, baseType: !439, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !752, file: !245, line: 997, baseType: !756, size: 128, align: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !33, line: 232, size: 128, align: 64, elements: !757)
!757 = !{!758, !760}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !756, file: !33, line: 233, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !756, file: !33, line: 234, baseType: !761, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !759}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !752, file: !245, line: 998, baseType: !7, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !749, file: !245, line: 1005, baseType: !67, size: 32, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !749, file: !245, line: 1006, baseType: !767, size: 32, offset: 160)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !33, line: 156, baseType: !7)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !749, file: !245, line: 1007, baseType: !769, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !770, line: 13, baseType: !771)
!770 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !33, line: 181, baseType: !772)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 179, size: 64, elements: !773)
!773 = !{!774}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !772, file: !33, line: 180, baseType: !489, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !749, file: !245, line: 1008, baseType: !776, size: 256, offset: 256)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !777, line: 66, size: 256, elements: !778)
!777 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!778 = !{!779, !780, !781, !786}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !776, file: !777, line: 67, baseType: !769, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !776, file: !777, line: 68, baseType: !570, size: 32, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !776, file: !777, line: 70, baseType: !782, size: 32, offset: 96)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !783, line: 15, size: 32, elements: !784)
!783 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!784 = !{!785}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !782, file: !783, line: 20, baseType: !57, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !776, file: !777, line: 72, baseType: !105, size: 128, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !749, file: !245, line: 1009, baseType: !49, size: 64, offset: 512)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !749, file: !245, line: 1010, baseType: !7, size: 32, offset: 576)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !749, file: !245, line: 1011, baseType: !790, size: 256, offset: 640)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !245, line: 948, size: 256, elements: !791)
!791 = !{!792, !815, !848, !849, !857, !858}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !790, file: !245, line: 949, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !794, line: 34, baseType: !795)
!794 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !794, line: 25, size: 64, elements: !796)
!796 = !{!797}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !795, file: !794, line: 26, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !799, line: 27, baseType: !800)
!799 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !799, line: 13, size: 64, elements: !801)
!801 = !{!802, !814}
!802 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !799, line: 14, baseType: !803, size: 32)
!803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !799, line: 14, size: 32, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !803, file: !799, line: 15, baseType: !57, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, scope: !803, file: !799, line: 16, baseType: !807, size: 32)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !799, line: 16, size: 32, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !807, file: !799, line: 18, baseType: !91, size: 8)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !807, file: !799, line: 19, baseType: !811, size: 24, offset: 8)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 24, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 3)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !800, file: !799, line: 26, baseType: !79, size: 32, offset: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !790, file: !245, line: 950, baseType: !816, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !12, line: 59, size: 768, elements: !818)
!818 = !{!819, !820, !821, !822, !835, !836, !837, !838}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !817, file: !12, line: 61, baseType: !426, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !817, file: !12, line: 62, baseType: !7, size: 32, offset: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !817, file: !12, line: 63, baseType: !67, size: 32, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !817, file: !12, line: 65, baseType: !823, size: 256, offset: 128)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 256, elements: !833)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !33, line: 194, size: 64, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !824, file: !33, line: 195, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !33, line: 198, size: 128, elements: !829)
!829 = !{!830, !831}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !828, file: !33, line: 199, baseType: !827, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !828, file: !33, line: 199, baseType: !832, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!833 = !{!834}
!834 = !DISubrange(count: 4)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !817, file: !12, line: 66, baseType: !824, size: 64, offset: 384)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !817, file: !12, line: 68, baseType: !62, size: 192, offset: 448)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !817, file: !12, line: 69, baseType: !756, size: 128, align: 64, offset: 640)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !817, file: !12, line: 70, baseType: !839, offset: 768)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, elements: !846)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !12, line: 54, size: 128, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !840, file: !12, line: 55, baseType: !30, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !840, file: !12, line: 56, baseType: !844, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !12, line: 56, flags: DIFlagFwdDecl)
!846 = !{!847}
!847 = !DISubrange(count: -1)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !790, file: !245, line: 951, baseType: !11, size: 32, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !790, file: !245, line: 952, baseType: !850, size: 32, offset: 160)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !851, line: 23, baseType: !852)
!851 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !851, line: 21, size: 32, elements: !853)
!853 = !{!854}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !852, file: !851, line: 22, baseType: !855, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !33, line: 37, baseType: !856)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !45, line: 49, baseType: !7)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !790, file: !245, line: 952, baseType: !850, size: 32, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !790, file: !245, line: 953, baseType: !30, size: 32, offset: 224)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !749, file: !245, line: 1012, baseType: !860, size: 64, offset: 896)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !863, line: 110, size: 1472, elements: !864)
!863 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!864 = !{!865, !866, !867, !874, !875, !876, !877, !878, !879, !880, !881, !887, !888, !889, !890, !891, !892, !1015, !1016, !1017, !1018, !1019, !1050, !1201, !1202, !1210}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !862, file: !863, line: 111, baseType: !769, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !862, file: !863, line: 112, baseType: !850, size: 32, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !862, file: !863, line: 113, baseType: !868, size: 32, offset: 96)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !851, line: 28, baseType: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !851, line: 26, size: 32, elements: !870)
!870 = !{!871}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !869, file: !851, line: 27, baseType: !872, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !33, line: 38, baseType: !873)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !45, line: 50, baseType: !7)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !862, file: !863, line: 114, baseType: !850, size: 32, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !862, file: !863, line: 115, baseType: !868, size: 32, offset: 160)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !862, file: !863, line: 116, baseType: !850, size: 32, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !862, file: !863, line: 117, baseType: !868, size: 32, offset: 224)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !862, file: !863, line: 118, baseType: !850, size: 32, offset: 256)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !862, file: !863, line: 119, baseType: !868, size: 32, offset: 288)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !862, file: !863, line: 120, baseType: !7, size: 32, offset: 320)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !862, file: !863, line: 121, baseType: !882, size: 64, offset: 384)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !883, line: 24, baseType: !884)
!883 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !883, line: 24, size: 64, elements: !885)
!885 = !{!886}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !884, file: !883, line: 24, baseType: !478, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !862, file: !863, line: 122, baseType: !882, size: 64, offset: 448)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !862, file: !863, line: 123, baseType: !882, size: 64, offset: 512)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !862, file: !863, line: 124, baseType: !882, size: 64, offset: 576)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !862, file: !863, line: 125, baseType: !882, size: 64, offset: 640)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !862, file: !863, line: 127, baseType: !95, size: 8, offset: 704)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !862, file: !863, line: 129, baseType: !893, size: 64, offset: 768)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !895, line: 195, size: 1728, elements: !896)
!895 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!896 = !{!897, !898, !903, !908, !917, !920, !921, !928, !929, !930, !931, !934, !935, !936, !937, !938, !979, !1000}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !894, file: !895, line: 196, baseType: !426, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !894, file: !895, line: 197, baseType: !899, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !895, line: 28, baseType: !900)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !33, line: 104, baseType: !901)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !92, line: 20, baseType: !902)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !94, line: 26, baseType: !30)
!903 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !895, line: 198, baseType: !904, size: 192, offset: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !894, file: !895, line: 198, size: 192, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !904, file: !895, line: 199, baseType: !105, size: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !904, file: !895, line: 200, baseType: !470, size: 192, align: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !894, file: !895, line: 205, baseType: !909, size: 320, offset: 256)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !910, line: 48, size: 320, elements: !911)
!910 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!911 = !{!912, !913, !914, !915, !916}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !909, file: !910, line: 49, baseType: !769, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !909, file: !910, line: 55, baseType: !769, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !909, file: !910, line: 57, baseType: !782, size: 32, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !909, file: !910, line: 59, baseType: !570, size: 32, offset: 160)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !909, file: !910, line: 60, baseType: !105, size: 128, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !894, file: !895, line: 206, baseType: !918, size: 64, offset: 576)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !895, line: 206, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !894, file: !895, line: 207, baseType: !28, size: 64, offset: 640)
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !895, line: 208, baseType: !922, size: 64, offset: 704)
!922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !894, file: !895, line: 208, size: 64, elements: !923)
!923 = !{!924, !927}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !922, file: !895, line: 209, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !926, line: 8, baseType: !490)
!926 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!927 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !922, file: !895, line: 210, baseType: !925, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !894, file: !895, line: 212, baseType: !925, size: 64, offset: 768)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !894, file: !895, line: 213, baseType: !850, size: 32, offset: 832)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !894, file: !895, line: 214, baseType: !868, size: 32, offset: 864)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !894, file: !895, line: 215, baseType: !932, size: 32, offset: 896)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !895, line: 31, baseType: !933)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !33, line: 110, baseType: !420)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !894, file: !895, line: 216, baseType: !34, size: 16, offset: 928)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !894, file: !895, line: 217, baseType: !34, size: 16, offset: 944)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !894, file: !895, line: 221, baseType: !398, size: 16, offset: 960)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !894, file: !895, line: 228, baseType: !47, size: 64, offset: 1024)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !895, line: 245, baseType: !939, size: 320, offset: 1088)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !894, file: !895, line: 245, size: 320, elements: !940)
!940 = !{!941, !970}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !939, file: !895, line: 246, baseType: !942, size: 320)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !895, line: 114, size: 320, elements: !943)
!943 = !{!944, !945, !957, !960, !969}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !942, file: !895, line: 116, baseType: !47, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !895, line: 117, baseType: !946, size: 64, offset: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !942, file: !895, line: 117, size: 64, elements: !947)
!947 = !{!948, !956}
!948 = !DIDerivedType(tag: DW_TAG_member, scope: !946, file: !895, line: 118, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !946, file: !895, line: 118, size: 64, elements: !950)
!950 = !{!951, !952}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !949, file: !895, line: 120, baseType: !101, size: 16)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !949, file: !895, line: 121, baseType: !953, size: 48, offset: 16)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 48, elements: !954)
!954 = !{!955}
!955 = !DISubrange(count: 6)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !946, file: !895, line: 127, baseType: !47, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !942, file: !895, line: 129, baseType: !958, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !895, line: 102, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !942, file: !895, line: 130, baseType: !961, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !895, line: 108, size: 192, elements: !963)
!963 = !{!964, !965, !966}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !962, file: !895, line: 109, baseType: !756, size: 128, align: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !962, file: !895, line: 110, baseType: !426, size: 32, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !962, file: !895, line: 111, baseType: !967, size: 8, offset: 160)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !33, line: 35, baseType: !968)
!968 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !942, file: !895, line: 131, baseType: !24, size: 64, offset: 256)
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !895, line: 247, baseType: !971, size: 320)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !895, line: 247, size: 320, elements: !972)
!972 = !{!973, !974, !975, !976, !977}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !971, file: !895, line: 248, baseType: !47, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !971, file: !895, line: 249, baseType: !47, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !971, file: !895, line: 250, baseType: !958, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !971, file: !895, line: 251, baseType: !961, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !971, file: !895, line: 252, baseType: !978, size: 64, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !895, line: 260, baseType: !980, size: 256, offset: 1408)
!980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !894, file: !895, line: 260, size: 256, elements: !981)
!981 = !{!982, !988}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !980, file: !895, line: 261, baseType: !983, size: 256)
!983 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !895, line: 134, size: 256, elements: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !983, file: !895, line: 135, baseType: !28, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !983, file: !895, line: 136, baseType: !987, size: 256)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !833)
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !980, file: !895, line: 262, baseType: !989, size: 256)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !980, file: !895, line: 262, size: 256, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !989, file: !895, line: 264, baseType: !105, size: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !989, file: !895, line: 265, baseType: !993, size: 128, offset: 128)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !994, line: 22, size: 128, elements: !995)
!994 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!995 = !{!996, !999}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !993, file: !994, line: 23, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !994, line: 23, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !993, file: !994, line: 24, baseType: !47, size: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !894, file: !895, line: 280, baseType: !1001, size: 64, offset: 1664)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !895, line: 176, size: 192, elements: !1003)
!1003 = !{!1004, !1013, !1014}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1002, file: !895, line: 177, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !895, line: 171, baseType: !1006)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!30, !893, !1009, !1011, !893}
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !959)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !983)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1002, file: !895, line: 178, baseType: !893, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1002, file: !895, line: 179, baseType: !958, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !862, file: !863, line: 130, baseType: !893, size: 64, offset: 832)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !862, file: !863, line: 131, baseType: !893, size: 64, offset: 896)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !862, file: !863, line: 132, baseType: !893, size: 64, offset: 960)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !862, file: !863, line: 135, baseType: !28, size: 64, offset: 1024)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !862, file: !863, line: 137, baseType: !1020, size: 64, offset: 1088)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1022, line: 14, size: 1088, elements: !1023)
!1022 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1023 = !{!1024, !1025, !1034, !1035, !1036, !1037, !1038, !1039}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1021, file: !1022, line: 15, baseType: !426, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1021, file: !1022, line: 17, baseType: !1026, size: 320, offset: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1027, line: 22, size: 320, elements: !1028)
!1027 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1028 = !{!1029, !1030, !1031, !1032}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1026, file: !1027, line: 23, baseType: !570, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1026, file: !1027, line: 24, baseType: !489, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1026, file: !1027, line: 26, baseType: !105, size: 128, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1026, file: !1027, line: 28, baseType: !1033, size: 64, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1021, file: !1022, line: 19, baseType: !47, size: 64, offset: 384)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1021, file: !1022, line: 20, baseType: !769, size: 64, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1021, file: !1022, line: 23, baseType: !828, size: 128, offset: 512)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1021, file: !1022, line: 24, baseType: !850, size: 32, offset: 640)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1021, file: !1022, line: 29, baseType: !769, size: 64, offset: 704)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1021, file: !1022, line: 36, baseType: !1040, size: 320, offset: 768)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1041, line: 15, size: 320, elements: !1042)
!1041 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1042 = !{!1043, !1044, !1045, !1046, !1047, !1048, !1049}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1040, file: !1041, line: 16, baseType: !570, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1040, file: !1041, line: 18, baseType: !30, size: 32, offset: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1040, file: !1041, line: 19, baseType: !30, size: 32, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1040, file: !1041, line: 20, baseType: !30, size: 32, offset: 96)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1040, file: !1041, line: 21, baseType: !30, size: 32, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1040, file: !1041, line: 22, baseType: !47, size: 64, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1040, file: !1041, line: 23, baseType: !47, size: 64, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !862, file: !863, line: 138, baseType: !1051, size: 64, offset: 1152)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1053, line: 68, size: 4800, elements: !1054)
!1053 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1054 = !{!1055, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1094, !1095, !1096, !1097, !1098, !1099, !1111, !1181, !1182, !1196, !1199}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1052, file: !1053, line: 69, baseType: !1056, size: 576)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1053, line: 23, size: 576, elements: !1057)
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1056, file: !1053, line: 24, baseType: !420, size: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !1056, file: !1053, line: 25, baseType: !1060, size: 512, offset: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1056, file: !1053, line: 25, size: 512, elements: !1061)
!1061 = !{!1062, !1071}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1060, file: !1053, line: 26, baseType: !1063, size: 480)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1064, size: 480, elements: !1069)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1053, line: 17, size: 96, elements: !1065)
!1065 = !{!1066, !1067, !1068}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1064, file: !1053, line: 18, baseType: !420, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1064, file: !1053, line: 19, baseType: !420, size: 32, offset: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1064, file: !1053, line: 20, baseType: !420, size: 32, offset: 64)
!1069 = !{!1070}
!1070 = !DISubrange(count: 5)
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !1053, line: 27, baseType: !1072, size: 128)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1060, file: !1053, line: 27, size: 128, elements: !1073)
!1073 = !{!1074, !1076}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1072, file: !1053, line: 28, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1072, file: !1053, line: 29, baseType: !1075, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1052, file: !1053, line: 70, baseType: !1056, size: 576, offset: 576)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1052, file: !1053, line: 71, baseType: !1056, size: 576, offset: 1152)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1052, file: !1053, line: 72, baseType: !1051, size: 64, offset: 1728)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1052, file: !1053, line: 73, baseType: !30, size: 32, offset: 1792)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1052, file: !1053, line: 74, baseType: !850, size: 32, offset: 1824)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1052, file: !1053, line: 75, baseType: !868, size: 32, offset: 1856)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1052, file: !1053, line: 76, baseType: !1084, size: 192, offset: 1920)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1085, line: 9, size: 192, elements: !1086)
!1085 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1086 = !{!1087, !1088, !1092, !1093}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1084, file: !1085, line: 10, baseType: !769, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1084, file: !1085, line: 11, baseType: !1089, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1091)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1085, line: 7, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1084, file: !1085, line: 12, baseType: !7, size: 32, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1084, file: !1085, line: 13, baseType: !426, size: 32, offset: 160)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1052, file: !1053, line: 77, baseType: !47, size: 64, offset: 2112)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1052, file: !1053, line: 80, baseType: !967, size: 8, offset: 2176)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1052, file: !1053, line: 88, baseType: !105, size: 128, offset: 2240)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1052, file: !1053, line: 89, baseType: !893, size: 64, offset: 2368)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1052, file: !1053, line: 90, baseType: !909, size: 320, offset: 2432)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1052, file: !1053, line: 97, baseType: !1100, size: 256, offset: 2752)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1101, line: 98, size: 256, elements: !1102)
!1101 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1102 = !{!1103, !1104, !1105}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1100, file: !1101, line: 99, baseType: !769, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1100, file: !1101, line: 100, baseType: !105, size: 128, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1100, file: !1101, line: 101, baseType: !1106, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1101, line: 21, baseType: !1107)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{null, !1110}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1052, file: !1053, line: 99, baseType: !1112, size: 768, offset: 3008)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !20, line: 199, size: 768, elements: !1113)
!1113 = !{!1114, !1119}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1112, file: !20, line: 200, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!30, !1118}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1112, file: !20, line: 201, baseType: !1120, size: 704, offset: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !20, line: 193, size: 704, elements: !1121)
!1121 = !{!1122, !1180}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1120, file: !20, line: 195, baseType: !1123, size: 640)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !20, line: 173, size: 640, elements: !1124)
!1124 = !{!1125, !1137, !1149, !1150, !1170, !1171, !1173, !1179}
!1125 = !DIDerivedType(tag: DW_TAG_member, scope: !1123, file: !20, line: 174, baseType: !1126, size: 192)
!1126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1123, file: !20, line: 174, size: 192, elements: !1127)
!1127 = !{!1128, !1136}
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1126, file: !20, line: 175, baseType: !1129, size: 192)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1126, file: !20, line: 175, size: 192, elements: !1130)
!1130 = !{!1131, !1132, !1133, !1134, !1135}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1129, file: !20, line: 176, baseType: !41, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1129, file: !20, line: 177, baseType: !30, size: 32, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1129, file: !20, line: 178, baseType: !30, size: 32, offset: 96)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1129, file: !20, line: 179, baseType: !30, size: 32, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1129, file: !20, line: 180, baseType: !30, size: 32, offset: 160)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1126, file: !20, line: 182, baseType: !756, size: 128, align: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1123, file: !20, line: 184, baseType: !1138, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1140, line: 26, size: 256, elements: !1141)
!1140 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1141 = !{!1142, !1143}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1139, file: !1140, line: 27, baseType: !7, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1139, file: !1140, line: 28, baseType: !1144, size: 192, offset: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1145, line: 43, size: 192, elements: !1146)
!1145 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1146 = !{!1147, !1148}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1144, file: !1145, line: 44, baseType: !570, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1144, file: !1145, line: 45, baseType: !105, size: 128, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1123, file: !20, line: 185, baseType: !41, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1123, file: !20, line: 186, baseType: !1151, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !20, line: 204, size: 960, elements: !1153)
!1153 = !{!1154, !1155, !1159, !1166}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1152, file: !20, line: 205, baseType: !1112, size: 768)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1152, file: !20, line: 206, baseType: !1156, size: 64, offset: 768)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!1118, !1151}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1152, file: !20, line: 207, baseType: !1160, size: 64, offset: 832)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !1163, !1164, !1165}
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1152, file: !20, line: 209, baseType: !1167, size: 64, offset: 896)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!30, !1163, !41}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1123, file: !20, line: 187, baseType: !1118, size: 64, offset: 384)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1123, file: !20, line: 188, baseType: !1172, size: 64, offset: 448)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1123, file: !20, line: 189, baseType: !1174, size: 64, offset: 512)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !20, line: 157, size: 256, elements: !1176)
!1176 = !{!1177, !1178}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1175, file: !20, line: 158, baseType: !470, size: 192, align: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1175, file: !20, line: 159, baseType: !1163, size: 64, offset: 192)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1123, file: !20, line: 190, baseType: !824, size: 64, offset: 576)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1120, file: !20, line: 196, baseType: !613, size: 64, offset: 640)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1052, file: !1053, line: 100, baseType: !1163, size: 64, offset: 3776)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1052, file: !1053, line: 102, baseType: !1183, size: 64, offset: 3840)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1053, line: 107, size: 1152, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189, !1190, !1194}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1184, file: !1053, line: 108, baseType: !828, size: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1184, file: !1053, line: 109, baseType: !1051, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1184, file: !1053, line: 110, baseType: !850, size: 32, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1184, file: !1053, line: 111, baseType: !57, size: 32, offset: 224)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1184, file: !1053, line: 112, baseType: !1191, size: 640, offset: 256)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 640, elements: !1192)
!1192 = !{!1193}
!1193 = !DISubrange(count: 10)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1184, file: !1053, line: 113, baseType: !1195, size: 256, offset: 896)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 256, elements: !833)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1052, file: !1053, line: 103, baseType: !1197, size: 640, offset: 3904)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1198, size: 640, elements: !1192)
!1198 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1052, file: !1053, line: 104, baseType: !1200, size: 256, offset: 4544)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1198, size: 256, elements: !833)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !862, file: !863, line: 139, baseType: !1183, size: 64, offset: 1216)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !862, file: !863, line: 140, baseType: !1203, size: 64, offset: 1280)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !863, line: 25, size: 64, elements: !1205)
!1205 = !{!1206, !1207, !1208}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1204, file: !863, line: 26, baseType: !57, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1204, file: !863, line: 27, baseType: !30, size: 32, offset: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1204, file: !863, line: 28, baseType: !1209, offset: 64)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !868, elements: !846)
!1210 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !863, line: 142, baseType: !1211, size: 128, offset: 1344)
!1211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !862, file: !863, line: 142, size: 128, elements: !1212)
!1212 = !{!1213, !1214}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1211, file: !863, line: 143, baseType: !30, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1211, file: !863, line: 144, baseType: !756, size: 128, align: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !749, file: !245, line: 1013, baseType: !1216, size: 256, offset: 960)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !245, line: 970, size: 256, elements: !1217)
!1217 = !{!1218, !1219, !1220, !1221, !1222, !1223}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1216, file: !245, line: 971, baseType: !47, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1216, file: !245, line: 972, baseType: !7, size: 32, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1216, file: !245, line: 973, baseType: !7, size: 32, offset: 96)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1216, file: !245, line: 974, baseType: !7, size: 32, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1216, file: !245, line: 975, baseType: !7, size: 32, offset: 160)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1216, file: !245, line: 976, baseType: !49, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !749, file: !245, line: 1014, baseType: !1225, size: 128, offset: 1216)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1226, line: 8, size: 128, elements: !1227)
!1226 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1227 = !{!1228, !4371}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1225, file: !1226, line: 9, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1231, line: 70, size: 256, elements: !1232)
!1231 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1232 = !{!1233, !4368, !4369, !4370}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1230, file: !1231, line: 71, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1236, line: 82, size: 1536, elements: !1237)
!1236 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1237 = !{!1238, !1239, !1244, !1252, !1253, !1268, !4335, !4337, !4350, !4351, !4352, !4353, !4354, !4360, !4361, !4362}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1235, file: !1236, line: 84, baseType: !7, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1235, file: !1236, line: 85, baseType: !1240, size: 32, offset: 32)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !597, line: 275, baseType: !1241)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !597, line: 275, size: 32, elements: !1242)
!1242 = !{!1243}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1241, file: !597, line: 275, baseType: !601, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1235, file: !1236, line: 86, baseType: !1245, size: 128, offset: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1246, line: 38, size: 128, elements: !1247)
!1246 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1247 = !{!1248, !1250}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1245, file: !1246, line: 39, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1245, file: !1246, line: 39, baseType: !1251, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1235, file: !1236, line: 87, baseType: !1234, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1235, file: !1236, line: 88, baseType: !1254, size: 128, offset: 256)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1236, line: 49, size: 128, elements: !1255)
!1255 = !{!1256, !1265}
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1254, file: !1236, line: 50, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1254, file: !1236, line: 50, size: 64, elements: !1258)
!1258 = !{!1259, !1264}
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !1236, line: 51, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !1236, line: 51, size: 64, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1260, file: !1236, line: 52, baseType: !420, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1260, file: !1236, line: 52, baseType: !420, size: 32, offset: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1257, file: !1236, line: 54, baseType: !478, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1254, file: !1236, line: 56, baseType: !1266, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1235, file: !1236, line: 89, baseType: !1269, size: 64, offset: 384)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !245, line: 641, size: 4800, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1278, !1281, !1282, !1476, !4151, !4152, !4153, !4154, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4317, !4320, !4321, !4322, !4331, !4332, !4333, !4334}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1270, file: !245, line: 642, baseType: !32, size: 16)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1270, file: !245, line: 643, baseType: !34, size: 16, offset: 16)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1270, file: !245, line: 644, baseType: !850, size: 32, offset: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1270, file: !245, line: 645, baseType: !105, size: 128, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1270, file: !245, line: 646, baseType: !868, size: 32, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1270, file: !245, line: 647, baseType: !7, size: 32, offset: 224)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1270, file: !245, line: 650, baseType: !1279, size: 64, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !245, line: 607, flags: DIFlagFwdDecl)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1270, file: !245, line: 651, baseType: !1279, size: 64, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1270, file: !245, line: 654, baseType: !1283, size: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1285)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !245, line: 1966, size: 2048, align: 512, elements: !1286)
!1286 = !{!1287, !1291, !1304, !1310, !1314, !1318, !1322, !1326, !1330, !1334, !1338, !1339, !1345, !1349, !1386, !1417, !1424, !1430, !1434, !1438, !1442, !1446, !1450, !1456, !1460}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1285, file: !245, line: 1967, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!1234, !1269, !1234, !7}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1285, file: !245, line: 1968, baseType: !1292, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!24, !1234, !1269, !1295}
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1297, line: 10, size: 128, elements: !1298)
!1297 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1298 = !{!1299, !1303}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1296, file: !1297, line: 11, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !28}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1296, file: !1297, line: 12, baseType: !28, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1285, file: !245, line: 1969, baseType: !1305, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!30, !1308, !1269, !30}
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !883, line: 42, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1285, file: !245, line: 1970, baseType: !1311, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!1279, !1269, !30, !967}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1285, file: !245, line: 1972, baseType: !1315, size: 64, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!30, !1234, !978, !30}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1285, file: !245, line: 1974, baseType: !1319, size: 64, offset: 320)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!30, !1308, !1269, !1234, !32, !967}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1285, file: !245, line: 1976, baseType: !1323, size: 64, offset: 384)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!30, !1234, !1269, !1234}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1285, file: !245, line: 1977, baseType: !1327, size: 64, offset: 448)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!30, !1269, !1234}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1285, file: !245, line: 1978, baseType: !1331, size: 64, offset: 512)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!30, !1308, !1269, !1234, !24}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1285, file: !245, line: 1980, baseType: !1335, size: 64, offset: 576)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!30, !1308, !1269, !1234, !32}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1285, file: !245, line: 1982, baseType: !1327, size: 64, offset: 640)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1285, file: !245, line: 1983, baseType: !1340, size: 64, offset: 704)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!30, !1308, !1269, !1234, !32, !1343}
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !33, line: 21, baseType: !1344)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !33, line: 18, baseType: !420)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1285, file: !245, line: 1985, baseType: !1346, size: 64, offset: 768)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!30, !1308, !1269, !1234, !1269, !1234, !7}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1285, file: !245, line: 1987, baseType: !1350, size: 64, offset: 832)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!30, !1308, !1234, !1353}
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !245, line: 226, size: 640, elements: !1355)
!1355 = !{!1356, !1357, !1358, !1368, !1377, !1378, !1383, !1384, !1385}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1354, file: !245, line: 227, baseType: !7, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1354, file: !245, line: 228, baseType: !32, size: 16, offset: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, scope: !1354, file: !245, line: 241, baseType: !1359, size: 32, offset: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1354, file: !245, line: 241, size: 32, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1359, file: !245, line: 242, baseType: !850, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1359, file: !245, line: 243, baseType: !1363, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1364, line: 16, baseType: !1365)
!1364 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1364, line: 14, size: 32, elements: !1366)
!1366 = !{!1367}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1365, file: !1364, line: 15, baseType: !855, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, scope: !1354, file: !245, line: 245, baseType: !1369, size: 32, offset: 96)
!1369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1354, file: !245, line: 245, size: 32, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1369, file: !245, line: 246, baseType: !868, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1369, file: !245, line: 247, baseType: !1373, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1364, line: 20, baseType: !1374)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1364, line: 18, size: 32, elements: !1375)
!1375 = !{!1376}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1374, file: !1364, line: 19, baseType: !872, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1354, file: !245, line: 249, baseType: !49, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1354, file: !245, line: 250, baseType: !1379, size: 128, offset: 192)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !926, line: 13, size: 128, elements: !1380)
!1380 = !{!1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1379, file: !926, line: 14, baseType: !925, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1379, file: !926, line: 15, baseType: !1198, size: 64, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1354, file: !245, line: 251, baseType: !1379, size: 128, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1354, file: !245, line: 252, baseType: !1379, size: 128, offset: 448)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1354, file: !245, line: 259, baseType: !748, size: 64, offset: 576)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1285, file: !245, line: 1988, baseType: !1387, size: 64, offset: 896)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!30, !1308, !1390, !1392, !420, !7}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1225)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1394, line: 22, size: 1280, elements: !1395)
!1394 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1395 = !{!1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1393, file: !1394, line: 23, baseType: !420, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1393, file: !1394, line: 24, baseType: !32, size: 16, offset: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1393, file: !1394, line: 25, baseType: !7, size: 32, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1393, file: !1394, line: 26, baseType: !933, size: 32, offset: 96)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1393, file: !1394, line: 27, baseType: !478, size: 64, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1393, file: !1394, line: 28, baseType: !478, size: 64, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1393, file: !1394, line: 41, baseType: !478, size: 64, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1393, file: !1394, line: 42, baseType: !1343, size: 32, offset: 320)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1393, file: !1394, line: 43, baseType: !1343, size: 32, offset: 352)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1393, file: !1394, line: 44, baseType: !850, size: 32, offset: 384)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1393, file: !1394, line: 45, baseType: !868, size: 32, offset: 416)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1393, file: !1394, line: 46, baseType: !49, size: 64, offset: 448)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1393, file: !1394, line: 47, baseType: !1379, size: 128, offset: 512)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1393, file: !1394, line: 48, baseType: !1379, size: 128, offset: 640)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1393, file: !1394, line: 49, baseType: !1379, size: 128, offset: 768)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1393, file: !1394, line: 50, baseType: !1379, size: 128, offset: 896)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1393, file: !1394, line: 51, baseType: !478, size: 64, offset: 1024)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1393, file: !1394, line: 52, baseType: !478, size: 64, offset: 1088)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1393, file: !1394, line: 53, baseType: !420, size: 32, offset: 1152)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1393, file: !1394, line: 54, baseType: !420, size: 32, offset: 1184)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1393, file: !1394, line: 55, baseType: !478, size: 64, offset: 1216)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1285, file: !245, line: 1990, baseType: !1418, size: 64, offset: 960)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!1421, !1234, !978, !43}
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !33, line: 66, baseType: !1422)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !45, line: 73, baseType: !1423)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !45, line: 15, baseType: !1198)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1285, file: !245, line: 1991, baseType: !1425, size: 64, offset: 1024)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!30, !1269, !1428, !478, !478}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !245, line: 55, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1285, file: !245, line: 1993, baseType: !1431, size: 64, offset: 1088)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!30, !1269, !30}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1285, file: !245, line: 1994, baseType: !1435, size: 64, offset: 1152)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!30, !1269, !1234, !748, !7, !32}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1285, file: !245, line: 1997, baseType: !1439, size: 64, offset: 1216)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!30, !1308, !1269, !748, !32}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1285, file: !245, line: 1999, baseType: !1443, size: 64, offset: 1280)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!1279, !1308, !1234, !30}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1285, file: !245, line: 2001, baseType: !1447, size: 64, offset: 1344)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!30, !1308, !1234, !1279, !30}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1285, file: !245, line: 2003, baseType: !1451, size: 64, offset: 1408)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!30, !1308, !1234, !1454}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !245, line: 76, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1285, file: !245, line: 2005, baseType: !1457, size: 64, offset: 1472)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!30, !1234, !1454}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1285, file: !245, line: 2006, baseType: !1461, size: 64, offset: 1536)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!1464, !1269}
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !245, line: 3192, size: 192, elements: !1466)
!1466 = !{!1467, !1475}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1465, file: !245, line: 3193, baseType: !1468, size: 128)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1469, line: 296, size: 128, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1470 = !{!1471, !1472, !1474}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1468, file: !1469, line: 297, baseType: !67, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1468, file: !1469, line: 299, baseType: !1473, size: 32, offset: 32)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !33, line: 154, baseType: !7)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1468, file: !1469, line: 300, baseType: !28, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1465, file: !245, line: 3194, baseType: !420, size: 32, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1270, file: !245, line: 655, baseType: !1477, size: 64, offset: 448)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !245, line: 1190, size: 10752, elements: !1479)
!1479 = !{!1480, !1481, !1482, !1483, !1484, !1485, !3668, !3800, !3840, !3923, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3940, !3944, !3945, !3946, !3952, !3953, !3956, !3957, !3958, !3999, !4025, !4026, !4027, !4028, !4029, !4030, !4033, !4034, !4043, !4044, !4045, !4046, !4105, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1478, file: !245, line: 1191, baseType: !105, size: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1478, file: !245, line: 1192, baseType: !1343, size: 32, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1478, file: !245, line: 1193, baseType: !95, size: 8, offset: 160)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1478, file: !245, line: 1194, baseType: !47, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1478, file: !245, line: 1195, baseType: !49, size: 64, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1478, file: !245, line: 1196, baseType: !1486, size: 64, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !245, line: 2366, size: 576, elements: !1488)
!1488 = !{!1489, !1490, !1491, !1497, !1501, !1505, !1509, !3656, !3657, !3658, !3660, !3661, !3662, !3664, !3665, !3666, !3667}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1487, file: !245, line: 2367, baseType: !24, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1487, file: !245, line: 2368, baseType: !30, size: 32, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1487, file: !245, line: 2376, baseType: !1492, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!30, !1495}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1231, line: 21, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1487, file: !245, line: 2377, baseType: !1498, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1500)
!1500 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !245, line: 75, flags: DIFlagFwdDecl)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1487, file: !245, line: 2378, baseType: !1502, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!1234, !1486, !30, !24, !28}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1487, file: !245, line: 2380, baseType: !1506, size: 64, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{null, !1477}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1487, file: !245, line: 2381, baseType: !1510, size: 64, offset: 384)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !116, line: 402, size: 9216, align: 512, elements: !1512)
!1512 = !{!1513, !1514, !1515, !1519, !3330, !3356, !3357, !3358, !3359, !3363, !3366, !3367, !3368, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3434, !3438, !3458, !3477, !3478, !3479, !3480, !3489, !3512, !3513, !3516, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3530, !3531, !3609, !3617, !3618, !3619, !3621, !3625, !3626, !3635, !3636, !3637, !3638, !3640, !3641, !3642, !3649, !3650, !3651, !3655}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1511, file: !116, line: 403, baseType: !115, size: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1511, file: !116, line: 406, baseType: !105, size: 128, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1511, file: !116, line: 409, baseType: !1516, size: 448, offset: 192)
!1516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 448, elements: !1517)
!1517 = !{!1518}
!1518 = !DISubrange(count: 56)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1511, file: !116, line: 417, baseType: !1520, size: 768, offset: 640)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !116, line: 45, size: 768, elements: !1521)
!1521 = !{!1522, !3324, !3325, !3326, !3329}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1520, file: !116, line: 46, baseType: !1523, size: 512)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1524, line: 64, size: 512, elements: !1525)
!1524 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1525 = !{!1526, !1527, !1528, !1530, !1574, !3184, !3318, !3319, !3320, !3321, !3322, !3323}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1523, file: !1524, line: 65, baseType: !24, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1523, file: !1524, line: 66, baseType: !105, size: 128, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1523, file: !1524, line: 67, baseType: !1529, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1523, file: !1524, line: 68, baseType: !1531, size: 64, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1524, line: 168, size: 768, elements: !1533)
!1533 = !{!1534, !1535, !1536, !1537}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1532, file: !1524, line: 169, baseType: !105, size: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1532, file: !1524, line: 170, baseType: !67, size: 32, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1532, file: !1524, line: 171, baseType: !1523, size: 512, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1532, file: !1524, line: 172, baseType: !1538, size: 64, offset: 704)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1540)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1524, line: 133, size: 192, elements: !1541)
!1541 = !{!1542, !1549, !1554}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1540, file: !1524, line: 134, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1544)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!30, !1547}
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1523)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1540, file: !1524, line: 135, baseType: !1550, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1551)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!24, !1547}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1540, file: !1524, line: 136, baseType: !1555, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1556)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!30, !1547, !1559}
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1524, line: 125, size: 20736, elements: !1561)
!1561 = !{!1562, !1564, !1568, !1569, !1573}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1560, file: !1524, line: 126, baseType: !1563, size: 192)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !978, size: 192, elements: !812)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1560, file: !1524, line: 127, baseType: !1565, size: 4096, offset: 192)
!1565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !978, size: 4096, elements: !1566)
!1566 = !{!1567}
!1567 = !DISubrange(count: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1560, file: !1524, line: 128, baseType: !30, size: 32, offset: 4288)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1560, file: !1524, line: 129, baseType: !1570, size: 16384, offset: 4320)
!1570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 16384, elements: !1571)
!1571 = !{!1572}
!1572 = !DISubrange(count: 2048)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1560, file: !1524, line: 130, baseType: !30, size: 32, offset: 20704)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1523, file: !1524, line: 69, baseType: !1575, size: 64, offset: 320)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1577)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1524, line: 116, size: 384, elements: !1578)
!1578 = !{!1579, !1583, !1602, !3172, !3176, !3180}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1577, file: !1524, line: 117, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{null, !1529}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1577, file: !1524, line: 118, baseType: !1584, size: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1586)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1587, line: 254, size: 128, elements: !1588)
!1587 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1588 = !{!1589, !1598}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1586, file: !1587, line: 255, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!1421, !1529, !1593, !978}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1587, line: 30, size: 128, elements: !1595)
!1595 = !{!1596, !1597}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1594, file: !1587, line: 31, baseType: !24, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1594, file: !1587, line: 32, baseType: !32, size: 16, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1586, file: !1587, line: 256, baseType: !1599, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!1421, !1529, !1593, !24, !43}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1577, file: !1524, line: 119, baseType: !1603, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1606)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1587, line: 84, size: 320, elements: !1607)
!1607 = !{!1608, !1609, !1613, !3168, !3170}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1606, file: !1587, line: 85, baseType: !24, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1606, file: !1587, line: 86, baseType: !1610, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!32, !1529, !1593, !30}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1606, file: !1587, line: 88, baseType: !1614, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!32, !1529, !1617, !30}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1587, line: 175, size: 512, elements: !1619)
!1619 = !{!1620, !1621, !1622, !1623, !3159, !3163, !3164}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1618, file: !1587, line: 176, baseType: !1594, size: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1618, file: !1587, line: 177, baseType: !43, size: 64, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1618, file: !1587, line: 178, baseType: !28, size: 64, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1618, file: !1587, line: 179, baseType: !1624, size: 64, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!1627}
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !245, line: 472, size: 1536, align: 64, elements: !1629)
!1629 = !{!1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !3151, !3152, !3153, !3156, !3157, !3158}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1628, file: !245, line: 473, baseType: !1269, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1628, file: !245, line: 474, baseType: !1468, size: 128, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1628, file: !245, line: 475, baseType: !909, size: 320, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1628, file: !245, line: 476, baseType: !1473, size: 32, offset: 512)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1628, file: !245, line: 477, baseType: !57, size: 32, offset: 544)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1628, file: !245, line: 482, baseType: !610, size: 128, offset: 576)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1628, file: !245, line: 483, baseType: !47, size: 64, offset: 704)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1628, file: !245, line: 484, baseType: !47, size: 64, offset: 768)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1628, file: !245, line: 485, baseType: !1639, size: 64, offset: 832)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1641)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !245, line: 404, size: 1280, elements: !1642)
!1642 = !{!1643, !1978, !2048, !2052, !2056, !2073, !2079, !2083, !2088, !2092, !2096, !2100, !2199, !2203, !2207, !2211, !2216, !2220, !3143, !3147}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1641, file: !245, line: 405, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!30, !1647, !1958}
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !131, line: 74, size: 512, align: 128, elements: !1649)
!1649 = !{!1650, !1651, !1952, !1957}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1648, file: !131, line: 75, baseType: !47, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !131, line: 83, baseType: !1652, size: 320, offset: 64)
!1652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1648, file: !131, line: 83, size: 320, elements: !1653)
!1653 = !{!1654, !1675, !1689, !1693, !1951}
!1654 = !DIDerivedType(tag: DW_TAG_member, scope: !1652, file: !131, line: 84, baseType: !1655, size: 320)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1652, file: !131, line: 84, size: 320, elements: !1656)
!1656 = !{!1657, !1668, !1669, !1674}
!1657 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !131, line: 90, baseType: !1658, size: 128)
!1658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1655, file: !131, line: 90, size: 128, elements: !1659)
!1659 = !{!1660, !1661, !1666, !1667}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1658, file: !131, line: 91, baseType: !105, size: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1658, file: !131, line: 94, baseType: !1662, size: 128)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1658, file: !131, line: 94, size: 128, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1662, file: !131, line: 96, baseType: !28, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1662, file: !131, line: 98, baseType: !7, size: 32, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1658, file: !131, line: 102, baseType: !105, size: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1658, file: !131, line: 103, baseType: !105, size: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1655, file: !131, line: 106, baseType: !1627, size: 64, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !131, line: 107, baseType: !1670, size: 64, offset: 192)
!1670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1655, file: !131, line: 107, size: 64, elements: !1671)
!1671 = !{!1672, !1673}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1670, file: !131, line: 108, baseType: !47, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1670, file: !131, line: 109, baseType: !47, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1655, file: !131, line: 117, baseType: !47, size: 64, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, scope: !1652, file: !131, line: 119, baseType: !1676, size: 320)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1652, file: !131, line: 119, size: 320, elements: !1677)
!1677 = !{!1678, !1679, !1682, !1683, !1684}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1676, file: !131, line: 124, baseType: !47, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1676, file: !131, line: 125, baseType: !1680, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !131, line: 125, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1676, file: !131, line: 126, baseType: !47, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1676, file: !131, line: 127, baseType: !47, size: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !131, line: 128, baseType: !1685, size: 64, offset: 256)
!1685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1676, file: !131, line: 128, size: 64, elements: !1686)
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1685, file: !131, line: 133, baseType: !47, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1685, file: !131, line: 138, baseType: !769, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1652, file: !131, line: 141, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1652, file: !131, line: 141, size: 64, elements: !1691)
!1691 = !{!1692}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1690, file: !131, line: 142, baseType: !47, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1652, file: !131, line: 144, baseType: !1694, size: 128)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1652, file: !131, line: 144, size: 128, elements: !1695)
!1695 = !{!1696, !1950}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1694, file: !131, line: 146, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !123, line: 126, size: 1216, elements: !1699)
!1699 = !{!1700, !1709, !1730, !1731, !1732, !1733, !1734, !1932, !1933, !1934}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1698, file: !123, line: 127, baseType: !1701, size: 384)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !123, line: 21, size: 384, elements: !1702)
!1702 = !{!1703, !1704, !1705, !1706, !1707, !1708}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1701, file: !123, line: 22, baseType: !47, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1701, file: !123, line: 23, baseType: !407, size: 64, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1701, file: !123, line: 24, baseType: !407, size: 64, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1701, file: !123, line: 25, baseType: !47, size: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1701, file: !123, line: 26, baseType: !47, size: 64, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1701, file: !123, line: 27, baseType: !47, size: 64, offset: 320)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1698, file: !123, line: 128, baseType: !1710, size: 128, offset: 384)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1711, line: 105, size: 128, elements: !1712)
!1711 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1712 = !{!1713, !1714}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1710, file: !1711, line: 110, baseType: !47, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1710, file: !1711, line: 118, baseType: !1715, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1711, line: 95, size: 448, elements: !1717)
!1717 = !{!1718, !1719, !1725, !1726, !1727, !1728, !1729}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1716, file: !1711, line: 96, baseType: !769, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1716, file: !1711, line: 97, baseType: !1720, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1711, line: 60, baseType: !1722)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{null, !1724}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1716, file: !1711, line: 98, baseType: !1720, size: 64, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1716, file: !1711, line: 99, baseType: !967, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1716, file: !1711, line: 100, baseType: !967, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1716, file: !1711, line: 101, baseType: !756, size: 128, align: 64, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1716, file: !1711, line: 102, baseType: !1724, size: 64, offset: 384)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1698, file: !123, line: 129, baseType: !1139, size: 256, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1698, file: !123, line: 130, baseType: !122, size: 32, offset: 768)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1698, file: !123, line: 131, baseType: !7, size: 32, offset: 800)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1698, file: !123, line: 132, baseType: !47, size: 64, offset: 832)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1698, file: !123, line: 133, baseType: !1735, size: 64, offset: 896)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1737)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !123, line: 77, size: 192, elements: !1738)
!1738 = !{!1739, !1743, !1928}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1737, file: !123, line: 83, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{null, !1647}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1737, file: !123, line: 89, baseType: !1744, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!1747, !1748}
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !131, line: 1184, baseType: !7)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1750, line: 512, size: 896, elements: !1751)
!1750 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1751 = !{!1752, !1895, !1896, !1903, !1910, !1920, !1921, !1922, !1924, !1926}
!1752 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !1750, line: 513, baseType: !1753, size: 320)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !1750, line: 513, size: 320, elements: !1754)
!1754 = !{!1755, !1891, !1892, !1893, !1894}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1753, file: !1750, line: 514, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !131, line: 625, size: 1344, elements: !1758)
!1758 = !{!1759, !1768, !1769, !1777, !1784, !1785, !1790, !1791, !1796, !1797, !1809, !1884, !1885, !1886, !1887, !1888, !1889}
!1759 = !DIDerivedType(tag: DW_TAG_member, scope: !1757, file: !131, line: 628, baseType: !1760, size: 128)
!1760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1757, file: !131, line: 628, size: 128, elements: !1761)
!1761 = !{!1762, !1767}
!1762 = !DIDerivedType(tag: DW_TAG_member, scope: !1760, file: !131, line: 629, baseType: !1763, size: 128)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1760, file: !131, line: 629, size: 128, elements: !1764)
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1763, file: !131, line: 631, baseType: !47, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1763, file: !131, line: 632, baseType: !47, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1760, file: !131, line: 635, baseType: !756, size: 128, align: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1757, file: !131, line: 639, baseType: !720, size: 64, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1757, file: !131, line: 640, baseType: !1770, size: 64, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1771, line: 297, baseType: !1772)
!1771 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1771, line: 297, size: 64, elements: !1773)
!1773 = !{!1774}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1772, file: !1771, line: 297, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1776, line: 19, baseType: !47)
!1776 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1777 = !DIDerivedType(tag: DW_TAG_member, scope: !1757, file: !131, line: 646, baseType: !1778, size: 64, offset: 256)
!1778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1757, file: !131, line: 646, size: 64, elements: !1779)
!1779 = !{!1780, !1783}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1778, file: !131, line: 647, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1782)
!1782 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !131, line: 542, baseType: !47)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1778, file: !131, line: 648, baseType: !1782, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1757, file: !131, line: 666, baseType: !30, size: 32, offset: 320)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1757, file: !131, line: 667, baseType: !1786, size: 64, offset: 384)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !131, line: 579, size: 320, elements: !1788)
!1788 = !{!1789}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1787, file: !131, line: 580, baseType: !909, size: 320)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1757, file: !131, line: 670, baseType: !967, size: 8, offset: 448)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1757, file: !131, line: 681, baseType: !1792, size: 256, offset: 512)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1757, file: !131, line: 678, size: 256, elements: !1793)
!1793 = !{!1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1792, file: !131, line: 679, baseType: !470, size: 192, align: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1792, file: !131, line: 680, baseType: !47, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1757, file: !131, line: 689, baseType: !105, size: 128, offset: 768)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1757, file: !131, line: 691, baseType: !1798, size: 64, offset: 896)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1800, line: 31, size: 768, elements: !1801)
!1800 = !DIFile(filename: "./include/linux/rmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "424c17c81581cd4481af59c84df2437d")
!1801 = !{!1802, !1803, !1804, !1805, !1806, !1807, !1808}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1799, file: !1800, line: 32, baseType: !1798, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1799, file: !1800, line: 33, baseType: !909, size: 320, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1799, file: !1800, line: 41, baseType: !57, size: 32, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "num_children", scope: !1799, file: !1800, line: 50, baseType: !47, size: 64, offset: 448)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "num_active_vmas", scope: !1799, file: !1800, line: 52, baseType: !47, size: 64, offset: 512)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1799, file: !1800, line: 54, baseType: !1798, size: 64, offset: 576)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1799, file: !1800, line: 66, baseType: !610, size: 128, offset: 640)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1757, file: !131, line: 694, baseType: !1810, size: 64, offset: 960)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1812)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1750, line: 563, size: 1024, elements: !1813)
!1813 = !{!1814, !1818, !1819, !1823, !1827, !1831, !1832, !1836, !1840, !1844, !1845, !1846, !1850, !1854, !1876, !1880}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1812, file: !1750, line: 564, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{null, !1756}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1812, file: !1750, line: 569, baseType: !1815, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1812, file: !1750, line: 571, baseType: !1820, size: 64, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!30, !1756, !47}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1812, file: !1750, line: 572, baseType: !1824, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!30, !1756}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1812, file: !1750, line: 578, baseType: !1828, size: 64, offset: 256)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!30, !1756, !47, !47, !47}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1812, file: !1750, line: 580, baseType: !1744, size: 64, offset: 320)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1812, file: !1750, line: 581, baseType: !1833, size: 64, offset: 384)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!1747, !1748, !7}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1812, file: !1750, line: 582, baseType: !1837, size: 64, offset: 448)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!1747, !1748, !47, !47}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1812, file: !1750, line: 584, baseType: !1841, size: 64, offset: 512)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!47, !1756}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1812, file: !1750, line: 588, baseType: !1744, size: 64, offset: 576)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1812, file: !1750, line: 591, baseType: !1744, size: 64, offset: 640)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1812, file: !1750, line: 597, baseType: !1847, size: 64, offset: 704)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!30, !1756, !47, !28, !30, !30}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1812, file: !1750, line: 603, baseType: !1851, size: 64, offset: 768)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!24, !1756}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1812, file: !1750, line: 613, baseType: !1855, size: 64, offset: 832)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!30, !1756, !1858}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1860, line: 44, size: 256, elements: !1861)
!1860 = !DIFile(filename: "./include/linux/mempolicy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb371e8a578bad8ff65f30ddf87a2459")
!1861 = !{!1862, !1863, !1864, !1865, !1870, !1871}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1859, file: !1860, line: 45, baseType: !57, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1859, file: !1860, line: 46, baseType: !34, size: 16, offset: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1859, file: !1860, line: 47, baseType: !34, size: 16, offset: 48)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1859, file: !1860, line: 48, baseType: !1866, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !367, line: 99, baseType: !1867)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 99, size: 64, elements: !1868)
!1868 = !{!1869}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1867, file: !367, line: 99, baseType: !387, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "home_node", scope: !1859, file: !1860, line: 49, baseType: !30, size: 32, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !1859, file: !1860, line: 54, baseType: !1872, size: 64, offset: 192)
!1872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1859, file: !1860, line: 51, size: 64, elements: !1873)
!1873 = !{!1874, !1875}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mems_allowed", scope: !1872, file: !1860, line: 52, baseType: !1866, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "user_nodemask", scope: !1872, file: !1860, line: 53, baseType: !1866, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1812, file: !1750, line: 625, baseType: !1877, size: 64, offset: 896)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!1858, !1756, !47}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1812, file: !1750, line: 633, baseType: !1881, size: 64, offset: 960)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!1647, !1756, !47}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1757, file: !131, line: 697, baseType: !47, size: 64, offset: 1024)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1757, file: !131, line: 699, baseType: !748, size: 64, offset: 1088)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1757, file: !131, line: 700, baseType: !28, size: 64, offset: 1152)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1757, file: !131, line: 711, baseType: !769, size: 64, offset: 1216)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1757, file: !131, line: 717, baseType: !1858, size: 64, offset: 1280)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1757, file: !131, line: 722, baseType: !1890, offset: 1344)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !131, line: 570, elements: !741)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1753, file: !1750, line: 515, baseType: !1473, size: 32, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1753, file: !1750, line: 516, baseType: !47, size: 64, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1753, file: !1750, line: 517, baseType: !47, size: 64, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1753, file: !1750, line: 518, baseType: !47, size: 64, offset: 256)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1749, file: !1750, line: 520, baseType: !130, size: 32, offset: 320)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1749, file: !1750, line: 522, baseType: !1897, size: 64, offset: 384)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1776, line: 22, baseType: !1899)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1776, line: 22, size: 64, elements: !1900)
!1900 = !{!1901}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1899, file: !1776, line: 22, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1776, line: 15, baseType: !47)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1749, file: !1750, line: 524, baseType: !1904, size: 64, offset: 448)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1771, line: 372, baseType: !1906)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1771, line: 372, size: 64, elements: !1907)
!1907 = !{!1908}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1906, file: !1771, line: 372, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1776, line: 16, baseType: !47)
!1910 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !1750, line: 527, baseType: !1911, size: 64, offset: 512)
!1911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1749, file: !1750, line: 527, size: 64, elements: !1912)
!1912 = !{!1913, !1919}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1911, file: !1750, line: 528, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1776, line: 21, baseType: !1915)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1776, line: 21, size: 64, elements: !1916)
!1916 = !{!1917}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1915, file: !1776, line: 21, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1776, line: 14, baseType: !47)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1911, file: !1750, line: 529, baseType: !1898, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1749, file: !1750, line: 534, baseType: !1647, size: 64, offset: 576)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1749, file: !1750, line: 535, baseType: !1647, size: 64, offset: 640)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1749, file: !1750, line: 541, baseType: !1923, size: 64, offset: 704)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1749, file: !1750, line: 545, baseType: !1925, size: 64, offset: 768)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1749, file: !1750, line: 549, baseType: !1927, size: 64, offset: 832)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1771, line: 520, baseType: !1647)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1737, file: !123, line: 100, baseType: !1929, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!30, !1697, !47, !47, !30}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1698, file: !123, line: 134, baseType: !28, size: 64, offset: 960)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1698, file: !123, line: 135, baseType: !30, size: 32, offset: 1024)
!1934 = !DIDerivedType(tag: DW_TAG_member, scope: !1698, file: !123, line: 136, baseType: !1935, size: 128, offset: 1088)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1698, file: !123, line: 136, size: 128, elements: !1936)
!1936 = !{!1937, !1943}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1935, file: !123, line: 137, baseType: !1938, size: 128)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1939, line: 6, size: 128, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1940 = !{!1941, !1942}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1938, file: !1939, line: 7, baseType: !478, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1938, file: !1939, line: 8, baseType: !478, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !123, line: 138, baseType: !1944)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !123, line: 138, elements: !1945)
!1945 = !{!1946, !1948}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1944, file: !123, line: 138, baseType: !1947)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1944, file: !123, line: 138, elements: !741)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1944, file: !123, line: 138, baseType: !1949)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1938, elements: !846)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1694, file: !131, line: 147, baseType: !28, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1652, file: !131, line: 161, baseType: !756, size: 128, align: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !131, line: 164, baseType: !1953, size: 32, offset: 384)
!1953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1648, file: !131, line: 164, size: 32, elements: !1954)
!1954 = !{!1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1953, file: !131, line: 169, baseType: !57, size: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1953, file: !131, line: 177, baseType: !7, size: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1648, file: !131, line: 181, baseType: !57, size: 32, offset: 416)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !147, line: 42, size: 384, elements: !1960)
!1960 = !{!1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1959, file: !147, line: 43, baseType: !1198, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1959, file: !147, line: 45, baseType: !1198, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1959, file: !147, line: 52, baseType: !49, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1959, file: !147, line: 53, baseType: !49, size: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1959, file: !147, line: 55, baseType: !146, size: 32, offset: 256)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1959, file: !147, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1959, file: !147, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1959, file: !147, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1959, file: !147, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1959, file: !147, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1959, file: !147, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1959, file: !147, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1959, file: !147, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1959, file: !147, line: 78, baseType: !1975, size: 64, offset: 320)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !147, line: 78, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1641, file: !245, line: 406, baseType: !1979, size: 64, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!30, !748, !1982}
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !131, line: 293, size: 1536, elements: !1984)
!1984 = !{!1985, !2015, !2029}
!1985 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !131, line: 295, baseType: !1986, size: 512)
!1986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1983, file: !131, line: 295, size: 512, elements: !1987)
!1987 = !{!1988, !2014}
!1988 = !DIDerivedType(tag: DW_TAG_member, scope: !1986, file: !131, line: 296, baseType: !1989, size: 448)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1986, file: !131, line: 296, size: 448, elements: !1990)
!1990 = !{!1991, !1992, !2001, !2002, !2003, !2012, !2013}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1989, file: !131, line: 298, baseType: !47, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, scope: !1989, file: !131, line: 299, baseType: !1993, size: 128, offset: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1989, file: !131, line: 299, size: 128, elements: !1994)
!1994 = !{!1995, !1996}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1993, file: !131, line: 300, baseType: !105, size: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, scope: !1993, file: !131, line: 302, baseType: !1997, size: 128)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1993, file: !131, line: 302, size: 128, elements: !1998)
!1998 = !{!1999, !2000}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1997, file: !131, line: 303, baseType: !28, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1997, file: !131, line: 305, baseType: !7, size: 32, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1989, file: !131, line: 310, baseType: !1627, size: 64, offset: 192)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1989, file: !131, line: 311, baseType: !47, size: 64, offset: 256)
!2003 = !DIDerivedType(tag: DW_TAG_member, scope: !1989, file: !131, line: 312, baseType: !2004, size: 64, offset: 320)
!2004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1989, file: !131, line: 312, size: 64, elements: !2005)
!2005 = !{!2006, !2007}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2004, file: !131, line: 313, baseType: !28, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2004, file: !131, line: 314, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !131, line: 257, baseType: !2009)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 255, size: 64, elements: !2010)
!2010 = !{!2011}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2009, file: !131, line: 256, baseType: !47, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1989, file: !131, line: 316, baseType: !57, size: 32, offset: 384)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1989, file: !131, line: 317, baseType: !57, size: 32, offset: 416)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1986, file: !131, line: 323, baseType: !1648, size: 512, align: 128)
!2015 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !131, line: 325, baseType: !2016, size: 512, offset: 512)
!2016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1983, file: !131, line: 325, size: 512, elements: !2017)
!2017 = !{!2018, !2028}
!2018 = !DIDerivedType(tag: DW_TAG_member, scope: !2016, file: !131, line: 326, baseType: !2019, size: 320)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !131, line: 326, size: 320, elements: !2020)
!2020 = !{!2021, !2022, !2023, !2024, !2025, !2026, !2027}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2019, file: !131, line: 327, baseType: !47, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2019, file: !131, line: 328, baseType: !47, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2019, file: !131, line: 329, baseType: !47, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2019, file: !131, line: 331, baseType: !57, size: 32, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2019, file: !131, line: 332, baseType: !57, size: 32, offset: 224)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2019, file: !131, line: 333, baseType: !57, size: 32, offset: 256)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2019, file: !131, line: 335, baseType: !7, size: 32, offset: 288)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2016, file: !131, line: 339, baseType: !1648, size: 512, align: 128)
!2029 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !131, line: 341, baseType: !2030, size: 512, offset: 1024)
!2030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1983, file: !131, line: 341, size: 512, elements: !2031)
!2031 = !{!2032, !2041, !2047}
!2032 = !DIDerivedType(tag: DW_TAG_member, scope: !2030, file: !131, line: 342, baseType: !2033, size: 384)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2030, file: !131, line: 342, size: 384, elements: !2034)
!2034 = !{!2035, !2036, !2037, !2038, !2039, !2040}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2033, file: !131, line: 343, baseType: !47, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2033, file: !131, line: 344, baseType: !47, size: 64, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2033, file: !131, line: 346, baseType: !28, size: 64, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2033, file: !131, line: 347, baseType: !28, size: 64, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2033, file: !131, line: 348, baseType: !28, size: 64, offset: 256)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2033, file: !131, line: 349, baseType: !28, size: 64, offset: 320)
!2041 = !DIDerivedType(tag: DW_TAG_member, scope: !2030, file: !131, line: 352, baseType: !2042, size: 256)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2030, file: !131, line: 352, size: 256, elements: !2043)
!2043 = !{!2044, !2045, !2046}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2042, file: !131, line: 353, baseType: !47, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2042, file: !131, line: 354, baseType: !47, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2042, file: !131, line: 356, baseType: !105, size: 128, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2030, file: !131, line: 359, baseType: !1648, size: 512, align: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1641, file: !245, line: 409, baseType: !2049, size: 64, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!30, !1627, !1958}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1641, file: !245, line: 412, baseType: !2053, size: 64, offset: 192)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!967, !1627, !1982}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1641, file: !245, line: 414, baseType: !2057, size: 64, offset: 256)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !2060}
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !2062, line: 1276, size: 448, elements: !2063)
!2062 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!2063 = !{!2064, !2065, !2066, !2068, !2069, !2070, !2071, !2072}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2061, file: !2062, line: 1277, baseType: !748, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2061, file: !2062, line: 1278, baseType: !1627, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !2061, file: !2062, line: 1279, baseType: !2067, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !2061, file: !2062, line: 1281, baseType: !47, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !2061, file: !2062, line: 1282, baseType: !7, size: 32, offset: 256)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !2061, file: !2062, line: 1283, baseType: !7, size: 32, offset: 288)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !2061, file: !2062, line: 1284, baseType: !967, size: 8, offset: 320)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !2061, file: !2062, line: 1285, baseType: !47, size: 64, offset: 384)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1641, file: !245, line: 416, baseType: !2074, size: 64, offset: 320)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!30, !748, !1627, !49, !7, !2077, !2078}
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1641, file: !245, line: 419, baseType: !2080, size: 64, offset: 384)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!30, !748, !1627, !49, !7, !7, !1647, !28}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1641, file: !245, line: 424, baseType: !2084, size: 64, offset: 448)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!2087, !1627, !2087}
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !33, line: 131, baseType: !478)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1641, file: !245, line: 425, baseType: !2089, size: 64, offset: 512)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{null, !1982, !43, !43}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1641, file: !245, line: 426, baseType: !2093, size: 64, offset: 576)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!967, !1982, !1473}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1641, file: !245, line: 427, baseType: !2097, size: 64, offset: 640)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{null, !1982}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1641, file: !245, line: 428, baseType: !2101, size: 64, offset: 704)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!1421, !2104, !2142}
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !245, line: 373, size: 384, elements: !2106)
!2106 = !{!2107, !2108, !2109, !2113, !2114, !2115, !2116}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2105, file: !245, line: 374, baseType: !748, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2105, file: !245, line: 375, baseType: !49, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2105, file: !245, line: 376, baseType: !2110, size: 64, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{null, !2104, !1198}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2105, file: !245, line: 377, baseType: !28, size: 64, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2105, file: !245, line: 378, baseType: !30, size: 32, offset: 256)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2105, file: !245, line: 379, baseType: !101, size: 16, offset: 288)
!2116 = !DIDerivedType(tag: DW_TAG_member, scope: !2105, file: !245, line: 380, baseType: !2117, size: 64, offset: 320)
!2117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2105, file: !245, line: 380, size: 64, elements: !2118)
!2118 = !{!2119, !2138}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2117, file: !245, line: 386, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !2062, line: 998, size: 448, elements: !2122)
!2122 = !{!2123, !2124, !2125}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !2121, file: !2062, line: 999, baseType: !1982, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !2121, file: !2062, line: 1000, baseType: !30, size: 32, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2121, file: !2062, line: 1001, baseType: !2126, size: 320, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !63, line: 14, baseType: !2127)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !63, line: 30, size: 320, elements: !2128)
!2128 = !{!2129, !2130, !2131, !2137}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2127, file: !63, line: 31, baseType: !7, size: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2127, file: !63, line: 32, baseType: !28, size: 64, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2127, file: !63, line: 33, baseType: !2132, size: 64, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !63, line: 16, baseType: !2133)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!30, !2136, !7, !30, !28}
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2127, file: !63, line: 34, baseType: !105, size: 128, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2117, file: !245, line: 395, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!1421, !28}
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2144, line: 41, size: 320, elements: !2145)
!2144 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2145 = !{!2146, !2147, !2148, !2149, !2150, !2151, !2156, !2194}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2143, file: !2144, line: 42, baseType: !91, size: 8)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2143, file: !2144, line: 43, baseType: !967, size: 8, offset: 8)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2143, file: !2144, line: 44, baseType: !967, size: 8, offset: 16)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2143, file: !2144, line: 45, baseType: !967, size: 8, offset: 24)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2143, file: !2144, line: 46, baseType: !967, size: 8, offset: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, scope: !2143, file: !2144, line: 47, baseType: !2152, size: 64, offset: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2143, file: !2144, line: 47, size: 64, elements: !2153)
!2153 = !{!2154, !2155}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2152, file: !2144, line: 48, baseType: !43, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2152, file: !2144, line: 49, baseType: !30, size: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, scope: !2143, file: !2144, line: 61, baseType: !2157, size: 128, offset: 128)
!2157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2143, file: !2144, line: 61, size: 128, elements: !2158)
!2158 = !{!2159, !2165}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2157, file: !2144, line: 67, baseType: !2160, size: 128)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2161, line: 17, size: 128, elements: !2162)
!2161 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2162 = !{!2163, !2164}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2160, file: !2161, line: 19, baseType: !28, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2160, file: !2161, line: 20, baseType: !44, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, scope: !2157, file: !2144, line: 68, baseType: !2166, size: 128)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2157, file: !2144, line: 68, size: 128, elements: !2167)
!2167 = !{!2168, !2193}
!2168 = !DIDerivedType(tag: DW_TAG_member, scope: !2166, file: !2144, line: 69, baseType: !2169, size: 64)
!2169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2166, file: !2144, line: 69, size: 64, elements: !2170)
!2170 = !{!2171, !2174, !2181, !2190, !2192}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2169, file: !2144, line: 71, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2160)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2169, file: !2144, line: 72, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2177)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2144, line: 17, size: 128, elements: !2178)
!2178 = !{!2179, !2180}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2177, file: !2144, line: 18, baseType: !28, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2177, file: !2144, line: 19, baseType: !43, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2169, file: !2144, line: 73, baseType: !2182, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2184)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2185, line: 31, size: 128, elements: !2186)
!2185 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!2186 = !{!2187, !2188, !2189}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !2184, file: !2185, line: 32, baseType: !1647, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !2184, file: !2185, line: 33, baseType: !7, size: 32, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !2184, file: !2185, line: 34, baseType: !7, size: 32, offset: 96)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2169, file: !2144, line: 74, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2169, file: !2144, line: 75, baseType: !28, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2166, file: !2144, line: 77, baseType: !43, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, scope: !2143, file: !2144, line: 80, baseType: !2195, size: 64, offset: 256)
!2195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2143, file: !2144, line: 80, size: 64, elements: !2196)
!2196 = !{!2197, !2198}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2195, file: !2144, line: 81, baseType: !47, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2195, file: !2144, line: 82, baseType: !49, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1641, file: !245, line: 433, baseType: !2200, size: 64, offset: 768)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!30, !1627, !1982, !1982, !151}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1641, file: !245, line: 435, baseType: !2204, size: 64, offset: 832)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!30, !1982}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1641, file: !245, line: 436, baseType: !2208, size: 64, offset: 896)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!967, !1982, !43, !43}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1641, file: !245, line: 438, baseType: !2212, size: 64, offset: 960)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{null, !1982, !2215, !2215}
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1641, file: !245, line: 439, baseType: !2217, size: 64, offset: 1024)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!30, !1627, !1647}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1641, file: !245, line: 442, baseType: !2221, size: 64, offset: 1088)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!30, !2224, !748, !2478}
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !2226, line: 282, size: 2176, elements: !2227)
!2226 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!2227 = !{!2228, !2229, !2230, !2231, !2232, !2234, !2235, !2237, !2244, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2257, !2263, !2264, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !2225, file: !2226, line: 283, baseType: !1710, size: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2225, file: !2226, line: 284, baseType: !47, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2225, file: !2226, line: 285, baseType: !398, size: 16, offset: 192)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2225, file: !2226, line: 286, baseType: !712, size: 320, offset: 256)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2225, file: !2226, line: 287, baseType: !2233, size: 8, offset: 576)
!2233 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2225, file: !2226, line: 288, baseType: !7, size: 32, offset: 608)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !2225, file: !2226, line: 289, baseType: !2236, size: 64, offset: 640)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !2225, file: !2226, line: 290, baseType: !2238, size: 64, offset: 704)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !2226, line: 250, size: 64, elements: !2240)
!2240 = !{!2241, !2242, !2243}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2239, file: !2226, line: 251, baseType: !67, size: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2239, file: !2226, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2239, file: !2226, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !2225, file: !2226, line: 291, baseType: !2245, size: 128, offset: 768)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !2226, line: 274, size: 128, elements: !2246)
!2246 = !{!2247, !2248}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2245, file: !2226, line: 275, baseType: !2239, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2245, file: !2226, line: 276, baseType: !2239, size: 64, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !2225, file: !2226, line: 292, baseType: !7, size: 32, offset: 896)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !2225, file: !2226, line: 293, baseType: !7, size: 32, offset: 928)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2225, file: !2226, line: 294, baseType: !7, size: 32, offset: 960)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !2225, file: !2226, line: 295, baseType: !7, size: 32, offset: 992)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !2225, file: !2226, line: 296, baseType: !7, size: 32, offset: 1024)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !2225, file: !2226, line: 297, baseType: !7, size: 32, offset: 1056)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !2225, file: !2226, line: 298, baseType: !2256, size: 64, offset: 1088)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !2225, file: !2226, line: 299, baseType: !2258, size: 64, offset: 1152)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !2226, line: 269, size: 96, elements: !2260)
!2260 = !{!2261, !2262}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2259, file: !2226, line: 270, baseType: !2239, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2259, file: !2226, line: 271, baseType: !7, size: 32, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !2225, file: !2226, line: 300, baseType: !613, size: 64, offset: 1216)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !2225, file: !2226, line: 301, baseType: !2265, size: 64, offset: 1280)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2267, line: 40, size: 7424, elements: !2268)
!2267 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2268 = !{!2269, !2270, !2271, !3088, !3089, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3132, !3133}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2266, file: !2267, line: 41, baseType: !2087, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2266, file: !2267, line: 42, baseType: !2087, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2266, file: !2267, line: 43, baseType: !2272, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !159, line: 128, size: 4544, elements: !2274)
!2274 = !{!2275, !2276, !2277, !2278, !2282, !2283, !2284, !2285, !2286, !2479, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !3052, !3053, !3054, !3055, !3058, !3059, !3062, !3065, !3066, !3069, !3072, !3073, !3074}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2273, file: !159, line: 133, baseType: !30, size: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !2273, file: !159, line: 134, baseType: !30, size: 32, offset: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !2273, file: !159, line: 135, baseType: !30, size: 32, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2273, file: !159, line: 137, baseType: !2279, size: 256, offset: 96)
!2279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 256, elements: !2280)
!2280 = !{!2281}
!2281 = !DISubrange(count: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2273, file: !159, line: 139, baseType: !34, size: 16, offset: 352)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !2273, file: !159, line: 140, baseType: !34, size: 16, offset: 368)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !2273, file: !159, line: 142, baseType: !1468, size: 128, offset: 384)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !2273, file: !159, line: 143, baseType: !2265, size: 64, offset: 512)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2273, file: !159, line: 145, baseType: !2287, size: 64, offset: 576)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2289)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !159, line: 1388, size: 1152, elements: !2290)
!2290 = !{!2291, !2384, !2399, !2404, !2408, !2412, !2413, !2417, !2418, !2424, !2428, !2429, !2433, !2459, !2464, !2469, !2470, !2474}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2289, file: !159, line: 1389, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{null, !2295}
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !2267, line: 265, size: 960, elements: !2297)
!2297 = !{!2298, !2299, !2300, !2302, !2303, !2304, !2306, !2307, !2314, !2316, !2319, !2320, !2323, !2327, !2328, !2330, !2331, !2332, !2333, !2335, !2382}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2296, file: !2267, line: 266, baseType: !2295, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !2296, file: !2267, line: 267, baseType: !2265, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2296, file: !2267, line: 268, baseType: !2301, size: 32, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !2267, line: 256, baseType: !421)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2296, file: !2267, line: 271, baseType: !34, size: 16, offset: 160)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2296, file: !2267, line: 272, baseType: !34, size: 16, offset: 176)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2296, file: !2267, line: 273, baseType: !2305, size: 8, offset: 192)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !2267, line: 97, baseType: !91)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2296, file: !2267, line: 274, baseType: !57, size: 32, offset: 224)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2296, file: !2267, line: 276, baseType: !2308, size: 160, align: 32, offset: 256)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !2185, line: 77, size: 160, align: 32, elements: !2309)
!2309 = !{!2310, !2311, !2312, !2313}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !2308, file: !2185, line: 78, baseType: !2087, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !2308, file: !2185, line: 80, baseType: !7, size: 32, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !2308, file: !2185, line: 82, baseType: !7, size: 32, offset: 96)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !2308, file: !2185, line: 84, baseType: !7, size: 32, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !2296, file: !2267, line: 278, baseType: !2315, size: 32, offset: 416)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !2267, line: 258, baseType: !7)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2296, file: !2267, line: 279, baseType: !2317, size: 64, offset: 448)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !2267, line: 20, baseType: !2293)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2296, file: !2267, line: 280, baseType: !28, size: 64, offset: 512)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !2296, file: !2267, line: 288, baseType: !2321, size: 64, offset: 576)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !2267, line: 288, flags: DIFlagFwdDecl)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !2296, file: !2267, line: 289, baseType: !2324, size: 64, offset: 640)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !2267, line: 228, size: 64, elements: !2325)
!2325 = !{!2326}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2324, file: !2267, line: 229, baseType: !478, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !2296, file: !2267, line: 291, baseType: !478, size: 64, offset: 704)
!2328 = !DIDerivedType(tag: DW_TAG_member, scope: !2296, file: !2267, line: 299, baseType: !2329, offset: 768)
!2329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2296, file: !2267, line: 299, elements: !741)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2296, file: !2267, line: 305, baseType: !34, size: 16, offset: 768)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2296, file: !2267, line: 311, baseType: !34, size: 16, offset: 784)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2296, file: !2267, line: 313, baseType: !57, size: 32, offset: 800)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2296, file: !2267, line: 315, baseType: !2334, size: 64, offset: 832)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2296, file: !2267, line: 317, baseType: !2336, size: 64, offset: 896)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2338, line: 678, size: 1984, elements: !2339)
!2338 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2339 = !{!2340, !2344, !2345, !2348, !2369, !2370, !2371, !2372, !2377, !2378, !2381}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2337, file: !2338, line: 679, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2343, line: 325, flags: DIFlagFwdDecl)
!2343 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2337, file: !2338, line: 680, baseType: !7, size: 32, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2337, file: !2338, line: 685, baseType: !2346, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2338, line: 685, flags: DIFlagFwdDecl)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2337, file: !2338, line: 687, baseType: !2349, size: 576, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2350, line: 26, baseType: !2351)
!2350 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2350, line: 16, size: 576, elements: !2352)
!2352 = !{!2353, !2354, !2355, !2356, !2357, !2358, !2363, !2368}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2351, file: !2350, line: 17, baseType: !67, size: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2351, file: !2350, line: 18, baseType: !30, size: 32, offset: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2351, file: !2350, line: 19, baseType: !30, size: 32, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2351, file: !2350, line: 20, baseType: !2078, size: 64, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2351, file: !2350, line: 22, baseType: !28, size: 64, offset: 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2351, file: !2350, line: 23, baseType: !2359, size: 64, offset: 256)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2350, line: 13, baseType: !2361)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!28, !1473, !28}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2351, file: !2350, line: 24, baseType: !2364, size: 64, offset: 320)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2350, line: 14, baseType: !2366)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{null, !28, !28}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2351, file: !2350, line: 25, baseType: !62, size: 192, offset: 384)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2337, file: !2338, line: 688, baseType: !2349, size: 576, offset: 768)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2337, file: !2338, line: 694, baseType: !7, size: 32, offset: 1344)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2337, file: !2338, line: 699, baseType: !67, size: 32, offset: 1376)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2337, file: !2338, line: 700, baseType: !2373, size: 128, offset: 1408)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2338, line: 550, size: 128, elements: !2374)
!2374 = !{!2375, !2376}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2373, file: !2338, line: 551, baseType: !2295, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2373, file: !2338, line: 552, baseType: !2295, size: 64, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2337, file: !2338, line: 701, baseType: !1100, size: 256, offset: 1536)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2337, file: !2338, line: 702, baseType: !2379, size: 64, offset: 1792)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1101, line: 18, flags: DIFlagFwdDecl)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2337, file: !2338, line: 707, baseType: !828, size: 128, offset: 1856)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2296, file: !2267, line: 324, baseType: !2383, offset: 960)
!2383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2184, elements: !846)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !2289, file: !159, line: 1390, baseType: !2385, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!30, !2295, !2388, !7}
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !159, line: 1559, size: 192, elements: !2390)
!2390 = !{!2391, !2394, !2395}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !2389, file: !159, line: 1560, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !159, line: 32, flags: DIFlagFwdDecl)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !2389, file: !159, line: 1561, baseType: !967, size: 8, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2389, file: !159, line: 1562, baseType: !2396, size: 64, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{null, !2388}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2289, file: !159, line: 1392, baseType: !2400, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!30, !2272, !2403}
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !159, line: 115, baseType: !7)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2289, file: !159, line: 1393, baseType: !2405, size: 64, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{null, !2272}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2289, file: !159, line: 1394, baseType: !2409, size: 64, offset: 256)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!30, !2265, !2403, !7, !47}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2289, file: !159, line: 1396, baseType: !2409, size: 64, offset: 320)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2289, file: !159, line: 1398, baseType: !2414, size: 64, offset: 384)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!7, !2272, !7}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2289, file: !159, line: 1400, baseType: !2405, size: 64, offset: 448)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2289, file: !159, line: 1401, baseType: !2419, size: 64, offset: 512)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!30, !2265, !2422}
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !245, line: 56, flags: DIFlagFwdDecl)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !2289, file: !159, line: 1402, baseType: !2425, size: 64, offset: 576)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!30, !2265, !967}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !2289, file: !159, line: 1403, baseType: !2405, size: 64, offset: 640)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2289, file: !159, line: 1405, baseType: !2430, size: 64, offset: 704)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{null, !2265, !47}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2289, file: !159, line: 1406, baseType: !2434, size: 64, offset: 768)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!30, !2272, !2087, !7, !2437, !28}
!2437 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !159, line: 342, baseType: !2438)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!30, !2441, !7, !28}
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2443, line: 106, size: 512, elements: !2444)
!2443 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!2444 = !{!2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2454, !2455}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2442, file: !2443, line: 107, baseType: !479, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2442, file: !2443, line: 108, baseType: !479, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2442, file: !2443, line: 109, baseType: !479, size: 64, offset: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2442, file: !2443, line: 110, baseType: !93, size: 8, offset: 192)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2442, file: !2443, line: 111, baseType: !93, size: 8, offset: 200)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2442, file: !2443, line: 112, baseType: !93, size: 8, offset: 208)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2442, file: !2443, line: 113, baseType: !93, size: 8, offset: 216)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2442, file: !2443, line: 114, baseType: !2453, size: 32, offset: 224)
!2453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 32, elements: !833)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2442, file: !2443, line: 115, baseType: !479, size: 64, offset: 256)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2442, file: !2443, line: 116, baseType: !2456, size: 192, offset: 320)
!2456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 192, elements: !2457)
!2457 = !{!2458}
!2458 = !DISubrange(count: 24)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2289, file: !159, line: 1408, baseType: !2460, size: 64, offset: 832)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!978, !2272, !2463}
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !2289, file: !159, line: 1410, baseType: !2465, size: 64, offset: 896)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!30, !2272, !2468, !158}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2289, file: !159, line: 1412, baseType: !1510, size: 64, offset: 960)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2289, file: !159, line: 1413, baseType: !2471, size: 64, offset: 1024)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2473)
!2473 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !159, line: 37, flags: DIFlagFwdDecl)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !2289, file: !159, line: 1420, baseType: !2475, size: 64, offset: 1088)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!30, !2272, !2478}
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2273, file: !159, line: 146, baseType: !2480, size: 64, offset: 640)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !159, line: 391, size: 7296, elements: !2482)
!2482 = !{!2483, !2484, !2487, !2488, !2491, !2494, !2495, !2499, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2909, !2910, !2911, !2912, !2913, !2914, !2947, !2948, !2949, !2952, !2955, !2956, !2957, !2958, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2977, !2978, !2979, !2980, !2981, !2982}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !2481, file: !159, line: 392, baseType: !2392, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !2481, file: !159, line: 393, baseType: !2485, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !159, line: 30, flags: DIFlagFwdDecl)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !2481, file: !159, line: 395, baseType: !1710, size: 128, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2481, file: !159, line: 397, baseType: !2489, size: 64, offset: 256)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !159, line: 39, flags: DIFlagFwdDecl)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !2481, file: !159, line: 398, baseType: !2492, size: 64, offset: 320)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !159, line: 38, flags: DIFlagFwdDecl)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !2481, file: !159, line: 399, baseType: !776, size: 256, offset: 384)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !2481, file: !159, line: 401, baseType: !2496, size: 64, offset: 640)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2498)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !159, line: 401, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !2481, file: !159, line: 404, baseType: !2500, size: 64, offset: 704)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !159, line: 404, flags: DIFlagFwdDecl)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !2481, file: !159, line: 406, baseType: !7, size: 32, offset: 768)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !2481, file: !159, line: 409, baseType: !1468, size: 128, offset: 832)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !2481, file: !159, line: 410, baseType: !7, size: 32, offset: 960)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !2481, file: !159, line: 416, baseType: !28, size: 64, offset: 1024)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !2481, file: !159, line: 421, baseType: !47, size: 64, offset: 1088)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !2481, file: !159, line: 426, baseType: !57, size: 32, offset: 1152)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2481, file: !159, line: 432, baseType: !30, size: 32, offset: 1184)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !2481, file: !159, line: 434, baseType: !67, size: 32, offset: 1216)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !2481, file: !159, line: 436, baseType: !2272, size: 64, offset: 1280)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2481, file: !159, line: 438, baseType: !426, size: 32, offset: 1344)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !2481, file: !159, line: 443, baseType: !1529, size: 64, offset: 1408)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2481, file: !159, line: 450, baseType: !2514, size: 64, offset: 1472)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !171, line: 705, size: 5824, elements: !2516)
!2516 = !{!2517, !2518, !2519, !2522, !2523, !2575, !2645, !2646, !2647, !2648, !2649, !2656, !2759, !2772, !2782, !2786, !2788, !2789, !2790, !2794, !2801, !2802, !2805, !2808, !2812, !2815, !2816, !2817, !2818, !2819, !2820, !2876, !2877, !2878, !2881, !2884, !2893, !2894, !2895, !2896, !2897, !2898}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2515, file: !171, line: 706, baseType: !1523, size: 512)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2515, file: !171, line: 707, baseType: !2514, size: 64, offset: 512)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2515, file: !171, line: 709, baseType: !2520, size: 64, offset: 576)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !171, line: 37, flags: DIFlagFwdDecl)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2515, file: !171, line: 711, baseType: !24, size: 64, offset: 640)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2515, file: !171, line: 712, baseType: !2524, size: 64, offset: 704)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2526)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !171, line: 89, size: 384, elements: !2527)
!2527 = !{!2528, !2529, !2530, !2536, !2540, !2544}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2526, file: !171, line: 90, baseType: !24, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2526, file: !171, line: 91, baseType: !1603, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2526, file: !171, line: 92, baseType: !2531, size: 64, offset: 128)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!30, !2534, !1559}
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2515)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2526, file: !171, line: 93, baseType: !2537, size: 64, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!978, !2534, !2463, !1164, !1165}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2526, file: !171, line: 95, baseType: !2541, size: 64, offset: 256)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{null, !2514}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2526, file: !171, line: 97, baseType: !2545, size: 64, offset: 320)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2547)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !178, line: 286, size: 1472, elements: !2548)
!2548 = !{!2549, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2547, file: !178, line: 287, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!30, !2514}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2547, file: !178, line: 288, baseType: !2541, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2547, file: !178, line: 289, baseType: !2550, size: 64, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2547, file: !178, line: 290, baseType: !2550, size: 64, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2547, file: !178, line: 291, baseType: !2550, size: 64, offset: 256)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2547, file: !178, line: 292, baseType: !2550, size: 64, offset: 320)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2547, file: !178, line: 293, baseType: !2550, size: 64, offset: 384)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2547, file: !178, line: 294, baseType: !2550, size: 64, offset: 448)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2547, file: !178, line: 295, baseType: !2550, size: 64, offset: 512)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2547, file: !178, line: 296, baseType: !2550, size: 64, offset: 576)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2547, file: !178, line: 297, baseType: !2550, size: 64, offset: 640)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2547, file: !178, line: 298, baseType: !2550, size: 64, offset: 704)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2547, file: !178, line: 299, baseType: !2550, size: 64, offset: 768)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2547, file: !178, line: 300, baseType: !2550, size: 64, offset: 832)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2547, file: !178, line: 301, baseType: !2550, size: 64, offset: 896)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2547, file: !178, line: 302, baseType: !2550, size: 64, offset: 960)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2547, file: !178, line: 303, baseType: !2550, size: 64, offset: 1024)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2547, file: !178, line: 304, baseType: !2550, size: 64, offset: 1088)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2547, file: !178, line: 305, baseType: !2550, size: 64, offset: 1152)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2547, file: !178, line: 306, baseType: !2550, size: 64, offset: 1216)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2547, file: !178, line: 307, baseType: !2550, size: 64, offset: 1280)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2547, file: !178, line: 308, baseType: !2550, size: 64, offset: 1344)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2547, file: !178, line: 309, baseType: !2550, size: 64, offset: 1408)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2515, file: !171, line: 714, baseType: !2576, size: 64, offset: 768)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2578)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2579, line: 80, size: 1344, elements: !2580)
!2579 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2580 = !{!2581, !2582, !2583, !2584, !2585, !2586, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2644}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2578, file: !2579, line: 81, baseType: !24, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2578, file: !2579, line: 82, baseType: !24, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2578, file: !2579, line: 83, baseType: !1603, size: 64, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2578, file: !2579, line: 84, baseType: !1603, size: 64, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2578, file: !2579, line: 85, baseType: !1603, size: 64, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2578, file: !2579, line: 87, baseType: !2587, size: 64, offset: 320)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!30, !2514, !2590}
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !165, line: 96, size: 1152, elements: !2592)
!2592 = !{!2593, !2594, !2595, !2596, !2597, !2598, !2599, !2603, !2607, !2608, !2609, !2610, !2611, !2619, !2620, !2621, !2622, !2623, !2624}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2591, file: !165, line: 97, baseType: !24, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2591, file: !165, line: 98, baseType: !2576, size: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2591, file: !165, line: 100, baseType: !1510, size: 64, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2591, file: !165, line: 101, baseType: !24, size: 64, offset: 192)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2591, file: !165, line: 103, baseType: !967, size: 8, offset: 256)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2591, file: !165, line: 104, baseType: !164, size: 32, offset: 288)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2591, file: !165, line: 106, baseType: !2600, size: 64, offset: 320)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2602)
!2602 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !165, line: 106, flags: DIFlagFwdDecl)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2591, file: !165, line: 107, baseType: !2604, size: 64, offset: 384)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2606)
!2606 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !165, line: 107, flags: DIFlagFwdDecl)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2591, file: !165, line: 109, baseType: !2550, size: 64, offset: 448)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2591, file: !165, line: 110, baseType: !2541, size: 64, offset: 512)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2591, file: !165, line: 111, baseType: !2550, size: 64, offset: 576)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2591, file: !165, line: 112, baseType: !2541, size: 64, offset: 640)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2591, file: !165, line: 113, baseType: !2612, size: 64, offset: 704)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!30, !2514, !2615}
!2615 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !178, line: 60, baseType: !2616)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !178, line: 58, size: 32, elements: !2617)
!2617 = !{!2618}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2616, file: !178, line: 59, baseType: !30, size: 32)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2591, file: !165, line: 114, baseType: !2550, size: 64, offset: 768)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2591, file: !165, line: 115, baseType: !1603, size: 64, offset: 832)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2591, file: !165, line: 116, baseType: !1603, size: 64, offset: 896)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2591, file: !165, line: 118, baseType: !2545, size: 64, offset: 960)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2591, file: !165, line: 119, baseType: !2541, size: 64, offset: 1024)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2591, file: !165, line: 121, baseType: !2625, size: 64, offset: 1088)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !165, line: 121, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2578, file: !2579, line: 88, baseType: !2531, size: 64, offset: 384)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2578, file: !2579, line: 89, baseType: !2550, size: 64, offset: 448)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2578, file: !2579, line: 90, baseType: !2541, size: 64, offset: 512)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2578, file: !2579, line: 91, baseType: !2541, size: 64, offset: 576)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2578, file: !2579, line: 92, baseType: !2541, size: 64, offset: 640)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2578, file: !2579, line: 94, baseType: !2550, size: 64, offset: 704)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2578, file: !2579, line: 95, baseType: !2550, size: 64, offset: 768)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2578, file: !2579, line: 97, baseType: !2612, size: 64, offset: 832)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2578, file: !2579, line: 98, baseType: !2550, size: 64, offset: 896)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2578, file: !2579, line: 100, baseType: !2550, size: 64, offset: 960)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2578, file: !2579, line: 102, baseType: !2550, size: 64, offset: 1024)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2578, file: !2579, line: 103, baseType: !2541, size: 64, offset: 1088)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2578, file: !2579, line: 105, baseType: !2545, size: 64, offset: 1152)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2578, file: !2579, line: 107, baseType: !2641, size: 64, offset: 1216)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2643)
!2643 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2579, line: 107, flags: DIFlagFwdDecl)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2578, file: !2579, line: 109, baseType: !967, size: 8, offset: 1280)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2515, file: !171, line: 715, baseType: !2590, size: 64, offset: 832)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2515, file: !171, line: 717, baseType: !28, size: 64, offset: 896)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2515, file: !171, line: 719, baseType: !28, size: 64, offset: 960)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2515, file: !171, line: 721, baseType: !776, size: 256, offset: 1024)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2515, file: !171, line: 725, baseType: !2650, size: 448, offset: 1280)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !171, line: 517, size: 448, elements: !2651)
!2651 = !{!2652, !2653, !2654, !2655}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2650, file: !171, line: 518, baseType: !105, size: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2650, file: !171, line: 519, baseType: !105, size: 128, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2650, file: !171, line: 520, baseType: !105, size: 128, offset: 256)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2650, file: !171, line: 521, baseType: !170, size: 32, offset: 384)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2515, file: !171, line: 726, baseType: !2657, size: 2496, offset: 1728)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !178, line: 663, size: 2496, elements: !2658)
!2658 = !{!2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2752, !2756}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2657, file: !178, line: 664, baseType: !2615, size: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2657, file: !178, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2657, file: !178, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2657, file: !178, line: 667, baseType: !967, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2657, file: !178, line: 668, baseType: !967, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2657, file: !178, line: 669, baseType: !967, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2657, file: !178, line: 670, baseType: !967, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2657, file: !178, line: 671, baseType: !967, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2657, file: !178, line: 672, baseType: !967, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2657, file: !178, line: 673, baseType: !967, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2657, file: !178, line: 674, baseType: !967, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2657, file: !178, line: 675, baseType: !420, size: 32, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2657, file: !178, line: 676, baseType: !67, size: 32, offset: 96)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2657, file: !178, line: 678, baseType: !105, size: 128, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2657, file: !178, line: 679, baseType: !1139, size: 256, offset: 256)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2657, file: !178, line: 680, baseType: !2675, size: 64, offset: 512)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2677, line: 43, size: 1536, elements: !2678)
!2677 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2678 = !{!2679, !2680, !2681, !2682, !2683, !2686, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2676, file: !2677, line: 44, baseType: !24, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2676, file: !2677, line: 45, baseType: !30, size: 32, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2676, file: !2677, line: 46, baseType: !105, size: 128, offset: 128)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2676, file: !2677, line: 47, baseType: !67, size: 32, offset: 256)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2676, file: !2677, line: 48, baseType: !2684, size: 64, offset: 320)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !178, line: 629, flags: DIFlagFwdDecl)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2676, file: !2677, line: 49, baseType: !2687, size: 320, offset: 384)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2688, line: 11, size: 320, elements: !2689)
!2688 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2689 = !{!2690, !2691, !2692, !2697}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2687, file: !2688, line: 16, baseType: !828, size: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2687, file: !2688, line: 17, baseType: !47, size: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2687, file: !2688, line: 18, baseType: !2693, size: 64, offset: 192)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{null, !2696}
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2687, file: !2688, line: 19, baseType: !420, size: 32, offset: 256)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2676, file: !2677, line: 50, baseType: !47, size: 64, offset: 704)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2676, file: !2677, line: 51, baseType: !553, size: 64, offset: 768)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2676, file: !2677, line: 52, baseType: !553, size: 64, offset: 832)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2676, file: !2677, line: 53, baseType: !553, size: 64, offset: 896)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2676, file: !2677, line: 54, baseType: !553, size: 64, offset: 960)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2676, file: !2677, line: 55, baseType: !553, size: 64, offset: 1024)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2676, file: !2677, line: 56, baseType: !47, size: 64, offset: 1088)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2676, file: !2677, line: 57, baseType: !47, size: 64, offset: 1152)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2676, file: !2677, line: 58, baseType: !47, size: 64, offset: 1216)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2676, file: !2677, line: 59, baseType: !47, size: 64, offset: 1280)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2676, file: !2677, line: 60, baseType: !47, size: 64, offset: 1344)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2676, file: !2677, line: 61, baseType: !2514, size: 64, offset: 1408)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2676, file: !2677, line: 62, baseType: !967, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2676, file: !2677, line: 63, baseType: !967, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2657, file: !178, line: 681, baseType: !967, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2657, file: !178, line: 682, baseType: !967, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2657, file: !178, line: 683, baseType: !967, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2657, file: !178, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2657, file: !178, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2657, file: !178, line: 690, baseType: !545, size: 512, offset: 640)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2657, file: !178, line: 691, baseType: !478, size: 64, offset: 1152)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2657, file: !178, line: 692, baseType: !1100, size: 256, offset: 1216)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2657, file: !178, line: 693, baseType: !62, size: 192, offset: 1472)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2657, file: !178, line: 694, baseType: !2684, size: 64, offset: 1664)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2657, file: !178, line: 695, baseType: !57, size: 32, offset: 1728)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2657, file: !178, line: 696, baseType: !57, size: 32, offset: 1760)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2657, file: !178, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2657, file: !178, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2657, file: !178, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2657, file: !178, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2657, file: !178, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2657, file: !178, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2657, file: !178, line: 703, baseType: !967, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2657, file: !178, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2657, file: !178, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2657, file: !178, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2657, file: !178, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2657, file: !178, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2657, file: !178, line: 709, baseType: !7, size: 32, offset: 1824)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2657, file: !178, line: 710, baseType: !177, size: 32, offset: 1856)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2657, file: !178, line: 711, baseType: !185, size: 32, offset: 1888)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2657, file: !178, line: 712, baseType: !185, size: 32, offset: 1920)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2657, file: !178, line: 713, baseType: !30, size: 32, offset: 1952)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2657, file: !178, line: 714, baseType: !30, size: 32, offset: 1984)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2657, file: !178, line: 715, baseType: !478, size: 64, offset: 2048)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2657, file: !178, line: 716, baseType: !478, size: 64, offset: 2112)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2657, file: !178, line: 717, baseType: !478, size: 64, offset: 2176)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2657, file: !178, line: 718, baseType: !478, size: 64, offset: 2240)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2657, file: !178, line: 720, baseType: !2747, size: 64, offset: 2304)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !178, line: 632, size: 64, elements: !2749)
!2749 = !{!2750, !2751}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2748, file: !178, line: 633, baseType: !67, size: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2748, file: !178, line: 634, baseType: !7, size: 32, offset: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2657, file: !178, line: 721, baseType: !2753, size: 64, offset: 2368)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{null, !2514, !901}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2657, file: !178, line: 722, baseType: !2757, size: 64, offset: 2432)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !178, line: 722, flags: DIFlagFwdDecl)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2515, file: !171, line: 727, baseType: !2760, size: 64, offset: 4224)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !178, line: 742, size: 1792, elements: !2762)
!2762 = !{!2763, !2764, !2765, !2769, !2770, !2771}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2761, file: !178, line: 743, baseType: !2547, size: 1472)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2761, file: !178, line: 744, baseType: !2550, size: 64, offset: 1472)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2761, file: !178, line: 745, baseType: !2766, size: 64, offset: 1536)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{null, !2514, !967}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2761, file: !178, line: 746, baseType: !2550, size: 64, offset: 1600)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2761, file: !178, line: 747, baseType: !2541, size: 64, offset: 1664)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2761, file: !178, line: 748, baseType: !2541, size: 64, offset: 1728)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2515, file: !171, line: 736, baseType: !2773, size: 128, offset: 4288)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !171, line: 529, size: 128, elements: !2774)
!2774 = !{!2775, !2779}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2773, file: !171, line: 531, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2778, line: 13, flags: DIFlagFwdDecl)
!2778 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2773, file: !171, line: 532, baseType: !2780, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !171, line: 49, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2515, file: !171, line: 738, baseType: !2783, size: 64, offset: 4416)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2785)
!2785 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !171, line: 738, flags: DIFlagFwdDecl)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2515, file: !171, line: 740, baseType: !2787, size: 64, offset: 4480)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2515, file: !171, line: 741, baseType: !478, size: 64, offset: 4544)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2515, file: !171, line: 746, baseType: !478, size: 64, offset: 4608)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2515, file: !171, line: 747, baseType: !2791, size: 64, offset: 4672)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2793)
!2793 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !171, line: 747, flags: DIFlagFwdDecl)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2515, file: !171, line: 749, baseType: !2795, size: 64, offset: 4736)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !171, line: 428, size: 128, elements: !2797)
!2797 = !{!2798, !2799, !2800}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2796, file: !171, line: 433, baseType: !7, size: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2796, file: !171, line: 434, baseType: !7, size: 32, offset: 32)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2796, file: !171, line: 435, baseType: !47, size: 64, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2515, file: !171, line: 751, baseType: !105, size: 128, offset: 4800)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2515, file: !171, line: 762, baseType: !2803, size: 64, offset: 4928)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !171, line: 762, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2515, file: !171, line: 770, baseType: !2806, offset: 4992)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2807, line: 5, elements: !741)
!2807 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2515, file: !171, line: 772, baseType: !2809, size: 64, offset: 4992)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2811, line: 18, flags: DIFlagFwdDecl)
!2811 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2515, file: !171, line: 773, baseType: !2813, size: 64, offset: 5056)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2579, line: 22, flags: DIFlagFwdDecl)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2515, file: !171, line: 776, baseType: !30, size: 32, offset: 5120)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2515, file: !171, line: 778, baseType: !1343, size: 32, offset: 5152)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2515, file: !171, line: 779, baseType: !420, size: 32, offset: 5184)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2515, file: !171, line: 781, baseType: !67, size: 32, offset: 5216)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2515, file: !171, line: 782, baseType: !105, size: 128, offset: 5248)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2515, file: !171, line: 784, baseType: !2821, size: 64, offset: 5376)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2823)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2824, line: 52, size: 768, elements: !2825)
!2824 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2825 = !{!2826, !2827, !2828, !2829, !2830, !2834, !2838, !2839, !2840, !2867, !2871, !2875}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2823, file: !2824, line: 53, baseType: !24, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2823, file: !2824, line: 55, baseType: !1603, size: 64, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2823, file: !2824, line: 56, baseType: !1603, size: 64, offset: 128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2823, file: !2824, line: 58, baseType: !2531, size: 64, offset: 192)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2823, file: !2824, line: 59, baseType: !2831, size: 64, offset: 256)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!978, !2534, !2463}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2823, file: !2824, line: 61, baseType: !2835, size: 64, offset: 320)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{null, !2821}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2823, file: !2824, line: 62, baseType: !2541, size: 64, offset: 384)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2823, file: !2824, line: 64, baseType: !2550, size: 64, offset: 448)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2823, file: !2824, line: 66, baseType: !2841, size: 64, offset: 512)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2843)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !193, line: 39, size: 384, elements: !2844)
!2844 = !{!2845, !2846, !2850, !2854, !2862, !2866}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2843, file: !193, line: 40, baseType: !192, size: 32)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2843, file: !193, line: 41, baseType: !2847, size: 64, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!967}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2843, file: !193, line: 42, baseType: !2851, size: 64, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!28}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2843, file: !193, line: 43, baseType: !2855, size: 64, offset: 192)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!2858, !2860}
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !193, line: 19, flags: DIFlagFwdDecl)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2843, file: !193, line: 44, baseType: !2863, size: 64, offset: 256)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!2858}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2843, file: !193, line: 45, baseType: !1300, size: 64, offset: 320)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2823, file: !2824, line: 67, baseType: !2868, size: 64, offset: 576)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!2858, !2534}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2823, file: !2824, line: 69, baseType: !2872, size: 64, offset: 640)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{null, !2534, !1164, !1165}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2823, file: !2824, line: 71, baseType: !2545, size: 64, offset: 704)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2515, file: !171, line: 785, baseType: !1603, size: 64, offset: 5440)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2515, file: !171, line: 787, baseType: !2541, size: 64, offset: 5504)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2515, file: !171, line: 788, baseType: !2879, size: 64, offset: 5568)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !171, line: 46, flags: DIFlagFwdDecl)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2515, file: !171, line: 789, baseType: !2882, size: 64, offset: 5632)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !171, line: 48, flags: DIFlagFwdDecl)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2515, file: !171, line: 791, baseType: !2885, size: 64, offset: 5696)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !171, line: 597, size: 128, elements: !2887)
!2887 = !{!2888, !2889, !2890, !2891, !2892}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2886, file: !171, line: 598, baseType: !198, size: 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2886, file: !171, line: 599, baseType: !207, size: 32, offset: 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2886, file: !171, line: 600, baseType: !212, size: 32, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2886, file: !171, line: 601, baseType: !967, size: 8, offset: 96)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2886, file: !171, line: 602, baseType: !967, size: 8, offset: 104)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2515, file: !171, line: 793, baseType: !217, size: 32, offset: 5760)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2515, file: !171, line: 795, baseType: !967, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2515, file: !171, line: 796, baseType: !967, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2515, file: !171, line: 797, baseType: !967, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2515, file: !171, line: 798, baseType: !967, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2515, file: !171, line: 799, baseType: !967, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !2481, file: !159, line: 451, baseType: !185, size: 32, offset: 1536)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !2481, file: !159, line: 457, baseType: !47, size: 64, offset: 1600)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !2481, file: !159, line: 459, baseType: !7, size: 32, offset: 1664)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !2481, file: !159, line: 466, baseType: !7, size: 32, offset: 1696)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2481, file: !159, line: 468, baseType: !2687, size: 320, offset: 1728)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !2481, file: !159, line: 469, baseType: !1100, size: 256, offset: 2048)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !2481, file: !159, line: 471, baseType: !57, size: 32, offset: 2304)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !2481, file: !159, line: 473, baseType: !2907, size: 64, offset: 2368)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !159, line: 473, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2481, file: !159, line: 475, baseType: !105, size: 128, offset: 2432)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !2481, file: !159, line: 477, baseType: !387, size: 64, offset: 2560)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !2481, file: !159, line: 478, baseType: !2321, size: 64, offset: 2624)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !2481, file: !159, line: 479, baseType: !105, size: 128, offset: 2688)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !2481, file: !159, line: 480, baseType: !776, size: 256, offset: 2816)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2481, file: !159, line: 483, baseType: !2915, size: 960, offset: 3072)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !159, line: 300, size: 960, elements: !2916)
!2916 = !{!2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !2915, file: !159, line: 301, baseType: !223, size: 32)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !2915, file: !159, line: 302, baseType: !47, size: 64, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !2915, file: !159, line: 303, baseType: !47, size: 64, offset: 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !2915, file: !159, line: 305, baseType: !7, size: 32, offset: 192)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !2915, file: !159, line: 306, baseType: !7, size: 32, offset: 224)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !2915, file: !159, line: 307, baseType: !7, size: 32, offset: 256)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !2915, file: !159, line: 308, baseType: !7, size: 32, offset: 288)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !2915, file: !159, line: 309, baseType: !7, size: 32, offset: 320)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2915, file: !159, line: 310, baseType: !7, size: 32, offset: 352)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !2915, file: !159, line: 311, baseType: !7, size: 32, offset: 384)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !2915, file: !159, line: 312, baseType: !7, size: 32, offset: 416)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !2915, file: !159, line: 313, baseType: !7, size: 32, offset: 448)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !2915, file: !159, line: 314, baseType: !7, size: 32, offset: 480)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !2915, file: !159, line: 315, baseType: !7, size: 32, offset: 512)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !2915, file: !159, line: 316, baseType: !7, size: 32, offset: 544)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !2915, file: !159, line: 317, baseType: !7, size: 32, offset: 576)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !2915, file: !159, line: 318, baseType: !7, size: 32, offset: 608)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !2915, file: !159, line: 319, baseType: !7, size: 32, offset: 640)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !2915, file: !159, line: 320, baseType: !7, size: 32, offset: 672)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !2915, file: !159, line: 321, baseType: !7, size: 32, offset: 704)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !2915, file: !159, line: 322, baseType: !7, size: 32, offset: 736)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !2915, file: !159, line: 323, baseType: !7, size: 32, offset: 768)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !2915, file: !159, line: 325, baseType: !34, size: 16, offset: 800)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !2915, file: !159, line: 326, baseType: !34, size: 16, offset: 816)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !2915, file: !159, line: 327, baseType: !34, size: 16, offset: 832)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !2915, file: !159, line: 329, baseType: !95, size: 8, offset: 848)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !2915, file: !159, line: 330, baseType: !95, size: 8, offset: 856)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !2915, file: !159, line: 331, baseType: !95, size: 8, offset: 864)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !2915, file: !159, line: 332, baseType: !227, size: 32, offset: 896)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !2915, file: !159, line: 339, baseType: !7, size: 32, offset: 928)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !2481, file: !159, line: 485, baseType: !7, size: 32, offset: 4032)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2481, file: !159, line: 487, baseType: !30, size: 32, offset: 4064)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !2481, file: !159, line: 489, baseType: !2950, size: 64, offset: 4096)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !159, line: 31, flags: DIFlagFwdDecl)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2481, file: !159, line: 494, baseType: !2953, size: 64, offset: 4160)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !159, line: 35, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !2481, file: !159, line: 495, baseType: !105, size: 128, offset: 4224)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !2481, file: !159, line: 497, baseType: !105, size: 128, offset: 4352)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !2481, file: !159, line: 498, baseType: !67, size: 32, offset: 4480)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !2481, file: !159, line: 499, baseType: !2959, size: 704, offset: 4544)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1101, line: 111, size: 704, elements: !2960)
!2960 = !{!2961, !2962, !2963, !2964}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2959, file: !1101, line: 112, baseType: !1100, size: 256)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2959, file: !1101, line: 113, baseType: !2687, size: 320, offset: 256)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2959, file: !1101, line: 116, baseType: !2379, size: 64, offset: 576)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2959, file: !1101, line: 117, baseType: !30, size: 32, offset: 640)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2481, file: !159, line: 501, baseType: !776, size: 256, offset: 5248)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !2481, file: !159, line: 502, baseType: !776, size: 256, offset: 5504)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !2481, file: !159, line: 508, baseType: !105, size: 128, offset: 5760)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !2481, file: !159, line: 509, baseType: !67, size: 32, offset: 5888)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !2481, file: !159, line: 511, baseType: !30, size: 32, offset: 5920)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2481, file: !159, line: 517, baseType: !756, size: 128, align: 64, offset: 5952)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !2481, file: !159, line: 518, baseType: !62, size: 192, offset: 6080)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !2481, file: !159, line: 523, baseType: !776, size: 256, offset: 6272)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !2481, file: !159, line: 525, baseType: !30, size: 32, offset: 6528)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !2481, file: !159, line: 527, baseType: !2975, size: 64, offset: 6592)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !159, line: 527, flags: DIFlagFwdDecl)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !2481, file: !159, line: 528, baseType: !105, size: 128, offset: 6656)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2481, file: !159, line: 530, baseType: !1234, size: 64, offset: 6784)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !2481, file: !159, line: 531, baseType: !1234, size: 64, offset: 6848)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !2481, file: !159, line: 532, baseType: !1234, size: 64, offset: 6912)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !2481, file: !159, line: 536, baseType: !776, size: 256, offset: 6976)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !2481, file: !159, line: 538, baseType: !967, size: 8, offset: 7232)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2273, file: !159, line: 147, baseType: !28, size: 64, offset: 704)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2273, file: !159, line: 149, baseType: !2337, size: 1984, offset: 768)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2273, file: !159, line: 151, baseType: !30, size: 32, offset: 2752)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2273, file: !159, line: 152, baseType: !47, size: 64, offset: 2816)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !2273, file: !159, line: 161, baseType: !776, size: 256, offset: 2880)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !2273, file: !159, line: 162, baseType: !7, size: 32, offset: 3136)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2273, file: !159, line: 164, baseType: !2990, size: 64, offset: 3200)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !233, line: 163, size: 6848, elements: !2992)
!2992 = !{!2993, !2994, !2995, !2996, !2997, !2998, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3044, !3045, !3046, !3047, !3049, !3050, !3051}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2991, file: !233, line: 164, baseType: !478, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2991, file: !233, line: 165, baseType: !470, size: 192, align: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !2991, file: !233, line: 166, baseType: !105, size: 128, offset: 256)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2991, file: !233, line: 167, baseType: !47, size: 64, offset: 384)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !2991, file: !233, line: 168, baseType: !47, size: 64, offset: 448)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2991, file: !233, line: 170, baseType: !2999, size: 32, offset: 512)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3000, line: 19, size: 32, elements: !3001)
!3000 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3001 = !{!3002}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2999, file: !3000, line: 20, baseType: !426, size: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2991, file: !233, line: 171, baseType: !7, size: 32, offset: 544)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !2991, file: !233, line: 172, baseType: !7, size: 32, offset: 576)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !2991, file: !233, line: 173, baseType: !7, size: 32, offset: 608)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !2991, file: !233, line: 173, baseType: !7, size: 32, offset: 640)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !2991, file: !233, line: 179, baseType: !769, size: 64, offset: 704)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !2991, file: !233, line: 184, baseType: !47, size: 64, offset: 768)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !2991, file: !233, line: 186, baseType: !3010, size: 4672, offset: 832)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !233, line: 105, size: 4672, elements: !3011)
!3011 = !{!3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3037, !3038, !3039, !3040, !3041, !3042, !3043}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3010, file: !233, line: 106, baseType: !2990, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3010, file: !233, line: 108, baseType: !47, size: 64, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3010, file: !233, line: 109, baseType: !47, size: 64, offset: 128)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3010, file: !233, line: 111, baseType: !105, size: 128, offset: 192)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3010, file: !233, line: 112, baseType: !105, size: 128, offset: 320)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3010, file: !233, line: 113, baseType: !105, size: 128, offset: 448)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3010, file: !233, line: 114, baseType: !105, size: 128, offset: 576)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3010, file: !233, line: 115, baseType: !67, size: 32, offset: 704)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3010, file: !233, line: 117, baseType: !57, size: 32, offset: 736)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3010, file: !233, line: 118, baseType: !3022, size: 1280, offset: 768)
!3022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1026, size: 1280, elements: !833)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3010, file: !233, line: 120, baseType: !47, size: 64, offset: 2048)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3010, file: !233, line: 121, baseType: !47, size: 64, offset: 2112)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3010, file: !233, line: 122, baseType: !47, size: 64, offset: 2176)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3010, file: !233, line: 123, baseType: !47, size: 64, offset: 2240)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3010, file: !233, line: 124, baseType: !47, size: 64, offset: 2304)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3010, file: !233, line: 132, baseType: !47, size: 64, offset: 2368)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3010, file: !233, line: 133, baseType: !47, size: 64, offset: 2432)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3010, file: !233, line: 135, baseType: !3031, size: 384, offset: 2496)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3032, line: 76, size: 384, elements: !3033)
!3032 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3033 = !{!3034, !3035, !3036}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3031, file: !3032, line: 78, baseType: !1026, size: 320)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3031, file: !3032, line: 80, baseType: !7, size: 32, offset: 320)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3031, file: !3032, line: 81, baseType: !570, size: 32, offset: 352)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3010, file: !233, line: 136, baseType: !30, size: 32, offset: 2880)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3010, file: !233, line: 137, baseType: !232, size: 32, offset: 2912)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3010, file: !233, line: 139, baseType: !67, size: 32, offset: 2944)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3010, file: !233, line: 140, baseType: !105, size: 128, offset: 3008)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3010, file: !233, line: 141, baseType: !2959, size: 704, offset: 3136)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3010, file: !233, line: 142, baseType: !2959, size: 704, offset: 3840)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3010, file: !233, line: 144, baseType: !105, size: 128, offset: 4544)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !2991, file: !233, line: 187, baseType: !105, size: 128, offset: 5504)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !2991, file: !233, line: 193, baseType: !62, size: 192, offset: 5632)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2991, file: !233, line: 195, baseType: !2514, size: 64, offset: 5824)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2991, file: !233, line: 196, baseType: !3048, size: 512, offset: 5888)
!3048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 512, elements: !1566)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2991, file: !233, line: 197, baseType: !2514, size: 64, offset: 6400)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !2991, file: !233, line: 199, baseType: !2687, size: 320, offset: 6464)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !2991, file: !233, line: 202, baseType: !1234, size: 64, offset: 6784)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !2273, file: !159, line: 165, baseType: !1523, size: 512, offset: 3264)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !2273, file: !159, line: 166, baseType: !1529, size: 64, offset: 3776)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !2273, file: !159, line: 168, baseType: !105, size: 128, offset: 3840)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !2273, file: !159, line: 170, baseType: !3056, size: 64, offset: 3968)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !159, line: 170, flags: DIFlagFwdDecl)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !2273, file: !159, line: 171, baseType: !57, size: 32, offset: 4032)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !2273, file: !159, line: 172, baseType: !3060, size: 64, offset: 4096)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !159, line: 104, flags: DIFlagFwdDecl)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !2273, file: !159, line: 197, baseType: !3063, size: 64, offset: 4160)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !159, line: 197, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2273, file: !159, line: 199, baseType: !30, size: 32, offset: 4224)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2273, file: !159, line: 200, baseType: !3067, size: 64, offset: 4288)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !159, line: 105, flags: DIFlagFwdDecl)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !2273, file: !159, line: 201, baseType: !3070, offset: 4352)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !3071, line: 211, elements: !741)
!3071 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !2273, file: !159, line: 202, baseType: !478, size: 64, offset: 4352)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !2273, file: !159, line: 203, baseType: !2403, size: 32, offset: 4416)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !2273, file: !159, line: 209, baseType: !3075, size: 64, offset: 4480)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !159, line: 384, size: 576, elements: !3077)
!3077 = !{!3078, !3079, !3080, !3081}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3076, file: !159, line: 385, baseType: !1523, size: 512)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !3076, file: !159, line: 386, baseType: !967, size: 8, offset: 512)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !3076, file: !159, line: 387, baseType: !7, size: 32, offset: 544)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !3076, file: !159, line: 388, baseType: !3082, offset: 576)
!3082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3083, elements: !846)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !159, line: 378, size: 640, elements: !3084)
!3084 = !{!3085, !3086, !3087}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3083, file: !159, line: 379, baseType: !1523, size: 512)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !3083, file: !159, line: 380, baseType: !2087, size: 64, offset: 512)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !3083, file: !159, line: 381, baseType: !2087, size: 64, offset: 576)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2266, file: !2267, line: 44, baseType: !2480, size: 64, offset: 192)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2266, file: !2267, line: 45, baseType: !3090, size: 64, offset: 256)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2267, line: 45, flags: DIFlagFwdDecl)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2266, file: !2267, line: 46, baseType: !47, size: 64, offset: 320)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2266, file: !2267, line: 47, baseType: !967, size: 8, offset: 384)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2266, file: !2267, line: 48, baseType: !91, size: 8, offset: 392)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2266, file: !2267, line: 49, baseType: !967, size: 8, offset: 400)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2266, file: !2267, line: 50, baseType: !967, size: 8, offset: 408)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2266, file: !2267, line: 51, baseType: !1343, size: 32, offset: 416)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2266, file: !2267, line: 52, baseType: !57, size: 32, offset: 448)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2266, file: !2267, line: 53, baseType: !67, size: 32, offset: 480)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2266, file: !2267, line: 54, baseType: !1269, size: 64, offset: 512)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2266, file: !2267, line: 55, baseType: !28, size: 64, offset: 576)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2266, file: !2267, line: 56, baseType: !28, size: 64, offset: 640)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2266, file: !2267, line: 57, baseType: !3104, size: 64, offset: 704)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3106)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !159, line: 1477, size: 128, elements: !3107)
!3107 = !{!3108, !3112}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !3106, file: !159, line: 1478, baseType: !3109, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{null, !2265, !967}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3106, file: !159, line: 1483, baseType: !3113, size: 64, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{null, !2265}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2266, file: !2267, line: 58, baseType: !776, size: 256, offset: 768)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2266, file: !2267, line: 60, baseType: !30, size: 32, offset: 1024)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2266, file: !2267, line: 61, baseType: !30, size: 32, offset: 1056)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2266, file: !2267, line: 62, baseType: !1529, size: 64, offset: 1088)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2266, file: !2267, line: 65, baseType: !776, size: 256, offset: 1152)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2266, file: !2267, line: 66, baseType: !1477, size: 64, offset: 1408)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2266, file: !2267, line: 68, baseType: !3123, size: 64, offset: 1472)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !159, line: 63, size: 808, elements: !3125)
!3125 = !{!3126, !3130}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !3124, file: !159, line: 64, baseType: !3127, size: 296)
!3127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 296, elements: !3128)
!3128 = !{!3129}
!3129 = !DISubrange(count: 37)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !3124, file: !159, line: 65, baseType: !3131, size: 512, offset: 296)
!3131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 512, elements: !1566)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2266, file: !2267, line: 72, baseType: !967, size: 8, offset: 1536)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2266, file: !2267, line: 77, baseType: !2515, size: 5824, offset: 1600)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !2225, file: !2226, line: 302, baseType: !748, size: 64, offset: 1344)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !2225, file: !2226, line: 303, baseType: !7, size: 32, offset: 1408)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !2225, file: !2226, line: 304, baseType: !1139, size: 256, offset: 1472)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2225, file: !2226, line: 305, baseType: !67, size: 32, offset: 1728)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !2225, file: !2226, line: 318, baseType: !67, size: 32, offset: 1760)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !2225, file: !2226, line: 322, baseType: !1100, size: 256, offset: 1792)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !2225, file: !2226, line: 323, baseType: !2245, size: 128, offset: 2048)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !2225, file: !2226, line: 324, baseType: !3142, offset: 2176)
!3142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !712, elements: !846)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1641, file: !245, line: 444, baseType: !3144, size: 64, offset: 1152)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{null, !748}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1641, file: !245, line: 445, baseType: !3148, size: 64, offset: 1216)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!30, !2104, !2142}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1628, file: !245, line: 486, baseType: !47, size: 64, offset: 896)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1628, file: !245, line: 487, baseType: !909, size: 320, offset: 960)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1628, file: !245, line: 488, baseType: !3154, size: 32, offset: 1280)
!3154 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3155, line: 8, baseType: !420)
!3155 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1628, file: !245, line: 489, baseType: !67, size: 32, offset: 1312)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1628, file: !245, line: 490, baseType: !105, size: 128, offset: 1344)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1628, file: !245, line: 491, baseType: !28, size: 64, offset: 1472)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1618, file: !1587, line: 180, baseType: !3160, size: 64, offset: 320)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!1421, !748, !1529, !1617, !978, !49, !43}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1618, file: !1587, line: 182, baseType: !3160, size: 64, offset: 384)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1618, file: !1587, line: 184, baseType: !3165, size: 64, offset: 448)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!30, !748, !1529, !1617, !1756}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1606, file: !1587, line: 90, baseType: !3169, size: 64, offset: 192)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1606, file: !1587, line: 91, baseType: !3171, size: 64, offset: 256)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1577, file: !1524, line: 120, baseType: !3173, size: 64, offset: 192)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!2841, !1547}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1577, file: !1524, line: 121, baseType: !3177, size: 64, offset: 256)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!2858, !1547}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1577, file: !1524, line: 122, baseType: !3181, size: 64, offset: 320)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{null, !1547, !1164, !1165}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1523, file: !1524, line: 70, baseType: !3185, size: 64, offset: 384)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3187, line: 190, size: 1152, elements: !3188)
!3187 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!3188 = !{!3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3310, !3311, !3312, !3313, !3314, !3317}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3186, file: !3187, line: 191, baseType: !57, size: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3186, file: !3187, line: 192, baseType: !57, size: 32, offset: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3186, file: !3187, line: 202, baseType: !3185, size: 64, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3186, file: !3187, line: 203, baseType: !24, size: 64, offset: 128)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3186, file: !3187, line: 205, baseType: !470, size: 192, align: 64, offset: 192)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3186, file: !3187, line: 207, baseType: !2858, size: 64, offset: 384)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3186, file: !3187, line: 208, baseType: !7, size: 32, offset: 448)
!3196 = !DIDerivedType(tag: DW_TAG_member, scope: !3186, file: !3187, line: 209, baseType: !3197, size: 256, offset: 512)
!3197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3186, file: !3187, line: 209, size: 256, elements: !3198)
!3198 = !{!3199, !3208, !3212}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3197, file: !3187, line: 210, baseType: !3200, size: 256)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3187, line: 153, size: 256, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3207}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3200, file: !3187, line: 154, baseType: !47, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3200, file: !3187, line: 156, baseType: !613, size: 64, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3200, file: !3187, line: 162, baseType: !3205, size: 64, offset: 128)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3187, line: 162, flags: DIFlagFwdDecl)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3200, file: !3187, line: 167, baseType: !47, size: 64, offset: 192)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3197, file: !3187, line: 211, baseType: !3209, size: 64)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3187, line: 170, size: 64, elements: !3210)
!3210 = !{!3211}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3209, file: !3187, line: 171, baseType: !3185, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3197, file: !3187, line: 212, baseType: !3213, size: 256)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3187, line: 174, size: 256, elements: !3214)
!3214 = !{!3215, !3305, !3308, !3309}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3213, file: !3187, line: 175, baseType: !3216, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3218)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3187, line: 271, size: 768, elements: !3219)
!3219 = !{!3220, !3278, !3282, !3283, !3284, !3285, !3286, !3290, !3291, !3292, !3293, !3301}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3218, file: !3187, line: 276, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!30, !3224}
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3187, line: 251, size: 1216, elements: !3226)
!3226 = !{!3227, !3228, !3229, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3225, file: !3187, line: 253, baseType: !3185, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3225, file: !3187, line: 254, baseType: !748, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3225, file: !3187, line: 255, baseType: !3230, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !3232, line: 17, size: 960, elements: !3233)
!3232 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!3233 = !{!3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3263, !3264, !3267}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3231, file: !3232, line: 18, baseType: !978, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3231, file: !3232, line: 19, baseType: !43, size: 64, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !3231, file: !3232, line: 20, baseType: !43, size: 64, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3231, file: !3232, line: 21, baseType: !43, size: 64, offset: 192)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !3231, file: !3232, line: 22, baseType: !43, size: 64, offset: 256)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3231, file: !3232, line: 23, baseType: !49, size: 64, offset: 320)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !3231, file: !3232, line: 24, baseType: !49, size: 64, offset: 384)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3231, file: !3232, line: 25, baseType: !776, size: 256, offset: 448)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !3231, file: !3232, line: 26, baseType: !3243, size: 64, offset: 704)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3245)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !3232, line: 32, size: 256, elements: !3246)
!3246 = !{!3247, !3251, !3255, !3259}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3245, file: !3232, line: 33, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!28, !3230, !48}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3245, file: !3232, line: 34, baseType: !3252, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{null, !3230, !28}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3245, file: !3232, line: 35, baseType: !3256, size: 64, offset: 128)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!28, !3230, !28, !48}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3245, file: !3232, line: 36, baseType: !3260, size: 64, offset: 192)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!30, !3230, !28}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !3231, file: !3232, line: 27, baseType: !30, size: 32, offset: 768)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3231, file: !3232, line: 28, baseType: !3265, size: 64, offset: 832)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !749)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3231, file: !3232, line: 29, baseType: !28, size: 64, offset: 896)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3225, file: !3187, line: 256, baseType: !28, size: 64, offset: 192)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3225, file: !3187, line: 259, baseType: !776, size: 256, offset: 256)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3225, file: !3187, line: 260, baseType: !776, size: 256, offset: 512)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3225, file: !3187, line: 261, baseType: !30, size: 32, offset: 768)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3225, file: !3187, line: 262, baseType: !105, size: 128, offset: 832)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3225, file: !3187, line: 263, baseType: !978, size: 64, offset: 960)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3225, file: !3187, line: 265, baseType: !43, size: 64, offset: 1024)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3225, file: !3187, line: 266, baseType: !967, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3225, file: !3187, line: 267, baseType: !967, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3225, file: !3187, line: 268, baseType: !1810, size: 64, offset: 1152)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3218, file: !3187, line: 277, baseType: !3279, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{null, !3224}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3218, file: !3187, line: 290, baseType: !3260, size: 64, offset: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3218, file: !3187, line: 292, baseType: !3248, size: 64, offset: 192)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3218, file: !3187, line: 293, baseType: !3256, size: 64, offset: 256)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3218, file: !3187, line: 294, baseType: !3252, size: 64, offset: 320)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3218, file: !3187, line: 296, baseType: !3287, size: 64, offset: 384)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!1421, !3224, !978, !43, !49}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3218, file: !3187, line: 306, baseType: !43, size: 64, offset: 448)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3218, file: !3187, line: 313, baseType: !967, size: 8, offset: 512)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3218, file: !3187, line: 314, baseType: !3287, size: 64, offset: 576)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3218, file: !3187, line: 317, baseType: !3294, size: 64, offset: 640)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!3297, !3224, !3299}
!3297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3298, line: 59, baseType: !7)
!3298 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !245, line: 61, flags: DIFlagFwdDecl)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3218, file: !3187, line: 320, baseType: !3302, size: 64, offset: 704)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!30, !3224, !1756}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3213, file: !3187, line: 176, baseType: !3306, size: 64, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3187, line: 35, flags: DIFlagFwdDecl)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3213, file: !3187, line: 177, baseType: !49, size: 64, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3213, file: !3187, line: 178, baseType: !3185, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3186, file: !3187, line: 215, baseType: !28, size: 64, offset: 768)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3186, file: !3187, line: 221, baseType: !478, size: 64, offset: 832)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3186, file: !3187, line: 223, baseType: !34, size: 16, offset: 896)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3186, file: !3187, line: 224, baseType: !32, size: 16, offset: 912)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3186, file: !3187, line: 225, baseType: !3315, size: 64, offset: 960)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3187, line: 36, flags: DIFlagFwdDecl)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3186, file: !3187, line: 227, baseType: !756, size: 128, align: 64, offset: 1024)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1523, file: !1524, line: 71, baseType: !2999, size: 32, offset: 448)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1523, file: !1524, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1523, file: !1524, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1523, file: !1524, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1523, file: !1524, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1523, file: !1524, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1520, file: !116, line: 47, baseType: !1510, size: 64, offset: 512)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1520, file: !116, line: 48, baseType: !1529, size: 64, offset: 576)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1520, file: !116, line: 49, baseType: !3327, size: 64, offset: 640)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !116, line: 49, flags: DIFlagFwdDecl)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1520, file: !116, line: 50, baseType: !1138, size: 64, offset: 704)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1511, file: !116, line: 418, baseType: !3331, size: 64, offset: 1408)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !116, line: 53, size: 448, elements: !3333)
!3333 = !{!3334, !3335, !3340, !3344, !3348, !3352}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3332, file: !116, line: 54, baseType: !1594, size: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3332, file: !116, line: 55, baseType: !3336, size: 64, offset: 128)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!1421, !3331, !3339, !978}
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3332, file: !116, line: 57, baseType: !3341, size: 64, offset: 192)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!1421, !3331, !3339, !24, !43}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3332, file: !116, line: 59, baseType: !3345, size: 64, offset: 256)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{null, !1510, !24}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3332, file: !116, line: 60, baseType: !3349, size: 64, offset: 320)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!30, !1510}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3332, file: !116, line: 61, baseType: !3353, size: 64, offset: 384)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{null, !1510}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1511, file: !116, line: 419, baseType: !24, size: 64, offset: 1472)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1511, file: !116, line: 420, baseType: !24, size: 64, offset: 1536)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1511, file: !116, line: 421, baseType: !1529, size: 64, offset: 1600)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1511, file: !116, line: 424, baseType: !3360, size: 64, offset: 1664)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3362)
!3362 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !116, line: 424, flags: DIFlagFwdDecl)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1511, file: !116, line: 425, baseType: !3364, size: 64, offset: 1728)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !901)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1511, file: !116, line: 426, baseType: !7, size: 32, offset: 1792)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1511, file: !116, line: 435, baseType: !776, size: 256, offset: 1856)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1511, file: !116, line: 437, baseType: !3369, size: 64, offset: 2112)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3371, line: 69, size: 320, elements: !3372)
!3371 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3372 = !{!3373, !3374, !3375, !3392, !3394, !3397, !3398}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3370, file: !3371, line: 70, baseType: !24, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3370, file: !3371, line: 71, baseType: !1510, size: 64, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3370, file: !3371, line: 72, baseType: !3376, size: 64, offset: 128)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3378)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3371, line: 47, size: 256, elements: !3379)
!3379 = !{!3380, !3381, !3387, !3391}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3378, file: !3371, line: 49, baseType: !7, size: 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3378, file: !3371, line: 51, baseType: !3382, size: 64, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!30, !24, !3385}
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3370)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3378, file: !3371, line: 53, baseType: !3388, size: 64, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!30, !978, !3385}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3378, file: !3371, line: 55, baseType: !1300, size: 64, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3370, file: !3371, line: 73, baseType: !3393, size: 16, offset: 192)
!3393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3370, file: !3371, line: 74, baseType: !3395, size: 8, offset: 208)
!3395 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !92, line: 16, baseType: !3396)
!3396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !94, line: 20, baseType: !2233)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3370, file: !3371, line: 75, baseType: !91, size: 8, offset: 216)
!3398 = !DIDerivedType(tag: DW_TAG_member, scope: !3370, file: !3371, line: 76, baseType: !3399, size: 64, offset: 256)
!3399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3370, file: !3371, line: 76, size: 64, elements: !3400)
!3400 = !{!3401, !3402, !3409}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3399, file: !3371, line: 77, baseType: !28, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3399, file: !3371, line: 78, baseType: !3403, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3405)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3371, line: 86, size: 128, elements: !3406)
!3406 = !{!3407, !3408}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3405, file: !3371, line: 87, baseType: !7, size: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3405, file: !3371, line: 88, baseType: !978, size: 64, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3399, file: !3371, line: 79, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3412)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3371, line: 92, size: 256, elements: !3413)
!3413 = !{!3414, !3415, !3416, !3417, !3418}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3412, file: !3371, line: 94, baseType: !7, size: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3412, file: !3371, line: 95, baseType: !7, size: 32, offset: 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3412, file: !3371, line: 96, baseType: !2256, size: 64, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3412, file: !3371, line: 97, baseType: !3376, size: 64, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3412, file: !3371, line: 98, baseType: !28, size: 64, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1511, file: !116, line: 438, baseType: !7, size: 32, offset: 2176)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1511, file: !116, line: 441, baseType: !7, size: 32, offset: 2208)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1511, file: !116, line: 442, baseType: !3360, size: 64, offset: 2240)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1511, file: !116, line: 443, baseType: !3364, size: 64, offset: 2304)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1511, file: !116, line: 444, baseType: !967, size: 8, offset: 2368)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1511, file: !116, line: 451, baseType: !967, size: 8, offset: 2376)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1511, file: !116, line: 454, baseType: !7, size: 32, offset: 2400)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1511, file: !116, line: 455, baseType: !3427, size: 64, offset: 2432)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3429, line: 23, size: 96, elements: !3430)
!3429 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3430 = !{!3431, !3432, !3433}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3428, file: !3429, line: 24, baseType: !30, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3428, file: !3429, line: 24, baseType: !30, size: 32, offset: 32)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3428, file: !3429, line: 24, baseType: !30, size: 32, offset: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1511, file: !116, line: 458, baseType: !3435, size: 64, offset: 2496)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!30}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1511, file: !116, line: 460, baseType: !3439, size: 4032, align: 512, offset: 2560)
!3439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3440, size: 4032, elements: !3456)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !116, line: 362, size: 576, elements: !3441)
!3441 = !{!3442, !3443, !3444}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3440, file: !116, line: 363, baseType: !28, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3440, file: !116, line: 364, baseType: !7, size: 32, offset: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3440, file: !116, line: 367, baseType: !3445, size: 448, offset: 128)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !116, line: 319, size: 448, elements: !3446)
!3446 = !{!3447, !3448}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3445, file: !116, line: 320, baseType: !1510, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3445, file: !116, line: 321, baseType: !3449, size: 384, offset: 64)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3450, line: 40, size: 384, elements: !3451)
!3450 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3451 = !{!3452}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3449, file: !3450, line: 41, baseType: !3453, size: 384, align: 64)
!3453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 384, align: 64, elements: !3454)
!3454 = !{!3455}
!3455 = !DISubrange(count: 2)
!3456 = !{!3457}
!3457 = !DISubrange(count: 7)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1511, file: !116, line: 463, baseType: !3459, size: 192, offset: 6592)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3460, line: 8, size: 192, elements: !3461)
!3460 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3461 = !{!3462, !3463, !3464}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3459, file: !3460, line: 10, baseType: !7, size: 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3459, file: !3460, line: 11, baseType: !404, size: 64, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3459, file: !3460, line: 12, baseType: !3465, size: 64, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3467, line: 59, size: 48, elements: !3468)
!3467 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3468 = !{!3469, !3472, !3473, !3474, !3475, !3476}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3466, file: !3467, line: 60, baseType: !3470, size: 16)
!3470 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !92, line: 18, baseType: !3471)
!3471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !94, line: 23, baseType: !398)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3466, file: !3467, line: 61, baseType: !3470, size: 16, offset: 16)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3466, file: !3467, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3466, file: !3467, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3466, file: !3467, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3466, file: !3467, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1511, file: !116, line: 465, baseType: !47, size: 64, offset: 6784)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1511, file: !116, line: 469, baseType: !7, size: 32, offset: 6848)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1511, file: !116, line: 470, baseType: !105, size: 128, offset: 6912)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1511, file: !116, line: 471, baseType: !3481, size: 64, offset: 7040)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3483, line: 33, size: 96, elements: !3484)
!3483 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3484 = !{!3485, !3486, !3487, !3488}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3482, file: !3483, line: 37, baseType: !30, size: 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3482, file: !3483, line: 43, baseType: !30, size: 32, offset: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3482, file: !3483, line: 45, baseType: !34, size: 16, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3482, file: !3483, line: 47, baseType: !34, size: 16, offset: 80)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1511, file: !116, line: 476, baseType: !3490, size: 64, offset: 7104)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !116, line: 378, size: 256, elements: !3492)
!3492 = !{!3493, !3509, !3510, !3511}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3491, file: !116, line: 379, baseType: !3494, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3496, line: 204, baseType: !3497)
!3496 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3496, line: 197, size: 192, elements: !3498)
!3498 = !{!3499, !3501, !3502, !3503, !3505, !3507}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3497, file: !3496, line: 198, baseType: !3500, size: 32)
!3500 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3496, line: 21, baseType: !421)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3497, file: !3496, line: 199, baseType: !95, size: 8, offset: 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3497, file: !3496, line: 200, baseType: !95, size: 8, offset: 40)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3497, file: !3496, line: 201, baseType: !3504, size: 16, offset: 48)
!3504 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3496, line: 17, baseType: !102)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3497, file: !3496, line: 202, baseType: !3506, size: 64, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3496, line: 16, baseType: !479)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3497, file: !3496, line: 203, baseType: !3508, size: 64, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3496, line: 22, baseType: !479)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3491, file: !116, line: 380, baseType: !7, size: 32, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3491, file: !116, line: 381, baseType: !978, size: 64, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3491, file: !116, line: 382, baseType: !978, size: 64, offset: 192)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1511, file: !116, line: 477, baseType: !3491, size: 256, offset: 7168)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1511, file: !116, line: 480, baseType: !3514, size: 64, offset: 7424)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !116, line: 480, flags: DIFlagFwdDecl)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1511, file: !116, line: 483, baseType: !3517, size: 64, offset: 7488)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !116, line: 483, flags: DIFlagFwdDecl)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1511, file: !116, line: 488, baseType: !978, size: 64, offset: 7552)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1511, file: !116, line: 492, baseType: !28, size: 64, offset: 7616)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1511, file: !116, line: 493, baseType: !7, size: 32, offset: 7680)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1511, file: !116, line: 495, baseType: !28, size: 64, offset: 7744)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1511, file: !116, line: 496, baseType: !7, size: 32, offset: 7808)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1511, file: !116, line: 499, baseType: !7, size: 32, offset: 7840)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1511, file: !116, line: 500, baseType: !3526, size: 64, offset: 7872)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3528, line: 45, baseType: !3529)
!3528 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1511, file: !116, line: 503, baseType: !7, size: 32, offset: 7936)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1511, file: !116, line: 504, baseType: !3532, size: 64, offset: 8000)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3535, line: 96, size: 192, elements: !3536)
!3535 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3536 = !{!3537, !3538, !3580, !3581}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3534, file: !3535, line: 97, baseType: !7, size: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3534, file: !3535, line: 98, baseType: !3539, size: 64, offset: 64)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3535, line: 24, size: 3072, elements: !3541)
!3541 = !{!3542, !3544, !3545, !3546, !3547, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3577, !3578, !3579}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3540, file: !3535, line: 26, baseType: !3543, size: 128)
!3543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 128, elements: !3454)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3540, file: !3535, line: 27, baseType: !3543, size: 128, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3540, file: !3535, line: 28, baseType: !30, size: 32, offset: 256)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3540, file: !3535, line: 31, baseType: !67, size: 32, align: 512, offset: 512)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3540, file: !3535, line: 32, baseType: !3548, size: 960, offset: 576)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3549, line: 206, size: 960, elements: !3550)
!3549 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3550 = !{!3551, !3552, !3555, !3557, !3558, !3559}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3548, file: !3549, line: 207, baseType: !759, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3548, file: !3549, line: 208, baseType: !3553, size: 256, offset: 64)
!3553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3554, size: 256, elements: !833)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3548, file: !3549, line: 209, baseType: !3556, size: 256, offset: 320)
!3556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 256, elements: !833)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3548, file: !3549, line: 213, baseType: !1198, size: 64, offset: 576)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3548, file: !3549, line: 215, baseType: !1200, size: 256, offset: 640)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3548, file: !3549, line: 216, baseType: !91, size: 8, offset: 896)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3540, file: !3535, line: 33, baseType: !47, size: 64, offset: 1536)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3540, file: !3535, line: 34, baseType: !47, size: 64, offset: 1600)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3540, file: !3535, line: 35, baseType: !967, size: 8, offset: 1664)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3540, file: !3535, line: 36, baseType: !2687, size: 320, offset: 1728)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3540, file: !3535, line: 37, baseType: !1100, size: 256, offset: 2048)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3540, file: !3535, line: 38, baseType: !756, size: 128, align: 64, offset: 2304)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3540, file: !3535, line: 39, baseType: !3567, size: 64, offset: 2432)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3535, line: 49, size: 768, elements: !3569)
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3575, !3576}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3568, file: !3535, line: 50, baseType: !67, size: 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3568, file: !3535, line: 51, baseType: !3556, size: 256, offset: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3568, file: !3535, line: 53, baseType: !3556, size: 256, offset: 320)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3568, file: !3535, line: 54, baseType: !47, size: 64, offset: 576)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3568, file: !3535, line: 55, baseType: !3567, size: 64, offset: 640)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3568, file: !3535, line: 56, baseType: !30, size: 32, offset: 704)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3568, file: !3535, line: 57, baseType: !30, size: 32, offset: 736)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3540, file: !3535, line: 40, baseType: !47, size: 64, offset: 2496)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3540, file: !3535, line: 42, baseType: !30, size: 32, offset: 2560)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3540, file: !3535, line: 43, baseType: !3533, size: 64, offset: 2624)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3534, file: !3535, line: 99, baseType: !3070, offset: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3534, file: !3535, line: 100, baseType: !3582, size: 64, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3535, line: 63, size: 3008, elements: !3584)
!3584 = !{!3585, !3586, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3583, file: !3535, line: 64, baseType: !3567, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3583, file: !3535, line: 65, baseType: !3587, size: 192, offset: 64)
!3587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3567, size: 192, elements: !812)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3583, file: !3535, line: 67, baseType: !30, size: 32, offset: 256)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3583, file: !3535, line: 68, baseType: !776, size: 256, offset: 320)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3583, file: !3535, line: 69, baseType: !67, size: 32, offset: 576)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3583, file: !3535, line: 70, baseType: !776, size: 256, offset: 640)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3583, file: !3535, line: 71, baseType: !47, size: 64, offset: 896)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3583, file: !3535, line: 72, baseType: !47, size: 64, offset: 960)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3583, file: !3535, line: 73, baseType: !47, size: 64, offset: 1024)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3583, file: !3535, line: 74, baseType: !47, size: 64, offset: 1088)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3583, file: !3535, line: 75, baseType: !47, size: 64, offset: 1152)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3583, file: !3535, line: 76, baseType: !47, size: 64, offset: 1216)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3583, file: !3535, line: 77, baseType: !47, size: 64, offset: 1280)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3583, file: !3535, line: 78, baseType: !47, size: 64, offset: 1344)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3583, file: !3535, line: 79, baseType: !967, size: 8, offset: 1408)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3583, file: !3535, line: 80, baseType: !47, size: 64, offset: 1472)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3583, file: !3535, line: 81, baseType: !776, size: 256, offset: 1536)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3583, file: !3535, line: 82, baseType: !1139, size: 256, offset: 1792)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3583, file: !3535, line: 84, baseType: !57, size: 32, offset: 2048)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3583, file: !3535, line: 87, baseType: !47, size: 64, offset: 2112)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3583, file: !3535, line: 88, baseType: !47, size: 64, offset: 2176)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3583, file: !3535, line: 89, baseType: !2959, size: 704, offset: 2240)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3583, file: !3535, line: 90, baseType: !3533, size: 64, offset: 2944)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1511, file: !116, line: 515, baseType: !3610, size: 64, offset: 8064)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3612, line: 117, size: 128, elements: !3613)
!3612 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3613 = !{!3614, !3615, !3616}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3611, file: !3612, line: 118, baseType: !901, size: 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3611, file: !3612, line: 119, baseType: !901, size: 32, offset: 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3611, file: !3612, line: 120, baseType: !1198, size: 64, offset: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1511, file: !116, line: 516, baseType: !7, size: 32, offset: 8128)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1511, file: !116, line: 519, baseType: !7, size: 32, offset: 8160)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1511, file: !116, line: 520, baseType: !3620, size: 64, offset: 8192)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1511, file: !116, line: 523, baseType: !3622, size: 64, offset: 8256)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !116, line: 523, flags: DIFlagFwdDecl)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1511, file: !116, line: 524, baseType: !7, size: 32, offset: 8320)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1511, file: !116, line: 525, baseType: !3627, size: 64, offset: 8384)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !3630, line: 28, size: 192, elements: !3631)
!3630 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!3631 = !{!3632, !3633, !3634}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !3629, file: !3630, line: 29, baseType: !24, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !3629, file: !3630, line: 30, baseType: !24, size: 64, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !3629, file: !3630, line: 31, baseType: !47, size: 64, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1511, file: !116, line: 526, baseType: !7, size: 32, offset: 8448)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1511, file: !116, line: 533, baseType: !28, size: 64, offset: 8512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1511, file: !116, line: 534, baseType: !7, size: 32, offset: 8576)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1511, file: !116, line: 535, baseType: !3639, size: 64, offset: 8640)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1511, file: !116, line: 536, baseType: !7, size: 32, offset: 8704)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1511, file: !116, line: 539, baseType: !30, size: 32, offset: 8736)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1511, file: !116, line: 540, baseType: !3643, size: 64, offset: 8768)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3645, line: 32, size: 64, elements: !3646)
!3645 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3646 = !{!3647, !3648}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3644, file: !3645, line: 33, baseType: !901, size: 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3644, file: !3645, line: 34, baseType: !901, size: 32, offset: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1511, file: !116, line: 563, baseType: !105, size: 128, offset: 8832)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1511, file: !116, line: 565, baseType: !105, size: 128, offset: 8960)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1511, file: !116, line: 568, baseType: !3652, size: 64, offset: 9088)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{null}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1511, file: !116, line: 570, baseType: !57, size: 32, offset: 9152)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1487, file: !245, line: 2382, baseType: !1486, size: 64, offset: 448)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1487, file: !245, line: 2383, baseType: !824, size: 64, offset: 512)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1487, file: !245, line: 2385, baseType: !3659, offset: 576)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !3071, line: 206, elements: !741)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1487, file: !245, line: 2386, baseType: !3659, offset: 576)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1487, file: !245, line: 2387, baseType: !3659, offset: 576)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1487, file: !245, line: 2388, baseType: !3663, offset: 576)
!3663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3659, elements: !812)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1487, file: !245, line: 2390, baseType: !3659, offset: 576)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1487, file: !245, line: 2391, baseType: !3659, offset: 576)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1487, file: !245, line: 2392, baseType: !3659, offset: 576)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1487, file: !245, line: 2393, baseType: !3659, offset: 576)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1478, file: !245, line: 1197, baseType: !3669, size: 64, offset: 384)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3671)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !245, line: 2057, size: 1664, elements: !3672)
!3672 = !{!3673, !3677, !3681, !3682, !3686, !3690, !3694, !3695, !3696, !3700, !3704, !3708, !3709, !3710, !3716, !3720, !3721, !3725, !3726, !3727, !3728, !3732, !3736, !3783, !3798, !3799}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3671, file: !245, line: 2058, baseType: !3674, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!1269, !1477}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3671, file: !245, line: 2059, baseType: !3678, size: 64, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{null, !1269}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3671, file: !245, line: 2060, baseType: !3678, size: 64, offset: 128)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3671, file: !245, line: 2062, baseType: !3683, size: 64, offset: 192)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{null, !1269, !30}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3671, file: !245, line: 2063, baseType: !3687, size: 64, offset: 256)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!30, !1269, !1958}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3671, file: !245, line: 2064, baseType: !3691, size: 64, offset: 320)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!30, !1269}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3671, file: !245, line: 2065, baseType: !3678, size: 64, offset: 384)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3671, file: !245, line: 2066, baseType: !1506, size: 64, offset: 448)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3671, file: !245, line: 2067, baseType: !3697, size: 64, offset: 512)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!30, !1477, !30}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3671, file: !245, line: 2068, baseType: !3701, size: 64, offset: 576)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!30, !1477, !244}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3671, file: !245, line: 2069, baseType: !3705, size: 64, offset: 640)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!30, !1477}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3671, file: !245, line: 2070, baseType: !3701, size: 64, offset: 704)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3671, file: !245, line: 2071, baseType: !3705, size: 64, offset: 768)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3671, file: !245, line: 2072, baseType: !3711, size: 64, offset: 832)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!30, !1234, !3714}
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !245, line: 62, flags: DIFlagFwdDecl)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3671, file: !245, line: 2073, baseType: !3717, size: 64, offset: 896)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!30, !1477, !404, !978}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3671, file: !245, line: 2074, baseType: !1506, size: 64, offset: 960)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3671, file: !245, line: 2076, baseType: !3722, size: 64, offset: 1024)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!30, !3230, !1234}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3671, file: !245, line: 2077, baseType: !3722, size: 64, offset: 1088)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3671, file: !245, line: 2078, baseType: !3722, size: 64, offset: 1152)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3671, file: !245, line: 2079, baseType: !3722, size: 64, offset: 1216)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3671, file: !245, line: 2081, baseType: !3729, size: 64, offset: 1280)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!1421, !1477, !30, !978, !43, !49}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3671, file: !245, line: 2082, baseType: !3733, size: 64, offset: 1344)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!1421, !1477, !30, !24, !43, !49}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3671, file: !245, line: 2083, baseType: !3737, size: 64, offset: 1408)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!3740, !1269}
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !250, line: 296, size: 1664, elements: !3743)
!3743 = !{!3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3768, !3769, !3770}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3742, file: !250, line: 297, baseType: !828, size: 128)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3742, file: !250, line: 298, baseType: !105, size: 128, offset: 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3742, file: !250, line: 299, baseType: !105, size: 128, offset: 256)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3742, file: !250, line: 300, baseType: !105, size: 128, offset: 384)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3742, file: !250, line: 301, baseType: !776, size: 256, offset: 512)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3742, file: !250, line: 302, baseType: !67, size: 32, offset: 768)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3742, file: !250, line: 303, baseType: !57, size: 32, offset: 800)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3742, file: !250, line: 304, baseType: !1477, size: 64, offset: 832)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3742, file: !250, line: 305, baseType: !3753, size: 64, offset: 896)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !250, line: 68, size: 64, elements: !3754)
!3754 = !{!3755, !3767}
!3755 = !DIDerivedType(tag: DW_TAG_member, scope: !3753, file: !250, line: 69, baseType: !3756, size: 32)
!3756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3753, file: !250, line: 69, size: 32, elements: !3757)
!3757 = !{!3758, !3759, !3760}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3756, file: !250, line: 70, baseType: !850, size: 32)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3756, file: !250, line: 71, baseType: !868, size: 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3756, file: !250, line: 72, baseType: !3761, size: 32)
!3761 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3762, line: 24, baseType: !3763)
!3762 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3762, line: 22, size: 32, elements: !3764)
!3764 = !{!3765}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3763, file: !3762, line: 23, baseType: !3766, size: 32)
!3766 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3762, line: 20, baseType: !856)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3753, file: !250, line: 74, baseType: !249, size: 32, offset: 32)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3742, file: !250, line: 306, baseType: !49, size: 64, offset: 960)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3742, file: !250, line: 307, baseType: !47, size: 64, offset: 1024)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3742, file: !250, line: 308, baseType: !3771, size: 576, offset: 1088)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !250, line: 205, size: 576, elements: !3772)
!3772 = !{!3773, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3771, file: !250, line: 206, baseType: !3774, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !250, line: 66, baseType: !51)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3771, file: !250, line: 207, baseType: !3774, size: 64, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3771, file: !250, line: 208, baseType: !3774, size: 64, offset: 128)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3771, file: !250, line: 209, baseType: !3774, size: 64, offset: 192)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3771, file: !250, line: 210, baseType: !3774, size: 64, offset: 256)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3771, file: !250, line: 211, baseType: !3774, size: 64, offset: 320)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3771, file: !250, line: 212, baseType: !3774, size: 64, offset: 384)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3771, file: !250, line: 213, baseType: !925, size: 64, offset: 448)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3771, file: !250, line: 214, baseType: !925, size: 64, offset: 512)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3671, file: !245, line: 2085, baseType: !3784, size: 64, offset: 1472)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!1198, !1477, !3787}
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3789, line: 15, size: 256, elements: !3790)
!3789 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3790 = !{!3791, !3792, !3793, !3794, !3795}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3788, file: !3789, line: 16, baseType: !1473, size: 32)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3788, file: !3789, line: 19, baseType: !30, size: 32, offset: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3788, file: !3789, line: 26, baseType: !47, size: 64, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3788, file: !3789, line: 33, baseType: !47, size: 64, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3788, file: !3789, line: 36, baseType: !3796, size: 64, offset: 192)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !3789, line: 36, flags: DIFlagFwdDecl)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3671, file: !245, line: 2087, baseType: !3784, size: 64, offset: 1536)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3671, file: !245, line: 2089, baseType: !1506, size: 64, offset: 1600)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1478, file: !245, line: 1198, baseType: !3801, size: 64, offset: 448)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3803)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !250, line: 324, size: 704, elements: !3804)
!3804 = !{!3805, !3809, !3813, !3817, !3818, !3819, !3820, !3821, !3826, !3831, !3835}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3803, file: !250, line: 325, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!30, !3741}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3803, file: !250, line: 326, baseType: !3810, size: 64, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!3741, !1477, !30}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3803, file: !250, line: 327, baseType: !3814, size: 64, offset: 128)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{null, !3741}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3803, file: !250, line: 328, baseType: !3806, size: 64, offset: 192)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3803, file: !250, line: 329, baseType: !3806, size: 64, offset: 256)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3803, file: !250, line: 330, baseType: !3806, size: 64, offset: 320)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3803, file: !250, line: 331, baseType: !3697, size: 64, offset: 384)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3803, file: !250, line: 334, baseType: !3822, size: 64, offset: 448)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!3825, !1269}
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3803, file: !250, line: 335, baseType: !3827, size: 64, offset: 512)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!30, !1269, !3830}
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3803, file: !250, line: 337, baseType: !3832, size: 64, offset: 576)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!30, !1269, !3825}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3803, file: !250, line: 339, baseType: !3836, size: 64, offset: 640)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!30, !1477, !3839}
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1478, file: !245, line: 1199, baseType: !3841, size: 64, offset: 512)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3843)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !250, line: 430, size: 704, elements: !3844)
!3844 = !{!3845, !3849, !3850, !3854, !3855, !3856, !3871, !3894, !3898, !3899, !3922}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3843, file: !250, line: 431, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!30, !1477, !30, !30, !1390}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3843, file: !250, line: 432, baseType: !3697, size: 64, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3843, file: !250, line: 433, baseType: !3851, size: 64, offset: 128)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!30, !1477, !7}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3843, file: !250, line: 434, baseType: !3851, size: 64, offset: 192)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3843, file: !250, line: 435, baseType: !3697, size: 64, offset: 256)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3843, file: !250, line: 436, baseType: !3857, size: 64, offset: 320)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!30, !1477, !30, !3860}
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !250, line: 417, size: 256, elements: !3862)
!3862 = !{!3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3861, file: !250, line: 418, baseType: !30, size: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3861, file: !250, line: 419, baseType: !7, size: 32, offset: 32)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3861, file: !250, line: 420, baseType: !7, size: 32, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3861, file: !250, line: 422, baseType: !7, size: 32, offset: 96)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3861, file: !250, line: 423, baseType: !7, size: 32, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3861, file: !250, line: 424, baseType: !7, size: 32, offset: 160)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3861, file: !250, line: 425, baseType: !7, size: 32, offset: 192)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3861, file: !250, line: 426, baseType: !7, size: 32, offset: 224)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3843, file: !250, line: 437, baseType: !3872, size: 64, offset: 384)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!30, !1477, !3753, !3875}
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !250, line: 345, size: 960, elements: !3877)
!3877 = !{!3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3876, file: !250, line: 346, baseType: !30, size: 32)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3876, file: !250, line: 347, baseType: !478, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3876, file: !250, line: 348, baseType: !478, size: 64, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3876, file: !250, line: 349, baseType: !478, size: 64, offset: 192)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3876, file: !250, line: 350, baseType: !478, size: 64, offset: 256)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3876, file: !250, line: 351, baseType: !478, size: 64, offset: 320)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3876, file: !250, line: 352, baseType: !478, size: 64, offset: 384)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3876, file: !250, line: 353, baseType: !489, size: 64, offset: 448)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3876, file: !250, line: 355, baseType: !489, size: 64, offset: 512)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3876, file: !250, line: 356, baseType: !30, size: 32, offset: 576)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3876, file: !250, line: 357, baseType: !30, size: 32, offset: 608)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3876, file: !250, line: 358, baseType: !478, size: 64, offset: 640)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3876, file: !250, line: 359, baseType: !478, size: 64, offset: 704)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3876, file: !250, line: 360, baseType: !478, size: 64, offset: 768)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3876, file: !250, line: 361, baseType: !489, size: 64, offset: 832)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3876, file: !250, line: 362, baseType: !30, size: 32, offset: 896)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3843, file: !250, line: 438, baseType: !3895, size: 64, offset: 448)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!30, !1477, !3839, !3875}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3843, file: !250, line: 440, baseType: !3872, size: 64, offset: 512)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3843, file: !250, line: 441, baseType: !3900, size: 64, offset: 576)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!30, !1477, !3903}
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !250, line: 411, size: 1408, elements: !3905)
!3905 = !{!3906, !3907}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3904, file: !250, line: 412, baseType: !7, size: 32)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3904, file: !250, line: 413, baseType: !3908, size: 1344, offset: 64)
!3908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3909, size: 1344, elements: !812)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !250, line: 397, size: 448, elements: !3910)
!3910 = !{!3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3921}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3909, file: !250, line: 398, baseType: !7, size: 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3909, file: !250, line: 399, baseType: !7, size: 32, offset: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3909, file: !250, line: 401, baseType: !7, size: 32, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3909, file: !250, line: 402, baseType: !7, size: 32, offset: 96)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3909, file: !250, line: 403, baseType: !7, size: 32, offset: 128)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3909, file: !250, line: 404, baseType: !7, size: 32, offset: 160)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3909, file: !250, line: 405, baseType: !7, size: 32, offset: 192)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3909, file: !250, line: 406, baseType: !480, size: 64, offset: 256)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3909, file: !250, line: 407, baseType: !3920, size: 64, offset: 320)
!3920 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !33, line: 132, baseType: !478)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3909, file: !250, line: 408, baseType: !3920, size: 64, offset: 384)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3843, file: !250, line: 442, baseType: !3851, size: 64, offset: 640)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1478, file: !245, line: 1200, baseType: !3924, size: 64, offset: 576)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3926)
!3926 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !245, line: 54, flags: DIFlagFwdDecl)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1478, file: !245, line: 1201, baseType: !47, size: 64, offset: 640)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1478, file: !245, line: 1202, baseType: !47, size: 64, offset: 704)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1478, file: !245, line: 1203, baseType: !47, size: 64, offset: 768)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1478, file: !245, line: 1204, baseType: !1234, size: 64, offset: 832)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1478, file: !245, line: 1205, baseType: !909, size: 320, offset: 896)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1478, file: !245, line: 1206, baseType: !30, size: 32, offset: 1216)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1478, file: !245, line: 1207, baseType: !57, size: 32, offset: 1248)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1478, file: !245, line: 1209, baseType: !28, size: 64, offset: 1280)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1478, file: !245, line: 1211, baseType: !3936, size: 64, offset: 1344)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3939)
!3939 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !245, line: 1211, flags: DIFlagFwdDecl)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1478, file: !245, line: 1223, baseType: !3941, size: 64, offset: 1408)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1246, line: 34, size: 64, elements: !3942)
!3942 = !{!3943}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3941, file: !1246, line: 35, baseType: !1249, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1478, file: !245, line: 1224, baseType: !105, size: 128, offset: 1472)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1478, file: !245, line: 1225, baseType: !2265, size: 64, offset: 1600)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1478, file: !245, line: 1226, baseType: !3947, size: 64, offset: 1664)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !159, line: 1495, size: 128, elements: !3949)
!3949 = !{!3950, !3951}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3948, file: !159, line: 1496, baseType: !2265, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3948, file: !159, line: 1497, baseType: !28, size: 64, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1478, file: !245, line: 1227, baseType: !2990, size: 64, offset: 1728)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1478, file: !245, line: 1228, baseType: !3954, size: 64, offset: 1792)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !245, line: 1228, flags: DIFlagFwdDecl)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1478, file: !245, line: 1229, baseType: !828, size: 128, offset: 1856)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1478, file: !245, line: 1230, baseType: !7, size: 32, offset: 1984)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1478, file: !245, line: 1231, baseType: !3959, size: 2496, offset: 2048)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !250, line: 521, size: 2496, elements: !3960)
!3960 = !{!3961, !3962, !3963, !3965, !3997}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3959, file: !250, line: 522, baseType: !7, size: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3959, file: !250, line: 523, baseType: !909, size: 320, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3959, file: !250, line: 524, baseType: !3964, size: 192, offset: 384)
!3964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1269, size: 192, elements: !812)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3959, file: !250, line: 525, baseType: !3966, size: 1728, offset: 576)
!3966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3967, size: 1728, elements: !812)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !250, line: 222, size: 576, elements: !3968)
!3968 = !{!3969, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3967, file: !250, line: 223, baseType: !3970, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !250, line: 445, size: 256, elements: !3972)
!3972 = !{!3973, !3974, !3987, !3988}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3971, file: !250, line: 446, baseType: !30, size: 32)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3971, file: !250, line: 447, baseType: !3975, size: 64, offset: 64)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3977)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !250, line: 312, size: 512, elements: !3978)
!3978 = !{!3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3977, file: !250, line: 313, baseType: !3697, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3977, file: !250, line: 314, baseType: !3697, size: 64, offset: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3977, file: !250, line: 315, baseType: !3697, size: 64, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3977, file: !250, line: 316, baseType: !3697, size: 64, offset: 192)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3977, file: !250, line: 317, baseType: !3806, size: 64, offset: 256)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3977, file: !250, line: 318, baseType: !3806, size: 64, offset: 320)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3977, file: !250, line: 319, baseType: !3806, size: 64, offset: 384)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3977, file: !250, line: 320, baseType: !3836, size: 64, offset: 448)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3971, file: !250, line: 448, baseType: !1510, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3971, file: !250, line: 449, baseType: !3970, size: 64, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3967, file: !250, line: 224, baseType: !30, size: 32, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3967, file: !250, line: 226, baseType: !105, size: 128, offset: 128)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3967, file: !250, line: 227, baseType: !47, size: 64, offset: 256)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3967, file: !250, line: 228, baseType: !7, size: 32, offset: 320)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3967, file: !250, line: 229, baseType: !7, size: 32, offset: 352)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3967, file: !250, line: 230, baseType: !3774, size: 64, offset: 384)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3967, file: !250, line: 231, baseType: !3774, size: 64, offset: 448)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3967, file: !250, line: 232, baseType: !28, size: 64, offset: 512)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3959, file: !250, line: 526, baseType: !3998, size: 192, offset: 2304)
!3998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3975, size: 192, elements: !812)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1478, file: !245, line: 1233, baseType: !4000, size: 2368, offset: 4544)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !245, line: 1184, size: 2368, elements: !4001)
!4001 = !{!4002, !4003, !4004}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4000, file: !245, line: 1185, baseType: !34, size: 16)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4000, file: !245, line: 1186, baseType: !34, size: 16, offset: 16)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4000, file: !245, line: 1187, baseType: !4005, size: 2304, offset: 64)
!4005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4006, size: 2304, elements: !812)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4007, line: 12, size: 768, elements: !4008)
!4007 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4008 = !{!4009, !4017, !4018, !4023, !4024}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4006, file: !4007, line: 13, baseType: !4010, size: 384)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4011, line: 17, size: 384, elements: !4012)
!4011 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4012 = !{!4013, !4014, !4015, !4016}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4010, file: !4011, line: 18, baseType: !30, size: 32)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4010, file: !4011, line: 19, baseType: !30, size: 32, offset: 32)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4010, file: !4011, line: 20, baseType: !62, size: 192, offset: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4010, file: !4011, line: 22, baseType: !756, size: 128, align: 64, offset: 256)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4006, file: !4007, line: 14, baseType: !2256, size: 64, offset: 384)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4006, file: !4007, line: 15, baseType: !4019, size: 64, offset: 448)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4020, line: 16, size: 64, elements: !4021)
!4020 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4021 = !{!4022}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4019, file: !4020, line: 17, baseType: !409, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4006, file: !4007, line: 16, baseType: !62, size: 192, offset: 512)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4006, file: !4007, line: 17, baseType: !57, size: 32, offset: 704)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1478, file: !245, line: 1240, baseType: !28, size: 64, offset: 6912)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1478, file: !245, line: 1243, baseType: !420, size: 32, offset: 6976)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1478, file: !245, line: 1245, baseType: !925, size: 64, offset: 7040)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1478, file: !245, line: 1246, baseType: !925, size: 64, offset: 7104)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1478, file: !245, line: 1248, baseType: !421, size: 32, offset: 7168)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1478, file: !245, line: 1249, baseType: !4031, size: 64, offset: 7232)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !245, line: 634, flags: DIFlagFwdDecl)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1478, file: !245, line: 1252, baseType: !2279, size: 256, offset: 7296)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1478, file: !245, line: 1253, baseType: !4035, size: 128, offset: 7552)
!4035 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4036, line: 21, baseType: !4037)
!4036 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4036, line: 19, size: 128, elements: !4038)
!4038 = !{!4039}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4037, file: !4036, line: 20, baseType: !4040, size: 128)
!4040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, elements: !4041)
!4041 = !{!4042}
!4042 = !DISubrange(count: 16)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1478, file: !245, line: 1255, baseType: !7, size: 32, offset: 7680)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1478, file: !245, line: 1261, baseType: !776, size: 256, offset: 7744)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1478, file: !245, line: 1267, baseType: !24, size: 64, offset: 8000)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1478, file: !245, line: 1269, baseType: !4047, size: 64, offset: 8064)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4049)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1236, line: 128, size: 1024, align: 512, elements: !4050)
!4050 = !{!4051, !4055, !4056, !4063, !4069, !4073, !4077, !4081, !4082, !4086, !4090, !4095, !4099}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4049, file: !1236, line: 129, baseType: !4052, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!30, !1234, !7}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4049, file: !1236, line: 130, baseType: !4052, size: 64, offset: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4049, file: !1236, line: 131, baseType: !4057, size: 64, offset: 128)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!30, !4060, !4062}
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1235)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4049, file: !1236, line: 132, baseType: !4064, size: 64, offset: 192)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!30, !4060, !7, !24, !4067}
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1254)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4049, file: !1236, line: 134, baseType: !4070, size: 64, offset: 256)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!30, !4060}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4049, file: !1236, line: 135, baseType: !4074, size: 64, offset: 320)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!30, !1234}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4049, file: !1236, line: 136, baseType: !4078, size: 64, offset: 384)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{null, !1234}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4049, file: !1236, line: 137, baseType: !4078, size: 64, offset: 448)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4049, file: !1236, line: 138, baseType: !4083, size: 64, offset: 512)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{null, !1234, !1269}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4049, file: !1236, line: 139, baseType: !4087, size: 64, offset: 576)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!978, !1234, !978, !30}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4049, file: !1236, line: 140, baseType: !4091, size: 64, offset: 640)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!1229, !4094}
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4049, file: !1236, line: 141, baseType: !4096, size: 64, offset: 704)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!30, !1390, !967}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4049, file: !1236, line: 142, baseType: !4100, size: 64, offset: 768)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!1234, !1234, !4103}
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1270)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1478, file: !245, line: 1271, baseType: !4106, size: 448, offset: 8128)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3789, line: 63, size: 448, elements: !4107)
!4107 = !{!4108, !4113, !4114, !4115, !4116, !4117, !4118}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4106, file: !3789, line: 64, baseType: !4109, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!47, !4112, !3787}
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4106, file: !3789, line: 66, baseType: !4109, size: 64, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4106, file: !3789, line: 69, baseType: !1198, size: 64, offset: 128)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4106, file: !3789, line: 70, baseType: !30, size: 32, offset: 192)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4106, file: !3789, line: 71, baseType: !7, size: 32, offset: 224)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4106, file: !3789, line: 74, baseType: !105, size: 128, offset: 256)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4106, file: !3789, line: 85, baseType: !4119, size: 64, offset: 384)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1478, file: !245, line: 1274, baseType: !769, size: 64, offset: 8576)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1478, file: !245, line: 1280, baseType: !769, size: 64, offset: 8640)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1478, file: !245, line: 1283, baseType: !30, size: 32, offset: 8704)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1478, file: !245, line: 1286, baseType: !3154, size: 32, offset: 8736)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1478, file: !245, line: 1289, baseType: !2379, size: 64, offset: 8768)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1478, file: !245, line: 1290, baseType: !824, size: 64, offset: 8832)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1478, file: !245, line: 1297, baseType: !1051, size: 64, offset: 8896)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1478, file: !245, line: 1304, baseType: !4128, size: 64, offset: 8960)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4129, line: 49, size: 64, elements: !4130)
!4129 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4130 = !{!4131}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4128, file: !4129, line: 50, baseType: !4132, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4129, line: 41, size: 512, align: 512, elements: !4134)
!4134 = !{!4135, !4136, !4141}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4133, file: !4129, line: 43, baseType: !67, size: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4133, file: !4129, line: 45, baseType: !4137, size: 192, offset: 64)
!4137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4129, line: 29, size: 192, elements: !4138)
!4138 = !{!4139, !4140}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4137, file: !4129, line: 30, baseType: !105, size: 128)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4137, file: !4129, line: 32, baseType: !1198, size: 64, offset: 128)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4133, file: !4129, line: 46, baseType: !1198, size: 64, offset: 256)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1478, file: !245, line: 1305, baseType: !4128, size: 64, offset: 9024)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1478, file: !245, line: 1306, baseType: !756, size: 128, align: 64, offset: 9088)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1478, file: !245, line: 1307, baseType: !1100, size: 256, offset: 9216)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1478, file: !245, line: 1309, baseType: !776, size: 256, offset: 9472)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1478, file: !245, line: 1314, baseType: !30, size: 32, offset: 9728)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1478, file: !245, line: 1317, baseType: !67, size: 32, align: 512, offset: 10240)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1478, file: !245, line: 1318, baseType: !105, size: 128, offset: 10304)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1478, file: !245, line: 1320, baseType: !67, size: 32, offset: 10432)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1478, file: !245, line: 1321, baseType: !105, size: 128, offset: 10496)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1270, file: !245, line: 656, baseType: !1627, size: 64, offset: 512)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1270, file: !245, line: 659, baseType: !28, size: 64, offset: 576)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1270, file: !245, line: 663, baseType: !47, size: 64, offset: 640)
!4154 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !245, line: 671, baseType: !4155, size: 32, offset: 704)
!4155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !245, line: 671, size: 32, elements: !4156)
!4156 = !{!4157, !4159}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4155, file: !245, line: 672, baseType: !4158, size: 32)
!4158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4155, file: !245, line: 673, baseType: !7, size: 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1270, file: !245, line: 675, baseType: !1343, size: 32, offset: 736)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1270, file: !245, line: 676, baseType: !49, size: 64, offset: 768)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1270, file: !245, line: 677, baseType: !1379, size: 128, offset: 832)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1270, file: !245, line: 678, baseType: !1379, size: 128, offset: 960)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1270, file: !245, line: 679, baseType: !1379, size: 128, offset: 1088)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1270, file: !245, line: 680, baseType: !67, size: 32, offset: 1216)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1270, file: !245, line: 681, baseType: !34, size: 16, offset: 1248)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1270, file: !245, line: 682, baseType: !91, size: 8, offset: 1264)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1270, file: !245, line: 683, baseType: !91, size: 8, offset: 1272)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1270, file: !245, line: 684, baseType: !3920, size: 64, offset: 1280)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1270, file: !245, line: 691, baseType: !47, size: 64, offset: 1344)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1270, file: !245, line: 692, baseType: !909, size: 320, offset: 1408)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1270, file: !245, line: 694, baseType: !47, size: 64, offset: 1728)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1270, file: !245, line: 695, baseType: !47, size: 64, offset: 1792)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1270, file: !245, line: 697, baseType: !828, size: 128, offset: 1856)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1270, file: !245, line: 698, baseType: !105, size: 128, offset: 1984)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1270, file: !245, line: 707, baseType: !105, size: 128, offset: 2112)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1270, file: !245, line: 708, baseType: !105, size: 128, offset: 2240)
!4178 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !245, line: 709, baseType: !4179, size: 128, offset: 2368)
!4179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !245, line: 709, size: 128, elements: !4180)
!4180 = !{!4181, !4182}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4179, file: !245, line: 710, baseType: !824, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4179, file: !245, line: 711, baseType: !756, size: 128, align: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1270, file: !245, line: 713, baseType: !771, size: 64, offset: 2496)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1270, file: !245, line: 714, baseType: !771, size: 64, offset: 2560)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1270, file: !245, line: 715, baseType: !57, size: 32, offset: 2624)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1270, file: !245, line: 716, baseType: !57, size: 32, offset: 2656)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1270, file: !245, line: 717, baseType: !57, size: 32, offset: 2688)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1270, file: !245, line: 719, baseType: !57, size: 32, offset: 2720)
!4189 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !245, line: 721, baseType: !4190, size: 64, offset: 2752)
!4190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !245, line: 721, size: 64, elements: !4191)
!4191 = !{!4192, !4316}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4190, file: !245, line: 722, baseType: !4193, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4195)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !245, line: 1914, size: 2112, elements: !4196)
!4196 = !{!4197, !4198, !4202, !4206, !4210, !4211, !4212, !4216, !4229, !4233, !4237, !4238, !4242, !4243, !4247, !4252, !4253, !4257, !4261, !4267, !4268, !4272, !4273, !4279, !4283, !4284, !4289, !4293, !4297, !4301, !4305, !4306, !4312}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4195, file: !245, line: 1915, baseType: !1510, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4195, file: !245, line: 1916, baseType: !4199, size: 64, offset: 64)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!49, !748, !49, !30}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4195, file: !245, line: 1917, baseType: !4203, size: 64, offset: 128)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!1421, !748, !978, !43, !48}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4195, file: !245, line: 1918, baseType: !4207, size: 64, offset: 192)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!1421, !748, !24, !43, !48}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4195, file: !245, line: 1919, baseType: !2101, size: 64, offset: 256)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4195, file: !245, line: 1920, baseType: !2101, size: 64, offset: 320)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4195, file: !245, line: 1921, baseType: !4213, size: 64, offset: 384)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!30, !2104, !2388, !7}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4195, file: !245, line: 1923, baseType: !4217, size: 64, offset: 448)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!30, !748, !4220}
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !245, line: 1858, size: 128, elements: !4222)
!4222 = !{!4223, !4228}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4221, file: !245, line: 1859, baseType: !4224, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !245, line: 1855, baseType: !4225)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!967, !4220, !24, !30, !49, !478, !7}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4221, file: !245, line: 1860, baseType: !49, size: 64, offset: 64)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4195, file: !245, line: 1924, baseType: !4230, size: 64, offset: 512)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!3297, !748, !3299}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4195, file: !245, line: 1925, baseType: !4234, size: 64, offset: 576)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!1198, !748, !7, !47}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4195, file: !245, line: 1926, baseType: !4234, size: 64, offset: 640)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4195, file: !245, line: 1927, baseType: !4239, size: 64, offset: 704)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!30, !748, !1756}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4195, file: !245, line: 1928, baseType: !47, size: 64, offset: 768)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4195, file: !245, line: 1929, baseType: !4244, size: 64, offset: 832)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!30, !1269, !748}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4195, file: !245, line: 1930, baseType: !4248, size: 64, offset: 896)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!30, !748, !4251}
!4251 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !245, line: 1061, baseType: !28)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4195, file: !245, line: 1931, baseType: !4244, size: 64, offset: 960)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4195, file: !245, line: 1932, baseType: !4254, size: 64, offset: 1024)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!30, !748, !49, !49, !30}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4195, file: !245, line: 1933, baseType: !4258, size: 64, offset: 1088)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!30, !30, !748, !30}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4195, file: !245, line: 1934, baseType: !4262, size: 64, offset: 1152)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!30, !748, !30, !4265}
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !245, line: 1063, flags: DIFlagFwdDecl)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4195, file: !245, line: 1935, baseType: !745, size: 64, offset: 1216)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4195, file: !245, line: 1936, baseType: !4269, size: 64, offset: 1280)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!30, !30}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4195, file: !245, line: 1937, baseType: !4262, size: 64, offset: 1344)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4195, file: !245, line: 1938, baseType: !4274, size: 64, offset: 1408)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!1421, !4277, !748, !48, !43, !7}
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !411, line: 59, flags: DIFlagFwdDecl)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4195, file: !245, line: 1939, baseType: !4280, size: 64, offset: 1472)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!1421, !748, !48, !4277, !43, !7}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4195, file: !245, line: 1940, baseType: !3144, size: 64, offset: 1536)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4195, file: !245, line: 1941, baseType: !4285, size: 64, offset: 1600)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!30, !748, !30, !4288, !2078}
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4195, file: !245, line: 1942, baseType: !4290, size: 64, offset: 1664)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!1198, !748, !30, !49, !49}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4195, file: !245, line: 1944, baseType: !4294, size: 64, offset: 1728)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{null, !3230, !748}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4195, file: !245, line: 1948, baseType: !4298, size: 64, offset: 1792)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!1421, !748, !49, !748, !49, !43, !7}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4195, file: !245, line: 1950, baseType: !4302, size: 64, offset: 1856)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!49, !748, !49, !748, !49, !49, !7}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4195, file: !245, line: 1953, baseType: !4254, size: 64, offset: 1920)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4195, file: !245, line: 1954, baseType: !4307, size: 64, offset: 1984)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!30, !4310, !7}
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !245, line: 1911, flags: DIFlagFwdDecl)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4195, file: !245, line: 1955, baseType: !4313, size: 64, offset: 2048)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!30, !4310, !2388, !7}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4190, file: !245, line: 723, baseType: !3678, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1270, file: !245, line: 725, baseType: !4318, size: 64, offset: 2816)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !245, line: 725, flags: DIFlagFwdDecl)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1270, file: !245, line: 726, baseType: !1628, size: 1536, align: 64, offset: 2880)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1270, file: !245, line: 727, baseType: !105, size: 128, offset: 4416)
!4322 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !245, line: 728, baseType: !4323, size: 64, offset: 4544)
!4323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !245, line: 728, size: 64, elements: !4324)
!4324 = !{!4325, !4326, !4329, !4330}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4323, file: !245, line: 729, baseType: !4277, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4323, file: !245, line: 730, baseType: !4327, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !245, line: 730, flags: DIFlagFwdDecl)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4323, file: !245, line: 731, baseType: !978, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4323, file: !245, line: 732, baseType: !7, size: 32)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1270, file: !245, line: 735, baseType: !421, size: 32, offset: 4608)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1270, file: !245, line: 738, baseType: !421, size: 32, offset: 4640)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1270, file: !245, line: 739, baseType: !4031, size: 64, offset: 4672)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1270, file: !245, line: 750, baseType: !28, size: 64, offset: 4736)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1235, file: !1236, line: 91, baseType: !4336, size: 256, offset: 448)
!4336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 256, elements: !2280)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1235, file: !1236, line: 94, baseType: !4338, size: 64, offset: 704)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4339, line: 25, size: 64, elements: !4340)
!4339 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4340 = !{!4341}
!4341 = !DIDerivedType(tag: DW_TAG_member, scope: !4338, file: !4339, line: 26, baseType: !4342, size: 64)
!4342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4338, file: !4339, line: 26, size: 64, elements: !4343)
!4343 = !{!4344, !4345}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4342, file: !4339, line: 28, baseType: !479, size: 64, align: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, scope: !4342, file: !4339, line: 30, baseType: !4346, size: 64)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4342, file: !4339, line: 30, size: 64, elements: !4347)
!4347 = !{!4348, !4349}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4346, file: !4339, line: 31, baseType: !67, size: 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4346, file: !4339, line: 32, baseType: !30, size: 32, offset: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1235, file: !1236, line: 95, baseType: !4047, size: 64, offset: 768)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1235, file: !1236, line: 96, baseType: !1477, size: 64, offset: 832)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1235, file: !1236, line: 97, baseType: !47, size: 64, offset: 896)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1235, file: !1236, line: 98, baseType: !28, size: 64, offset: 960)
!4354 = !DIDerivedType(tag: DW_TAG_member, scope: !1235, file: !1236, line: 100, baseType: !4355, size: 128, offset: 1024)
!4355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1235, file: !1236, line: 100, size: 128, elements: !4356)
!4356 = !{!4357, !4358}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4355, file: !1236, line: 101, baseType: !105, size: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4355, file: !1236, line: 102, baseType: !4359, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1235, file: !1236, line: 104, baseType: !105, size: 128, offset: 1152)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1235, file: !1236, line: 105, baseType: !105, size: 128, offset: 1280)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1235, file: !1236, line: 113, baseType: !4363, size: 128, offset: 1408)
!4363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1235, file: !1236, line: 109, size: 128, elements: !4364)
!4364 = !{!4365, !4366, !4367}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4363, file: !1236, line: 110, baseType: !828, size: 128)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4363, file: !1236, line: 111, baseType: !1245, size: 128)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4363, file: !1236, line: 112, baseType: !756, size: 128, align: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1230, file: !1231, line: 72, baseType: !1477, size: 64, offset: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1230, file: !1231, line: 73, baseType: !30, size: 32, offset: 128)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1230, file: !1231, line: 74, baseType: !1308, size: 64, offset: 192)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1225, file: !1226, line: 10, baseType: !1234, size: 64, offset: 64)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !749, file: !245, line: 1015, baseType: !1269, size: 64, offset: 1344)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !749, file: !245, line: 1016, baseType: !4193, size: 64, offset: 1408)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !749, file: !245, line: 1018, baseType: !478, size: 64, offset: 1472)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !749, file: !245, line: 1020, baseType: !28, size: 64, offset: 1536)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !749, file: !245, line: 1023, baseType: !28, size: 64, offset: 1600)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !749, file: !245, line: 1027, baseType: !4378, size: 64, offset: 1664)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !749, file: !245, line: 1029, baseType: !1627, size: 64, offset: 1728)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !749, file: !245, line: 1030, baseType: !3154, size: 32, offset: 1792)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !749, file: !245, line: 1031, baseType: !3154, size: 32, offset: 1824)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !724, file: !131, line: 756, baseType: !47, size: 64, offset: 704)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !724, file: !131, line: 757, baseType: !47, size: 64, offset: 768)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !724, file: !131, line: 760, baseType: !47, size: 64, offset: 832)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !724, file: !131, line: 761, baseType: !47, size: 64, offset: 896)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !724, file: !131, line: 763, baseType: !47, size: 64, offset: 960)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !724, file: !131, line: 764, baseType: !4388, size: 64, offset: 1024)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1771, line: 299, baseType: !4390)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1771, line: 299, size: 64, elements: !4391)
!4391 = !{!4392}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4390, file: !1771, line: 299, baseType: !4393, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1776, line: 18, baseType: !47)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !724, file: !131, line: 773, baseType: !57, size: 32, offset: 1088)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !724, file: !131, line: 785, baseType: !57, size: 32, offset: 1120)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !724, file: !131, line: 795, baseType: !4397, size: 64, offset: 1152)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !131, line: 726, size: 128, elements: !4399)
!4399 = !{!4400, !4401}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4398, file: !131, line: 727, baseType: !478, size: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4398, file: !131, line: 728, baseType: !30, size: 32, offset: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !724, file: !131, line: 801, baseType: !47, size: 64, offset: 1216)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !724, file: !131, line: 804, baseType: !769, size: 64, offset: 1280)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !724, file: !131, line: 806, baseType: !30, size: 32, offset: 1344)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !724, file: !131, line: 808, baseType: !67, size: 32, offset: 1376)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !724, file: !131, line: 823, baseType: !909, size: 320, offset: 1408)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !724, file: !131, line: 825, baseType: !105, size: 128, offset: 1728)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !724, file: !131, line: 845, baseType: !30, size: 32, offset: 1856)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !724, file: !131, line: 849, baseType: !47, size: 64, offset: 1920)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !724, file: !131, line: 850, baseType: !47, size: 64, offset: 1984)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !724, file: !131, line: 852, baseType: !47, size: 64, offset: 2048)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !724, file: !131, line: 853, baseType: !47, size: 64, offset: 2112)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !724, file: !131, line: 854, baseType: !771, size: 64, offset: 2176)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !724, file: !131, line: 855, baseType: !47, size: 64, offset: 2240)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !724, file: !131, line: 856, baseType: !47, size: 64, offset: 2304)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !724, file: !131, line: 857, baseType: !47, size: 64, offset: 2368)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !724, file: !131, line: 858, baseType: !47, size: 64, offset: 2432)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !724, file: !131, line: 865, baseType: !601, size: 32, offset: 2496)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !724, file: !131, line: 867, baseType: !67, size: 32, offset: 2528)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !724, file: !131, line: 869, baseType: !47, size: 64, offset: 2560)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !724, file: !131, line: 869, baseType: !47, size: 64, offset: 2624)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !724, file: !131, line: 869, baseType: !47, size: 64, offset: 2688)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !724, file: !131, line: 869, baseType: !47, size: 64, offset: 2752)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !724, file: !131, line: 870, baseType: !47, size: 64, offset: 2816)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !724, file: !131, line: 870, baseType: !47, size: 64, offset: 2880)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !724, file: !131, line: 870, baseType: !47, size: 64, offset: 2944)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !724, file: !131, line: 871, baseType: !47, size: 64, offset: 3008)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !724, file: !131, line: 871, baseType: !47, size: 64, offset: 3072)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !724, file: !131, line: 871, baseType: !47, size: 64, offset: 3136)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !724, file: !131, line: 871, baseType: !47, size: 64, offset: 3200)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !724, file: !131, line: 873, baseType: !4432, size: 3328, offset: 3264)
!4432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 3328, elements: !4433)
!4433 = !{!4434}
!4434 = !DISubrange(count: 52)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !724, file: !131, line: 875, baseType: !3022, size: 1280, offset: 6592)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !724, file: !131, line: 877, baseType: !4437, size: 64, offset: 7872)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !131, line: 877, flags: DIFlagFwdDecl)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !724, file: !131, line: 880, baseType: !4440, size: 1088, offset: 7936)
!4440 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4441, line: 72, baseType: !4442)
!4441 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4441, line: 23, size: 1088, elements: !4443)
!4443 = !{!4444, !4445, !4446, !4447, !4448, !4473, !4474, !4475, !4476, !4501, !4502, !4503}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4442, file: !4441, line: 28, baseType: !478, size: 64)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4442, file: !4441, line: 38, baseType: !771, size: 64, offset: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4442, file: !4441, line: 40, baseType: !47, size: 64, offset: 128)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4442, file: !4441, line: 43, baseType: !909, size: 320, offset: 192)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4442, file: !4441, line: 44, baseType: !4449, size: 64, offset: 512)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4451, line: 30, size: 128, elements: !4452)
!4451 = !DIFile(filename: "./arch/x86/include/asm/mmu_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e7349a2ab0563256af671ddc4b36d96")
!4452 = !{!4453, !4471, !4472}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4450, file: !4451, line: 37, baseType: !4454, size: 64)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4456, line: 16, size: 64, elements: !4457)
!4456 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4457 = !{!4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4455, file: !4456, line: 17, baseType: !101, size: 16)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4455, file: !4456, line: 18, baseType: !101, size: 16, offset: 16)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4455, file: !4456, line: 19, baseType: !101, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4455, file: !4456, line: 19, baseType: !101, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4455, file: !4456, line: 19, baseType: !101, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4455, file: !4456, line: 19, baseType: !101, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4455, file: !4456, line: 19, baseType: !101, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4455, file: !4456, line: 20, baseType: !101, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4455, file: !4456, line: 20, baseType: !101, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4455, file: !4456, line: 20, baseType: !101, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4455, file: !4456, line: 20, baseType: !101, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4455, file: !4456, line: 20, baseType: !101, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4455, file: !4456, line: 20, baseType: !101, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_entries", scope: !4450, file: !4451, line: 38, baseType: !7, size: 32, offset: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4450, file: !4451, line: 49, baseType: !30, size: 32, offset: 96)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4442, file: !4441, line: 48, baseType: !47, size: 64, offset: 576)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4442, file: !4441, line: 59, baseType: !776, size: 256, offset: 640)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4442, file: !4441, line: 60, baseType: !28, size: 64, offset: 896)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4442, file: !4441, line: 61, baseType: !4477, size: 64, offset: 960)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4479)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4480, line: 13, size: 1216, elements: !4481)
!4480 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4481 = !{!4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4479, file: !4480, line: 14, baseType: !28, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4479, file: !4480, line: 15, baseType: !47, size: 64, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4479, file: !4480, line: 17, baseType: !47, size: 64, offset: 128)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4479, file: !4480, line: 17, baseType: !47, size: 64, offset: 192)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4479, file: !4480, line: 18, baseType: !47, size: 64, offset: 256)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4479, file: !4480, line: 18, baseType: !47, size: 64, offset: 320)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4479, file: !4480, line: 19, baseType: !2858, size: 64, offset: 384)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4479, file: !4480, line: 21, baseType: !1198, size: 64, offset: 448)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4479, file: !4480, line: 23, baseType: !1198, size: 64, offset: 512)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4479, file: !4480, line: 24, baseType: !1198, size: 64, offset: 576)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4479, file: !4480, line: 25, baseType: !1198, size: 64, offset: 640)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4479, file: !4480, line: 26, baseType: !1198, size: 64, offset: 704)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4479, file: !4480, line: 27, baseType: !1198, size: 64, offset: 768)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4479, file: !4480, line: 28, baseType: !1198, size: 64, offset: 832)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4479, file: !4480, line: 29, baseType: !1198, size: 64, offset: 896)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4479, file: !4480, line: 30, baseType: !1198, size: 64, offset: 960)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4479, file: !4480, line: 31, baseType: !1198, size: 64, offset: 1024)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4479, file: !4480, line: 32, baseType: !1198, size: 64, offset: 1088)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4479, file: !4480, line: 33, baseType: !1198, size: 64, offset: 1152)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4442, file: !4441, line: 63, baseType: !57, size: 32, offset: 1024)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4442, file: !4441, line: 69, baseType: !101, size: 16, offset: 1056)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4442, file: !4441, line: 70, baseType: !3470, size: 16, offset: 1072)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !131, line: 882, baseType: !47, size: 64, offset: 9024)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !724, file: !131, line: 885, baseType: !67, size: 32, offset: 9088)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !724, file: !131, line: 886, baseType: !4507, size: 64, offset: 9152)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !131, line: 732, flags: DIFlagFwdDecl)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !724, file: !131, line: 901, baseType: !1051, size: 64, offset: 9216)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !724, file: !131, line: 904, baseType: !748, size: 64, offset: 9280)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !724, file: !131, line: 906, baseType: !4512, size: 64, offset: 9344)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !131, line: 906, flags: DIFlagFwdDecl)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !724, file: !131, line: 930, baseType: !57, size: 32, offset: 9408)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !724, file: !131, line: 933, baseType: !57, size: 32, offset: 9440)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !724, file: !131, line: 935, baseType: !4517, size: 64, offset: 9472)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !262, line: 103, size: 64, elements: !4518)
!4518 = !{!4519}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4517, file: !262, line: 104, baseType: !4520, size: 64)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !262, line: 101, flags: DIFlagFwdDecl)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !724, file: !131, line: 940, baseType: !769, size: 64, offset: 9536)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !724, file: !131, line: 942, baseType: !1100, size: 256, offset: 9600)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !721, file: !131, line: 986, baseType: !4525, offset: 10240)
!4525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, elements: !846)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !410, file: !411, line: 882, baseType: !720, size: 64, offset: 9792)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !410, file: !411, line: 884, baseType: !30, size: 32, offset: 9856)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !410, file: !411, line: 885, baseType: !30, size: 32, offset: 9888)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !410, file: !411, line: 886, baseType: !30, size: 32, offset: 9920)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !410, file: !411, line: 888, baseType: !30, size: 32, offset: 9952)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !410, file: !411, line: 890, baseType: !47, size: 64, offset: 9984)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !410, file: !411, line: 893, baseType: !7, size: 32, offset: 10048)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !410, file: !411, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !410, file: !411, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !410, file: !411, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !410, file: !411, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !410, file: !411, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !410, file: !411, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !410, file: !411, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !410, file: !411, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !410, file: !411, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !410, file: !411, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !410, file: !411, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !410, file: !411, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !410, file: !411, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !410, file: !411, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !410, file: !411, line: 969, baseType: !47, size: 64, offset: 10176)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !410, file: !411, line: 971, baseType: !4549, size: 448, offset: 10240)
!4549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !256, line: 25, size: 448, elements: !4550)
!4550 = !{!4551, !4552, !4557}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4549, file: !256, line: 26, baseType: !47, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4549, file: !256, line: 27, baseType: !4553, size: 64, offset: 64)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!1198, !4556}
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, scope: !4549, file: !256, line: 28, baseType: !4558, size: 320, offset: 128)
!4558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4549, file: !256, line: 28, size: 320, elements: !4559)
!4559 = !{!4560, !4570, !4595}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4558, file: !256, line: 37, baseType: !4561, size: 320)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4558, file: !256, line: 30, size: 320, elements: !4562)
!4562 = !{!4563, !4565, !4566, !4567, !4568, !4569}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4561, file: !256, line: 31, baseType: !4564, size: 64)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4561, file: !256, line: 32, baseType: !420, size: 32, offset: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4561, file: !256, line: 33, baseType: !420, size: 32, offset: 96)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4561, file: !256, line: 34, baseType: !420, size: 32, offset: 128)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4561, file: !256, line: 35, baseType: !478, size: 64, offset: 192)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4561, file: !256, line: 36, baseType: !4564, size: 64, offset: 256)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4558, file: !256, line: 47, baseType: !4571, size: 192)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4558, file: !256, line: 39, size: 192, elements: !4572)
!4572 = !{!4573, !4574, !4575, !4594}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4571, file: !256, line: 40, baseType: !593, size: 32)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4571, file: !256, line: 41, baseType: !255, size: 32, offset: 32)
!4575 = !DIDerivedType(tag: DW_TAG_member, scope: !4571, file: !256, line: 42, baseType: !4576, size: 64, offset: 64)
!4576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4571, file: !256, line: 42, size: 64, elements: !4577)
!4577 = !{!4578, !4586}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4576, file: !256, line: 43, baseType: !4579, size: 64)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4581, line: 7, size: 128, elements: !4582)
!4581 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4582 = !{!4583, !4585}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4580, file: !4581, line: 8, baseType: !4584, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !45, line: 93, baseType: !51)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4580, file: !4581, line: 9, baseType: !51, size: 64, offset: 64)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4576, file: !256, line: 44, baseType: !4587, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4589, line: 7, size: 64, elements: !4590)
!4589 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4590 = !{!4591, !4593}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4588, file: !4589, line: 8, baseType: !4592, size: 32)
!4592 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4589, line: 5, baseType: !901)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4588, file: !4589, line: 9, baseType: !901, size: 32, offset: 32)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4571, file: !256, line: 46, baseType: !478, size: 64, offset: 128)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4558, file: !256, line: 55, baseType: !4596, size: 256)
!4596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4558, file: !256, line: 49, size: 256, elements: !4597)
!4597 = !{!4598, !4601, !4602, !4603, !4604}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4596, file: !256, line: 50, baseType: !4599, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !256, line: 14, flags: DIFlagFwdDecl)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4596, file: !256, line: 51, baseType: !30, size: 32, offset: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4596, file: !256, line: 52, baseType: !30, size: 32, offset: 96)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4596, file: !256, line: 53, baseType: !47, size: 64, offset: 128)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4596, file: !256, line: 54, baseType: !47, size: 64, offset: 192)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !410, file: !411, line: 973, baseType: !4606, size: 32, offset: 10688)
!4606 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !33, line: 27, baseType: !4607)
!4607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !45, line: 28, baseType: !30)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !410, file: !411, line: 974, baseType: !4606, size: 32, offset: 10720)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !410, file: !411, line: 978, baseType: !47, size: 64, offset: 10752)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !410, file: !411, line: 987, baseType: !409, size: 64, offset: 10816)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !410, file: !411, line: 990, baseType: !409, size: 64, offset: 10880)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !410, file: !411, line: 995, baseType: !105, size: 128, offset: 10944)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !410, file: !411, line: 996, baseType: !105, size: 128, offset: 11072)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !410, file: !411, line: 997, baseType: !409, size: 64, offset: 11200)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !410, file: !411, line: 1005, baseType: !105, size: 128, offset: 11264)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !410, file: !411, line: 1006, baseType: !105, size: 128, offset: 11392)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !410, file: !411, line: 1009, baseType: !816, size: 64, offset: 11520)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !410, file: !411, line: 1010, baseType: !4619, size: 512, offset: 11584)
!4619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !828, size: 512, elements: !833)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !410, file: !411, line: 1011, baseType: !105, size: 128, offset: 12096)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !410, file: !411, line: 1012, baseType: !105, size: 128, offset: 12224)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !410, file: !411, line: 1014, baseType: !1138, size: 64, offset: 12352)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !410, file: !411, line: 1017, baseType: !404, size: 64, offset: 12416)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !410, file: !411, line: 1020, baseType: !404, size: 64, offset: 12480)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !410, file: !411, line: 1023, baseType: !28, size: 64, offset: 12544)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !410, file: !411, line: 1025, baseType: !478, size: 64, offset: 12608)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !410, file: !411, line: 1026, baseType: !478, size: 64, offset: 12672)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !410, file: !411, line: 1031, baseType: !478, size: 64, offset: 12736)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !410, file: !411, line: 1032, baseType: !4630, size: 192, offset: 12800)
!4630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !411, line: 324, size: 192, elements: !4631)
!4631 = !{!4632, !4633, !4634}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4630, file: !411, line: 326, baseType: !478, size: 64)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4630, file: !411, line: 327, baseType: !478, size: 64, offset: 64)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4630, file: !411, line: 328, baseType: !570, size: 32, offset: 128)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !410, file: !411, line: 1041, baseType: !47, size: 64, offset: 12992)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !410, file: !411, line: 1042, baseType: !47, size: 64, offset: 13056)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !410, file: !411, line: 1045, baseType: !478, size: 64, offset: 13120)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !410, file: !411, line: 1048, baseType: !478, size: 64, offset: 13184)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !410, file: !411, line: 1051, baseType: !47, size: 64, offset: 13248)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !410, file: !411, line: 1052, baseType: !47, size: 64, offset: 13312)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !410, file: !411, line: 1055, baseType: !4642, size: 640, offset: 13376)
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4643, line: 132, size: 640, elements: !4644)
!4643 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!4644 = !{!4645, !4651, !4652}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4642, file: !4643, line: 133, baseType: !4646, size: 576)
!4646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4647, size: 576, elements: !812)
!4647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4643, line: 117, size: 192, elements: !4648)
!4648 = !{!4649, !4650}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4647, file: !4643, line: 118, baseType: !478, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4647, file: !4643, line: 119, baseType: !607, size: 128, offset: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4642, file: !4643, line: 134, baseType: !7, size: 32, offset: 576)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4642, file: !4643, line: 135, baseType: !7, size: 32, offset: 608)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !410, file: !411, line: 1058, baseType: !4654, size: 448, offset: 14016)
!4654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4643, line: 144, size: 448, elements: !4655)
!4655 = !{!4656, !4657, !4658}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4654, file: !4643, line: 145, baseType: !756, size: 128, align: 64)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4654, file: !4643, line: 146, baseType: !776, size: 256, offset: 128)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4654, file: !4643, line: 147, baseType: !7, size: 32, offset: 384)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !410, file: !411, line: 1064, baseType: !860, size: 64, offset: 14464)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !410, file: !411, line: 1067, baseType: !860, size: 64, offset: 14528)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !410, file: !411, line: 1070, baseType: !860, size: 64, offset: 14592)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !410, file: !411, line: 1074, baseType: !893, size: 64, offset: 14656)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !410, file: !411, line: 1084, baseType: !4664, size: 128, offset: 14720)
!4664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 128, elements: !4041)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !410, file: !411, line: 1086, baseType: !4666, size: 64, offset: 14848)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !411, line: 55, flags: DIFlagFwdDecl)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !410, file: !411, line: 1089, baseType: !4669, size: 64, offset: 14912)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !4670, line: 12, size: 64, elements: !4671)
!4670 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!4671 = !{!4672}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !4669, file: !4670, line: 13, baseType: !4673, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !4670, line: 8, flags: DIFlagFwdDecl)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !410, file: !411, line: 1090, baseType: !4676, size: 128, offset: 14976)
!4676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4677, line: 13, size: 128, elements: !4678)
!4677 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4678 = !{!4679}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4676, file: !4677, line: 14, baseType: !105, size: 128)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !410, file: !411, line: 1097, baseType: !4681, size: 64, offset: 15104)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !411, line: 50, flags: DIFlagFwdDecl)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !410, file: !411, line: 1100, baseType: !4684, size: 64, offset: 15168)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !411, line: 1100, flags: DIFlagFwdDecl)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !410, file: !411, line: 1103, baseType: !4687, size: 64, offset: 15232)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !411, line: 53, flags: DIFlagFwdDecl)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !410, file: !411, line: 1107, baseType: !4690, size: 64, offset: 15296)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4692, line: 31, size: 576, elements: !4693)
!4692 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!4693 = !{!4694, !4695, !4698, !4701, !4704, !4705, !4708, !4711, !4712}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4691, file: !4692, line: 32, baseType: !426, size: 32)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !4691, file: !4692, line: 33, baseType: !4696, size: 64, offset: 64)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !4692, line: 9, flags: DIFlagFwdDecl)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !4691, file: !4692, line: 34, baseType: !4699, size: 64, offset: 128)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !4692, line: 10, flags: DIFlagFwdDecl)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !4691, file: !4692, line: 35, baseType: !4702, size: 64, offset: 192)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !4692, line: 8, flags: DIFlagFwdDecl)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !4691, file: !4692, line: 36, baseType: !844, size: 64, offset: 256)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !4691, file: !4692, line: 37, baseType: !4706, size: 64, offset: 320)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !895, line: 34, flags: DIFlagFwdDecl)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !4691, file: !4692, line: 38, baseType: !4709, size: 64, offset: 384)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !4692, line: 38, flags: DIFlagFwdDecl)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !4691, file: !4692, line: 39, baseType: !4709, size: 64, offset: 448)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !4691, file: !4692, line: 40, baseType: !4713, size: 64, offset: 512)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !4715, line: 771, size: 384, elements: !4716)
!4715 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!4716 = !{!4717, !4718, !4719, !4720}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4714, file: !4715, line: 772, baseType: !1084, size: 192)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4714, file: !4715, line: 773, baseType: !1051, size: 64, offset: 192)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4714, file: !4715, line: 774, baseType: !1183, size: 64, offset: 256)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !4714, file: !4715, line: 775, baseType: !4721, size: 64, offset: 320)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4723, line: 209, size: 4736, elements: !4724)
!4723 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4724 = !{!4725, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4722, file: !4723, line: 215, baseType: !4726, size: 896)
!4726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4727, size: 896, elements: !4784)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4723, line: 152, size: 1600, elements: !4729)
!4729 = !{!4730, !4835, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4959}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4728, file: !4723, line: 154, baseType: !4731, size: 64)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4723, line: 389, size: 7872, elements: !4733)
!4733 = !{!4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4753, !4754, !4758, !4759, !4760, !4761, !4762, !4763, !4781, !4782, !4786, !4787, !4788, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4822, !4825, !4826, !4833}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4732, file: !4723, line: 391, baseType: !4728, size: 1600)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4732, file: !4723, line: 393, baseType: !47, size: 64, offset: 1600)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4732, file: !4723, line: 401, baseType: !30, size: 32, offset: 1664)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4732, file: !4723, line: 404, baseType: !30, size: 32, offset: 1696)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4732, file: !4723, line: 417, baseType: !30, size: 32, offset: 1728)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4732, file: !4723, line: 418, baseType: !30, size: 32, offset: 1760)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4732, file: !4723, line: 419, baseType: !30, size: 32, offset: 1792)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4732, file: !4723, line: 432, baseType: !30, size: 32, offset: 1824)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4732, file: !4723, line: 433, baseType: !30, size: 32, offset: 1856)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4732, file: !4723, line: 434, baseType: !30, size: 32, offset: 1888)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4732, file: !4723, line: 436, baseType: !30, size: 32, offset: 1920)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4732, file: !4723, line: 439, baseType: !7, size: 32, offset: 1952)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4732, file: !4723, line: 441, baseType: !3185, size: 64, offset: 1984)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4732, file: !4723, line: 442, baseType: !4748, size: 448, offset: 2048)
!4748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4723, line: 138, size: 448, elements: !4749)
!4749 = !{!4750, !4751, !4752}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4748, file: !4723, line: 140, baseType: !3185, size: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4748, file: !4723, line: 141, baseType: !47, size: 64, offset: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4748, file: !4723, line: 142, baseType: !2687, size: 320, offset: 128)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4732, file: !4723, line: 443, baseType: !4748, size: 448, offset: 2496)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4732, file: !4723, line: 446, baseType: !4755, offset: 2944)
!4755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4748, elements: !4756)
!4756 = !{!4757}
!4757 = !DISubrange(count: 0)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4732, file: !4723, line: 455, baseType: !101, size: 16, offset: 2944)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4732, file: !4723, line: 456, baseType: !101, size: 16, offset: 2960)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4732, file: !4723, line: 457, baseType: !101, size: 16, offset: 2976)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4732, file: !4723, line: 458, baseType: !101, size: 16, offset: 2992)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4732, file: !4723, line: 461, baseType: !4726, size: 896, offset: 3008)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4732, file: !4723, line: 463, baseType: !4764, size: 64, offset: 3904)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4723, line: 537, size: 41664, elements: !4766)
!4766 = !{!4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4780}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4765, file: !4723, line: 538, baseType: !3205, size: 64)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4765, file: !4723, line: 541, baseType: !7, size: 32, offset: 64)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4765, file: !4723, line: 544, baseType: !30, size: 32, offset: 96)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4765, file: !4723, line: 547, baseType: !105, size: 128, offset: 128)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4765, file: !4723, line: 548, baseType: !756, size: 128, align: 64, offset: 256)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4765, file: !4723, line: 555, baseType: !4732, size: 7872, offset: 384)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4765, file: !4723, line: 558, baseType: !4731, size: 64, offset: 8256)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4765, file: !4723, line: 561, baseType: !57, size: 32, offset: 8320)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4765, file: !4723, line: 564, baseType: !7, size: 32, offset: 8352)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4765, file: !4723, line: 567, baseType: !4777, size: 32768, offset: 8384)
!4777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32768, elements: !4778)
!4778 = !{!4779}
!4779 = !DISubrange(count: 4096)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4765, file: !4723, line: 570, baseType: !3048, size: 512, offset: 41152)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4732, file: !4723, line: 469, baseType: !105, size: 128, offset: 3968)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4732, file: !4723, line: 478, baseType: !4783, size: 1792, offset: 4096)
!4783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 1792, elements: !4784)
!4784 = !{!4785}
!4785 = !DISubrange(count: 14)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4732, file: !4723, line: 487, baseType: !4731, size: 64, offset: 5888)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4732, file: !4723, line: 488, baseType: !4731, size: 64, offset: 5952)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4732, file: !4723, line: 491, baseType: !4789, size: 64, offset: 6016)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4723, line: 327, size: 896, elements: !4791)
!4791 = !{!4792, !4795, !4805, !4806, !4807, !4808, !4809}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4790, file: !4723, line: 332, baseType: !4793)
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4794, line: 64, elements: !741)
!4794 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4790, file: !4723, line: 333, baseType: !4796, size: 192)
!4796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4723, line: 299, size: 192, elements: !4797)
!4797 = !{!4798}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4796, file: !4723, line: 300, baseType: !4799, size: 192)
!4799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4800, line: 17, size: 192, elements: !4801)
!4800 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4801 = !{!4802, !4803, !4804}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4799, file: !4800, line: 18, baseType: !478, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4799, file: !4800, line: 19, baseType: !478, size: 64, offset: 64)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4799, file: !4800, line: 20, baseType: !480, size: 64, offset: 128)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4790, file: !4723, line: 339, baseType: !4796, size: 192, offset: 192)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4790, file: !4723, line: 347, baseType: !4796, size: 192, offset: 384)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4790, file: !4723, line: 353, baseType: !4796, size: 192, offset: 576)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4790, file: !4723, line: 366, baseType: !4731, size: 64, offset: 768)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4790, file: !4723, line: 367, baseType: !4731, size: 64, offset: 832)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4732, file: !4723, line: 492, baseType: !105, size: 128, offset: 6080)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4732, file: !4723, line: 495, baseType: !4796, size: 192, offset: 6208)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4732, file: !4723, line: 496, baseType: !4796, size: 192, offset: 6400)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4732, file: !4723, line: 497, baseType: !4630, size: 192, offset: 6592)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4732, file: !4723, line: 503, baseType: !105, size: 128, offset: 6784)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4732, file: !4723, line: 504, baseType: !776, size: 256, offset: 6912)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4732, file: !4723, line: 507, baseType: !62, size: 192, offset: 7168)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4732, file: !4723, line: 510, baseType: !1100, size: 256, offset: 7360)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4732, file: !4723, line: 513, baseType: !4819, size: 64, offset: 7616)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4821, line: 214, elements: !741)
!4821 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4732, file: !4723, line: 516, baseType: !4823, offset: 7680)
!4823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4824, line: 76, elements: !741)
!4824 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4732, file: !4723, line: 519, baseType: !57, size: 32, offset: 7680)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4732, file: !4723, line: 522, baseType: !4827, size: 128, offset: 7712)
!4827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4723, line: 370, size: 128, elements: !4828)
!4828 = !{!4829, !4830, !4831, !4832}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4827, file: !4723, line: 372, baseType: !967, size: 8)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4827, file: !4723, line: 375, baseType: !30, size: 32, offset: 32)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4827, file: !4723, line: 380, baseType: !30, size: 32, offset: 64)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4827, file: !4723, line: 386, baseType: !30, size: 32, offset: 96)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4732, file: !4723, line: 529, baseType: !4834, offset: 7872)
!4834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4731, elements: !846)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4728, file: !4723, line: 157, baseType: !4836, size: 64, offset: 64)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4723, line: 669, size: 1984, elements: !4838)
!4838 = !{!4839, !4843, !4847, !4851, !4852, !4853, !4854, !4858, !4862, !4863, !4869, !4873, !4874, !4875, !4879, !4883, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4904, !4905, !4942, !4943}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4837, file: !4723, line: 670, baseType: !4840, size: 64)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!4727, !4727}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4837, file: !4723, line: 671, baseType: !4844, size: 64, offset: 64)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!30, !4727}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4837, file: !4723, line: 672, baseType: !4848, size: 64, offset: 128)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{null, !4727}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4837, file: !4723, line: 673, baseType: !4848, size: 64, offset: 192)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4837, file: !4723, line: 674, baseType: !4848, size: 64, offset: 256)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4837, file: !4723, line: 675, baseType: !4848, size: 64, offset: 320)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4837, file: !4723, line: 676, baseType: !4855, size: 64, offset: 384)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{null, !4727, !30}
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4837, file: !4723, line: 677, baseType: !4859, size: 64, offset: 448)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!30, !3230, !4727}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4837, file: !4723, line: 679, baseType: !4859, size: 64, offset: 512)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4837, file: !4723, line: 682, baseType: !4864, size: 64, offset: 576)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!30, !4867}
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4723, line: 30, flags: DIFlagFwdDecl)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4837, file: !4723, line: 683, baseType: !4870, size: 64, offset: 640)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{null, !4867}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4837, file: !4723, line: 684, baseType: !4870, size: 64, offset: 704)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4837, file: !4723, line: 685, baseType: !3652, size: 64, offset: 768)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4837, file: !4723, line: 686, baseType: !4876, size: 64, offset: 832)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!30, !409, !4721}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4837, file: !4723, line: 688, baseType: !4880, size: 64, offset: 896)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{null, !409, !4721}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4837, file: !4723, line: 689, baseType: !4884, size: 64, offset: 960)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{null, !409}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4837, file: !4723, line: 690, baseType: !4884, size: 64, offset: 1024)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4837, file: !4723, line: 691, baseType: !4884, size: 64, offset: 1088)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4837, file: !4723, line: 692, baseType: !4848, size: 64, offset: 1152)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4837, file: !4723, line: 694, baseType: !967, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4837, file: !4723, line: 707, baseType: !967, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4837, file: !4723, line: 719, baseType: !967, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4837, file: !4723, line: 722, baseType: !30, size: 32, offset: 1248)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4837, file: !4723, line: 723, baseType: !24, size: 64, offset: 1280)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4837, file: !4723, line: 726, baseType: !24, size: 64, offset: 1344)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4837, file: !4723, line: 729, baseType: !4764, size: 64, offset: 1408)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4837, file: !4723, line: 732, baseType: !4898, size: 192, offset: 1472)
!4898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4899, line: 19, size: 192, elements: !4900)
!4899 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4900 = !{!4901, !4902, !4903}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4898, file: !4899, line: 20, baseType: !1468, size: 128)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4898, file: !4899, line: 21, baseType: !7, size: 32, offset: 128)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4898, file: !4899, line: 22, baseType: !7, size: 32, offset: 160)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4837, file: !4723, line: 738, baseType: !105, size: 128, offset: 1664)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4837, file: !4723, line: 744, baseType: !4906, size: 64, offset: 1792)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4723, line: 580, size: 1728, elements: !4908)
!4908 = !{!4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4918, !4919, !4920, !4924, !4928, !4929, !4930, !4931, !4932, !4936, !4940, !4941}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4907, file: !4723, line: 586, baseType: !3048, size: 512)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4907, file: !4723, line: 587, baseType: !47, size: 64, offset: 512)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4907, file: !4723, line: 593, baseType: !43, size: 64, offset: 576)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4907, file: !4723, line: 596, baseType: !7, size: 32, offset: 640)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4907, file: !4723, line: 604, baseType: !7, size: 32, offset: 672)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4907, file: !4723, line: 610, baseType: !4836, size: 64, offset: 704)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4907, file: !4723, line: 611, baseType: !105, size: 128, offset: 768)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4907, file: !4723, line: 612, baseType: !4917, size: 64, offset: 896)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4907, file: !4723, line: 614, baseType: !3221, size: 64, offset: 960)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4907, file: !4723, line: 615, baseType: !3279, size: 64, offset: 1024)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4907, file: !4723, line: 621, baseType: !4921, size: 64, offset: 1088)
!4921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4922, size: 64)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{!478, !4727, !4906}
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4907, file: !4723, line: 625, baseType: !4925, size: 64, offset: 1152)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{!489, !4727, !4906}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4907, file: !4723, line: 628, baseType: !3260, size: 64, offset: 1216)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4907, file: !4723, line: 631, baseType: !3248, size: 64, offset: 1280)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4907, file: !4723, line: 632, baseType: !3256, size: 64, offset: 1344)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4907, file: !4723, line: 633, baseType: !3252, size: 64, offset: 1408)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4907, file: !4723, line: 640, baseType: !4933, size: 64, offset: 1472)
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = !DISubroutineType(types: !4935)
!4935 = !{!30, !4727, !4906, !478}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4907, file: !4723, line: 645, baseType: !4937, size: 64, offset: 1536)
!4937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4938, size: 64)
!4938 = !DISubroutineType(types: !4939)
!4939 = !{!30, !4727, !4906, !489}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4907, file: !4723, line: 654, baseType: !3287, size: 64, offset: 1600)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4907, file: !4723, line: 657, baseType: !3294, size: 64, offset: 1664)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4837, file: !4723, line: 745, baseType: !4906, size: 64, offset: 1856)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4837, file: !4723, line: 754, baseType: !7, size: 32, offset: 1920)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4728, file: !4723, line: 160, baseType: !1710, size: 128, offset: 128)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4728, file: !4723, line: 163, baseType: !105, size: 128, offset: 256)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4728, file: !4723, line: 164, baseType: !105, size: 128, offset: 384)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4728, file: !4723, line: 167, baseType: !105, size: 128, offset: 512)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4728, file: !4723, line: 173, baseType: !30, size: 32, offset: 640)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4728, file: !4723, line: 175, baseType: !7, size: 32, offset: 672)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4728, file: !4723, line: 183, baseType: !478, size: 64, offset: 704)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4728, file: !4723, line: 189, baseType: !57, size: 32, offset: 768)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4728, file: !4723, line: 192, baseType: !1100, size: 256, offset: 832)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4728, file: !4723, line: 193, baseType: !4954, size: 448, offset: 1088)
!4954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1101, line: 120, size: 448, elements: !4955)
!4955 = !{!4956, !4957, !4958}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4954, file: !1101, line: 121, baseType: !1100, size: 256)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4954, file: !1101, line: 122, baseType: !756, size: 128, align: 64, offset: 256)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4954, file: !1101, line: 125, baseType: !2379, size: 64, offset: 384)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4728, file: !4723, line: 199, baseType: !4727, size: 64, offset: 1536)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4722, file: !4723, line: 218, baseType: !426, size: 32, offset: 896)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4722, file: !4723, line: 226, baseType: !4721, size: 64, offset: 960)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4722, file: !4723, line: 229, baseType: !4731, size: 64, offset: 1024)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4722, file: !4723, line: 232, baseType: !30, size: 32, offset: 1088)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4722, file: !4723, line: 241, baseType: !105, size: 128, offset: 1152)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4722, file: !4723, line: 242, baseType: !105, size: 128, offset: 1280)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4722, file: !4723, line: 243, baseType: !105, size: 128, offset: 1408)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4722, file: !4723, line: 246, baseType: !105, size: 128, offset: 1536)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4722, file: !4723, line: 255, baseType: !4783, size: 1792, offset: 1664)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4722, file: !4723, line: 258, baseType: !105, size: 128, offset: 3456)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4722, file: !4723, line: 259, baseType: !105, size: 128, offset: 3584)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4722, file: !4723, line: 265, baseType: !828, size: 128, offset: 3712)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4722, file: !4723, line: 271, baseType: !105, size: 128, offset: 3840)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4722, file: !4723, line: 277, baseType: !105, size: 128, offset: 3968)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4722, file: !4723, line: 278, baseType: !105, size: 128, offset: 4096)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4722, file: !4723, line: 279, baseType: !105, size: 128, offset: 4224)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4722, file: !4723, line: 288, baseType: !4731, size: 64, offset: 4352)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4722, file: !4723, line: 289, baseType: !4731, size: 64, offset: 4416)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4722, file: !4723, line: 290, baseType: !4721, size: 64, offset: 4480)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4722, file: !4723, line: 293, baseType: !967, size: 8, offset: 4544)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4722, file: !4723, line: 296, baseType: !756, size: 128, align: 64, offset: 4608)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !410, file: !411, line: 1110, baseType: !4982, size: 64, offset: 15360)
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4984, line: 93, size: 8768, elements: !4985)
!4984 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4985 = !{!4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5034, !5043, !5044, !5046, !5047, !5048, !5051, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5089, !5090, !5097, !5107, !5169, !5170, !5173, !5174, !5175, !5176, !5177, !5178}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4983, file: !4984, line: 94, baseType: !426, size: 32)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4983, file: !4984, line: 95, baseType: !57, size: 32, offset: 32)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4983, file: !4984, line: 96, baseType: !30, size: 32, offset: 64)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4983, file: !4984, line: 97, baseType: !30, size: 32, offset: 96)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4983, file: !4984, line: 98, baseType: !105, size: 128, offset: 128)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4983, file: !4984, line: 100, baseType: !62, size: 192, offset: 256)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4983, file: !4984, line: 103, baseType: !409, size: 64, offset: 448)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4983, file: !4984, line: 106, baseType: !4994, size: 192, offset: 512)
!4994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4995, line: 32, size: 192, elements: !4996)
!4995 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4996 = !{!4997, !4998}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4994, file: !4995, line: 33, baseType: !105, size: 128)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4994, file: !4995, line: 34, baseType: !4999, size: 64, offset: 128)
!4999 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !5000, line: 25, baseType: !5001)
!5000 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!5001 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5000, line: 23, size: 64, elements: !5002)
!5002 = !{!5003}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !5001, file: !5000, line: 24, baseType: !387, size: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4983, file: !4984, line: 109, baseType: !824, size: 64, offset: 704)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4983, file: !4984, line: 112, baseType: !30, size: 32, offset: 768)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4983, file: !4984, line: 114, baseType: !30, size: 32, offset: 800)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4983, file: !4984, line: 115, baseType: !409, size: 64, offset: 832)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4983, file: !4984, line: 118, baseType: !30, size: 32, offset: 896)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4983, file: !4984, line: 119, baseType: !7, size: 32, offset: 928)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4983, file: !4984, line: 121, baseType: !5011, size: 64, offset: 960)
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4984, line: 80, size: 448, elements: !5013)
!5013 = !{!5014, !5015, !5021}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !5012, file: !4984, line: 81, baseType: !57, size: 32)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !5012, file: !4984, line: 82, baseType: !5016, size: 128, offset: 64)
!5016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4984, line: 75, size: 128, elements: !5017)
!5017 = !{!5018, !5019}
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5016, file: !4984, line: 76, baseType: !409, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5016, file: !4984, line: 77, baseType: !5020, size: 64, offset: 64)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5012, file: !4984, line: 83, baseType: !1139, size: 256, offset: 192)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4983, file: !4984, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4983, file: !4984, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4983, file: !4984, line: 138, baseType: !7, size: 32, offset: 1056)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4983, file: !4984, line: 139, baseType: !105, size: 128, offset: 1088)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4983, file: !4984, line: 142, baseType: !545, size: 512, offset: 1216)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4983, file: !4984, line: 143, baseType: !553, size: 64, offset: 1728)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4983, file: !4984, line: 150, baseType: !5029, size: 256, offset: 1792)
!5029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5030, size: 256, elements: !3454)
!5030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4984, line: 38, size: 128, elements: !5031)
!5031 = !{!5032, !5033}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !5030, file: !4984, line: 39, baseType: !478, size: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !5030, file: !4984, line: 40, baseType: !478, size: 64, offset: 64)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4983, file: !4984, line: 156, baseType: !5035, size: 192, offset: 2048)
!5035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4984, line: 66, size: 192, elements: !5036)
!5036 = !{!5037}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !5035, file: !4984, line: 67, baseType: !5038, size: 192)
!5038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4984, line: 47, size: 192, elements: !5039)
!5039 = !{!5040, !5041, !5042}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !5038, file: !4984, line: 48, baseType: !771, size: 64)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !5038, file: !4984, line: 49, baseType: !771, size: 64, offset: 64)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !5038, file: !4984, line: 50, baseType: !771, size: 64, offset: 128)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4983, file: !4984, line: 160, baseType: !4642, size: 640, offset: 2240)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4983, file: !4984, line: 163, baseType: !5045, size: 256, offset: 2880)
!5045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 256, elements: !833)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4983, file: !4984, line: 169, baseType: !816, size: 64, offset: 3136)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4983, file: !4984, line: 172, baseType: !30, size: 32, offset: 3200)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4983, file: !4984, line: 174, baseType: !5049, size: 64, offset: 3264)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4984, line: 174, flags: DIFlagFwdDecl)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4983, file: !4984, line: 185, baseType: !5052, size: 64, offset: 3328)
!5052 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !597, line: 860, baseType: !5053)
!5053 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !597, line: 853, size: 64, elements: !5054)
!5054 = !{!5055, !5056}
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !5053, file: !597, line: 858, baseType: !1240, size: 32)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5053, file: !597, line: 859, baseType: !67, size: 32, offset: 32)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4983, file: !4984, line: 186, baseType: !478, size: 64, offset: 3392)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4983, file: !4984, line: 186, baseType: !478, size: 64, offset: 3456)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4983, file: !4984, line: 186, baseType: !478, size: 64, offset: 3520)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4983, file: !4984, line: 186, baseType: !478, size: 64, offset: 3584)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4983, file: !4984, line: 187, baseType: !478, size: 64, offset: 3648)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4983, file: !4984, line: 188, baseType: !478, size: 64, offset: 3712)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4983, file: !4984, line: 189, baseType: !4630, size: 192, offset: 3776)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4983, file: !4984, line: 190, baseType: !47, size: 64, offset: 3968)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4983, file: !4984, line: 190, baseType: !47, size: 64, offset: 4032)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4983, file: !4984, line: 190, baseType: !47, size: 64, offset: 4096)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4983, file: !4984, line: 190, baseType: !47, size: 64, offset: 4160)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4983, file: !4984, line: 191, baseType: !47, size: 64, offset: 4224)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4983, file: !4984, line: 191, baseType: !47, size: 64, offset: 4288)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4983, file: !4984, line: 191, baseType: !47, size: 64, offset: 4352)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4983, file: !4984, line: 191, baseType: !47, size: 64, offset: 4416)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4983, file: !4984, line: 192, baseType: !47, size: 64, offset: 4480)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4983, file: !4984, line: 192, baseType: !47, size: 64, offset: 4544)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4983, file: !4984, line: 192, baseType: !47, size: 64, offset: 4608)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4983, file: !4984, line: 192, baseType: !47, size: 64, offset: 4672)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4983, file: !4984, line: 193, baseType: !47, size: 64, offset: 4736)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4983, file: !4984, line: 193, baseType: !47, size: 64, offset: 4800)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4983, file: !4984, line: 194, baseType: !5079, size: 448, offset: 4864)
!5079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !5080, line: 12, size: 448, elements: !5081)
!5080 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!5081 = !{!5082, !5083, !5084, !5085, !5086, !5087, !5088}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !5079, file: !5080, line: 15, baseType: !478, size: 64)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !5079, file: !5080, line: 17, baseType: !478, size: 64, offset: 64)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !5079, file: !5080, line: 19, baseType: !478, size: 64, offset: 128)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !5079, file: !5080, line: 21, baseType: !478, size: 64, offset: 192)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5079, file: !5080, line: 29, baseType: !478, size: 64, offset: 256)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5079, file: !5080, line: 35, baseType: !478, size: 64, offset: 320)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5079, file: !5080, line: 44, baseType: !478, size: 64, offset: 384)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4983, file: !4984, line: 202, baseType: !480, size: 64, offset: 5312)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4983, file: !4984, line: 213, baseType: !5091, size: 2048, offset: 5376)
!5091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5092, size: 2048, elements: !4041)
!5092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !5093, line: 43, size: 128, elements: !5094)
!5093 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!5094 = !{!5095, !5096}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !5092, file: !5093, line: 44, baseType: !46, size: 64)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !5092, file: !5093, line: 45, baseType: !46, size: 64, offset: 64)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4983, file: !4984, line: 216, baseType: !5098, size: 448, offset: 7424)
!5098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4984, line: 30, size: 448, elements: !5099)
!5099 = !{!5100, !5101, !5102, !5103, !5104, !5105, !5106}
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5098, file: !4984, line: 31, baseType: !30, size: 32)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5098, file: !4984, line: 32, baseType: !1198, size: 64, offset: 64)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !5098, file: !4984, line: 33, baseType: !47, size: 64, offset: 128)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5098, file: !4984, line: 34, baseType: !478, size: 64, offset: 192)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5098, file: !4984, line: 34, baseType: !478, size: 64, offset: 256)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5098, file: !4984, line: 35, baseType: !47, size: 64, offset: 320)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5098, file: !4984, line: 35, baseType: !47, size: 64, offset: 384)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4983, file: !4984, line: 219, baseType: !5108, size: 64, offset: 7872)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !5110, line: 41, size: 3456, elements: !5111)
!5110 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!5111 = !{!5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5109, file: !5110, line: 47, baseType: !102, size: 16)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !5109, file: !5110, line: 48, baseType: !421, size: 32, offset: 32)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !5109, file: !5110, line: 54, baseType: !93, size: 8, offset: 64)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !5109, file: !5110, line: 55, baseType: !93, size: 8, offset: 72)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !5109, file: !5110, line: 73, baseType: !479, size: 64, align: 64, offset: 128)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !5109, file: !5110, line: 74, baseType: !479, size: 64, offset: 192)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !5109, file: !5110, line: 81, baseType: !479, size: 64, offset: 256)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !5109, file: !5110, line: 82, baseType: !479, size: 64, offset: 320)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !5109, file: !5110, line: 85, baseType: !479, size: 64, offset: 384)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !5109, file: !5110, line: 86, baseType: !479, size: 64, offset: 448)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !5109, file: !5110, line: 94, baseType: !479, size: 64, offset: 512)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !5109, file: !5110, line: 102, baseType: !479, size: 64, offset: 576)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !5109, file: !5110, line: 107, baseType: !2279, size: 256, offset: 640)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !5109, file: !5110, line: 108, baseType: !93, size: 8, align: 64, offset: 896)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !5109, file: !5110, line: 110, baseType: !5127, size: 24, offset: 904)
!5127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 24, elements: !812)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !5109, file: !5110, line: 111, baseType: !421, size: 32, align: 64, offset: 960)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !5109, file: !5110, line: 113, baseType: !421, size: 32, offset: 992)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !5109, file: !5110, line: 114, baseType: !421, size: 32, offset: 1024)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !5109, file: !5110, line: 115, baseType: !421, size: 32, offset: 1056)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !5109, file: !5110, line: 117, baseType: !421, size: 32, offset: 1088)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !5109, file: !5110, line: 118, baseType: !479, size: 64, align: 64, offset: 1152)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !5109, file: !5110, line: 120, baseType: !479, size: 64, offset: 1216)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !5109, file: !5110, line: 121, baseType: !479, size: 64, offset: 1280)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !5109, file: !5110, line: 122, baseType: !479, size: 64, offset: 1344)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !5109, file: !5110, line: 123, baseType: !479, size: 64, offset: 1408)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !5109, file: !5110, line: 133, baseType: !479, size: 64, offset: 1472)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !5109, file: !5110, line: 137, baseType: !479, size: 64, offset: 1536)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !5109, file: !5110, line: 142, baseType: !479, size: 64, offset: 1600)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !5109, file: !5110, line: 143, baseType: !479, size: 64, offset: 1664)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !5109, file: !5110, line: 146, baseType: !479, size: 64, offset: 1728)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !5109, file: !5110, line: 147, baseType: !479, size: 64, offset: 1792)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !5109, file: !5110, line: 148, baseType: !479, size: 64, offset: 1856)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !5109, file: !5110, line: 149, baseType: !479, size: 64, offset: 1920)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !5109, file: !5110, line: 154, baseType: !479, size: 64, offset: 1984)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !5109, file: !5110, line: 155, baseType: !479, size: 64, offset: 2048)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !5109, file: !5110, line: 156, baseType: !479, size: 64, offset: 2112)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !5109, file: !5110, line: 158, baseType: !479, size: 64, offset: 2176)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !5109, file: !5110, line: 159, baseType: !479, size: 64, offset: 2240)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !5109, file: !5110, line: 162, baseType: !479, size: 64, offset: 2304)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !5109, file: !5110, line: 163, baseType: !479, size: 64, offset: 2368)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !5109, file: !5110, line: 164, baseType: !479, size: 64, offset: 2432)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !5109, file: !5110, line: 167, baseType: !479, size: 64, offset: 2496)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !5109, file: !5110, line: 168, baseType: !479, size: 64, offset: 2560)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !5109, file: !5110, line: 171, baseType: !479, size: 64, offset: 2624)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !5109, file: !5110, line: 172, baseType: !479, size: 64, offset: 2688)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !5109, file: !5110, line: 175, baseType: !479, size: 64, offset: 2752)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !5109, file: !5110, line: 178, baseType: !479, size: 64, offset: 2816)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !5109, file: !5110, line: 179, baseType: !479, size: 64, offset: 2880)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !5109, file: !5110, line: 182, baseType: !421, size: 32, offset: 2944)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !5109, file: !5110, line: 186, baseType: !479, size: 64, align: 64, offset: 3008)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !5109, file: !5110, line: 194, baseType: !479, size: 64, offset: 3072)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !5109, file: !5110, line: 195, baseType: !479, size: 64, offset: 3136)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !5109, file: !5110, line: 199, baseType: !479, size: 64, offset: 3200)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !5109, file: !5110, line: 200, baseType: !479, size: 64, offset: 3264)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !5109, file: !5110, line: 203, baseType: !479, size: 64, offset: 3328)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !5109, file: !5110, line: 204, baseType: !479, size: 64, offset: 3392)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4983, file: !4984, line: 222, baseType: !7, size: 32, offset: 7936)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4983, file: !4984, line: 223, baseType: !5171, size: 64, offset: 8000)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4984, line: 223, flags: DIFlagFwdDecl)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4983, file: !4984, line: 230, baseType: !967, size: 8, offset: 8064)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4983, file: !4984, line: 231, baseType: !398, size: 16, offset: 8080)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4983, file: !4984, line: 232, baseType: !398, size: 16, offset: 8096)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4983, file: !4984, line: 234, baseType: !720, size: 64, offset: 8128)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4983, file: !4984, line: 237, baseType: !776, size: 256, offset: 8192)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4983, file: !4984, line: 243, baseType: !909, size: 320, offset: 8448)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !410, file: !411, line: 1111, baseType: !5180, size: 64, offset: 15424)
!5180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5181, size: 64)
!5181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4984, line: 20, size: 16640, elements: !5182)
!5182 = !{!5183, !5184, !5185, !5186}
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !5181, file: !4984, line: 21, baseType: !67, size: 32)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5181, file: !4984, line: 22, baseType: !426, size: 32, offset: 32)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !5181, file: !4984, line: 23, baseType: !62, size: 192, offset: 64)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5181, file: !4984, line: 24, baseType: !5187, size: 16384, offset: 256)
!5187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5188, size: 16384, elements: !1566)
!5188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4995, line: 51, size: 256, elements: !5189)
!5189 = !{!5190}
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !5188, file: !4995, line: 52, baseType: !5191, size: 256)
!5191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4995, line: 37, size: 256, elements: !5192)
!5192 = !{!5193, !5200, !5201, !5205}
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !5191, file: !4995, line: 39, baseType: !5194, size: 64)
!5194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !5195, line: 83, baseType: !5196)
!5195 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !5195, line: 82, baseType: !5198)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{null, !30}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !5191, file: !4995, line: 40, baseType: !47, size: 64, offset: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !5191, file: !4995, line: 46, baseType: !5202, size: 64, offset: 128)
!5202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !5195, line: 86, baseType: !5203)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !5195, line: 85, baseType: !3653)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !5191, file: !4995, line: 48, baseType: !4999, size: 64, offset: 192)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !410, file: !411, line: 1112, baseType: !4999, size: 64, offset: 15488)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !410, file: !411, line: 1113, baseType: !4999, size: 64, offset: 15552)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !410, file: !411, line: 1115, baseType: !4999, size: 64, offset: 15616)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !410, file: !411, line: 1116, baseType: !4994, size: 192, offset: 15680)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !410, file: !411, line: 1117, baseType: !47, size: 64, offset: 15872)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !410, file: !411, line: 1118, baseType: !43, size: 64, offset: 15936)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !410, file: !411, line: 1119, baseType: !7, size: 32, offset: 16000)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !410, file: !411, line: 1121, baseType: !759, size: 64, offset: 16064)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !410, file: !411, line: 1125, baseType: !5215, size: 64, offset: 16128)
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5216 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !411, line: 43, flags: DIFlagFwdDecl)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !410, file: !411, line: 1127, baseType: !850, size: 32, offset: 16192)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !410, file: !411, line: 1128, baseType: !7, size: 32, offset: 16224)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !410, file: !411, line: 1130, baseType: !5220, size: 128, offset: 16256)
!5220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !5221, line: 37, size: 128, elements: !5222)
!5221 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!5222 = !{!5223, !5224, !5225}
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5220, file: !5221, line: 38, baseType: !30, size: 32)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !5220, file: !5221, line: 39, baseType: !57, size: 32, offset: 32)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5220, file: !5221, line: 40, baseType: !5226, size: 64, offset: 64)
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !5221, line: 24, flags: DIFlagFwdDecl)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !410, file: !411, line: 1131, baseType: !5229, size: 256, offset: 16384)
!5229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !5230, line: 12, size: 256, elements: !5231)
!5230 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!5231 = !{!5232, !5233, !5234, !5235}
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !5229, file: !5230, line: 13, baseType: !978, size: 64)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5229, file: !5230, line: 14, baseType: !47, size: 64, offset: 64)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5229, file: !5230, line: 15, baseType: !47, size: 64, offset: 128)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !5229, file: !5230, line: 16, baseType: !967, size: 8, offset: 192)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !410, file: !411, line: 1134, baseType: !478, size: 64, offset: 16640)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !410, file: !411, line: 1135, baseType: !478, size: 64, offset: 16704)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !410, file: !411, line: 1138, baseType: !67, size: 32, offset: 16768)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !410, file: !411, line: 1141, baseType: !570, size: 32, offset: 16800)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !410, file: !411, line: 1143, baseType: !5241, size: 64, offset: 16832)
!5241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !411, line: 735, size: 64, elements: !5242)
!5242 = !{!5243}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5241, file: !411, line: 736, baseType: !5244, size: 64)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5241, size: 64)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !410, file: !411, line: 1147, baseType: !610, size: 128, offset: 16896)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !410, file: !411, line: 1149, baseType: !409, size: 64, offset: 17024)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !410, file: !411, line: 1151, baseType: !5248, size: 64, offset: 17088)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5249, size: 64)
!5249 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !411, line: 1151, flags: DIFlagFwdDecl)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !410, file: !411, line: 1188, baseType: !28, size: 64, offset: 17152)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !410, file: !411, line: 1191, baseType: !5252, size: 64, offset: 17216)
!5252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !410, file: !411, line: 1194, baseType: !5254, size: 64, offset: 17280)
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5255, size: 64)
!5255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !159, line: 976, size: 320, elements: !5256)
!5256 = !{!5257, !5258, !5259, !5260, !5261, !5262, !5263}
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !5255, file: !159, line: 977, baseType: !2392, size: 64)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !5255, file: !159, line: 980, baseType: !2392, size: 64, offset: 64)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !5255, file: !159, line: 981, baseType: !34, size: 16, offset: 128)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !5255, file: !159, line: 983, baseType: !34, size: 16, offset: 144)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !5255, file: !159, line: 985, baseType: !967, size: 8, offset: 160)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !5255, file: !159, line: 986, baseType: !967, size: 8, offset: 168)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !5255, file: !159, line: 988, baseType: !105, size: 128, offset: 192)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !410, file: !411, line: 1197, baseType: !5265, size: 64, offset: 17344)
!5265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5266, size: 64)
!5266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2226, line: 155, size: 64, elements: !5267)
!5267 = !{!5268}
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !5266, file: !2226, line: 157, baseType: !47, size: 64)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !410, file: !411, line: 1199, baseType: !5270, size: 64, offset: 17408)
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5271, size: 64)
!5271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !5272, line: 99, size: 128, elements: !5273)
!5272 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!5273 = !{!5274, !5275, !5276}
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5271, file: !5272, line: 100, baseType: !769, size: 64)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !5271, file: !5272, line: 101, baseType: !57, size: 32, offset: 64)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !5271, file: !5272, line: 103, baseType: !34, size: 16, offset: 96)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !410, file: !411, line: 1202, baseType: !5278, size: 64, offset: 17472)
!5278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5279, size: 64)
!5279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !5280, line: 588, size: 128, elements: !5281)
!5280 = !DIFile(filename: "mm/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "59e6069cd469a2e9f5955693d212ff63")
!5281 = !{!5282, !5442}
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "cc", scope: !5279, file: !5280, line: 589, baseType: !5283, size: 64)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compact_control", file: !5280, line: 544, size: 1024, elements: !5285)
!5285 = !{!5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5422, !5423, !5424, !5425, !5426, !5428, !5429, !5430, !5431, !5432, !5433, !5434, !5435, !5436, !5437, !5438, !5439, !5440, !5441}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "freepages", scope: !5284, file: !5280, line: 545, baseType: !105, size: 128)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "migratepages", scope: !5284, file: !5280, line: 546, baseType: !105, size: 128, offset: 128)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freepages", scope: !5284, file: !5280, line: 547, baseType: !7, size: 32, offset: 256)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migratepages", scope: !5284, file: !5280, line: 548, baseType: !7, size: 32, offset: 288)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "free_pfn", scope: !5284, file: !5280, line: 549, baseType: !47, size: 64, offset: 320)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_pfn", scope: !5284, file: !5280, line: 556, baseType: !47, size: 64, offset: 384)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "fast_start_pfn", scope: !5284, file: !5280, line: 557, baseType: !47, size: 64, offset: 448)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !5284, file: !5280, line: 558, baseType: !5294, size: 64, offset: 512)
!5294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5295, size: 64)
!5295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zone", file: !269, line: 815, size: 9728, align: 512, elements: !5296)
!5296 = !{!5297, !5298, !5299, !5300, !5301, !5302, !5377, !5378, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5394, !5395, !5396, !5405, !5406, !5407, !5408, !5409, !5410, !5411, !5412, !5413, !5414, !5415, !5416, !5417, !5418, !5419, !5420}
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "_watermark", scope: !5295, file: !269, line: 819, baseType: !3556, size: 256)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "watermark_boost", scope: !5295, file: !269, line: 820, baseType: !47, size: 64, offset: 256)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_highatomic", scope: !5295, file: !269, line: 822, baseType: !47, size: 64, offset: 320)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "lowmem_reserve", scope: !5295, file: !269, line: 833, baseType: !1200, size: 256, offset: 384)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5295, file: !269, line: 836, baseType: !30, size: 32, offset: 640)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "zone_pgdat", scope: !5295, file: !269, line: 838, baseType: !5303, size: 64, offset: 704)
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5304, size: 64)
!5304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pglist_data", file: !269, line: 1266, size: 112128, elements: !5305)
!5305 = !{!5306, !5308, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342, !5343, !5349, !5361, !5362, !5363, !5372, !5374}
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "node_zones", scope: !5304, file: !269, line: 1272, baseType: !5307, size: 38912, align: 512)
!5307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5295, size: 38912, align: 512, elements: !833)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "node_zonelists", scope: !5304, file: !269, line: 1279, baseType: !5309, size: 65792, offset: 38912)
!5309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5310, size: 65792, elements: !3454)
!5310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zonelist", file: !269, line: 1214, size: 32896, elements: !5311)
!5311 = !{!5312}
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "_zonerefs", scope: !5310, file: !269, line: 1215, baseType: !5313, size: 32896)
!5313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5314, size: 32896, elements: !5318)
!5314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zoneref", file: !269, line: 1195, size: 128, elements: !5315)
!5315 = !{!5316, !5317}
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !5314, file: !269, line: 1196, baseType: !5294, size: 64)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "zone_idx", scope: !5314, file: !269, line: 1197, baseType: !30, size: 32, offset: 64)
!5318 = !{!5319}
!5319 = !DISubrange(count: 257)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_zones", scope: !5304, file: !269, line: 1281, baseType: !30, size: 32, offset: 104704)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "node_start_pfn", scope: !5304, file: !269, line: 1303, baseType: !47, size: 64, offset: 104768)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "node_present_pages", scope: !5304, file: !269, line: 1304, baseType: !47, size: 64, offset: 104832)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "node_spanned_pages", scope: !5304, file: !269, line: 1305, baseType: !47, size: 64, offset: 104896)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5304, file: !269, line: 1307, baseType: !30, size: 32, offset: 104960)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_wait", scope: !5304, file: !269, line: 1308, baseType: !62, size: 192, offset: 105024)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc_wait", scope: !5304, file: !269, line: 1309, baseType: !62, size: 192, offset: 105216)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_wait", scope: !5304, file: !269, line: 1312, baseType: !5328, size: 768, offset: 105408)
!5328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 768, elements: !833)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_writeback_throttled", scope: !5304, file: !269, line: 1314, baseType: !57, size: 32, offset: 106176)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reclaim_start", scope: !5304, file: !269, line: 1315, baseType: !47, size: 64, offset: 106240)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd", scope: !5304, file: !269, line: 1320, baseType: !409, size: 64, offset: 106304)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_order", scope: !5304, file: !269, line: 1321, baseType: !30, size: 32, offset: 106368)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_highest_zoneidx", scope: !5304, file: !269, line: 1322, baseType: !268, size: 32, offset: 106400)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_failures", scope: !5304, file: !269, line: 1324, baseType: !30, size: 32, offset: 106432)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_max_order", scope: !5304, file: !269, line: 1327, baseType: !30, size: 32, offset: 106464)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_highest_zoneidx", scope: !5304, file: !269, line: 1328, baseType: !268, size: 32, offset: 106496)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_wait", scope: !5304, file: !269, line: 1329, baseType: !62, size: 192, offset: 106560)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd", scope: !5304, file: !269, line: 1330, baseType: !409, size: 64, offset: 106752)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "proactive_compact_trigger", scope: !5304, file: !269, line: 1331, baseType: !967, size: 8, offset: 106816)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "totalreserve_pages", scope: !5304, file: !269, line: 1337, baseType: !47, size: 64, offset: 106880)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "min_unmapped_pages", scope: !5304, file: !269, line: 1343, baseType: !47, size: 64, offset: 106944)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "min_slab_pages", scope: !5304, file: !269, line: 1344, baseType: !47, size: 64, offset: 107008)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "_pad1_", scope: !5304, file: !269, line: 1348, baseType: !5344, align: 512, offset: 107520)
!5344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cacheline_padding", file: !5345, line: 93, align: 512, elements: !5346)
!5345 = !DIFile(filename: "./include/linux/cache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "599edcbe9a1f0cbc1eddd4ed9f4096ef")
!5346 = !{!5347}
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5344, file: !5345, line: 94, baseType: !5348)
!5348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, elements: !4756)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "__lruvec", scope: !5304, file: !269, line: 1384, baseType: !5350, size: 1088, offset: 107520)
!5350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lruvec", file: !269, line: 620, size: 1088, elements: !5351)
!5351 = !{!5352, !5354, !5355, !5356, !5357, !5358, !5360}
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !5350, file: !269, line: 621, baseType: !5353, size: 640)
!5353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 640, elements: !1069)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "lru_lock", scope: !5350, file: !269, line: 623, baseType: !67, size: 32, offset: 640)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "anon_cost", scope: !5350, file: !269, line: 629, baseType: !47, size: 64, offset: 704)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "file_cost", scope: !5350, file: !269, line: 630, baseType: !47, size: 64, offset: 768)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "nonresident_age", scope: !5350, file: !269, line: 632, baseType: !769, size: 64, offset: 832)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "refaults", scope: !5350, file: !269, line: 634, baseType: !5359, size: 128, offset: 896)
!5359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 128, elements: !3454)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5350, file: !269, line: 636, baseType: !47, size: 64, offset: 1024)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5304, file: !269, line: 1386, baseType: !47, size: 64, offset: 108608)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2_", scope: !5304, file: !269, line: 1395, baseType: !5344, align: 512, offset: 109056)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_nodestats", scope: !5304, file: !269, line: 1398, baseType: !5364, size: 64, offset: 109056)
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5365, size: 64)
!5365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_nodestat", file: !269, line: 713, size: 336, elements: !5366)
!5366 = !{!5367, !5368}
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "stat_threshold", scope: !5365, file: !269, line: 714, baseType: !3395, size: 8)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node_stat_diff", scope: !5365, file: !269, line: 715, baseType: !5369, size: 328, offset: 8)
!5369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3395, size: 328, elements: !5370)
!5370 = !{!5371}
!5371 = !DISubrange(count: 41)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat", scope: !5304, file: !269, line: 1399, baseType: !5373, size: 2624, offset: 109120)
!5373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 2624, elements: !5370)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "memtier", scope: !5304, file: !269, line: 1401, baseType: !5375, size: 64, offset: 111744)
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5376, size: 64)
!5376 = !DICompositeType(tag: DW_TAG_structure_type, name: "memory_tier", file: !269, line: 1401, flags: DIFlagFwdDecl)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_pageset", scope: !5295, file: !269, line: 839, baseType: !390, size: 64, offset: 768)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_zonestats", scope: !5295, file: !269, line: 840, baseType: !5379, size: 64, offset: 832)
!5379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5380, size: 64)
!5380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_zonestat", file: !269, line: 698, size: 512, elements: !5381)
!5381 = !{!5382, !5384, !5385}
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat_diff", scope: !5380, file: !269, line: 700, baseType: !5383, size: 80)
!5383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3395, size: 80, elements: !1192)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "stat_threshold", scope: !5380, file: !269, line: 701, baseType: !3395, size: 8, offset: 80)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "vm_numa_event", scope: !5380, file: !269, line: 709, baseType: !5386, size: 384, offset: 128)
!5386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 384, elements: !954)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "pageset_high", scope: !5295, file: !269, line: 845, baseType: !30, size: 32, offset: 896)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "pageset_batch", scope: !5295, file: !269, line: 846, baseType: !30, size: 32, offset: 928)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "zone_start_pfn", scope: !5295, file: !269, line: 857, baseType: !47, size: 64, offset: 960)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "managed_pages", scope: !5295, file: !269, line: 901, baseType: !769, size: 64, offset: 1024)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "spanned_pages", scope: !5295, file: !269, line: 902, baseType: !47, size: 64, offset: 1088)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "present_pages", scope: !5295, file: !269, line: 903, baseType: !47, size: 64, offset: 1152)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5295, file: !269, line: 911, baseType: !24, size: 64, offset: 1216)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !5295, file: !269, line: 927, baseType: !30, size: 32, offset: 1280)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "_pad1_", scope: !5295, file: !269, line: 930, baseType: !5344, align: 512, offset: 1536)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "free_area", scope: !5295, file: !269, line: 933, baseType: !5397, size: 6336, offset: 1536)
!5397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5398, size: 6336, elements: !5403)
!5398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "free_area", file: !269, line: 113, size: 576, elements: !5399)
!5399 = !{!5400, !5402}
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !5398, file: !269, line: 114, baseType: !5401, size: 512)
!5401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 512, elements: !833)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_free", scope: !5398, file: !269, line: 115, baseType: !47, size: 64, offset: 512)
!5403 = !{!5404}
!5404 = !DISubrange(count: 11)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5295, file: !269, line: 941, baseType: !47, size: 64, offset: 7872)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5295, file: !269, line: 944, baseType: !67, size: 32, offset: 7936)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2_", scope: !5295, file: !269, line: 947, baseType: !5344, align: 512, offset: 8192)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_drift_mark", scope: !5295, file: !269, line: 954, baseType: !47, size: 64, offset: 8192)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "compact_cached_free_pfn", scope: !5295, file: !269, line: 958, baseType: !47, size: 64, offset: 8256)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "compact_cached_migrate_pfn", scope: !5295, file: !269, line: 960, baseType: !5359, size: 128, offset: 8320)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "compact_init_migrate_pfn", scope: !5295, file: !269, line: 961, baseType: !47, size: 64, offset: 8448)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "compact_init_free_pfn", scope: !5295, file: !269, line: 962, baseType: !47, size: 64, offset: 8512)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "compact_considered", scope: !5295, file: !269, line: 972, baseType: !7, size: 32, offset: 8576)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "compact_defer_shift", scope: !5295, file: !269, line: 973, baseType: !7, size: 32, offset: 8608)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "compact_order_failed", scope: !5295, file: !269, line: 974, baseType: !30, size: 32, offset: 8640)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "compact_blockskip_flush", scope: !5295, file: !269, line: 979, baseType: !967, size: 8, offset: 8672)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "contiguous", scope: !5295, file: !269, line: 982, baseType: !967, size: 8, offset: 8680)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "_pad3_", scope: !5295, file: !269, line: 984, baseType: !5344, align: 512, offset: 8704)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat", scope: !5295, file: !269, line: 986, baseType: !1191, size: 640, offset: 8704)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "vm_numa_event", scope: !5295, file: !269, line: 987, baseType: !5421, size: 384, offset: 9344)
!5421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 384, elements: !954)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "total_migrate_scanned", scope: !5284, file: !5280, line: 559, baseType: !47, size: 64, offset: 576)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "total_free_scanned", scope: !5284, file: !5280, line: 560, baseType: !47, size: 64, offset: 640)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "fast_search_fail", scope: !5284, file: !5280, line: 561, baseType: !34, size: 16, offset: 704)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "search_order", scope: !5284, file: !5280, line: 562, baseType: !398, size: 16, offset: 720)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !5284, file: !5280, line: 563, baseType: !5427, size: 32, offset: 736)
!5427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1473)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !5284, file: !5280, line: 564, baseType: !30, size: 32, offset: 768)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "migratetype", scope: !5284, file: !5280, line: 565, baseType: !30, size: 32, offset: 800)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_flags", scope: !5284, file: !5280, line: 566, baseType: !4158, size: 32, offset: 832)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "highest_zoneidx", scope: !5284, file: !5280, line: 567, baseType: !3529, size: 32, offset: 864)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5284, file: !5280, line: 568, baseType: !151, size: 32, offset: 896)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_skip_hint", scope: !5284, file: !5280, line: 569, baseType: !967, size: 8, offset: 928)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "no_set_skip_hint", scope: !5284, file: !5280, line: 570, baseType: !967, size: 8, offset: 936)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_block_suitable", scope: !5284, file: !5280, line: 571, baseType: !967, size: 8, offset: 944)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "direct_compaction", scope: !5284, file: !5280, line: 572, baseType: !967, size: 8, offset: 952)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "proactive_compaction", scope: !5284, file: !5280, line: 573, baseType: !967, size: 8, offset: 960)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "whole_zone", scope: !5284, file: !5280, line: 574, baseType: !967, size: 8, offset: 968)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !5284, file: !5280, line: 575, baseType: !967, size: 8, offset: 976)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pageblock", scope: !5284, file: !5280, line: 576, baseType: !967, size: 8, offset: 984)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_contig", scope: !5284, file: !5280, line: 581, baseType: !967, size: 8, offset: 992)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5279, file: !5280, line: 590, baseType: !1647, size: 64, offset: 64)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !410, file: !411, line: 1205, baseType: !47, size: 64, offset: 17536)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !410, file: !411, line: 1206, baseType: !5445, size: 64, offset: 17600)
!5445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5446, size: 64)
!5446 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4995, line: 14, baseType: !5447)
!5447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4995, line: 12, size: 384, elements: !5448)
!5448 = !{!5449}
!5449 = !DIDerivedType(tag: DW_TAG_member, scope: !5447, file: !4995, line: 13, baseType: !5450, size: 384)
!5450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5447, file: !4995, line: 13, size: 384, elements: !5451)
!5451 = !{!5452, !5453, !5454, !5455}
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !5450, file: !4995, line: 13, baseType: !30, size: 32)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !5450, file: !4995, line: 13, baseType: !30, size: 32, offset: 32)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !5450, file: !4995, line: 13, baseType: !30, size: 32, offset: 64)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !5450, file: !4995, line: 13, baseType: !5456, size: 256, offset: 128)
!5456 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !5457, line: 37, size: 256, elements: !5458)
!5457 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!5458 = !{!5459, !5464, !5477, !5483, !5492, !5519, !5524}
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !5456, file: !5457, line: 42, baseType: !5460, size: 64)
!5460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !5457, line: 39, size: 64, elements: !5461)
!5461 = !{!5462, !5463}
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5460, file: !5457, line: 40, baseType: !4607, size: 32)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5460, file: !5457, line: 41, baseType: !856, size: 32, offset: 32)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !5456, file: !5457, line: 50, baseType: !5465, size: 192)
!5465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !5457, line: 45, size: 192, elements: !5466)
!5466 = !{!5467, !5469, !5470, !5476}
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !5465, file: !5457, line: 46, baseType: !5468, size: 32)
!5468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !45, line: 95, baseType: !30)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !5465, file: !5457, line: 47, baseType: !30, size: 32, offset: 32)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5465, file: !5457, line: 48, baseType: !5471, size: 64, offset: 64)
!5471 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !5457, line: 11, baseType: !5472)
!5472 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !5457, line: 8, size: 64, elements: !5473)
!5473 = !{!5474, !5475}
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !5472, file: !5457, line: 9, baseType: !30, size: 32)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !5472, file: !5457, line: 10, baseType: !28, size: 64)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !5465, file: !5457, line: 49, baseType: !30, size: 32, offset: 128)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !5456, file: !5457, line: 57, baseType: !5478, size: 128)
!5478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !5457, line: 53, size: 128, elements: !5479)
!5479 = !{!5480, !5481, !5482}
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5478, file: !5457, line: 54, baseType: !4607, size: 32)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5478, file: !5457, line: 55, baseType: !856, size: 32, offset: 32)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !5478, file: !5457, line: 56, baseType: !5471, size: 64, offset: 64)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !5456, file: !5457, line: 66, baseType: !5484, size: 256)
!5484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !5457, line: 60, size: 256, elements: !5485)
!5485 = !{!5486, !5487, !5488, !5489, !5491}
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !5484, file: !5457, line: 61, baseType: !4607, size: 32)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !5484, file: !5457, line: 62, baseType: !856, size: 32, offset: 32)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !5484, file: !5457, line: 63, baseType: !30, size: 32, offset: 64)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !5484, file: !5457, line: 64, baseType: !5490, size: 64, offset: 128)
!5490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !45, line: 94, baseType: !1423)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !5484, file: !5457, line: 65, baseType: !5490, size: 64, offset: 192)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !5456, file: !5457, line: 105, baseType: !5493, size: 256)
!5493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !5457, line: 69, size: 256, elements: !5494)
!5494 = !{!5495, !5496}
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !5493, file: !5457, line: 70, baseType: !28, size: 64)
!5496 = !DIDerivedType(tag: DW_TAG_member, scope: !5493, file: !5457, line: 79, baseType: !5497, size: 192, offset: 64)
!5497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5493, file: !5457, line: 79, size: 192, elements: !5498)
!5498 = !{!5499, !5500, !5501, !5508, !5513}
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !5497, file: !5457, line: 81, baseType: !30, size: 32)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !5497, file: !5457, line: 86, baseType: !398, size: 16)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !5497, file: !5457, line: 92, baseType: !5502, size: 192)
!5502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5497, file: !5457, line: 88, size: 192, elements: !5503)
!5503 = !{!5504, !5506, !5507}
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !5502, file: !5457, line: 89, baseType: !5505, size: 64)
!5505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !589)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !5502, file: !5457, line: 90, baseType: !28, size: 64, offset: 64)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !5502, file: !5457, line: 91, baseType: !28, size: 64, offset: 128)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !5497, file: !5457, line: 97, baseType: !5509, size: 96)
!5509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5497, file: !5457, line: 94, size: 96, elements: !5510)
!5510 = !{!5511, !5512}
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !5509, file: !5457, line: 95, baseType: !5505, size: 64)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !5509, file: !5457, line: 96, baseType: !421, size: 32, offset: 64)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !5497, file: !5457, line: 103, baseType: !5514, size: 128)
!5514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5497, file: !5457, line: 99, size: 128, elements: !5515)
!5515 = !{!5516, !5517, !5518}
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !5514, file: !5457, line: 100, baseType: !47, size: 64)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !5514, file: !5457, line: 101, baseType: !421, size: 32, offset: 64)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5514, file: !5457, line: 102, baseType: !421, size: 32, offset: 96)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !5456, file: !5457, line: 111, baseType: !5520, size: 128)
!5520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !5457, line: 108, size: 128, elements: !5521)
!5521 = !{!5522, !5523}
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !5520, file: !5457, line: 109, baseType: !1198, size: 64)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !5520, file: !5457, line: 110, baseType: !30, size: 32, offset: 64)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !5456, file: !5457, line: 118, baseType: !5525, size: 128)
!5525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5456, file: !5457, line: 114, size: 128, elements: !5526)
!5526 = !{!5527, !5528, !5529}
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !5525, file: !5457, line: 115, baseType: !28, size: 64)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !5525, file: !5457, line: 116, baseType: !30, size: 32, offset: 64)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !5525, file: !5457, line: 117, baseType: !7, size: 32, offset: 96)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !410, file: !411, line: 1208, baseType: !5079, size: 448, offset: 17664)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !410, file: !411, line: 1215, baseType: !478, size: 64, offset: 18112)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !410, file: !411, line: 1217, baseType: !478, size: 64, offset: 18176)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !410, file: !411, line: 1219, baseType: !478, size: 64, offset: 18240)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !410, file: !411, line: 1223, baseType: !1866, size: 64, offset: 18304)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !410, file: !411, line: 1225, baseType: !1240, size: 32, offset: 18368)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !410, file: !411, line: 1226, baseType: !30, size: 32, offset: 18400)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !410, file: !411, line: 1227, baseType: !30, size: 32, offset: 18432)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !410, file: !411, line: 1231, baseType: !4721, size: 64, offset: 18496)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !410, file: !411, line: 1233, baseType: !105, size: 128, offset: 18560)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !410, file: !411, line: 1240, baseType: !5541, size: 64, offset: 18688)
!5541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5542, size: 64)
!5542 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !411, line: 62, flags: DIFlagFwdDecl)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !410, file: !411, line: 1242, baseType: !5544, size: 64, offset: 18752)
!5544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5545, size: 64)
!5545 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !411, line: 1242, flags: DIFlagFwdDecl)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !410, file: !411, line: 1244, baseType: !105, size: 128, offset: 18816)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !410, file: !411, line: 1245, baseType: !5548, size: 64, offset: 18944)
!5548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5549, size: 64)
!5549 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !411, line: 51, flags: DIFlagFwdDecl)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !410, file: !411, line: 1246, baseType: !776, size: 256, offset: 19008)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !410, file: !411, line: 1247, baseType: !7, size: 32, offset: 19264)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !410, file: !411, line: 1250, baseType: !5553, size: 64, offset: 19328)
!5553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5554, size: 64)
!5554 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !411, line: 57, flags: DIFlagFwdDecl)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !410, file: !411, line: 1251, baseType: !776, size: 256, offset: 19392)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !410, file: !411, line: 1252, baseType: !105, size: 128, offset: 19648)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !410, file: !411, line: 1259, baseType: !1858, size: 64, offset: 19776)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !410, file: !411, line: 1260, baseType: !398, size: 16, offset: 19840)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !410, file: !411, line: 1261, baseType: !398, size: 16, offset: 19856)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !410, file: !411, line: 1314, baseType: !5561, size: 64, offset: 19904)
!5561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5562, size: 64)
!5562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5563, line: 62, size: 256, align: 256, elements: !5564)
!5563 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5564 = !{!5565, !5566, !5567, !5568, !5569, !5570, !5571}
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5562, file: !5563, line: 75, baseType: !421, size: 32)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5562, file: !5563, line: 90, baseType: !421, size: 32, offset: 32)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5562, file: !5563, line: 112, baseType: !479, size: 64, offset: 64)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5562, file: !5563, line: 132, baseType: !421, size: 32, offset: 128)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5562, file: !5563, line: 140, baseType: !421, size: 32, offset: 160)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5562, file: !5563, line: 149, baseType: !421, size: 32, offset: 192)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5562, file: !5563, line: 154, baseType: !5572, offset: 224)
!5572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, elements: !846)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !410, file: !411, line: 1315, baseType: !420, size: 32, offset: 19968)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !410, file: !411, line: 1316, baseType: !420, size: 32, offset: 20000)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !410, file: !411, line: 1321, baseType: !47, size: 64, offset: 20032)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !410, file: !411, line: 1325, baseType: !30, size: 32, offset: 20096)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !410, file: !411, line: 1326, baseType: !30, size: 32, offset: 20128)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !410, file: !411, line: 1327, baseType: !30, size: 32, offset: 20160)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !410, file: !411, line: 1328, baseType: !30, size: 32, offset: 20192)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !410, file: !411, line: 1329, baseType: !756, size: 128, align: 64, offset: 20224)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !410, file: !411, line: 1332, baseType: !5582, size: 128, offset: 20352)
!5582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5583, line: 51, size: 128, elements: !5584)
!5583 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5584 = !{!5585, !5590, !5591}
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5582, file: !5583, line: 60, baseType: !5586, size: 64)
!5586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5587, line: 7, size: 64, elements: !5588)
!5587 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5588 = !{!5589}
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5586, file: !5587, line: 12, baseType: !383, size: 64)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5582, file: !5583, line: 63, baseType: !967, size: 8, offset: 64)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5582, file: !5583, line: 70, baseType: !967, size: 8, offset: 72)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !410, file: !411, line: 1335, baseType: !4277, size: 64, offset: 20480)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !410, file: !411, line: 1337, baseType: !5594, size: 128, offset: 20544)
!5594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5583, line: 39, size: 128, elements: !5595)
!5595 = !{!5596, !5597, !5598}
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5594, file: !5583, line: 40, baseType: !1647, size: 64)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5594, file: !5583, line: 42, baseType: !421, size: 32, offset: 64)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5594, file: !5583, line: 43, baseType: !421, size: 32, offset: 96)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !410, file: !411, line: 1340, baseType: !5600, size: 64, offset: 20672)
!5600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5601, size: 64)
!5601 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !411, line: 69, flags: DIFlagFwdDecl)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !410, file: !411, line: 1351, baseType: !30, size: 32, offset: 20736)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !410, file: !411, line: 1352, baseType: !30, size: 32, offset: 20768)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !410, file: !411, line: 1354, baseType: !47, size: 64, offset: 20800)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !410, file: !411, line: 1364, baseType: !478, size: 64, offset: 20864)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !410, file: !411, line: 1365, baseType: !478, size: 64, offset: 20928)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !410, file: !411, line: 1412, baseType: !47, size: 64, offset: 20992)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !410, file: !411, line: 1453, baseType: !2272, size: 64, offset: 21056)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !410, file: !411, line: 1457, baseType: !5610, size: 64, offset: 21120)
!5610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5611, size: 64)
!5611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !262, line: 61, size: 576, elements: !5612)
!5612 = !{!5613, !5614, !5633, !5636, !5637, !5670, !5680}
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5611, file: !262, line: 62, baseType: !261, size: 32)
!5614 = !DIDerivedType(tag: DW_TAG_member, scope: !5611, file: !262, line: 64, baseType: !5615, size: 192, offset: 64)
!5615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5611, file: !262, line: 64, size: 192, elements: !5616)
!5616 = !{!5617, !5628}
!5617 = !DIDerivedType(tag: DW_TAG_member, scope: !5615, file: !262, line: 65, baseType: !5618, size: 192)
!5618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5615, file: !262, line: 65, size: 192, elements: !5619)
!5619 = !{!5620, !5627}
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5618, file: !262, line: 66, baseType: !5621, size: 128)
!5621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5622, line: 50, size: 128, elements: !5623)
!5622 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5623 = !{!5624, !5625, !5626}
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5621, file: !5622, line: 52, baseType: !47, size: 64)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5621, file: !5622, line: 54, baseType: !7, size: 32, offset: 64)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5621, file: !5622, line: 55, baseType: !7, size: 32, offset: 96)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5618, file: !262, line: 67, baseType: !47, size: 64, offset: 128)
!5628 = !DIDerivedType(tag: DW_TAG_member, scope: !5615, file: !262, line: 70, baseType: !5629, size: 192)
!5629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5615, file: !262, line: 70, size: 192, elements: !5630)
!5630 = !{!5631, !5632}
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5629, file: !262, line: 71, baseType: !756, size: 128, align: 64)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5629, file: !262, line: 72, baseType: !47, size: 64, offset: 128)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5611, file: !262, line: 76, baseType: !5634, size: 64, offset: 256)
!5634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5635, size: 64)
!5635 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !262, line: 76, flags: DIFlagFwdDecl)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5611, file: !262, line: 77, baseType: !47, size: 64, offset: 320)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5611, file: !262, line: 79, baseType: !5638, size: 64, offset: 384)
!5638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5639, size: 64)
!5639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5622, line: 25, size: 256, elements: !5640)
!5640 = !{!5641, !5647, !5651}
!5641 = !DIDerivedType(tag: DW_TAG_member, scope: !5639, file: !5622, line: 26, baseType: !5642, size: 128)
!5642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5639, file: !5622, line: 26, size: 128, elements: !5643)
!5643 = !{!5644, !5646}
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5642, file: !5622, line: 27, baseType: !5645, size: 128)
!5645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 128, elements: !4041)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5642, file: !5622, line: 28, baseType: !5645, size: 128)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5639, file: !5622, line: 31, baseType: !5648, size: 64, offset: 128)
!5648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5649, size: 64)
!5649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5650)
!5650 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5622, line: 23, flags: DIFlagFwdDecl)
!5651 = !DIDerivedType(tag: DW_TAG_member, scope: !5639, file: !5622, line: 33, baseType: !5652, size: 64, offset: 192)
!5652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5639, file: !5622, line: 33, size: 64, elements: !5653)
!5653 = !{!5654, !5660, !5665}
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5652, file: !5622, line: 38, baseType: !5655, size: 64)
!5655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5652, file: !5622, line: 34, size: 64, elements: !5656)
!5656 = !{!5657, !5658, !5659}
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5655, file: !5622, line: 35, baseType: !901, size: 32)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5655, file: !5622, line: 36, baseType: !91, size: 8, offset: 32)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5655, file: !5622, line: 37, baseType: !91, size: 8, offset: 40)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5652, file: !5622, line: 42, baseType: !5661, size: 16)
!5661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5652, file: !5622, line: 39, size: 16, elements: !5662)
!5662 = !{!5663, !5664}
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5661, file: !5622, line: 40, baseType: !91, size: 8)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5661, file: !5622, line: 41, baseType: !91, size: 8, offset: 8)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5652, file: !5622, line: 46, baseType: !5666, size: 16)
!5666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5652, file: !5622, line: 43, size: 16, elements: !5667)
!5667 = !{!5668, !5669}
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5666, file: !5622, line: 44, baseType: !91, size: 8)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5666, file: !5622, line: 45, baseType: !91, size: 8, offset: 8)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5611, file: !262, line: 81, baseType: !5671, size: 64, offset: 448)
!5671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5672, size: 64)
!5672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !262, line: 85, size: 384, elements: !5673)
!5673 = !{!5674, !5675, !5676, !5677, !5678, !5679}
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5672, file: !262, line: 86, baseType: !5634, size: 64)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5672, file: !262, line: 87, baseType: !47, size: 64, offset: 64)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5672, file: !262, line: 88, baseType: !47, size: 64, offset: 128)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5672, file: !262, line: 89, baseType: !47, size: 64, offset: 192)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5672, file: !262, line: 90, baseType: !967, size: 8, offset: 256)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5672, file: !262, line: 92, baseType: !5671, size: 64, offset: 320)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5611, file: !262, line: 82, baseType: !7, size: 32, offset: 512)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !410, file: !411, line: 1463, baseType: !5682, offset: 21184)
!5682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !411, line: 739, elements: !741)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !410, file: !411, line: 1470, baseType: !756, size: 128, align: 64, offset: 21184)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !410, file: !411, line: 1471, baseType: !426, size: 32, offset: 21312)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !410, file: !411, line: 1472, baseType: !30, size: 32, offset: 21344)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !410, file: !411, line: 1474, baseType: !409, size: 64, offset: 21376)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !410, file: !411, line: 1475, baseType: !2687, size: 320, offset: 21440)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !410, file: !411, line: 1478, baseType: !5689, size: 64, offset: 21760)
!5689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5690, size: 64)
!5690 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !411, line: 1478, flags: DIFlagFwdDecl)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !410, file: !411, line: 1482, baseType: !426, size: 32, offset: 21824)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !410, file: !411, line: 1489, baseType: !28, size: 64, offset: 21888)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !410, file: !411, line: 1504, baseType: !28, size: 64, offset: 21952)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !410, file: !411, line: 1505, baseType: !479, size: 64, offset: 22016)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !410, file: !411, line: 1506, baseType: !478, size: 64, offset: 22080)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !410, file: !411, line: 1507, baseType: !479, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !410, file: !411, line: 1508, baseType: !479, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !410, file: !411, line: 1509, baseType: !479, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !410, file: !411, line: 1510, baseType: !756, size: 128, align: 64, offset: 22208)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !410, file: !411, line: 1511, baseType: !30, size: 32, offset: 22336)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !410, file: !411, line: 1515, baseType: !5702, size: 64, offset: 22400)
!5702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !440, line: 56, size: 64, elements: !5703)
!5703 = !{!5704}
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5702, file: !440, line: 57, baseType: !443, size: 64)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !410, file: !411, line: 1518, baseType: !5702, size: 64, offset: 22464)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !410, file: !411, line: 1528, baseType: !756, size: 128, align: 64, offset: 22528)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !410, file: !411, line: 1552, baseType: !5708, size: 35328, offset: 23040)
!5708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5709, line: 430, size: 35328, elements: !5710)
!5709 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5710 = !{!5711, !5713, !5714, !5715, !5716, !5717, !5718, !5719, !5720, !5724, !5725, !5726, !5727, !5728, !5729, !5732, !5733, !5734, !5735}
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5708, file: !5709, line: 432, baseType: !5712, size: 192)
!5712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4455, size: 192, elements: !812)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5708, file: !5709, line: 436, baseType: !47, size: 64, offset: 192)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5708, file: !5709, line: 440, baseType: !34, size: 16, offset: 256)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5708, file: !5709, line: 441, baseType: !34, size: 16, offset: 272)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5708, file: !5709, line: 442, baseType: !34, size: 16, offset: 288)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5708, file: !5709, line: 443, baseType: !34, size: 16, offset: 304)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5708, file: !5709, line: 447, baseType: !47, size: 64, offset: 320)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5708, file: !5709, line: 448, baseType: !47, size: 64, offset: 384)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5708, file: !5709, line: 459, baseType: !5721, size: 256, offset: 448)
!5721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5722, size: 256, elements: !833)
!5722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5723, size: 64)
!5723 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !5709, line: 428, flags: DIFlagFwdDecl)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5708, file: !5709, line: 461, baseType: !47, size: 64, offset: 704)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5708, file: !5709, line: 463, baseType: !47, size: 64, offset: 768)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5708, file: !5709, line: 465, baseType: !47, size: 64, offset: 832)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5708, file: !5709, line: 466, baseType: !47, size: 64, offset: 896)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5708, file: !5709, line: 467, baseType: !47, size: 64, offset: 960)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5708, file: !5709, line: 473, baseType: !5730, size: 64, offset: 1024)
!5730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5731, size: 64)
!5731 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5709, line: 10, flags: DIFlagFwdDecl)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5708, file: !5709, line: 480, baseType: !47, size: 64, offset: 1088)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5708, file: !5709, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5708, file: !5709, line: 491, baseType: !420, size: 32, offset: 1184)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5708, file: !5709, line: 501, baseType: !5736, size: 33792, offset: 1536)
!5736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5737, line: 448, size: 33792, elements: !5738)
!5737 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5738 = !{!5739, !5740, !5741, !5899, !5900, !5906, !5907}
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5736, file: !5737, line: 461, baseType: !7, size: 32)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5736, file: !5737, line: 468, baseType: !47, size: 64, offset: 64)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5736, file: !5737, line: 476, baseType: !5742, size: 64, offset: 128)
!5742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5743, size: 64)
!5743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5737, line: 356, size: 33280, align: 512, elements: !5744)
!5744 = !{!5745, !5746, !5747, !5748, !5749, !5750, !5751, !5752, !5753, !5754}
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5743, file: !5737, line: 358, baseType: !7, size: 32)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5743, file: !5737, line: 361, baseType: !7, size: 32, offset: 32)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5743, file: !5737, line: 364, baseType: !478, size: 64, offset: 64)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5743, file: !5737, line: 367, baseType: !478, size: 64, offset: 128)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5743, file: !5737, line: 370, baseType: !478, size: 64, offset: 192)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5743, file: !5737, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5743, file: !5737, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5743, file: !5737, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5743, file: !5737, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5743, file: !5737, line: 397, baseType: !5755, size: 32768, offset: 512)
!5755 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5737, line: 348, size: 32768, elements: !5756)
!5756 = !{!5757, !5772, !5807, !5884, !5897}
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5755, file: !5737, line: 349, baseType: !5758, size: 896)
!5758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5737, line: 12, size: 896, elements: !5759)
!5759 = !{!5760, !5761, !5762, !5763, !5764, !5765, !5766, !5767, !5771}
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5758, file: !5737, line: 13, baseType: !420, size: 32)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5758, file: !5737, line: 14, baseType: !420, size: 32, offset: 32)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5758, file: !5737, line: 15, baseType: !420, size: 32, offset: 64)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5758, file: !5737, line: 16, baseType: !420, size: 32, offset: 96)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5758, file: !5737, line: 17, baseType: !420, size: 32, offset: 128)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5758, file: !5737, line: 18, baseType: !420, size: 32, offset: 160)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5758, file: !5737, line: 19, baseType: !420, size: 32, offset: 192)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5758, file: !5737, line: 22, baseType: !5768, size: 640, offset: 224)
!5768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 640, elements: !5769)
!5769 = !{!5770}
!5770 = !DISubrange(count: 20)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5758, file: !5737, line: 25, baseType: !420, size: 32, offset: 864)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5755, file: !5737, line: 350, baseType: !5773, size: 4096, align: 128)
!5773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5737, line: 34, size: 4096, align: 128, elements: !5774)
!5774 = !{!5775, !5776, !5777, !5778, !5779, !5794, !5795, !5796, !5798, !5800, !5802}
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5773, file: !5737, line: 35, baseType: !101, size: 16)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5773, file: !5737, line: 36, baseType: !101, size: 16, offset: 16)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5773, file: !5737, line: 37, baseType: !101, size: 16, offset: 32)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5773, file: !5737, line: 38, baseType: !101, size: 16, offset: 48)
!5779 = !DIDerivedType(tag: DW_TAG_member, scope: !5773, file: !5737, line: 39, baseType: !5780, size: 128, offset: 64)
!5780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5773, file: !5737, line: 39, size: 128, elements: !5781)
!5781 = !{!5782, !5787}
!5782 = !DIDerivedType(tag: DW_TAG_member, scope: !5780, file: !5737, line: 40, baseType: !5783, size: 128)
!5783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5780, file: !5737, line: 40, size: 128, elements: !5784)
!5784 = !{!5785, !5786}
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5783, file: !5737, line: 41, baseType: !478, size: 64)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5783, file: !5737, line: 42, baseType: !478, size: 64, offset: 64)
!5787 = !DIDerivedType(tag: DW_TAG_member, scope: !5780, file: !5737, line: 44, baseType: !5788, size: 128)
!5788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5780, file: !5737, line: 44, size: 128, elements: !5789)
!5789 = !{!5790, !5791, !5792, !5793}
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5788, file: !5737, line: 45, baseType: !420, size: 32)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5788, file: !5737, line: 46, baseType: !420, size: 32, offset: 32)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5788, file: !5737, line: 47, baseType: !420, size: 32, offset: 64)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5788, file: !5737, line: 48, baseType: !420, size: 32, offset: 96)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5773, file: !5737, line: 51, baseType: !420, size: 32, offset: 192)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5773, file: !5737, line: 52, baseType: !420, size: 32, offset: 224)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5773, file: !5737, line: 55, baseType: !5797, size: 1024, offset: 256)
!5797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 1024, elements: !2280)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5773, file: !5737, line: 58, baseType: !5799, size: 2048, offset: 1280)
!5799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 2048, elements: !1566)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5773, file: !5737, line: 60, baseType: !5801, size: 384, offset: 3328)
!5801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 384, elements: !402)
!5802 = !DIDerivedType(tag: DW_TAG_member, scope: !5773, file: !5737, line: 62, baseType: !5803, size: 384, offset: 3712)
!5803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5773, file: !5737, line: 62, size: 384, elements: !5804)
!5804 = !{!5805, !5806}
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5803, file: !5737, line: 63, baseType: !5801, size: 384)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5803, file: !5737, line: 64, baseType: !5801, size: 384)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5755, file: !5737, line: 351, baseType: !5808, size: 1088)
!5808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5737, line: 79, size: 1088, elements: !5809)
!5809 = !{!5810, !5811, !5812, !5813, !5814, !5815, !5816, !5817, !5818, !5819, !5820, !5821, !5822, !5823, !5824, !5883}
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5808, file: !5737, line: 80, baseType: !420, size: 32)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5808, file: !5737, line: 81, baseType: !420, size: 32, offset: 32)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5808, file: !5737, line: 82, baseType: !420, size: 32, offset: 64)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5808, file: !5737, line: 83, baseType: !420, size: 32, offset: 96)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5808, file: !5737, line: 84, baseType: !420, size: 32, offset: 128)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5808, file: !5737, line: 85, baseType: !420, size: 32, offset: 160)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5808, file: !5737, line: 86, baseType: !420, size: 32, offset: 192)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5808, file: !5737, line: 88, baseType: !5768, size: 640, offset: 224)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5808, file: !5737, line: 89, baseType: !91, size: 8, offset: 864)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5808, file: !5737, line: 90, baseType: !91, size: 8, offset: 872)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5808, file: !5737, line: 91, baseType: !91, size: 8, offset: 880)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5808, file: !5737, line: 92, baseType: !91, size: 8, offset: 888)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5808, file: !5737, line: 93, baseType: !91, size: 8, offset: 896)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5808, file: !5737, line: 94, baseType: !91, size: 8, offset: 904)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5808, file: !5737, line: 95, baseType: !5825, size: 64, offset: 960)
!5825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5826, size: 64)
!5826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5827, line: 11, size: 128, elements: !5828)
!5827 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5828 = !{!5829, !5830}
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5826, file: !5827, line: 12, baseType: !1198, size: 64)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5826, file: !5827, line: 13, baseType: !5831, size: 64, offset: 64)
!5831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5832, size: 64)
!5832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5833, line: 103, size: 1344, elements: !5834)
!5833 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5834 = !{!5835, !5836, !5837, !5838, !5839, !5840, !5841, !5842, !5843, !5844, !5845, !5846, !5847, !5848, !5849, !5850, !5851, !5852, !5863, !5864, !5865}
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5832, file: !5833, line: 109, baseType: !47, size: 64)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5832, file: !5833, line: 110, baseType: !47, size: 64, offset: 64)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5832, file: !5833, line: 111, baseType: !47, size: 64, offset: 128)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5832, file: !5833, line: 112, baseType: !47, size: 64, offset: 192)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5832, file: !5833, line: 113, baseType: !47, size: 64, offset: 256)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5832, file: !5833, line: 114, baseType: !47, size: 64, offset: 320)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5832, file: !5833, line: 117, baseType: !47, size: 64, offset: 384)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5832, file: !5833, line: 118, baseType: !47, size: 64, offset: 448)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5832, file: !5833, line: 119, baseType: !47, size: 64, offset: 512)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5832, file: !5833, line: 120, baseType: !47, size: 64, offset: 576)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5832, file: !5833, line: 121, baseType: !47, size: 64, offset: 640)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5832, file: !5833, line: 122, baseType: !47, size: 64, offset: 704)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5832, file: !5833, line: 123, baseType: !47, size: 64, offset: 768)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5832, file: !5833, line: 124, baseType: !47, size: 64, offset: 832)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5832, file: !5833, line: 125, baseType: !47, size: 64, offset: 896)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5832, file: !5833, line: 139, baseType: !47, size: 64, offset: 960)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5832, file: !5833, line: 142, baseType: !47, size: 64, offset: 1024)
!5852 = !DIDerivedType(tag: DW_TAG_member, scope: !5832, file: !5833, line: 144, baseType: !5853, size: 64, offset: 1088)
!5853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5832, file: !5833, line: 144, size: 64, elements: !5854)
!5854 = !{!5855, !5856, !5857}
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5853, file: !5833, line: 146, baseType: !101, size: 16)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5853, file: !5833, line: 148, baseType: !478, size: 64)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5853, file: !5833, line: 150, baseType: !5858, size: 64)
!5858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5833, line: 59, size: 64, elements: !5859)
!5859 = !{!5860, !5861, !5862}
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5858, file: !5833, line: 61, baseType: !478, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5858, file: !5833, line: 63, baseType: !478, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5858, file: !5833, line: 65, baseType: !478, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5832, file: !5833, line: 153, baseType: !47, size: 64, offset: 1152)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5832, file: !5833, line: 154, baseType: !47, size: 64, offset: 1216)
!5865 = !DIDerivedType(tag: DW_TAG_member, scope: !5832, file: !5833, line: 156, baseType: !5866, size: 64, offset: 1280)
!5866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5832, file: !5833, line: 156, size: 64, elements: !5867)
!5867 = !{!5868, !5869, !5870}
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5866, file: !5833, line: 158, baseType: !101, size: 16)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5866, file: !5833, line: 160, baseType: !478, size: 64)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5866, file: !5833, line: 162, baseType: !5871, size: 64)
!5871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5833, line: 69, size: 64, elements: !5872)
!5872 = !{!5873, !5874, !5875, !5876, !5877, !5878, !5879, !5880, !5881, !5882}
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5871, file: !5833, line: 71, baseType: !478, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5871, file: !5833, line: 73, baseType: !478, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5871, file: !5833, line: 75, baseType: !478, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5871, file: !5833, line: 77, baseType: !478, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5871, file: !5833, line: 80, baseType: !478, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5871, file: !5833, line: 83, baseType: !478, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5871, file: !5833, line: 86, baseType: !478, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5871, file: !5833, line: 88, baseType: !478, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5871, file: !5833, line: 93, baseType: !478, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5871, file: !5833, line: 100, baseType: !478, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5808, file: !5737, line: 96, baseType: !420, size: 32, offset: 1024)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5755, file: !5737, line: 352, baseType: !5885, size: 4608, align: 512)
!5885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5737, line: 333, size: 4608, align: 512, elements: !5886)
!5886 = !{!5887, !5888, !5895}
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5885, file: !5737, line: 334, baseType: !5773, size: 4096, align: 128)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5885, file: !5737, line: 335, baseType: !5889, size: 512, offset: 4096)
!5889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5737, line: 312, size: 512, elements: !5890)
!5890 = !{!5891, !5892, !5893}
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5889, file: !5737, line: 313, baseType: !478, size: 64)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5889, file: !5737, line: 314, baseType: !478, size: 64, offset: 64)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5889, file: !5737, line: 315, baseType: !5894, size: 384, offset: 128)
!5894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 384, elements: !954)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5885, file: !5737, line: 336, baseType: !5896, offset: 4608)
!5896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, elements: !846)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5755, file: !5737, line: 353, baseType: !5898, size: 32768)
!5898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 32768, elements: !4778)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5736, file: !5737, line: 484, baseType: !5742, size: 64, offset: 192)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5736, file: !5737, line: 491, baseType: !5901, size: 128, offset: 256)
!5901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5737, line: 404, size: 128, elements: !5902)
!5902 = !{!5903, !5904, !5905}
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5901, file: !5737, line: 424, baseType: !478, size: 64)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5901, file: !5737, line: 432, baseType: !7, size: 32, offset: 64)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5901, file: !5737, line: 440, baseType: !7, size: 32, offset: 96)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5736, file: !5737, line: 498, baseType: !5901, size: 128, offset: 384)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5736, file: !5737, line: 508, baseType: !5743, size: 33280, align: 512, offset: 512)
!5908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5909, size: 64)
!5909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5910)
!5910 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !108)
!5911 = !{!5912, !5914, !5916, !5918, !5921, !5926, !5931, !0, !5934, !5936, !5938, !5943, !5948, !5951, !5954, !5959, !5964, !5967, !5969, !5971, !5976, !5978, !5983, !5988, !6000}
!5912 = !DIGlobalVariableExpression(var: !5913, expr: !DIExpression())
!5913 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__totalram_pages364", scope: !2, file: !3, line: 22, type: !28, isLocal: true, isDefinition: true)
!5914 = !DIGlobalVariableExpression(var: !5915, expr: !DIExpression())
!5915 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_si_mem_available369", scope: !2, file: !3, line: 76, type: !28, isLocal: true, isDefinition: true)
!5916 = !DIGlobalVariableExpression(var: !5917, expr: !DIExpression())
!5917 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_si_meminfo370", scope: !2, file: !3, line: 89, type: !28, isLocal: true, isDefinition: true)
!5918 = !DIGlobalVariableExpression(var: !5919, expr: !DIExpression())
!5919 = distinct !DIGlobalVariable(scope: null, file: !3, line: 408, type: !5920, isLocal: true, isDefinition: true)
!5920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 88, elements: !5403)
!5921 = !DIGlobalVariableExpression(var: !5922, expr: !DIExpression())
!5922 = distinct !DIGlobalVariable(scope: null, file: !3, line: 420, type: !5923, isLocal: true, isDefinition: true)
!5923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 120, elements: !5924)
!5924 = !{!5925}
!5925 = !DISubrange(count: 15)
!5926 = !DIGlobalVariableExpression(var: !5927, expr: !DIExpression())
!5927 = distinct !DIGlobalVariable(scope: null, file: !3, line: 421, type: !5928, isLocal: true, isDefinition: true)
!5928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 248, elements: !5929)
!5929 = !{!5930}
!5930 = !DISubrange(count: 31)
!5931 = !DIGlobalVariableExpression(var: !5932, expr: !DIExpression())
!5932 = distinct !DIGlobalVariable(scope: null, file: !3, line: 422, type: !5933, isLocal: true, isDefinition: true)
!5933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !5769)
!5934 = !DIGlobalVariableExpression(var: !5935, expr: !DIExpression())
!5935 = distinct !DIGlobalVariable(name: "totalreserve_pages", scope: !2, file: !3, line: 23, type: !47, isLocal: false, isDefinition: true)
!5936 = !DIGlobalVariableExpression(var: !5937, expr: !DIExpression())
!5937 = distinct !DIGlobalVariable(name: "totalcma_pages", scope: !2, file: !3, line: 24, type: !47, isLocal: false, isDefinition: true)
!5938 = !DIGlobalVariableExpression(var: !5939, expr: !DIExpression())
!5939 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !5940, isLocal: true, isDefinition: true)
!5940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2600, elements: !5941)
!5941 = !{!5942}
!5942 = !DISubrange(count: 325)
!5943 = !DIGlobalVariableExpression(var: !5944, expr: !DIExpression())
!5944 = distinct !DIGlobalVariable(scope: null, file: !3, line: 241, type: !5945, isLocal: true, isDefinition: true)
!5945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2376, elements: !5946)
!5946 = !{!5947}
!5947 = !DISubrange(count: 297)
!5948 = !DIGlobalVariableExpression(var: !5949, expr: !DIExpression())
!5949 = distinct !DIGlobalVariable(scope: null, file: !3, line: 241, type: !5950, isLocal: true, isDefinition: true)
!5950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !833)
!5951 = !DIGlobalVariableExpression(var: !5952, expr: !DIExpression())
!5952 = distinct !DIGlobalVariable(scope: null, file: !3, line: 241, type: !5953, isLocal: true, isDefinition: true)
!5953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 24, elements: !812)
!5954 = !DIGlobalVariableExpression(var: !5955, expr: !DIExpression())
!5955 = distinct !DIGlobalVariable(scope: null, file: !3, line: 308, type: !5956, isLocal: true, isDefinition: true)
!5956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2392, elements: !5957)
!5957 = !{!5958}
!5958 = !DISubrange(count: 299)
!5959 = !DIGlobalVariableExpression(var: !5960, expr: !DIExpression())
!5960 = distinct !DIGlobalVariable(scope: null, file: !3, line: 350, type: !5961, isLocal: true, isDefinition: true)
!5961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 144, elements: !5962)
!5962 = !{!5963}
!5963 = !DISubrange(count: 18)
!5964 = !DIGlobalVariableExpression(var: !5965, expr: !DIExpression())
!5965 = distinct !DIGlobalVariable(scope: null, file: !3, line: 352, type: !5966, isLocal: true, isDefinition: true)
!5966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 56, elements: !3456)
!5967 = !DIGlobalVariableExpression(var: !5968, expr: !DIExpression())
!5968 = distinct !DIGlobalVariable(scope: null, file: !3, line: 353, type: !5950, isLocal: true, isDefinition: true)
!5969 = !DIGlobalVariableExpression(var: !5970, expr: !DIExpression())
!5970 = distinct !DIGlobalVariable(scope: null, file: !3, line: 366, type: !5966, isLocal: true, isDefinition: true)
!5971 = !DIGlobalVariableExpression(var: !5972, expr: !DIExpression())
!5972 = distinct !DIGlobalVariable(scope: null, file: !3, line: 384, type: !5973, isLocal: true, isDefinition: true)
!5973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 104, elements: !5974)
!5974 = !{!5975}
!5975 = !DISubrange(count: 13)
!5976 = !DIGlobalVariableExpression(var: !5977, expr: !DIExpression())
!5977 = distinct !DIGlobalVariable(scope: null, file: !3, line: 389, type: !5920, isLocal: true, isDefinition: true)
!5978 = !DIGlobalVariableExpression(var: !5979, expr: !DIExpression())
!5979 = distinct !DIGlobalVariable(scope: null, file: !3, line: 398, type: !5980, isLocal: true, isDefinition: true)
!5980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 216, elements: !5981)
!5981 = !{!5982}
!5982 = !DISubrange(count: 27)
!5983 = !DIGlobalVariableExpression(var: !5984, expr: !DIExpression())
!5984 = distinct !DIGlobalVariable(scope: null, file: !3, line: 29, type: !5985, isLocal: true, isDefinition: true)
!5985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 72, elements: !5986)
!5986 = !{!5987}
!5987 = !DISubrange(count: 9)
!5988 = !DIGlobalVariableExpression(var: !5989, expr: !DIExpression())
!5989 = distinct !DIGlobalVariable(name: "types", scope: !5990, file: !3, line: 146, type: !5999, isLocal: true, isDefinition: true)
!5990 = distinct !DISubprogram(name: "show_migration_types", scope: !3, file: !3, line: 144, type: !5991, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5993)
!5991 = !DISubroutineType(types: !5992)
!5992 = !{null, !95}
!5993 = !{!5994, !5995, !5997, !5998}
!5994 = !DILocalVariable(name: "type", arg: 1, scope: !5990, file: !3, line: 144, type: !95)
!5995 = !DILocalVariable(name: "tmp", scope: !5990, file: !3, line: 158, type: !5996)
!5996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 40, elements: !1069)
!5997 = !DILocalVariable(name: "p", scope: !5990, file: !3, line: 159, type: !978)
!5998 = !DILocalVariable(name: "i", scope: !5990, file: !3, line: 160, type: !30)
!5999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32, elements: !833)
!6000 = !DIGlobalVariableExpression(var: !6001, expr: !DIExpression())
!6001 = distinct !DIGlobalVariable(scope: null, file: !3, line: 168, type: !5505, isLocal: true, isDefinition: true)
!6002 = !{i32 7, !"Dwarf Version", i32 5}
!6003 = !{i32 2, !"Debug Info Version", i32 3}
!6004 = !{i32 1, !"wchar_size", i32 2}
!6005 = !{i32 8, !"cf-protection-branch", i32 1}
!6006 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6007 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6008 = !{i32 1, !"Code Model", i32 2}
!6009 = !{i32 1, !"override-stack-alignment", i32 8}
!6010 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6011 = distinct !DISubprogram(name: "si_mem_available", scope: !3, file: !3, line: 32, type: !6012, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6014)
!6012 = !DISubroutineType(types: !6013)
!6013 = !{!1198}
!6014 = !{!6015, !6016, !6017, !6018, !6020, !6021, !6022, !6023, !6025, !6026, !6028}
!6015 = !DILocalVariable(name: "available", scope: !6011, file: !3, line: 34, type: !1198)
!6016 = !DILocalVariable(name: "pagecache", scope: !6011, file: !3, line: 35, type: !47)
!6017 = !DILocalVariable(name: "wmark_low", scope: !6011, file: !3, line: 36, type: !47)
!6018 = !DILocalVariable(name: "pages", scope: !6011, file: !3, line: 37, type: !6019)
!6019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 320, elements: !1069)
!6020 = !DILocalVariable(name: "reclaimable", scope: !6011, file: !3, line: 38, type: !47)
!6021 = !DILocalVariable(name: "zone", scope: !6011, file: !3, line: 39, type: !5294)
!6022 = !DILocalVariable(name: "lru", scope: !6011, file: !3, line: 40, type: !30)
!6023 = !DILocalVariable(name: "__UNIQUE_ID___x365", scope: !6024, file: !3, line: 60, type: !47)
!6024 = distinct !DILexicalBlock(scope: !6011, file: !3, line: 60, column: 15)
!6025 = !DILocalVariable(name: "__UNIQUE_ID___y366", scope: !6024, file: !3, line: 60, type: !47)
!6026 = !DILocalVariable(name: "__UNIQUE_ID___x367", scope: !6027, file: !3, line: 70, type: !47)
!6027 = distinct !DILexicalBlock(scope: !6011, file: !3, line: 70, column: 29)
!6028 = !DILocalVariable(name: "__UNIQUE_ID___y368", scope: !6027, file: !3, line: 70, type: !47)
!6029 = !DILocation(line: 34, column: 2, scope: !6011)
!6030 = !DILocation(line: 34, column: 7, scope: !6011)
!6031 = !DILocation(line: 35, column: 2, scope: !6011)
!6032 = !DILocation(line: 35, column: 16, scope: !6011)
!6033 = !DILocation(line: 36, column: 2, scope: !6011)
!6034 = !DILocation(line: 36, column: 16, scope: !6011)
!6035 = !DILocation(line: 37, column: 2, scope: !6011)
!6036 = !DILocation(line: 37, column: 16, scope: !6011)
!6037 = !DILocation(line: 38, column: 2, scope: !6011)
!6038 = !DILocation(line: 38, column: 16, scope: !6011)
!6039 = !DILocation(line: 39, column: 2, scope: !6011)
!6040 = !DILocation(line: 39, column: 15, scope: !6011)
!6041 = !DILocation(line: 40, column: 2, scope: !6011)
!6042 = !DILocation(line: 40, column: 6, scope: !6011)
!6043 = !DILocation(line: 42, column: 11, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !6011, file: !3, line: 42, column: 2)
!6045 = !DILocation(line: 42, column: 7, scope: !6044)
!6046 = !DILocation(line: 42, column: 23, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !6044, file: !3, line: 42, column: 2)
!6048 = !DILocation(line: 42, column: 27, scope: !6047)
!6049 = !DILocation(line: 42, column: 2, scope: !6044)
!6050 = !DILocation(line: 43, column: 53, scope: !6047)
!6051 = !DILocation(line: 43, column: 51, scope: !6047)
!6052 = !DILocation(line: 43, column: 16, scope: !6047)
!6053 = !DILocation(line: 43, column: 9, scope: !6047)
!6054 = !DILocation(line: 43, column: 3, scope: !6047)
!6055 = !DILocation(line: 43, column: 14, scope: !6047)
!6056 = !DILocation(line: 42, column: 46, scope: !6047)
!6057 = !DILocation(line: 42, column: 2, scope: !6047)
!6058 = distinct !{!6058, !6049, !6059, !6060, !6061}
!6059 = !DILocation(line: 43, column: 56, scope: !6044)
!6060 = !{!"llvm.loop.mustprogress"}
!6061 = !{!"llvm.loop.unroll.disable"}
!6062 = !DILocation(line: 45, column: 2, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !6011, file: !3, line: 45, column: 2)
!6064 = !DILocation(line: 45, column: 2, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6063, file: !3, line: 45, column: 2)
!6066 = !DILocation(line: 46, column: 16, scope: !6065)
!6067 = !DILocation(line: 46, column: 13, scope: !6065)
!6068 = !DILocation(line: 46, column: 3, scope: !6065)
!6069 = distinct !{!6069, !6062, !6070, !6060, !6061}
!6070 = !DILocation(line: 46, column: 16, scope: !6063)
!6071 = !DILocation(line: 52, column: 14, scope: !6011)
!6072 = !DILocation(line: 52, column: 54, scope: !6011)
!6073 = !DILocation(line: 52, column: 52, scope: !6011)
!6074 = !DILocation(line: 52, column: 12, scope: !6011)
!6075 = !DILocation(line: 59, column: 14, scope: !6011)
!6076 = !DILocation(line: 59, column: 39, scope: !6011)
!6077 = !DILocation(line: 59, column: 37, scope: !6011)
!6078 = !DILocation(line: 59, column: 12, scope: !6011)
!6079 = !DILocation(line: 60, column: 15, scope: !6024)
!6080 = !DILocation(line: 60, column: 15, scope: !6011)
!6081 = !DILocation(line: 60, column: 12, scope: !6011)
!6082 = !DILocation(line: 61, column: 15, scope: !6011)
!6083 = !DILocation(line: 61, column: 12, scope: !6011)
!6084 = !DILocation(line: 68, column: 16, scope: !6011)
!6085 = !DILocation(line: 69, column: 3, scope: !6011)
!6086 = !DILocation(line: 68, column: 68, scope: !6011)
!6087 = !DILocation(line: 68, column: 14, scope: !6011)
!6088 = !DILocation(line: 70, column: 15, scope: !6011)
!6089 = !DILocation(line: 70, column: 29, scope: !6027)
!6090 = !DILocation(line: 70, column: 29, scope: !6011)
!6091 = !DILocation(line: 70, column: 27, scope: !6011)
!6092 = !DILocation(line: 70, column: 12, scope: !6011)
!6093 = !DILocation(line: 72, column: 6, scope: !6094)
!6094 = distinct !DILexicalBlock(scope: !6011, file: !3, line: 72, column: 6)
!6095 = !DILocation(line: 72, column: 16, scope: !6094)
!6096 = !DILocation(line: 72, column: 6, scope: !6011)
!6097 = !DILocation(line: 73, column: 13, scope: !6094)
!6098 = !DILocation(line: 73, column: 3, scope: !6094)
!6099 = !DILocation(line: 74, column: 9, scope: !6011)
!6100 = !DILocation(line: 75, column: 1, scope: !6011)
!6101 = !DILocation(line: 74, column: 2, scope: !6011)
!6102 = distinct !DISubprogram(name: "global_node_page_state", scope: !6103, file: !6103, line: 200, type: !6104, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6106)
!6103 = !DIFile(filename: "./include/linux/vmstat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "01b2722995b4b350c1d2f883546d8486")
!6104 = !DISubroutineType(types: !6105)
!6105 = !{!47, !284}
!6106 = !{!6107}
!6107 = !DILocalVariable(name: "item", arg: 1, scope: !6102, file: !6103, line: 200, type: !284)
!6108 = !DILocation(line: 200, column: 72, scope: !6102)
!6109 = !DILocation(line: 204, column: 38, scope: !6102)
!6110 = !DILocation(line: 204, column: 9, scope: !6102)
!6111 = !DILocation(line: 204, column: 2, scope: !6102)
!6112 = !DISubprogram(name: "first_online_pgdat", scope: !269, file: !269, line: 1562, type: !6113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6113 = !DISubroutineType(types: !6114)
!6114 = !{!5303}
!6115 = !DISubprogram(name: "next_zone", scope: !269, file: !269, line: 1564, type: !6116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6116 = !DISubroutineType(types: !6117)
!6117 = !{!5294, !5294}
!6118 = distinct !DISubprogram(name: "global_zone_page_state", scope: !6103, file: !6103, line: 179, type: !6119, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6121)
!6119 = !DISubroutineType(types: !6120)
!6120 = !{!47, !339}
!6121 = !{!6122, !6123}
!6122 = !DILocalVariable(name: "item", arg: 1, scope: !6118, file: !6103, line: 179, type: !339)
!6123 = !DILocalVariable(name: "x", scope: !6118, file: !6103, line: 181, type: !1198)
!6124 = !DILocation(line: 179, column: 72, scope: !6118)
!6125 = !DILocation(line: 181, column: 2, scope: !6118)
!6126 = !DILocation(line: 181, column: 7, scope: !6118)
!6127 = !DILocation(line: 181, column: 42, scope: !6118)
!6128 = !DILocation(line: 181, column: 29, scope: !6118)
!6129 = !DILocation(line: 181, column: 11, scope: !6118)
!6130 = !DILocation(line: 183, column: 6, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6118, file: !6103, line: 183, column: 6)
!6132 = !DILocation(line: 183, column: 8, scope: !6131)
!6133 = !DILocation(line: 183, column: 6, scope: !6118)
!6134 = !DILocation(line: 184, column: 5, scope: !6131)
!6135 = !DILocation(line: 184, column: 3, scope: !6131)
!6136 = !DILocation(line: 186, column: 9, scope: !6118)
!6137 = !DILocation(line: 187, column: 1, scope: !6118)
!6138 = !DILocation(line: 186, column: 2, scope: !6118)
!6139 = distinct !DISubprogram(name: "global_node_page_state_pages", scope: !6103, file: !6103, line: 190, type: !6104, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6140)
!6140 = !{!6141, !6142}
!6141 = !DILocalVariable(name: "item", arg: 1, scope: !6139, file: !6103, line: 190, type: !284)
!6142 = !DILocalVariable(name: "x", scope: !6139, file: !6103, line: 192, type: !1198)
!6143 = !DILocation(line: 190, column: 64, scope: !6139)
!6144 = !DILocation(line: 192, column: 2, scope: !6139)
!6145 = !DILocation(line: 192, column: 7, scope: !6139)
!6146 = !DILocation(line: 192, column: 42, scope: !6139)
!6147 = !DILocation(line: 192, column: 29, scope: !6139)
!6148 = !DILocation(line: 192, column: 11, scope: !6139)
!6149 = !DILocation(line: 194, column: 6, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6139, file: !6103, line: 194, column: 6)
!6151 = !DILocation(line: 194, column: 8, scope: !6150)
!6152 = !DILocation(line: 194, column: 6, scope: !6139)
!6153 = !DILocation(line: 195, column: 5, scope: !6150)
!6154 = !DILocation(line: 195, column: 3, scope: !6150)
!6155 = !DILocation(line: 197, column: 9, scope: !6139)
!6156 = !DILocation(line: 198, column: 1, scope: !6139)
!6157 = !DILocation(line: 197, column: 2, scope: !6139)
!6158 = distinct !DISubprogram(name: "si_meminfo", scope: !3, file: !3, line: 78, type: !6159, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6180)
!6159 = !DISubroutineType(types: !6160)
!6160 = !{null, !6161}
!6161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6162, size: 64)
!6162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysinfo", file: !6163, line: 8, size: 896, elements: !6164)
!6163 = !DIFile(filename: "./include/uapi/linux/sysinfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6f8882c542ddb6603b06a4eafcc17015")
!6164 = !{!6165, !6166, !6168, !6169, !6170, !6171, !6172, !6173, !6174, !6175, !6176, !6177, !6178, !6179}
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "uptime", scope: !6162, file: !6163, line: 9, baseType: !1423, size: 64)
!6166 = !DIDerivedType(tag: DW_TAG_member, name: "loads", scope: !6162, file: !6163, line: 10, baseType: !6167, size: 192, offset: 64)
!6167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 192, elements: !812)
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "totalram", scope: !6162, file: !6163, line: 11, baseType: !46, size: 64, offset: 256)
!6169 = !DIDerivedType(tag: DW_TAG_member, name: "freeram", scope: !6162, file: !6163, line: 12, baseType: !46, size: 64, offset: 320)
!6170 = !DIDerivedType(tag: DW_TAG_member, name: "sharedram", scope: !6162, file: !6163, line: 13, baseType: !46, size: 64, offset: 384)
!6171 = !DIDerivedType(tag: DW_TAG_member, name: "bufferram", scope: !6162, file: !6163, line: 14, baseType: !46, size: 64, offset: 448)
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "totalswap", scope: !6162, file: !6163, line: 15, baseType: !46, size: 64, offset: 512)
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "freeswap", scope: !6162, file: !6163, line: 16, baseType: !46, size: 64, offset: 576)
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !6162, file: !6163, line: 17, baseType: !102, size: 16, offset: 640)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !6162, file: !6163, line: 18, baseType: !102, size: 16, offset: 656)
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "totalhigh", scope: !6162, file: !6163, line: 19, baseType: !46, size: 64, offset: 704)
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "freehigh", scope: !6162, file: !6163, line: 20, baseType: !46, size: 64, offset: 768)
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "mem_unit", scope: !6162, file: !6163, line: 21, baseType: !421, size: 32, offset: 832)
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "_f", scope: !6162, file: !6163, line: 22, baseType: !5348, offset: 864)
!6180 = !{!6181}
!6181 = !DILocalVariable(name: "val", arg: 1, scope: !6158, file: !3, line: 78, type: !6161)
!6182 = !DILocation(line: 78, column: 33, scope: !6158)
!6183 = !DILocation(line: 80, column: 18, scope: !6158)
!6184 = !DILocation(line: 80, column: 2, scope: !6158)
!6185 = !DILocation(line: 80, column: 7, scope: !6158)
!6186 = !DILocation(line: 80, column: 16, scope: !6158)
!6187 = !DILocation(line: 81, column: 19, scope: !6158)
!6188 = !DILocation(line: 81, column: 2, scope: !6158)
!6189 = !DILocation(line: 81, column: 7, scope: !6158)
!6190 = !DILocation(line: 81, column: 17, scope: !6158)
!6191 = !DILocation(line: 82, column: 17, scope: !6158)
!6192 = !DILocation(line: 82, column: 2, scope: !6158)
!6193 = !DILocation(line: 82, column: 7, scope: !6158)
!6194 = !DILocation(line: 82, column: 15, scope: !6158)
!6195 = !DILocation(line: 83, column: 19, scope: !6158)
!6196 = !DILocation(line: 83, column: 2, scope: !6158)
!6197 = !DILocation(line: 83, column: 7, scope: !6158)
!6198 = !DILocation(line: 83, column: 17, scope: !6158)
!6199 = !DILocation(line: 84, column: 19, scope: !6158)
!6200 = !DILocation(line: 84, column: 2, scope: !6158)
!6201 = !DILocation(line: 84, column: 7, scope: !6158)
!6202 = !DILocation(line: 84, column: 17, scope: !6158)
!6203 = !DILocation(line: 85, column: 18, scope: !6158)
!6204 = !DILocation(line: 85, column: 2, scope: !6158)
!6205 = !DILocation(line: 85, column: 7, scope: !6158)
!6206 = !DILocation(line: 85, column: 16, scope: !6158)
!6207 = !DILocation(line: 86, column: 2, scope: !6158)
!6208 = !DILocation(line: 86, column: 7, scope: !6158)
!6209 = !DILocation(line: 86, column: 16, scope: !6158)
!6210 = !DILocation(line: 87, column: 1, scope: !6158)
!6211 = distinct !DISubprogram(name: "totalram_pages", scope: !1750, file: !1750, line: 57, type: !6212, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6212 = !DISubroutineType(types: !6213)
!6213 = !{!47}
!6214 = !DILocation(line: 59, column: 24, scope: !6211)
!6215 = !DILocation(line: 59, column: 2, scope: !6211)
!6216 = !DISubprogram(name: "nr_blockdev_pages", scope: !159, file: !159, line: 1012, type: !6012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6217 = distinct !DISubprogram(name: "totalhigh_pages", scope: !6218, file: !6218, line: 243, type: !6212, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6218 = !DIFile(filename: "./include/linux/highmem-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ae7838583c7018843a11d0e374eeb3")
!6219 = !DILocation(line: 243, column: 53, scope: !6217)
!6220 = distinct !DISubprogram(name: "nr_free_highpages", scope: !6218, file: !6218, line: 242, type: !6221, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6221 = !DISubroutineType(types: !6222)
!6222 = !{!7}
!6223 = !DILocation(line: 242, column: 54, scope: !6220)
!6224 = distinct !DISubprogram(name: "si_meminfo_node", scope: !3, file: !3, line: 92, type: !6225, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6227)
!6225 = !DISubroutineType(types: !6226)
!6226 = !{null, !6161, !30}
!6227 = !{!6228, !6229, !6230, !6231, !6232, !6233, !6234}
!6228 = !DILocalVariable(name: "val", arg: 1, scope: !6224, file: !3, line: 92, type: !6161)
!6229 = !DILocalVariable(name: "nid", arg: 2, scope: !6224, file: !3, line: 92, type: !30)
!6230 = !DILocalVariable(name: "zone_type", scope: !6224, file: !3, line: 94, type: !30)
!6231 = !DILocalVariable(name: "managed_pages", scope: !6224, file: !3, line: 95, type: !47)
!6232 = !DILocalVariable(name: "managed_highpages", scope: !6224, file: !3, line: 96, type: !47)
!6233 = !DILocalVariable(name: "free_highpages", scope: !6224, file: !3, line: 97, type: !47)
!6234 = !DILocalVariable(name: "pgdat", scope: !6224, file: !3, line: 98, type: !6235)
!6235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6236, size: 64)
!6236 = !DIDerivedType(tag: DW_TAG_typedef, name: "pg_data_t", file: !269, line: 1406, baseType: !5304)
!6237 = !DILocation(line: 92, column: 38, scope: !6224)
!6238 = !DILocation(line: 92, column: 47, scope: !6224)
!6239 = !DILocation(line: 94, column: 2, scope: !6224)
!6240 = !DILocation(line: 94, column: 6, scope: !6224)
!6241 = !DILocation(line: 95, column: 2, scope: !6224)
!6242 = !DILocation(line: 95, column: 16, scope: !6224)
!6243 = !DILocation(line: 96, column: 2, scope: !6224)
!6244 = !DILocation(line: 96, column: 16, scope: !6224)
!6245 = !DILocation(line: 97, column: 2, scope: !6224)
!6246 = !DILocation(line: 97, column: 16, scope: !6224)
!6247 = !DILocation(line: 98, column: 2, scope: !6224)
!6248 = !DILocation(line: 98, column: 13, scope: !6224)
!6249 = !DILocation(line: 98, column: 21, scope: !6224)
!6250 = !DILocation(line: 100, column: 17, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6224, file: !3, line: 100, column: 2)
!6252 = !DILocation(line: 100, column: 7, scope: !6251)
!6253 = !DILocation(line: 100, column: 22, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !6251, file: !3, line: 100, column: 2)
!6255 = !DILocation(line: 100, column: 32, scope: !6254)
!6256 = !DILocation(line: 100, column: 2, scope: !6251)
!6257 = !DILocation(line: 101, column: 40, scope: !6254)
!6258 = !DILocation(line: 101, column: 47, scope: !6254)
!6259 = !DILocation(line: 101, column: 58, scope: !6254)
!6260 = !DILocation(line: 101, column: 20, scope: !6254)
!6261 = !DILocation(line: 101, column: 17, scope: !6254)
!6262 = !DILocation(line: 101, column: 3, scope: !6254)
!6263 = !DILocation(line: 100, column: 57, scope: !6254)
!6264 = !DILocation(line: 100, column: 2, scope: !6254)
!6265 = distinct !{!6265, !6256, !6266, !6060, !6061}
!6266 = !DILocation(line: 101, column: 68, scope: !6251)
!6267 = !DILocation(line: 102, column: 18, scope: !6224)
!6268 = !DILocation(line: 102, column: 2, scope: !6224)
!6269 = !DILocation(line: 102, column: 7, scope: !6224)
!6270 = !DILocation(line: 102, column: 16, scope: !6224)
!6271 = !DILocation(line: 103, column: 35, scope: !6224)
!6272 = !DILocation(line: 103, column: 19, scope: !6224)
!6273 = !DILocation(line: 103, column: 2, scope: !6224)
!6274 = !DILocation(line: 103, column: 7, scope: !6224)
!6275 = !DILocation(line: 103, column: 17, scope: !6224)
!6276 = !DILocation(line: 104, column: 42, scope: !6224)
!6277 = !DILocation(line: 104, column: 17, scope: !6224)
!6278 = !DILocation(line: 104, column: 2, scope: !6224)
!6279 = !DILocation(line: 104, column: 7, scope: !6224)
!6280 = !DILocation(line: 104, column: 15, scope: !6224)
!6281 = !DILocation(line: 117, column: 19, scope: !6224)
!6282 = !DILocation(line: 117, column: 2, scope: !6224)
!6283 = !DILocation(line: 117, column: 7, scope: !6224)
!6284 = !DILocation(line: 117, column: 17, scope: !6224)
!6285 = !DILocation(line: 118, column: 18, scope: !6224)
!6286 = !DILocation(line: 118, column: 2, scope: !6224)
!6287 = !DILocation(line: 118, column: 7, scope: !6224)
!6288 = !DILocation(line: 118, column: 16, scope: !6224)
!6289 = !DILocation(line: 120, column: 2, scope: !6224)
!6290 = !DILocation(line: 120, column: 7, scope: !6224)
!6291 = !DILocation(line: 120, column: 16, scope: !6224)
!6292 = !DILocation(line: 121, column: 1, scope: !6224)
!6293 = distinct !DISubprogram(name: "zone_managed_pages", scope: !269, file: !269, line: 1008, type: !6294, scopeLine: 1009, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6296)
!6294 = !DISubroutineType(types: !6295)
!6295 = !{!47, !5294}
!6296 = !{!6297}
!6297 = !DILocalVariable(name: "zone", arg: 1, scope: !6293, file: !269, line: 1008, type: !5294)
!6298 = !DILocation(line: 1008, column: 61, scope: !6293)
!6299 = !DILocation(line: 1010, column: 42, scope: !6293)
!6300 = !DILocation(line: 1010, column: 48, scope: !6293)
!6301 = !DILocation(line: 1010, column: 24, scope: !6293)
!6302 = !DILocation(line: 1010, column: 2, scope: !6293)
!6303 = !DISubprogram(name: "node_page_state", scope: !6103, file: !6103, line: 261, type: !6304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6304 = !DISubroutineType(types: !6305)
!6305 = !{!47, !5303, !284}
!6306 = !DISubprogram(name: "sum_zone_node_page_state", scope: !6103, file: !6103, line: 258, type: !6307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6307 = !DISubroutineType(types: !6308)
!6308 = !{!47, !30, !339}
!6309 = distinct !DISubprogram(name: "__show_mem", scope: !3, file: !3, line: 403, type: !6310, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6313)
!6310 = !DISubroutineType(types: !6311)
!6311 = !{null, !7, !6312, !30}
!6312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!6313 = !{!6314, !6315, !6316, !6317, !6318, !6319, !6320}
!6314 = !DILocalVariable(name: "filter", arg: 1, scope: !6309, file: !3, line: 403, type: !7)
!6315 = !DILocalVariable(name: "nodemask", arg: 2, scope: !6309, file: !3, line: 403, type: !6312)
!6316 = !DILocalVariable(name: "max_zone_idx", arg: 3, scope: !6309, file: !3, line: 403, type: !30)
!6317 = !DILocalVariable(name: "total", scope: !6309, file: !3, line: 405, type: !47)
!6318 = !DILocalVariable(name: "reserved", scope: !6309, file: !3, line: 405, type: !47)
!6319 = !DILocalVariable(name: "highmem", scope: !6309, file: !3, line: 405, type: !47)
!6320 = !DILocalVariable(name: "zone", scope: !6309, file: !3, line: 406, type: !5294)
!6321 = !DILocation(line: 403, column: 30, scope: !6309)
!6322 = !DILocation(line: 403, column: 50, scope: !6309)
!6323 = !DILocation(line: 403, column: 64, scope: !6309)
!6324 = !DILocation(line: 405, column: 2, scope: !6309)
!6325 = !DILocation(line: 405, column: 16, scope: !6309)
!6326 = !DILocation(line: 405, column: 27, scope: !6309)
!6327 = !DILocation(line: 405, column: 41, scope: !6309)
!6328 = !DILocation(line: 406, column: 2, scope: !6309)
!6329 = !DILocation(line: 406, column: 15, scope: !6309)
!6330 = !DILocation(line: 408, column: 2, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 408, column: 2)
!6332 = !DILocation(line: 408, column: 2, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !6331, file: !3, line: 408, column: 2)
!6334 = !DILocation(line: 409, column: 18, scope: !6309)
!6335 = !DILocation(line: 409, column: 26, scope: !6309)
!6336 = !DILocation(line: 409, column: 36, scope: !6309)
!6337 = !DILocation(line: 409, column: 2, scope: !6309)
!6338 = !DILocation(line: 411, column: 2, scope: !6339)
!6339 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 411, column: 2)
!6340 = !DILocation(line: 411, column: 2, scope: !6341)
!6341 = distinct !DILexicalBlock(scope: !6339, file: !3, line: 411, column: 2)
!6342 = !DILocation(line: 411, column: 2, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6341, file: !3, line: 411, column: 2)
!6344 = !DILocation(line: 413, column: 12, scope: !6345)
!6345 = distinct !DILexicalBlock(scope: !6343, file: !3, line: 411, column: 32)
!6346 = !DILocation(line: 413, column: 18, scope: !6345)
!6347 = !DILocation(line: 413, column: 9, scope: !6345)
!6348 = !DILocation(line: 414, column: 15, scope: !6345)
!6349 = !DILocation(line: 414, column: 21, scope: !6345)
!6350 = !DILocation(line: 414, column: 56, scope: !6345)
!6351 = !DILocation(line: 414, column: 37, scope: !6345)
!6352 = !DILocation(line: 414, column: 35, scope: !6345)
!6353 = !DILocation(line: 414, column: 12, scope: !6345)
!6354 = !DILocation(line: 416, column: 18, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6345, file: !3, line: 416, column: 7)
!6356 = !DILocation(line: 416, column: 7, scope: !6355)
!6357 = !DILocation(line: 416, column: 7, scope: !6345)
!6358 = !DILocation(line: 417, column: 15, scope: !6355)
!6359 = !DILocation(line: 417, column: 21, scope: !6355)
!6360 = !DILocation(line: 417, column: 12, scope: !6355)
!6361 = !DILocation(line: 417, column: 4, scope: !6355)
!6362 = distinct !{!6362, !6338, !6363, !6060, !6061}
!6363 = !DILocation(line: 418, column: 2, scope: !6339)
!6364 = !DILocation(line: 420, column: 2, scope: !6365)
!6365 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 420, column: 2)
!6366 = !DILocation(line: 420, column: 2, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 420, column: 2)
!6368 = !DILocation(line: 421, column: 2, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 421, column: 2)
!6370 = !DILocation(line: 421, column: 2, scope: !6371)
!6371 = distinct !DILexicalBlock(scope: !6369, file: !3, line: 421, column: 2)
!6372 = !DILocation(line: 422, column: 2, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 422, column: 2)
!6374 = !DILocation(line: 422, column: 2, scope: !6375)
!6375 = distinct !DILexicalBlock(scope: !6373, file: !3, line: 422, column: 2)
!6376 = !DILocation(line: 429, column: 1, scope: !6309)
!6377 = !DISubprogram(name: "_printk", scope: !6378, file: !6378, line: 153, type: !6379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6378 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6379 = !DISubroutineType(types: !6380)
!6380 = !{!30, !24, null}
!6381 = distinct !DISubprogram(name: "show_free_areas", scope: !3, file: !3, line: 189, type: !6310, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6382)
!6382 = !{!6383, !6384, !6385, !6386, !6387, !6388, !6389, !6390, !6391, !6400, !6402, !6407, !6412, !6414, !6417, !6419, !6421, !6426, !6428, !6429, !6430, !6432, !6436, !6437, !6442}
!6383 = !DILocalVariable(name: "filter", arg: 1, scope: !6381, file: !3, line: 189, type: !7)
!6384 = !DILocalVariable(name: "nodemask", arg: 2, scope: !6381, file: !3, line: 189, type: !6312)
!6385 = !DILocalVariable(name: "max_zone_idx", arg: 3, scope: !6381, file: !3, line: 189, type: !30)
!6386 = !DILocalVariable(name: "free_pcp", scope: !6381, file: !3, line: 191, type: !47)
!6387 = !DILocalVariable(name: "cpu", scope: !6381, file: !3, line: 192, type: !30)
!6388 = !DILocalVariable(name: "nid", scope: !6381, file: !3, line: 192, type: !30)
!6389 = !DILocalVariable(name: "zone", scope: !6381, file: !3, line: 193, type: !5294)
!6390 = !DILocalVariable(name: "pgdat", scope: !6381, file: !3, line: 194, type: !6235)
!6391 = !DILocalVariable(name: "__vpp_verify", scope: !6392, file: !3, line: 203, type: !2858)
!6392 = distinct !DILexicalBlock(scope: !6393, file: !3, line: 203, column: 16)
!6393 = distinct !DILexicalBlock(scope: !6394, file: !3, line: 203, column: 16)
!6394 = distinct !DILexicalBlock(scope: !6395, file: !3, line: 202, column: 3)
!6395 = distinct !DILexicalBlock(scope: !6396, file: !3, line: 202, column: 3)
!6396 = distinct !DILexicalBlock(scope: !6397, file: !3, line: 196, column: 32)
!6397 = distinct !DILexicalBlock(scope: !6398, file: !3, line: 196, column: 2)
!6398 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 196, column: 2)
!6399 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 196, column: 2)
!6400 = !DILocalVariable(name: "__ptr", scope: !6401, file: !3, line: 203, type: !47)
!6401 = distinct !DILexicalBlock(scope: !6393, file: !3, line: 203, column: 16)
!6402 = !DILocalVariable(name: "i", scope: !6403, file: !3, line: 296, type: !30)
!6403 = distinct !DILexicalBlock(scope: !6404, file: !3, line: 295, column: 32)
!6404 = distinct !DILexicalBlock(scope: !6405, file: !3, line: 295, column: 2)
!6405 = distinct !DILexicalBlock(scope: !6406, file: !3, line: 295, column: 2)
!6406 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 295, column: 2)
!6407 = !DILocalVariable(name: "__vpp_verify", scope: !6408, file: !3, line: 305, type: !2858)
!6408 = distinct !DILexicalBlock(scope: !6409, file: !3, line: 305, column: 16)
!6409 = distinct !DILexicalBlock(scope: !6410, file: !3, line: 305, column: 16)
!6410 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 304, column: 3)
!6411 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 304, column: 3)
!6412 = !DILocalVariable(name: "__ptr", scope: !6413, file: !3, line: 305, type: !47)
!6413 = distinct !DILexicalBlock(scope: !6409, file: !3, line: 305, column: 16)
!6414 = !DILocalVariable(name: "pscr_ret__", scope: !6415, file: !3, line: 308, type: !30)
!6415 = distinct !DILexicalBlock(scope: !6416, file: !3, line: 308, column: 3)
!6416 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 308, column: 3)
!6417 = !DILocalVariable(name: "__vpp_verify", scope: !6418, file: !3, line: 308, type: !2858)
!6418 = distinct !DILexicalBlock(scope: !6415, file: !3, line: 308, column: 3)
!6419 = !DILocalVariable(name: "pfo_val__", scope: !6420, file: !3, line: 308, type: !420)
!6420 = distinct !DILexicalBlock(scope: !6415, file: !3, line: 308, column: 3)
!6421 = !DILocalVariable(name: "order", scope: !6422, file: !3, line: 357, type: !7)
!6422 = distinct !DILexicalBlock(scope: !6423, file: !3, line: 356, column: 32)
!6423 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 356, column: 2)
!6424 = distinct !DILexicalBlock(scope: !6425, file: !3, line: 356, column: 2)
!6425 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 356, column: 2)
!6426 = !DILocalVariable(name: "nr", scope: !6422, file: !3, line: 358, type: !6427)
!6427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 704, elements: !5403)
!6428 = !DILocalVariable(name: "flags", scope: !6422, file: !3, line: 358, type: !47)
!6429 = !DILocalVariable(name: "total", scope: !6422, file: !3, line: 358, type: !47)
!6430 = !DILocalVariable(name: "types", scope: !6422, file: !3, line: 359, type: !6431)
!6431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 88, elements: !5403)
!6432 = !DILocalVariable(name: "__dummy", scope: !6433, file: !3, line: 368, type: !47)
!6433 = distinct !DILexicalBlock(scope: !6434, file: !3, line: 368, column: 3)
!6434 = distinct !DILexicalBlock(scope: !6435, file: !3, line: 368, column: 3)
!6435 = distinct !DILexicalBlock(scope: !6422, file: !3, line: 368, column: 3)
!6436 = !DILocalVariable(name: "__dummy2", scope: !6433, file: !3, line: 368, type: !47)
!6437 = !DILocalVariable(name: "area", scope: !6438, file: !3, line: 370, type: !6441)
!6438 = distinct !DILexicalBlock(scope: !6439, file: !3, line: 369, column: 52)
!6439 = distinct !DILexicalBlock(scope: !6440, file: !3, line: 369, column: 3)
!6440 = distinct !DILexicalBlock(scope: !6422, file: !3, line: 369, column: 3)
!6441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5398, size: 64)
!6442 = !DILocalVariable(name: "type", scope: !6438, file: !3, line: 371, type: !30)
!6443 = !DILocation(line: 189, column: 42, scope: !6381)
!6444 = !DILocation(line: 189, column: 62, scope: !6381)
!6445 = !DILocation(line: 189, column: 76, scope: !6381)
!6446 = !DILocation(line: 191, column: 2, scope: !6381)
!6447 = !DILocation(line: 191, column: 16, scope: !6381)
!6448 = !DILocation(line: 192, column: 2, scope: !6381)
!6449 = !DILocation(line: 192, column: 6, scope: !6381)
!6450 = !DILocation(line: 192, column: 11, scope: !6381)
!6451 = !DILocation(line: 193, column: 2, scope: !6381)
!6452 = !DILocation(line: 193, column: 15, scope: !6381)
!6453 = !DILocation(line: 194, column: 2, scope: !6381)
!6454 = !DILocation(line: 194, column: 13, scope: !6381)
!6455 = !DILocation(line: 196, column: 2, scope: !6399)
!6456 = !DILocation(line: 196, column: 2, scope: !6398)
!6457 = !DILocation(line: 196, column: 2, scope: !6397)
!6458 = !DILocation(line: 197, column: 7, scope: !6459)
!6459 = distinct !DILexicalBlock(scope: !6396, file: !3, line: 197, column: 7)
!6460 = !DILocation(line: 197, column: 24, scope: !6459)
!6461 = !DILocation(line: 197, column: 22, scope: !6459)
!6462 = !DILocation(line: 197, column: 7, scope: !6396)
!6463 = !DILocation(line: 198, column: 4, scope: !6459)
!6464 = !DILocation(line: 199, column: 26, scope: !6465)
!6465 = distinct !DILexicalBlock(scope: !6396, file: !3, line: 199, column: 7)
!6466 = !DILocation(line: 199, column: 46, scope: !6465)
!6467 = !DILocation(line: 199, column: 34, scope: !6465)
!6468 = !DILocation(line: 199, column: 53, scope: !6465)
!6469 = !DILocation(line: 199, column: 7, scope: !6465)
!6470 = !DILocation(line: 199, column: 7, scope: !6396)
!6471 = !DILocation(line: 200, column: 4, scope: !6465)
!6472 = !DILocation(line: 202, column: 3, scope: !6395)
!6473 = !DILocation(line: 202, column: 3, scope: !6394)
!6474 = !DILocation(line: 203, column: 16, scope: !6393)
!6475 = !DILocation(line: 203, column: 16, scope: !6392)
!6476 = !DILocation(line: 203, column: 16, scope: !6401)
!6477 = !DILocation(line: 203, column: 57, scope: !6394)
!6478 = !DILocation(line: 203, column: 16, scope: !6394)
!6479 = !DILocation(line: 203, column: 13, scope: !6394)
!6480 = !DILocation(line: 203, column: 4, scope: !6394)
!6481 = distinct !{!6481, !6472, !6482, !6060, !6061}
!6482 = !DILocation(line: 203, column: 57, scope: !6395)
!6483 = distinct !{!6483, !6455, !6484, !6060, !6061}
!6484 = !DILocation(line: 204, column: 2, scope: !6399)
!6485 = !DILocation(line: 206, column: 2, scope: !6486)
!6486 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 206, column: 2)
!6487 = !DILocation(line: 206, column: 2, scope: !6488)
!6488 = distinct !DILexicalBlock(scope: !6486, file: !3, line: 206, column: 2)
!6489 = !DILocation(line: 235, column: 2, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 235, column: 2)
!6491 = !DILocation(line: 235, column: 2, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6490, file: !3, line: 235, column: 2)
!6493 = !DILocation(line: 236, column: 26, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6495, file: !3, line: 236, column: 7)
!6495 = distinct !DILexicalBlock(scope: !6492, file: !3, line: 235, column: 31)
!6496 = !DILocation(line: 236, column: 34, scope: !6494)
!6497 = !DILocation(line: 236, column: 41, scope: !6494)
!6498 = !DILocation(line: 236, column: 50, scope: !6494)
!6499 = !DILocation(line: 236, column: 7, scope: !6494)
!6500 = !DILocation(line: 236, column: 7, scope: !6495)
!6501 = !DILocation(line: 237, column: 4, scope: !6494)
!6502 = !DILocation(line: 238, column: 31, scope: !6503)
!6503 = distinct !DILexicalBlock(scope: !6495, file: !3, line: 238, column: 7)
!6504 = !DILocation(line: 238, column: 38, scope: !6503)
!6505 = !DILocation(line: 238, column: 8, scope: !6503)
!6506 = !DILocation(line: 238, column: 7, scope: !6495)
!6507 = !DILocation(line: 239, column: 4, scope: !6503)
!6508 = !DILocation(line: 241, column: 3, scope: !6509)
!6509 = distinct !DILexicalBlock(scope: !6495, file: !3, line: 241, column: 3)
!6510 = !DILocation(line: 241, column: 3, scope: !6511)
!6511 = distinct !DILexicalBlock(scope: !6509, file: !3, line: 241, column: 3)
!6512 = !DILocation(line: 293, column: 2, scope: !6495)
!6513 = distinct !{!6513, !6489, !6514, !6060, !6061}
!6514 = !DILocation(line: 293, column: 2, scope: !6490)
!6515 = !DILocation(line: 295, column: 2, scope: !6406)
!6516 = !DILocation(line: 295, column: 2, scope: !6405)
!6517 = !DILocation(line: 295, column: 2, scope: !6404)
!6518 = !DILocation(line: 296, column: 3, scope: !6403)
!6519 = !DILocation(line: 296, column: 7, scope: !6403)
!6520 = !DILocation(line: 298, column: 7, scope: !6521)
!6521 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 298, column: 7)
!6522 = !DILocation(line: 298, column: 24, scope: !6521)
!6523 = !DILocation(line: 298, column: 22, scope: !6521)
!6524 = !DILocation(line: 298, column: 7, scope: !6403)
!6525 = !DILocation(line: 299, column: 4, scope: !6521)
!6526 = !DILocation(line: 300, column: 26, scope: !6527)
!6527 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 300, column: 7)
!6528 = !DILocation(line: 300, column: 46, scope: !6527)
!6529 = !DILocation(line: 300, column: 34, scope: !6527)
!6530 = !DILocation(line: 300, column: 53, scope: !6527)
!6531 = !DILocation(line: 300, column: 7, scope: !6527)
!6532 = !DILocation(line: 300, column: 7, scope: !6403)
!6533 = !DILocation(line: 301, column: 4, scope: !6527)
!6534 = !DILocation(line: 303, column: 12, scope: !6403)
!6535 = !DILocation(line: 304, column: 3, scope: !6411)
!6536 = !DILocation(line: 304, column: 3, scope: !6410)
!6537 = !DILocation(line: 305, column: 16, scope: !6409)
!6538 = !DILocation(line: 305, column: 16, scope: !6408)
!6539 = !DILocation(line: 305, column: 16, scope: !6413)
!6540 = !DILocation(line: 305, column: 57, scope: !6410)
!6541 = !DILocation(line: 305, column: 16, scope: !6410)
!6542 = !DILocation(line: 305, column: 13, scope: !6410)
!6543 = !DILocation(line: 305, column: 4, scope: !6410)
!6544 = distinct !{!6544, !6535, !6545, !6060, !6061}
!6545 = !DILocation(line: 305, column: 57, scope: !6411)
!6546 = !DILocation(line: 307, column: 13, scope: !6403)
!6547 = !DILocation(line: 307, column: 3, scope: !6403)
!6548 = !DILocation(line: 308, column: 3, scope: !6416)
!6549 = !DILocation(line: 308, column: 3, scope: !6550)
!6550 = distinct !DILexicalBlock(scope: !6416, file: !3, line: 308, column: 3)
!6551 = !DILocation(line: 308, column: 3, scope: !6415)
!6552 = !DILocation(line: 308, column: 3, scope: !6418)
!6553 = !DILocation(line: 308, column: 3, scope: !6420)
!6554 = !{i64 2156593371}
!6555 = !DILocation(line: 350, column: 3, scope: !6556)
!6556 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 350, column: 3)
!6557 = !DILocation(line: 350, column: 3, scope: !6558)
!6558 = distinct !DILexicalBlock(scope: !6556, file: !3, line: 350, column: 3)
!6559 = !DILocation(line: 351, column: 10, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 351, column: 3)
!6561 = !DILocation(line: 351, column: 8, scope: !6560)
!6562 = !DILocation(line: 351, column: 15, scope: !6563)
!6563 = distinct !DILexicalBlock(scope: !6560, file: !3, line: 351, column: 3)
!6564 = !DILocation(line: 351, column: 17, scope: !6563)
!6565 = !DILocation(line: 351, column: 3, scope: !6560)
!6566 = !DILocation(line: 352, column: 4, scope: !6567)
!6567 = distinct !DILexicalBlock(scope: !6563, file: !3, line: 352, column: 4)
!6568 = !DILocation(line: 352, column: 4, scope: !6569)
!6569 = distinct !DILexicalBlock(scope: !6567, file: !3, line: 352, column: 4)
!6570 = !DILocation(line: 352, column: 4, scope: !6563)
!6571 = !DILocation(line: 351, column: 34, scope: !6563)
!6572 = !DILocation(line: 351, column: 3, scope: !6563)
!6573 = distinct !{!6573, !6565, !6574, !6060, !6061}
!6574 = !DILocation(line: 352, column: 4, scope: !6560)
!6575 = !DILocation(line: 353, column: 3, scope: !6576)
!6576 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 353, column: 3)
!6577 = !DILocation(line: 353, column: 3, scope: !6578)
!6578 = distinct !DILexicalBlock(scope: !6576, file: !3, line: 353, column: 3)
!6579 = !DILocation(line: 354, column: 2, scope: !6404)
!6580 = distinct !{!6580, !6515, !6581, !6060, !6061}
!6581 = !DILocation(line: 354, column: 2, scope: !6406)
!6582 = !DILocation(line: 356, column: 2, scope: !6425)
!6583 = !DILocation(line: 356, column: 2, scope: !6424)
!6584 = !DILocation(line: 356, column: 2, scope: !6423)
!6585 = !DILocation(line: 357, column: 3, scope: !6422)
!6586 = !DILocation(line: 357, column: 16, scope: !6422)
!6587 = !DILocation(line: 358, column: 3, scope: !6422)
!6588 = !DILocation(line: 358, column: 17, scope: !6422)
!6589 = !DILocation(line: 358, column: 37, scope: !6422)
!6590 = !DILocation(line: 358, column: 44, scope: !6422)
!6591 = !DILocation(line: 359, column: 3, scope: !6422)
!6592 = !DILocation(line: 359, column: 17, scope: !6422)
!6593 = !DILocation(line: 361, column: 7, scope: !6594)
!6594 = distinct !DILexicalBlock(scope: !6422, file: !3, line: 361, column: 7)
!6595 = !DILocation(line: 361, column: 24, scope: !6594)
!6596 = !DILocation(line: 361, column: 22, scope: !6594)
!6597 = !DILocation(line: 361, column: 7, scope: !6422)
!6598 = !DILocation(line: 362, column: 4, scope: !6594)
!6599 = !DILocation(line: 363, column: 26, scope: !6600)
!6600 = distinct !DILexicalBlock(scope: !6422, file: !3, line: 363, column: 7)
!6601 = !DILocation(line: 363, column: 46, scope: !6600)
!6602 = !DILocation(line: 363, column: 34, scope: !6600)
!6603 = !DILocation(line: 363, column: 53, scope: !6600)
!6604 = !DILocation(line: 363, column: 7, scope: !6600)
!6605 = !DILocation(line: 363, column: 7, scope: !6422)
!6606 = !DILocation(line: 364, column: 4, scope: !6600)
!6607 = !DILocation(line: 365, column: 13, scope: !6422)
!6608 = !DILocation(line: 365, column: 3, scope: !6422)
!6609 = !DILocation(line: 366, column: 3, scope: !6610)
!6610 = distinct !DILexicalBlock(scope: !6422, file: !3, line: 366, column: 3)
!6611 = !DILocation(line: 366, column: 3, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !6610, file: !3, line: 366, column: 3)
!6613 = !DILocation(line: 368, column: 3, scope: !6422)
!6614 = !DILocation(line: 368, column: 3, scope: !6435)
!6615 = !DILocation(line: 368, column: 3, scope: !6433)
!6616 = !DILocation(line: 368, column: 3, scope: !6434)
!6617 = !DILocation(line: 369, column: 14, scope: !6440)
!6618 = !DILocation(line: 369, column: 8, scope: !6440)
!6619 = !DILocation(line: 369, column: 19, scope: !6439)
!6620 = !DILocation(line: 369, column: 25, scope: !6439)
!6621 = !DILocation(line: 369, column: 3, scope: !6440)
!6622 = !DILocation(line: 370, column: 4, scope: !6438)
!6623 = !DILocation(line: 370, column: 22, scope: !6438)
!6624 = !DILocation(line: 370, column: 30, scope: !6438)
!6625 = !DILocation(line: 370, column: 36, scope: !6438)
!6626 = !DILocation(line: 370, column: 46, scope: !6438)
!6627 = !DILocation(line: 371, column: 4, scope: !6438)
!6628 = !DILocation(line: 371, column: 8, scope: !6438)
!6629 = !DILocation(line: 373, column: 16, scope: !6438)
!6630 = !DILocation(line: 373, column: 22, scope: !6438)
!6631 = !DILocation(line: 373, column: 7, scope: !6438)
!6632 = !DILocation(line: 373, column: 4, scope: !6438)
!6633 = !DILocation(line: 373, column: 14, scope: !6438)
!6634 = !DILocation(line: 374, column: 16, scope: !6438)
!6635 = !DILocation(line: 374, column: 13, scope: !6438)
!6636 = !DILocation(line: 374, column: 26, scope: !6438)
!6637 = !DILocation(line: 374, column: 23, scope: !6438)
!6638 = !DILocation(line: 374, column: 10, scope: !6438)
!6639 = !DILocation(line: 376, column: 10, scope: !6438)
!6640 = !DILocation(line: 376, column: 4, scope: !6438)
!6641 = !DILocation(line: 376, column: 17, scope: !6438)
!6642 = !DILocation(line: 377, column: 14, scope: !6643)
!6643 = distinct !DILexicalBlock(scope: !6438, file: !3, line: 377, column: 4)
!6644 = !DILocation(line: 377, column: 9, scope: !6643)
!6645 = !DILocation(line: 377, column: 19, scope: !6646)
!6646 = distinct !DILexicalBlock(scope: !6643, file: !3, line: 377, column: 4)
!6647 = !DILocation(line: 377, column: 24, scope: !6646)
!6648 = !DILocation(line: 377, column: 4, scope: !6643)
!6649 = !DILocation(line: 378, column: 26, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6651, file: !3, line: 378, column: 9)
!6651 = distinct !DILexicalBlock(scope: !6646, file: !3, line: 377, column: 49)
!6652 = !DILocation(line: 378, column: 32, scope: !6650)
!6653 = !DILocation(line: 378, column: 10, scope: !6650)
!6654 = !DILocation(line: 378, column: 9, scope: !6651)
!6655 = !DILocation(line: 379, column: 27, scope: !6650)
!6656 = !DILocation(line: 379, column: 24, scope: !6650)
!6657 = !DILocation(line: 379, column: 12, scope: !6650)
!6658 = !DILocation(line: 379, column: 6, scope: !6650)
!6659 = !DILocation(line: 379, column: 19, scope: !6650)
!6660 = !DILocation(line: 380, column: 4, scope: !6651)
!6661 = !DILocation(line: 377, column: 45, scope: !6646)
!6662 = !DILocation(line: 377, column: 4, scope: !6646)
!6663 = distinct !{!6663, !6648, !6664, !6060, !6061}
!6664 = !DILocation(line: 380, column: 4, scope: !6643)
!6665 = !DILocation(line: 381, column: 3, scope: !6439)
!6666 = !DILocation(line: 381, column: 3, scope: !6438)
!6667 = !DILocation(line: 369, column: 48, scope: !6439)
!6668 = !DILocation(line: 369, column: 3, scope: !6439)
!6669 = distinct !{!6669, !6621, !6670, !6060, !6061}
!6670 = !DILocation(line: 381, column: 3, scope: !6440)
!6671 = !DILocation(line: 382, column: 27, scope: !6422)
!6672 = !DILocation(line: 382, column: 33, scope: !6422)
!6673 = !DILocation(line: 382, column: 39, scope: !6422)
!6674 = !DILocation(line: 382, column: 3, scope: !6422)
!6675 = !DILocation(line: 383, column: 14, scope: !6676)
!6676 = distinct !DILexicalBlock(scope: !6422, file: !3, line: 383, column: 3)
!6677 = !DILocation(line: 383, column: 8, scope: !6676)
!6678 = !DILocation(line: 383, column: 19, scope: !6679)
!6679 = distinct !DILexicalBlock(scope: !6676, file: !3, line: 383, column: 3)
!6680 = !DILocation(line: 383, column: 25, scope: !6679)
!6681 = !DILocation(line: 383, column: 3, scope: !6676)
!6682 = !DILocation(line: 384, column: 4, scope: !6683)
!6683 = distinct !DILexicalBlock(scope: !6684, file: !3, line: 384, column: 4)
!6684 = distinct !DILexicalBlock(scope: !6679, file: !3, line: 383, column: 52)
!6685 = !DILocation(line: 384, column: 4, scope: !6686)
!6686 = distinct !DILexicalBlock(scope: !6683, file: !3, line: 384, column: 4)
!6687 = !DILocation(line: 386, column: 11, scope: !6688)
!6688 = distinct !DILexicalBlock(scope: !6684, file: !3, line: 386, column: 8)
!6689 = !DILocation(line: 386, column: 8, scope: !6688)
!6690 = !DILocation(line: 386, column: 8, scope: !6684)
!6691 = !DILocation(line: 387, column: 32, scope: !6688)
!6692 = !DILocation(line: 387, column: 26, scope: !6688)
!6693 = !DILocation(line: 387, column: 5, scope: !6688)
!6694 = !DILocation(line: 388, column: 3, scope: !6684)
!6695 = !DILocation(line: 383, column: 48, scope: !6679)
!6696 = !DILocation(line: 383, column: 3, scope: !6679)
!6697 = distinct !{!6697, !6681, !6698, !6060, !6061}
!6698 = !DILocation(line: 388, column: 3, scope: !6676)
!6699 = !DILocation(line: 389, column: 3, scope: !6700)
!6700 = distinct !DILexicalBlock(scope: !6422, file: !3, line: 389, column: 3)
!6701 = !DILocation(line: 389, column: 3, scope: !6702)
!6702 = distinct !DILexicalBlock(scope: !6700, file: !3, line: 389, column: 3)
!6703 = !DILocation(line: 390, column: 2, scope: !6423)
!6704 = distinct !{!6704, !6582, !6705, !6060, !6061}
!6705 = !DILocation(line: 390, column: 2, scope: !6425)
!6706 = !DILocation(line: 392, column: 2, scope: !6707)
!6707 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 392, column: 2)
!6708 = !DILocation(line: 392, column: 2, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !6707, file: !3, line: 392, column: 2)
!6710 = !DILocation(line: 393, column: 26, scope: !6711)
!6711 = distinct !DILexicalBlock(scope: !6712, file: !3, line: 393, column: 7)
!6712 = distinct !DILexicalBlock(scope: !6709, file: !3, line: 392, column: 28)
!6713 = !DILocation(line: 393, column: 34, scope: !6711)
!6714 = !DILocation(line: 393, column: 39, scope: !6711)
!6715 = !DILocation(line: 393, column: 7, scope: !6711)
!6716 = !DILocation(line: 393, column: 7, scope: !6712)
!6717 = !DILocation(line: 394, column: 4, scope: !6711)
!6718 = !DILocation(line: 395, column: 29, scope: !6712)
!6719 = !DILocation(line: 395, column: 3, scope: !6712)
!6720 = !DILocation(line: 396, column: 2, scope: !6712)
!6721 = distinct !{!6721, !6706, !6722, !6060, !6061}
!6722 = !DILocation(line: 396, column: 2, scope: !6707)
!6723 = !DILocation(line: 398, column: 2, scope: !6724)
!6724 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 398, column: 2)
!6725 = !DILocation(line: 398, column: 2, scope: !6726)
!6726 = distinct !DILexicalBlock(scope: !6724, file: !3, line: 398, column: 2)
!6727 = !DILocation(line: 400, column: 2, scope: !6381)
!6728 = !DILocation(line: 401, column: 1, scope: !6381)
!6729 = distinct !DISubprogram(name: "populated_zone", scope: !269, file: !269, line: 1490, type: !6730, scopeLine: 1491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6732)
!6730 = !DISubroutineType(types: !6731)
!6731 = !{!967, !5294}
!6732 = !{!6733}
!6733 = !DILocalVariable(name: "zone", arg: 1, scope: !6729, file: !269, line: 1490, type: !5294)
!6734 = !DILocation(line: 1490, column: 48, scope: !6729)
!6735 = !DILocation(line: 1492, column: 9, scope: !6729)
!6736 = !DILocation(line: 1492, column: 15, scope: !6729)
!6737 = !DILocation(line: 1492, column: 2, scope: !6729)
!6738 = distinct !DISubprogram(name: "is_highmem", scope: !269, file: !269, line: 1533, type: !6739, scopeLine: 1534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6741)
!6739 = !DISubroutineType(types: !6740)
!6740 = !{!30, !5294}
!6741 = !{!6742}
!6742 = !DILocalVariable(name: "zone", arg: 1, scope: !6738, file: !269, line: 1533, type: !5294)
!6743 = !DILocation(line: 1533, column: 43, scope: !6738)
!6744 = !DILocation(line: 1535, column: 24, scope: !6738)
!6745 = !DILocation(line: 1535, column: 9, scope: !6738)
!6746 = !DILocation(line: 1535, column: 2, scope: !6738)
!6747 = distinct !DISubprogram(name: "atomic_long_read", scope: !6748, file: !6748, line: 3158, type: !6749, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6753)
!6748 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6749 = !DISubroutineType(types: !6750)
!6750 = !{!1198, !6751}
!6751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6752, size: 64)
!6752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !769)
!6753 = !{!6754}
!6754 = !DILocalVariable(name: "v", arg: 1, scope: !6747, file: !6748, line: 3158, type: !6751)
!6755 = !DILocation(line: 3158, column: 39, scope: !6747)
!6756 = !DILocation(line: 3160, column: 25, scope: !6747)
!6757 = !DILocation(line: 3160, column: 2, scope: !6747)
!6758 = !DILocation(line: 3161, column: 30, scope: !6747)
!6759 = !DILocation(line: 3161, column: 9, scope: !6747)
!6760 = !DILocation(line: 3161, column: 2, scope: !6747)
!6761 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6762, file: !6762, line: 66, type: !6763, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6768)
!6762 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6763 = !DISubroutineType(types: !6764)
!6764 = !{null, !6765, !43}
!6765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6766, size: 64)
!6766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6767)
!6767 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6768 = !{!6769, !6770}
!6769 = !DILocalVariable(name: "v", arg: 1, scope: !6761, file: !6762, line: 66, type: !6765)
!6770 = !DILocalVariable(name: "size", arg: 2, scope: !6761, file: !6762, line: 66, type: !43)
!6771 = !DILocation(line: 66, column: 73, scope: !6761)
!6772 = !DILocation(line: 66, column: 83, scope: !6761)
!6773 = !DILocation(line: 68, column: 19, scope: !6761)
!6774 = !DILocation(line: 68, column: 22, scope: !6761)
!6775 = !DILocation(line: 68, column: 2, scope: !6761)
!6776 = !DILocation(line: 69, column: 2, scope: !6761)
!6777 = !DILocation(line: 70, column: 1, scope: !6761)
!6778 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !770, file: !770, line: 35, type: !6749, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6779)
!6779 = !{!6780}
!6780 = !DILocalVariable(name: "v", arg: 1, scope: !6778, file: !770, line: 35, type: !6751)
!6781 = !DILocation(line: 35, column: 43, scope: !6778)
!6782 = !DILocation(line: 38, column: 27, scope: !6778)
!6783 = !DILocation(line: 38, column: 9, scope: !6778)
!6784 = !DILocation(line: 38, column: 2, scope: !6778)
!6785 = distinct !DISubprogram(name: "kasan_check_read", scope: !6786, file: !6786, line: 40, type: !6787, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6789)
!6786 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6787 = !DISubroutineType(types: !6788)
!6788 = !{!967, !6765, !7}
!6789 = !{!6790, !6791}
!6790 = !DILocalVariable(name: "p", arg: 1, scope: !6785, file: !6786, line: 40, type: !6765)
!6791 = !DILocalVariable(name: "size", arg: 2, scope: !6785, file: !6786, line: 40, type: !7)
!6792 = !DILocation(line: 40, column: 58, scope: !6785)
!6793 = !DILocation(line: 40, column: 74, scope: !6785)
!6794 = !DILocation(line: 42, column: 2, scope: !6785)
!6795 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6796, file: !6796, line: 229, type: !6797, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6799)
!6796 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6797 = !DISubroutineType(types: !6798)
!6798 = !{null, !6765, !43, !30}
!6799 = !{!6800, !6801, !6802}
!6800 = !DILocalVariable(name: "ptr", arg: 1, scope: !6795, file: !6796, line: 229, type: !6765)
!6801 = !DILocalVariable(name: "size", arg: 2, scope: !6795, file: !6796, line: 229, type: !43)
!6802 = !DILocalVariable(name: "type", arg: 3, scope: !6795, file: !6796, line: 230, type: !30)
!6803 = !DILocation(line: 229, column: 60, scope: !6795)
!6804 = !DILocation(line: 229, column: 72, scope: !6795)
!6805 = !DILocation(line: 230, column: 15, scope: !6795)
!6806 = !DILocation(line: 230, column: 23, scope: !6795)
!6807 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !6808, file: !6808, line: 2554, type: !6809, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6813)
!6808 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6809 = !DISubroutineType(types: !6810)
!6810 = !{!489, !6811}
!6811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6812, size: 64)
!6812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!6813 = !{!6814}
!6814 = !DILocalVariable(name: "v", arg: 1, scope: !6807, file: !6808, line: 2554, type: !6811)
!6815 = !DILocation(line: 2554, column: 37, scope: !6807)
!6816 = !DILocation(line: 2556, column: 28, scope: !6807)
!6817 = !DILocation(line: 2556, column: 9, scope: !6807)
!6818 = !DILocation(line: 2556, column: 2, scope: !6807)
!6819 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !6820, file: !6820, line: 13, type: !6809, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6821)
!6820 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!6821 = !{!6822}
!6822 = !DILocalVariable(name: "v", arg: 1, scope: !6819, file: !6820, line: 13, type: !6811)
!6823 = !DILocation(line: 13, column: 65, scope: !6819)
!6824 = !DILocation(line: 15, column: 9, scope: !6819)
!6825 = !DILocation(line: 15, column: 2, scope: !6819)
!6826 = distinct !DISubprogram(name: "show_mem_node_skip", scope: !3, file: !3, line: 128, type: !6827, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6829)
!6827 = !DISubroutineType(types: !6828)
!6828 = !{!967, !7, !30, !6312}
!6829 = !{!6830, !6831, !6832}
!6830 = !DILocalVariable(name: "flags", arg: 1, scope: !6826, file: !3, line: 128, type: !7)
!6831 = !DILocalVariable(name: "nid", arg: 2, scope: !6826, file: !3, line: 128, type: !30)
!6832 = !DILocalVariable(name: "nodemask", arg: 3, scope: !6826, file: !3, line: 128, type: !6312)
!6833 = !DILocation(line: 128, column: 45, scope: !6826)
!6834 = !DILocation(line: 128, column: 56, scope: !6826)
!6835 = !DILocation(line: 128, column: 73, scope: !6826)
!6836 = !DILocation(line: 130, column: 8, scope: !6837)
!6837 = distinct !DILexicalBlock(scope: !6826, file: !3, line: 130, column: 6)
!6838 = !DILocation(line: 130, column: 14, scope: !6837)
!6839 = !DILocation(line: 130, column: 6, scope: !6826)
!6840 = !DILocation(line: 131, column: 3, scope: !6837)
!6841 = !DILocation(line: 138, column: 7, scope: !6842)
!6842 = distinct !DILexicalBlock(scope: !6826, file: !3, line: 138, column: 6)
!6843 = !DILocation(line: 138, column: 6, scope: !6826)
!6844 = !DILocation(line: 139, column: 15, scope: !6842)
!6845 = !DILocation(line: 139, column: 12, scope: !6842)
!6846 = !DILocation(line: 139, column: 3, scope: !6842)
!6847 = !DILocation(line: 141, column: 10, scope: !6826)
!6848 = !DILocation(line: 141, column: 9, scope: !6826)
!6849 = !DILocation(line: 141, column: 2, scope: !6826)
!6850 = !DILocation(line: 142, column: 1, scope: !6826)
!6851 = distinct !DISubprogram(name: "zone_to_nid", scope: !269, file: !269, line: 1496, type: !6739, scopeLine: 1497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6852)
!6852 = !{!6853}
!6853 = !DILocalVariable(name: "zone", arg: 1, scope: !6851, file: !269, line: 1496, type: !5294)
!6854 = !DILocation(line: 1496, column: 44, scope: !6851)
!6855 = !DILocation(line: 1498, column: 9, scope: !6851)
!6856 = !DILocation(line: 1498, column: 15, scope: !6851)
!6857 = !DILocation(line: 1498, column: 2, scope: !6851)
!6858 = distinct !DISubprogram(name: "find_next_bit", scope: !6859, file: !6859, line: 54, type: !6860, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6862)
!6859 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!6860 = !DISubroutineType(types: !6861)
!6861 = !{!47, !406, !47, !47}
!6862 = !{!6863, !6864, !6865, !6866}
!6863 = !DILocalVariable(name: "addr", arg: 1, scope: !6858, file: !6859, line: 54, type: !406)
!6864 = !DILocalVariable(name: "size", arg: 2, scope: !6858, file: !6859, line: 54, type: !47)
!6865 = !DILocalVariable(name: "offset", arg: 3, scope: !6858, file: !6859, line: 55, type: !47)
!6866 = !DILocalVariable(name: "val", scope: !6867, file: !6859, line: 58, type: !47)
!6867 = distinct !DILexicalBlock(scope: !6868, file: !6859, line: 57, column: 31)
!6868 = distinct !DILexicalBlock(scope: !6858, file: !6859, line: 57, column: 6)
!6869 = !DILocation(line: 54, column: 50, scope: !6858)
!6870 = !DILocation(line: 54, column: 70, scope: !6858)
!6871 = !DILocation(line: 55, column: 22, scope: !6858)
!6872 = !DILocation(line: 57, column: 6, scope: !6868)
!6873 = !DILocation(line: 57, column: 6, scope: !6858)
!6874 = !DILocation(line: 58, column: 3, scope: !6867)
!6875 = !DILocation(line: 58, column: 17, scope: !6867)
!6876 = !DILocation(line: 60, column: 7, scope: !6877)
!6877 = distinct !DILexicalBlock(scope: !6867, file: !6859, line: 60, column: 7)
!6878 = !DILocation(line: 60, column: 7, scope: !6867)
!6879 = !DILocation(line: 61, column: 11, scope: !6877)
!6880 = !DILocation(line: 61, column: 4, scope: !6877)
!6881 = !DILocation(line: 63, column: 10, scope: !6867)
!6882 = !DILocation(line: 63, column: 9, scope: !6867)
!6883 = !DILocation(line: 63, column: 17, scope: !6867)
!6884 = !DILocation(line: 63, column: 15, scope: !6867)
!6885 = !DILocation(line: 63, column: 7, scope: !6867)
!6886 = !DILocation(line: 64, column: 10, scope: !6867)
!6887 = !DILocation(line: 64, column: 16, scope: !6867)
!6888 = !DILocation(line: 64, column: 29, scope: !6867)
!6889 = !DILocation(line: 64, column: 3, scope: !6867)
!6890 = !DILocation(line: 65, column: 2, scope: !6868)
!6891 = !DILocation(line: 67, column: 24, scope: !6858)
!6892 = !DILocation(line: 67, column: 30, scope: !6858)
!6893 = !DILocation(line: 67, column: 36, scope: !6858)
!6894 = !DILocation(line: 67, column: 9, scope: !6858)
!6895 = !DILocation(line: 67, column: 2, scope: !6858)
!6896 = !DILocation(line: 68, column: 1, scope: !6858)
!6897 = distinct !DISubprogram(name: "node_has_managed_zones", scope: !3, file: !3, line: 171, type: !6898, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6900)
!6898 = !DISubroutineType(types: !6899)
!6899 = !{!967, !6235, !30}
!6900 = !{!6901, !6902, !6903}
!6901 = !DILocalVariable(name: "pgdat", arg: 1, scope: !6897, file: !3, line: 171, type: !6235)
!6902 = !DILocalVariable(name: "max_zone_idx", arg: 2, scope: !6897, file: !3, line: 171, type: !30)
!6903 = !DILocalVariable(name: "zone_idx", scope: !6897, file: !3, line: 173, type: !30)
!6904 = !DILocation(line: 171, column: 47, scope: !6897)
!6905 = !DILocation(line: 171, column: 58, scope: !6897)
!6906 = !DILocation(line: 173, column: 2, scope: !6897)
!6907 = !DILocation(line: 173, column: 6, scope: !6897)
!6908 = !DILocation(line: 174, column: 16, scope: !6909)
!6909 = distinct !DILexicalBlock(scope: !6897, file: !3, line: 174, column: 2)
!6910 = !DILocation(line: 174, column: 7, scope: !6909)
!6911 = !DILocation(line: 174, column: 21, scope: !6912)
!6912 = distinct !DILexicalBlock(scope: !6909, file: !3, line: 174, column: 2)
!6913 = !DILocation(line: 174, column: 33, scope: !6912)
!6914 = !DILocation(line: 174, column: 30, scope: !6912)
!6915 = !DILocation(line: 174, column: 2, scope: !6909)
!6916 = !DILocation(line: 175, column: 26, scope: !6917)
!6917 = distinct !DILexicalBlock(scope: !6912, file: !3, line: 175, column: 7)
!6918 = !DILocation(line: 175, column: 33, scope: !6917)
!6919 = !DILocation(line: 175, column: 46, scope: !6917)
!6920 = !DILocation(line: 175, column: 44, scope: !6917)
!6921 = !DILocation(line: 175, column: 7, scope: !6917)
!6922 = !DILocation(line: 175, column: 7, scope: !6912)
!6923 = !DILocation(line: 176, column: 4, scope: !6917)
!6924 = !DILocation(line: 175, column: 54, scope: !6917)
!6925 = !DILocation(line: 174, column: 55, scope: !6912)
!6926 = !DILocation(line: 174, column: 2, scope: !6912)
!6927 = distinct !{!6927, !6915, !6928, !6060, !6061}
!6928 = !DILocation(line: 176, column: 11, scope: !6909)
!6929 = !DILocation(line: 177, column: 2, scope: !6897)
!6930 = !DILocation(line: 178, column: 1, scope: !6897)
!6931 = !DISubprogram(name: "next_online_pgdat", scope: !269, file: !269, line: 1563, type: !6932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6932 = !DISubroutineType(types: !6933)
!6933 = !{!5303, !5303}
!6934 = distinct !DISubprogram(name: "show_node", scope: !3, file: !3, line: 26, type: !6935, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6937)
!6935 = !DISubroutineType(types: !6936)
!6936 = !{null, !5294}
!6937 = !{!6938}
!6938 = !DILocalVariable(name: "zone", arg: 1, scope: !6934, file: !3, line: 26, type: !5294)
!6939 = !DILocation(line: 26, column: 43, scope: !6934)
!6940 = !DILocation(line: 29, column: 3, scope: !6941)
!6941 = distinct !DILexicalBlock(scope: !6942, file: !3, line: 29, column: 3)
!6942 = distinct !DILexicalBlock(scope: !6934, file: !3, line: 28, column: 6)
!6943 = !DILocation(line: 29, column: 3, scope: !6944)
!6944 = distinct !DILexicalBlock(scope: !6941, file: !3, line: 29, column: 3)
!6945 = !DILocation(line: 30, column: 1, scope: !6934)
!6946 = distinct !DISubprogram(name: "zone_page_state", scope: !6103, file: !6103, line: 207, type: !6947, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6949)
!6947 = !DISubroutineType(types: !6948)
!6948 = !{!47, !5294, !339}
!6949 = !{!6950, !6951, !6952}
!6950 = !DILocalVariable(name: "zone", arg: 1, scope: !6946, file: !6103, line: 207, type: !5294)
!6951 = !DILocalVariable(name: "item", arg: 2, scope: !6946, file: !6103, line: 208, type: !339)
!6952 = !DILocalVariable(name: "x", scope: !6946, file: !6103, line: 210, type: !1198)
!6953 = !DILocation(line: 207, column: 58, scope: !6946)
!6954 = !DILocation(line: 208, column: 26, scope: !6946)
!6955 = !DILocation(line: 210, column: 2, scope: !6946)
!6956 = !DILocation(line: 210, column: 7, scope: !6946)
!6957 = !DILocation(line: 210, column: 29, scope: !6946)
!6958 = !DILocation(line: 210, column: 35, scope: !6946)
!6959 = !DILocation(line: 210, column: 43, scope: !6946)
!6960 = !DILocation(line: 210, column: 11, scope: !6946)
!6961 = !DILocation(line: 212, column: 6, scope: !6962)
!6962 = distinct !DILexicalBlock(scope: !6946, file: !6103, line: 212, column: 6)
!6963 = !DILocation(line: 212, column: 8, scope: !6962)
!6964 = !DILocation(line: 212, column: 6, scope: !6946)
!6965 = !DILocation(line: 213, column: 5, scope: !6962)
!6966 = !DILocation(line: 213, column: 3, scope: !6962)
!6967 = !DILocation(line: 215, column: 9, scope: !6946)
!6968 = !DILocation(line: 216, column: 1, scope: !6946)
!6969 = !DILocation(line: 215, column: 2, scope: !6946)
!6970 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6971, file: !6971, line: 32, type: !6972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6971 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6972 = !DISubroutineType(types: !6973)
!6973 = !{!47, !6974}
!6974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!6975 = distinct !DISubprogram(name: "spinlock_check", scope: !6976, file: !6976, line: 324, type: !6977, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6979)
!6976 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6977 = !DISubroutineType(types: !6978)
!6978 = !{!6974, !1925}
!6979 = !{!6980}
!6980 = !DILocalVariable(name: "lock", arg: 1, scope: !6975, file: !6976, line: 324, type: !1925)
!6981 = !DILocation(line: 324, column: 67, scope: !6975)
!6982 = !DILocation(line: 326, column: 10, scope: !6975)
!6983 = !DILocation(line: 326, column: 16, scope: !6975)
!6984 = !DILocation(line: 326, column: 2, scope: !6975)
!6985 = distinct !DISubprogram(name: "free_area_empty", scope: !5280, file: !5280, line: 611, type: !6986, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6988)
!6986 = !DISubroutineType(types: !6987)
!6987 = !{!967, !6441, !30}
!6988 = !{!6989, !6990}
!6989 = !DILocalVariable(name: "area", arg: 1, scope: !6985, file: !5280, line: 611, type: !6441)
!6990 = !DILocalVariable(name: "migratetype", arg: 2, scope: !6985, file: !5280, line: 611, type: !30)
!6991 = !DILocation(line: 611, column: 54, scope: !6985)
!6992 = !DILocation(line: 611, column: 64, scope: !6985)
!6993 = !DILocation(line: 613, column: 21, scope: !6985)
!6994 = !DILocation(line: 613, column: 27, scope: !6985)
!6995 = !DILocation(line: 613, column: 37, scope: !6985)
!6996 = !DILocation(line: 613, column: 9, scope: !6985)
!6997 = !DILocation(line: 613, column: 2, scope: !6985)
!6998 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !6976, file: !6976, line: 404, type: !6999, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7001)
!6999 = !DISubroutineType(types: !7000)
!7000 = !{null, !1925, !47}
!7001 = !{!7002, !7003, !7004, !7007}
!7002 = !DILocalVariable(name: "lock", arg: 1, scope: !6998, file: !6976, line: 404, type: !1925)
!7003 = !DILocalVariable(name: "flags", arg: 2, scope: !6998, file: !6976, line: 404, type: !47)
!7004 = !DILocalVariable(name: "__dummy", scope: !7005, file: !6976, line: 406, type: !47)
!7005 = distinct !DILexicalBlock(scope: !7006, file: !6976, line: 406, column: 2)
!7006 = distinct !DILexicalBlock(scope: !6998, file: !6976, line: 406, column: 2)
!7007 = !DILocalVariable(name: "__dummy2", scope: !7005, file: !6976, line: 406, type: !47)
!7008 = !DILocation(line: 404, column: 64, scope: !6998)
!7009 = !DILocation(line: 404, column: 84, scope: !6998)
!7010 = !DILocation(line: 406, column: 2, scope: !6998)
!7011 = !DILocation(line: 406, column: 2, scope: !7005)
!7012 = !DILocation(line: 406, column: 2, scope: !7006)
!7013 = !DILocation(line: 407, column: 1, scope: !6998)
!7014 = !DILocation(line: 144, column: 48, scope: !5990)
!7015 = !DILocation(line: 158, column: 2, scope: !5990)
!7016 = !DILocation(line: 158, column: 7, scope: !5990)
!7017 = !DILocation(line: 159, column: 2, scope: !5990)
!7018 = !DILocation(line: 159, column: 8, scope: !5990)
!7019 = !DILocation(line: 159, column: 12, scope: !5990)
!7020 = !DILocation(line: 160, column: 2, scope: !5990)
!7021 = !DILocation(line: 160, column: 6, scope: !5990)
!7022 = !DILocation(line: 162, column: 9, scope: !7023)
!7023 = distinct !DILexicalBlock(scope: !5990, file: !3, line: 162, column: 2)
!7024 = !DILocation(line: 162, column: 7, scope: !7023)
!7025 = !DILocation(line: 162, column: 14, scope: !7026)
!7026 = distinct !DILexicalBlock(scope: !7023, file: !3, line: 162, column: 2)
!7027 = !DILocation(line: 162, column: 16, scope: !7026)
!7028 = !DILocation(line: 162, column: 2, scope: !7023)
!7029 = !DILocation(line: 163, column: 7, scope: !7030)
!7030 = distinct !DILexicalBlock(scope: !7031, file: !3, line: 163, column: 7)
!7031 = distinct !DILexicalBlock(scope: !7026, file: !3, line: 162, column: 38)
!7032 = !DILocation(line: 163, column: 20, scope: !7030)
!7033 = !DILocation(line: 163, column: 17, scope: !7030)
!7034 = !DILocation(line: 163, column: 12, scope: !7030)
!7035 = !DILocation(line: 163, column: 7, scope: !7031)
!7036 = !DILocation(line: 164, column: 17, scope: !7030)
!7037 = !DILocation(line: 164, column: 11, scope: !7030)
!7038 = !DILocation(line: 164, column: 6, scope: !7030)
!7039 = !DILocation(line: 164, column: 9, scope: !7030)
!7040 = !DILocation(line: 164, column: 4, scope: !7030)
!7041 = !DILocation(line: 165, column: 2, scope: !7031)
!7042 = !DILocation(line: 162, column: 34, scope: !7026)
!7043 = !DILocation(line: 162, column: 2, scope: !7026)
!7044 = distinct !{!7044, !7028, !7045, !6060, !6061}
!7045 = !DILocation(line: 165, column: 2, scope: !7023)
!7046 = !DILocation(line: 167, column: 3, scope: !5990)
!7047 = !DILocation(line: 167, column: 5, scope: !5990)
!7048 = !DILocation(line: 168, column: 2, scope: !7049)
!7049 = distinct !DILexicalBlock(scope: !5990, file: !3, line: 168, column: 2)
!7050 = !DILocation(line: 168, column: 2, scope: !7051)
!7051 = distinct !DILexicalBlock(scope: !7049, file: !3, line: 168, column: 2)
!7052 = !DILocation(line: 169, column: 1, scope: !5990)
!7053 = distinct !DISubprogram(name: "__first_node", scope: !367, file: !367, line: 264, type: !7054, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7058)
!7054 = !DISubroutineType(types: !7055)
!7055 = !{!7, !7056}
!7056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7057, size: 64)
!7057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1866)
!7058 = !{!7059, !7060, !7062}
!7059 = !DILocalVariable(name: "srcp", arg: 1, scope: !7053, file: !367, line: 264, type: !7056)
!7060 = !DILocalVariable(name: "__UNIQUE_ID___x138", scope: !7061, file: !367, line: 266, type: !7)
!7061 = distinct !DILexicalBlock(scope: !7053, file: !367, line: 266, column: 9)
!7062 = !DILocalVariable(name: "__UNIQUE_ID___y139", scope: !7061, file: !367, line: 266, type: !7)
!7063 = !DILocation(line: 264, column: 59, scope: !7053)
!7064 = !DILocation(line: 266, column: 9, scope: !7061)
!7065 = !DILocation(line: 266, column: 9, scope: !7053)
!7066 = !DILocation(line: 266, column: 2, scope: !7053)
!7067 = !DISubprogram(name: "hugetlb_show_meminfo_node", scope: !7068, file: !7068, line: 148, type: !5198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7068 = !DIFile(filename: "./include/linux/hugetlb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb3875c3ba49a7a26cb8998ef59b94dc")
!7069 = distinct !DISubprogram(name: "__next_node", scope: !367, file: !367, line: 270, type: !7070, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7072)
!7070 = !DISubroutineType(types: !7071)
!7071 = !{!7, !30, !7056}
!7072 = !{!7073, !7074, !7075, !7077}
!7073 = !DILocalVariable(name: "n", arg: 1, scope: !7069, file: !367, line: 270, type: !30)
!7074 = !DILocalVariable(name: "srcp", arg: 2, scope: !7069, file: !367, line: 270, type: !7056)
!7075 = !DILocalVariable(name: "__UNIQUE_ID___x140", scope: !7076, file: !367, line: 272, type: !7)
!7076 = distinct !DILexicalBlock(scope: !7069, file: !367, line: 272, column: 9)
!7077 = !DILocalVariable(name: "__UNIQUE_ID___y141", scope: !7076, file: !367, line: 272, type: !7)
!7078 = !DILocation(line: 270, column: 44, scope: !7069)
!7079 = !DILocation(line: 270, column: 65, scope: !7069)
!7080 = !DILocation(line: 272, column: 9, scope: !7076)
!7081 = !DILocation(line: 272, column: 9, scope: !7069)
!7082 = !DILocation(line: 272, column: 2, scope: !7069)
!7083 = !DISubprogram(name: "show_swap_cache_info", scope: !7084, file: !7084, line: 31, type: !3653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7084 = !DIFile(filename: "mm/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4ac5630c8951ad9ed41cb41f68ad78f1")
!7085 = distinct !DISubprogram(name: "get_current", scope: !7086, file: !7086, line: 39, type: !7087, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7089)
!7086 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!7087 = !DISubroutineType(types: !7088)
!7088 = !{!409}
!7089 = !{!7090, !7092, !7094}
!7090 = !DILocalVariable(name: "pscr_ret__", scope: !7091, file: !7086, line: 41, type: !409)
!7091 = distinct !DILexicalBlock(scope: !7085, file: !7086, line: 41, column: 9)
!7092 = !DILocalVariable(name: "__vpp_verify", scope: !7093, file: !7086, line: 41, type: !2858)
!7093 = distinct !DILexicalBlock(scope: !7091, file: !7086, line: 41, column: 9)
!7094 = !DILocalVariable(name: "pfo_val__", scope: !7095, file: !7086, line: 41, type: !478)
!7095 = distinct !DILexicalBlock(scope: !7091, file: !7086, line: 41, column: 9)
!7096 = !DILocation(line: 41, column: 9, scope: !7091)
!7097 = !DILocation(line: 41, column: 9, scope: !7093)
!7098 = !DILocation(line: 41, column: 9, scope: !7095)
!7099 = !{i64 2148532512}
!7100 = !DILocation(line: 41, column: 9, scope: !7085)
!7101 = !DILocation(line: 41, column: 2, scope: !7085)
!7102 = distinct !DISubprogram(name: "const_test_bit", scope: !7103, file: !7103, line: 166, type: !7104, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7109)
!7103 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!7104 = !DISubroutineType(types: !7105)
!7105 = !{!967, !47, !7106}
!7106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7107, size: 64)
!7107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7108)
!7108 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!7109 = !{!7110, !7111, !7112, !7113, !7114}
!7110 = !DILocalVariable(name: "nr", arg: 1, scope: !7102, file: !7103, line: 166, type: !47)
!7111 = !DILocalVariable(name: "addr", arg: 2, scope: !7102, file: !7103, line: 166, type: !7106)
!7112 = !DILocalVariable(name: "p", scope: !7102, file: !7103, line: 168, type: !406)
!7113 = !DILocalVariable(name: "mask", scope: !7102, file: !7103, line: 169, type: !47)
!7114 = !DILocalVariable(name: "val", scope: !7102, file: !7103, line: 170, type: !47)
!7115 = !DILocation(line: 166, column: 30, scope: !7102)
!7116 = !DILocation(line: 166, column: 64, scope: !7102)
!7117 = !DILocation(line: 168, column: 2, scope: !7102)
!7118 = !DILocation(line: 168, column: 23, scope: !7102)
!7119 = !DILocation(line: 168, column: 50, scope: !7102)
!7120 = !DILocation(line: 168, column: 57, scope: !7102)
!7121 = !DILocation(line: 168, column: 55, scope: !7102)
!7122 = !DILocation(line: 169, column: 2, scope: !7102)
!7123 = !DILocation(line: 169, column: 16, scope: !7102)
!7124 = !DILocation(line: 169, column: 23, scope: !7102)
!7125 = !DILocation(line: 170, column: 2, scope: !7102)
!7126 = !DILocation(line: 170, column: 16, scope: !7102)
!7127 = !DILocation(line: 170, column: 23, scope: !7102)
!7128 = !DILocation(line: 170, column: 22, scope: !7102)
!7129 = !DILocation(line: 172, column: 12, scope: !7102)
!7130 = !DILocation(line: 172, column: 18, scope: !7102)
!7131 = !DILocation(line: 172, column: 16, scope: !7102)
!7132 = !DILocation(line: 172, column: 10, scope: !7102)
!7133 = !DILocation(line: 172, column: 9, scope: !7102)
!7134 = !DILocation(line: 173, column: 1, scope: !7102)
!7135 = !DILocation(line: 172, column: 2, scope: !7102)
!7136 = distinct !DISubprogram(name: "_test_bit", scope: !7137, file: !7137, line: 139, type: !7104, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7138)
!7137 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!7138 = !{!7139, !7140}
!7139 = !DILocalVariable(name: "nr", arg: 1, scope: !7136, file: !7137, line: 139, type: !47)
!7140 = !DILocalVariable(name: "addr", arg: 2, scope: !7136, file: !7137, line: 139, type: !7106)
!7141 = !DILocation(line: 139, column: 25, scope: !7136)
!7142 = !DILocation(line: 139, column: 59, scope: !7136)
!7143 = !DILocation(line: 141, column: 25, scope: !7136)
!7144 = !DILocation(line: 141, column: 32, scope: !7136)
!7145 = !DILocation(line: 141, column: 30, scope: !7136)
!7146 = !DILocation(line: 141, column: 2, scope: !7136)
!7147 = !DILocation(line: 142, column: 23, scope: !7136)
!7148 = !DILocation(line: 142, column: 27, scope: !7136)
!7149 = !DILocation(line: 142, column: 9, scope: !7136)
!7150 = !DILocation(line: 142, column: 2, scope: !7136)
!7151 = distinct !DISubprogram(name: "arch_test_bit", scope: !7152, file: !7152, line: 237, type: !7104, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7153)
!7152 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7153 = !{!7154, !7155}
!7154 = !DILocalVariable(name: "nr", arg: 1, scope: !7151, file: !7152, line: 237, type: !47)
!7155 = !DILocalVariable(name: "addr", arg: 2, scope: !7151, file: !7152, line: 237, type: !7106)
!7156 = !DILocation(line: 237, column: 29, scope: !7151)
!7157 = !DILocation(line: 237, column: 63, scope: !7151)
!7158 = !DILocation(line: 239, column: 30, scope: !7151)
!7159 = !DILocation(line: 239, column: 9, scope: !7151)
!7160 = !DILocation(line: 239, column: 54, scope: !7151)
!7161 = !DILocation(line: 239, column: 58, scope: !7151)
!7162 = !DILocation(line: 239, column: 36, scope: !7151)
!7163 = !DILocation(line: 240, column: 26, scope: !7151)
!7164 = !DILocation(line: 240, column: 30, scope: !7151)
!7165 = !DILocation(line: 240, column: 8, scope: !7151)
!7166 = !DILocation(line: 239, column: 2, scope: !7151)
!7167 = distinct !DISubprogram(name: "constant_test_bit", scope: !7152, file: !7152, line: 204, type: !7168, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7170)
!7168 = !DISubroutineType(types: !7169)
!7169 = !{!967, !1198, !7106}
!7170 = !{!7171, !7172}
!7171 = !DILocalVariable(name: "nr", arg: 1, scope: !7167, file: !7152, line: 204, type: !1198)
!7172 = !DILocalVariable(name: "addr", arg: 2, scope: !7167, file: !7152, line: 204, type: !7106)
!7173 = !DILocation(line: 204, column: 52, scope: !7167)
!7174 = !DILocation(line: 204, column: 86, scope: !7167)
!7175 = !DILocation(line: 206, column: 19, scope: !7167)
!7176 = !DILocation(line: 206, column: 22, scope: !7167)
!7177 = !DILocation(line: 206, column: 15, scope: !7167)
!7178 = !DILocation(line: 207, column: 4, scope: !7167)
!7179 = !DILocation(line: 207, column: 9, scope: !7167)
!7180 = !DILocation(line: 207, column: 12, scope: !7167)
!7181 = !DILocation(line: 206, column: 44, scope: !7167)
!7182 = !DILocation(line: 207, column: 37, scope: !7167)
!7183 = !DILocation(line: 206, column: 2, scope: !7167)
!7184 = distinct !DISubprogram(name: "variable_test_bit", scope: !7152, file: !7152, line: 224, type: !7168, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7185)
!7185 = !{!7186, !7187, !7188}
!7186 = !DILocalVariable(name: "nr", arg: 1, scope: !7184, file: !7152, line: 224, type: !1198)
!7187 = !DILocalVariable(name: "addr", arg: 2, scope: !7184, file: !7152, line: 224, type: !7106)
!7188 = !DILocalVariable(name: "oldbit", scope: !7184, file: !7152, line: 226, type: !967)
!7189 = !DILocation(line: 224, column: 52, scope: !7184)
!7190 = !DILocation(line: 224, column: 86, scope: !7184)
!7191 = !DILocation(line: 226, column: 2, scope: !7184)
!7192 = !DILocation(line: 226, column: 7, scope: !7184)
!7193 = !DILocation(line: 231, column: 33, scope: !7184)
!7194 = !DILocation(line: 231, column: 46, scope: !7184)
!7195 = !DILocation(line: 228, column: 2, scope: !7184)
!7196 = !{i64 2148235628, i64 2148235702}
!7197 = !DILocation(line: 233, column: 9, scope: !7184)
!7198 = !{i8 0, i8 2}
!7199 = !DILocation(line: 234, column: 1, scope: !7184)
!7200 = !DILocation(line: 233, column: 2, scope: !7184)
!7201 = distinct !DISubprogram(name: "variable__ffs", scope: !7152, file: !7152, line: 250, type: !7202, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7204)
!7202 = !DISubroutineType(types: !7203)
!7203 = !{!47, !47}
!7204 = !{!7205}
!7205 = !DILocalVariable(name: "word", arg: 1, scope: !7201, file: !7152, line: 250, type: !47)
!7206 = !DILocation(line: 250, column: 66, scope: !7201)
!7207 = !DILocation(line: 254, column: 11, scope: !7201)
!7208 = !DILocation(line: 252, column: 2, scope: !7201)
!7209 = !{i64 733550}
!7210 = !DILocation(line: 255, column: 9, scope: !7201)
!7211 = !DILocation(line: 255, column: 2, scope: !7201)
!7212 = !DISubprogram(name: "_find_next_bit", scope: !6859, file: !6859, line: 11, type: !6860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7213 = distinct !DISubprogram(name: "list_empty", scope: !7214, file: !7214, line: 371, type: !7215, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7219)
!7214 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!7215 = !DISubroutineType(types: !7216)
!7216 = !{!30, !7217}
!7217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7218, size: 64)
!7218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!7219 = !{!7220}
!7220 = !DILocalVariable(name: "head", arg: 1, scope: !7213, file: !7214, line: 371, type: !7217)
!7221 = !DILocation(line: 371, column: 54, scope: !7213)
!7222 = !DILocation(line: 373, column: 9, scope: !7223)
!7223 = distinct !DILexicalBlock(scope: !7213, file: !7214, line: 373, column: 9)
!7224 = !DILocation(line: 373, column: 9, scope: !7225)
!7225 = distinct !DILexicalBlock(scope: !7223, file: !7214, line: 373, column: 9)
!7226 = !DILocation(line: 373, column: 34, scope: !7213)
!7227 = !DILocation(line: 373, column: 31, scope: !7213)
!7228 = !DILocation(line: 373, column: 2, scope: !7213)
!7229 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6971, file: !6971, line: 43, type: !7230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7230 = !DISubroutineType(types: !7231)
!7231 = !{null, !6974, !47}
!7232 = distinct !DISubprogram(name: "find_first_bit", scope: !6859, file: !6859, line: 200, type: !7233, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7235)
!7233 = !DISubroutineType(types: !7234)
!7234 = !{!47, !406, !47}
!7235 = !{!7236, !7237, !7238}
!7236 = !DILocalVariable(name: "addr", arg: 1, scope: !7232, file: !6859, line: 200, type: !406)
!7237 = !DILocalVariable(name: "size", arg: 2, scope: !7232, file: !6859, line: 200, type: !47)
!7238 = !DILocalVariable(name: "val", scope: !7239, file: !6859, line: 203, type: !47)
!7239 = distinct !DILexicalBlock(scope: !7240, file: !6859, line: 202, column: 31)
!7240 = distinct !DILexicalBlock(scope: !7232, file: !6859, line: 202, column: 6)
!7241 = !DILocation(line: 200, column: 51, scope: !7232)
!7242 = !DILocation(line: 200, column: 71, scope: !7232)
!7243 = !DILocation(line: 202, column: 6, scope: !7240)
!7244 = !DILocation(line: 202, column: 6, scope: !7232)
!7245 = !DILocation(line: 203, column: 3, scope: !7239)
!7246 = !DILocation(line: 203, column: 17, scope: !7239)
!7247 = !DILocation(line: 203, column: 24, scope: !7239)
!7248 = !DILocation(line: 203, column: 23, scope: !7239)
!7249 = !DILocation(line: 203, column: 31, scope: !7239)
!7250 = !DILocation(line: 203, column: 29, scope: !7239)
!7251 = !DILocation(line: 205, column: 10, scope: !7239)
!7252 = !DILocation(line: 205, column: 16, scope: !7239)
!7253 = !DILocation(line: 205, column: 29, scope: !7239)
!7254 = !DILocation(line: 205, column: 3, scope: !7239)
!7255 = !DILocation(line: 206, column: 2, scope: !7240)
!7256 = !DILocation(line: 208, column: 25, scope: !7232)
!7257 = !DILocation(line: 208, column: 31, scope: !7232)
!7258 = !DILocation(line: 208, column: 9, scope: !7232)
!7259 = !DILocation(line: 208, column: 2, scope: !7232)
!7260 = !DILocation(line: 209, column: 1, scope: !7232)
!7261 = !DISubprogram(name: "_find_first_bit", scope: !6859, file: !6859, line: 21, type: !7233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7262 = distinct !DISubprogram(name: "is_highmem_idx", scope: !269, file: !269, line: 1516, type: !7263, scopeLine: 1517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7265)
!7263 = !DISubroutineType(types: !7264)
!7264 = !{!30, !268}
!7265 = !{!7266}
!7266 = !DILocalVariable(name: "idx", arg: 1, scope: !7262, file: !269, line: 1516, type: !268)
!7267 = !DILocation(line: 1516, column: 49, scope: !7262)
!7268 = !DILocation(line: 1522, column: 2, scope: !7262)
