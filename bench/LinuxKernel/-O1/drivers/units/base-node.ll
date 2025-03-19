; ModuleID = 'drivers/base/node.c'
source_filename = "drivers/base/node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { [1 x i64] }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nodemask_t = type { [1 x i64] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, ptr, ptr, ptr, ptr, ptr }
%struct.node_attr = type { %struct.device_attribute, i32 }
%struct.node = type { %struct.device, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.node_access_nodes = type { %struct.device, %struct.list_head, i32 }
%struct.pglist_data = type { [4 x %struct.zone], [2 x %struct.zonelist], i32, i64, i64, i64, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i64, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i64, i64, i64, [56 x i8], %struct.cacheline_padding, %struct.lruvec, i64, [48 x i8], %struct.cacheline_padding, ptr, [41 x %struct.atomic64_t], ptr, [40 x i8] }
%struct.zone = type { [4 x i64], i64, i64, [4 x i64], i32, ptr, ptr, ptr, i32, i32, i64, %struct.atomic64_t, i64, i64, ptr, i32, [28 x i8], %struct.cacheline_padding, [11 x %struct.free_area], i64, %struct.spinlock, [28 x i8], %struct.cacheline_padding, i64, i64, [2 x i64], i64, i64, i32, i32, i32, i8, i8, [2 x i8], %struct.cacheline_padding, [10 x %struct.atomic64_t], [6 x %struct.atomic64_t] }
%struct.free_area = type { [4 x %struct.list_head], i64 }
%struct.zonelist = type { [257 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i64, i64, %struct.atomic64_t, [2 x i64], i64 }
%struct.cacheline_padding = type { [0 x i8] }
%struct.sysinfo = type { i64, [3 x i64], i64, i64, i64, i64, i64, i64, i16, i16, i64, i64, i32, [0 x i8] }

@node_devices = hidden global [64 x ptr] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [8 x i8] c"targets\00", align 1, !dbg !5298
@.str.1 = private unnamed_addr constant [11 x i8] c"initiators\00", align 1, !dbg !5300
@__cpu_present_mask = external dso_local global %struct.cpumask, align 8
@node_subsys = internal global %struct.bus_type { ptr @.str.20, ptr @.str.20, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, align 8, !dbg !5406
@cpu_root_attr_groups = internal global [2 x ptr] [ptr @memory_root_attr_group, ptr null], align 16, !dbg !5408
@.str.2 = private unnamed_addr constant [39 x i8] c"%s() failed to register subsystem: %d\0A\00", align 1, !dbg !5305
@__func__.node_dev_init = private unnamed_addr constant [14 x i8] c"node_dev_init\00", align 1, !dbg !5310
@node_states = external dso_local global [6 x %struct.nodemask_t], align 16
@.str.3 = private unnamed_addr constant [29 x i8] c"%s() failed to add node: %d\0A\00", align 1, !dbg !5313
@node_access_node_groups = internal global [3 x ptr] [ptr @initiators, ptr @targets, ptr null], align 16, !dbg !5323
@.str.4 = private unnamed_addr constant [9 x i8] c"access%u\00", align 1, !dbg !5318
@initiators = internal constant %struct.attribute_group { ptr @.str.1, ptr null, ptr null, ptr @node_init_access_node_attrs, ptr null }, align 8, !dbg !5326
@targets = internal constant %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @node_targ_access_node_attrs, ptr null }, align 8, !dbg !5331
@node_init_access_node_attrs = internal global [1 x ptr] zeroinitializer, align 8, !dbg !5328
@node_targ_access_node_attrs = internal global [1 x ptr] zeroinitializer, align 8, !dbg !5333
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5335
@node_dev_groups = internal global [2 x ptr] [ptr @node_dev_group, ptr null], align 16, !dbg !5340
@node_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @node_dev_attrs, ptr @node_dev_bin_attrs }, align 8, !dbg !5343
@node_dev_attrs = internal global [5 x ptr] [ptr @dev_attr_meminfo, ptr @dev_attr_numastat, ptr @dev_attr_distance, ptr @dev_attr_vmstat, ptr null], align 16, !dbg !5345
@node_dev_bin_attrs = internal global [3 x ptr] [ptr @bin_attr_cpumap, ptr @bin_attr_cpulist, ptr null], align 16, !dbg !5393
@dev_attr_meminfo = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @node_read_meminfo, ptr null }, align 8, !dbg !5350
@dev_attr_numastat = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @node_read_numastat, ptr null }, align 8, !dbg !5364
@dev_attr_distance = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @node_read_distance, ptr null }, align 8, !dbg !5373
@dev_attr_vmstat = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @node_read_vmstat, ptr null }, align 8, !dbg !5389
@.str.6 = private unnamed_addr constant [8 x i8] c"meminfo\00", align 1, !dbg !5348
@node_data = external dso_local global [0 x ptr], align 8
@.str.7 = private unnamed_addr constant [385 x i8] c"Node %d MemTotal:       %8lu kB\0ANode %d MemFree:        %8lu kB\0ANode %d MemUsed:        %8lu kB\0ANode %d SwapCached:     %8lu kB\0ANode %d Active:         %8lu kB\0ANode %d Inactive:       %8lu kB\0ANode %d Active(anon):   %8lu kB\0ANode %d Inactive(anon): %8lu kB\0ANode %d Active(file):   %8lu kB\0ANode %d Inactive(file): %8lu kB\0ANode %d Unevictable:    %8lu kB\0ANode %d Mlocked:        %8lu kB\0A\00", align 1, !dbg !5352
@.str.8 = private unnamed_addr constant [513 x i8] c"Node %d Dirty:          %8lu kB\0ANode %d Writeback:      %8lu kB\0ANode %d FilePages:      %8lu kB\0ANode %d Mapped:         %8lu kB\0ANode %d AnonPages:      %8lu kB\0ANode %d Shmem:          %8lu kB\0ANode %d KernelStack:    %8lu kB\0ANode %d PageTables:     %8lu kB\0ANode %d SecPageTables:  %8lu kB\0ANode %d NFS_Unstable:   %8lu kB\0ANode %d Bounce:         %8lu kB\0ANode %d WritebackTmp:   %8lu kB\0ANode %d KReclaimable:   %8lu kB\0ANode %d Slab:           %8lu kB\0ANode %d SReclaimable:   %8lu kB\0ANode %d SUnreclaim:     %8lu kB\0A\00", align 1, !dbg !5357
@.str.9 = private unnamed_addr constant [9 x i8] c"numastat\00", align 1, !dbg !5362
@.str.10 = private unnamed_addr constant [94 x i8] c"numa_hit %lu\0Anuma_miss %lu\0Anuma_foreign %lu\0Ainterleave_hit %lu\0Alocal_node %lu\0Aother_node %lu\0A\00", align 1, !dbg !5366
@.str.11 = private unnamed_addr constant [9 x i8] c"distance\00", align 1, !dbg !5371
@.str.12 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1, !dbg !5375
@.str.13 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !5378
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !5381
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !5384
@.str.16 = private unnamed_addr constant [7 x i8] c"vmstat\00", align 1, !dbg !5386
@.str.17 = private unnamed_addr constant [8 x i8] c"%s %lu\0A\00", align 1, !dbg !5391
@vmstat_text = external dso_local constant [0 x ptr], align 8
@bin_attr_cpumap = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.18, i16 292 }, i64 4096, ptr null, ptr null, ptr @cpumap_read, ptr null, ptr null }, align 8, !dbg !5398
@bin_attr_cpulist = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.19, i16 292 }, i64 4096, ptr null, ptr null, ptr @cpulist_read, ptr null, ptr null }, align 8, !dbg !5402
@.str.18 = private unnamed_addr constant [7 x i8] c"cpumap\00", align 1, !dbg !5396
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@node_to_cpumask_map = external dso_local global [64 x [1 x %struct.cpumask]], align 16
@nr_cpu_ids = external dso_local global i32, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c"cpulist\00", align 1, !dbg !5400
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@.str.20 = private unnamed_addr constant [5 x i8] c"node\00", align 1, !dbg !5404
@memory_root_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @node_state_attrs, ptr null }, align 8, !dbg !5410
@node_state_attrs = internal global [7 x ptr] [ptr @node_state_attr, ptr getelementptr (i8, ptr @node_state_attr, i64 40), ptr getelementptr (i8, ptr @node_state_attr, i64 80), ptr getelementptr (i8, ptr @node_state_attr, i64 120), ptr getelementptr (i8, ptr @node_state_attr, i64 160), ptr getelementptr (i8, ptr @node_state_attr, i64 200), ptr null], align 16, !dbg !5412
@node_state_attr = internal global [6 x %struct.node_attr] [%struct.node_attr { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @show_node_state, ptr null }, i32 0 }, %struct.node_attr { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @show_node_state, ptr null }, i32 1 }, %struct.node_attr { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @show_node_state, ptr null }, i32 2 }, %struct.node_attr { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @show_node_state, ptr null }, i32 3 }, %struct.node_attr { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292 }, ptr @show_node_state, ptr null }, i32 4 }, %struct.node_attr { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @show_node_state, ptr null }, i32 5 }], align 16, !dbg !5433
@.str.21 = private unnamed_addr constant [9 x i8] c"possible\00", align 1, !dbg !5415
@.str.22 = private unnamed_addr constant [7 x i8] c"online\00", align 1, !dbg !5417
@.str.23 = private unnamed_addr constant [18 x i8] c"has_normal_memory\00", align 1, !dbg !5419
@.str.24 = private unnamed_addr constant [11 x i8] c"has_memory\00", align 1, !dbg !5424
@.str.25 = private unnamed_addr constant [8 x i8] c"has_cpu\00", align 1, !dbg !5426
@.str.26 = private unnamed_addr constant [22 x i8] c"has_generic_initiator\00", align 1, !dbg !5428
@.str.27 = private unnamed_addr constant [7 x i8] c"%*pbl\0A\00", align 1, !dbg !5436

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @unregister_node(ptr noundef %node) #0 align 16 !dbg !5448 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  %0 = load ptr, ptr %node.addr, align 8, !dbg !5454
  call void @hugetlb_unregister_node(ptr noundef %0) #17, !dbg !5455
  %1 = load ptr, ptr %node.addr, align 8, !dbg !5456
  call void @compaction_unregister_node(ptr noundef %1) #17, !dbg !5457
  %2 = load ptr, ptr %node.addr, align 8, !dbg !5458
  call void @node_remove_accesses(ptr noundef %2) #17, !dbg !5459
  %3 = load ptr, ptr %node.addr, align 8, !dbg !5460
  call void @node_remove_caches(ptr noundef %3) #17, !dbg !5461
  %4 = load ptr, ptr %node.addr, align 8, !dbg !5462
  %dev = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 0, !dbg !5463
  call void @device_unregister(ptr noundef %dev) #17, !dbg !5464
  ret void, !dbg !5465
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5466 dso_local void @hugetlb_unregister_node(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5468 dso_local void @compaction_unregister_node(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @node_remove_accesses(ptr noundef %node) #0 align 16 !dbg !5470 {
entry:
  %node.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %cnext = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5472, metadata !DIExpression()), !dbg !5483
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #18, !dbg !5484
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5473, metadata !DIExpression()), !dbg !5485
  call void @llvm.lifetime.start.p0(i64 8, ptr %cnext) #18, !dbg !5484
  call void @llvm.dbg.declare(metadata ptr %cnext, metadata !5474, metadata !DIExpression()), !dbg !5486
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5487
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5475, metadata !DIExpression()), !dbg !5487
  %0 = load ptr, ptr %node.addr, align 8, !dbg !5487
  %access_list = getelementptr inbounds %struct.node, ptr %0, i32 0, i32 1, !dbg !5487
  %next = getelementptr inbounds %struct.list_head, ptr %access_list, i32 0, i32 0, !dbg !5487
  %1 = load ptr, ptr %next, align 8, !dbg !5487
  store ptr %1, ptr %__mptr, align 8, !dbg !5487
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5487
  %add.ptr = getelementptr i8, ptr %2, i64 -728, !dbg !5487
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5487
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5488
  %3 = load ptr, ptr %tmp, align 8, !dbg !5487
  store ptr %3, ptr %c, align 8, !dbg !5488
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #18, !dbg !5489
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !5478, metadata !DIExpression()), !dbg !5489
  %4 = load ptr, ptr %c, align 8, !dbg !5489
  %list_node = getelementptr inbounds %struct.node_access_nodes, ptr %4, i32 0, i32 1, !dbg !5489
  %next2 = getelementptr inbounds %struct.list_head, ptr %list_node, i32 0, i32 0, !dbg !5489
  %5 = load ptr, ptr %next2, align 8, !dbg !5489
  store ptr %5, ptr %__mptr1, align 8, !dbg !5489
  %6 = load ptr, ptr %__mptr1, align 8, !dbg !5489
  %add.ptr4 = getelementptr i8, ptr %6, i64 -728, !dbg !5489
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !5489
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #18, !dbg !5488
  %7 = load ptr, ptr %tmp3, align 8, !dbg !5489
  store ptr %7, ptr %cnext, align 8, !dbg !5488
  br label %for.cond, !dbg !5488

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load ptr, ptr %c, align 8, !dbg !5490
  %list_node5 = getelementptr inbounds %struct.node_access_nodes, ptr %8, i32 0, i32 1, !dbg !5490
  %9 = load ptr, ptr %node.addr, align 8, !dbg !5490
  %access_list6 = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 1, !dbg !5490
  %cmp = icmp eq ptr %list_node5, %access_list6, !dbg !5490
  %lnot = xor i1 %cmp, true, !dbg !5490
  br i1 %lnot, label %for.body, label %for.end, !dbg !5488

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %c, align 8, !dbg !5491
  %list_node7 = getelementptr inbounds %struct.node_access_nodes, ptr %10, i32 0, i32 1, !dbg !5493
  call void @list_del(ptr noundef %list_node7) #17, !dbg !5494
  %11 = load ptr, ptr %c, align 8, !dbg !5495
  %dev = getelementptr inbounds %struct.node_access_nodes, ptr %11, i32 0, i32 0, !dbg !5496
  call void @device_unregister(ptr noundef %dev) #17, !dbg !5497
  br label %for.inc, !dbg !5498

for.inc:                                          ; preds = %for.body
  %12 = load ptr, ptr %cnext, align 8, !dbg !5490
  store ptr %12, ptr %c, align 8, !dbg !5490
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #18, !dbg !5499
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !5480, metadata !DIExpression()), !dbg !5499
  %13 = load ptr, ptr %cnext, align 8, !dbg !5499
  %list_node9 = getelementptr inbounds %struct.node_access_nodes, ptr %13, i32 0, i32 1, !dbg !5499
  %next10 = getelementptr inbounds %struct.list_head, ptr %list_node9, i32 0, i32 0, !dbg !5499
  %14 = load ptr, ptr %next10, align 8, !dbg !5499
  store ptr %14, ptr %__mptr8, align 8, !dbg !5499
  %15 = load ptr, ptr %__mptr8, align 8, !dbg !5499
  %add.ptr12 = getelementptr i8, ptr %15, i64 -728, !dbg !5499
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !5499
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #18, !dbg !5490
  %16 = load ptr, ptr %tmp11, align 8, !dbg !5499
  store ptr %16, ptr %cnext, align 8, !dbg !5490
  br label %for.cond, !dbg !5490, !llvm.loop !5500

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %cnext) #18, !dbg !5504
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #18, !dbg !5504
  ret void, !dbg !5504
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @node_remove_caches(ptr noundef %node) #0 align 16 !dbg !5505 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5507, metadata !DIExpression()), !dbg !5508
  ret void, !dbg !5509
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5510 dso_local void @device_unregister(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @register_cpu_under_node(i32 noundef %cpu, i32 noundef %nid) #0 align 16 !dbg !5511 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %nid.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %obj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5515, metadata !DIExpression()), !dbg !5519
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !5516, metadata !DIExpression()), !dbg !5520
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !5521
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5517, metadata !DIExpression()), !dbg !5522
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #18, !dbg !5523
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !5518, metadata !DIExpression()), !dbg !5524
  %0 = load i32, ptr %nid.addr, align 4, !dbg !5525
  %call = call i32 @node_state(i32 noundef %0, i32 noundef 1) #17, !dbg !5525
  %tobool = icmp ne i32 %call, 0, !dbg !5525
  br i1 %tobool, label %if.end, label %if.then, !dbg !5527

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5528
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5528

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !5529
  %call1 = call ptr @get_cpu_device(i32 noundef %1) #17, !dbg !5530
  store ptr %call1, ptr %obj, align 8, !dbg !5531
  %2 = load ptr, ptr %obj, align 8, !dbg !5532
  %tobool2 = icmp ne ptr %2, null, !dbg !5532
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5534

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5535

if.end4:                                          ; preds = %if.end
  %3 = load i32, ptr %nid.addr, align 4, !dbg !5536
  %idxprom = zext i32 %3 to i64, !dbg !5537
  %arrayidx = getelementptr [64 x ptr], ptr @node_devices, i64 0, i64 %idxprom, !dbg !5537
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !5537
  %dev = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 0, !dbg !5538
  %kobj = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 0, !dbg !5539
  %5 = load ptr, ptr %obj, align 8, !dbg !5540
  %kobj5 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 0, !dbg !5541
  %6 = load ptr, ptr %obj, align 8, !dbg !5542
  %kobj6 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 0, !dbg !5543
  %call7 = call ptr @kobject_name(ptr noundef %kobj6) #17, !dbg !5544
  %call8 = call i32 @sysfs_create_link(ptr noundef %kobj, ptr noundef %kobj5, ptr noundef %call7) #17, !dbg !5545
  store i32 %call8, ptr %ret, align 4, !dbg !5546
  %7 = load i32, ptr %ret, align 4, !dbg !5547
  %tobool9 = icmp ne i32 %7, 0, !dbg !5547
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5549

if.then10:                                        ; preds = %if.end4
  %8 = load i32, ptr %ret, align 4, !dbg !5550
  store i32 %8, ptr %retval, align 4, !dbg !5551
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5551

if.end11:                                         ; preds = %if.end4
  %9 = load ptr, ptr %obj, align 8, !dbg !5552
  %kobj12 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 0, !dbg !5553
  %10 = load i32, ptr %nid.addr, align 4, !dbg !5554
  %idxprom13 = zext i32 %10 to i64, !dbg !5555
  %arrayidx14 = getelementptr [64 x ptr], ptr @node_devices, i64 0, i64 %idxprom13, !dbg !5555
  %11 = load ptr, ptr %arrayidx14, align 8, !dbg !5555
  %dev15 = getelementptr inbounds %struct.node, ptr %11, i32 0, i32 0, !dbg !5556
  %kobj16 = getelementptr inbounds %struct.device, ptr %dev15, i32 0, i32 0, !dbg !5557
  %12 = load i32, ptr %nid.addr, align 4, !dbg !5558
  %idxprom17 = zext i32 %12 to i64, !dbg !5559
  %arrayidx18 = getelementptr [64 x ptr], ptr @node_devices, i64 0, i64 %idxprom17, !dbg !5559
  %13 = load ptr, ptr %arrayidx18, align 8, !dbg !5559
  %dev19 = getelementptr inbounds %struct.node, ptr %13, i32 0, i32 0, !dbg !5560
  %kobj20 = getelementptr inbounds %struct.device, ptr %dev19, i32 0, i32 0, !dbg !5561
  %call21 = call ptr @kobject_name(ptr noundef %kobj20) #17, !dbg !5562
  %call22 = call i32 @sysfs_create_link(ptr noundef %kobj12, ptr noundef %kobj16, ptr noundef %call21) #17, !dbg !5563
  store i32 %call22, ptr %retval, align 4, !dbg !5564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5564

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #18, !dbg !5565
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !5565
  %14 = load i32, ptr %retval, align 4, !dbg !5565
  ret i32 %14, !dbg !5565
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @node_state(i32 noundef %node, i32 noundef %state) #4 align 16 !dbg !5566 {
entry:
  %node.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5570, metadata !DIExpression()), !dbg !5572
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5571, metadata !DIExpression()), !dbg !5573
  %0 = load i32, ptr %node.addr, align 4, !dbg !5574
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5574
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5574

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %state.addr, align 4, !dbg !5574
  %idxprom = zext i32 %2 to i64, !dbg !5574
  %arrayidx = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom, !dbg !5574
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx, i32 0, i32 0, !dbg !5574
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5574
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !5574
  %cmp = icmp ne i64 %3, 0, !dbg !5574
  %conv = zext i1 %cmp to i32, !dbg !5574
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5574
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !5574

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load i32, ptr %state.addr, align 4, !dbg !5574
  %idxprom2 = zext i32 %5 to i64, !dbg !5574
  %arrayidx3 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom2, !dbg !5574
  %bits4 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx3, i32 0, i32 0, !dbg !5574
  %arraydecay5 = getelementptr inbounds [1 x i64], ptr %bits4, i64 0, i64 0, !dbg !5574
  %6 = ptrtoint ptr %arraydecay5 to i64, !dbg !5574
  %cmp6 = icmp ne i64 %6, 0, !dbg !5574
  br i1 %cmp6, label %land.lhs.true8, label %cond.false, !dbg !5574

land.lhs.true8:                                   ; preds = %land.lhs.true1
  %7 = load i32, ptr %state.addr, align 4, !dbg !5574
  %idxprom9 = zext i32 %7 to i64, !dbg !5574
  %arrayidx10 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom9, !dbg !5574
  %bits11 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx10, i32 0, i32 0, !dbg !5574
  %arraydecay12 = getelementptr inbounds [1 x i64], ptr %bits11, i64 0, i64 0, !dbg !5574
  %8 = load i64, ptr %arraydecay12, align 8, !dbg !5574
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !5574
  br i1 %9, label %cond.true, label %cond.false, !dbg !5574

cond.true:                                        ; preds = %land.lhs.true8
  %10 = load i32, ptr %node.addr, align 4, !dbg !5574
  %conv13 = sext i32 %10 to i64, !dbg !5574
  %11 = load i32, ptr %state.addr, align 4, !dbg !5574
  %idxprom14 = zext i32 %11 to i64, !dbg !5574
  %arrayidx15 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom14, !dbg !5574
  %bits16 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx15, i32 0, i32 0, !dbg !5574
  %arraydecay17 = getelementptr inbounds [1 x i64], ptr %bits16, i64 0, i64 0, !dbg !5574
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv13, ptr noundef %arraydecay17) #17, !dbg !5574
  %conv18 = zext i1 %call to i32, !dbg !5574
  br label %cond.end, !dbg !5574

cond.false:                                       ; preds = %land.lhs.true8, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %node.addr, align 4, !dbg !5574
  %conv19 = sext i32 %12 to i64, !dbg !5574
  %13 = load i32, ptr %state.addr, align 4, !dbg !5574
  %idxprom20 = zext i32 %13 to i64, !dbg !5574
  %arrayidx21 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom20, !dbg !5574
  %bits22 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx21, i32 0, i32 0, !dbg !5574
  %arraydecay23 = getelementptr inbounds [1 x i64], ptr %bits22, i64 0, i64 0, !dbg !5574
  %call24 = call zeroext i1 @_test_bit(i64 noundef %conv19, ptr noundef %arraydecay23) #17, !dbg !5574
  %conv25 = zext i1 %call24 to i32, !dbg !5574
  br label %cond.end, !dbg !5574

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv18, %cond.true ], [ %conv25, %cond.false ], !dbg !5574
  ret i32 %cond, !dbg !5575
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5576 dso_local ptr @get_cpu_device(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5580 dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #4 align 16 !dbg !5583 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5585, metadata !DIExpression()), !dbg !5586
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5587
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !5588
  %1 = load ptr, ptr %name, align 8, !dbg !5588
  ret ptr %1, !dbg !5589
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @register_memory_node_under_compute_node(i32 noundef %mem_nid, i32 noundef %cpu_nid, i32 noundef %access) #0 align 16 !dbg !5590 {
entry:
  %retval = alloca i32, align 4
  %mem_nid.addr = alloca i32, align 4
  %cpu_nid.addr = alloca i32, align 4
  %access.addr = alloca i32, align 4
  %init_node = alloca ptr, align 8
  %targ_node = alloca ptr, align 8
  %initiator = alloca ptr, align 8
  %target = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %mem_nid, ptr %mem_nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mem_nid.addr, metadata !5594, metadata !DIExpression()), !dbg !5603
  store i32 %cpu_nid, ptr %cpu_nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu_nid.addr, metadata !5595, metadata !DIExpression()), !dbg !5604
  store i32 %access, ptr %access.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %access.addr, metadata !5596, metadata !DIExpression()), !dbg !5605
  call void @llvm.lifetime.start.p0(i64 8, ptr %init_node) #18, !dbg !5606
  call void @llvm.dbg.declare(metadata ptr %init_node, metadata !5597, metadata !DIExpression()), !dbg !5607
  call void @llvm.lifetime.start.p0(i64 8, ptr %targ_node) #18, !dbg !5606
  call void @llvm.dbg.declare(metadata ptr %targ_node, metadata !5598, metadata !DIExpression()), !dbg !5608
  call void @llvm.lifetime.start.p0(i64 8, ptr %initiator) #18, !dbg !5609
  call void @llvm.dbg.declare(metadata ptr %initiator, metadata !5599, metadata !DIExpression()), !dbg !5610
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #18, !dbg !5609
  call void @llvm.dbg.declare(metadata ptr %target, metadata !5600, metadata !DIExpression()), !dbg !5611
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !5612
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5601, metadata !DIExpression()), !dbg !5613
  %0 = load i32, ptr %cpu_nid.addr, align 4, !dbg !5614
  %call = call i32 @node_state(i32 noundef %0, i32 noundef 1) #17, !dbg !5614
  %tobool = icmp ne i32 %call, 0, !dbg !5614
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5616

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %mem_nid.addr, align 4, !dbg !5617
  %call1 = call i32 @node_state(i32 noundef %1, i32 noundef 1) #17, !dbg !5617
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5617
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5618

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, ptr %retval, align 4, !dbg !5619
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5619

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %cpu_nid.addr, align 4, !dbg !5620
  %idxprom = zext i32 %2 to i64, !dbg !5621
  %arrayidx = getelementptr [64 x ptr], ptr @node_devices, i64 0, i64 %idxprom, !dbg !5621
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !5621
  store ptr %3, ptr %init_node, align 8, !dbg !5622
  %4 = load i32, ptr %mem_nid.addr, align 4, !dbg !5623
  %idxprom3 = zext i32 %4 to i64, !dbg !5624
  %arrayidx4 = getelementptr [64 x ptr], ptr @node_devices, i64 0, i64 %idxprom3, !dbg !5624
  %5 = load ptr, ptr %arrayidx4, align 8, !dbg !5624
  store ptr %5, ptr %targ_node, align 8, !dbg !5625
  %6 = load ptr, ptr %init_node, align 8, !dbg !5626
  %7 = load i32, ptr %access.addr, align 4, !dbg !5627
  %call5 = call ptr @node_init_node_access(ptr noundef %6, i32 noundef %7) #17, !dbg !5628
  store ptr %call5, ptr %initiator, align 8, !dbg !5629
  %8 = load ptr, ptr %targ_node, align 8, !dbg !5630
  %9 = load i32, ptr %access.addr, align 4, !dbg !5631
  %call6 = call ptr @node_init_node_access(ptr noundef %8, i32 noundef %9) #17, !dbg !5632
  store ptr %call6, ptr %target, align 8, !dbg !5633
  %10 = load ptr, ptr %initiator, align 8, !dbg !5634
  %tobool7 = icmp ne ptr %10, null, !dbg !5634
  br i1 %tobool7, label %lor.lhs.false8, label %if.then10, !dbg !5636

lor.lhs.false8:                                   ; preds = %if.end
  %11 = load ptr, ptr %target, align 8, !dbg !5637
  %tobool9 = icmp ne ptr %11, null, !dbg !5637
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !5638

if.then10:                                        ; preds = %lor.lhs.false8, %if.end
  store i32 -12, ptr %retval, align 4, !dbg !5639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5639

if.end11:                                         ; preds = %lor.lhs.false8
  %12 = load ptr, ptr %initiator, align 8, !dbg !5640
  %dev = getelementptr inbounds %struct.node_access_nodes, ptr %12, i32 0, i32 0, !dbg !5641
  %kobj = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 0, !dbg !5642
  %13 = load ptr, ptr %targ_node, align 8, !dbg !5643
  %dev12 = getelementptr inbounds %struct.node, ptr %13, i32 0, i32 0, !dbg !5644
  %kobj13 = getelementptr inbounds %struct.device, ptr %dev12, i32 0, i32 0, !dbg !5645
  %14 = load ptr, ptr %targ_node, align 8, !dbg !5646
  %dev14 = getelementptr inbounds %struct.node, ptr %14, i32 0, i32 0, !dbg !5647
  %call15 = call ptr @dev_name(ptr noundef %dev14) #17, !dbg !5648
  %call16 = call i32 @sysfs_add_link_to_group(ptr noundef %kobj, ptr noundef @.str, ptr noundef %kobj13, ptr noundef %call15) #17, !dbg !5649
  store i32 %call16, ptr %ret, align 4, !dbg !5650
  %15 = load i32, ptr %ret, align 4, !dbg !5651
  %tobool17 = icmp ne i32 %15, 0, !dbg !5651
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5653

if.then18:                                        ; preds = %if.end11
  %16 = load i32, ptr %ret, align 4, !dbg !5654
  store i32 %16, ptr %retval, align 4, !dbg !5655
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5655

if.end19:                                         ; preds = %if.end11
  %17 = load ptr, ptr %target, align 8, !dbg !5656
  %dev20 = getelementptr inbounds %struct.node_access_nodes, ptr %17, i32 0, i32 0, !dbg !5657
  %kobj21 = getelementptr inbounds %struct.device, ptr %dev20, i32 0, i32 0, !dbg !5658
  %18 = load ptr, ptr %init_node, align 8, !dbg !5659
  %dev22 = getelementptr inbounds %struct.node, ptr %18, i32 0, i32 0, !dbg !5660
  %kobj23 = getelementptr inbounds %struct.device, ptr %dev22, i32 0, i32 0, !dbg !5661
  %19 = load ptr, ptr %init_node, align 8, !dbg !5662
  %dev24 = getelementptr inbounds %struct.node, ptr %19, i32 0, i32 0, !dbg !5663
  %call25 = call ptr @dev_name(ptr noundef %dev24) #17, !dbg !5664
  %call26 = call i32 @sysfs_add_link_to_group(ptr noundef %kobj21, ptr noundef @.str.1, ptr noundef %kobj23, ptr noundef %call25) #17, !dbg !5665
  store i32 %call26, ptr %ret, align 4, !dbg !5666
  %20 = load i32, ptr %ret, align 4, !dbg !5667
  %tobool27 = icmp ne i32 %20, 0, !dbg !5667
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !5669

if.then28:                                        ; preds = %if.end19
  br label %err, !dbg !5670

if.end29:                                         ; preds = %if.end19
  store i32 0, ptr %retval, align 4, !dbg !5671
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5671

err:                                              ; preds = %if.then28
  call void @llvm.dbg.label(metadata !5602), !dbg !5672
  %21 = load ptr, ptr %initiator, align 8, !dbg !5673
  %dev30 = getelementptr inbounds %struct.node_access_nodes, ptr %21, i32 0, i32 0, !dbg !5674
  %kobj31 = getelementptr inbounds %struct.device, ptr %dev30, i32 0, i32 0, !dbg !5675
  %22 = load ptr, ptr %targ_node, align 8, !dbg !5676
  %dev32 = getelementptr inbounds %struct.node, ptr %22, i32 0, i32 0, !dbg !5677
  %call33 = call ptr @dev_name(ptr noundef %dev32) #17, !dbg !5678
  call void @sysfs_remove_link_from_group(ptr noundef %kobj31, ptr noundef @.str, ptr noundef %call33) #17, !dbg !5679
  %23 = load i32, ptr %ret, align 4, !dbg !5680
  store i32 %23, ptr %retval, align 4, !dbg !5681
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5681

cleanup:                                          ; preds = %err, %if.end29, %if.then18, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !5682
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #18, !dbg !5682
  call void @llvm.lifetime.end.p0(i64 8, ptr %initiator) #18, !dbg !5682
  call void @llvm.lifetime.end.p0(i64 8, ptr %targ_node) #18, !dbg !5682
  call void @llvm.lifetime.end.p0(i64 8, ptr %init_node) #18, !dbg !5682
  %24 = load i32, ptr %retval, align 4, !dbg !5682
  ret i32 %24, !dbg !5682
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @node_init_node_access(ptr noundef %node, i32 noundef %access) #0 align 16 !dbg !5683 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %access.addr = alloca i32, align 4
  %access_node = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5687, metadata !DIExpression()), !dbg !5699
  store i32 %access, ptr %access.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %access.addr, metadata !5688, metadata !DIExpression()), !dbg !5700
  call void @llvm.lifetime.start.p0(i64 8, ptr %access_node) #18, !dbg !5701
  call void @llvm.dbg.declare(metadata ptr %access_node, metadata !5689, metadata !DIExpression()), !dbg !5702
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #18, !dbg !5703
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5690, metadata !DIExpression()), !dbg !5704
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5705
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5691, metadata !DIExpression()), !dbg !5705
  %0 = load ptr, ptr %node.addr, align 8, !dbg !5705
  %access_list = getelementptr inbounds %struct.node, ptr %0, i32 0, i32 1, !dbg !5705
  %next = getelementptr inbounds %struct.list_head, ptr %access_list, i32 0, i32 0, !dbg !5705
  %1 = load ptr, ptr %next, align 8, !dbg !5705
  store ptr %1, ptr %__mptr, align 8, !dbg !5705
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5705
  %add.ptr = getelementptr i8, ptr %2, i64 -728, !dbg !5705
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5705
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5706
  %3 = load ptr, ptr %tmp, align 8, !dbg !5705
  store ptr %3, ptr %access_node, align 8, !dbg !5706
  br label %for.cond, !dbg !5706

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %access_node, align 8, !dbg !5707
  %list_node = getelementptr inbounds %struct.node_access_nodes, ptr %4, i32 0, i32 1, !dbg !5707
  %5 = load ptr, ptr %node.addr, align 8, !dbg !5707
  %access_list1 = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 1, !dbg !5707
  %cmp = icmp eq ptr %list_node, %access_list1, !dbg !5707
  %lnot = xor i1 %cmp, true, !dbg !5707
  br i1 %lnot, label %for.body, label %for.end, !dbg !5706

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %access_node, align 8, !dbg !5708
  %access2 = getelementptr inbounds %struct.node_access_nodes, ptr %6, i32 0, i32 2, !dbg !5710
  %7 = load i32, ptr %access2, align 8, !dbg !5710
  %8 = load i32, ptr %access.addr, align 4, !dbg !5711
  %cmp3 = icmp eq i32 %7, %8, !dbg !5712
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5713

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %access_node, align 8, !dbg !5714
  store ptr %9, ptr %retval, align 8, !dbg !5715
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5715

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5711

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #18, !dbg !5716
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !5694, metadata !DIExpression()), !dbg !5716
  %10 = load ptr, ptr %access_node, align 8, !dbg !5716
  %list_node5 = getelementptr inbounds %struct.node_access_nodes, ptr %10, i32 0, i32 1, !dbg !5716
  %next6 = getelementptr inbounds %struct.list_head, ptr %list_node5, i32 0, i32 0, !dbg !5716
  %11 = load ptr, ptr %next6, align 8, !dbg !5716
  store ptr %11, ptr %__mptr4, align 8, !dbg !5716
  %12 = load ptr, ptr %__mptr4, align 8, !dbg !5716
  %add.ptr8 = getelementptr i8, ptr %12, i64 -728, !dbg !5716
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !5716
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #18, !dbg !5707
  %13 = load ptr, ptr %tmp7, align 8, !dbg !5716
  store ptr %13, ptr %access_node, align 8, !dbg !5707
  br label %for.cond, !dbg !5707, !llvm.loop !5717

for.end:                                          ; preds = %for.cond
  %call = call noalias ptr @kzalloc(i64 noundef 752, i32 noundef 3264) #19, !dbg !5719
  store ptr %call, ptr %access_node, align 8, !dbg !5720
  %14 = load ptr, ptr %access_node, align 8, !dbg !5721
  %tobool = icmp ne ptr %14, null, !dbg !5721
  br i1 %tobool, label %if.end10, label %if.then9, !dbg !5723

if.then9:                                         ; preds = %for.end
  store ptr null, ptr %retval, align 8, !dbg !5724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5724

if.end10:                                         ; preds = %for.end
  %15 = load i32, ptr %access.addr, align 4, !dbg !5725
  %16 = load ptr, ptr %access_node, align 8, !dbg !5726
  %access11 = getelementptr inbounds %struct.node_access_nodes, ptr %16, i32 0, i32 2, !dbg !5727
  store i32 %15, ptr %access11, align 8, !dbg !5728
  %17 = load ptr, ptr %access_node, align 8, !dbg !5729
  %dev12 = getelementptr inbounds %struct.node_access_nodes, ptr %17, i32 0, i32 0, !dbg !5730
  store ptr %dev12, ptr %dev, align 8, !dbg !5731
  %18 = load ptr, ptr %node.addr, align 8, !dbg !5732
  %dev13 = getelementptr inbounds %struct.node, ptr %18, i32 0, i32 0, !dbg !5733
  %19 = load ptr, ptr %dev, align 8, !dbg !5734
  %parent = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 1, !dbg !5735
  store ptr %dev13, ptr %parent, align 8, !dbg !5736
  %20 = load ptr, ptr %dev, align 8, !dbg !5737
  %release = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 32, !dbg !5738
  store ptr @node_access_release, ptr %release, align 8, !dbg !5739
  %21 = load ptr, ptr %dev, align 8, !dbg !5740
  %groups = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 31, !dbg !5741
  store ptr @node_access_node_groups, ptr %groups, align 8, !dbg !5742
  %22 = load ptr, ptr %dev, align 8, !dbg !5743
  %23 = load i32, ptr %access.addr, align 4, !dbg !5745
  %call14 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %22, ptr noundef @.str.4, i32 noundef %23) #17, !dbg !5746
  %tobool15 = icmp ne i32 %call14, 0, !dbg !5746
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5747

if.then16:                                        ; preds = %if.end10
  br label %free, !dbg !5748

if.end17:                                         ; preds = %if.end10
  %24 = load ptr, ptr %dev, align 8, !dbg !5749
  %call18 = call i32 @device_register(ptr noundef %24) #17, !dbg !5751
  %tobool19 = icmp ne i32 %call18, 0, !dbg !5751
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5752

if.then20:                                        ; preds = %if.end17
  br label %free_name, !dbg !5753

if.end21:                                         ; preds = %if.end17
  %25 = load ptr, ptr %dev, align 8, !dbg !5754
  call void @pm_runtime_no_callbacks(ptr noundef %25) #17, !dbg !5755
  %26 = load ptr, ptr %access_node, align 8, !dbg !5756
  %list_node22 = getelementptr inbounds %struct.node_access_nodes, ptr %26, i32 0, i32 1, !dbg !5757
  %27 = load ptr, ptr %node.addr, align 8, !dbg !5758
  %access_list23 = getelementptr inbounds %struct.node, ptr %27, i32 0, i32 1, !dbg !5759
  call void @list_add_tail(ptr noundef %list_node22, ptr noundef %access_list23) #17, !dbg !5760
  %28 = load ptr, ptr %access_node, align 8, !dbg !5761
  store ptr %28, ptr %retval, align 8, !dbg !5762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5762

free_name:                                        ; preds = %if.then20
  call void @llvm.dbg.label(metadata !5697), !dbg !5763
  %29 = load ptr, ptr %dev, align 8, !dbg !5764
  %kobj = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 0, !dbg !5765
  %name = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 0, !dbg !5766
  %30 = load ptr, ptr %name, align 8, !dbg !5766
  call void @kfree_const(ptr noundef %30) #17, !dbg !5767
  br label %free, !dbg !5767

free:                                             ; preds = %free_name, %if.then16
  call void @llvm.dbg.label(metadata !5698), !dbg !5768
  %31 = load ptr, ptr %access_node, align 8, !dbg !5769
  call void @kfree(ptr noundef %31) #17, !dbg !5770
  store ptr null, ptr %retval, align 8, !dbg !5771
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5771

cleanup:                                          ; preds = %free, %if.end21, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #18, !dbg !5772
  call void @llvm.lifetime.end.p0(i64 8, ptr %access_node) #18, !dbg !5772
  %32 = load ptr, ptr %retval, align 8, !dbg !5772
  ret ptr %32, !dbg !5772
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5773 dso_local i32 @sysfs_add_link_to_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #4 align 16 !dbg !5776 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5780, metadata !DIExpression()), !dbg !5781
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5782
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !5784
  %1 = load ptr, ptr %init_name, align 8, !dbg !5784
  %tobool = icmp ne ptr %1, null, !dbg !5782
  br i1 %tobool, label %if.then, label %if.end, !dbg !5785

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5786
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !5787
  %3 = load ptr, ptr %init_name1, align 8, !dbg !5787
  store ptr %3, ptr %retval, align 8, !dbg !5788
  br label %return, !dbg !5788

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5789
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !5790
  %call = call ptr @kobject_name(ptr noundef %kobj) #17, !dbg !5791
  store ptr %call, ptr %retval, align 8, !dbg !5792
  br label %return, !dbg !5792

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !5793
  ret ptr %5, !dbg !5793
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5794 dso_local void @sysfs_remove_link_from_group(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @unregister_cpu_under_node(i32 noundef %cpu, i32 noundef %nid) #0 align 16 !dbg !5797 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %nid.addr = alloca i32, align 4
  %obj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5799, metadata !DIExpression()), !dbg !5802
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !5800, metadata !DIExpression()), !dbg !5803
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #18, !dbg !5804
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !5801, metadata !DIExpression()), !dbg !5805
  %0 = load i32, ptr %nid.addr, align 4, !dbg !5806
  %call = call i32 @node_state(i32 noundef %0, i32 noundef 1) #17, !dbg !5806
  %tobool = icmp ne i32 %call, 0, !dbg !5806
  br i1 %tobool, label %if.end, label %if.then, !dbg !5808

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5809
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5809

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !5810
  %call1 = call ptr @get_cpu_device(i32 noundef %1) #17, !dbg !5811
  store ptr %call1, ptr %obj, align 8, !dbg !5812
  %2 = load ptr, ptr %obj, align 8, !dbg !5813
  %tobool2 = icmp ne ptr %2, null, !dbg !5813
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5815

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5816
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5816

if.end4:                                          ; preds = %if.end
  %3 = load i32, ptr %nid.addr, align 4, !dbg !5817
  %idxprom = zext i32 %3 to i64, !dbg !5818
  %arrayidx = getelementptr [64 x ptr], ptr @node_devices, i64 0, i64 %idxprom, !dbg !5818
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !5818
  %dev = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 0, !dbg !5819
  %kobj = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 0, !dbg !5820
  %5 = load ptr, ptr %obj, align 8, !dbg !5821
  %kobj5 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 0, !dbg !5822
  %call6 = call ptr @kobject_name(ptr noundef %kobj5) #17, !dbg !5823
  call void @sysfs_remove_link(ptr noundef %kobj, ptr noundef %call6) #17, !dbg !5824
  %6 = load ptr, ptr %obj, align 8, !dbg !5825
  %kobj7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 0, !dbg !5826
  %7 = load i32, ptr %nid.addr, align 4, !dbg !5827
  %idxprom8 = zext i32 %7 to i64, !dbg !5828
  %arrayidx9 = getelementptr [64 x ptr], ptr @node_devices, i64 0, i64 %idxprom8, !dbg !5828
  %8 = load ptr, ptr %arrayidx9, align 8, !dbg !5828
  %dev10 = getelementptr inbounds %struct.node, ptr %8, i32 0, i32 0, !dbg !5829
  %kobj11 = getelementptr inbounds %struct.device, ptr %dev10, i32 0, i32 0, !dbg !5830
  %call12 = call ptr @kobject_name(ptr noundef %kobj11) #17, !dbg !5831
  call void @sysfs_remove_link(ptr noundef %kobj7, ptr noundef %call12) #17, !dbg !5832
  store i32 0, ptr %retval, align 4, !dbg !5833
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5833

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #18, !dbg !5834
  %9 = load i32, ptr %retval, align 4, !dbg !5834
  ret i32 %9, !dbg !5834
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5835 dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__register_one_node(i32 noundef %nid) #0 align 16 !dbg !5838 {
entry:
  %retval = alloca i32, align 4
  %nid.addr = alloca i32, align 4
  %error = alloca i32, align 4
  %cpu = alloca i32, align 4
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !5840, metadata !DIExpression()), !dbg !5844
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #18, !dbg !5845
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5841, metadata !DIExpression()), !dbg !5846
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #18, !dbg !5847
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !5842, metadata !DIExpression()), !dbg !5848
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #18, !dbg !5849
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5843, metadata !DIExpression()), !dbg !5850
  %call = call noalias ptr @kzalloc(i64 noundef 744, i32 noundef 3264) #19, !dbg !5851
  store ptr %call, ptr %node, align 8, !dbg !5852
  %0 = load ptr, ptr %node, align 8, !dbg !5853
  %tobool = icmp ne ptr %0, null, !dbg !5853
  br i1 %tobool, label %if.end, label %if.then, !dbg !5855

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5856
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5856

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %node, align 8, !dbg !5857
  %access_list = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 1, !dbg !5858
  call void @INIT_LIST_HEAD(ptr noundef %access_list) #17, !dbg !5859
  %2 = load ptr, ptr %node, align 8, !dbg !5860
  %3 = load i32, ptr %nid.addr, align 4, !dbg !5861
  %idxprom = sext i32 %3 to i64, !dbg !5862
  %arrayidx = getelementptr [64 x ptr], ptr @node_devices, i64 0, i64 %idxprom, !dbg !5862
  store ptr %2, ptr %arrayidx, align 8, !dbg !5863
  %4 = load i32, ptr %nid.addr, align 4, !dbg !5864
  %idxprom1 = sext i32 %4 to i64, !dbg !5865
  %arrayidx2 = getelementptr [64 x ptr], ptr @node_devices, i64 0, i64 %idxprom1, !dbg !5865
  %5 = load ptr, ptr %arrayidx2, align 8, !dbg !5865
  %6 = load i32, ptr %nid.addr, align 4, !dbg !5866
  %call3 = call i32 @register_node(ptr noundef %5, i32 noundef %6) #17, !dbg !5867
  store i32 %call3, ptr %error, align 4, !dbg !5868
  store i32 0, ptr %cpu, align 4, !dbg !5869
  br label %for.cond, !dbg !5869

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %cpu, align 4, !dbg !5871
  %conv = sext i32 %7 to i64, !dbg !5871
  %call4 = call i64 @find_next_bit(ptr noundef @__cpu_present_mask, i64 noundef 64, i64 noundef %conv) #17, !dbg !5871
  %conv5 = trunc i64 %call4 to i32, !dbg !5871
  store i32 %conv5, ptr %cpu, align 4, !dbg !5871
  %8 = load i32, ptr %cpu, align 4, !dbg !5871
  %cmp = icmp ult i32 %8, 64, !dbg !5871
  br i1 %cmp, label %for.body, label %for.end, !dbg !5869

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %cpu, align 4, !dbg !5873
  %call7 = call i32 @cpu_to_node(i32 noundef %9) #17, !dbg !5876
  %10 = load i32, ptr %nid.addr, align 4, !dbg !5877
  %cmp8 = icmp eq i32 %call7, %10, !dbg !5878
  br i1 %cmp8, label %if.then10, label %if.end12, !dbg !5879

if.then10:                                        ; preds = %for.body
  %11 = load i32, ptr %cpu, align 4, !dbg !5880
  %12 = load i32, ptr %nid.addr, align 4, !dbg !5881
  %call11 = call i32 @register_cpu_under_node(i32 noundef %11, i32 noundef %12) #17, !dbg !5882
  br label %if.end12, !dbg !5882

if.end12:                                         ; preds = %if.then10, %for.body
  br label %for.inc, !dbg !5883

for.inc:                                          ; preds = %if.end12
  %13 = load i32, ptr %cpu, align 4, !dbg !5871
  %inc = add i32 %13, 1, !dbg !5871
  store i32 %inc, ptr %cpu, align 4, !dbg !5871
  br label %for.cond, !dbg !5871, !llvm.loop !5884

for.end:                                          ; preds = %for.cond
  %14 = load i32, ptr %nid.addr, align 4, !dbg !5886
  call void @node_init_caches(i32 noundef %14) #17, !dbg !5887
  %15 = load i32, ptr %error, align 4, !dbg !5888
  store i32 %15, ptr %retval, align 4, !dbg !5889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5889

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #18, !dbg !5890
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #18, !dbg !5890
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #18, !dbg !5890
  %16 = load i32, ptr %retval, align 4, !dbg !5890
  ret i32 %16, !dbg !5890
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !5891 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5895, metadata !DIExpression()), !dbg !5897
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5896, metadata !DIExpression()), !dbg !5898
  %0 = load i64, ptr %size.addr, align 8, !dbg !5899
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5900
  %or = or i32 %1, 256, !dbg !5901
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !5902
  ret ptr %call, !dbg !5903
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !5904 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5909, metadata !DIExpression()), !dbg !5910
  br label %do.body, !dbg !5911

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5912

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5914

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5912

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5916
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5916
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5916
  store volatile ptr %0, ptr %next, align 8, !dbg !5916
  br label %do.end3, !dbg !5916

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5912

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5918

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5919

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5921

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5919

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5923
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5923
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5923
  store volatile ptr %2, ptr %prev, align 8, !dbg !5923
  br label %do.end9, !dbg !5923

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5919

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5925
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @register_node(ptr noundef %node, i32 noundef %num) #0 align 16 !dbg !5926 {
entry:
  %node.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  %error = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5930, metadata !DIExpression()), !dbg !5933
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !5931, metadata !DIExpression()), !dbg !5934
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #18, !dbg !5935
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5932, metadata !DIExpression()), !dbg !5936
  %0 = load i32, ptr %num.addr, align 4, !dbg !5937
  %1 = load ptr, ptr %node.addr, align 8, !dbg !5938
  %dev = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0, !dbg !5939
  %id = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27, !dbg !5940
  store i32 %0, ptr %id, align 8, !dbg !5941
  %2 = load ptr, ptr %node.addr, align 8, !dbg !5942
  %dev1 = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 0, !dbg !5943
  %bus = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 5, !dbg !5944
  store ptr @node_subsys, ptr %bus, align 8, !dbg !5945
  %3 = load ptr, ptr %node.addr, align 8, !dbg !5946
  %dev2 = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 0, !dbg !5947
  %release = getelementptr inbounds %struct.device, ptr %dev2, i32 0, i32 32, !dbg !5948
  store ptr @node_device_release, ptr %release, align 8, !dbg !5949
  %4 = load ptr, ptr %node.addr, align 8, !dbg !5950
  %dev3 = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 0, !dbg !5951
  %groups = getelementptr inbounds %struct.device, ptr %dev3, i32 0, i32 31, !dbg !5952
  store ptr @node_dev_groups, ptr %groups, align 8, !dbg !5953
  %5 = load ptr, ptr %node.addr, align 8, !dbg !5954
  %dev4 = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 0, !dbg !5955
  %call = call i32 @device_register(ptr noundef %dev4) #17, !dbg !5956
  store i32 %call, ptr %error, align 4, !dbg !5957
  %6 = load i32, ptr %error, align 4, !dbg !5958
  %tobool = icmp ne i32 %6, 0, !dbg !5958
  br i1 %tobool, label %if.then, label %if.else, !dbg !5960

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %node.addr, align 8, !dbg !5961
  %dev5 = getelementptr inbounds %struct.node, ptr %7, i32 0, i32 0, !dbg !5963
  call void @put_device(ptr noundef %dev5) #17, !dbg !5964
  br label %if.end, !dbg !5965

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %node.addr, align 8, !dbg !5966
  call void @hugetlb_register_node(ptr noundef %8) #17, !dbg !5968
  %9 = load ptr, ptr %node.addr, align 8, !dbg !5969
  %call6 = call i32 @compaction_register_node(ptr noundef %9) #17, !dbg !5970
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i32, ptr %error, align 4, !dbg !5971
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #18, !dbg !5972
  ret i32 %10, !dbg !5973
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #4 align 16 !dbg !5974 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5979, metadata !DIExpression()), !dbg !5985
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5980, metadata !DIExpression()), !dbg !5986
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5981, metadata !DIExpression()), !dbg !5987
  %0 = load i64, ptr %size.addr, align 8, !dbg !5988
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5988
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !5988

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5988
  %cmp = icmp ule i64 %2, 64, !dbg !5988
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !5988

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !5988
  %cmp2 = icmp ugt i64 %3, 0, !dbg !5988
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !5989

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #18, !dbg !5990
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5982, metadata !DIExpression()), !dbg !5991
  %4 = load i64, ptr %offset.addr, align 8, !dbg !5992
  %5 = load i64, ptr %size.addr, align 8, !dbg !5992
  %cmp3 = icmp uge i64 %4, %5, !dbg !5992
  %lnot = xor i1 %cmp3, true, !dbg !5992
  %lnot4 = xor i1 %lnot, true, !dbg !5992
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5992
  %conv = sext i32 %lnot.ext to i64, !dbg !5992
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5992
  %tobool = icmp ne i64 %expval, 0, !dbg !5992
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5994

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5995
  store i64 %6, ptr %retval, align 8, !dbg !5996
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5996

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !5997
  %8 = load i64, ptr %7, align 8, !dbg !5998
  %9 = load i64, ptr %offset.addr, align 8, !dbg !5999
  %shl = shl i64 1, %9, !dbg !5999
  %sub = sub i64 -1, %shl, !dbg !5999
  %add = add i64 %sub, 1, !dbg !5999
  %10 = load i64, ptr %size.addr, align 8, !dbg !5999
  %sub6 = sub i64 %10, 1, !dbg !5999
  %sub7 = sub i64 63, %sub6, !dbg !5999
  %shr = lshr i64 -1, %sub7, !dbg !5999
  %and = and i64 %add, %shr, !dbg !5999
  %add8 = add i64 0, %and, !dbg !5999
  %and9 = and i64 %8, %add8, !dbg !6000
  store i64 %and9, ptr %val, align 8, !dbg !6001
  %11 = load i64, ptr %val, align 8, !dbg !6002
  %tobool10 = icmp ne i64 %11, 0, !dbg !6002
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !6002

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !6003
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !6003
  br i1 %13, label %cond.true11, label %cond.false, !dbg !6003

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !6003
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !6003
  %cast = trunc i64 %15 to i32, !dbg !6003
  %conv12 = sext i32 %cast to i64, !dbg !6003
  br label %cond.end, !dbg !6003

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !6003
  %call = call i64 @variable__ffs(i64 noundef %16) #17, !dbg !6003
  br label %cond.end, !dbg !6003

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !6003
  br label %cond.end14, !dbg !6002

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !6004
  br label %cond.end14, !dbg !6002

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !6002
  store i64 %cond15, ptr %retval, align 8, !dbg !6005
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6005

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #18, !dbg !6006
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !6007
  %19 = load i64, ptr %size.addr, align 8, !dbg !6008
  %20 = load i64, ptr %offset.addr, align 8, !dbg !6009
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #17, !dbg !6010
  store i64 %call17, ptr %retval, align 8, !dbg !6011
  br label %return, !dbg !6011

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !6012
  ret i64 %21, !dbg !6012
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_to_node(i32 noundef %cpu) #4 align 16 !dbg !6013 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6016, metadata !DIExpression()), !dbg !6022
  br label %do.body, !dbg !6023

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !6024
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6017, metadata !DIExpression()), !dbg !6024
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6024
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6024
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !6023
  br label %do.end, !dbg !6024

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #18, !dbg !6025
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6020, metadata !DIExpression()), !dbg !6025
  store i64 ptrtoint (ptr @numa_node to i64), ptr %__ptr, align 8, !dbg !6025
  %1 = load i64, ptr %__ptr, align 8, !dbg !6025
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !6025
  %idxprom = sext i32 %2 to i64, !dbg !6025
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6025
  %3 = load i64, ptr %arrayidx, align 8, !dbg !6025
  %add = add i64 %1, %3, !dbg !6025
  %4 = inttoptr i64 %add to ptr, !dbg !6025
  store ptr %4, ptr %tmp1, align 8, !dbg !6025
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #18, !dbg !6023
  %5 = load ptr, ptr %tmp1, align 8, !dbg !6025
  store ptr %5, ptr %tmp, align 8, !dbg !6024
  %6 = load ptr, ptr %tmp, align 8, !dbg !6023
  %7 = load i32, ptr %6, align 4, !dbg !6026
  ret i32 %7, !dbg !6027
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @node_init_caches(i32 noundef %nid) #0 align 16 !dbg !6028 {
entry:
  %nid.addr = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6032, metadata !DIExpression()), !dbg !6033
  ret void, !dbg !6034
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @unregister_one_node(i32 noundef %nid) #0 align 16 !dbg !6035 {
entry:
  %nid.addr = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6037, metadata !DIExpression()), !dbg !6038
  %0 = load i32, ptr %nid.addr, align 4, !dbg !6039
  %idxprom = sext i32 %0 to i64, !dbg !6041
  %arrayidx = getelementptr [64 x ptr], ptr @node_devices, i64 0, i64 %idxprom, !dbg !6041
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !6041
  %tobool = icmp ne ptr %1, null, !dbg !6041
  br i1 %tobool, label %if.end, label %if.then, !dbg !6042

if.then:                                          ; preds = %entry
  br label %return, !dbg !6043

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %nid.addr, align 4, !dbg !6044
  %idxprom1 = sext i32 %2 to i64, !dbg !6045
  %arrayidx2 = getelementptr [64 x ptr], ptr @node_devices, i64 0, i64 %idxprom1, !dbg !6045
  %3 = load ptr, ptr %arrayidx2, align 8, !dbg !6045
  call void @unregister_node(ptr noundef %3) #17, !dbg !6046
  %4 = load i32, ptr %nid.addr, align 4, !dbg !6047
  %idxprom3 = sext i32 %4 to i64, !dbg !6048
  %arrayidx4 = getelementptr [64 x ptr], ptr @node_devices, i64 0, i64 %idxprom3, !dbg !6048
  store ptr null, ptr %arrayidx4, align 8, !dbg !6049
  br label %return, !dbg !6050

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6050
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @node_dev_init() #6 section ".init.text" align 16 !dbg !6051 {
entry:
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !6055
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6053, metadata !DIExpression()), !dbg !6056
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !6055
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6054, metadata !DIExpression()), !dbg !6057
  br label %do.body, !dbg !6058

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6059

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6059

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !6061

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !6062

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !6062

do.end3:                                          ; preds = %do.cond2
  %call = call i32 @subsys_system_register(ptr noundef @node_subsys, ptr noundef @cpu_root_attr_groups) #17, !dbg !6064
  store i32 %call, ptr %ret, align 4, !dbg !6065
  %0 = load i32, ptr %ret, align 4, !dbg !6066
  %tobool = icmp ne i32 %0, 0, !dbg !6066
  br i1 %tobool, label %if.then, label %if.end, !dbg !6068

if.then:                                          ; preds = %do.end3
  %1 = load i32, ptr %ret, align 4, !dbg !6069
  call void (ptr, ...) @panic(ptr noundef @.str.2, ptr noundef @__func__.node_dev_init, i32 noundef %1) #20, !dbg !6070
  unreachable, !dbg !6070

if.end:                                           ; preds = %do.end3
  %call4 = call i32 @__first_node(ptr noundef getelementptr inbounds ([6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 1)) #17, !dbg !6071
  store i32 %call4, ptr %i, align 4, !dbg !6071
  br label %for.cond, !dbg !6071

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !6073
  %cmp = icmp slt i32 %2, 64, !dbg !6073
  br i1 %cmp, label %for.body, label %for.end, !dbg !6071

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !6075
  %call5 = call i32 @register_one_node(i32 noundef %3) #17, !dbg !6077
  store i32 %call5, ptr %ret, align 4, !dbg !6078
  %4 = load i32, ptr %ret, align 4, !dbg !6079
  %tobool6 = icmp ne i32 %4, 0, !dbg !6079
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6081

if.then7:                                         ; preds = %for.body
  %5 = load i32, ptr %ret, align 4, !dbg !6082
  call void (ptr, ...) @panic(ptr noundef @.str.3, ptr noundef @__func__.node_dev_init, i32 noundef %5) #20, !dbg !6083
  unreachable, !dbg !6083

if.end8:                                          ; preds = %for.body
  br label %for.inc, !dbg !6084

for.inc:                                          ; preds = %if.end8
  %6 = load i32, ptr %i, align 4, !dbg !6073
  %call9 = call i32 @__next_node(i32 noundef %6, ptr noundef getelementptr inbounds ([6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 1)) #17, !dbg !6073
  store i32 %call9, ptr %i, align 4, !dbg !6073
  br label %for.cond, !dbg !6073, !llvm.loop !6085

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !6087
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !6087
  ret void, !dbg !6087
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6088 dso_local i32 @subsys_system_register(ptr noundef, ptr noundef) #2

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !6092 dso_local void @panic(ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__first_node(ptr noundef %srcp) #4 align 16 !dbg !6096 {
entry:
  %srcp.addr = alloca ptr, align 8
  %__UNIQUE_ID___x98 = alloca i32, align 4
  %__UNIQUE_ID___y99 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !6102, metadata !DIExpression()), !dbg !6106
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x98) #18, !dbg !6107
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x98, metadata !6103, metadata !DIExpression()), !dbg !6107
  store i32 64, ptr %__UNIQUE_ID___x98, align 4, !dbg !6107
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y99) #18, !dbg !6107
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y99, metadata !6105, metadata !DIExpression()), !dbg !6107
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !6107
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %0, i32 0, i32 0, !dbg !6107
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6107
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 64) #17, !dbg !6107
  %conv = trunc i64 %call to i32, !dbg !6107
  store i32 %conv, ptr %__UNIQUE_ID___y99, align 4, !dbg !6107
  %1 = load i32, ptr %__UNIQUE_ID___x98, align 4, !dbg !6107
  %2 = load i32, ptr %__UNIQUE_ID___y99, align 4, !dbg !6107
  %cmp = icmp ult i32 %1, %2, !dbg !6107
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6107

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %__UNIQUE_ID___x98, align 4, !dbg !6107
  br label %cond.end, !dbg !6107

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___y99, align 4, !dbg !6107
  br label %cond.end, !dbg !6107

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !6107
  store i32 %cond, ptr %tmp, align 4, !dbg !6107
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y99) #18, !dbg !6108
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x98) #18, !dbg !6108
  %5 = load i32, ptr %tmp, align 4, !dbg !6107
  ret i32 %5, !dbg !6109
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @register_one_node(i32 noundef %nid) #4 align 16 !dbg !6110 {
entry:
  %retval = alloca i32, align 4
  %nid.addr = alloca i32, align 4
  %error = alloca i32, align 4
  %pgdat = alloca ptr, align 8
  %start_pfn = alloca i64, align 8
  %end_pfn = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !6112, metadata !DIExpression()), !dbg !6256
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #18, !dbg !6257
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6113, metadata !DIExpression()), !dbg !6258
  store i32 0, ptr %error, align 4, !dbg !6258
  %0 = load i32, ptr %nid.addr, align 4, !dbg !6259
  %call = call i32 @node_state(i32 noundef %0, i32 noundef 1) #17, !dbg !6259
  %tobool = icmp ne i32 %call, 0, !dbg !6259
  br i1 %tobool, label %if.then, label %if.end6, !dbg !6260

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgdat) #18, !dbg !6261
  call void @llvm.dbg.declare(metadata ptr %pgdat, metadata !6114, metadata !DIExpression()), !dbg !6262
  %1 = load i32, ptr %nid.addr, align 4, !dbg !6263
  %idxprom = sext i32 %1 to i64, !dbg !6263
  %arrayidx = getelementptr [0 x ptr], ptr @node_data, i64 0, i64 %idxprom, !dbg !6263
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !6263
  store ptr %2, ptr %pgdat, align 8, !dbg !6262
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_pfn) #18, !dbg !6264
  call void @llvm.dbg.declare(metadata ptr %start_pfn, metadata !6254, metadata !DIExpression()), !dbg !6265
  %3 = load ptr, ptr %pgdat, align 8, !dbg !6266
  %node_start_pfn = getelementptr inbounds %struct.pglist_data, ptr %3, i32 0, i32 3, !dbg !6267
  %4 = load i64, ptr %node_start_pfn, align 8, !dbg !6267
  store i64 %4, ptr %start_pfn, align 8, !dbg !6265
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_pfn) #18, !dbg !6268
  call void @llvm.dbg.declare(metadata ptr %end_pfn, metadata !6255, metadata !DIExpression()), !dbg !6269
  %5 = load i64, ptr %start_pfn, align 8, !dbg !6270
  %6 = load ptr, ptr %pgdat, align 8, !dbg !6271
  %node_spanned_pages = getelementptr inbounds %struct.pglist_data, ptr %6, i32 0, i32 5, !dbg !6272
  %7 = load i64, ptr %node_spanned_pages, align 8, !dbg !6272
  %add = add i64 %5, %7, !dbg !6273
  store i64 %add, ptr %end_pfn, align 8, !dbg !6269
  %8 = load i32, ptr %nid.addr, align 4, !dbg !6274
  %call1 = call i32 @__register_one_node(i32 noundef %8) #17, !dbg !6275
  store i32 %call1, ptr %error, align 4, !dbg !6276
  %9 = load i32, ptr %error, align 4, !dbg !6277
  %tobool2 = icmp ne i32 %9, 0, !dbg !6277
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !6279

if.then3:                                         ; preds = %if.then
  %10 = load i32, ptr %error, align 4, !dbg !6280
  store i32 %10, ptr %retval, align 4, !dbg !6281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6281

if.end:                                           ; preds = %if.then
  %11 = load i32, ptr %nid.addr, align 4, !dbg !6282
  %12 = load i64, ptr %start_pfn, align 8, !dbg !6283
  %13 = load i64, ptr %end_pfn, align 8, !dbg !6284
  call void @register_memory_blocks_under_node(i32 noundef %11, i64 noundef %12, i64 noundef %13, i32 noundef 0) #17, !dbg !6285
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6286
  br label %cleanup, !dbg !6286

cleanup:                                          ; preds = %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_pfn) #18, !dbg !6286
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_pfn) #18, !dbg !6286
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgdat) #18, !dbg !6286
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup7 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end6, !dbg !6287

if.end6:                                          ; preds = %cleanup.cont, %entry
  %14 = load i32, ptr %error, align 4, !dbg !6288
  store i32 %14, ptr %retval, align 4, !dbg !6289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup7, !dbg !6289

cleanup7:                                         ; preds = %if.end6, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #18, !dbg !6290
  %15 = load i32, ptr %retval, align 4, !dbg !6290
  ret i32 %15, !dbg !6290
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__next_node(i32 noundef %n, ptr noundef %srcp) #4 align 16 !dbg !6291 {
entry:
  %n.addr = alloca i32, align 4
  %srcp.addr = alloca ptr, align 8
  %__UNIQUE_ID___x100 = alloca i32, align 4
  %__UNIQUE_ID___y101 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6295, metadata !DIExpression()), !dbg !6300
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !6296, metadata !DIExpression()), !dbg !6301
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x100) #18, !dbg !6302
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x100, metadata !6297, metadata !DIExpression()), !dbg !6302
  store i32 64, ptr %__UNIQUE_ID___x100, align 4, !dbg !6302
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y101) #18, !dbg !6302
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y101, metadata !6299, metadata !DIExpression()), !dbg !6302
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !6302
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %0, i32 0, i32 0, !dbg !6302
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6302
  %1 = load i32, ptr %n.addr, align 4, !dbg !6302
  %add = add i32 %1, 1, !dbg !6302
  %conv = sext i32 %add to i64, !dbg !6302
  %call = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv) #17, !dbg !6302
  %conv1 = trunc i64 %call to i32, !dbg !6302
  store i32 %conv1, ptr %__UNIQUE_ID___y101, align 4, !dbg !6302
  %2 = load i32, ptr %__UNIQUE_ID___x100, align 4, !dbg !6302
  %3 = load i32, ptr %__UNIQUE_ID___y101, align 4, !dbg !6302
  %cmp = icmp ult i32 %2, %3, !dbg !6302
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6302

cond.true:                                        ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___x100, align 4, !dbg !6302
  br label %cond.end, !dbg !6302

cond.false:                                       ; preds = %entry
  %5 = load i32, ptr %__UNIQUE_ID___y101, align 4, !dbg !6302
  br label %cond.end, !dbg !6302

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !6302
  store i32 %cond, ptr %tmp, align 4, !dbg !6302
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y101) #18, !dbg !6303
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x100) #18, !dbg !6303
  %6 = load i32, ptr %tmp, align 4, !dbg !6302
  ret i32 %6, !dbg !6304
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !6305 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6307, metadata !DIExpression()), !dbg !6308
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6309
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !6310
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6311
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6312
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6313
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6314
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6315
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6316
  ret void, !dbg !6317
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !6318 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6320, metadata !DIExpression()), !dbg !6321
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6322
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !6324
  br i1 %call, label %if.end, label %if.then, !dbg !6325

if.then:                                          ; preds = %entry
  br label %return, !dbg !6326

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6327
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6328
  %2 = load ptr, ptr %prev, align 8, !dbg !6328
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6329
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6330
  %4 = load ptr, ptr %next, align 8, !dbg !6330
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !6331
  br label %return, !dbg !6332

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6332
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !6333 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6337, metadata !DIExpression()), !dbg !6338
  ret i1 true, !dbg !6339
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6340 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6344, metadata !DIExpression()), !dbg !6346
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6345, metadata !DIExpression()), !dbg !6347
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6348
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6349
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6350
  store ptr %0, ptr %prev1, align 8, !dbg !6351
  br label %do.body, !dbg !6352

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6353

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6355

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6353

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6357
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6357
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6357
  store volatile ptr %2, ptr %next4, align 8, !dbg !6357
  br label %do.end5, !dbg !6357

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6353

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6359
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !6360 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6368, metadata !DIExpression()), !dbg !6373
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6369, metadata !DIExpression()), !dbg !6374
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !6375
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6370, metadata !DIExpression()), !dbg !6376
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6377
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6378
  %div = udiv i64 %1, 64, !dbg !6378
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6379
  store ptr %add.ptr, ptr %p, align 8, !dbg !6376
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #18, !dbg !6380
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6371, metadata !DIExpression()), !dbg !6381
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6382
  %rem = urem i64 %2, 64, !dbg !6382
  %shl = shl i64 1, %rem, !dbg !6382
  store i64 %shl, ptr %mask, align 8, !dbg !6381
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #18, !dbg !6383
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6372, metadata !DIExpression()), !dbg !6384
  %3 = load ptr, ptr %p, align 8, !dbg !6385
  %4 = load i64, ptr %3, align 8, !dbg !6386
  store i64 %4, ptr %val, align 8, !dbg !6384
  %5 = load i64, ptr %val, align 8, !dbg !6387
  %6 = load i64, ptr %mask, align 8, !dbg !6388
  %and = and i64 %5, %6, !dbg !6389
  %tobool = icmp ne i64 %and, 0, !dbg !6390
  %lnot = xor i1 %tobool, true, !dbg !6390
  %lnot1 = xor i1 %lnot, true, !dbg !6391
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #18, !dbg !6392
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #18, !dbg !6392
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !6392
  ret i1 %lnot1, !dbg !6393
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !6394 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6397, metadata !DIExpression()), !dbg !6399
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6398, metadata !DIExpression()), !dbg !6400
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6401
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6402
  %div = udiv i64 %1, 64, !dbg !6402
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6403
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !6404
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6405
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6406
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !6407
  ret i1 %call, !dbg !6408
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !6409 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6417, metadata !DIExpression()), !dbg !6419
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6418, metadata !DIExpression()), !dbg !6420
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6421
  %1 = load i64, ptr %size.addr, align 8, !dbg !6422
  %conv = trunc i64 %1 to i32, !dbg !6422
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !6423
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6424
  %3 = load i64, ptr %size.addr, align 8, !dbg !6424
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !6424
  ret void, !dbg !6425
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !6426 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6429, metadata !DIExpression()), !dbg !6431
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6430, metadata !DIExpression()), !dbg !6432
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6433
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6434
  br i1 %1, label %cond.true, label %cond.false, !dbg !6434

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6435
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6436
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !6437
  %conv = zext i1 %call to i32, !dbg !6437
  br label %cond.end, !dbg !6434

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6438
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6439
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !6440
  %conv2 = zext i1 %call1 to i32, !dbg !6440
  br label %cond.end, !dbg !6434

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6434
  %tobool = icmp ne i32 %cond, 0, !dbg !6434
  ret i1 %tobool, !dbg !6441
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6442 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6447, metadata !DIExpression()), !dbg !6449
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6448, metadata !DIExpression()), !dbg !6450
  ret i1 true, !dbg !6451
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !6452 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6457, metadata !DIExpression()), !dbg !6460
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6458, metadata !DIExpression()), !dbg !6461
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6459, metadata !DIExpression()), !dbg !6462
  ret void, !dbg !6463
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !6464 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6468, metadata !DIExpression()), !dbg !6470
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6469, metadata !DIExpression()), !dbg !6471
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6472
  %and = and i64 %0, 63, !dbg !6473
  %shl = shl i64 1, %and, !dbg !6474
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6475
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6476
  %shr = ashr i64 %2, 6, !dbg !6477
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6475
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6475
  %and1 = and i64 %shl, %3, !dbg !6478
  %cmp = icmp ne i64 %and1, 0, !dbg !6479
  ret i1 %cmp, !dbg !6480
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !6481 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6483, metadata !DIExpression()), !dbg !6486
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6484, metadata !DIExpression()), !dbg !6487
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #18, !dbg !6488
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6485, metadata !DIExpression()), !dbg !6489
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6490
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6491
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #18, !dbg !6492, !srcloc !6493
  %3 = icmp ult i8 %2, 2, !dbg !6492
  call void @llvm.assume(i1 %3), !dbg !6492
  store i8 %2, ptr %oldbit, align 1, !dbg !6492
  %4 = load i8, ptr %oldbit, align 1, !dbg !6494, !range !6495, !noundef !1042
  %tobool = trunc i8 %4 to i1, !dbg !6494
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #18, !dbg !6496
  ret i1 %tobool, !dbg !6497
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @node_access_release(ptr noundef %dev) #0 align 16 !dbg !6498 {
entry:
  %dev.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6500, metadata !DIExpression()), !dbg !6503
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6504
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6501, metadata !DIExpression()), !dbg !6504
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6504
  store ptr %0, ptr %__mptr, align 8, !dbg !6504
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6504
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6504
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6504
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6505
  %2 = load ptr, ptr %tmp, align 8, !dbg !6504
  call void @kfree(ptr noundef %2) #17, !dbg !6506
  ret void, !dbg !6507
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6508 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6511 dso_local i32 @device_register(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6512 dso_local void @pm_runtime_no_callbacks(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !6514 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6516, metadata !DIExpression()), !dbg !6518
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6517, metadata !DIExpression()), !dbg !6519
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6520
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6521
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6522
  %2 = load ptr, ptr %prev, align 8, !dbg !6522
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6523
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #17, !dbg !6524
  ret void, !dbg !6525
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6526 dso_local void @kfree_const(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6530 dso_local void @kfree(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6531 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6535, metadata !DIExpression()), !dbg !6538
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6536, metadata !DIExpression()), !dbg !6539
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6537, metadata !DIExpression()), !dbg !6540
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6541
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6543
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6544
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !6545
  br i1 %call, label %if.end, label %if.then, !dbg !6546

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6547

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6548
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6549
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6550
  store ptr %3, ptr %prev1, align 8, !dbg !6551
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6552
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6553
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6554
  store ptr %5, ptr %next2, align 8, !dbg !6555
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6556
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6557
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6558
  store ptr %7, ptr %prev3, align 8, !dbg !6559
  br label %do.body, !dbg !6560

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6561

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6563

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6561

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6565
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6565
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6565
  store volatile ptr %9, ptr %next6, align 8, !dbg !6565
  br label %do.end7, !dbg !6565

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6561

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6567
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6568 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6572, metadata !DIExpression()), !dbg !6575
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6573, metadata !DIExpression()), !dbg !6576
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6574, metadata !DIExpression()), !dbg !6577
  ret i1 true, !dbg !6578
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !6579 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6581, metadata !DIExpression()), !dbg !6586
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6582, metadata !DIExpression()), !dbg !6587
  %0 = load i64, ptr %size.addr, align 8, !dbg !6588
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6589
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6590

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6591
  %tobool = icmp ne i64 %2, 0, !dbg !6591
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6592

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !6593
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6583, metadata !DIExpression()), !dbg !6594
  %3 = load i64, ptr %size.addr, align 8, !dbg !6595
  %cmp = icmp ugt i64 %3, 8192, !dbg !6597
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6598

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6599
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6600
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !6601
  store ptr %call, ptr %retval, align 8, !dbg !6602
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6602

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6603
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6603
  store i32 %call2, ptr %index, align 4, !dbg !6604
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6605
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6606
  %9 = ptrtoint ptr %8 to i64, !dbg !6606
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6607
  %idxprom = zext i32 %call3 to i64, !dbg !6608
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6608
  %10 = load i32, ptr %index, align 4, !dbg !6609
  %idxprom4 = zext i32 %10 to i64, !dbg !6608
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6608
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6608
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6610
  %13 = load i64, ptr %size.addr, align 8, !dbg !6611
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !6612
  store ptr %call6, ptr %retval, align 8, !dbg !6613
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6613

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !6614
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6615
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6616
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !6617
  store ptr %call8, ptr %retval, align 8, !dbg !6618
  br label %return, !dbg !6618

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6619
  ret ptr %16, !dbg !6619
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6620 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !6621 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6625, metadata !DIExpression()), !dbg !6627
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6626, metadata !DIExpression()), !dbg !6628
  %0 = load i64, ptr %size.addr, align 8, !dbg !6629
  %tobool = icmp ne i64 %0, 0, !dbg !6629
  br i1 %tobool, label %if.end, label %if.then, !dbg !6631

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6632
  br label %return, !dbg !6632

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6633
  %cmp = icmp ule i64 %1, 8, !dbg !6635
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6636

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6637
  br label %return, !dbg !6637

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6638
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6640
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6641

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6642
  %cmp4 = icmp ule i64 %3, 96, !dbg !6643
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6644

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6645
  br label %return, !dbg !6645

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6646
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6648
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6649

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6650
  %cmp9 = icmp ule i64 %5, 192, !dbg !6651
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6652

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6653
  br label %return, !dbg !6653

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6654
  %cmp12 = icmp ule i64 %6, 8, !dbg !6656
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6657

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6658
  br label %return, !dbg !6658

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6659
  %cmp15 = icmp ule i64 %7, 16, !dbg !6661
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6662

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6663
  br label %return, !dbg !6663

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6664
  %cmp18 = icmp ule i64 %8, 32, !dbg !6666
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6667

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6668
  br label %return, !dbg !6668

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6669
  %cmp21 = icmp ule i64 %9, 64, !dbg !6671
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6672

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6673
  br label %return, !dbg !6673

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6674
  %cmp24 = icmp ule i64 %10, 128, !dbg !6676
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6677

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6678
  br label %return, !dbg !6678

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6679
  %cmp27 = icmp ule i64 %11, 256, !dbg !6681
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6682

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6683
  br label %return, !dbg !6683

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6684
  %cmp30 = icmp ule i64 %12, 512, !dbg !6686
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6687

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6688
  br label %return, !dbg !6688

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6689
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6691
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6692

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6693
  br label %return, !dbg !6693

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6694
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6696
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6697

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6698
  br label %return, !dbg !6698

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6699
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6701
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6702

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6703
  br label %return, !dbg !6703

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6704
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6706
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6707

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6708
  br label %return, !dbg !6708

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6709
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6711
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6712

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6713
  br label %return, !dbg !6713

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6714
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6716
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6717

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6718
  br label %return, !dbg !6718

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6719
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6721
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6722

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6723
  br label %return, !dbg !6723

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6724
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6726
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6727

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6728
  br label %return, !dbg !6728

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6729
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6731
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6732

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6733
  br label %return, !dbg !6733

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6734
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6736
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6737

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6738
  br label %return, !dbg !6738

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6739
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6741
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6742

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6743
  br label %return, !dbg !6743

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6744
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6746
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6747

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6748
  br label %return, !dbg !6748

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6749, !range !6495, !noundef !1042
  %tobool69 = trunc i8 %25 to i1, !dbg !6749
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6751

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6752

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_229() #22, !dbg !6753, !srcloc !6756
  unreachable, !dbg !6753

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6757

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6758

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6759

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6761

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6759

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #18, !dbg !6763, !srcloc !6765
  br label %do.end75, !dbg !6763

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6759

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6766
  br label %return, !dbg !6766

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6767
  ret i32 %26, !dbg !6767
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6768 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !6774 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6778, metadata !DIExpression()), !dbg !6780
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6779, metadata !DIExpression()), !dbg !6781
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6782
  %and = and i32 %0, 17, !dbg !6782
  %cmp = icmp eq i32 %and, 0, !dbg !6782
  %lnot = xor i1 %cmp, true, !dbg !6782
  %lnot1 = xor i1 %lnot, true, !dbg !6782
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6782
  %conv = sext i32 %lnot.ext to i64, !dbg !6782
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6782
  %tobool = icmp ne i64 %expval, 0, !dbg !6782
  br i1 %tobool, label %if.then, label %if.end, !dbg !6784

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6785
  br label %return, !dbg !6785

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6786
  %and2 = and i32 %1, 1, !dbg !6788
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6788
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6789

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6790
  br label %return, !dbg !6790

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6791
  br label %return, !dbg !6791

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6793
  ret i32 %2, !dbg !6793
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6794 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6795 dso_local void @__compiletime_assert_229() #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #14

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @node_device_release(ptr noundef %dev) #0 align 16 !dbg !6796 {
entry:
  %dev.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6798, metadata !DIExpression()), !dbg !6801
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6802
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6799, metadata !DIExpression()), !dbg !6802
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6802
  store ptr %0, ptr %__mptr, align 8, !dbg !6802
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6802
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6802
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6802
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6803
  %2 = load ptr, ptr %tmp, align 8, !dbg !6802
  call void @kfree(ptr noundef %2) #17, !dbg !6804
  ret void, !dbg !6805
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6806 dso_local void @put_device(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6807 dso_local void @hugetlb_register_node(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6808 dso_local i32 @compaction_register_node(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @node_read_meminfo(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6811 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %nid = alloca i32, align 4
  %pgdat = alloca ptr, align 8
  %i = alloca %struct.sysinfo, align 8
  %sreclaimable = alloca i64, align 8
  %sunreclaimable = alloca i64, align 8
  %swapcached = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6813, metadata !DIExpression()), !dbg !6841
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6814, metadata !DIExpression()), !dbg !6842
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6815, metadata !DIExpression()), !dbg !6843
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #18, !dbg !6844
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6816, metadata !DIExpression()), !dbg !6845
  store i32 0, ptr %len, align 4, !dbg !6845
  call void @llvm.lifetime.start.p0(i64 4, ptr %nid) #18, !dbg !6846
  call void @llvm.dbg.declare(metadata ptr %nid, metadata !6817, metadata !DIExpression()), !dbg !6847
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6848
  %id = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27, !dbg !6849
  %1 = load i32, ptr %id, align 8, !dbg !6849
  store i32 %1, ptr %nid, align 4, !dbg !6847
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgdat) #18, !dbg !6850
  call void @llvm.dbg.declare(metadata ptr %pgdat, metadata !6818, metadata !DIExpression()), !dbg !6851
  %2 = load i32, ptr %nid, align 4, !dbg !6852
  %idxprom = sext i32 %2 to i64, !dbg !6852
  %arrayidx = getelementptr [0 x ptr], ptr @node_data, i64 0, i64 %idxprom, !dbg !6852
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !6852
  store ptr %3, ptr %pgdat, align 8, !dbg !6851
  call void @llvm.lifetime.start.p0(i64 112, ptr %i) #18, !dbg !6853
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6819, metadata !DIExpression()), !dbg !6854
  call void @llvm.lifetime.start.p0(i64 8, ptr %sreclaimable) #18, !dbg !6855
  call void @llvm.dbg.declare(metadata ptr %sreclaimable, metadata !6838, metadata !DIExpression()), !dbg !6856
  call void @llvm.lifetime.start.p0(i64 8, ptr %sunreclaimable) #18, !dbg !6855
  call void @llvm.dbg.declare(metadata ptr %sunreclaimable, metadata !6839, metadata !DIExpression()), !dbg !6857
  call void @llvm.lifetime.start.p0(i64 8, ptr %swapcached) #18, !dbg !6858
  call void @llvm.dbg.declare(metadata ptr %swapcached, metadata !6840, metadata !DIExpression()), !dbg !6859
  store i64 0, ptr %swapcached, align 8, !dbg !6859
  %4 = load i32, ptr %nid, align 4, !dbg !6860
  call void @si_meminfo_node(ptr noundef %i, i32 noundef %4) #17, !dbg !6861
  %5 = load ptr, ptr %pgdat, align 8, !dbg !6862
  %call = call i64 @node_page_state_pages(ptr noundef %5, i32 noundef 5) #17, !dbg !6863
  store i64 %call, ptr %sreclaimable, align 8, !dbg !6864
  %6 = load ptr, ptr %pgdat, align 8, !dbg !6865
  %call1 = call i64 @node_page_state_pages(ptr noundef %6, i32 noundef 6) #17, !dbg !6866
  store i64 %call1, ptr %sunreclaimable, align 8, !dbg !6867
  %7 = load ptr, ptr %pgdat, align 8, !dbg !6868
  %call2 = call i64 @node_page_state_pages(ptr noundef %7, i32 noundef 40) #17, !dbg !6869
  store i64 %call2, ptr %swapcached, align 8, !dbg !6870
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !6871
  %9 = load i32, ptr %len, align 4, !dbg !6872
  %10 = load i32, ptr %nid, align 4, !dbg !6873
  %totalram = getelementptr inbounds %struct.sysinfo, ptr %i, i32 0, i32 2, !dbg !6874
  %11 = load i64, ptr %totalram, align 8, !dbg !6874
  %shl = shl i64 %11, 2, !dbg !6874
  %12 = load i32, ptr %nid, align 4, !dbg !6875
  %freeram = getelementptr inbounds %struct.sysinfo, ptr %i, i32 0, i32 3, !dbg !6876
  %13 = load i64, ptr %freeram, align 8, !dbg !6876
  %shl3 = shl i64 %13, 2, !dbg !6876
  %14 = load i32, ptr %nid, align 4, !dbg !6877
  %totalram4 = getelementptr inbounds %struct.sysinfo, ptr %i, i32 0, i32 2, !dbg !6878
  %15 = load i64, ptr %totalram4, align 8, !dbg !6878
  %freeram5 = getelementptr inbounds %struct.sysinfo, ptr %i, i32 0, i32 3, !dbg !6878
  %16 = load i64, ptr %freeram5, align 8, !dbg !6878
  %sub = sub i64 %15, %16, !dbg !6878
  %shl6 = shl i64 %sub, 2, !dbg !6878
  %17 = load i32, ptr %nid, align 4, !dbg !6879
  %18 = load i64, ptr %swapcached, align 8, !dbg !6880
  %shl7 = shl i64 %18, 2, !dbg !6880
  %19 = load i32, ptr %nid, align 4, !dbg !6881
  %20 = load ptr, ptr %pgdat, align 8, !dbg !6882
  %call8 = call i64 @node_page_state(ptr noundef %20, i32 noundef 1) #17, !dbg !6882
  %21 = load ptr, ptr %pgdat, align 8, !dbg !6882
  %call9 = call i64 @node_page_state(ptr noundef %21, i32 noundef 3) #17, !dbg !6882
  %add = add i64 %call8, %call9, !dbg !6882
  %shl10 = shl i64 %add, 2, !dbg !6882
  %22 = load i32, ptr %nid, align 4, !dbg !6883
  %23 = load ptr, ptr %pgdat, align 8, !dbg !6884
  %call11 = call i64 @node_page_state(ptr noundef %23, i32 noundef 0) #17, !dbg !6884
  %24 = load ptr, ptr %pgdat, align 8, !dbg !6884
  %call12 = call i64 @node_page_state(ptr noundef %24, i32 noundef 2) #17, !dbg !6884
  %add13 = add i64 %call11, %call12, !dbg !6884
  %shl14 = shl i64 %add13, 2, !dbg !6884
  %25 = load i32, ptr %nid, align 4, !dbg !6885
  %26 = load ptr, ptr %pgdat, align 8, !dbg !6886
  %call15 = call i64 @node_page_state(ptr noundef %26, i32 noundef 1) #17, !dbg !6886
  %shl16 = shl i64 %call15, 2, !dbg !6886
  %27 = load i32, ptr %nid, align 4, !dbg !6887
  %28 = load ptr, ptr %pgdat, align 8, !dbg !6888
  %call17 = call i64 @node_page_state(ptr noundef %28, i32 noundef 0) #17, !dbg !6888
  %shl18 = shl i64 %call17, 2, !dbg !6888
  %29 = load i32, ptr %nid, align 4, !dbg !6889
  %30 = load ptr, ptr %pgdat, align 8, !dbg !6890
  %call19 = call i64 @node_page_state(ptr noundef %30, i32 noundef 3) #17, !dbg !6890
  %shl20 = shl i64 %call19, 2, !dbg !6890
  %31 = load i32, ptr %nid, align 4, !dbg !6891
  %32 = load ptr, ptr %pgdat, align 8, !dbg !6892
  %call21 = call i64 @node_page_state(ptr noundef %32, i32 noundef 2) #17, !dbg !6892
  %shl22 = shl i64 %call21, 2, !dbg !6892
  %33 = load i32, ptr %nid, align 4, !dbg !6893
  %34 = load ptr, ptr %pgdat, align 8, !dbg !6894
  %call23 = call i64 @node_page_state(ptr noundef %34, i32 noundef 4) #17, !dbg !6894
  %shl24 = shl i64 %call23, 2, !dbg !6894
  %35 = load i32, ptr %nid, align 4, !dbg !6895
  %36 = load i32, ptr %nid, align 4, !dbg !6896
  %call25 = call i64 @sum_zone_node_page_state(i32 noundef %36, i32 noundef 7) #17, !dbg !6896
  %shl26 = shl i64 %call25, 2, !dbg !6896
  %call27 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %8, i32 noundef %9, ptr noundef @.str.7, i32 noundef %10, i64 noundef %shl, i32 noundef %12, i64 noundef %shl3, i32 noundef %14, i64 noundef %shl6, i32 noundef %17, i64 noundef %shl7, i32 noundef %19, i64 noundef %shl10, i32 noundef %22, i64 noundef %shl14, i32 noundef %25, i64 noundef %shl16, i32 noundef %27, i64 noundef %shl18, i32 noundef %29, i64 noundef %shl20, i32 noundef %31, i64 noundef %shl22, i32 noundef %33, i64 noundef %shl24, i32 noundef %35, i64 noundef %shl26) #17, !dbg !6897
  store i32 %call27, ptr %len, align 4, !dbg !6898
  %37 = load ptr, ptr %buf.addr, align 8, !dbg !6899
  %38 = load i32, ptr %len, align 4, !dbg !6900
  %39 = load i32, ptr %nid, align 4, !dbg !6901
  %40 = load ptr, ptr %pgdat, align 8, !dbg !6902
  %call28 = call i64 @node_page_state(ptr noundef %40, i32 noundef 20) #17, !dbg !6902
  %shl29 = shl i64 %call28, 2, !dbg !6902
  %41 = load i32, ptr %nid, align 4, !dbg !6903
  %42 = load ptr, ptr %pgdat, align 8, !dbg !6904
  %call30 = call i64 @node_page_state(ptr noundef %42, i32 noundef 21) #17, !dbg !6904
  %shl31 = shl i64 %call30, 2, !dbg !6904
  %43 = load i32, ptr %nid, align 4, !dbg !6905
  %44 = load ptr, ptr %pgdat, align 8, !dbg !6906
  %call32 = call i64 @node_page_state(ptr noundef %44, i32 noundef 19) #17, !dbg !6906
  %shl33 = shl i64 %call32, 2, !dbg !6906
  %45 = load i32, ptr %nid, align 4, !dbg !6907
  %46 = load ptr, ptr %pgdat, align 8, !dbg !6908
  %call34 = call i64 @node_page_state(ptr noundef %46, i32 noundef 18) #17, !dbg !6908
  %shl35 = shl i64 %call34, 2, !dbg !6908
  %47 = load i32, ptr %nid, align 4, !dbg !6909
  %48 = load ptr, ptr %pgdat, align 8, !dbg !6910
  %call36 = call i64 @node_page_state(ptr noundef %48, i32 noundef 17) #17, !dbg !6910
  %shl37 = shl i64 %call36, 2, !dbg !6910
  %49 = load i32, ptr %nid, align 4, !dbg !6911
  %sharedram = getelementptr inbounds %struct.sysinfo, ptr %i, i32 0, i32 4, !dbg !6912
  %50 = load i64, ptr %sharedram, align 8, !dbg !6912
  %shl38 = shl i64 %50, 2, !dbg !6912
  %51 = load i32, ptr %nid, align 4, !dbg !6913
  %52 = load ptr, ptr %pgdat, align 8, !dbg !6914
  %call39 = call i64 @node_page_state(ptr noundef %52, i32 noundef 37) #17, !dbg !6915
  %53 = load i32, ptr %nid, align 4, !dbg !6916
  %54 = load ptr, ptr %pgdat, align 8, !dbg !6917
  %call40 = call i64 @node_page_state(ptr noundef %54, i32 noundef 38) #17, !dbg !6917
  %shl41 = shl i64 %call40, 2, !dbg !6917
  %55 = load i32, ptr %nid, align 4, !dbg !6918
  %56 = load ptr, ptr %pgdat, align 8, !dbg !6919
  %call42 = call i64 @node_page_state(ptr noundef %56, i32 noundef 39) #17, !dbg !6919
  %shl43 = shl i64 %call42, 2, !dbg !6919
  %57 = load i32, ptr %nid, align 4, !dbg !6920
  %58 = load i32, ptr %nid, align 4, !dbg !6921
  %59 = load i32, ptr %nid, align 4, !dbg !6922
  %call44 = call i64 @sum_zone_node_page_state(i32 noundef %59, i32 noundef 8) #17, !dbg !6922
  %shl45 = shl i64 %call44, 2, !dbg !6922
  %60 = load i32, ptr %nid, align 4, !dbg !6923
  %61 = load ptr, ptr %pgdat, align 8, !dbg !6924
  %call46 = call i64 @node_page_state(ptr noundef %61, i32 noundef 22) #17, !dbg !6924
  %shl47 = shl i64 %call46, 2, !dbg !6924
  %62 = load i32, ptr %nid, align 4, !dbg !6925
  %63 = load i64, ptr %sreclaimable, align 8, !dbg !6926
  %64 = load ptr, ptr %pgdat, align 8, !dbg !6926
  %call48 = call i64 @node_page_state(ptr noundef %64, i32 noundef 34) #17, !dbg !6926
  %add49 = add i64 %63, %call48, !dbg !6926
  %shl50 = shl i64 %add49, 2, !dbg !6926
  %65 = load i32, ptr %nid, align 4, !dbg !6927
  %66 = load i64, ptr %sreclaimable, align 8, !dbg !6928
  %67 = load i64, ptr %sunreclaimable, align 8, !dbg !6928
  %add51 = add i64 %66, %67, !dbg !6928
  %shl52 = shl i64 %add51, 2, !dbg !6928
  %68 = load i32, ptr %nid, align 4, !dbg !6929
  %69 = load i64, ptr %sreclaimable, align 8, !dbg !6930
  %shl53 = shl i64 %69, 2, !dbg !6930
  %70 = load i32, ptr %nid, align 4, !dbg !6931
  %71 = load i64, ptr %sunreclaimable, align 8, !dbg !6932
  %shl54 = shl i64 %71, 2, !dbg !6932
  %call55 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %37, i32 noundef %38, ptr noundef @.str.8, i32 noundef %39, i64 noundef %shl29, i32 noundef %41, i64 noundef %shl31, i32 noundef %43, i64 noundef %shl33, i32 noundef %45, i64 noundef %shl35, i32 noundef %47, i64 noundef %shl37, i32 noundef %49, i64 noundef %shl38, i32 noundef %51, i64 noundef %call39, i32 noundef %53, i64 noundef %shl41, i32 noundef %55, i64 noundef %shl43, i32 noundef %57, i64 noundef 0, i32 noundef %58, i64 noundef %shl45, i32 noundef %60, i64 noundef %shl47, i32 noundef %62, i64 noundef %shl50, i32 noundef %65, i64 noundef %shl52, i32 noundef %68, i64 noundef %shl53, i32 noundef %70, i64 noundef %shl54) #17, !dbg !6933
  %72 = load i32, ptr %len, align 4, !dbg !6934
  %add56 = add i32 %72, %call55, !dbg !6934
  store i32 %add56, ptr %len, align 4, !dbg !6934
  %73 = load ptr, ptr %buf.addr, align 8, !dbg !6935
  %74 = load i32, ptr %len, align 4, !dbg !6936
  %75 = load i32, ptr %nid, align 4, !dbg !6937
  %call57 = call i32 @hugetlb_report_node_meminfo(ptr noundef %73, i32 noundef %74, i32 noundef %75) #17, !dbg !6938
  %76 = load i32, ptr %len, align 4, !dbg !6939
  %add58 = add i32 %76, %call57, !dbg !6939
  store i32 %add58, ptr %len, align 4, !dbg !6939
  %77 = load i32, ptr %len, align 4, !dbg !6940
  %conv = sext i32 %77 to i64, !dbg !6940
  call void @llvm.lifetime.end.p0(i64 8, ptr %swapcached) #18, !dbg !6941
  call void @llvm.lifetime.end.p0(i64 8, ptr %sunreclaimable) #18, !dbg !6941
  call void @llvm.lifetime.end.p0(i64 8, ptr %sreclaimable) #18, !dbg !6941
  call void @llvm.lifetime.end.p0(i64 112, ptr %i) #18, !dbg !6941
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgdat) #18, !dbg !6941
  call void @llvm.lifetime.end.p0(i64 4, ptr %nid) #18, !dbg !6941
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #18, !dbg !6941
  ret i64 %conv, !dbg !6942
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6943 dso_local void @si_meminfo_node(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6947 dso_local i64 @node_page_state_pages(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6951 dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6954 dso_local i64 @node_page_state(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6955 dso_local i64 @sum_zone_node_page_state(i32 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6958 dso_local i32 @hugetlb_report_node_meminfo(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @node_read_numastat(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6961 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6963, metadata !DIExpression()), !dbg !6966
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6964, metadata !DIExpression()), !dbg !6967
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6965, metadata !DIExpression()), !dbg !6968
  call void @fold_vm_numa_events() #17, !dbg !6969
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6970
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6971
  %id = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27, !dbg !6972
  %2 = load i32, ptr %id, align 8, !dbg !6972
  %call = call i64 @sum_zone_numa_event_state(i32 noundef %2, i32 noundef 0) #17, !dbg !6973
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6974
  %id1 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27, !dbg !6975
  %4 = load i32, ptr %id1, align 8, !dbg !6975
  %call2 = call i64 @sum_zone_numa_event_state(i32 noundef %4, i32 noundef 1) #17, !dbg !6976
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !6977
  %id3 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27, !dbg !6978
  %6 = load i32, ptr %id3, align 8, !dbg !6978
  %call4 = call i64 @sum_zone_numa_event_state(i32 noundef %6, i32 noundef 2) #17, !dbg !6979
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !6980
  %id5 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27, !dbg !6981
  %8 = load i32, ptr %id5, align 8, !dbg !6981
  %call6 = call i64 @sum_zone_numa_event_state(i32 noundef %8, i32 noundef 3) #17, !dbg !6982
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !6983
  %id7 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27, !dbg !6984
  %10 = load i32, ptr %id7, align 8, !dbg !6984
  %call8 = call i64 @sum_zone_numa_event_state(i32 noundef %10, i32 noundef 4) #17, !dbg !6985
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !6986
  %id9 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27, !dbg !6987
  %12 = load i32, ptr %id9, align 8, !dbg !6987
  %call10 = call i64 @sum_zone_numa_event_state(i32 noundef %12, i32 noundef 5) #17, !dbg !6988
  %call11 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.10, i64 noundef %call, i64 noundef %call2, i64 noundef %call4, i64 noundef %call6, i64 noundef %call8, i64 noundef %call10) #17, !dbg !6989
  %conv = sext i32 %call11 to i64, !dbg !6989
  ret i64 %conv, !dbg !6990
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6991 dso_local void @fold_vm_numa_events() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6992 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6995 dso_local i64 @sum_zone_numa_event_state(i32 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @node_read_distance(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6998 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %nid = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7000, metadata !DIExpression()), !dbg !7006
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7001, metadata !DIExpression()), !dbg !7007
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7002, metadata !DIExpression()), !dbg !7008
  call void @llvm.lifetime.start.p0(i64 4, ptr %nid) #18, !dbg !7009
  call void @llvm.dbg.declare(metadata ptr %nid, metadata !7003, metadata !DIExpression()), !dbg !7010
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7011
  %id = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27, !dbg !7012
  %1 = load i32, ptr %id, align 8, !dbg !7012
  store i32 %1, ptr %nid, align 4, !dbg !7010
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #18, !dbg !7013
  call void @llvm.dbg.declare(metadata ptr %len, metadata !7004, metadata !DIExpression()), !dbg !7014
  store i32 0, ptr %len, align 4, !dbg !7014
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !7015
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7005, metadata !DIExpression()), !dbg !7016
  br label %do.body, !dbg !7017

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !7018

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7018

do.end:                                           ; preds = %do.cond
  %call = call i32 @__first_node(ptr noundef getelementptr inbounds ([6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 1)) #17, !dbg !7020
  store i32 %call, ptr %i, align 4, !dbg !7020
  br label %for.cond, !dbg !7020

for.cond:                                         ; preds = %for.inc, %do.end
  %2 = load i32, ptr %i, align 4, !dbg !7022
  %cmp = icmp slt i32 %2, 64, !dbg !7022
  br i1 %cmp, label %for.body, label %for.end, !dbg !7020

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !7024
  %4 = load i32, ptr %len, align 4, !dbg !7026
  %5 = load i32, ptr %i, align 4, !dbg !7027
  %tobool = icmp ne i32 %5, 0, !dbg !7027
  %6 = zext i1 %tobool to i64, !dbg !7027
  %cond = select i1 %tobool, ptr @.str.13, ptr @.str.14, !dbg !7027
  %7 = load i32, ptr %nid, align 4, !dbg !7028
  %8 = load i32, ptr %i, align 4, !dbg !7028
  %call1 = call i32 @__node_distance(i32 noundef %7, i32 noundef %8) #17, !dbg !7028
  %call2 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %3, i32 noundef %4, ptr noundef @.str.12, ptr noundef %cond, i32 noundef %call1) #17, !dbg !7029
  %9 = load i32, ptr %len, align 4, !dbg !7030
  %add = add i32 %9, %call2, !dbg !7030
  store i32 %add, ptr %len, align 4, !dbg !7030
  br label %for.inc, !dbg !7031

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !dbg !7022
  %call3 = call i32 @__next_node(i32 noundef %10, ptr noundef getelementptr inbounds ([6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 1)) #17, !dbg !7022
  store i32 %call3, ptr %i, align 4, !dbg !7022
  br label %for.cond, !dbg !7022, !llvm.loop !7032

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !7034
  %12 = load i32, ptr %len, align 4, !dbg !7035
  %call4 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %11, i32 noundef %12, ptr noundef @.str.15) #17, !dbg !7036
  %13 = load i32, ptr %len, align 4, !dbg !7037
  %add5 = add i32 %13, %call4, !dbg !7037
  store i32 %add5, ptr %len, align 4, !dbg !7037
  %14 = load i32, ptr %len, align 4, !dbg !7038
  %conv = sext i32 %14 to i64, !dbg !7038
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !7039
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #18, !dbg !7039
  call void @llvm.lifetime.end.p0(i64 4, ptr %nid) #18, !dbg !7039
  ret i64 %conv, !dbg !7040
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7041 dso_local i32 @__node_distance(i32 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @node_read_vmstat(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !7045 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %nid = alloca i32, align 4
  %pgdat = alloca ptr, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %pages = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7047, metadata !DIExpression()), !dbg !7058
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7048, metadata !DIExpression()), !dbg !7059
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7049, metadata !DIExpression()), !dbg !7060
  call void @llvm.lifetime.start.p0(i64 4, ptr %nid) #18, !dbg !7061
  call void @llvm.dbg.declare(metadata ptr %nid, metadata !7050, metadata !DIExpression()), !dbg !7062
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7063
  %id = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27, !dbg !7064
  %1 = load i32, ptr %id, align 8, !dbg !7064
  store i32 %1, ptr %nid, align 4, !dbg !7062
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgdat) #18, !dbg !7065
  call void @llvm.dbg.declare(metadata ptr %pgdat, metadata !7051, metadata !DIExpression()), !dbg !7066
  %2 = load i32, ptr %nid, align 4, !dbg !7067
  %idxprom = sext i32 %2 to i64, !dbg !7067
  %arrayidx = getelementptr [0 x ptr], ptr @node_data, i64 0, i64 %idxprom, !dbg !7067
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !7067
  store ptr %3, ptr %pgdat, align 8, !dbg !7066
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !7068
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7052, metadata !DIExpression()), !dbg !7069
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #18, !dbg !7070
  call void @llvm.dbg.declare(metadata ptr %len, metadata !7053, metadata !DIExpression()), !dbg !7071
  store i32 0, ptr %len, align 4, !dbg !7071
  store i32 0, ptr %i, align 4, !dbg !7072
  br label %for.cond, !dbg !7074

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !dbg !7075
  %cmp = icmp slt i32 %4, 10, !dbg !7077
  br i1 %cmp, label %for.body, label %for.end, !dbg !7078

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !7079
  %6 = load i32, ptr %len, align 4, !dbg !7080
  %7 = load i32, ptr %i, align 4, !dbg !7081
  %call = call ptr @zone_stat_name(i32 noundef %7) #17, !dbg !7082
  %8 = load i32, ptr %nid, align 4, !dbg !7083
  %9 = load i32, ptr %i, align 4, !dbg !7084
  %call1 = call i64 @sum_zone_node_page_state(i32 noundef %8, i32 noundef %9) #17, !dbg !7085
  %call2 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %5, i32 noundef %6, ptr noundef @.str.17, ptr noundef %call, i64 noundef %call1) #17, !dbg !7086
  %10 = load i32, ptr %len, align 4, !dbg !7087
  %add = add i32 %10, %call2, !dbg !7087
  store i32 %add, ptr %len, align 4, !dbg !7087
  br label %for.inc, !dbg !7088

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !dbg !7089
  %inc = add i32 %11, 1, !dbg !7089
  store i32 %inc, ptr %i, align 4, !dbg !7089
  br label %for.cond, !dbg !7090, !llvm.loop !7091

for.end:                                          ; preds = %for.cond
  call void @fold_vm_numa_events() #17, !dbg !7093
  store i32 0, ptr %i, align 4, !dbg !7094
  br label %for.cond3, !dbg !7096

for.cond3:                                        ; preds = %for.inc10, %for.end
  %12 = load i32, ptr %i, align 4, !dbg !7097
  %cmp4 = icmp slt i32 %12, 6, !dbg !7099
  br i1 %cmp4, label %for.body5, label %for.end12, !dbg !7100

for.body5:                                        ; preds = %for.cond3
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !7101
  %14 = load i32, ptr %len, align 4, !dbg !7102
  %15 = load i32, ptr %i, align 4, !dbg !7103
  %call6 = call ptr @numa_stat_name(i32 noundef %15) #17, !dbg !7104
  %16 = load i32, ptr %nid, align 4, !dbg !7105
  %17 = load i32, ptr %i, align 4, !dbg !7106
  %call7 = call i64 @sum_zone_numa_event_state(i32 noundef %16, i32 noundef %17) #17, !dbg !7107
  %call8 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %13, i32 noundef %14, ptr noundef @.str.17, ptr noundef %call6, i64 noundef %call7) #17, !dbg !7108
  %18 = load i32, ptr %len, align 4, !dbg !7109
  %add9 = add i32 %18, %call8, !dbg !7109
  store i32 %add9, ptr %len, align 4, !dbg !7109
  br label %for.inc10, !dbg !7110

for.inc10:                                        ; preds = %for.body5
  %19 = load i32, ptr %i, align 4, !dbg !7111
  %inc11 = add i32 %19, 1, !dbg !7111
  store i32 %inc11, ptr %i, align 4, !dbg !7111
  br label %for.cond3, !dbg !7112, !llvm.loop !7113

for.end12:                                        ; preds = %for.cond3
  store i32 0, ptr %i, align 4, !dbg !7115
  br label %for.cond13, !dbg !7116

for.cond13:                                       ; preds = %for.inc21, %for.end12
  %20 = load i32, ptr %i, align 4, !dbg !7117
  %cmp14 = icmp slt i32 %20, 41, !dbg !7118
  br i1 %cmp14, label %for.body15, label %for.end23, !dbg !7119

for.body15:                                       ; preds = %for.cond13
  call void @llvm.lifetime.start.p0(i64 8, ptr %pages) #18, !dbg !7120
  call void @llvm.dbg.declare(metadata ptr %pages, metadata !7054, metadata !DIExpression()), !dbg !7121
  %21 = load ptr, ptr %pgdat, align 8, !dbg !7122
  %22 = load i32, ptr %i, align 4, !dbg !7123
  %call16 = call i64 @node_page_state_pages(ptr noundef %21, i32 noundef %22) #17, !dbg !7124
  store i64 %call16, ptr %pages, align 8, !dbg !7121
  %23 = load i32, ptr %i, align 4, !dbg !7125
  %call17 = call zeroext i1 @vmstat_item_print_in_thp(i32 noundef %23) #17, !dbg !7127
  br i1 %call17, label %if.then, label %if.end, !dbg !7128

if.then:                                          ; preds = %for.body15
  br label %do.body, !dbg !7129

do.body:                                          ; preds = %if.then
  call void @__compiletime_assert_337() #22, !dbg !7131, !srcloc !7134
  unreachable, !dbg !7131

do.cond:                                          ; No predecessors!
  br label %do.end, !dbg !7135

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %tmp, align 4, !dbg !7135
  %24 = load i32, ptr %tmp, align 4, !dbg !7129
  %sub = sub i32 %24, 12, !dbg !7136
  %shl = shl i32 1, %sub, !dbg !7136
  %conv = sext i32 %shl to i64, !dbg !7136
  %25 = load i64, ptr %pages, align 8, !dbg !7137
  %div = udiv i64 %25, %conv, !dbg !7137
  store i64 %div, ptr %pages, align 8, !dbg !7137
  br label %if.end, !dbg !7138

if.end:                                           ; preds = %do.end, %for.body15
  %26 = load ptr, ptr %buf.addr, align 8, !dbg !7139
  %27 = load i32, ptr %len, align 4, !dbg !7140
  %28 = load i32, ptr %i, align 4, !dbg !7141
  %call18 = call ptr @node_stat_name(i32 noundef %28) #17, !dbg !7142
  %29 = load i64, ptr %pages, align 8, !dbg !7143
  %call19 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %26, i32 noundef %27, ptr noundef @.str.17, ptr noundef %call18, i64 noundef %29) #17, !dbg !7144
  %30 = load i32, ptr %len, align 4, !dbg !7145
  %add20 = add i32 %30, %call19, !dbg !7145
  store i32 %add20, ptr %len, align 4, !dbg !7145
  call void @llvm.lifetime.end.p0(i64 8, ptr %pages) #18, !dbg !7146
  br label %for.inc21, !dbg !7147

for.inc21:                                        ; preds = %if.end
  %31 = load i32, ptr %i, align 4, !dbg !7148
  %inc22 = add i32 %31, 1, !dbg !7148
  store i32 %inc22, ptr %i, align 4, !dbg !7148
  br label %for.cond13, !dbg !7149, !llvm.loop !7150

for.end23:                                        ; preds = %for.cond13
  %32 = load i32, ptr %len, align 4, !dbg !7152
  %conv24 = sext i32 %32 to i64, !dbg !7152
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #18, !dbg !7153
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !7153
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgdat) #18, !dbg !7153
  call void @llvm.lifetime.end.p0(i64 4, ptr %nid) #18, !dbg !7153
  ret i64 %conv24, !dbg !7154
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @zone_stat_name(i32 noundef %item) #4 align 16 !dbg !7155 {
entry:
  %item.addr = alloca i32, align 4
  store i32 %item, ptr %item.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !7159, metadata !DIExpression()), !dbg !7160
  %0 = load i32, ptr %item.addr, align 4, !dbg !7161
  %idxprom = zext i32 %0 to i64, !dbg !7162
  %arrayidx = getelementptr [0 x ptr], ptr @vmstat_text, i64 0, i64 %idxprom, !dbg !7162
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !7162
  ret ptr %1, !dbg !7163
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @numa_stat_name(i32 noundef %item) #4 align 16 !dbg !7164 {
entry:
  %item.addr = alloca i32, align 4
  store i32 %item, ptr %item.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !7168, metadata !DIExpression()), !dbg !7169
  %0 = load i32, ptr %item.addr, align 4, !dbg !7170
  %add = add i32 10, %0, !dbg !7171
  %idxprom = zext i32 %add to i64, !dbg !7172
  %arrayidx = getelementptr [0 x ptr], ptr @vmstat_text, i64 0, i64 %idxprom, !dbg !7172
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !7172
  ret ptr %1, !dbg !7173
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vmstat_item_print_in_thp(i32 noundef %item) #9 align 16 !dbg !7174 {
entry:
  %item.addr = alloca i32, align 4
  store i32 %item, ptr %item.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !7178, metadata !DIExpression()), !dbg !7179
  ret i1 false, !dbg !7180
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7182 dso_local void @__compiletime_assert_337() #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @node_stat_name(i32 noundef %item) #4 align 16 !dbg !7183 {
entry:
  %item.addr = alloca i32, align 4
  store i32 %item, ptr %item.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !7187, metadata !DIExpression()), !dbg !7188
  %0 = load i32, ptr %item.addr, align 4, !dbg !7189
  %add = add i32 16, %0, !dbg !7190
  %idxprom = zext i32 %add to i64, !dbg !7191
  %arrayidx = getelementptr [0 x ptr], ptr @vmstat_text, i64 0, i64 %idxprom, !dbg !7191
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !7191
  ret ptr %1, !dbg !7192
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cpumap_read(ptr noundef %file, ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %off, i64 noundef %count) #4 align 16 !dbg !7193 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %off.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %node_dev = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %mask = alloca [1 x %struct.cpumask], align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7195, metadata !DIExpression()), !dbg !7211
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !7196, metadata !DIExpression()), !dbg !7212
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7197, metadata !DIExpression()), !dbg !7213
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7198, metadata !DIExpression()), !dbg !7214
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !7199, metadata !DIExpression()), !dbg !7215
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7200, metadata !DIExpression()), !dbg !7216
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #18, !dbg !7217
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !7201, metadata !DIExpression()), !dbg !7218
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !7219
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7202, metadata !DIExpression()), !dbg !7219
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !7219
  store ptr %0, ptr %__mptr, align 8, !dbg !7219
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7219
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !7219
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7219
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !7220
  %2 = load ptr, ptr %tmp, align 8, !dbg !7219
  store ptr %2, ptr %dev, align 8, !dbg !7218
  call void @llvm.lifetime.start.p0(i64 8, ptr %node_dev) #18, !dbg !7221
  call void @llvm.dbg.declare(metadata ptr %node_dev, metadata !7204, metadata !DIExpression()), !dbg !7222
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #18, !dbg !7223
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !7205, metadata !DIExpression()), !dbg !7223
  %3 = load ptr, ptr %dev, align 8, !dbg !7223
  store ptr %3, ptr %__mptr1, align 8, !dbg !7223
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !7223
  %add.ptr3 = getelementptr i8, ptr %4, i64 0, !dbg !7223
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !7223
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #18, !dbg !7224
  %5 = load ptr, ptr %tmp2, align 8, !dbg !7223
  store ptr %5, ptr %node_dev, align 8, !dbg !7222
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #18, !dbg !7225
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7207, metadata !DIExpression()), !dbg !7226
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #18, !dbg !7227
  call void @llvm.dbg.declare(metadata ptr %n, metadata !7210, metadata !DIExpression()), !dbg !7228
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef %mask, i32 noundef 3264) #17, !dbg !7229
  br i1 %call, label %if.end, label %if.then, !dbg !7231

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !7232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7232

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %mask, i64 0, i64 0, !dbg !7233
  %6 = load ptr, ptr %node_dev, align 8, !dbg !7234
  %dev4 = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 0, !dbg !7235
  %id = getelementptr inbounds %struct.device, ptr %dev4, i32 0, i32 27, !dbg !7236
  %7 = load i32, ptr %id, align 8, !dbg !7236
  %call5 = call ptr @cpumask_of_node(i32 noundef %7) #17, !dbg !7237
  %call6 = call zeroext i1 @cpumask_and(ptr noundef %arraydecay, ptr noundef %call5, ptr noundef @__cpu_online_mask) #17, !dbg !7238
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !7239
  %arraydecay7 = getelementptr inbounds [1 x %struct.cpumask], ptr %mask, i64 0, i64 0, !dbg !7240
  %9 = load i64, ptr %off.addr, align 8, !dbg !7241
  %10 = load i64, ptr %count.addr, align 8, !dbg !7242
  %call8 = call i64 @cpumap_print_bitmask_to_buf(ptr noundef %8, ptr noundef %arraydecay7, i64 noundef %9, i64 noundef %10) #17, !dbg !7243
  store i64 %call8, ptr %n, align 8, !dbg !7244
  %arraydecay9 = getelementptr inbounds [1 x %struct.cpumask], ptr %mask, i64 0, i64 0, !dbg !7245
  call void @free_cpumask_var(ptr noundef %arraydecay9) #17, !dbg !7246
  %11 = load i64, ptr %n, align 8, !dbg !7247
  store i64 %11, ptr %retval, align 8, !dbg !7248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7248

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #18, !dbg !7249
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #18, !dbg !7249
  call void @llvm.lifetime.end.p0(i64 8, ptr %node_dev) #18, !dbg !7249
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #18, !dbg !7249
  %12 = load i64, ptr %retval, align 8, !dbg !7249
  ret i64 %12, !dbg !7249
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @alloc_cpumask_var(ptr noundef %mask, i32 noundef %flags) #4 align 16 !dbg !7250 {
entry:
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !7255, metadata !DIExpression()), !dbg !7257
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7256, metadata !DIExpression()), !dbg !7258
  ret i1 true, !dbg !7259
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_and(ptr noundef %dstp, ptr noundef %src1p, ptr noundef %src2p) #4 align 16 !dbg !7260 {
entry:
  %dstp.addr = alloca ptr, align 8
  %src1p.addr = alloca ptr, align 8
  %src2p.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !7265, metadata !DIExpression()), !dbg !7268
  store ptr %src1p, ptr %src1p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1p.addr, metadata !7266, metadata !DIExpression()), !dbg !7269
  store ptr %src2p, ptr %src2p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2p.addr, metadata !7267, metadata !DIExpression()), !dbg !7270
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !7271
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !7271
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !7271
  %1 = load ptr, ptr %src1p.addr, align 8, !dbg !7272
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !7272
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !7272
  %2 = load ptr, ptr %src2p.addr, align 8, !dbg !7273
  %bits3 = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !7273
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %bits3, i64 0, i64 0, !dbg !7273
  %call = call zeroext i1 @bitmap_and(ptr noundef %arraydecay, ptr noundef %arraydecay2, ptr noundef %arraydecay4, i32 noundef 64) #17, !dbg !7274
  ret i1 %call, !dbg !7275
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @cpumask_of_node(i32 noundef %node) #4 align 16 !dbg !7276 {
entry:
  %node.addr = alloca i32, align 4
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !7280, metadata !DIExpression()), !dbg !7281
  %0 = load i32, ptr %node.addr, align 4, !dbg !7282
  %idxprom = sext i32 %0 to i64, !dbg !7283
  %arrayidx = getelementptr [64 x [1 x %struct.cpumask]], ptr @node_to_cpumask_map, i64 0, i64 %idxprom, !dbg !7283
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %arrayidx, i64 0, i64 0, !dbg !7283
  ret ptr %arraydecay, !dbg !7284
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cpumap_print_bitmask_to_buf(ptr noundef %buf, ptr noundef %mask, i64 noundef %off, i64 noundef %count) #4 align 16 !dbg !7285 {
entry:
  %buf.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %off.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7289, metadata !DIExpression()), !dbg !7293
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !7290, metadata !DIExpression()), !dbg !7294
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !7291, metadata !DIExpression()), !dbg !7295
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7292, metadata !DIExpression()), !dbg !7296
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !7297
  %1 = load ptr, ptr %mask.addr, align 8, !dbg !7298
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !7298
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !7298
  %2 = load i32, ptr @nr_cpu_ids, align 4, !dbg !7299
  %3 = load i64, ptr %off.addr, align 8, !dbg !7300
  %4 = load i64, ptr %count.addr, align 8, !dbg !7301
  %call = call i32 @bitmap_print_bitmask_to_buf(ptr noundef %0, ptr noundef %arraydecay, i32 noundef %2, i64 noundef %3, i64 noundef %4) #17, !dbg !7302
  %sub = sub i32 %call, 1, !dbg !7303
  %conv = sext i32 %sub to i64, !dbg !7302
  ret i64 %conv, !dbg !7304
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_cpumask_var(ptr noundef %mask) #4 align 16 !dbg !7305 {
entry:
  %mask.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !7309, metadata !DIExpression()), !dbg !7310
  ret void, !dbg !7311
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_and(ptr noundef %dst, ptr noundef %src1, ptr noundef %src2, i32 noundef %nbits) #4 align 16 !dbg !7312 {
entry:
  %retval = alloca i1, align 1
  %dst.addr = alloca ptr, align 8
  %src1.addr = alloca ptr, align 8
  %src2.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !7317, metadata !DIExpression()), !dbg !7321
  store ptr %src1, ptr %src1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1.addr, metadata !7318, metadata !DIExpression()), !dbg !7322
  store ptr %src2, ptr %src2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2.addr, metadata !7319, metadata !DIExpression()), !dbg !7323
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !7320, metadata !DIExpression()), !dbg !7324
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !7325
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !7325
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !7325

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !7325
  %cmp = icmp ule i32 %2, 64, !dbg !7325
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !7325

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !7325
  %cmp2 = icmp ugt i32 %3, 0, !dbg !7325
  br i1 %cmp2, label %if.then, label %if.end, !dbg !7327

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src1.addr, align 8, !dbg !7328
  %5 = load i64, ptr %4, align 8, !dbg !7329
  %6 = load ptr, ptr %src2.addr, align 8, !dbg !7330
  %7 = load i64, ptr %6, align 8, !dbg !7331
  %and = and i64 %5, %7, !dbg !7332
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !7333
  %sub = sub i32 0, %8, !dbg !7333
  %and3 = and i32 %sub, 63, !dbg !7333
  %sh_prom = zext i32 %and3 to i64, !dbg !7333
  %shr = lshr i64 -1, %sh_prom, !dbg !7333
  %and4 = and i64 %and, %shr, !dbg !7334
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !7335
  store i64 %and4, ptr %9, align 8, !dbg !7336
  %cmp5 = icmp ne i64 %and4, 0, !dbg !7337
  store i1 %cmp5, ptr %retval, align 1, !dbg !7338
  br label %return, !dbg !7338

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !7339
  %11 = load ptr, ptr %src1.addr, align 8, !dbg !7340
  %12 = load ptr, ptr %src2.addr, align 8, !dbg !7341
  %13 = load i32, ptr %nbits.addr, align 4, !dbg !7342
  %call = call zeroext i1 @__bitmap_and(ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13) #17, !dbg !7343
  store i1 %call, ptr %retval, align 1, !dbg !7344
  br label %return, !dbg !7344

return:                                           ; preds = %if.end, %if.then
  %14 = load i1, ptr %retval, align 1, !dbg !7345
  ret i1 %14, !dbg !7345
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7346 dso_local zeroext i1 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7347 dso_local i32 @bitmap_print_bitmask_to_buf(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cpulist_read(ptr noundef %file, ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %off, i64 noundef %count) #4 align 16 !dbg !7350 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %off.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %node_dev = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %mask = alloca [1 x %struct.cpumask], align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7352, metadata !DIExpression()), !dbg !7366
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !7353, metadata !DIExpression()), !dbg !7367
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7354, metadata !DIExpression()), !dbg !7368
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7355, metadata !DIExpression()), !dbg !7369
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !7356, metadata !DIExpression()), !dbg !7370
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7357, metadata !DIExpression()), !dbg !7371
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #18, !dbg !7372
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !7358, metadata !DIExpression()), !dbg !7373
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !7374
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7359, metadata !DIExpression()), !dbg !7374
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !7374
  store ptr %0, ptr %__mptr, align 8, !dbg !7374
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7374
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !7374
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7374
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !7375
  %2 = load ptr, ptr %tmp, align 8, !dbg !7374
  store ptr %2, ptr %dev, align 8, !dbg !7373
  call void @llvm.lifetime.start.p0(i64 8, ptr %node_dev) #18, !dbg !7376
  call void @llvm.dbg.declare(metadata ptr %node_dev, metadata !7361, metadata !DIExpression()), !dbg !7377
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #18, !dbg !7378
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !7362, metadata !DIExpression()), !dbg !7378
  %3 = load ptr, ptr %dev, align 8, !dbg !7378
  store ptr %3, ptr %__mptr1, align 8, !dbg !7378
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !7378
  %add.ptr3 = getelementptr i8, ptr %4, i64 0, !dbg !7378
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !7378
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #18, !dbg !7379
  %5 = load ptr, ptr %tmp2, align 8, !dbg !7378
  store ptr %5, ptr %node_dev, align 8, !dbg !7377
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #18, !dbg !7380
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7364, metadata !DIExpression()), !dbg !7381
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #18, !dbg !7382
  call void @llvm.dbg.declare(metadata ptr %n, metadata !7365, metadata !DIExpression()), !dbg !7383
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef %mask, i32 noundef 3264) #17, !dbg !7384
  br i1 %call, label %if.end, label %if.then, !dbg !7386

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !7387
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7387

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %mask, i64 0, i64 0, !dbg !7388
  %6 = load ptr, ptr %node_dev, align 8, !dbg !7389
  %dev4 = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 0, !dbg !7390
  %id = getelementptr inbounds %struct.device, ptr %dev4, i32 0, i32 27, !dbg !7391
  %7 = load i32, ptr %id, align 8, !dbg !7391
  %call5 = call ptr @cpumask_of_node(i32 noundef %7) #17, !dbg !7392
  %call6 = call zeroext i1 @cpumask_and(ptr noundef %arraydecay, ptr noundef %call5, ptr noundef @__cpu_online_mask) #17, !dbg !7393
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !7394
  %arraydecay7 = getelementptr inbounds [1 x %struct.cpumask], ptr %mask, i64 0, i64 0, !dbg !7395
  %9 = load i64, ptr %off.addr, align 8, !dbg !7396
  %10 = load i64, ptr %count.addr, align 8, !dbg !7397
  %call8 = call i64 @cpumap_print_list_to_buf(ptr noundef %8, ptr noundef %arraydecay7, i64 noundef %9, i64 noundef %10) #17, !dbg !7398
  store i64 %call8, ptr %n, align 8, !dbg !7399
  %arraydecay9 = getelementptr inbounds [1 x %struct.cpumask], ptr %mask, i64 0, i64 0, !dbg !7400
  call void @free_cpumask_var(ptr noundef %arraydecay9) #17, !dbg !7401
  %11 = load i64, ptr %n, align 8, !dbg !7402
  store i64 %11, ptr %retval, align 8, !dbg !7403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7403

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #18, !dbg !7404
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #18, !dbg !7404
  call void @llvm.lifetime.end.p0(i64 8, ptr %node_dev) #18, !dbg !7404
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #18, !dbg !7404
  %12 = load i64, ptr %retval, align 8, !dbg !7404
  ret i64 %12, !dbg !7404
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cpumap_print_list_to_buf(ptr noundef %buf, ptr noundef %mask, i64 noundef %off, i64 noundef %count) #4 align 16 !dbg !7405 {
entry:
  %buf.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %off.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7407, metadata !DIExpression()), !dbg !7411
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !7408, metadata !DIExpression()), !dbg !7412
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !7409, metadata !DIExpression()), !dbg !7413
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7410, metadata !DIExpression()), !dbg !7414
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !7415
  %1 = load ptr, ptr %mask.addr, align 8, !dbg !7416
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !7416
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !7416
  %2 = load i32, ptr @nr_cpu_ids, align 4, !dbg !7417
  %3 = load i64, ptr %off.addr, align 8, !dbg !7418
  %4 = load i64, ptr %count.addr, align 8, !dbg !7419
  %call = call i32 @bitmap_print_list_to_buf(ptr noundef %0, ptr noundef %arraydecay, i32 noundef %2, i64 noundef %3, i64 noundef %4) #17, !dbg !7420
  %sub = sub i32 %call, 1, !dbg !7421
  %conv = sext i32 %sub to i64, !dbg !7420
  ret i64 %conv, !dbg !7422
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7423 dso_local i32 @bitmap_print_list_to_buf(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #9 align 16 !dbg !7424 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !7428, metadata !DIExpression()), !dbg !7429
  %0 = load i64, ptr %word.addr, align 8, !dbg !7430
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #23, !dbg !7431, !srcloc !7432
  store i64 %1, ptr %word.addr, align 8, !dbg !7431
  %2 = load i64, ptr %word.addr, align 8, !dbg !7433
  ret i64 %2, !dbg !7434
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7435 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_node_state(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !7436 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %na = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7438, metadata !DIExpression()), !dbg !7444
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7439, metadata !DIExpression()), !dbg !7445
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7440, metadata !DIExpression()), !dbg !7446
  call void @llvm.lifetime.start.p0(i64 8, ptr %na) #18, !dbg !7447
  call void @llvm.dbg.declare(metadata ptr %na, metadata !7441, metadata !DIExpression()), !dbg !7448
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !7449
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7442, metadata !DIExpression()), !dbg !7449
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !7449
  store ptr %0, ptr %__mptr, align 8, !dbg !7449
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7449
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !7449
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7449
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !7450
  %2 = load ptr, ptr %tmp, align 8, !dbg !7449
  store ptr %2, ptr %na, align 8, !dbg !7448
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !7451
  %4 = load ptr, ptr %na, align 8, !dbg !7452
  %state = getelementptr inbounds %struct.node_attr, ptr %4, i32 0, i32 1, !dbg !7452
  %5 = load i32, ptr %state, align 8, !dbg !7452
  %idxprom = zext i32 %5 to i64, !dbg !7452
  %arrayidx = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom, !dbg !7452
  %call = call i32 @__nodemask_pr_numnodes(ptr noundef %arrayidx) #17, !dbg !7452
  %6 = load ptr, ptr %na, align 8, !dbg !7452
  %state1 = getelementptr inbounds %struct.node_attr, ptr %6, i32 0, i32 1, !dbg !7452
  %7 = load i32, ptr %state1, align 8, !dbg !7452
  %idxprom2 = zext i32 %7 to i64, !dbg !7452
  %arrayidx3 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom2, !dbg !7452
  %call4 = call ptr @__nodemask_pr_bits(ptr noundef %arrayidx3) #17, !dbg !7452
  %call5 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.27, i32 noundef %call, ptr noundef %call4) #17, !dbg !7453
  %conv = sext i32 %call5 to i64, !dbg !7453
  call void @llvm.lifetime.end.p0(i64 8, ptr %na) #18, !dbg !7454
  ret i64 %conv, !dbg !7455
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__nodemask_pr_numnodes(ptr noundef %m) #4 align 16 !dbg !7456 {
entry:
  %m.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !7458, metadata !DIExpression()), !dbg !7459
  %0 = load ptr, ptr %m.addr, align 8, !dbg !7460
  %tobool = icmp ne ptr %0, null, !dbg !7460
  %1 = zext i1 %tobool to i64, !dbg !7460
  %cond = select i1 %tobool, i32 64, i32 0, !dbg !7460
  ret i32 %cond, !dbg !7461
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__nodemask_pr_bits(ptr noundef %m) #4 align 16 !dbg !7462 {
entry:
  %m.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !7466, metadata !DIExpression()), !dbg !7467
  %0 = load ptr, ptr %m.addr, align 8, !dbg !7468
  %tobool = icmp ne ptr %0, null, !dbg !7468
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !7468

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %m.addr, align 8, !dbg !7469
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %1, i32 0, i32 0, !dbg !7470
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !7469
  br label %cond.end, !dbg !7468

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !7468

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arraydecay, %cond.true ], [ null, %cond.false ], !dbg !7468
  ret ptr %cond, !dbg !7471
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #4 align 16 !dbg !7472 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7476, metadata !DIExpression()), !dbg !7481
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7477, metadata !DIExpression()), !dbg !7482
  %0 = load i64, ptr %size.addr, align 8, !dbg !7483
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7483
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !7483

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !7483
  %cmp = icmp ule i64 %2, 64, !dbg !7483
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !7483

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !7483
  %cmp2 = icmp ugt i64 %3, 0, !dbg !7483
  br i1 %cmp2, label %if.then, label %if.end, !dbg !7484

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #18, !dbg !7485
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7478, metadata !DIExpression()), !dbg !7486
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !7487
  %5 = load i64, ptr %4, align 8, !dbg !7488
  %6 = load i64, ptr %size.addr, align 8, !dbg !7489
  %sub = sub i64 %6, 1, !dbg !7489
  %sub3 = sub i64 63, %sub, !dbg !7489
  %shr = lshr i64 -1, %sub3, !dbg !7489
  %and = and i64 -1, %shr, !dbg !7489
  %add = add i64 0, %and, !dbg !7489
  %and4 = and i64 %5, %add, !dbg !7490
  store i64 %and4, ptr %val, align 8, !dbg !7486
  %7 = load i64, ptr %val, align 8, !dbg !7491
  %tobool = icmp ne i64 %7, 0, !dbg !7491
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !7491

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !7492
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !7492
  br i1 %9, label %cond.true5, label %cond.false, !dbg !7492

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !7492
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !7492
  %cast = trunc i64 %11 to i32, !dbg !7492
  %conv = sext i32 %cast to i64, !dbg !7492
  br label %cond.end, !dbg !7492

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !7492
  %call = call i64 @variable__ffs(i64 noundef %12) #17, !dbg !7492
  br label %cond.end, !dbg !7492

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !7492
  br label %cond.end7, !dbg !7491

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !7493
  br label %cond.end7, !dbg !7491

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !7491
  store i64 %cond8, ptr %retval, align 8, !dbg !7494
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #18, !dbg !7495
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !7496
  %15 = load i64, ptr %size.addr, align 8, !dbg !7497
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #17, !dbg !7498
  store i64 %call9, ptr %retval, align 8, !dbg !7499
  br label %return, !dbg !7499

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !7500
  ret i64 %16, !dbg !7500
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7501 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @register_memory_blocks_under_node(i32 noundef %nid, i64 noundef %start_pfn, i64 noundef %end_pfn, i32 noundef %context) #4 align 16 !dbg !7502 {
entry:
  %nid.addr = alloca i32, align 4
  %start_pfn.addr = alloca i64, align 8
  %end_pfn.addr = alloca i64, align 8
  %context.addr = alloca i32, align 4
  store i32 %nid, ptr %nid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nid.addr, metadata !7506, metadata !DIExpression()), !dbg !7510
  store i64 %start_pfn, ptr %start_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_pfn.addr, metadata !7507, metadata !DIExpression()), !dbg !7511
  store i64 %end_pfn, ptr %end_pfn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end_pfn.addr, metadata !7508, metadata !DIExpression()), !dbg !7512
  store i32 %context, ptr %context.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !7509, metadata !DIExpression()), !dbg !7513
  ret void, !dbg !7514
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG failed" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone }
attributes #18 = { nounwind }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { cold noredzone noreturn }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }
attributes #23 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5439, !5440, !5441, !5442, !5443, !5444, !5445, !5446}
!llvm.ident = !{!5447}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "node_devices", scope: !2, file: !3, line: 649, type: !5438, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/.node.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/node\22 -D KBUILD_BASENAME=\22node\22 -D KBUILD_MODNAME=\22node\22 -D __KBUILD_MODNAME=kmod_node -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/node.ll drivers/base/node.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !362, globals: !5297, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/node.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61041abadc38155cf328afabc2ab96a6")
!4 = !{!5, !13, !18, !23, !31, !127, !135, !151, !157, !169, !174, !180, !187, !194, !200, !206, !213, !221, !228, !237, !242, !247, !253, !264, !269, !279, !287, !335, !349, !358}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !14, line: 32, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!17 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !19, line: 2052, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!22 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !24, line: 9, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!25 = !{!26, !27, !28, !29, !30}
!26 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!27 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!28 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!29 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!30 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !33, file: !32, line: 147, baseType: !7, size: 32, elements: !124)
!32 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !32, line: 135, size: 512, elements: !34)
!34 = !{!35, !39, !41, !43, !47, !48, !64, !122, !123}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !33, file: !32, line: 136, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !32, line: 137, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !33, file: !32, line: 138, baseType: !42, size: 32, offset: 128)
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !33, file: !32, line: 139, baseType: !44, size: 16, offset: 160)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !45, line: 24, baseType: !46)
!45 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !32, line: 150, baseType: !31, size: 32, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !33, file: !32, line: 151, baseType: !49, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !32, line: 64, baseType: !51)
!51 = !DISubroutineType(types: !52)
!52 = !{!42, !53, !42, !40, !54, !60}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 61, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !57, line: 72, baseType: !58)
!57 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !57, line: 16, baseType: !59)
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !45, line: 52, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !57, line: 88, baseType: !63)
!63 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !33, file: !32, line: 152, baseType: !65, size: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !32, line: 117, size: 256, elements: !67)
!67 = !{!68, !73}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !66, file: !32, line: 118, baseType: !69, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !45, line: 174, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 172, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !70, file: !45, line: 173, baseType: !42, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !66, file: !32, line: 119, baseType: !74, size: 192, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !75, line: 41, baseType: !76)
!75 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !75, line: 37, size: 192, elements: !77)
!77 = !{!78, !116}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !76, file: !75, line: 38, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !80, line: 29, baseType: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !80, line: 17, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !80, line: 18, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !80, line: 18, size: 32, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !84, file: !80, line: 19, baseType: !87, size: 32)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !88, line: 14, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !87, file: !88, line: 15, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !92, line: 44, baseType: !93)
!92 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !92, line: 14, size: 32, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !92, line: 15, baseType: !96, size: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !93, file: !92, line: 15, size: 32, elements: !97)
!97 = !{!98, !99, !109}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !96, file: !92, line: 16, baseType: !69, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 24, baseType: !100, size: 16)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 24, size: 16, elements: !101)
!101 = !{!102, !108}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !100, file: !92, line: 25, baseType: !103, size: 8)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !104, line: 17, baseType: !105)
!104 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !106, line: 21, baseType: !107)
!106 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!107 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !100, file: !92, line: 26, baseType: !103, size: 8, offset: 8)
!109 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 28, baseType: !110, size: 32)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 28, size: 32, elements: !111)
!111 = !{!112, !115}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !110, file: !92, line: 29, baseType: !113, size: 16)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !104, line: 19, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !106, line: 24, baseType: !46)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !110, file: !92, line: 30, baseType: !113, size: 16, offset: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !76, file: !75, line: 39, baseType: !117, size: 128, offset: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !45, line: 190, size: 128, elements: !118)
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !45, line: 191, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !117, file: !45, line: 191, baseType: !120, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !33, file: !32, line: 153, baseType: !40, size: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !33, file: !32, line: 154, baseType: !40, size: 64, offset: 448)
!124 = !{!125, !126}
!125 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!126 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !128, line: 68, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!129 = !{!130, !131, !132, !133, !134}
!130 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!131 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!132 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!133 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!134 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !136, line: 1325, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!138 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!139 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!140 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!141 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!142 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!143 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!144 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!145 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!146 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!147 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!148 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!149 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!150 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !152, line: 54, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!153 = !{!154, !155, !156}
!154 = !DIEnumerator(name: "USRQUOTA", value: 0)
!155 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!156 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !158, line: 44, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168}
!160 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!161 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!162 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!163 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!164 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!165 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!166 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!167 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!168 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !170, line: 65, baseType: !7, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!171 = !{!172, !173}
!172 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!173 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !175, line: 16, baseType: !7, size: 32, elements: !176)
!175 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!176 = !{!177, !178, !179}
!177 = !DIEnumerator(name: "TT_NONE", value: 0)
!178 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!179 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !181, line: 51, baseType: !7, size: 32, elements: !182)
!181 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!182 = !{!183, !184, !185, !186}
!183 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!184 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!185 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!186 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !188, line: 15, baseType: !7, size: 32, elements: !189)
!188 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!189 = !{!190, !191, !192, !193}
!190 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!191 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!192 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!193 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !195, line: 26, baseType: !7, size: 32, elements: !196)
!195 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!196 = !{!197, !198, !199}
!197 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!198 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!199 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !201, line: 45, baseType: !7, size: 32, elements: !202)
!201 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!202 = !{!203, !204, !205}
!203 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!204 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!205 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !207, line: 487, baseType: !7, size: 32, elements: !208)
!207 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!208 = !{!209, !210, !211, !212}
!209 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!210 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!211 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!212 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !214, line: 620, baseType: !7, size: 32, elements: !215)
!214 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!215 = !{!216, !217, !218, !219, !220}
!216 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!217 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!218 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!219 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!220 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !214, line: 597, baseType: !42, size: 32, elements: !222)
!222 = !{!223, !224, !225, !226, !227}
!223 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!224 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!225 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!226 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!227 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !207, line: 547, baseType: !7, size: 32, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !235, !236}
!230 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!231 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!232 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!233 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!234 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!235 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!236 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !207, line: 564, baseType: !7, size: 32, elements: !238)
!238 = !{!239, !240, !241}
!239 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!240 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!241 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !207, line: 577, baseType: !7, size: 32, elements: !243)
!243 = !{!244, !245, !246}
!244 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!245 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!246 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !207, line: 503, baseType: !7, size: 32, elements: !248)
!248 = !{!249, !250, !251, !252}
!249 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!250 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!251 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!252 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_states", file: !254, line: 398, baseType: !7, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263}
!256 = !DIEnumerator(name: "N_POSSIBLE", value: 0)
!257 = !DIEnumerator(name: "N_ONLINE", value: 1)
!258 = !DIEnumerator(name: "N_NORMAL_MEMORY", value: 2)
!259 = !DIEnumerator(name: "N_HIGH_MEMORY", value: 2)
!260 = !DIEnumerator(name: "N_MEMORY", value: 3)
!261 = !DIEnumerator(name: "N_CPU", value: 4)
!262 = !DIEnumerator(name: "N_GENERIC_INITIATOR", value: 5)
!263 = !DIEnumerator(name: "NR_NODE_STATES", value: 6)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 10, baseType: !7, size: 32, elements: !266)
!265 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!266 = !{!267, !268}
!267 = !DIEnumerator(name: "false", value: 0)
!268 = !DIEnumerator(name: "true", value: 1)
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !270, line: 364, baseType: !7, size: 32, elements: !271)
!270 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!271 = !{!272, !273, !274, !275, !276, !277, !278}
!272 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!273 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!274 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!275 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!276 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!277 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!278 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zone_type", file: !280, line: 720, baseType: !7, size: 32, elements: !281)
!280 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e018db7b4c78b2d835997a33e792065c")
!281 = !{!282, !283, !284, !285, !286}
!282 = !DIEnumerator(name: "ZONE_DMA", value: 0)
!283 = !DIEnumerator(name: "ZONE_DMA32", value: 1)
!284 = !DIEnumerator(name: "ZONE_NORMAL", value: 2)
!285 = !DIEnumerator(name: "ZONE_MOVABLE", value: 3)
!286 = !DIEnumerator(name: "__MAX_NR_ZONES", value: 4)
!287 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_stat_item", file: !280, line: 156, baseType: !7, size: 32, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!289 = !DIEnumerator(name: "NR_LRU_BASE", value: 0)
!290 = !DIEnumerator(name: "NR_INACTIVE_ANON", value: 0)
!291 = !DIEnumerator(name: "NR_ACTIVE_ANON", value: 1)
!292 = !DIEnumerator(name: "NR_INACTIVE_FILE", value: 2)
!293 = !DIEnumerator(name: "NR_ACTIVE_FILE", value: 3)
!294 = !DIEnumerator(name: "NR_UNEVICTABLE", value: 4)
!295 = !DIEnumerator(name: "NR_SLAB_RECLAIMABLE_B", value: 5)
!296 = !DIEnumerator(name: "NR_SLAB_UNRECLAIMABLE_B", value: 6)
!297 = !DIEnumerator(name: "NR_ISOLATED_ANON", value: 7)
!298 = !DIEnumerator(name: "NR_ISOLATED_FILE", value: 8)
!299 = !DIEnumerator(name: "WORKINGSET_NODES", value: 9)
!300 = !DIEnumerator(name: "WORKINGSET_REFAULT_BASE", value: 10)
!301 = !DIEnumerator(name: "WORKINGSET_REFAULT_ANON", value: 10)
!302 = !DIEnumerator(name: "WORKINGSET_REFAULT_FILE", value: 11)
!303 = !DIEnumerator(name: "WORKINGSET_ACTIVATE_BASE", value: 12)
!304 = !DIEnumerator(name: "WORKINGSET_ACTIVATE_ANON", value: 12)
!305 = !DIEnumerator(name: "WORKINGSET_ACTIVATE_FILE", value: 13)
!306 = !DIEnumerator(name: "WORKINGSET_RESTORE_BASE", value: 14)
!307 = !DIEnumerator(name: "WORKINGSET_RESTORE_ANON", value: 14)
!308 = !DIEnumerator(name: "WORKINGSET_RESTORE_FILE", value: 15)
!309 = !DIEnumerator(name: "WORKINGSET_NODERECLAIM", value: 16)
!310 = !DIEnumerator(name: "NR_ANON_MAPPED", value: 17)
!311 = !DIEnumerator(name: "NR_FILE_MAPPED", value: 18)
!312 = !DIEnumerator(name: "NR_FILE_PAGES", value: 19)
!313 = !DIEnumerator(name: "NR_FILE_DIRTY", value: 20)
!314 = !DIEnumerator(name: "NR_WRITEBACK", value: 21)
!315 = !DIEnumerator(name: "NR_WRITEBACK_TEMP", value: 22)
!316 = !DIEnumerator(name: "NR_SHMEM", value: 23)
!317 = !DIEnumerator(name: "NR_SHMEM_THPS", value: 24)
!318 = !DIEnumerator(name: "NR_SHMEM_PMDMAPPED", value: 25)
!319 = !DIEnumerator(name: "NR_FILE_THPS", value: 26)
!320 = !DIEnumerator(name: "NR_FILE_PMDMAPPED", value: 27)
!321 = !DIEnumerator(name: "NR_ANON_THPS", value: 28)
!322 = !DIEnumerator(name: "NR_VMSCAN_WRITE", value: 29)
!323 = !DIEnumerator(name: "NR_VMSCAN_IMMEDIATE", value: 30)
!324 = !DIEnumerator(name: "NR_DIRTIED", value: 31)
!325 = !DIEnumerator(name: "NR_WRITTEN", value: 32)
!326 = !DIEnumerator(name: "NR_THROTTLED_WRITTEN", value: 33)
!327 = !DIEnumerator(name: "NR_KERNEL_MISC_RECLAIMABLE", value: 34)
!328 = !DIEnumerator(name: "NR_FOLL_PIN_ACQUIRED", value: 35)
!329 = !DIEnumerator(name: "NR_FOLL_PIN_RELEASED", value: 36)
!330 = !DIEnumerator(name: "NR_KERNEL_STACK_KB", value: 37)
!331 = !DIEnumerator(name: "NR_PAGETABLE", value: 38)
!332 = !DIEnumerator(name: "NR_SECONDARY_PAGETABLE", value: 39)
!333 = !DIEnumerator(name: "NR_SWAPCACHE", value: 40)
!334 = !DIEnumerator(name: "NR_VM_NODE_STAT_ITEMS", value: 41)
!335 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zone_stat_item", file: !280, line: 134, baseType: !7, size: 32, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348}
!337 = !DIEnumerator(name: "NR_FREE_PAGES", value: 0)
!338 = !DIEnumerator(name: "NR_ZONE_LRU_BASE", value: 1)
!339 = !DIEnumerator(name: "NR_ZONE_INACTIVE_ANON", value: 1)
!340 = !DIEnumerator(name: "NR_ZONE_ACTIVE_ANON", value: 2)
!341 = !DIEnumerator(name: "NR_ZONE_INACTIVE_FILE", value: 3)
!342 = !DIEnumerator(name: "NR_ZONE_ACTIVE_FILE", value: 4)
!343 = !DIEnumerator(name: "NR_ZONE_UNEVICTABLE", value: 5)
!344 = !DIEnumerator(name: "NR_ZONE_WRITE_PENDING", value: 6)
!345 = !DIEnumerator(name: "NR_MLOCK", value: 7)
!346 = !DIEnumerator(name: "NR_BOUNCE", value: 8)
!347 = !DIEnumerator(name: "NR_FREE_CMA_PAGES", value: 9)
!348 = !DIEnumerator(name: "NR_VM_ZONE_STAT_ITEMS", value: 10)
!349 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "numa_stat_item", file: !280, line: 121, baseType: !7, size: 32, elements: !350)
!350 = !{!351, !352, !353, !354, !355, !356, !357}
!351 = !DIEnumerator(name: "NUMA_HIT", value: 0)
!352 = !DIEnumerator(name: "NUMA_MISS", value: 1)
!353 = !DIEnumerator(name: "NUMA_FOREIGN", value: 2)
!354 = !DIEnumerator(name: "NUMA_INTERLEAVE_HIT", value: 3)
!355 = !DIEnumerator(name: "NUMA_LOCAL", value: 4)
!356 = !DIEnumerator(name: "NUMA_OTHER", value: 5)
!357 = !DIEnumerator(name: "NR_VM_NUMA_EVENT_ITEMS", value: 6)
!358 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "meminit_context", file: !280, line: 1436, baseType: !7, size: 32, elements: !359)
!359 = !{!360, !361}
!360 = !DIEnumerator(name: "MEMINIT_EARLY", value: 0)
!361 = !DIEnumerator(name: "MEMINIT_HOTPLUG", value: 1)
!362 = !{!363, !364, !7, !40, !373, !5270, !5272, !5273, !1104, !59, !5274, !2703, !42, !882, !5280}
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !45, line: 154, baseType: !7)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !367, line: 19, size: 64, elements: !368)
!367 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !366, file: !367, line: 19, baseType: !370, size: 64)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 1)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node_access_nodes", file: !3, line: 79, size: 6016, elements: !375)
!375 = !{!376, !5268, !5269}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !374, file: !3, line: 80, baseType: !377, size: 5824)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !207, line: 705, size: 5824, elements: !378)
!378 = !{!379, !4923, !4924, !4927, !4928, !4981, !5051, !5052, !5053, !5054, !5055, !5062, !5154, !5167, !5177, !5181, !5183, !5184, !5185, !5189, !5196, !5197, !5200, !5203, !5207, !5210, !5211, !5212, !5213, !5214, !5215, !5245, !5246, !5247, !5250, !5253, !5262, !5263, !5264, !5265, !5266, !5267}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !377, file: !207, line: 706, baseType: !380, size: 512)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !381, line: 64, size: 512, elements: !382)
!381 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!382 = !{!383, !384, !385, !387, !434, !4916, !4917, !4918, !4919, !4920, !4921, !4922}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !380, file: !381, line: 65, baseType: !36, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !380, file: !381, line: 66, baseType: !117, size: 128, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !380, file: !381, line: 67, baseType: !386, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !380, file: !381, line: 68, baseType: !388, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !381, line: 168, size: 768, elements: !390)
!390 = !{!391, !392, !393, !394}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !389, file: !381, line: 169, baseType: !117, size: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !389, file: !381, line: 170, baseType: !79, size: 32, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !389, file: !381, line: 171, baseType: !380, size: 512, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !389, file: !381, line: 172, baseType: !395, size: 64, offset: 704)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !381, line: 133, size: 192, elements: !398)
!398 = !{!399, !406, !411}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !397, file: !381, line: 134, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!42, !404}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !397, file: !381, line: 135, baseType: !407, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!36, !404}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !397, file: !381, line: 136, baseType: !412, size: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!42, !404, !416}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !381, line: 125, size: 20736, elements: !418)
!418 = !{!419, !424, !428, !429, !433}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !417, file: !381, line: 126, baseType: !420, size: 192)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 192, elements: !422)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!422 = !{!423}
!423 = !DISubrange(count: 3)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !417, file: !381, line: 127, baseType: !425, size: 4096, offset: 192)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 4096, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !417, file: !381, line: 128, baseType: !42, size: 32, offset: 4288)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !417, file: !381, line: 129, baseType: !430, size: 16384, offset: 4320)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 16384, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 2048)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !417, file: !381, line: 130, baseType: !42, size: 32, offset: 20704)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !380, file: !381, line: 69, baseType: !435, size: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !381, line: 116, size: 384, elements: !438)
!438 = !{!439, !443, !466, !4880, !4908, !4912}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !437, file: !381, line: 117, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !386}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !437, file: !381, line: 118, baseType: !444, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !447, line: 254, size: 128, elements: !448)
!447 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!448 = !{!449, !462}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !446, file: !447, line: 255, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!453, !386, !457, !421}
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !45, line: 66, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !57, line: 73, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !57, line: 15, baseType: !456)
!456 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !447, line: 30, size: 128, elements: !459)
!459 = !{!460, !461}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !458, file: !447, line: 31, baseType: !36, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !458, file: !447, line: 32, baseType: !44, size: 16, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !446, file: !447, line: 256, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!453, !386, !457, !36, !55}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !437, file: !381, line: 119, baseType: !467, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !447, line: 84, size: 320, elements: !471)
!471 = !{!472, !473, !477, !4876, !4878}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !470, file: !447, line: 85, baseType: !36, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !470, file: !447, line: 86, baseType: !474, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!44, !386, !457, !42}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !470, file: !447, line: 88, baseType: !478, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!44, !386, !481, !42}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !447, line: 175, size: 512, elements: !483)
!483 = !{!484, !485, !486, !487, !4867, !4871, !4872}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !482, file: !447, line: 176, baseType: !458, size: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !482, file: !447, line: 177, baseType: !55, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !482, file: !447, line: 178, baseType: !40, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !482, file: !447, line: 179, baseType: !488, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !19, line: 472, size: 1536, align: 64, elements: !493)
!493 = !{!494, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4861, !4862, !4863, !4864, !4865, !4866}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !492, file: !19, line: 473, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !19, line: 641, size: 4800, elements: !497)
!497 = !{!498, !499, !500, !508, !509, !516, !517, !520, !521, !4651, !4652, !4653, !4654, !4655, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4695, !4698, !4699, !4700, !4709, !4710, !4711, !4712}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !496, file: !19, line: 642, baseType: !44, size: 16)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !496, file: !19, line: 643, baseType: !46, size: 16, offset: 16)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !496, file: !19, line: 644, baseType: !501, size: 32, offset: 32)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !502, line: 23, baseType: !503)
!502 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !502, line: 21, size: 32, elements: !504)
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !503, file: !502, line: 22, baseType: !506, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !45, line: 37, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !57, line: 49, baseType: !7)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !496, file: !19, line: 645, baseType: !117, size: 128, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !496, file: !19, line: 646, baseType: !510, size: 32, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !502, line: 28, baseType: !511)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !502, line: 26, size: 32, elements: !512)
!512 = !{!513}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !511, file: !502, line: 27, baseType: !514, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !45, line: 38, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !57, line: 50, baseType: !7)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !496, file: !19, line: 647, baseType: !7, size: 32, offset: 224)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !496, file: !19, line: 650, baseType: !518, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !19, line: 607, flags: DIFlagFwdDecl)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !496, file: !19, line: 651, baseType: !518, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !496, file: !19, line: 654, baseType: !522, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !19, line: 1966, size: 2048, align: 512, elements: !525)
!525 = !{!526, !4485, !4495, !4499, !4503, !4507, !4511, !4515, !4519, !4523, !4527, !4528, !4532, !4536, !4573, !4602, !4606, !4612, !4616, !4620, !4624, !4628, !4632, !4638, !4642}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !524, file: !19, line: 1967, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!530, !495, !530, !7}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !532, line: 82, size: 1536, elements: !533)
!532 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!533 = !{!534, !535, !545, !553, !554, !574, !575, !579, !592, !4468, !4469, !4470, !4471, !4477, !4478, !4479}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !531, file: !532, line: 84, baseType: !7, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !531, file: !532, line: 85, baseType: !536, size: 32, offset: 32)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !537, line: 275, baseType: !538)
!537 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !537, line: 275, size: 32, elements: !539)
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !538, file: !537, line: 275, baseType: !541, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !537, line: 69, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !537, line: 64, size: 32, elements: !543)
!543 = !{!544}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !542, file: !537, line: 65, baseType: !7, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !531, file: !532, line: 86, baseType: !546, size: 128, offset: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !547, line: 38, size: 128, elements: !548)
!547 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!548 = !{!549, !551}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !546, file: !547, line: 39, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !546, file: !547, line: 39, baseType: !552, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !531, file: !532, line: 87, baseType: !530, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !531, file: !532, line: 88, baseType: !555, size: 128, offset: 256)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !532, line: 49, size: 128, elements: !556)
!556 = !{!557, !571}
!557 = !DIDerivedType(tag: DW_TAG_member, scope: !555, file: !532, line: 50, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !555, file: !532, line: 50, size: 64, elements: !559)
!559 = !{!560, !567}
!560 = !DIDerivedType(tag: DW_TAG_member, scope: !558, file: !532, line: 51, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !558, file: !532, line: 51, size: 64, elements: !562)
!562 = !{!563, !566}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !561, file: !532, line: 52, baseType: !564, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !104, line: 21, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !106, line: 27, baseType: !7)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !561, file: !532, line: 52, baseType: !564, size: 32, offset: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !558, file: !532, line: 54, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !104, line: 23, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !106, line: 31, baseType: !570)
!570 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !555, file: !532, line: 56, baseType: !572, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !531, file: !532, line: 89, baseType: !495, size: 64, offset: 384)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !531, file: !532, line: 91, baseType: !576, size: 256, offset: 448)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !531, file: !532, line: 94, baseType: !580, size: 64, offset: 704)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !581, line: 25, size: 64, elements: !582)
!581 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, scope: !580, file: !581, line: 26, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !580, file: !581, line: 26, size: 64, elements: !585)
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !584, file: !581, line: 28, baseType: !569, size: 64, align: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, scope: !584, file: !581, line: 30, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !584, file: !581, line: 30, size: 64, elements: !589)
!589 = !{!590, !591}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !588, file: !581, line: 31, baseType: !79, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !588, file: !581, line: 32, baseType: !42, size: 32, offset: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !531, file: !532, line: 95, baseType: !593, size: 64, offset: 768)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !532, line: 128, size: 1024, align: 512, elements: !596)
!596 = !{!597, !601, !602, !609, !615, !619, !623, !627, !628, !632, !636, !4458, !4462}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !595, file: !532, line: 129, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!42, !530, !7}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !595, file: !532, line: 130, baseType: !598, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !595, file: !532, line: 131, baseType: !603, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!42, !606, !608}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !595, file: !532, line: 132, baseType: !610, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!42, !606, !7, !36, !613}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !595, file: !532, line: 134, baseType: !616, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!42, !606}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !595, file: !532, line: 135, baseType: !620, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!42, !530}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !595, file: !532, line: 136, baseType: !624, size: 64, offset: 384)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !530}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !595, file: !532, line: 137, baseType: !624, size: 64, offset: 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !595, file: !532, line: 138, baseType: !629, size: 64, offset: 512)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !530, !495}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !595, file: !532, line: 139, baseType: !633, size: 64, offset: 576)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!421, !530, !421, !42}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !595, file: !532, line: 140, baseType: !637, size: 64, offset: 640)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!640, !4457}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !642, line: 70, size: 256, elements: !643)
!642 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!643 = !{!644, !645, !4453, !4454}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !641, file: !642, line: 71, baseType: !530, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !641, file: !642, line: 72, baseType: !646, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !19, line: 1190, size: 10752, elements: !648)
!648 = !{!649, !650, !653, !654, !655, !656, !1136, !2452, !2492, !2577, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2594, !2598, !2599, !2643, !2646, !2709, !2712, !2713, !2714, !2755, !4387, !4388, !4389, !4390, !4391, !4392, !4395, !4396, !4403, !4404, !4405, !4406, !4407, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !647, file: !19, line: 1191, baseType: !117, size: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !647, file: !19, line: 1192, baseType: !651, size: 32, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !45, line: 21, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !45, line: 18, baseType: !564)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !647, file: !19, line: 1193, baseType: !107, size: 8, offset: 160)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !647, file: !19, line: 1194, baseType: !59, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !647, file: !19, line: 1195, baseType: !61, size: 64, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !647, file: !19, line: 1196, baseType: !657, size: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !19, line: 2366, size: 576, elements: !659)
!659 = !{!660, !661, !662, !669, !673, !677, !681, !1121, !1122, !1126, !1128, !1129, !1130, !1132, !1133, !1134, !1135}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !658, file: !19, line: 2367, baseType: !36, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !658, file: !19, line: 2368, baseType: !42, size: 32, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !658, file: !19, line: 2376, baseType: !663, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!42, !666}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !668, line: 32, flags: DIFlagFwdDecl)
!668 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!669 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !658, file: !19, line: 2377, baseType: !670, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !672)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !19, line: 75, flags: DIFlagFwdDecl)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !658, file: !19, line: 2378, baseType: !674, size: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!530, !657, !42, !36, !40}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !658, file: !19, line: 2380, baseType: !678, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !646}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !658, file: !19, line: 2381, baseType: !682, size: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !684)
!684 = !{!685, !686, !687, !691, !713, !739, !740, !741, !742, !746, !751, !752, !772, !828, !829, !830, !831, !832, !835, !836, !837, !845, !849, !876, !897, !898, !899, !900, !909, !932, !933, !936, !939, !940, !941, !942, !943, !944, !945, !950, !951, !1079, !1087, !1088, !1089, !1091, !1095, !1096, !1100, !1101, !1102, !1103, !1105, !1106, !1107, !1114, !1115, !1116, !1120}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !683, file: !6, line: 403, baseType: !5, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !683, file: !6, line: 406, baseType: !117, size: 128, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !683, file: !6, line: 409, baseType: !688, size: 448, offset: 192)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 448, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 56)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !683, file: !6, line: 417, baseType: !692, size: 768, offset: 640)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !693)
!693 = !{!694, !695, !696, !697, !700}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !692, file: !6, line: 46, baseType: !380, size: 512)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !692, file: !6, line: 47, baseType: !682, size: 64, offset: 512)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !692, file: !6, line: 48, baseType: !386, size: 64, offset: 576)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !692, file: !6, line: 49, baseType: !698, size: 64, offset: 640)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !692, file: !6, line: 50, baseType: !701, size: 64, offset: 704)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !703, line: 26, size: 256, elements: !704)
!703 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !702, file: !703, line: 27, baseType: !7, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !702, file: !703, line: 28, baseType: !707, size: 192, offset: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !708, line: 43, size: 192, elements: !709)
!708 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!709 = !{!710, !712}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !707, file: !708, line: 44, baseType: !711, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !88, line: 23, baseType: !87)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !707, file: !708, line: 45, baseType: !117, size: 128, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !683, file: !6, line: 418, baseType: !714, size: 64, offset: 1408)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !716)
!716 = !{!717, !718, !723, !727, !731, !735}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !715, file: !6, line: 54, baseType: !458, size: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !715, file: !6, line: 55, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!453, !714, !722, !421}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !715, file: !6, line: 57, baseType: !724, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!453, !714, !722, !36, !55}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !715, file: !6, line: 59, baseType: !728, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{null, !682, !36}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !715, file: !6, line: 60, baseType: !732, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!42, !682}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !715, file: !6, line: 61, baseType: !736, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !682}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !683, file: !6, line: 419, baseType: !36, size: 64, offset: 1472)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !683, file: !6, line: 420, baseType: !36, size: 64, offset: 1536)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !683, file: !6, line: 421, baseType: !386, size: 64, offset: 1600)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !683, file: !6, line: 424, baseType: !743, size: 64, offset: 1664)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !745)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !683, file: !6, line: 425, baseType: !747, size: 64, offset: 1728)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !104, line: 20, baseType: !750)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !106, line: 26, baseType: !42)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !683, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !683, file: !6, line: 435, baseType: !753, size: 256, offset: 1856)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !754, line: 66, size: 256, elements: !755)
!754 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!755 = !{!756, !765, !766, !771}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !753, file: !754, line: 67, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !758, line: 13, baseType: !759)
!758 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !45, line: 181, baseType: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 179, size: 64, elements: !761)
!761 = !{!762}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !760, file: !45, line: 180, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !104, line: 22, baseType: !764)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !106, line: 30, baseType: !63)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !753, file: !754, line: 68, baseType: !711, size: 32, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !753, file: !754, line: 70, baseType: !767, size: 32, offset: 96)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !768, line: 15, size: 32, elements: !769)
!768 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!769 = !{!770}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !767, file: !768, line: 20, baseType: !69, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !753, file: !754, line: 72, baseType: !117, size: 128, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !683, file: !6, line: 437, baseType: !773, size: 64, offset: 2112)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !775, line: 69, size: 320, elements: !776)
!775 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!776 = !{!777, !778, !779, !799, !801, !805, !806}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !774, file: !775, line: 70, baseType: !36, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !774, file: !775, line: 71, baseType: !682, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !774, file: !775, line: 72, baseType: !780, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !775, line: 47, size: 256, elements: !783)
!783 = !{!784, !785, !791, !795}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !775, line: 49, baseType: !7, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !782, file: !775, line: 51, baseType: !786, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!42, !36, !789}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !782, file: !775, line: 53, baseType: !792, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!42, !421, !789}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !782, file: !775, line: 55, baseType: !796, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !40}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !774, file: !775, line: 73, baseType: !800, size: 16, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !774, file: !775, line: 74, baseType: !802, size: 8, offset: 208)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !104, line: 16, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !106, line: 20, baseType: !804)
!804 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !775, line: 75, baseType: !103, size: 8, offset: 216)
!806 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !775, line: 76, baseType: !807, size: 64, offset: 256)
!807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !774, file: !775, line: 76, size: 64, elements: !808)
!808 = !{!809, !810, !817}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !807, file: !775, line: 77, baseType: !40, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !807, file: !775, line: 78, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !813)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !775, line: 86, size: 128, elements: !814)
!814 = !{!815, !816}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !813, file: !775, line: 87, baseType: !7, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !813, file: !775, line: 88, baseType: !421, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !807, file: !775, line: 79, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !775, line: 92, size: 256, elements: !821)
!821 = !{!822, !823, !824, !826, !827}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !820, file: !775, line: 94, baseType: !7, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !820, file: !775, line: 95, baseType: !7, size: 32, offset: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !820, file: !775, line: 96, baseType: !825, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !820, file: !775, line: 97, baseType: !780, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !820, file: !775, line: 98, baseType: !40, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !683, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !683, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !683, file: !6, line: 442, baseType: !743, size: 64, offset: 2240)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !683, file: !6, line: 443, baseType: !747, size: 64, offset: 2304)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !683, file: !6, line: 444, baseType: !833, size: 8, offset: 2368)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !45, line: 35, baseType: !834)
!834 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !683, file: !6, line: 451, baseType: !833, size: 8, offset: 2376)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !683, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !683, file: !6, line: 455, baseType: !838, size: 64, offset: 2432)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !840, line: 23, size: 96, elements: !841)
!840 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!841 = !{!842, !843, !844}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !839, file: !840, line: 24, baseType: !42, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !839, file: !840, line: 24, baseType: !42, size: 32, offset: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !839, file: !840, line: 24, baseType: !42, size: 32, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !683, file: !6, line: 458, baseType: !846, size: 64, offset: 2496)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!42}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !683, file: !6, line: 460, baseType: !850, size: 4032, align: 512, offset: 2560)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !851, size: 4032, elements: !874)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !852)
!852 = !{!853, !854, !855}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !851, file: !6, line: 363, baseType: !40, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !851, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !851, file: !6, line: 367, baseType: !856, size: 448, offset: 128)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !857)
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !856, file: !6, line: 320, baseType: !682, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !856, file: !6, line: 321, baseType: !860, size: 384, offset: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !861, line: 40, size: 384, elements: !862)
!861 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!862 = !{!863}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !860, file: !861, line: 41, baseType: !864, size: 384, align: 64)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !865, size: 384, align: 64, elements: !872)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !866, line: 5, size: 192, align: 64, elements: !867)
!866 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!867 = !{!868, !869, !871}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !865, file: !866, line: 6, baseType: !59, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !865, file: !866, line: 7, baseType: !870, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !865, file: !866, line: 8, baseType: !870, size: 64, offset: 128)
!872 = !{!873}
!873 = !DISubrange(count: 2)
!874 = !{!875}
!875 = !DISubrange(count: 7)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !683, file: !6, line: 463, baseType: !877, size: 192, offset: 6592)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !878, line: 8, size: 192, elements: !879)
!878 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!879 = !{!880, !881, !883}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !877, file: !878, line: 10, baseType: !7, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !877, file: !878, line: 11, baseType: !882, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !877, file: !878, line: 12, baseType: !884, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !886, line: 59, size: 48, elements: !887)
!886 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!887 = !{!888, !892, !893, !894, !895, !896}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !885, file: !886, line: 60, baseType: !889, size: 16)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !104, line: 18, baseType: !890)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !106, line: 23, baseType: !891)
!891 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !885, file: !886, line: 61, baseType: !889, size: 16, offset: 16)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !885, file: !886, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !885, file: !886, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !885, file: !886, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !885, file: !886, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !683, file: !6, line: 465, baseType: !59, size: 64, offset: 6784)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !683, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !683, file: !6, line: 470, baseType: !117, size: 128, offset: 6912)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !683, file: !6, line: 471, baseType: !901, size: 64, offset: 7040)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !903, line: 33, size: 96, elements: !904)
!903 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!904 = !{!905, !906, !907, !908}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !902, file: !903, line: 37, baseType: !42, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !902, file: !903, line: 43, baseType: !42, size: 32, offset: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !902, file: !903, line: 45, baseType: !46, size: 16, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !902, file: !903, line: 47, baseType: !46, size: 16, offset: 80)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !683, file: !6, line: 476, baseType: !910, size: 64, offset: 7104)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !912)
!912 = !{!913, !929, !930, !931}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !911, file: !6, line: 379, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !916, line: 204, baseType: !917)
!916 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !916, line: 197, size: 192, elements: !918)
!918 = !{!919, !921, !922, !923, !925, !927}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !917, file: !916, line: 198, baseType: !920, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !916, line: 21, baseType: !565)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !917, file: !916, line: 199, baseType: !107, size: 8, offset: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !917, file: !916, line: 200, baseType: !107, size: 8, offset: 40)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !917, file: !916, line: 201, baseType: !924, size: 16, offset: 48)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !916, line: 17, baseType: !114)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !917, file: !916, line: 202, baseType: !926, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !916, line: 16, baseType: !569)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !917, file: !916, line: 203, baseType: !928, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !916, line: 22, baseType: !569)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !911, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !911, file: !6, line: 381, baseType: !421, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !911, file: !6, line: 382, baseType: !421, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !683, file: !6, line: 477, baseType: !911, size: 256, offset: 7168)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !683, file: !6, line: 480, baseType: !934, size: 64, offset: 7424)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !683, file: !6, line: 483, baseType: !937, size: 64, offset: 7488)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !683, file: !6, line: 488, baseType: !421, size: 64, offset: 7552)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !683, file: !6, line: 492, baseType: !40, size: 64, offset: 7616)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !683, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !683, file: !6, line: 495, baseType: !40, size: 64, offset: 7744)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !683, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !683, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !683, file: !6, line: 500, baseType: !946, size: 64, offset: 7872)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !948, line: 45, baseType: !949)
!948 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !683, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !683, file: !6, line: 504, baseType: !952, size: 64, offset: 8000)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !955, line: 96, size: 192, elements: !956)
!955 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!956 = !{!957, !958, !1039, !1043}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !954, file: !955, line: 97, baseType: !7, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !954, file: !955, line: 98, baseType: !959, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !955, line: 24, size: 3072, elements: !961)
!961 = !{!962, !964, !965, !966, !967, !991, !992, !993, !994, !1012, !1024, !1025, !1036, !1037, !1038}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !960, file: !955, line: 26, baseType: !963, size: 128)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !757, size: 128, elements: !872)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !960, file: !955, line: 27, baseType: !963, size: 128, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !960, file: !955, line: 28, baseType: !42, size: 32, offset: 256)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !960, file: !955, line: 31, baseType: !79, size: 32, align: 512, offset: 512)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !960, file: !955, line: 32, baseType: !968, size: 960, offset: 576)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !969, line: 206, size: 960, elements: !970)
!969 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!970 = !{!971, !980, !985, !987, !988, !990}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !968, file: !969, line: 207, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !45, line: 232, size: 128, align: 64, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !973, file: !45, line: 233, baseType: !972, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !973, file: !45, line: 234, baseType: !977, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{null, !972}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !968, file: !969, line: 208, baseType: !981, size: 256, offset: 64)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !982, size: 256, elements: !983)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!983 = !{!984}
!984 = !DISubrange(count: 4)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !968, file: !969, line: 209, baseType: !986, size: 256, offset: 320)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 256, elements: !983)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !968, file: !969, line: 213, baseType: !456, size: 64, offset: 576)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !968, file: !969, line: 215, baseType: !989, size: 256, offset: 640)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 256, elements: !983)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !968, file: !969, line: 216, baseType: !103, size: 8, offset: 896)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !960, file: !955, line: 33, baseType: !59, size: 64, offset: 1536)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !960, file: !955, line: 34, baseType: !59, size: 64, offset: 1600)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !960, file: !955, line: 35, baseType: !833, size: 8, offset: 1664)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !960, file: !955, line: 36, baseType: !995, size: 320, offset: 1728)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !996, line: 11, size: 320, elements: !997)
!996 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!997 = !{!998, !1005, !1006, !1011}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !995, file: !996, line: 16, baseType: !999, size: 128)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !45, line: 198, size: 128, elements: !1000)
!1000 = !{!1001, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !999, file: !45, line: 199, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !999, file: !45, line: 199, baseType: !1004, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !995, file: !996, line: 17, baseType: !59, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !995, file: !996, line: 18, baseType: !1007, size: 64, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !1010}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !995, file: !996, line: 19, baseType: !564, size: 32, offset: 256)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !960, file: !955, line: 37, baseType: !1013, size: 256, offset: 2048)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1014, line: 98, size: 256, elements: !1015)
!1014 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1015 = !{!1016, !1017, !1018}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1013, file: !1014, line: 99, baseType: !757, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1013, file: !1014, line: 100, baseType: !117, size: 128, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1013, file: !1014, line: 101, baseType: !1019, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1014, line: 21, baseType: !1020)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null, !1023}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !960, file: !955, line: 38, baseType: !973, size: 128, align: 64, offset: 2304)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !960, file: !955, line: 39, baseType: !1026, size: 64, offset: 2432)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !955, line: 49, size: 768, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1035}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1027, file: !955, line: 50, baseType: !79, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1027, file: !955, line: 51, baseType: !986, size: 256, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1027, file: !955, line: 53, baseType: !986, size: 256, offset: 320)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1027, file: !955, line: 54, baseType: !59, size: 64, offset: 576)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1027, file: !955, line: 55, baseType: !1026, size: 64, offset: 640)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1027, file: !955, line: 56, baseType: !42, size: 32, offset: 704)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1027, file: !955, line: 57, baseType: !42, size: 32, offset: 736)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !960, file: !955, line: 40, baseType: !59, size: 64, offset: 2496)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !960, file: !955, line: 42, baseType: !42, size: 32, offset: 2560)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !960, file: !955, line: 43, baseType: !953, size: 64, offset: 2624)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !954, file: !955, line: 99, baseType: !1040, offset: 128)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1041, line: 211, elements: !1042)
!1041 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1042 = !{}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !954, file: !955, line: 100, baseType: !1044, size: 64, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !955, line: 63, size: 3008, elements: !1046)
!1046 = !{!1047, !1048, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1078}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1045, file: !955, line: 64, baseType: !1026, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1045, file: !955, line: 65, baseType: !1049, size: 192, offset: 64)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1026, size: 192, elements: !422)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1045, file: !955, line: 67, baseType: !42, size: 32, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1045, file: !955, line: 68, baseType: !753, size: 256, offset: 320)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1045, file: !955, line: 69, baseType: !79, size: 32, offset: 576)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1045, file: !955, line: 70, baseType: !753, size: 256, offset: 640)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1045, file: !955, line: 71, baseType: !59, size: 64, offset: 896)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1045, file: !955, line: 72, baseType: !59, size: 64, offset: 960)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1045, file: !955, line: 73, baseType: !59, size: 64, offset: 1024)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1045, file: !955, line: 74, baseType: !59, size: 64, offset: 1088)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1045, file: !955, line: 75, baseType: !59, size: 64, offset: 1152)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1045, file: !955, line: 76, baseType: !59, size: 64, offset: 1216)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1045, file: !955, line: 77, baseType: !59, size: 64, offset: 1280)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1045, file: !955, line: 78, baseType: !59, size: 64, offset: 1344)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1045, file: !955, line: 79, baseType: !833, size: 8, offset: 1408)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1045, file: !955, line: 80, baseType: !59, size: 64, offset: 1472)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1045, file: !955, line: 81, baseType: !753, size: 256, offset: 1536)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1045, file: !955, line: 82, baseType: !702, size: 256, offset: 1792)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1045, file: !955, line: 84, baseType: !69, size: 32, offset: 2048)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1045, file: !955, line: 87, baseType: !59, size: 64, offset: 2112)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1045, file: !955, line: 88, baseType: !59, size: 64, offset: 2176)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1045, file: !955, line: 89, baseType: !1070, size: 704, offset: 2240)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1014, line: 111, size: 704, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1077}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1070, file: !1014, line: 112, baseType: !1013, size: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1070, file: !1014, line: 113, baseType: !995, size: 320, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1070, file: !1014, line: 116, baseType: !1075, size: 64, offset: 576)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1014, line: 18, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1070, file: !1014, line: 117, baseType: !42, size: 32, offset: 640)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1045, file: !955, line: 90, baseType: !953, size: 64, offset: 2944)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !683, file: !6, line: 515, baseType: !1080, size: 64, offset: 8064)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1082, line: 117, size: 128, elements: !1083)
!1082 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1083 = !{!1084, !1085, !1086}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1081, file: !1082, line: 118, baseType: !749, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1081, file: !1082, line: 119, baseType: !749, size: 32, offset: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1081, file: !1082, line: 120, baseType: !456, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !683, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !683, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !683, file: !6, line: 520, baseType: !1090, size: 64, offset: 8192)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !683, file: !6, line: 523, baseType: !1092, size: 64, offset: 8256)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !683, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !683, file: !6, line: 525, baseType: !1097, size: 64, offset: 8384)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !683, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !683, file: !6, line: 533, baseType: !40, size: 64, offset: 8512)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !683, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !683, file: !6, line: 535, baseType: !1104, size: 64, offset: 8640)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !683, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !683, file: !6, line: 539, baseType: !42, size: 32, offset: 8736)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !683, file: !6, line: 540, baseType: !1108, size: 64, offset: 8768)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1110, line: 32, size: 64, elements: !1111)
!1110 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1109, file: !1110, line: 33, baseType: !749, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1109, file: !1110, line: 34, baseType: !749, size: 32, offset: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !683, file: !6, line: 563, baseType: !117, size: 128, offset: 8832)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !683, file: !6, line: 565, baseType: !117, size: 128, offset: 8960)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !683, file: !6, line: 568, baseType: !1117, size: 64, offset: 9088)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{null}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !683, file: !6, line: 570, baseType: !69, size: 32, offset: 9152)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !658, file: !19, line: 2382, baseType: !657, size: 64, offset: 448)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !658, file: !19, line: 2383, baseType: !1123, size: 64, offset: 512)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !45, line: 194, size: 64, elements: !1124)
!1124 = !{!1125}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1123, file: !45, line: 195, baseType: !1002, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !658, file: !19, line: 2385, baseType: !1127, offset: 576)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1041, line: 206, elements: !1042)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !658, file: !19, line: 2386, baseType: !1127, offset: 576)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !658, file: !19, line: 2387, baseType: !1127, offset: 576)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !658, file: !19, line: 2388, baseType: !1131, offset: 576)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1127, elements: !422)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !658, file: !19, line: 2390, baseType: !1127, offset: 576)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !658, file: !19, line: 2391, baseType: !1127, offset: 576)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !658, file: !19, line: 2392, baseType: !1127, offset: 576)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !658, file: !19, line: 2393, baseType: !1127, offset: 576)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !647, file: !19, line: 1197, baseType: !1137, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1139)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !19, line: 2057, size: 1664, elements: !1140)
!1140 = !{!1141, !1145, !1149, !1150, !1154, !1178, !1182, !1183, !1184, !1188, !1192, !1196, !1197, !1198, !1204, !1208, !1209, !2377, !2378, !2379, !2380, !2384, !2388, !2435, !2450, !2451}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1139, file: !19, line: 2058, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!495, !646}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1139, file: !19, line: 2059, baseType: !1146, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !495}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1139, file: !19, line: 2060, baseType: !1146, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1139, file: !19, line: 2062, baseType: !1151, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !495, !42}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1139, file: !19, line: 2063, baseType: !1155, size: 64, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!42, !495, !1158}
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 42, size: 384, elements: !1160)
!1160 = !{!1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1159, file: !14, line: 43, baseType: !456, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1159, file: !14, line: 45, baseType: !456, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1159, file: !14, line: 52, baseType: !61, size: 64, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1159, file: !14, line: 53, baseType: !61, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1159, file: !14, line: 55, baseType: !13, size: 32, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1159, file: !14, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1159, file: !14, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1159, file: !14, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1159, file: !14, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1159, file: !14, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1159, file: !14, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1159, file: !14, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1159, file: !14, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1159, file: !14, line: 78, baseType: !1175, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !14, line: 78, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1139, file: !19, line: 2064, baseType: !1179, size: 64, offset: 320)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!42, !495}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1139, file: !19, line: 2065, baseType: !1146, size: 64, offset: 384)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1139, file: !19, line: 2066, baseType: !678, size: 64, offset: 448)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1139, file: !19, line: 2067, baseType: !1185, size: 64, offset: 512)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!42, !646, !42}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1139, file: !19, line: 2068, baseType: !1189, size: 64, offset: 576)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!42, !646, !18}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1139, file: !19, line: 2069, baseType: !1193, size: 64, offset: 640)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!42, !646}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1139, file: !19, line: 2070, baseType: !1189, size: 64, offset: 704)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1139, file: !19, line: 2071, baseType: !1193, size: 64, offset: 768)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1139, file: !19, line: 2072, baseType: !1199, size: 64, offset: 832)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!42, !530, !1202}
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !19, line: 62, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1139, file: !19, line: 2073, baseType: !1205, size: 64, offset: 896)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!42, !646, !882, !421}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1139, file: !19, line: 2074, baseType: !678, size: 64, offset: 960)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1139, file: !19, line: 2076, baseType: !1210, size: 64, offset: 1024)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!42, !1213, !530}
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1215, line: 17, size: 960, elements: !1216)
!1215 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1246, !1247, !2376}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1214, file: !1215, line: 18, baseType: !421, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1214, file: !1215, line: 19, baseType: !55, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1214, file: !1215, line: 20, baseType: !55, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1214, file: !1215, line: 21, baseType: !55, size: 64, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1214, file: !1215, line: 22, baseType: !55, size: 64, offset: 256)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1214, file: !1215, line: 23, baseType: !61, size: 64, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1214, file: !1215, line: 24, baseType: !61, size: 64, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1214, file: !1215, line: 25, baseType: !753, size: 256, offset: 448)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1214, file: !1215, line: 26, baseType: !1226, size: 64, offset: 704)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1228)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1215, line: 32, size: 256, elements: !1229)
!1229 = !{!1230, !1234, !1238, !1242}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1228, file: !1215, line: 33, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!40, !1213, !60}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1228, file: !1215, line: 34, baseType: !1235, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !1213, !40}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1228, file: !1215, line: 35, baseType: !1239, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!40, !1213, !40, !60}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1228, file: !1215, line: 36, baseType: !1243, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!42, !1213, !40}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1214, file: !1215, line: 27, baseType: !42, size: 32, offset: 768)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1214, file: !1215, line: 28, baseType: !1248, size: 64, offset: 832)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1250)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !19, line: 994, size: 1856, align: 64, elements: !1251)
!1251 = !{!1252, !1263, !1264, !1266, !1267, !1268, !1269, !1270, !1325, !1649, !1658, !1664, !1665, !2366, !2367, !2368, !2369, !2371, !2372, !2375}
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1250, file: !19, line: 995, baseType: !1253, size: 128)
!1253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1250, file: !19, line: 995, size: 128, elements: !1254)
!1254 = !{!1255, !1261, !1262}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1253, file: !19, line: 996, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1257, line: 60, size: 64, elements: !1258)
!1257 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1258 = !{!1259}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1256, file: !1257, line: 61, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1253, file: !19, line: 997, baseType: !973, size: 128, align: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1253, file: !19, line: 998, baseType: !7, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1250, file: !19, line: 1005, baseType: !79, size: 32, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1250, file: !19, line: 1006, baseType: !1265, size: 32, offset: 160)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !45, line: 156, baseType: !7)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1250, file: !19, line: 1007, baseType: !757, size: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1250, file: !19, line: 1008, baseType: !753, size: 256, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1250, file: !19, line: 1009, baseType: !61, size: 64, offset: 512)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1250, file: !19, line: 1010, baseType: !7, size: 32, offset: 576)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1250, file: !19, line: 1011, baseType: !1271, size: 256, offset: 640)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !19, line: 948, size: 256, elements: !1272)
!1272 = !{!1273, !1294, !1321, !1322, !1323, !1324}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1271, file: !19, line: 949, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1275, line: 34, baseType: !1276)
!1275 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1275, line: 25, size: 64, elements: !1277)
!1277 = !{!1278}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1276, file: !1275, line: 26, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1280, line: 27, baseType: !1281)
!1280 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1280, line: 13, size: 64, elements: !1282)
!1282 = !{!1283, !1293}
!1283 = !DIDerivedType(tag: DW_TAG_member, scope: !1281, file: !1280, line: 14, baseType: !1284, size: 32)
!1284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1281, file: !1280, line: 14, size: 32, elements: !1285)
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1284, file: !1280, line: 15, baseType: !69, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !1280, line: 16, baseType: !1288, size: 32)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1284, file: !1280, line: 16, size: 32, elements: !1289)
!1289 = !{!1290, !1291}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1288, file: !1280, line: 18, baseType: !103, size: 8)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1288, file: !1280, line: 19, baseType: !1292, size: 24, offset: 8)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 24, elements: !422)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1281, file: !1280, line: 26, baseType: !91, size: 32, offset: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1271, file: !19, line: 950, baseType: !1295, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !24, line: 59, size: 768, elements: !1297)
!1297 = !{!1298, !1304, !1305, !1306, !1308, !1309, !1310, !1311}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1296, file: !24, line: 61, baseType: !1299, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1300, line: 113, baseType: !1301)
!1300 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1300, line: 111, size: 32, elements: !1302)
!1302 = !{!1303}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1301, file: !1300, line: 112, baseType: !69, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1296, file: !24, line: 62, baseType: !7, size: 32, offset: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1296, file: !24, line: 63, baseType: !79, size: 32, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1296, file: !24, line: 65, baseType: !1307, size: 256, offset: 128)
!1307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1123, size: 256, elements: !983)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1296, file: !24, line: 66, baseType: !1123, size: 64, offset: 384)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1296, file: !24, line: 68, baseType: !74, size: 192, offset: 448)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1296, file: !24, line: 69, baseType: !973, size: 128, align: 64, offset: 640)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1296, file: !24, line: 70, baseType: !1312, offset: 768)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1313, elements: !1319)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !24, line: 54, size: 128, elements: !1314)
!1314 = !{!1315, !1316}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1313, file: !24, line: 55, baseType: !42, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1313, file: !24, line: 56, baseType: !1317, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !24, line: 56, flags: DIFlagFwdDecl)
!1319 = !{!1320}
!1320 = !DISubrange(count: -1)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1271, file: !19, line: 951, baseType: !23, size: 32, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1271, file: !19, line: 952, baseType: !501, size: 32, offset: 160)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1271, file: !19, line: 952, baseType: !501, size: 32, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1271, file: !19, line: 953, baseType: !42, size: 32, offset: 224)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1250, file: !19, line: 1012, baseType: !1326, size: 64, offset: 896)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1328)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1329, line: 110, size: 1472, elements: !1330)
!1329 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1330 = !{!1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1347, !1348, !1349, !1350, !1351, !1352, !1470, !1471, !1472, !1473, !1474, !1505, !1635, !1636, !1644}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1328, file: !1329, line: 111, baseType: !757, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1328, file: !1329, line: 112, baseType: !501, size: 32, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1328, file: !1329, line: 113, baseType: !510, size: 32, offset: 96)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1328, file: !1329, line: 114, baseType: !501, size: 32, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1328, file: !1329, line: 115, baseType: !510, size: 32, offset: 160)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1328, file: !1329, line: 116, baseType: !501, size: 32, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1328, file: !1329, line: 117, baseType: !510, size: 32, offset: 224)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1328, file: !1329, line: 118, baseType: !501, size: 32, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1328, file: !1329, line: 119, baseType: !510, size: 32, offset: 288)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1328, file: !1329, line: 120, baseType: !7, size: 32, offset: 320)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1328, file: !1329, line: 121, baseType: !1342, size: 64, offset: 384)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1343, line: 24, baseType: !1344)
!1343 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1343, line: 24, size: 64, elements: !1345)
!1345 = !{!1346}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1344, file: !1343, line: 24, baseType: !568, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1328, file: !1329, line: 122, baseType: !1342, size: 64, offset: 448)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1328, file: !1329, line: 123, baseType: !1342, size: 64, offset: 512)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1328, file: !1329, line: 124, baseType: !1342, size: 64, offset: 576)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1328, file: !1329, line: 125, baseType: !1342, size: 64, offset: 640)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1328, file: !1329, line: 127, baseType: !107, size: 8, offset: 704)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1328, file: !1329, line: 129, baseType: !1353, size: 64, offset: 768)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1355, line: 195, size: 1728, elements: !1356)
!1355 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1356 = !{!1357, !1358, !1361, !1366, !1375, !1378, !1379, !1386, !1387, !1388, !1389, !1392, !1393, !1394, !1395, !1396, !1434, !1455}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1354, file: !1355, line: 196, baseType: !1299, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1354, file: !1355, line: 197, baseType: !1359, size: 32, offset: 32)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1355, line: 28, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !45, line: 104, baseType: !749)
!1361 = !DIDerivedType(tag: DW_TAG_member, scope: !1354, file: !1355, line: 198, baseType: !1362, size: 192, offset: 64)
!1362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1354, file: !1355, line: 198, size: 192, elements: !1363)
!1363 = !{!1364, !1365}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1362, file: !1355, line: 199, baseType: !117, size: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1362, file: !1355, line: 200, baseType: !865, size: 192, align: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1354, file: !1355, line: 205, baseType: !1367, size: 320, offset: 256)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1368, line: 48, size: 320, elements: !1369)
!1368 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1369 = !{!1370, !1371, !1372, !1373, !1374}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1367, file: !1368, line: 49, baseType: !757, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1367, file: !1368, line: 55, baseType: !757, size: 64, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1367, file: !1368, line: 57, baseType: !767, size: 32, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1367, file: !1368, line: 59, baseType: !711, size: 32, offset: 160)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1367, file: !1368, line: 60, baseType: !117, size: 128, offset: 192)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1354, file: !1355, line: 206, baseType: !1376, size: 64, offset: 576)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1355, line: 206, flags: DIFlagFwdDecl)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1354, file: !1355, line: 207, baseType: !40, size: 64, offset: 640)
!1379 = !DIDerivedType(tag: DW_TAG_member, scope: !1354, file: !1355, line: 208, baseType: !1380, size: 64, offset: 704)
!1380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1354, file: !1355, line: 208, size: 64, elements: !1381)
!1381 = !{!1382, !1385}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1380, file: !1355, line: 209, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1384, line: 8, baseType: !764)
!1384 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1380, file: !1355, line: 210, baseType: !1383, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1354, file: !1355, line: 212, baseType: !1383, size: 64, offset: 768)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1354, file: !1355, line: 213, baseType: !501, size: 32, offset: 832)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1354, file: !1355, line: 214, baseType: !510, size: 32, offset: 864)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1354, file: !1355, line: 215, baseType: !1390, size: 32, offset: 896)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1355, line: 31, baseType: !1391)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !45, line: 110, baseType: !564)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1354, file: !1355, line: 216, baseType: !46, size: 16, offset: 928)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1354, file: !1355, line: 217, baseType: !46, size: 16, offset: 944)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1354, file: !1355, line: 221, baseType: !891, size: 16, offset: 960)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1354, file: !1355, line: 228, baseType: !59, size: 64, offset: 1024)
!1396 = !DIDerivedType(tag: DW_TAG_member, scope: !1354, file: !1355, line: 245, baseType: !1397, size: 320, offset: 1088)
!1397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1354, file: !1355, line: 245, size: 320, elements: !1398)
!1398 = !{!1399, !1426}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1397, file: !1355, line: 246, baseType: !1400, size: 320)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1355, line: 114, size: 320, elements: !1401)
!1401 = !{!1402, !1403, !1415, !1418, !1425}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1400, file: !1355, line: 116, baseType: !59, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1400, file: !1355, line: 117, baseType: !1404, size: 64, offset: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1400, file: !1355, line: 117, size: 64, elements: !1405)
!1405 = !{!1406, !1414}
!1406 = !DIDerivedType(tag: DW_TAG_member, scope: !1404, file: !1355, line: 118, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1404, file: !1355, line: 118, size: 64, elements: !1408)
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1407, file: !1355, line: 120, baseType: !113, size: 16)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1407, file: !1355, line: 121, baseType: !1411, size: 48, offset: 16)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 48, elements: !1412)
!1412 = !{!1413}
!1413 = !DISubrange(count: 6)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1404, file: !1355, line: 127, baseType: !59, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1400, file: !1355, line: 129, baseType: !1416, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1355, line: 102, flags: DIFlagFwdDecl)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1400, file: !1355, line: 130, baseType: !1419, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1355, line: 108, size: 192, elements: !1421)
!1421 = !{!1422, !1423, !1424}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1420, file: !1355, line: 109, baseType: !973, size: 128, align: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1420, file: !1355, line: 110, baseType: !1299, size: 32, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1420, file: !1355, line: 111, baseType: !833, size: 8, offset: 160)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1400, file: !1355, line: 131, baseType: !36, size: 64, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1397, file: !1355, line: 247, baseType: !1427, size: 320)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1397, file: !1355, line: 247, size: 320, elements: !1428)
!1428 = !{!1429, !1430, !1431, !1432, !1433}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1427, file: !1355, line: 248, baseType: !59, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1427, file: !1355, line: 249, baseType: !59, size: 64, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1427, file: !1355, line: 250, baseType: !1416, size: 64, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1427, file: !1355, line: 251, baseType: !1419, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1427, file: !1355, line: 252, baseType: !421, size: 64, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_member, scope: !1354, file: !1355, line: 260, baseType: !1435, size: 256, offset: 1408)
!1435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1354, file: !1355, line: 260, size: 256, elements: !1436)
!1436 = !{!1437, !1443}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1435, file: !1355, line: 261, baseType: !1438, size: 256)
!1438 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1355, line: 134, size: 256, elements: !1439)
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1438, file: !1355, line: 135, baseType: !40, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1438, file: !1355, line: 136, baseType: !1442, size: 256)
!1442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !983)
!1443 = !DIDerivedType(tag: DW_TAG_member, scope: !1435, file: !1355, line: 262, baseType: !1444, size: 256)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1435, file: !1355, line: 262, size: 256, elements: !1445)
!1445 = !{!1446, !1447}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1444, file: !1355, line: 264, baseType: !117, size: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1444, file: !1355, line: 265, baseType: !1448, size: 128, offset: 128)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1449, line: 22, size: 128, elements: !1450)
!1449 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1450 = !{!1451, !1454}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1448, file: !1449, line: 23, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1449, line: 23, flags: DIFlagFwdDecl)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1448, file: !1449, line: 24, baseType: !59, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1354, file: !1355, line: 280, baseType: !1456, size: 64, offset: 1664)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1355, line: 176, size: 192, elements: !1458)
!1458 = !{!1459, !1468, !1469}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1457, file: !1355, line: 177, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1355, line: 171, baseType: !1461)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!42, !1353, !1464, !1466, !1353}
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1417)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1438)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1457, file: !1355, line: 178, baseType: !1353, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1457, file: !1355, line: 179, baseType: !1416, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1328, file: !1329, line: 130, baseType: !1353, size: 64, offset: 832)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1328, file: !1329, line: 131, baseType: !1353, size: 64, offset: 896)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1328, file: !1329, line: 132, baseType: !1353, size: 64, offset: 960)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1328, file: !1329, line: 135, baseType: !40, size: 64, offset: 1024)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1328, file: !1329, line: 137, baseType: !1475, size: 64, offset: 1088)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1477, line: 14, size: 1088, elements: !1478)
!1477 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1478 = !{!1479, !1480, !1489, !1490, !1491, !1492, !1493, !1494}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1476, file: !1477, line: 15, baseType: !1299, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1476, file: !1477, line: 17, baseType: !1481, size: 320, offset: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1482, line: 22, size: 320, elements: !1483)
!1482 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1483 = !{!1484, !1485, !1486, !1487}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1481, file: !1482, line: 23, baseType: !711, size: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1481, file: !1482, line: 24, baseType: !763, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1481, file: !1482, line: 26, baseType: !117, size: 128, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1481, file: !1482, line: 28, baseType: !1488, size: 64, offset: 256)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1476, file: !1477, line: 19, baseType: !59, size: 64, offset: 384)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1476, file: !1477, line: 20, baseType: !757, size: 64, offset: 448)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1476, file: !1477, line: 23, baseType: !999, size: 128, offset: 512)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1476, file: !1477, line: 24, baseType: !501, size: 32, offset: 640)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1476, file: !1477, line: 29, baseType: !757, size: 64, offset: 704)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1476, file: !1477, line: 36, baseType: !1495, size: 320, offset: 768)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1496, line: 15, size: 320, elements: !1497)
!1496 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1497 = !{!1498, !1499, !1500, !1501, !1502, !1503, !1504}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1495, file: !1496, line: 16, baseType: !711, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1495, file: !1496, line: 18, baseType: !42, size: 32, offset: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1495, file: !1496, line: 19, baseType: !42, size: 32, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1495, file: !1496, line: 20, baseType: !42, size: 32, offset: 96)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1495, file: !1496, line: 21, baseType: !42, size: 32, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1495, file: !1496, line: 22, baseType: !59, size: 64, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1495, file: !1496, line: 23, baseType: !59, size: 64, offset: 256)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1328, file: !1329, line: 138, baseType: !1506, size: 64, offset: 1152)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1508, line: 68, size: 4800, elements: !1509)
!1508 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1509 = !{!1510, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1617, !1618, !1632, !1634}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1507, file: !1508, line: 69, baseType: !1511, size: 576)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1508, line: 23, size: 576, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1511, file: !1508, line: 24, baseType: !564, size: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !1508, line: 25, baseType: !1515, size: 512, offset: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1511, file: !1508, line: 25, size: 512, elements: !1516)
!1516 = !{!1517, !1526}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1515, file: !1508, line: 26, baseType: !1518, size: 480)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 480, elements: !1524)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1508, line: 17, size: 96, elements: !1520)
!1520 = !{!1521, !1522, !1523}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1519, file: !1508, line: 18, baseType: !564, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1519, file: !1508, line: 19, baseType: !564, size: 32, offset: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1519, file: !1508, line: 20, baseType: !564, size: 32, offset: 64)
!1524 = !{!1525}
!1525 = !DISubrange(count: 5)
!1526 = !DIDerivedType(tag: DW_TAG_member, scope: !1515, file: !1508, line: 27, baseType: !1527, size: 128)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1515, file: !1508, line: 27, size: 128, elements: !1528)
!1528 = !{!1529, !1531}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1527, file: !1508, line: 28, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1527, file: !1508, line: 29, baseType: !1530, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1507, file: !1508, line: 70, baseType: !1511, size: 576, offset: 576)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1507, file: !1508, line: 71, baseType: !1511, size: 576, offset: 1152)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1507, file: !1508, line: 72, baseType: !1506, size: 64, offset: 1728)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1507, file: !1508, line: 73, baseType: !42, size: 32, offset: 1792)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1507, file: !1508, line: 74, baseType: !501, size: 32, offset: 1824)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1507, file: !1508, line: 75, baseType: !510, size: 32, offset: 1856)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1507, file: !1508, line: 76, baseType: !1539, size: 192, offset: 1920)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1540, line: 9, size: 192, elements: !1541)
!1540 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1541 = !{!1542, !1543, !1547, !1548}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1539, file: !1540, line: 10, baseType: !757, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1539, file: !1540, line: 11, baseType: !1544, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1546)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1540, line: 7, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1539, file: !1540, line: 12, baseType: !7, size: 32, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1539, file: !1540, line: 13, baseType: !1299, size: 32, offset: 160)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1507, file: !1508, line: 77, baseType: !59, size: 64, offset: 2112)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1507, file: !1508, line: 80, baseType: !833, size: 8, offset: 2176)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1507, file: !1508, line: 88, baseType: !117, size: 128, offset: 2240)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1507, file: !1508, line: 89, baseType: !1353, size: 64, offset: 2368)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1507, file: !1508, line: 90, baseType: !1367, size: 320, offset: 2432)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1507, file: !1508, line: 97, baseType: !1013, size: 256, offset: 2752)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1507, file: !1508, line: 99, baseType: !1556, size: 768, offset: 3008)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !32, line: 199, size: 768, elements: !1557)
!1557 = !{!1558, !1563}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1556, file: !32, line: 200, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!42, !1562}
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1556, file: !32, line: 201, baseType: !1564, size: 704, offset: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !32, line: 193, size: 704, elements: !1565)
!1565 = !{!1566, !1613}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1564, file: !32, line: 195, baseType: !1567, size: 640)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !32, line: 173, size: 640, elements: !1568)
!1568 = !{!1569, !1581, !1582, !1583, !1603, !1604, !1606, !1612}
!1569 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !32, line: 174, baseType: !1570, size: 192)
!1570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1567, file: !32, line: 174, size: 192, elements: !1571)
!1571 = !{!1572, !1580}
!1572 = !DIDerivedType(tag: DW_TAG_member, scope: !1570, file: !32, line: 175, baseType: !1573, size: 192)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1570, file: !32, line: 175, size: 192, elements: !1574)
!1574 = !{!1575, !1576, !1577, !1578, !1579}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1573, file: !32, line: 176, baseType: !53, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1573, file: !32, line: 177, baseType: !42, size: 32, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1573, file: !32, line: 178, baseType: !42, size: 32, offset: 96)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1573, file: !32, line: 179, baseType: !42, size: 32, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1573, file: !32, line: 180, baseType: !42, size: 32, offset: 160)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1570, file: !32, line: 182, baseType: !973, size: 128, align: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1567, file: !32, line: 184, baseType: !701, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1567, file: !32, line: 185, baseType: !53, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1567, file: !32, line: 186, baseType: !1584, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !32, line: 204, size: 960, elements: !1586)
!1586 = !{!1587, !1588, !1592, !1599}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1585, file: !32, line: 205, baseType: !1556, size: 768)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1585, file: !32, line: 206, baseType: !1589, size: 64, offset: 768)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!1562, !1584}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1585, file: !32, line: 207, baseType: !1593, size: 64, offset: 832)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{null, !1596, !1597, !1598}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1585, file: !32, line: 209, baseType: !1600, size: 64, offset: 896)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!42, !1596, !53}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1567, file: !32, line: 187, baseType: !1562, size: 64, offset: 384)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1567, file: !32, line: 188, baseType: !1605, size: 64, offset: 448)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1567, file: !32, line: 189, baseType: !1607, size: 64, offset: 512)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !32, line: 157, size: 256, elements: !1609)
!1609 = !{!1610, !1611}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1608, file: !32, line: 158, baseType: !865, size: 192, align: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1608, file: !32, line: 159, baseType: !1596, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1567, file: !32, line: 190, baseType: !1123, size: 64, offset: 576)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1564, file: !32, line: 196, baseType: !1614, size: 64, offset: 640)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !866, line: 12, size: 64, elements: !1615)
!1615 = !{!1616}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1614, file: !866, line: 13, baseType: !870, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1507, file: !1508, line: 100, baseType: !1596, size: 64, offset: 3776)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1507, file: !1508, line: 102, baseType: !1619, size: 64, offset: 3840)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1508, line: 107, size: 1152, elements: !1621)
!1621 = !{!1622, !1623, !1624, !1625, !1626, !1630}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1620, file: !1508, line: 108, baseType: !999, size: 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1620, file: !1508, line: 109, baseType: !1506, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1620, file: !1508, line: 110, baseType: !501, size: 32, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1620, file: !1508, line: 111, baseType: !69, size: 32, offset: 224)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1620, file: !1508, line: 112, baseType: !1627, size: 640, offset: 256)
!1627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !757, size: 640, elements: !1628)
!1628 = !{!1629}
!1629 = !DISubrange(count: 10)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1620, file: !1508, line: 113, baseType: !1631, size: 256, offset: 896)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !757, size: 256, elements: !983)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1507, file: !1508, line: 103, baseType: !1633, size: 640, offset: 3904)
!1633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 640, elements: !1628)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1507, file: !1508, line: 104, baseType: !989, size: 256, offset: 4544)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1328, file: !1329, line: 139, baseType: !1619, size: 64, offset: 1216)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1328, file: !1329, line: 140, baseType: !1637, size: 64, offset: 1280)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1329, line: 25, size: 64, elements: !1639)
!1639 = !{!1640, !1641, !1642}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1638, file: !1329, line: 26, baseType: !69, size: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1638, file: !1329, line: 27, baseType: !42, size: 32, offset: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1638, file: !1329, line: 28, baseType: !1643, offset: 64)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, elements: !1319)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !1329, line: 142, baseType: !1645, size: 128, offset: 1344)
!1645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1328, file: !1329, line: 142, size: 128, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1645, file: !1329, line: 143, baseType: !42, size: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1645, file: !1329, line: 144, baseType: !973, size: 128, align: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1250, file: !19, line: 1013, baseType: !1650, size: 256, offset: 960)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !19, line: 970, size: 256, elements: !1651)
!1651 = !{!1652, !1653, !1654, !1655, !1656, !1657}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1650, file: !19, line: 971, baseType: !59, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1650, file: !19, line: 972, baseType: !7, size: 32, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1650, file: !19, line: 973, baseType: !7, size: 32, offset: 96)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1650, file: !19, line: 974, baseType: !7, size: 32, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1650, file: !19, line: 975, baseType: !7, size: 32, offset: 160)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1650, file: !19, line: 976, baseType: !61, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1250, file: !19, line: 1014, baseType: !1659, size: 128, offset: 1216)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1660, line: 8, size: 128, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1661 = !{!1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1659, file: !1660, line: 9, baseType: !640, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1659, file: !1660, line: 10, baseType: !530, size: 64, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1250, file: !19, line: 1015, baseType: !495, size: 64, offset: 1344)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1250, file: !19, line: 1016, baseType: !1666, size: 64, offset: 1408)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1668)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !19, line: 1914, size: 2112, elements: !1669)
!1669 = !{!1670, !1671, !1676, !1680, !1684, !2250, !2251, !2257, !2270, !2278, !2282, !2283, !2287, !2288, !2292, !2297, !2298, !2302, !2306, !2312, !2313, !2317, !2318, !2325, !2329, !2333, !2339, !2343, !2347, !2351, !2355, !2356, !2362}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1668, file: !19, line: 1915, baseType: !682, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1668, file: !19, line: 1916, baseType: !1672, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!61, !1675, !61, !42}
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1668, file: !19, line: 1917, baseType: !1677, size: 64, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!453, !1675, !421, !55, !60}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1668, file: !19, line: 1918, baseType: !1681, size: 64, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!453, !1675, !36, !55, !60}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1668, file: !19, line: 1919, baseType: !1685, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!453, !1688, !2248}
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !19, line: 373, size: 384, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1697, !1698, !1699, !1700}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1689, file: !19, line: 374, baseType: !1675, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1689, file: !19, line: 375, baseType: !61, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1689, file: !19, line: 376, baseType: !1694, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{null, !1688, !456}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1689, file: !19, line: 377, baseType: !40, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1689, file: !19, line: 378, baseType: !42, size: 32, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1689, file: !19, line: 379, baseType: !113, size: 16, offset: 288)
!1700 = !DIDerivedType(tag: DW_TAG_member, scope: !1689, file: !19, line: 380, baseType: !1701, size: 64, offset: 320)
!1701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1689, file: !19, line: 380, size: 64, elements: !1702)
!1702 = !{!1703, !2244}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1701, file: !19, line: 386, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1706, line: 998, size: 448, elements: !1707)
!1706 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1707 = !{!1708, !2230, !2231}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1705, file: !1706, line: 999, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !136, line: 293, size: 1536, elements: !1711)
!1711 = !{!1712, !2197, !2211}
!1712 = !DIDerivedType(tag: DW_TAG_member, scope: !1710, file: !136, line: 295, baseType: !1713, size: 512)
!1713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1710, file: !136, line: 295, size: 512, elements: !1714)
!1714 = !{!1715, !1741}
!1715 = !DIDerivedType(tag: DW_TAG_member, scope: !1713, file: !136, line: 296, baseType: !1716, size: 448)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1713, file: !136, line: 296, size: 448, elements: !1717)
!1717 = !{!1718, !1719, !1728, !1729, !1730, !1739, !1740}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1716, file: !136, line: 298, baseType: !59, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, scope: !1716, file: !136, line: 299, baseType: !1720, size: 128, offset: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1716, file: !136, line: 299, size: 128, elements: !1721)
!1721 = !{!1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1720, file: !136, line: 300, baseType: !117, size: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, scope: !1720, file: !136, line: 302, baseType: !1724, size: 128)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1720, file: !136, line: 302, size: 128, elements: !1725)
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1724, file: !136, line: 303, baseType: !40, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1724, file: !136, line: 305, baseType: !7, size: 32, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1716, file: !136, line: 310, baseType: !491, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1716, file: !136, line: 311, baseType: !59, size: 64, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_member, scope: !1716, file: !136, line: 312, baseType: !1731, size: 64, offset: 320)
!1731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1716, file: !136, line: 312, size: 64, elements: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1731, file: !136, line: 313, baseType: !40, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1731, file: !136, line: 314, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !136, line: 257, baseType: !1736)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 255, size: 64, elements: !1737)
!1737 = !{!1738}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1736, file: !136, line: 256, baseType: !59, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1716, file: !136, line: 316, baseType: !69, size: 32, offset: 384)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1716, file: !136, line: 317, baseType: !69, size: 32, offset: 416)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1713, file: !136, line: 323, baseType: !1742, size: 512, align: 128)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !136, line: 74, size: 512, align: 128, elements: !1743)
!1743 = !{!1744, !1745, !2191, !2196}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1742, file: !136, line: 75, baseType: !59, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1742, file: !136, line: 83, baseType: !1746, size: 320, offset: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1742, file: !136, line: 83, size: 320, elements: !1747)
!1747 = !{!1748, !1769, !1783, !1787, !2190}
!1748 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !136, line: 84, baseType: !1749, size: 320)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1746, file: !136, line: 84, size: 320, elements: !1750)
!1750 = !{!1751, !1762, !1763, !1768}
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !136, line: 90, baseType: !1752, size: 128)
!1752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1749, file: !136, line: 90, size: 128, elements: !1753)
!1753 = !{!1754, !1755, !1760, !1761}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1752, file: !136, line: 91, baseType: !117, size: 128)
!1755 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !136, line: 94, baseType: !1756, size: 128)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1752, file: !136, line: 94, size: 128, elements: !1757)
!1757 = !{!1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1756, file: !136, line: 96, baseType: !40, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1756, file: !136, line: 98, baseType: !7, size: 32, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1752, file: !136, line: 102, baseType: !117, size: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1752, file: !136, line: 103, baseType: !117, size: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1749, file: !136, line: 106, baseType: !491, size: 64, offset: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, scope: !1749, file: !136, line: 107, baseType: !1764, size: 64, offset: 192)
!1764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1749, file: !136, line: 107, size: 64, elements: !1765)
!1765 = !{!1766, !1767}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1764, file: !136, line: 108, baseType: !59, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1764, file: !136, line: 109, baseType: !59, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1749, file: !136, line: 117, baseType: !59, size: 64, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !136, line: 119, baseType: !1770, size: 320)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1746, file: !136, line: 119, size: 320, elements: !1771)
!1771 = !{!1772, !1773, !1776, !1777, !1778}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1770, file: !136, line: 124, baseType: !59, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1770, file: !136, line: 125, baseType: !1774, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !136, line: 125, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1770, file: !136, line: 126, baseType: !59, size: 64, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1770, file: !136, line: 127, baseType: !59, size: 64, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !136, line: 128, baseType: !1779, size: 64, offset: 256)
!1779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1770, file: !136, line: 128, size: 64, elements: !1780)
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1779, file: !136, line: 133, baseType: !59, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1779, file: !136, line: 138, baseType: !757, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !136, line: 141, baseType: !1784, size: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1746, file: !136, line: 141, size: 64, elements: !1785)
!1785 = !{!1786}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1784, file: !136, line: 142, baseType: !59, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !136, line: 144, baseType: !1788, size: 128)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1746, file: !136, line: 144, size: 128, elements: !1789)
!1789 = !{!1790, !2189}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1788, file: !136, line: 146, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !128, line: 126, size: 1216, elements: !1793)
!1793 = !{!1794, !1804, !1825, !1826, !1827, !1828, !1829, !2171, !2172, !2173}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1792, file: !128, line: 127, baseType: !1795, size: 384)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !128, line: 21, size: 384, elements: !1796)
!1796 = !{!1797, !1798, !1800, !1801, !1802, !1803}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1795, file: !128, line: 22, baseType: !59, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1795, file: !128, line: 23, baseType: !1799, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1795, file: !128, line: 24, baseType: !1799, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1795, file: !128, line: 25, baseType: !59, size: 64, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1795, file: !128, line: 26, baseType: !59, size: 64, offset: 256)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1795, file: !128, line: 27, baseType: !59, size: 64, offset: 320)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1792, file: !128, line: 128, baseType: !1805, size: 128, offset: 384)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1806, line: 105, size: 128, elements: !1807)
!1806 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1807 = !{!1808, !1809}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1805, file: !1806, line: 110, baseType: !59, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1805, file: !1806, line: 118, baseType: !1810, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1806, line: 95, size: 448, elements: !1812)
!1812 = !{!1813, !1814, !1820, !1821, !1822, !1823, !1824}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1811, file: !1806, line: 96, baseType: !757, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1811, file: !1806, line: 97, baseType: !1815, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1806, line: 60, baseType: !1817)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{null, !1819}
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1811, file: !1806, line: 98, baseType: !1815, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1811, file: !1806, line: 99, baseType: !833, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1811, file: !1806, line: 100, baseType: !833, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1811, file: !1806, line: 101, baseType: !973, size: 128, align: 64, offset: 256)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1811, file: !1806, line: 102, baseType: !1819, size: 64, offset: 384)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1792, file: !128, line: 129, baseType: !702, size: 256, offset: 512)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1792, file: !128, line: 130, baseType: !127, size: 32, offset: 768)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1792, file: !128, line: 131, baseType: !7, size: 32, offset: 800)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1792, file: !128, line: 132, baseType: !59, size: 64, offset: 832)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1792, file: !128, line: 133, baseType: !1830, size: 64, offset: 896)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1832)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !128, line: 77, size: 192, elements: !1833)
!1833 = !{!1834, !1839, !2167}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1832, file: !128, line: 83, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !1838}
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1832, file: !128, line: 89, baseType: !1840, size: 64, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !136, line: 1184, baseType: !7)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1846, line: 512, size: 896, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1847 = !{!1848, !2134, !2135, !2142, !2149, !2159, !2160, !2161, !2163, !2165}
!1848 = !DIDerivedType(tag: DW_TAG_member, scope: !1845, file: !1846, line: 513, baseType: !1849, size: 320)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1845, file: !1846, line: 513, size: 320, elements: !1850)
!1850 = !{!1851, !2130, !2131, !2132, !2133}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1849, file: !1846, line: 514, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !136, line: 625, size: 1344, elements: !1854)
!1854 = !{!1855, !1864, !2019, !2025, !2032, !2033, !2038, !2039, !2044, !2045, !2048, !2123, !2124, !2125, !2126, !2127, !2128}
!1855 = !DIDerivedType(tag: DW_TAG_member, scope: !1853, file: !136, line: 628, baseType: !1856, size: 128)
!1856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1853, file: !136, line: 628, size: 128, elements: !1857)
!1857 = !{!1858, !1863}
!1858 = !DIDerivedType(tag: DW_TAG_member, scope: !1856, file: !136, line: 629, baseType: !1859, size: 128)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1856, file: !136, line: 629, size: 128, elements: !1860)
!1860 = !{!1861, !1862}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1859, file: !136, line: 631, baseType: !59, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1859, file: !136, line: 632, baseType: !59, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1856, file: !136, line: 635, baseType: !973, size: 128, align: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1853, file: !136, line: 639, baseType: !1865, size: 64, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !136, line: 733, size: 10240, elements: !1867)
!1867 = !{!1868, !2017}
!1868 = !DIDerivedType(tag: DW_TAG_member, scope: !1866, file: !136, line: 734, baseType: !1869, size: 10240)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1866, file: !136, line: 734, size: 10240, elements: !1870)
!1870 = !{!1871, !1875, !1888, !1892, !1893, !1894, !1895, !1896, !1897, !1906, !1907, !1908, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1947, !1949, !1952, !1997, !1998, !1999, !2002, !2003, !2004, !2007, !2008, !2009, !2015, !2016}
!1871 = !DIDerivedType(tag: DW_TAG_member, scope: !1869, file: !136, line: 739, baseType: !1872, size: 512, align: 512)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !136, line: 739, size: 512, align: 512, elements: !1873)
!1873 = !{!1874}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1872, file: !136, line: 747, baseType: !69, size: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1869, file: !136, line: 750, baseType: !1876, size: 128, offset: 512)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1877, line: 218, size: 128, elements: !1878)
!1877 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1878 = !{!1879, !1886, !1887}
!1879 = !DIDerivedType(tag: DW_TAG_member, scope: !1876, file: !1877, line: 219, baseType: !1880, size: 32)
!1880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1876, file: !1877, line: 219, size: 32, elements: !1881)
!1881 = !{!1882, !1883}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1880, file: !1877, line: 220, baseType: !79, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1880, file: !1877, line: 221, baseType: !1884)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1877, line: 197, baseType: !1885)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1877, line: 197, elements: !1042)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1876, file: !1877, line: 223, baseType: !7, size: 32, offset: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1876, file: !1877, line: 224, baseType: !40, size: 64, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1869, file: !136, line: 752, baseType: !1889, size: 64, offset: 640)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!59, !1675, !59, !59, !59, !59}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1869, file: !136, line: 756, baseType: !59, size: 64, offset: 704)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1869, file: !136, line: 757, baseType: !59, size: 64, offset: 768)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1869, file: !136, line: 760, baseType: !59, size: 64, offset: 832)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1869, file: !136, line: 761, baseType: !59, size: 64, offset: 896)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1869, file: !136, line: 763, baseType: !59, size: 64, offset: 960)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1869, file: !136, line: 764, baseType: !1898, size: 64, offset: 1024)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1900, line: 299, baseType: !1901)
!1900 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1900, line: 299, size: 64, elements: !1902)
!1902 = !{!1903}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1901, file: !1900, line: 299, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1905, line: 18, baseType: !59)
!1905 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1869, file: !136, line: 773, baseType: !69, size: 32, offset: 1088)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1869, file: !136, line: 785, baseType: !69, size: 32, offset: 1120)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1869, file: !136, line: 795, baseType: !1909, size: 64, offset: 1152)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !136, line: 726, size: 128, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1910, file: !136, line: 727, baseType: !568, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1910, file: !136, line: 728, baseType: !42, size: 32, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1869, file: !136, line: 801, baseType: !59, size: 64, offset: 1216)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1869, file: !136, line: 804, baseType: !757, size: 64, offset: 1280)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1869, file: !136, line: 806, baseType: !42, size: 32, offset: 1344)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1869, file: !136, line: 808, baseType: !79, size: 32, offset: 1376)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1869, file: !136, line: 823, baseType: !1367, size: 320, offset: 1408)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1869, file: !136, line: 825, baseType: !117, size: 128, offset: 1728)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1869, file: !136, line: 845, baseType: !42, size: 32, offset: 1856)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1869, file: !136, line: 849, baseType: !59, size: 64, offset: 1920)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1869, file: !136, line: 850, baseType: !59, size: 64, offset: 1984)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1869, file: !136, line: 852, baseType: !59, size: 64, offset: 2048)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1869, file: !136, line: 853, baseType: !59, size: 64, offset: 2112)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1869, file: !136, line: 854, baseType: !759, size: 64, offset: 2176)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1869, file: !136, line: 855, baseType: !59, size: 64, offset: 2240)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1869, file: !136, line: 856, baseType: !59, size: 64, offset: 2304)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1869, file: !136, line: 857, baseType: !59, size: 64, offset: 2368)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1869, file: !136, line: 858, baseType: !59, size: 64, offset: 2432)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1869, file: !136, line: 865, baseType: !541, size: 32, offset: 2496)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1869, file: !136, line: 867, baseType: !79, size: 32, offset: 2528)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1869, file: !136, line: 869, baseType: !59, size: 64, offset: 2560)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1869, file: !136, line: 869, baseType: !59, size: 64, offset: 2624)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1869, file: !136, line: 869, baseType: !59, size: 64, offset: 2688)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1869, file: !136, line: 869, baseType: !59, size: 64, offset: 2752)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1869, file: !136, line: 870, baseType: !59, size: 64, offset: 2816)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1869, file: !136, line: 870, baseType: !59, size: 64, offset: 2880)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1869, file: !136, line: 870, baseType: !59, size: 64, offset: 2944)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1869, file: !136, line: 871, baseType: !59, size: 64, offset: 3008)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1869, file: !136, line: 871, baseType: !59, size: 64, offset: 3072)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1869, file: !136, line: 871, baseType: !59, size: 64, offset: 3136)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1869, file: !136, line: 871, baseType: !59, size: 64, offset: 3200)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1869, file: !136, line: 873, baseType: !1944, size: 3328, offset: 3264)
!1944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 3328, elements: !1945)
!1945 = !{!1946}
!1946 = !DISubrange(count: 52)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1869, file: !136, line: 875, baseType: !1948, size: 1280, offset: 6592)
!1948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1481, size: 1280, elements: !983)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1869, file: !136, line: 877, baseType: !1950, size: 64, offset: 7872)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !136, line: 877, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1869, file: !136, line: 880, baseType: !1953, size: 1088, offset: 7936)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1954, line: 72, baseType: !1955)
!1954 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1954, line: 23, size: 1088, elements: !1956)
!1956 = !{!1957, !1958, !1959, !1960, !1961, !1964, !1965, !1966, !1967, !1994, !1995, !1996}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1955, file: !1954, line: 28, baseType: !568, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1955, file: !1954, line: 38, baseType: !759, size: 64, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1955, file: !1954, line: 40, baseType: !59, size: 64, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1955, file: !1954, line: 43, baseType: !1367, size: 320, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1955, file: !1954, line: 44, baseType: !1962, size: 64, offset: 512)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1954, line: 44, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1955, file: !1954, line: 48, baseType: !59, size: 64, offset: 576)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1955, file: !1954, line: 59, baseType: !753, size: 256, offset: 640)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1955, file: !1954, line: 60, baseType: !40, size: 64, offset: 896)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1955, file: !1954, line: 61, baseType: !1968, size: 64, offset: 960)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1970)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1971, line: 13, size: 1216, elements: !1972)
!1971 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1972 = !{!1973, !1974, !1975, !1976, !1977, !1978, !1979, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1970, file: !1971, line: 14, baseType: !40, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1970, file: !1971, line: 15, baseType: !59, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1970, file: !1971, line: 17, baseType: !59, size: 64, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1970, file: !1971, line: 17, baseType: !59, size: 64, offset: 192)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1970, file: !1971, line: 18, baseType: !59, size: 64, offset: 256)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1970, file: !1971, line: 18, baseType: !59, size: 64, offset: 320)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1970, file: !1971, line: 19, baseType: !1980, size: 64, offset: 384)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1970, file: !1971, line: 21, baseType: !456, size: 64, offset: 448)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1970, file: !1971, line: 23, baseType: !456, size: 64, offset: 512)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1970, file: !1971, line: 24, baseType: !456, size: 64, offset: 576)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1970, file: !1971, line: 25, baseType: !456, size: 64, offset: 640)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1970, file: !1971, line: 26, baseType: !456, size: 64, offset: 704)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1970, file: !1971, line: 27, baseType: !456, size: 64, offset: 768)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1970, file: !1971, line: 28, baseType: !456, size: 64, offset: 832)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1970, file: !1971, line: 29, baseType: !456, size: 64, offset: 896)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1970, file: !1971, line: 30, baseType: !456, size: 64, offset: 960)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1970, file: !1971, line: 31, baseType: !456, size: 64, offset: 1024)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1970, file: !1971, line: 32, baseType: !456, size: 64, offset: 1088)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1970, file: !1971, line: 33, baseType: !456, size: 64, offset: 1152)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1955, file: !1954, line: 63, baseType: !69, size: 32, offset: 1024)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1955, file: !1954, line: 69, baseType: !113, size: 16, offset: 1056)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1955, file: !1954, line: 70, baseType: !889, size: 16, offset: 1072)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1869, file: !136, line: 882, baseType: !59, size: 64, offset: 9024)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1869, file: !136, line: 885, baseType: !79, size: 32, offset: 9088)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1869, file: !136, line: 886, baseType: !2000, size: 64, offset: 9152)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !136, line: 732, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1869, file: !136, line: 901, baseType: !1506, size: 64, offset: 9216)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1869, file: !136, line: 904, baseType: !1675, size: 64, offset: 9280)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1869, file: !136, line: 906, baseType: !2005, size: 64, offset: 9344)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !136, line: 906, flags: DIFlagFwdDecl)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1869, file: !136, line: 930, baseType: !69, size: 32, offset: 9408)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1869, file: !136, line: 933, baseType: !69, size: 32, offset: 9440)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1869, file: !136, line: 935, baseType: !2010, size: 64, offset: 9472)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !181, line: 103, size: 64, elements: !2011)
!2011 = !{!2012}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2010, file: !181, line: 104, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !181, line: 101, flags: DIFlagFwdDecl)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1869, file: !136, line: 940, baseType: !757, size: 64, offset: 9536)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1869, file: !136, line: 942, baseType: !1013, size: 256, offset: 9600)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1866, file: !136, line: 986, baseType: !2018, offset: 10240)
!2018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, elements: !1319)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1853, file: !136, line: 640, baseType: !2020, size: 64, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1900, line: 297, baseType: !2021)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1900, line: 297, size: 64, elements: !2022)
!2022 = !{!2023}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2021, file: !1900, line: 297, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1905, line: 19, baseType: !59)
!2025 = !DIDerivedType(tag: DW_TAG_member, scope: !1853, file: !136, line: 646, baseType: !2026, size: 64, offset: 256)
!2026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1853, file: !136, line: 646, size: 64, elements: !2027)
!2027 = !{!2028, !2031}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2026, file: !136, line: 647, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2030)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !136, line: 542, baseType: !59)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2026, file: !136, line: 648, baseType: !2030, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1853, file: !136, line: 666, baseType: !42, size: 32, offset: 320)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1853, file: !136, line: 667, baseType: !2034, size: 64, offset: 384)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !136, line: 579, size: 320, elements: !2036)
!2036 = !{!2037}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2035, file: !136, line: 580, baseType: !1367, size: 320)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1853, file: !136, line: 670, baseType: !833, size: 8, offset: 448)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1853, file: !136, line: 681, baseType: !2040, size: 256, offset: 512)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1853, file: !136, line: 678, size: 256, elements: !2041)
!2041 = !{!2042, !2043}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2040, file: !136, line: 679, baseType: !865, size: 192, align: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2040, file: !136, line: 680, baseType: !59, size: 64, offset: 192)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1853, file: !136, line: 689, baseType: !117, size: 128, offset: 768)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1853, file: !136, line: 691, baseType: !2046, size: 64, offset: 896)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !136, line: 691, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1853, file: !136, line: 694, baseType: !2049, size: 64, offset: 960)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2051)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1846, line: 563, size: 1024, elements: !2052)
!2052 = !{!2053, !2057, !2058, !2062, !2066, !2070, !2071, !2075, !2079, !2083, !2084, !2085, !2089, !2093, !2115, !2119}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2051, file: !1846, line: 564, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{null, !1852}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2051, file: !1846, line: 569, baseType: !2054, size: 64, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2051, file: !1846, line: 571, baseType: !2059, size: 64, offset: 128)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!42, !1852, !59}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2051, file: !1846, line: 572, baseType: !2063, size: 64, offset: 192)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!42, !1852}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2051, file: !1846, line: 578, baseType: !2067, size: 64, offset: 256)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!42, !1852, !59, !59, !59}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2051, file: !1846, line: 580, baseType: !1840, size: 64, offset: 320)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2051, file: !1846, line: 581, baseType: !2072, size: 64, offset: 384)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!1843, !1844, !7}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2051, file: !1846, line: 582, baseType: !2076, size: 64, offset: 448)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!1843, !1844, !59, !59}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2051, file: !1846, line: 584, baseType: !2080, size: 64, offset: 512)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!59, !1852}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2051, file: !1846, line: 588, baseType: !1840, size: 64, offset: 576)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2051, file: !1846, line: 591, baseType: !1840, size: 64, offset: 640)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2051, file: !1846, line: 597, baseType: !2086, size: 64, offset: 704)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!42, !1852, !59, !40, !42, !42}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2051, file: !1846, line: 603, baseType: !2090, size: 64, offset: 768)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!36, !1852}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2051, file: !1846, line: 613, baseType: !2094, size: 64, offset: 832)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!42, !1852, !2097}
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !2099, line: 44, size: 256, elements: !2100)
!2099 = !DIFile(filename: "./include/linux/mempolicy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb371e8a578bad8ff65f30ddf87a2459")
!2100 = !{!2101, !2102, !2103, !2104, !2109, !2110}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2098, file: !2099, line: 45, baseType: !69, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2098, file: !2099, line: 46, baseType: !46, size: 16, offset: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2098, file: !2099, line: 47, baseType: !46, size: 16, offset: 48)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2098, file: !2099, line: 48, baseType: !2105, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !254, line: 99, baseType: !2106)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 99, size: 64, elements: !2107)
!2107 = !{!2108}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2106, file: !254, line: 99, baseType: !370, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "home_node", scope: !2098, file: !2099, line: 49, baseType: !42, size: 32, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !2098, file: !2099, line: 54, baseType: !2111, size: 64, offset: 192)
!2111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2098, file: !2099, line: 51, size: 64, elements: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mems_allowed", scope: !2111, file: !2099, line: 52, baseType: !2105, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "user_nodemask", scope: !2111, file: !2099, line: 53, baseType: !2105, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2051, file: !1846, line: 625, baseType: !2116, size: 64, offset: 896)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!2097, !1852, !59}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2051, file: !1846, line: 633, baseType: !2120, size: 64, offset: 960)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!1838, !1852, !59}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1853, file: !136, line: 697, baseType: !59, size: 64, offset: 1024)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1853, file: !136, line: 699, baseType: !1675, size: 64, offset: 1088)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1853, file: !136, line: 700, baseType: !40, size: 64, offset: 1152)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1853, file: !136, line: 711, baseType: !757, size: 64, offset: 1216)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1853, file: !136, line: 717, baseType: !2097, size: 64, offset: 1280)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1853, file: !136, line: 722, baseType: !2129, offset: 1344)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !136, line: 570, elements: !1042)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1849, file: !1846, line: 515, baseType: !363, size: 32, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1849, file: !1846, line: 516, baseType: !59, size: 64, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1849, file: !1846, line: 517, baseType: !59, size: 64, offset: 192)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1849, file: !1846, line: 518, baseType: !59, size: 64, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1845, file: !1846, line: 520, baseType: !135, size: 32, offset: 320)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1845, file: !1846, line: 522, baseType: !2136, size: 64, offset: 384)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1905, line: 22, baseType: !2138)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1905, line: 22, size: 64, elements: !2139)
!2139 = !{!2140}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2138, file: !1905, line: 22, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1905, line: 15, baseType: !59)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1845, file: !1846, line: 524, baseType: !2143, size: 64, offset: 448)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1900, line: 372, baseType: !2145)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1900, line: 372, size: 64, elements: !2146)
!2146 = !{!2147}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2145, file: !1900, line: 372, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1905, line: 16, baseType: !59)
!2149 = !DIDerivedType(tag: DW_TAG_member, scope: !1845, file: !1846, line: 527, baseType: !2150, size: 64, offset: 512)
!2150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1845, file: !1846, line: 527, size: 64, elements: !2151)
!2151 = !{!2152, !2158}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2150, file: !1846, line: 528, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1905, line: 21, baseType: !2154)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1905, line: 21, size: 64, elements: !2155)
!2155 = !{!2156}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2154, file: !1905, line: 21, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1905, line: 14, baseType: !59)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2150, file: !1846, line: 529, baseType: !2137, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1845, file: !1846, line: 534, baseType: !1838, size: 64, offset: 576)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1845, file: !1846, line: 535, baseType: !1838, size: 64, offset: 640)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1845, file: !1846, line: 541, baseType: !2162, size: 64, offset: 704)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1845, file: !1846, line: 545, baseType: !2164, size: 64, offset: 768)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1845, file: !1846, line: 549, baseType: !2166, size: 64, offset: 832)
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1900, line: 520, baseType: !1838)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1832, file: !128, line: 100, baseType: !2168, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!42, !1791, !59, !59, !42}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1792, file: !128, line: 134, baseType: !40, size: 64, offset: 960)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1792, file: !128, line: 135, baseType: !42, size: 32, offset: 1024)
!2173 = !DIDerivedType(tag: DW_TAG_member, scope: !1792, file: !128, line: 136, baseType: !2174, size: 128, offset: 1088)
!2174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1792, file: !128, line: 136, size: 128, elements: !2175)
!2175 = !{!2176, !2182}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2174, file: !128, line: 137, baseType: !2177, size: 128)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2178, line: 6, size: 128, elements: !2179)
!2178 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2179 = !{!2180, !2181}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2177, file: !2178, line: 7, baseType: !568, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2177, file: !2178, line: 8, baseType: !568, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, scope: !2174, file: !128, line: 138, baseType: !2183)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2174, file: !128, line: 138, elements: !2184)
!2184 = !{!2185, !2187}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2183, file: !128, line: 138, baseType: !2186)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2183, file: !128, line: 138, elements: !1042)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2183, file: !128, line: 138, baseType: !2188)
!2188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2177, elements: !1319)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1788, file: !136, line: 147, baseType: !40, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1746, file: !136, line: 161, baseType: !973, size: 128, align: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, scope: !1742, file: !136, line: 164, baseType: !2192, size: 32, offset: 384)
!2192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1742, file: !136, line: 164, size: 32, elements: !2193)
!2193 = !{!2194, !2195}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2192, file: !136, line: 169, baseType: !69, size: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2192, file: !136, line: 177, baseType: !7, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1742, file: !136, line: 181, baseType: !69, size: 32, offset: 416)
!2197 = !DIDerivedType(tag: DW_TAG_member, scope: !1710, file: !136, line: 325, baseType: !2198, size: 512, offset: 512)
!2198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1710, file: !136, line: 325, size: 512, elements: !2199)
!2199 = !{!2200, !2210}
!2200 = !DIDerivedType(tag: DW_TAG_member, scope: !2198, file: !136, line: 326, baseType: !2201, size: 320)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2198, file: !136, line: 326, size: 320, elements: !2202)
!2202 = !{!2203, !2204, !2205, !2206, !2207, !2208, !2209}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2201, file: !136, line: 327, baseType: !59, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2201, file: !136, line: 328, baseType: !59, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2201, file: !136, line: 329, baseType: !59, size: 64, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2201, file: !136, line: 331, baseType: !69, size: 32, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2201, file: !136, line: 332, baseType: !69, size: 32, offset: 224)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2201, file: !136, line: 333, baseType: !69, size: 32, offset: 256)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2201, file: !136, line: 335, baseType: !7, size: 32, offset: 288)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2198, file: !136, line: 339, baseType: !1742, size: 512, align: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, scope: !1710, file: !136, line: 341, baseType: !2212, size: 512, offset: 1024)
!2212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1710, file: !136, line: 341, size: 512, elements: !2213)
!2213 = !{!2214, !2223, !2229}
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !136, line: 342, baseType: !2215, size: 384)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !136, line: 342, size: 384, elements: !2216)
!2216 = !{!2217, !2218, !2219, !2220, !2221, !2222}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2215, file: !136, line: 343, baseType: !59, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2215, file: !136, line: 344, baseType: !59, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2215, file: !136, line: 346, baseType: !40, size: 64, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2215, file: !136, line: 347, baseType: !40, size: 64, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2215, file: !136, line: 348, baseType: !40, size: 64, offset: 256)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2215, file: !136, line: 349, baseType: !40, size: 64, offset: 320)
!2223 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !136, line: 352, baseType: !2224, size: 256)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !136, line: 352, size: 256, elements: !2225)
!2225 = !{!2226, !2227, !2228}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2224, file: !136, line: 353, baseType: !59, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2224, file: !136, line: 354, baseType: !59, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2224, file: !136, line: 356, baseType: !117, size: 128, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2212, file: !136, line: 359, baseType: !1742, size: 512, align: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1705, file: !1706, line: 1000, baseType: !42, size: 32, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1705, file: !1706, line: 1001, baseType: !2232, size: 320, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !75, line: 14, baseType: !2233)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !75, line: 30, size: 320, elements: !2234)
!2234 = !{!2235, !2236, !2237, !2243}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2233, file: !75, line: 31, baseType: !7, size: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2233, file: !75, line: 32, baseType: !40, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2233, file: !75, line: 33, baseType: !2238, size: 64, offset: 128)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !75, line: 16, baseType: !2239)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!42, !2242, !7, !42, !40}
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2233, file: !75, line: 34, baseType: !117, size: 128, offset: 192)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1701, file: !19, line: 395, baseType: !2245, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!453, !40}
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !19, line: 69, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1668, file: !19, line: 1920, baseType: !1685, size: 64, offset: 320)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1668, file: !19, line: 1921, baseType: !2252, size: 64, offset: 384)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!42, !1688, !2255, !7}
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !19, line: 53, flags: DIFlagFwdDecl)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1668, file: !19, line: 1923, baseType: !2258, size: 64, offset: 448)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!42, !1675, !2261}
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !19, line: 1858, size: 128, elements: !2263)
!2263 = !{!2264, !2269}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2262, file: !19, line: 1859, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !19, line: 1855, baseType: !2266)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!833, !2261, !36, !42, !61, !568, !7}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2262, file: !19, line: 1860, baseType: !61, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1668, file: !19, line: 1924, baseType: !2271, size: 64, offset: 512)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!2274, !1675, !2276}
!2274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2275, line: 59, baseType: !7)
!2275 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !668, line: 31, flags: DIFlagFwdDecl)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1668, file: !19, line: 1925, baseType: !2279, size: 64, offset: 576)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!456, !1675, !7, !59}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1668, file: !19, line: 1926, baseType: !2279, size: 64, offset: 640)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1668, file: !19, line: 1927, baseType: !2284, size: 64, offset: 704)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!42, !1675, !1852}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1668, file: !19, line: 1928, baseType: !59, size: 64, offset: 768)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1668, file: !19, line: 1929, baseType: !2289, size: 64, offset: 832)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!42, !495, !1675}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1668, file: !19, line: 1930, baseType: !2293, size: 64, offset: 896)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!42, !1675, !2296}
!2296 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !19, line: 1061, baseType: !40)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1668, file: !19, line: 1931, baseType: !2289, size: 64, offset: 960)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1668, file: !19, line: 1932, baseType: !2299, size: 64, offset: 1024)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!42, !1675, !61, !61, !42}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1668, file: !19, line: 1933, baseType: !2303, size: 64, offset: 1088)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!42, !42, !1675, !42}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1668, file: !19, line: 1934, baseType: !2307, size: 64, offset: 1152)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!42, !1675, !42, !2310}
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !19, line: 1063, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1668, file: !19, line: 1935, baseType: !1889, size: 64, offset: 1216)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1668, file: !19, line: 1936, baseType: !2314, size: 64, offset: 1280)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!42, !42}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1668, file: !19, line: 1937, baseType: !2307, size: 64, offset: 1344)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1668, file: !19, line: 1938, baseType: !2319, size: 64, offset: 1408)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!453, !2322, !1675, !60, !55, !7}
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2324, line: 59, flags: DIFlagFwdDecl)
!2324 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1668, file: !19, line: 1939, baseType: !2326, size: 64, offset: 1472)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!453, !1675, !60, !2322, !55, !7}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1668, file: !19, line: 1940, baseType: !2330, size: 64, offset: 1536)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{null, !1675}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1668, file: !19, line: 1941, baseType: !2334, size: 64, offset: 1600)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!42, !1675, !42, !2337, !2338}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1668, file: !19, line: 1942, baseType: !2340, size: 64, offset: 1664)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!456, !1675, !42, !61, !61}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1668, file: !19, line: 1944, baseType: !2344, size: 64, offset: 1728)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{null, !1213, !1675}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1668, file: !19, line: 1948, baseType: !2348, size: 64, offset: 1792)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!453, !1675, !61, !1675, !61, !55, !7}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1668, file: !19, line: 1950, baseType: !2352, size: 64, offset: 1856)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!61, !1675, !61, !1675, !61, !61, !7}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1668, file: !19, line: 1953, baseType: !2299, size: 64, offset: 1920)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1668, file: !19, line: 1954, baseType: !2357, size: 64, offset: 1984)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!42, !2360, !7}
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !19, line: 1911, flags: DIFlagFwdDecl)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1668, file: !19, line: 1955, baseType: !2363, size: 64, offset: 2048)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!42, !2360, !2255, !7}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1250, file: !19, line: 1018, baseType: !568, size: 64, offset: 1472)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1250, file: !19, line: 1020, baseType: !40, size: 64, offset: 1536)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1250, file: !19, line: 1023, baseType: !40, size: 64, offset: 1600)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1250, file: !19, line: 1027, baseType: !2370, size: 64, offset: 1664)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1250, file: !19, line: 1029, baseType: !491, size: 64, offset: 1728)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1250, file: !19, line: 1030, baseType: !2373, size: 32, offset: 1792)
!2373 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2374, line: 8, baseType: !564)
!2374 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1250, file: !19, line: 1031, baseType: !2373, size: 32, offset: 1824)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1214, file: !1215, line: 29, baseType: !40, size: 64, offset: 896)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1139, file: !19, line: 2077, baseType: !1210, size: 64, offset: 1088)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1139, file: !19, line: 2078, baseType: !1210, size: 64, offset: 1152)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1139, file: !19, line: 2079, baseType: !1210, size: 64, offset: 1216)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1139, file: !19, line: 2081, baseType: !2381, size: 64, offset: 1280)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!453, !646, !42, !421, !55, !61}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1139, file: !19, line: 2082, baseType: !2385, size: 64, offset: 1344)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!453, !646, !42, !36, !55, !61}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1139, file: !19, line: 2083, baseType: !2389, size: 64, offset: 1408)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!2392, !495}
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !152, line: 296, size: 1664, elements: !2395)
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2420, !2421, !2422}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2394, file: !152, line: 297, baseType: !999, size: 128)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2394, file: !152, line: 298, baseType: !117, size: 128, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2394, file: !152, line: 299, baseType: !117, size: 128, offset: 256)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2394, file: !152, line: 300, baseType: !117, size: 128, offset: 384)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2394, file: !152, line: 301, baseType: !753, size: 256, offset: 512)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2394, file: !152, line: 302, baseType: !79, size: 32, offset: 768)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2394, file: !152, line: 303, baseType: !69, size: 32, offset: 800)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2394, file: !152, line: 304, baseType: !646, size: 64, offset: 832)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2394, file: !152, line: 305, baseType: !2405, size: 64, offset: 896)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !152, line: 68, size: 64, elements: !2406)
!2406 = !{!2407, !2419}
!2407 = !DIDerivedType(tag: DW_TAG_member, scope: !2405, file: !152, line: 69, baseType: !2408, size: 32)
!2408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2405, file: !152, line: 69, size: 32, elements: !2409)
!2409 = !{!2410, !2411, !2412}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2408, file: !152, line: 70, baseType: !501, size: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2408, file: !152, line: 71, baseType: !510, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2408, file: !152, line: 72, baseType: !2413, size: 32)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2414, line: 24, baseType: !2415)
!2414 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2414, line: 22, size: 32, elements: !2416)
!2416 = !{!2417}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2415, file: !2414, line: 23, baseType: !2418, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2414, line: 20, baseType: !507)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2405, file: !152, line: 74, baseType: !151, size: 32, offset: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2394, file: !152, line: 306, baseType: !61, size: 64, offset: 960)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2394, file: !152, line: 307, baseType: !59, size: 64, offset: 1024)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2394, file: !152, line: 308, baseType: !2423, size: 576, offset: 1088)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !152, line: 205, size: 576, elements: !2424)
!2424 = !{!2425, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2423, file: !152, line: 206, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !152, line: 66, baseType: !63)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2423, file: !152, line: 207, baseType: !2426, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2423, file: !152, line: 208, baseType: !2426, size: 64, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2423, file: !152, line: 209, baseType: !2426, size: 64, offset: 192)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2423, file: !152, line: 210, baseType: !2426, size: 64, offset: 256)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2423, file: !152, line: 211, baseType: !2426, size: 64, offset: 320)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2423, file: !152, line: 212, baseType: !2426, size: 64, offset: 384)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2423, file: !152, line: 213, baseType: !1383, size: 64, offset: 448)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2423, file: !152, line: 214, baseType: !1383, size: 64, offset: 512)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1139, file: !19, line: 2085, baseType: !2436, size: 64, offset: 1472)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!456, !646, !2439}
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2441, line: 15, size: 256, elements: !2442)
!2441 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2442 = !{!2443, !2444, !2445, !2446, !2447}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2440, file: !2441, line: 16, baseType: !363, size: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2440, file: !2441, line: 19, baseType: !42, size: 32, offset: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2440, file: !2441, line: 26, baseType: !59, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2440, file: !2441, line: 33, baseType: !59, size: 64, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2440, file: !2441, line: 36, baseType: !2448, size: 64, offset: 192)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !136, line: 33, flags: DIFlagFwdDecl)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1139, file: !19, line: 2087, baseType: !2436, size: 64, offset: 1536)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1139, file: !19, line: 2089, baseType: !678, size: 64, offset: 1600)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !647, file: !19, line: 1198, baseType: !2453, size: 64, offset: 448)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2455)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !152, line: 324, size: 704, elements: !2456)
!2456 = !{!2457, !2461, !2465, !2469, !2470, !2471, !2472, !2473, !2478, !2483, !2487}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2455, file: !152, line: 325, baseType: !2458, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!42, !2393}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2455, file: !152, line: 326, baseType: !2462, size: 64, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!2393, !646, !42}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2455, file: !152, line: 327, baseType: !2466, size: 64, offset: 128)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{null, !2393}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2455, file: !152, line: 328, baseType: !2458, size: 64, offset: 192)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2455, file: !152, line: 329, baseType: !2458, size: 64, offset: 256)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2455, file: !152, line: 330, baseType: !2458, size: 64, offset: 320)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2455, file: !152, line: 331, baseType: !1185, size: 64, offset: 384)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2455, file: !152, line: 334, baseType: !2474, size: 64, offset: 448)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!2477, !495}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2455, file: !152, line: 335, baseType: !2479, size: 64, offset: 512)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!42, !495, !2482}
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2455, file: !152, line: 337, baseType: !2484, size: 64, offset: 576)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!42, !495, !2477}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2455, file: !152, line: 339, baseType: !2488, size: 64, offset: 640)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!42, !646, !2491}
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !647, file: !19, line: 1199, baseType: !2493, size: 64, offset: 512)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2495)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !152, line: 430, size: 704, elements: !2496)
!2496 = !{!2497, !2503, !2504, !2508, !2509, !2510, !2525, !2548, !2552, !2553, !2576}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2495, file: !152, line: 431, baseType: !2498, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!42, !646, !42, !42, !2501}
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1659)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2495, file: !152, line: 432, baseType: !1185, size: 64, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2495, file: !152, line: 433, baseType: !2505, size: 64, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!42, !646, !7}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2495, file: !152, line: 434, baseType: !2505, size: 64, offset: 192)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2495, file: !152, line: 435, baseType: !1185, size: 64, offset: 256)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2495, file: !152, line: 436, baseType: !2511, size: 64, offset: 320)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!42, !646, !42, !2514}
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !152, line: 417, size: 256, elements: !2516)
!2516 = !{!2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2515, file: !152, line: 418, baseType: !42, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2515, file: !152, line: 419, baseType: !7, size: 32, offset: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2515, file: !152, line: 420, baseType: !7, size: 32, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2515, file: !152, line: 422, baseType: !7, size: 32, offset: 96)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2515, file: !152, line: 423, baseType: !7, size: 32, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2515, file: !152, line: 424, baseType: !7, size: 32, offset: 160)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2515, file: !152, line: 425, baseType: !7, size: 32, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2515, file: !152, line: 426, baseType: !7, size: 32, offset: 224)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2495, file: !152, line: 437, baseType: !2526, size: 64, offset: 384)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!42, !646, !2405, !2529}
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !152, line: 345, size: 960, elements: !2531)
!2531 = !{!2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2530, file: !152, line: 346, baseType: !42, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2530, file: !152, line: 347, baseType: !568, size: 64, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2530, file: !152, line: 348, baseType: !568, size: 64, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2530, file: !152, line: 349, baseType: !568, size: 64, offset: 192)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2530, file: !152, line: 350, baseType: !568, size: 64, offset: 256)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2530, file: !152, line: 351, baseType: !568, size: 64, offset: 320)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2530, file: !152, line: 352, baseType: !568, size: 64, offset: 384)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2530, file: !152, line: 353, baseType: !763, size: 64, offset: 448)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2530, file: !152, line: 355, baseType: !763, size: 64, offset: 512)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2530, file: !152, line: 356, baseType: !42, size: 32, offset: 576)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2530, file: !152, line: 357, baseType: !42, size: 32, offset: 608)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2530, file: !152, line: 358, baseType: !568, size: 64, offset: 640)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2530, file: !152, line: 359, baseType: !568, size: 64, offset: 704)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2530, file: !152, line: 360, baseType: !568, size: 64, offset: 768)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2530, file: !152, line: 361, baseType: !763, size: 64, offset: 832)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2530, file: !152, line: 362, baseType: !42, size: 32, offset: 896)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2495, file: !152, line: 438, baseType: !2549, size: 64, offset: 448)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!42, !646, !2491, !2529}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2495, file: !152, line: 440, baseType: !2526, size: 64, offset: 512)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2495, file: !152, line: 441, baseType: !2554, size: 64, offset: 576)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!42, !646, !2557}
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !152, line: 411, size: 1408, elements: !2559)
!2559 = !{!2560, !2561}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2558, file: !152, line: 412, baseType: !7, size: 32)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2558, file: !152, line: 413, baseType: !2562, size: 1344, offset: 64)
!2562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2563, size: 1344, elements: !422)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !152, line: 397, size: 448, elements: !2564)
!2564 = !{!2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2575}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2563, file: !152, line: 398, baseType: !7, size: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2563, file: !152, line: 399, baseType: !7, size: 32, offset: 32)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2563, file: !152, line: 401, baseType: !7, size: 32, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2563, file: !152, line: 402, baseType: !7, size: 32, offset: 96)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2563, file: !152, line: 403, baseType: !7, size: 32, offset: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2563, file: !152, line: 404, baseType: !7, size: 32, offset: 160)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2563, file: !152, line: 405, baseType: !7, size: 32, offset: 192)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2563, file: !152, line: 406, baseType: !570, size: 64, offset: 256)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2563, file: !152, line: 407, baseType: !2574, size: 64, offset: 320)
!2574 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !45, line: 132, baseType: !568)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2563, file: !152, line: 408, baseType: !2574, size: 64, offset: 384)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2495, file: !152, line: 442, baseType: !2505, size: 64, offset: 640)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !647, file: !19, line: 1200, baseType: !2578, size: 64, offset: 576)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2580)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !19, line: 54, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !647, file: !19, line: 1201, baseType: !59, size: 64, offset: 640)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !647, file: !19, line: 1202, baseType: !59, size: 64, offset: 704)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !647, file: !19, line: 1203, baseType: !59, size: 64, offset: 768)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !647, file: !19, line: 1204, baseType: !530, size: 64, offset: 832)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !647, file: !19, line: 1205, baseType: !1367, size: 320, offset: 896)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !647, file: !19, line: 1206, baseType: !42, size: 32, offset: 1216)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !647, file: !19, line: 1207, baseType: !69, size: 32, offset: 1248)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !647, file: !19, line: 1209, baseType: !40, size: 64, offset: 1280)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !647, file: !19, line: 1211, baseType: !2590, size: 64, offset: 1344)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2593)
!2593 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !19, line: 1211, flags: DIFlagFwdDecl)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !647, file: !19, line: 1223, baseType: !2595, size: 64, offset: 1408)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !547, line: 34, size: 64, elements: !2596)
!2596 = !{!2597}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2595, file: !547, line: 35, baseType: !550, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !647, file: !19, line: 1224, baseType: !117, size: 128, offset: 1472)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !647, file: !19, line: 1225, baseType: !2600, size: 64, offset: 1600)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2602, line: 40, size: 7424, elements: !2603)
!2602 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2603 = !{!2604, !2606, !2607, !2610, !2614, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2641, !2642}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2601, file: !2602, line: 41, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !45, line: 131, baseType: !568)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2601, file: !2602, line: 42, baseType: !2605, size: 64, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2601, file: !2602, line: 43, baseType: !2608, size: 64, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2324, line: 1453, flags: DIFlagFwdDecl)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2601, file: !2602, line: 44, baseType: !2611, size: 64, offset: 192)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2613, line: 74, flags: DIFlagFwdDecl)
!2613 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2601, file: !2602, line: 45, baseType: !2615, size: 64, offset: 256)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2602, line: 45, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2601, file: !2602, line: 46, baseType: !59, size: 64, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2601, file: !2602, line: 47, baseType: !833, size: 8, offset: 384)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2601, file: !2602, line: 48, baseType: !103, size: 8, offset: 392)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2601, file: !2602, line: 49, baseType: !833, size: 8, offset: 400)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2601, file: !2602, line: 50, baseType: !833, size: 8, offset: 408)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2601, file: !2602, line: 51, baseType: !651, size: 32, offset: 416)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2601, file: !2602, line: 52, baseType: !69, size: 32, offset: 448)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2601, file: !2602, line: 53, baseType: !79, size: 32, offset: 480)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2601, file: !2602, line: 54, baseType: !495, size: 64, offset: 512)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2601, file: !2602, line: 55, baseType: !40, size: 64, offset: 576)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2601, file: !2602, line: 56, baseType: !40, size: 64, offset: 640)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2601, file: !2602, line: 57, baseType: !2629, size: 64, offset: 704)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2631)
!2631 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2602, line: 57, flags: DIFlagFwdDecl)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2601, file: !2602, line: 58, baseType: !753, size: 256, offset: 768)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2601, file: !2602, line: 60, baseType: !42, size: 32, offset: 1024)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2601, file: !2602, line: 61, baseType: !42, size: 32, offset: 1056)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2601, file: !2602, line: 62, baseType: !386, size: 64, offset: 1088)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2601, file: !2602, line: 65, baseType: !753, size: 256, offset: 1152)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2601, file: !2602, line: 66, baseType: !646, size: 64, offset: 1408)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2601, file: !2602, line: 68, baseType: !2639, size: 64, offset: 1472)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2602, line: 68, flags: DIFlagFwdDecl)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2601, file: !2602, line: 72, baseType: !833, size: 8, offset: 1536)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2601, file: !2602, line: 77, baseType: !377, size: 5824, offset: 1600)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !647, file: !19, line: 1226, baseType: !2644, size: 64, offset: 1664)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !19, line: 1226, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !647, file: !19, line: 1227, baseType: !2647, size: 64, offset: 1728)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !158, line: 163, size: 6848, elements: !2649)
!2649 = !{!2650, !2651, !2652, !2653, !2654, !2655, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2700, !2701, !2702, !2704, !2706, !2707, !2708}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2648, file: !158, line: 164, baseType: !568, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2648, file: !158, line: 165, baseType: !865, size: 192, align: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !2648, file: !158, line: 166, baseType: !117, size: 128, offset: 256)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2648, file: !158, line: 167, baseType: !59, size: 64, offset: 384)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !2648, file: !158, line: 168, baseType: !59, size: 64, offset: 448)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2648, file: !158, line: 170, baseType: !2656, size: 32, offset: 512)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2657, line: 19, size: 32, elements: !2658)
!2657 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2658 = !{!2659}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2656, file: !2657, line: 20, baseType: !1299, size: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2648, file: !158, line: 171, baseType: !7, size: 32, offset: 544)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !2648, file: !158, line: 172, baseType: !7, size: 32, offset: 576)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !2648, file: !158, line: 173, baseType: !7, size: 32, offset: 608)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !2648, file: !158, line: 173, baseType: !7, size: 32, offset: 640)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !2648, file: !158, line: 179, baseType: !757, size: 64, offset: 704)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !2648, file: !158, line: 184, baseType: !59, size: 64, offset: 768)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !2648, file: !158, line: 186, baseType: !2667, size: 4672, offset: 832)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !158, line: 105, size: 4672, elements: !2668)
!2668 = !{!2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2693, !2694, !2695, !2696, !2697, !2698, !2699}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2667, file: !158, line: 106, baseType: !2647, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2667, file: !158, line: 108, baseType: !59, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !2667, file: !158, line: 109, baseType: !59, size: 64, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !2667, file: !158, line: 111, baseType: !117, size: 128, offset: 192)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !2667, file: !158, line: 112, baseType: !117, size: 128, offset: 320)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !2667, file: !158, line: 113, baseType: !117, size: 128, offset: 448)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !2667, file: !158, line: 114, baseType: !117, size: 128, offset: 576)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2667, file: !158, line: 115, baseType: !79, size: 32, offset: 704)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !2667, file: !158, line: 117, baseType: !69, size: 32, offset: 736)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !2667, file: !158, line: 118, baseType: !1948, size: 1280, offset: 768)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !2667, file: !158, line: 120, baseType: !59, size: 64, offset: 2048)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !2667, file: !158, line: 121, baseType: !59, size: 64, offset: 2112)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !2667, file: !158, line: 122, baseType: !59, size: 64, offset: 2176)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !2667, file: !158, line: 123, baseType: !59, size: 64, offset: 2240)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !2667, file: !158, line: 124, baseType: !59, size: 64, offset: 2304)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !2667, file: !158, line: 132, baseType: !59, size: 64, offset: 2368)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !2667, file: !158, line: 133, baseType: !59, size: 64, offset: 2432)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !2667, file: !158, line: 135, baseType: !2687, size: 384, offset: 2496)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !2688, line: 76, size: 384, elements: !2689)
!2688 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!2689 = !{!2690, !2691, !2692}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2687, file: !2688, line: 78, baseType: !1481, size: 320)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2687, file: !2688, line: 80, baseType: !7, size: 32, offset: 320)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2687, file: !2688, line: 81, baseType: !711, size: 32, offset: 352)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !2667, file: !158, line: 136, baseType: !42, size: 32, offset: 2880)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !2667, file: !158, line: 137, baseType: !157, size: 32, offset: 2912)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !2667, file: !158, line: 139, baseType: !79, size: 32, offset: 2944)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !2667, file: !158, line: 140, baseType: !117, size: 128, offset: 3008)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !2667, file: !158, line: 141, baseType: !1070, size: 704, offset: 3136)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !2667, file: !158, line: 142, baseType: !1070, size: 704, offset: 3840)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !2667, file: !158, line: 144, baseType: !117, size: 128, offset: 4544)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !2648, file: !158, line: 187, baseType: !117, size: 128, offset: 5504)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !2648, file: !158, line: 193, baseType: !74, size: 192, offset: 5632)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2648, file: !158, line: 195, baseType: !2703, size: 64, offset: 5824)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2648, file: !158, line: 196, baseType: !2705, size: 512, offset: 5888)
!2705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 512, elements: !426)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2648, file: !158, line: 197, baseType: !2703, size: 64, offset: 6400)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !2648, file: !158, line: 199, baseType: !995, size: 320, offset: 6464)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !2648, file: !158, line: 202, baseType: !530, size: 64, offset: 6784)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !647, file: !19, line: 1228, baseType: !2710, size: 64, offset: 1792)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !19, line: 1228, flags: DIFlagFwdDecl)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !647, file: !19, line: 1229, baseType: !999, size: 128, offset: 1856)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !647, file: !19, line: 1230, baseType: !7, size: 32, offset: 1984)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !647, file: !19, line: 1231, baseType: !2715, size: 2496, offset: 2048)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !152, line: 521, size: 2496, elements: !2716)
!2716 = !{!2717, !2718, !2719, !2721, !2753}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2715, file: !152, line: 522, baseType: !7, size: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2715, file: !152, line: 523, baseType: !1367, size: 320, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2715, file: !152, line: 524, baseType: !2720, size: 192, offset: 384)
!2720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 192, elements: !422)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2715, file: !152, line: 525, baseType: !2722, size: 1728, offset: 576)
!2722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2723, size: 1728, elements: !422)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !152, line: 222, size: 576, elements: !2724)
!2724 = !{!2725, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2723, file: !152, line: 223, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !152, line: 445, size: 256, elements: !2728)
!2728 = !{!2729, !2730, !2743, !2744}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2727, file: !152, line: 446, baseType: !42, size: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2727, file: !152, line: 447, baseType: !2731, size: 64, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2733)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !152, line: 312, size: 512, elements: !2734)
!2734 = !{!2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2733, file: !152, line: 313, baseType: !1185, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2733, file: !152, line: 314, baseType: !1185, size: 64, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2733, file: !152, line: 315, baseType: !1185, size: 64, offset: 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2733, file: !152, line: 316, baseType: !1185, size: 64, offset: 192)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2733, file: !152, line: 317, baseType: !2458, size: 64, offset: 256)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2733, file: !152, line: 318, baseType: !2458, size: 64, offset: 320)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2733, file: !152, line: 319, baseType: !2458, size: 64, offset: 384)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2733, file: !152, line: 320, baseType: !2488, size: 64, offset: 448)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2727, file: !152, line: 448, baseType: !682, size: 64, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2727, file: !152, line: 449, baseType: !2726, size: 64, offset: 192)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2723, file: !152, line: 224, baseType: !42, size: 32, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2723, file: !152, line: 226, baseType: !117, size: 128, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2723, file: !152, line: 227, baseType: !59, size: 64, offset: 256)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2723, file: !152, line: 228, baseType: !7, size: 32, offset: 320)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2723, file: !152, line: 229, baseType: !7, size: 32, offset: 352)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2723, file: !152, line: 230, baseType: !2426, size: 64, offset: 384)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2723, file: !152, line: 231, baseType: !2426, size: 64, offset: 448)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2723, file: !152, line: 232, baseType: !40, size: 64, offset: 512)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2715, file: !152, line: 526, baseType: !2754, size: 192, offset: 2304)
!2754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2731, size: 192, elements: !422)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !647, file: !19, line: 1233, baseType: !2756, size: 2368, offset: 4544)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !19, line: 1184, size: 2368, elements: !2757)
!2757 = !{!2758, !2759, !2760}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2756, file: !19, line: 1185, baseType: !46, size: 16)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2756, file: !19, line: 1186, baseType: !46, size: 16, offset: 16)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2756, file: !19, line: 1187, baseType: !2761, size: 2304, offset: 64)
!2761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2762, size: 2304, elements: !422)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2763, line: 12, size: 768, elements: !2764)
!2763 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2764 = !{!2765, !2773, !2774, !4385, !4386}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2762, file: !2763, line: 13, baseType: !2766, size: 384)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2767, line: 17, size: 384, elements: !2768)
!2767 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2768 = !{!2769, !2770, !2771, !2772}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2766, file: !2767, line: 18, baseType: !42, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2766, file: !2767, line: 19, baseType: !42, size: 32, offset: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2766, file: !2767, line: 20, baseType: !74, size: 192, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2766, file: !2767, line: 22, baseType: !973, size: 128, align: 64, offset: 256)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2762, file: !2763, line: 14, baseType: !825, size: 64, offset: 384)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2762, file: !2763, line: 15, baseType: !2775, size: 64, offset: 448)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2776, line: 16, size: 64, elements: !2777)
!2776 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2777 = !{!2778}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2775, file: !2776, line: 17, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2324, line: 746, size: 58368, elements: !2781)
!2781 = !{!2782, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2862, !2873, !2965, !2969, !2972, !3003, !3004, !3005, !3006, !3010, !3012, !3013, !3014, !3015, !3016, !3017, !3028, !3029, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3046, !3047, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3135, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3183, !3189, !3190, !3191, !3192, !3193, !3197, !3200, !3207, !3212, !3215, !3218, !3221, !3609, !3808, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3846, !3847, !3848, !3857, !3865, !3866, !3867, !3868, !3869, !3874, !3875, !3876, !3879, !3880, !3883, !3886, !3892, !3899, !3902, !3903, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4002, !4005, !4006, !4009, !4010, !4011, !4014, !4015, !4016, !4017, !4018, !4019, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4051, !4052, !4058, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4140, !4142, !4143, !4144, !4145, !4146, !4147, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4164, !4165, !4166}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2780, file: !2324, line: 752, baseType: !2783, size: 192)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2784, line: 56, size: 192, elements: !2785)
!2784 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2785 = !{!2786, !2787, !2788, !2789}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2783, file: !2784, line: 57, baseType: !59, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2783, file: !2784, line: 58, baseType: !59, size: 64, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2783, file: !2784, line: 59, baseType: !564, size: 32, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2783, file: !2784, line: 61, baseType: !564, size: 32, offset: 160)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2780, file: !2324, line: 754, baseType: !7, size: 32, offset: 192)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2780, file: !2324, line: 767, baseType: !40, size: 64, offset: 256)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2780, file: !2324, line: 768, baseType: !1299, size: 32, offset: 320)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2780, file: !2324, line: 770, baseType: !7, size: 32, offset: 352)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2780, file: !2324, line: 771, baseType: !7, size: 32, offset: 384)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2780, file: !2324, line: 774, baseType: !42, size: 32, offset: 416)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2780, file: !2324, line: 775, baseType: !2797, size: 128, offset: 448)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2798, line: 58, size: 128, elements: !2799)
!2798 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2799 = !{!2800, !2801, !2806, !2807}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2797, file: !2798, line: 59, baseType: !1256, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, scope: !2797, file: !2798, line: 60, baseType: !2802, size: 32, offset: 64)
!2802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2797, file: !2798, line: 60, size: 32, elements: !2803)
!2803 = !{!2804, !2805}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2802, file: !2798, line: 61, baseType: !7, size: 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2802, file: !2798, line: 62, baseType: !69, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2797, file: !2798, line: 65, baseType: !113, size: 16, offset: 96)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2797, file: !2798, line: 65, baseType: !113, size: 16, offset: 112)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2780, file: !2324, line: 776, baseType: !7, size: 32, offset: 576)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2780, file: !2324, line: 777, baseType: !59, size: 64, offset: 640)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2780, file: !2324, line: 778, baseType: !2779, size: 64, offset: 704)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2780, file: !2324, line: 787, baseType: !42, size: 32, offset: 768)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2780, file: !2324, line: 788, baseType: !42, size: 32, offset: 800)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2780, file: !2324, line: 790, baseType: !42, size: 32, offset: 832)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2780, file: !2324, line: 792, baseType: !42, size: 32, offset: 864)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2780, file: !2324, line: 793, baseType: !42, size: 32, offset: 896)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2780, file: !2324, line: 794, baseType: !42, size: 32, offset: 928)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2780, file: !2324, line: 795, baseType: !7, size: 32, offset: 960)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2780, file: !2324, line: 797, baseType: !2819, size: 2048, offset: 1024)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2324, line: 551, size: 2048, elements: !2820)
!2820 = !{!2821, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2841, !2844, !2845, !2846}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2819, file: !2324, line: 553, baseType: !2822, size: 128)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2324, line: 411, size: 128, elements: !2823)
!2823 = !{!2824, !2825}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2822, file: !2324, line: 412, baseType: !59, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2822, file: !2324, line: 413, baseType: !564, size: 32, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2819, file: !2324, line: 554, baseType: !865, size: 192, align: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2819, file: !2324, line: 555, baseType: !568, size: 64, offset: 320)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2819, file: !2324, line: 556, baseType: !568, size: 64, offset: 384)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2819, file: !2324, line: 558, baseType: !117, size: 128, offset: 448)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2819, file: !2324, line: 559, baseType: !7, size: 32, offset: 576)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2819, file: !2324, line: 561, baseType: !568, size: 64, offset: 640)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2819, file: !2324, line: 562, baseType: !568, size: 64, offset: 704)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2819, file: !2324, line: 563, baseType: !568, size: 64, offset: 768)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2819, file: !2324, line: 564, baseType: !568, size: 64, offset: 832)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2819, file: !2324, line: 565, baseType: !763, size: 64, offset: 896)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2819, file: !2324, line: 566, baseType: !568, size: 64, offset: 960)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2819, file: !2324, line: 568, baseType: !568, size: 64, offset: 1024)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2819, file: !2324, line: 571, baseType: !42, size: 32, offset: 1088)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2819, file: !2324, line: 572, baseType: !2840, size: 64, offset: 1152)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2819, file: !2324, line: 574, baseType: !2842, size: 64, offset: 1216)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2324, line: 49, flags: DIFlagFwdDecl)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2819, file: !2324, line: 576, baseType: !2842, size: 64, offset: 1280)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2819, file: !2324, line: 578, baseType: !59, size: 64, offset: 1344)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2819, file: !2324, line: 588, baseType: !2847, size: 512, align: 512, offset: 1536)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2324, line: 497, size: 512, align: 512, elements: !2848)
!2848 = !{!2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2847, file: !2324, line: 498, baseType: !568, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2847, file: !2324, line: 499, baseType: !568, size: 64, offset: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2847, file: !2324, line: 500, baseType: !568, size: 64, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2847, file: !2324, line: 501, baseType: !564, size: 32, offset: 192)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2847, file: !2324, line: 502, baseType: !564, size: 32, offset: 224)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2847, file: !2324, line: 503, baseType: !59, size: 64, offset: 256)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2847, file: !2324, line: 504, baseType: !59, size: 64, offset: 320)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2847, file: !2324, line: 505, baseType: !59, size: 64, offset: 384)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2847, file: !2324, line: 506, baseType: !2858, size: 64, align: 64, offset: 448)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2324, line: 445, size: 64, align: 64, elements: !2859)
!2859 = !{!2860, !2861}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2858, file: !2324, line: 446, baseType: !7, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2858, file: !2324, line: 447, baseType: !7, size: 32, offset: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2780, file: !2324, line: 798, baseType: !2863, size: 384, offset: 3072)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2324, line: 592, size: 384, elements: !2864)
!2864 = !{!2865, !2866, !2867, !2868, !2869, !2870, !2871}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2863, file: !2324, line: 593, baseType: !117, size: 128)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2863, file: !2324, line: 594, baseType: !59, size: 64, offset: 128)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2863, file: !2324, line: 595, baseType: !59, size: 64, offset: 192)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2863, file: !2324, line: 596, baseType: !7, size: 32, offset: 256)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2863, file: !2324, line: 597, baseType: !46, size: 16, offset: 288)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2863, file: !2324, line: 598, baseType: !46, size: 16, offset: 304)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2863, file: !2324, line: 600, baseType: !2872, size: 64, offset: 320)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2780, file: !2324, line: 799, baseType: !2874, size: 1792, offset: 3456)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2324, line: 610, size: 1792, elements: !2875)
!2875 = !{!2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2962, !2963}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2874, file: !2324, line: 611, baseType: !865, size: 192, align: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2874, file: !2324, line: 618, baseType: !568, size: 64, offset: 192)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2874, file: !2324, line: 619, baseType: !568, size: 64, offset: 256)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2874, file: !2324, line: 620, baseType: !568, size: 64, offset: 320)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2874, file: !2324, line: 621, baseType: !568, size: 64, offset: 384)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2874, file: !2324, line: 622, baseType: !568, size: 64, offset: 448)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2874, file: !2324, line: 629, baseType: !763, size: 64, offset: 512)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2874, file: !2324, line: 630, baseType: !568, size: 64, offset: 576)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2874, file: !2324, line: 631, baseType: !7, size: 32, offset: 640)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2874, file: !2324, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2874, file: !2324, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2874, file: !2324, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2874, file: !2324, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2874, file: !2324, line: 662, baseType: !2890, size: 512, offset: 704)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !170, line: 118, size: 512, elements: !2891)
!2891 = !{!2892, !2900, !2901, !2906, !2958, !2959, !2960, !2961}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2890, file: !170, line: 119, baseType: !2893, size: 256)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2894, line: 9, size: 256, elements: !2895)
!2894 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2895 = !{!2896, !2897}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2893, file: !2894, line: 10, baseType: !865, size: 192, align: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2893, file: !2894, line: 11, baseType: !2898, size: 64, offset: 192)
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2899, line: 29, baseType: !763)
!2899 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2890, file: !170, line: 120, baseType: !2898, size: 64, offset: 256)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2890, file: !170, line: 121, baseType: !2902, size: 64, offset: 320)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!169, !2905}
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2890, file: !170, line: 122, baseType: !2907, size: 64, offset: 384)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !170, line: 159, size: 512, align: 512, elements: !2909)
!2909 = !{!2910, !2935, !2936, !2939, !2944, !2945, !2953, !2957}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2908, file: !170, line: 160, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !170, line: 215, size: 4608, align: 512, elements: !2913)
!2913 = !{!2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2912, file: !170, line: 216, baseType: !711, size: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2912, file: !170, line: 217, baseType: !7, size: 32, offset: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2912, file: !170, line: 218, baseType: !7, size: 32, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2912, file: !170, line: 219, baseType: !7, size: 32, offset: 96)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2912, file: !170, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2912, file: !170, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2912, file: !170, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2912, file: !170, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2912, file: !170, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2912, file: !170, line: 226, baseType: !7, size: 32, offset: 160)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2912, file: !170, line: 227, baseType: !46, size: 16, offset: 192)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2912, file: !170, line: 228, baseType: !46, size: 16, offset: 208)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2912, file: !170, line: 229, baseType: !7, size: 32, offset: 224)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2912, file: !170, line: 235, baseType: !2898, size: 64, offset: 256)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2912, file: !170, line: 236, baseType: !2905, size: 64, offset: 320)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2912, file: !170, line: 237, baseType: !2898, size: 64, offset: 384)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2912, file: !170, line: 238, baseType: !2905, size: 64, offset: 448)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2912, file: !170, line: 239, baseType: !2932, size: 4096, align: 512, offset: 512)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2908, size: 4096, align: 512, elements: !2933)
!2933 = !{!2934}
!2934 = !DISubrange(count: 8)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2908, file: !170, line: 161, baseType: !7, size: 32, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2908, file: !170, line: 162, baseType: !2937, size: 32, offset: 96)
!2937 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !45, line: 32, baseType: !2938)
!2938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !57, line: 96, baseType: !42)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2908, file: !170, line: 163, baseType: !2940, size: 32, offset: 128)
!2940 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !537, line: 274, baseType: !2941)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !537, line: 274, size: 32, elements: !2942)
!2942 = !{!2943}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2941, file: !537, line: 274, baseType: !541, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2908, file: !170, line: 164, baseType: !2905, size: 64, offset: 192)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2908, file: !170, line: 165, baseType: !2946, size: 128, offset: 256)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2894, line: 14, size: 128, elements: !2947)
!2947 = !{!2948}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2946, file: !2894, line: 15, baseType: !2949, size: 128)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !866, line: 26, size: 128, elements: !2950)
!2950 = !{!2951, !2952}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2949, file: !866, line: 27, baseType: !1614, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2949, file: !866, line: 28, baseType: !870, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2908, file: !170, line: 166, baseType: !2954, size: 64, offset: 384)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!2898}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2908, file: !170, line: 167, baseType: !2898, size: 64, offset: 448)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2890, file: !170, line: 123, baseType: !103, size: 8, offset: 448)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2890, file: !170, line: 124, baseType: !103, size: 8, offset: 456)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2890, file: !170, line: 125, baseType: !103, size: 8, offset: 464)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2890, file: !170, line: 126, baseType: !103, size: 8, offset: 472)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2874, file: !2324, line: 671, baseType: !2890, size: 512, offset: 1216)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2874, file: !2324, line: 679, baseType: !2964, size: 64, offset: 1728)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2780, file: !2324, line: 800, baseType: !2966, size: 64, offset: 5248)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2968)
!2968 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2324, line: 800, flags: DIFlagFwdDecl)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2780, file: !2324, line: 809, baseType: !2970, size: 64, offset: 5312)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2324, line: 70, flags: DIFlagFwdDecl)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2780, file: !2324, line: 825, baseType: !2973, size: 2048, align: 512, offset: 5632)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2324, line: 509, size: 2048, align: 512, elements: !2974)
!2974 = !{!2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2973, file: !2324, line: 511, baseType: !568, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2973, file: !2324, line: 512, baseType: !568, size: 64, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2973, file: !2324, line: 513, baseType: !568, size: 64, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2973, file: !2324, line: 514, baseType: !568, size: 64, offset: 192)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2973, file: !2324, line: 515, baseType: !568, size: 64, offset: 256)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2973, file: !2324, line: 516, baseType: !568, size: 64, offset: 320)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2973, file: !2324, line: 518, baseType: !568, size: 64, offset: 384)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2973, file: !2324, line: 519, baseType: !568, size: 64, offset: 448)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2973, file: !2324, line: 520, baseType: !763, size: 64, offset: 512)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2973, file: !2324, line: 522, baseType: !568, size: 64, offset: 576)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2973, file: !2324, line: 523, baseType: !568, size: 64, offset: 640)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2973, file: !2324, line: 524, baseType: !763, size: 64, offset: 704)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2973, file: !2324, line: 526, baseType: !763, size: 64, offset: 768)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2973, file: !2324, line: 527, baseType: !568, size: 64, offset: 832)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2973, file: !2324, line: 529, baseType: !568, size: 64, offset: 896)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2973, file: !2324, line: 530, baseType: !568, size: 64, offset: 960)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2973, file: !2324, line: 531, baseType: !568, size: 64, offset: 1024)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2973, file: !2324, line: 532, baseType: !568, size: 64, offset: 1088)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2973, file: !2324, line: 533, baseType: !568, size: 64, offset: 1152)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2973, file: !2324, line: 535, baseType: !568, size: 64, offset: 1216)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2973, file: !2324, line: 536, baseType: !568, size: 64, offset: 1280)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2973, file: !2324, line: 537, baseType: !568, size: 64, offset: 1344)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2973, file: !2324, line: 538, baseType: !568, size: 64, offset: 1408)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2973, file: !2324, line: 539, baseType: !568, size: 64, offset: 1472)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2973, file: !2324, line: 540, baseType: !568, size: 64, offset: 1536)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2973, file: !2324, line: 541, baseType: !568, size: 64, offset: 1600)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2973, file: !2324, line: 542, baseType: !568, size: 64, offset: 1664)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2973, file: !2324, line: 543, baseType: !568, size: 64, offset: 1728)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2780, file: !2324, line: 833, baseType: !7, size: 32, offset: 7680)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2780, file: !2324, line: 836, baseType: !7, size: 32, offset: 7712)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2780, file: !2324, line: 837, baseType: !42, size: 32, offset: 7744)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2780, file: !2324, line: 838, baseType: !3007, size: 64, offset: 7808)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3009)
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !367, line: 19, baseType: !366)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2780, file: !2324, line: 839, baseType: !3011, size: 64, offset: 7872)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2780, file: !2324, line: 840, baseType: !3009, size: 64, offset: 7936)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2780, file: !2324, line: 841, baseType: !40, size: 64, offset: 8000)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2780, file: !2324, line: 843, baseType: !46, size: 16, offset: 8064)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2780, file: !2324, line: 845, baseType: !46, size: 16, offset: 8080)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2780, file: !2324, line: 848, baseType: !42, size: 32, offset: 8096)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2780, file: !2324, line: 849, baseType: !3018, size: 32, offset: 8128)
!3018 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2324, line: 718, size: 32, elements: !3019)
!3019 = !{!3020, !3027}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3018, file: !2324, line: 724, baseType: !3021, size: 32)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3018, file: !2324, line: 719, size: 32, elements: !3022)
!3022 = !{!3023, !3024, !3025, !3026}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3021, file: !2324, line: 720, baseType: !103, size: 8)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3021, file: !2324, line: 721, baseType: !103, size: 8, offset: 8)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3021, file: !2324, line: 722, baseType: !103, size: 8, offset: 16)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3021, file: !2324, line: 723, baseType: !103, size: 8, offset: 24)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3018, file: !2324, line: 725, baseType: !564, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2780, file: !2324, line: 850, baseType: !117, size: 128, offset: 8192)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2780, file: !2324, line: 851, baseType: !3030, size: 64, offset: 8320)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2324, line: 60, flags: DIFlagFwdDecl)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2780, file: !2324, line: 855, baseType: !59, size: 64, offset: 8384)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2780, file: !2324, line: 856, baseType: !103, size: 8, offset: 8448)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2780, file: !2324, line: 857, baseType: !103, size: 8, offset: 8456)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2780, file: !2324, line: 858, baseType: !42, size: 32, offset: 8480)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2780, file: !2324, line: 859, baseType: !117, size: 128, offset: 8512)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2780, file: !2324, line: 860, baseType: !42, size: 32, offset: 8640)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2780, file: !2324, line: 861, baseType: !117, size: 128, offset: 8704)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2780, file: !2324, line: 873, baseType: !3040, size: 256, offset: 8832)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2324, line: 376, size: 256, elements: !3041)
!3041 = !{!3042, !3043, !3044, !3045}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3040, file: !2324, line: 381, baseType: !59, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3040, file: !2324, line: 384, baseType: !570, size: 64, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3040, file: !2324, line: 389, baseType: !570, size: 64, offset: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3040, file: !2324, line: 392, baseType: !570, size: 64, offset: 192)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2780, file: !2324, line: 875, baseType: !117, size: 128, offset: 9088)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2780, file: !2324, line: 877, baseType: !3048, size: 320, offset: 9216)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3049, line: 86, size: 320, elements: !3050)
!3049 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3050 = !{!3051, !3052, !3053}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3048, file: !3049, line: 87, baseType: !42, size: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3048, file: !3049, line: 88, baseType: !117, size: 128, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3048, file: !3049, line: 89, baseType: !117, size: 128, offset: 192)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2780, file: !2324, line: 878, baseType: !865, size: 192, align: 64, offset: 9536)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2780, file: !2324, line: 881, baseType: !1865, size: 64, offset: 9728)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2780, file: !2324, line: 882, baseType: !1865, size: 64, offset: 9792)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2780, file: !2324, line: 884, baseType: !42, size: 32, offset: 9856)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2780, file: !2324, line: 885, baseType: !42, size: 32, offset: 9888)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2780, file: !2324, line: 886, baseType: !42, size: 32, offset: 9920)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2780, file: !2324, line: 888, baseType: !42, size: 32, offset: 9952)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2780, file: !2324, line: 890, baseType: !59, size: 64, offset: 9984)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2780, file: !2324, line: 893, baseType: !7, size: 32, offset: 10048)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2780, file: !2324, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2780, file: !2324, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2780, file: !2324, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2780, file: !2324, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2780, file: !2324, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2780, file: !2324, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2780, file: !2324, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2780, file: !2324, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2780, file: !2324, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2780, file: !2324, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2780, file: !2324, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2780, file: !2324, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2780, file: !2324, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2780, file: !2324, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2780, file: !2324, line: 969, baseType: !59, size: 64, offset: 10176)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2780, file: !2324, line: 971, baseType: !3079, size: 448, offset: 10240)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !175, line: 25, size: 448, elements: !3080)
!3080 = !{!3081, !3082, !3087}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3079, file: !175, line: 26, baseType: !59, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3079, file: !175, line: 27, baseType: !3083, size: 64, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!456, !3086}
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, scope: !3079, file: !175, line: 28, baseType: !3088, size: 320, offset: 128)
!3088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3079, file: !175, line: 28, size: 320, elements: !3089)
!3089 = !{!3090, !3100, !3125}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3088, file: !175, line: 37, baseType: !3091, size: 320)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !175, line: 30, size: 320, elements: !3092)
!3092 = !{!3093, !3095, !3096, !3097, !3098, !3099}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3091, file: !175, line: 31, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3091, file: !175, line: 32, baseType: !564, size: 32, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3091, file: !175, line: 33, baseType: !564, size: 32, offset: 96)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3091, file: !175, line: 34, baseType: !564, size: 32, offset: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3091, file: !175, line: 35, baseType: !568, size: 64, offset: 192)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3091, file: !175, line: 36, baseType: !3094, size: 64, offset: 256)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3088, file: !175, line: 47, baseType: !3101, size: 192)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !175, line: 39, size: 192, elements: !3102)
!3102 = !{!3103, !3104, !3105, !3124}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3101, file: !175, line: 40, baseType: !2937, size: 32)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3101, file: !175, line: 41, baseType: !174, size: 32, offset: 32)
!3105 = !DIDerivedType(tag: DW_TAG_member, scope: !3101, file: !175, line: 42, baseType: !3106, size: 64, offset: 64)
!3106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3101, file: !175, line: 42, size: 64, elements: !3107)
!3107 = !{!3108, !3116}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3106, file: !175, line: 43, baseType: !3109, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3111, line: 7, size: 128, elements: !3112)
!3111 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3112 = !{!3113, !3115}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3110, file: !3111, line: 8, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !57, line: 93, baseType: !63)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3110, file: !3111, line: 9, baseType: !63, size: 64, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3106, file: !175, line: 44, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3119, line: 7, size: 64, elements: !3120)
!3119 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3120 = !{!3121, !3123}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3118, file: !3119, line: 8, baseType: !3122, size: 32)
!3122 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3119, line: 5, baseType: !749)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3118, file: !3119, line: 9, baseType: !749, size: 32, offset: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3101, file: !175, line: 46, baseType: !568, size: 64, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3088, file: !175, line: 55, baseType: !3126, size: 256)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !175, line: 49, size: 256, elements: !3127)
!3127 = !{!3128, !3131, !3132, !3133, !3134}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3126, file: !175, line: 50, baseType: !3129, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !175, line: 14, flags: DIFlagFwdDecl)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3126, file: !175, line: 51, baseType: !42, size: 32, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3126, file: !175, line: 52, baseType: !42, size: 32, offset: 96)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3126, file: !175, line: 53, baseType: !59, size: 64, offset: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3126, file: !175, line: 54, baseType: !59, size: 64, offset: 192)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2780, file: !2324, line: 973, baseType: !3136, size: 32, offset: 10688)
!3136 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !45, line: 27, baseType: !3137)
!3137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !57, line: 28, baseType: !42)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2780, file: !2324, line: 974, baseType: !3136, size: 32, offset: 10720)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2780, file: !2324, line: 978, baseType: !59, size: 64, offset: 10752)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2780, file: !2324, line: 987, baseType: !2779, size: 64, offset: 10816)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2780, file: !2324, line: 990, baseType: !2779, size: 64, offset: 10880)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2780, file: !2324, line: 995, baseType: !117, size: 128, offset: 10944)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2780, file: !2324, line: 996, baseType: !117, size: 128, offset: 11072)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2780, file: !2324, line: 997, baseType: !2779, size: 64, offset: 11200)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2780, file: !2324, line: 1005, baseType: !117, size: 128, offset: 11264)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2780, file: !2324, line: 1006, baseType: !117, size: 128, offset: 11392)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2780, file: !2324, line: 1009, baseType: !1295, size: 64, offset: 11520)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2780, file: !2324, line: 1010, baseType: !3149, size: 512, offset: 11584)
!3149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 512, elements: !983)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2780, file: !2324, line: 1011, baseType: !117, size: 128, offset: 12096)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2780, file: !2324, line: 1012, baseType: !117, size: 128, offset: 12224)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2780, file: !2324, line: 1014, baseType: !701, size: 64, offset: 12352)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2780, file: !2324, line: 1017, baseType: !882, size: 64, offset: 12416)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2780, file: !2324, line: 1020, baseType: !882, size: 64, offset: 12480)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2780, file: !2324, line: 1023, baseType: !40, size: 64, offset: 12544)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2780, file: !2324, line: 1025, baseType: !568, size: 64, offset: 12608)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2780, file: !2324, line: 1026, baseType: !568, size: 64, offset: 12672)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2780, file: !2324, line: 1031, baseType: !568, size: 64, offset: 12736)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2780, file: !2324, line: 1032, baseType: !3160, size: 192, offset: 12800)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2324, line: 324, size: 192, elements: !3161)
!3161 = !{!3162, !3163, !3164}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3160, file: !2324, line: 326, baseType: !568, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3160, file: !2324, line: 327, baseType: !568, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3160, file: !2324, line: 328, baseType: !711, size: 32, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2780, file: !2324, line: 1041, baseType: !59, size: 64, offset: 12992)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2780, file: !2324, line: 1042, baseType: !59, size: 64, offset: 13056)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2780, file: !2324, line: 1045, baseType: !568, size: 64, offset: 13120)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2780, file: !2324, line: 1048, baseType: !568, size: 64, offset: 13184)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2780, file: !2324, line: 1051, baseType: !59, size: 64, offset: 13248)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2780, file: !2324, line: 1052, baseType: !59, size: 64, offset: 13312)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2780, file: !2324, line: 1055, baseType: !3172, size: 640, offset: 13376)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3173, line: 132, size: 640, elements: !3174)
!3173 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3174 = !{!3175, !3181, !3182}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3172, file: !3173, line: 133, baseType: !3176, size: 576)
!3176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3177, size: 576, elements: !422)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3173, line: 117, size: 192, elements: !3178)
!3178 = !{!3179, !3180}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3177, file: !3173, line: 118, baseType: !568, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3177, file: !3173, line: 119, baseType: !2946, size: 128, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3172, file: !3173, line: 134, baseType: !7, size: 32, offset: 576)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3172, file: !3173, line: 135, baseType: !7, size: 32, offset: 608)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2780, file: !2324, line: 1058, baseType: !3184, size: 448, offset: 14016)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3173, line: 144, size: 448, elements: !3185)
!3185 = !{!3186, !3187, !3188}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3184, file: !3173, line: 145, baseType: !973, size: 128, align: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3184, file: !3173, line: 146, baseType: !753, size: 256, offset: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3184, file: !3173, line: 147, baseType: !7, size: 32, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2780, file: !2324, line: 1064, baseType: !1326, size: 64, offset: 14464)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2780, file: !2324, line: 1067, baseType: !1326, size: 64, offset: 14528)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2780, file: !2324, line: 1070, baseType: !1326, size: 64, offset: 14592)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2780, file: !2324, line: 1074, baseType: !1353, size: 64, offset: 14656)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2780, file: !2324, line: 1084, baseType: !3194, size: 128, offset: 14720)
!3194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 128, elements: !3195)
!3195 = !{!3196}
!3196 = !DISubrange(count: 16)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2780, file: !2324, line: 1086, baseType: !3198, size: 64, offset: 14848)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2324, line: 55, flags: DIFlagFwdDecl)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2780, file: !2324, line: 1089, baseType: !3201, size: 64, offset: 14912)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3202, line: 12, size: 64, elements: !3203)
!3202 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3203 = !{!3204}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3201, file: !3202, line: 13, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3202, line: 8, flags: DIFlagFwdDecl)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2780, file: !2324, line: 1090, baseType: !3208, size: 128, offset: 14976)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3209, line: 13, size: 128, elements: !3210)
!3209 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3210 = !{!3211}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3208, file: !3209, line: 14, baseType: !117, size: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2780, file: !2324, line: 1097, baseType: !3213, size: 64, offset: 15104)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2324, line: 50, flags: DIFlagFwdDecl)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2780, file: !2324, line: 1100, baseType: !3216, size: 64, offset: 15168)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2324, line: 1100, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2780, file: !2324, line: 1103, baseType: !3219, size: 64, offset: 15232)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2324, line: 53, flags: DIFlagFwdDecl)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2780, file: !2324, line: 1107, baseType: !3222, size: 64, offset: 15296)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3224, line: 31, size: 576, elements: !3225)
!3224 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3225 = !{!3226, !3227, !3230, !3233, !3236, !3237, !3240, !3243, !3244}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3223, file: !3224, line: 32, baseType: !1299, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3223, file: !3224, line: 33, baseType: !3228, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3224, line: 9, flags: DIFlagFwdDecl)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3223, file: !3224, line: 34, baseType: !3231, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3224, line: 10, flags: DIFlagFwdDecl)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3223, file: !3224, line: 35, baseType: !3234, size: 64, offset: 192)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3224, line: 8, flags: DIFlagFwdDecl)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3223, file: !3224, line: 36, baseType: !1317, size: 64, offset: 256)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3223, file: !3224, line: 37, baseType: !3238, size: 64, offset: 320)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1355, line: 34, flags: DIFlagFwdDecl)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3223, file: !3224, line: 38, baseType: !3241, size: 64, offset: 384)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3224, line: 38, flags: DIFlagFwdDecl)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3223, file: !3224, line: 39, baseType: !3241, size: 64, offset: 448)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3223, file: !3224, line: 40, baseType: !3245, size: 64, offset: 512)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3247, line: 771, size: 384, elements: !3248)
!3247 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!3248 = !{!3249, !3250, !3251, !3252}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3246, file: !3247, line: 772, baseType: !1539, size: 192)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3246, file: !3247, line: 773, baseType: !1506, size: 64, offset: 192)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3246, file: !3247, line: 774, baseType: !1619, size: 64, offset: 256)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3246, file: !3247, line: 775, baseType: !3253, size: 64, offset: 320)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3255, line: 209, size: 4736, elements: !3256)
!3255 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3256 = !{!3257, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3254, file: !3255, line: 215, baseType: !3258, size: 896)
!3258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3259, size: 896, elements: !3406)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3255, line: 152, size: 1600, elements: !3261)
!3261 = !{!3262, !3457, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3587}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3260, file: !3255, line: 154, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3255, line: 389, size: 7872, elements: !3265)
!3265 = !{!3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3369, !3375, !3376, !3380, !3381, !3382, !3383, !3384, !3385, !3403, !3404, !3408, !3409, !3410, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3444, !3447, !3448, !3455}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3264, file: !3255, line: 391, baseType: !3260, size: 1600)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3264, file: !3255, line: 393, baseType: !59, size: 64, offset: 1600)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3264, file: !3255, line: 401, baseType: !42, size: 32, offset: 1664)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3264, file: !3255, line: 404, baseType: !42, size: 32, offset: 1696)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3264, file: !3255, line: 417, baseType: !42, size: 32, offset: 1728)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3264, file: !3255, line: 418, baseType: !42, size: 32, offset: 1760)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3264, file: !3255, line: 419, baseType: !42, size: 32, offset: 1792)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3264, file: !3255, line: 432, baseType: !42, size: 32, offset: 1824)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3264, file: !3255, line: 433, baseType: !42, size: 32, offset: 1856)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3264, file: !3255, line: 434, baseType: !42, size: 32, offset: 1888)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3264, file: !3255, line: 436, baseType: !42, size: 32, offset: 1920)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3264, file: !3255, line: 439, baseType: !7, size: 32, offset: 1952)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3264, file: !3255, line: 441, baseType: !3279, size: 64, offset: 1984)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !668, line: 190, size: 1152, elements: !3281)
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3361, !3362, !3363, !3364, !3365, !3368}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3280, file: !668, line: 191, baseType: !69, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3280, file: !668, line: 192, baseType: !69, size: 32, offset: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3280, file: !668, line: 202, baseType: !3279, size: 64, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3280, file: !668, line: 203, baseType: !36, size: 64, offset: 128)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3280, file: !668, line: 205, baseType: !865, size: 192, align: 64, offset: 192)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3280, file: !668, line: 207, baseType: !1980, size: 64, offset: 384)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3280, file: !668, line: 208, baseType: !7, size: 32, offset: 448)
!3289 = !DIDerivedType(tag: DW_TAG_member, scope: !3280, file: !668, line: 209, baseType: !3290, size: 256, offset: 512)
!3290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3280, file: !668, line: 209, size: 256, elements: !3291)
!3291 = !{!3292, !3301, !3305}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3290, file: !668, line: 210, baseType: !3293, size: 256)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !668, line: 153, size: 256, elements: !3294)
!3294 = !{!3295, !3296, !3297, !3300}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3293, file: !668, line: 154, baseType: !59, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3293, file: !668, line: 156, baseType: !1614, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3293, file: !668, line: 162, baseType: !3298, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !668, line: 162, flags: DIFlagFwdDecl)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3293, file: !668, line: 167, baseType: !59, size: 64, offset: 192)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3290, file: !668, line: 211, baseType: !3302, size: 64)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !668, line: 170, size: 64, elements: !3303)
!3303 = !{!3304}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3302, file: !668, line: 171, baseType: !3279, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3290, file: !668, line: 212, baseType: !3306, size: 256)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !668, line: 174, size: 256, elements: !3307)
!3307 = !{!3308, !3356, !3359, !3360}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3306, file: !668, line: 175, baseType: !3309, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3311)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !668, line: 271, size: 768, elements: !3312)
!3312 = !{!3313, !3333, !3337, !3338, !3339, !3340, !3341, !3345, !3346, !3347, !3348, !3352}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3311, file: !668, line: 276, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!42, !3317}
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !668, line: 251, size: 1216, elements: !3319)
!3319 = !{!3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3318, file: !668, line: 253, baseType: !3279, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3318, file: !668, line: 254, baseType: !1675, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3318, file: !668, line: 255, baseType: !1213, size: 64, offset: 128)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3318, file: !668, line: 256, baseType: !40, size: 64, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3318, file: !668, line: 259, baseType: !753, size: 256, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3318, file: !668, line: 260, baseType: !753, size: 256, offset: 512)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3318, file: !668, line: 261, baseType: !42, size: 32, offset: 768)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3318, file: !668, line: 262, baseType: !117, size: 128, offset: 832)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3318, file: !668, line: 263, baseType: !421, size: 64, offset: 960)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3318, file: !668, line: 265, baseType: !55, size: 64, offset: 1024)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3318, file: !668, line: 266, baseType: !833, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3318, file: !668, line: 267, baseType: !833, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3318, file: !668, line: 268, baseType: !2049, size: 64, offset: 1152)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3311, file: !668, line: 277, baseType: !3334, size: 64, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{null, !3317}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3311, file: !668, line: 290, baseType: !1243, size: 64, offset: 128)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3311, file: !668, line: 292, baseType: !1231, size: 64, offset: 192)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3311, file: !668, line: 293, baseType: !1239, size: 64, offset: 256)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3311, file: !668, line: 294, baseType: !1235, size: 64, offset: 320)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3311, file: !668, line: 296, baseType: !3342, size: 64, offset: 384)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!453, !3317, !421, !55, !61}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3311, file: !668, line: 306, baseType: !55, size: 64, offset: 448)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3311, file: !668, line: 313, baseType: !833, size: 8, offset: 512)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3311, file: !668, line: 314, baseType: !3342, size: 64, offset: 576)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3311, file: !668, line: 317, baseType: !3349, size: 64, offset: 640)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!2274, !3317, !2276}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3311, file: !668, line: 320, baseType: !3353, size: 64, offset: 704)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!42, !3317, !1852}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3306, file: !668, line: 176, baseType: !3357, size: 64, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !668, line: 35, flags: DIFlagFwdDecl)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3306, file: !668, line: 177, baseType: !61, size: 64, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3306, file: !668, line: 178, baseType: !3279, size: 64, offset: 192)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3280, file: !668, line: 215, baseType: !40, size: 64, offset: 768)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3280, file: !668, line: 221, baseType: !568, size: 64, offset: 832)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3280, file: !668, line: 223, baseType: !46, size: 16, offset: 896)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3280, file: !668, line: 224, baseType: !44, size: 16, offset: 912)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3280, file: !668, line: 225, baseType: !3366, size: 64, offset: 960)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !668, line: 36, flags: DIFlagFwdDecl)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3280, file: !668, line: 227, baseType: !973, size: 128, align: 64, offset: 1024)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3264, file: !3255, line: 442, baseType: !3370, size: 448, offset: 2048)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3255, line: 138, size: 448, elements: !3371)
!3371 = !{!3372, !3373, !3374}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3370, file: !3255, line: 140, baseType: !3279, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3370, file: !3255, line: 141, baseType: !59, size: 64, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3370, file: !3255, line: 142, baseType: !995, size: 320, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3264, file: !3255, line: 443, baseType: !3370, size: 448, offset: 2496)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3264, file: !3255, line: 446, baseType: !3377, offset: 2944)
!3377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3370, elements: !3378)
!3378 = !{!3379}
!3379 = !DISubrange(count: 0)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3264, file: !3255, line: 455, baseType: !113, size: 16, offset: 2944)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3264, file: !3255, line: 456, baseType: !113, size: 16, offset: 2960)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3264, file: !3255, line: 457, baseType: !113, size: 16, offset: 2976)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3264, file: !3255, line: 458, baseType: !113, size: 16, offset: 2992)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3264, file: !3255, line: 461, baseType: !3258, size: 896, offset: 3008)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3264, file: !3255, line: 463, baseType: !3386, size: 64, offset: 3904)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3255, line: 537, size: 41664, elements: !3388)
!3388 = !{!3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3402}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3387, file: !3255, line: 538, baseType: !3298, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3387, file: !3255, line: 541, baseType: !7, size: 32, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3387, file: !3255, line: 544, baseType: !42, size: 32, offset: 96)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3387, file: !3255, line: 547, baseType: !117, size: 128, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3387, file: !3255, line: 548, baseType: !973, size: 128, align: 64, offset: 256)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3387, file: !3255, line: 555, baseType: !3264, size: 7872, offset: 384)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3387, file: !3255, line: 558, baseType: !3263, size: 64, offset: 8256)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3387, file: !3255, line: 561, baseType: !69, size: 32, offset: 8320)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3387, file: !3255, line: 564, baseType: !7, size: 32, offset: 8352)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3387, file: !3255, line: 567, baseType: !3399, size: 32768, offset: 8384)
!3399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32768, elements: !3400)
!3400 = !{!3401}
!3401 = !DISubrange(count: 4096)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3387, file: !3255, line: 570, baseType: !2705, size: 512, offset: 41152)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3264, file: !3255, line: 469, baseType: !117, size: 128, offset: 3968)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3264, file: !3255, line: 478, baseType: !3405, size: 1792, offset: 4096)
!3405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 1792, elements: !3406)
!3406 = !{!3407}
!3407 = !DISubrange(count: 14)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3264, file: !3255, line: 487, baseType: !3263, size: 64, offset: 5888)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3264, file: !3255, line: 488, baseType: !3263, size: 64, offset: 5952)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3264, file: !3255, line: 491, baseType: !3411, size: 64, offset: 6016)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3255, line: 327, size: 896, elements: !3413)
!3413 = !{!3414, !3417, !3427, !3428, !3429, !3430, !3431}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3412, file: !3255, line: 332, baseType: !3415)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3416, line: 64, elements: !1042)
!3416 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3412, file: !3255, line: 333, baseType: !3418, size: 192)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3255, line: 299, size: 192, elements: !3419)
!3419 = !{!3420}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3418, file: !3255, line: 300, baseType: !3421, size: 192)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3422, line: 17, size: 192, elements: !3423)
!3422 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3423 = !{!3424, !3425, !3426}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3421, file: !3422, line: 18, baseType: !568, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3421, file: !3422, line: 19, baseType: !568, size: 64, offset: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3421, file: !3422, line: 20, baseType: !570, size: 64, offset: 128)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3412, file: !3255, line: 339, baseType: !3418, size: 192, offset: 192)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3412, file: !3255, line: 347, baseType: !3418, size: 192, offset: 384)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3412, file: !3255, line: 353, baseType: !3418, size: 192, offset: 576)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3412, file: !3255, line: 366, baseType: !3263, size: 64, offset: 768)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3412, file: !3255, line: 367, baseType: !3263, size: 64, offset: 832)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3264, file: !3255, line: 492, baseType: !117, size: 128, offset: 6080)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3264, file: !3255, line: 495, baseType: !3418, size: 192, offset: 6208)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3264, file: !3255, line: 496, baseType: !3418, size: 192, offset: 6400)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3264, file: !3255, line: 497, baseType: !3160, size: 192, offset: 6592)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3264, file: !3255, line: 503, baseType: !117, size: 128, offset: 6784)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3264, file: !3255, line: 504, baseType: !753, size: 256, offset: 6912)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3264, file: !3255, line: 507, baseType: !74, size: 192, offset: 7168)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3264, file: !3255, line: 510, baseType: !1013, size: 256, offset: 7360)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3264, file: !3255, line: 513, baseType: !3441, size: 64, offset: 7616)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3443, line: 214, elements: !1042)
!3443 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3264, file: !3255, line: 516, baseType: !3445, offset: 7680)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3446, line: 76, elements: !1042)
!3446 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3264, file: !3255, line: 519, baseType: !69, size: 32, offset: 7680)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3264, file: !3255, line: 522, baseType: !3449, size: 128, offset: 7712)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3255, line: 370, size: 128, elements: !3450)
!3450 = !{!3451, !3452, !3453, !3454}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3449, file: !3255, line: 372, baseType: !833, size: 8)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3449, file: !3255, line: 375, baseType: !42, size: 32, offset: 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3449, file: !3255, line: 380, baseType: !42, size: 32, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3449, file: !3255, line: 386, baseType: !42, size: 32, offset: 96)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3264, file: !3255, line: 529, baseType: !3456, offset: 7872)
!3456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3263, elements: !1319)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3260, file: !3255, line: 157, baseType: !3458, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3255, line: 669, size: 1984, elements: !3460)
!3460 = !{!3461, !3465, !3469, !3473, !3474, !3475, !3476, !3480, !3484, !3485, !3491, !3495, !3496, !3497, !3501, !3505, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3532, !3533, !3570, !3571}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3459, file: !3255, line: 670, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!3259, !3259}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3459, file: !3255, line: 671, baseType: !3466, size: 64, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!42, !3259}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3459, file: !3255, line: 672, baseType: !3470, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{null, !3259}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3459, file: !3255, line: 673, baseType: !3470, size: 64, offset: 192)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3459, file: !3255, line: 674, baseType: !3470, size: 64, offset: 256)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3459, file: !3255, line: 675, baseType: !3470, size: 64, offset: 320)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3459, file: !3255, line: 676, baseType: !3477, size: 64, offset: 384)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{null, !3259, !42}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3459, file: !3255, line: 677, baseType: !3481, size: 64, offset: 448)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!42, !1213, !3259}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3459, file: !3255, line: 679, baseType: !3481, size: 64, offset: 512)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3459, file: !3255, line: 682, baseType: !3486, size: 64, offset: 576)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!42, !3489}
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3255, line: 30, flags: DIFlagFwdDecl)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3459, file: !3255, line: 683, baseType: !3492, size: 64, offset: 640)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{null, !3489}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3459, file: !3255, line: 684, baseType: !3492, size: 64, offset: 704)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3459, file: !3255, line: 685, baseType: !1117, size: 64, offset: 768)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3459, file: !3255, line: 686, baseType: !3498, size: 64, offset: 832)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!42, !2779, !3253}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3459, file: !3255, line: 688, baseType: !3502, size: 64, offset: 896)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{null, !2779, !3253}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3459, file: !3255, line: 689, baseType: !3506, size: 64, offset: 960)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{null, !2779}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3459, file: !3255, line: 690, baseType: !3506, size: 64, offset: 1024)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3459, file: !3255, line: 691, baseType: !3506, size: 64, offset: 1088)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3459, file: !3255, line: 692, baseType: !3470, size: 64, offset: 1152)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3459, file: !3255, line: 694, baseType: !833, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3459, file: !3255, line: 707, baseType: !833, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3459, file: !3255, line: 719, baseType: !833, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3459, file: !3255, line: 722, baseType: !42, size: 32, offset: 1248)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3459, file: !3255, line: 723, baseType: !36, size: 64, offset: 1280)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3459, file: !3255, line: 726, baseType: !36, size: 64, offset: 1344)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3459, file: !3255, line: 729, baseType: !3386, size: 64, offset: 1408)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3459, file: !3255, line: 732, baseType: !3520, size: 192, offset: 1472)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3521, line: 19, size: 192, elements: !3522)
!3521 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3522 = !{!3523, !3530, !3531}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3520, file: !3521, line: 20, baseType: !3524, size: 128)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3525, line: 296, size: 128, elements: !3526)
!3525 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3526 = !{!3527, !3528, !3529}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3524, file: !3525, line: 297, baseType: !79, size: 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3524, file: !3525, line: 299, baseType: !363, size: 32, offset: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3524, file: !3525, line: 300, baseType: !40, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3520, file: !3521, line: 21, baseType: !7, size: 32, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3520, file: !3521, line: 22, baseType: !7, size: 32, offset: 160)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3459, file: !3255, line: 738, baseType: !117, size: 128, offset: 1664)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3459, file: !3255, line: 744, baseType: !3534, size: 64, offset: 1792)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3255, line: 580, size: 1728, elements: !3536)
!3536 = !{!3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3546, !3547, !3548, !3552, !3556, !3557, !3558, !3559, !3560, !3564, !3568, !3569}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3535, file: !3255, line: 586, baseType: !2705, size: 512)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3535, file: !3255, line: 587, baseType: !59, size: 64, offset: 512)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3535, file: !3255, line: 593, baseType: !55, size: 64, offset: 576)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3535, file: !3255, line: 596, baseType: !7, size: 32, offset: 640)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3535, file: !3255, line: 604, baseType: !7, size: 32, offset: 672)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3535, file: !3255, line: 610, baseType: !3458, size: 64, offset: 704)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3535, file: !3255, line: 611, baseType: !117, size: 128, offset: 768)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3535, file: !3255, line: 612, baseType: !3545, size: 64, offset: 896)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3535, file: !3255, line: 614, baseType: !3314, size: 64, offset: 960)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3535, file: !3255, line: 615, baseType: !3334, size: 64, offset: 1024)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3535, file: !3255, line: 621, baseType: !3549, size: 64, offset: 1088)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!568, !3259, !3534}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3535, file: !3255, line: 625, baseType: !3553, size: 64, offset: 1152)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!763, !3259, !3534}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3535, file: !3255, line: 628, baseType: !1243, size: 64, offset: 1216)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3535, file: !3255, line: 631, baseType: !1231, size: 64, offset: 1280)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3535, file: !3255, line: 632, baseType: !1239, size: 64, offset: 1344)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3535, file: !3255, line: 633, baseType: !1235, size: 64, offset: 1408)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3535, file: !3255, line: 640, baseType: !3561, size: 64, offset: 1472)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!42, !3259, !3534, !568}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3535, file: !3255, line: 645, baseType: !3565, size: 64, offset: 1536)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!42, !3259, !3534, !763}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3535, file: !3255, line: 654, baseType: !3342, size: 64, offset: 1600)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3535, file: !3255, line: 657, baseType: !3349, size: 64, offset: 1664)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3459, file: !3255, line: 745, baseType: !3534, size: 64, offset: 1856)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3459, file: !3255, line: 754, baseType: !7, size: 32, offset: 1920)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3260, file: !3255, line: 160, baseType: !1805, size: 128, offset: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3260, file: !3255, line: 163, baseType: !117, size: 128, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3260, file: !3255, line: 164, baseType: !117, size: 128, offset: 384)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3260, file: !3255, line: 167, baseType: !117, size: 128, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3260, file: !3255, line: 173, baseType: !42, size: 32, offset: 640)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3260, file: !3255, line: 175, baseType: !7, size: 32, offset: 672)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3260, file: !3255, line: 183, baseType: !568, size: 64, offset: 704)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3260, file: !3255, line: 189, baseType: !69, size: 32, offset: 768)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3260, file: !3255, line: 192, baseType: !1013, size: 256, offset: 832)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3260, file: !3255, line: 193, baseType: !3582, size: 448, offset: 1088)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1014, line: 120, size: 448, elements: !3583)
!3583 = !{!3584, !3585, !3586}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3582, file: !1014, line: 121, baseType: !1013, size: 256)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3582, file: !1014, line: 122, baseType: !973, size: 128, align: 64, offset: 256)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3582, file: !1014, line: 125, baseType: !1075, size: 64, offset: 384)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3260, file: !3255, line: 199, baseType: !3259, size: 64, offset: 1536)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3254, file: !3255, line: 218, baseType: !1299, size: 32, offset: 896)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3254, file: !3255, line: 226, baseType: !3253, size: 64, offset: 960)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3254, file: !3255, line: 229, baseType: !3263, size: 64, offset: 1024)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3254, file: !3255, line: 232, baseType: !42, size: 32, offset: 1088)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3254, file: !3255, line: 241, baseType: !117, size: 128, offset: 1152)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3254, file: !3255, line: 242, baseType: !117, size: 128, offset: 1280)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3254, file: !3255, line: 243, baseType: !117, size: 128, offset: 1408)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3254, file: !3255, line: 246, baseType: !117, size: 128, offset: 1536)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3254, file: !3255, line: 255, baseType: !3405, size: 1792, offset: 1664)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3254, file: !3255, line: 258, baseType: !117, size: 128, offset: 3456)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3254, file: !3255, line: 259, baseType: !117, size: 128, offset: 3584)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3254, file: !3255, line: 265, baseType: !999, size: 128, offset: 3712)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3254, file: !3255, line: 271, baseType: !117, size: 128, offset: 3840)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3254, file: !3255, line: 277, baseType: !117, size: 128, offset: 3968)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3254, file: !3255, line: 278, baseType: !117, size: 128, offset: 4096)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3254, file: !3255, line: 279, baseType: !117, size: 128, offset: 4224)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3254, file: !3255, line: 288, baseType: !3263, size: 64, offset: 4352)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3254, file: !3255, line: 289, baseType: !3263, size: 64, offset: 4416)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3254, file: !3255, line: 290, baseType: !3253, size: 64, offset: 4480)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3254, file: !3255, line: 293, baseType: !833, size: 8, offset: 4544)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3254, file: !3255, line: 296, baseType: !973, size: 128, align: 64, offset: 4608)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2780, file: !2324, line: 1110, baseType: !3610, size: 64, offset: 15360)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3612, line: 93, size: 8768, elements: !3613)
!3612 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3613 = !{!3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3662, !3671, !3672, !3674, !3675, !3676, !3679, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3717, !3718, !3725, !3735, !3798, !3799, !3802, !3803, !3804, !3805, !3806, !3807}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3611, file: !3612, line: 94, baseType: !1299, size: 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3611, file: !3612, line: 95, baseType: !69, size: 32, offset: 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3611, file: !3612, line: 96, baseType: !42, size: 32, offset: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3611, file: !3612, line: 97, baseType: !42, size: 32, offset: 96)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3611, file: !3612, line: 98, baseType: !117, size: 128, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3611, file: !3612, line: 100, baseType: !74, size: 192, offset: 256)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3611, file: !3612, line: 103, baseType: !2779, size: 64, offset: 448)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3611, file: !3612, line: 106, baseType: !3622, size: 192, offset: 512)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3623, line: 32, size: 192, elements: !3624)
!3623 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3624 = !{!3625, !3626}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3622, file: !3623, line: 33, baseType: !117, size: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3622, file: !3623, line: 34, baseType: !3627, size: 64, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3628, line: 25, baseType: !3629)
!3628 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3628, line: 23, size: 64, elements: !3630)
!3630 = !{!3631}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3629, file: !3628, line: 24, baseType: !370, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3611, file: !3612, line: 109, baseType: !1123, size: 64, offset: 704)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3611, file: !3612, line: 112, baseType: !42, size: 32, offset: 768)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3611, file: !3612, line: 114, baseType: !42, size: 32, offset: 800)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3611, file: !3612, line: 115, baseType: !2779, size: 64, offset: 832)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3611, file: !3612, line: 118, baseType: !42, size: 32, offset: 896)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3611, file: !3612, line: 119, baseType: !7, size: 32, offset: 928)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3611, file: !3612, line: 121, baseType: !3639, size: 64, offset: 960)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3612, line: 80, size: 448, elements: !3641)
!3641 = !{!3642, !3643, !3649}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3640, file: !3612, line: 81, baseType: !69, size: 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3640, file: !3612, line: 82, baseType: !3644, size: 128, offset: 64)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3612, line: 75, size: 128, elements: !3645)
!3645 = !{!3646, !3647}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3644, file: !3612, line: 76, baseType: !2779, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3644, file: !3612, line: 77, baseType: !3648, size: 64, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3640, file: !3612, line: 83, baseType: !702, size: 256, offset: 192)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3611, file: !3612, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3611, file: !3612, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3611, file: !3612, line: 138, baseType: !7, size: 32, offset: 1056)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3611, file: !3612, line: 139, baseType: !117, size: 128, offset: 1088)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3611, file: !3612, line: 142, baseType: !2890, size: 512, offset: 1216)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3611, file: !3612, line: 143, baseType: !2898, size: 64, offset: 1728)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3611, file: !3612, line: 150, baseType: !3657, size: 256, offset: 1792)
!3657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3658, size: 256, elements: !872)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3612, line: 38, size: 128, elements: !3659)
!3659 = !{!3660, !3661}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3658, file: !3612, line: 39, baseType: !568, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3658, file: !3612, line: 40, baseType: !568, size: 64, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3611, file: !3612, line: 156, baseType: !3663, size: 192, offset: 2048)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3612, line: 66, size: 192, elements: !3664)
!3664 = !{!3665}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3663, file: !3612, line: 67, baseType: !3666, size: 192)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3612, line: 47, size: 192, elements: !3667)
!3667 = !{!3668, !3669, !3670}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3666, file: !3612, line: 48, baseType: !759, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3666, file: !3612, line: 49, baseType: !759, size: 64, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3666, file: !3612, line: 50, baseType: !759, size: 64, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3611, file: !3612, line: 160, baseType: !3172, size: 640, offset: 2240)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3611, file: !3612, line: 163, baseType: !3673, size: 256, offset: 2880)
!3673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1295, size: 256, elements: !983)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3611, file: !3612, line: 169, baseType: !1295, size: 64, offset: 3136)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3611, file: !3612, line: 172, baseType: !42, size: 32, offset: 3200)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3611, file: !3612, line: 174, baseType: !3677, size: 64, offset: 3264)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3612, line: 174, flags: DIFlagFwdDecl)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3611, file: !3612, line: 185, baseType: !3680, size: 64, offset: 3328)
!3680 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !537, line: 860, baseType: !3681)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !537, line: 853, size: 64, elements: !3682)
!3682 = !{!3683, !3684}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3681, file: !537, line: 858, baseType: !536, size: 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3681, file: !537, line: 859, baseType: !79, size: 32, offset: 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3611, file: !3612, line: 186, baseType: !568, size: 64, offset: 3392)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3611, file: !3612, line: 186, baseType: !568, size: 64, offset: 3456)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3611, file: !3612, line: 186, baseType: !568, size: 64, offset: 3520)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3611, file: !3612, line: 186, baseType: !568, size: 64, offset: 3584)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3611, file: !3612, line: 187, baseType: !568, size: 64, offset: 3648)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3611, file: !3612, line: 188, baseType: !568, size: 64, offset: 3712)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3611, file: !3612, line: 189, baseType: !3160, size: 192, offset: 3776)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3611, file: !3612, line: 190, baseType: !59, size: 64, offset: 3968)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3611, file: !3612, line: 190, baseType: !59, size: 64, offset: 4032)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3611, file: !3612, line: 190, baseType: !59, size: 64, offset: 4096)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3611, file: !3612, line: 190, baseType: !59, size: 64, offset: 4160)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3611, file: !3612, line: 191, baseType: !59, size: 64, offset: 4224)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3611, file: !3612, line: 191, baseType: !59, size: 64, offset: 4288)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3611, file: !3612, line: 191, baseType: !59, size: 64, offset: 4352)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3611, file: !3612, line: 191, baseType: !59, size: 64, offset: 4416)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3611, file: !3612, line: 192, baseType: !59, size: 64, offset: 4480)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3611, file: !3612, line: 192, baseType: !59, size: 64, offset: 4544)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3611, file: !3612, line: 192, baseType: !59, size: 64, offset: 4608)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3611, file: !3612, line: 192, baseType: !59, size: 64, offset: 4672)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3611, file: !3612, line: 193, baseType: !59, size: 64, offset: 4736)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3611, file: !3612, line: 193, baseType: !59, size: 64, offset: 4800)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3611, file: !3612, line: 194, baseType: !3707, size: 448, offset: 4864)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3708, line: 12, size: 448, elements: !3709)
!3708 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3709 = !{!3710, !3711, !3712, !3713, !3714, !3715, !3716}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3707, file: !3708, line: 15, baseType: !568, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3707, file: !3708, line: 17, baseType: !568, size: 64, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3707, file: !3708, line: 19, baseType: !568, size: 64, offset: 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3707, file: !3708, line: 21, baseType: !568, size: 64, offset: 192)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3707, file: !3708, line: 29, baseType: !568, size: 64, offset: 256)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3707, file: !3708, line: 35, baseType: !568, size: 64, offset: 320)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3707, file: !3708, line: 44, baseType: !568, size: 64, offset: 384)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3611, file: !3612, line: 202, baseType: !570, size: 64, offset: 5312)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3611, file: !3612, line: 213, baseType: !3719, size: 2048, offset: 5376)
!3719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3720, size: 2048, elements: !3195)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3721, line: 43, size: 128, elements: !3722)
!3721 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3722 = !{!3723, !3724}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3720, file: !3721, line: 44, baseType: !58, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3720, file: !3721, line: 45, baseType: !58, size: 64, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3611, file: !3612, line: 216, baseType: !3726, size: 448, offset: 7424)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3612, line: 30, size: 448, elements: !3727)
!3727 = !{!3728, !3729, !3730, !3731, !3732, !3733, !3734}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3726, file: !3612, line: 31, baseType: !42, size: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3726, file: !3612, line: 32, baseType: !456, size: 64, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3726, file: !3612, line: 33, baseType: !59, size: 64, offset: 128)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3726, file: !3612, line: 34, baseType: !568, size: 64, offset: 192)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3726, file: !3612, line: 34, baseType: !568, size: 64, offset: 256)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3726, file: !3612, line: 35, baseType: !59, size: 64, offset: 320)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3726, file: !3612, line: 35, baseType: !59, size: 64, offset: 384)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3611, file: !3612, line: 219, baseType: !3736, size: 64, offset: 7872)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3738, line: 41, size: 3456, elements: !3739)
!3738 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!3739 = !{!3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3754, !3755, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3737, file: !3738, line: 47, baseType: !114, size: 16)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3737, file: !3738, line: 48, baseType: !565, size: 32, offset: 32)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3737, file: !3738, line: 54, baseType: !105, size: 8, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !3737, file: !3738, line: 55, baseType: !105, size: 8, offset: 72)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !3737, file: !3738, line: 73, baseType: !569, size: 64, align: 64, offset: 128)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !3737, file: !3738, line: 74, baseType: !569, size: 64, offset: 192)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !3737, file: !3738, line: 81, baseType: !569, size: 64, offset: 256)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !3737, file: !3738, line: 82, baseType: !569, size: 64, offset: 320)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !3737, file: !3738, line: 85, baseType: !569, size: 64, offset: 384)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !3737, file: !3738, line: 86, baseType: !569, size: 64, offset: 448)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !3737, file: !3738, line: 94, baseType: !569, size: 64, offset: 512)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !3737, file: !3738, line: 102, baseType: !569, size: 64, offset: 576)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !3737, file: !3738, line: 107, baseType: !3753, size: 256, offset: 640)
!3753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !577)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !3737, file: !3738, line: 108, baseType: !105, size: 8, align: 64, offset: 896)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !3737, file: !3738, line: 110, baseType: !3756, size: 24, offset: 904)
!3756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 24, elements: !422)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !3737, file: !3738, line: 111, baseType: !565, size: 32, align: 64, offset: 960)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !3737, file: !3738, line: 113, baseType: !565, size: 32, offset: 992)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !3737, file: !3738, line: 114, baseType: !565, size: 32, offset: 1024)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !3737, file: !3738, line: 115, baseType: !565, size: 32, offset: 1056)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !3737, file: !3738, line: 117, baseType: !565, size: 32, offset: 1088)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !3737, file: !3738, line: 118, baseType: !569, size: 64, align: 64, offset: 1152)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3737, file: !3738, line: 120, baseType: !569, size: 64, offset: 1216)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3737, file: !3738, line: 121, baseType: !569, size: 64, offset: 1280)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3737, file: !3738, line: 122, baseType: !569, size: 64, offset: 1344)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3737, file: !3738, line: 123, baseType: !569, size: 64, offset: 1408)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !3737, file: !3738, line: 133, baseType: !569, size: 64, offset: 1472)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !3737, file: !3738, line: 137, baseType: !569, size: 64, offset: 1536)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !3737, file: !3738, line: 142, baseType: !569, size: 64, offset: 1600)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !3737, file: !3738, line: 143, baseType: !569, size: 64, offset: 1664)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !3737, file: !3738, line: 146, baseType: !569, size: 64, offset: 1728)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !3737, file: !3738, line: 147, baseType: !569, size: 64, offset: 1792)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !3737, file: !3738, line: 148, baseType: !569, size: 64, offset: 1856)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !3737, file: !3738, line: 149, baseType: !569, size: 64, offset: 1920)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3737, file: !3738, line: 154, baseType: !569, size: 64, offset: 1984)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3737, file: !3738, line: 155, baseType: !569, size: 64, offset: 2048)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3737, file: !3738, line: 156, baseType: !569, size: 64, offset: 2112)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3737, file: !3738, line: 158, baseType: !569, size: 64, offset: 2176)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3737, file: !3738, line: 159, baseType: !569, size: 64, offset: 2240)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !3737, file: !3738, line: 162, baseType: !569, size: 64, offset: 2304)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !3737, file: !3738, line: 163, baseType: !569, size: 64, offset: 2368)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !3737, file: !3738, line: 164, baseType: !569, size: 64, offset: 2432)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !3737, file: !3738, line: 167, baseType: !569, size: 64, offset: 2496)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !3737, file: !3738, line: 168, baseType: !569, size: 64, offset: 2560)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !3737, file: !3738, line: 171, baseType: !569, size: 64, offset: 2624)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !3737, file: !3738, line: 172, baseType: !569, size: 64, offset: 2688)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !3737, file: !3738, line: 175, baseType: !569, size: 64, offset: 2752)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !3737, file: !3738, line: 178, baseType: !569, size: 64, offset: 2816)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !3737, file: !3738, line: 179, baseType: !569, size: 64, offset: 2880)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !3737, file: !3738, line: 182, baseType: !565, size: 32, offset: 2944)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !3737, file: !3738, line: 186, baseType: !569, size: 64, align: 64, offset: 3008)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !3737, file: !3738, line: 194, baseType: !569, size: 64, offset: 3072)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !3737, file: !3738, line: 195, baseType: !569, size: 64, offset: 3136)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !3737, file: !3738, line: 199, baseType: !569, size: 64, offset: 3200)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !3737, file: !3738, line: 200, baseType: !569, size: 64, offset: 3264)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !3737, file: !3738, line: 203, baseType: !569, size: 64, offset: 3328)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !3737, file: !3738, line: 204, baseType: !569, size: 64, offset: 3392)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3611, file: !3612, line: 222, baseType: !7, size: 32, offset: 7936)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3611, file: !3612, line: 223, baseType: !3800, size: 64, offset: 8000)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3612, line: 223, flags: DIFlagFwdDecl)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3611, file: !3612, line: 230, baseType: !833, size: 8, offset: 8064)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3611, file: !3612, line: 231, baseType: !891, size: 16, offset: 8080)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3611, file: !3612, line: 232, baseType: !891, size: 16, offset: 8096)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3611, file: !3612, line: 234, baseType: !1865, size: 64, offset: 8128)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3611, file: !3612, line: 237, baseType: !753, size: 256, offset: 8192)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3611, file: !3612, line: 243, baseType: !1367, size: 320, offset: 8448)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2780, file: !2324, line: 1111, baseType: !3809, size: 64, offset: 15424)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3612, line: 20, size: 16640, elements: !3811)
!3811 = !{!3812, !3813, !3814, !3815}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3810, file: !3612, line: 21, baseType: !79, size: 32)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3810, file: !3612, line: 22, baseType: !1299, size: 32, offset: 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3810, file: !3612, line: 23, baseType: !74, size: 192, offset: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3810, file: !3612, line: 24, baseType: !3816, size: 16384, offset: 256)
!3816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3817, size: 16384, elements: !426)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3623, line: 51, size: 256, elements: !3818)
!3818 = !{!3819}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3817, file: !3623, line: 52, baseType: !3820, size: 256)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3623, line: 37, size: 256, elements: !3821)
!3821 = !{!3822, !3829, !3830, !3834}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3820, file: !3623, line: 39, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3824, line: 83, baseType: !3825)
!3824 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3824, line: 82, baseType: !3827)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{null, !42}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3820, file: !3623, line: 40, baseType: !59, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3820, file: !3623, line: 46, baseType: !3831, size: 64, offset: 128)
!3831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3824, line: 86, baseType: !3832)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3824, line: 85, baseType: !1118)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3820, file: !3623, line: 48, baseType: !3627, size: 64, offset: 192)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2780, file: !2324, line: 1112, baseType: !3627, size: 64, offset: 15488)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2780, file: !2324, line: 1113, baseType: !3627, size: 64, offset: 15552)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2780, file: !2324, line: 1115, baseType: !3627, size: 64, offset: 15616)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2780, file: !2324, line: 1116, baseType: !3622, size: 192, offset: 15680)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2780, file: !2324, line: 1117, baseType: !59, size: 64, offset: 15872)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2780, file: !2324, line: 1118, baseType: !55, size: 64, offset: 15936)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2780, file: !2324, line: 1119, baseType: !7, size: 32, offset: 16000)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2780, file: !2324, line: 1121, baseType: !972, size: 64, offset: 16064)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2780, file: !2324, line: 1125, baseType: !3844, size: 64, offset: 16128)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2324, line: 43, flags: DIFlagFwdDecl)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2780, file: !2324, line: 1127, baseType: !501, size: 32, offset: 16192)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2780, file: !2324, line: 1128, baseType: !7, size: 32, offset: 16224)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2780, file: !2324, line: 1130, baseType: !3849, size: 128, offset: 16256)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3850, line: 37, size: 128, elements: !3851)
!3850 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3851 = !{!3852, !3853, !3854}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3849, file: !3850, line: 38, baseType: !42, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3849, file: !3850, line: 39, baseType: !69, size: 32, offset: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3849, file: !3850, line: 40, baseType: !3855, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3850, line: 24, flags: DIFlagFwdDecl)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2780, file: !2324, line: 1131, baseType: !3858, size: 256, offset: 16384)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3859, line: 12, size: 256, elements: !3860)
!3859 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3860 = !{!3861, !3862, !3863, !3864}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3858, file: !3859, line: 13, baseType: !421, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3858, file: !3859, line: 14, baseType: !59, size: 64, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3858, file: !3859, line: 15, baseType: !59, size: 64, offset: 128)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3858, file: !3859, line: 16, baseType: !833, size: 8, offset: 192)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2780, file: !2324, line: 1134, baseType: !568, size: 64, offset: 16640)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2780, file: !2324, line: 1135, baseType: !568, size: 64, offset: 16704)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2780, file: !2324, line: 1138, baseType: !79, size: 32, offset: 16768)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2780, file: !2324, line: 1141, baseType: !711, size: 32, offset: 16800)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2780, file: !2324, line: 1143, baseType: !3870, size: 64, offset: 16832)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2324, line: 735, size: 64, elements: !3871)
!3871 = !{!3872}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3870, file: !2324, line: 736, baseType: !3873, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2780, file: !2324, line: 1147, baseType: !2949, size: 128, offset: 16896)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2780, file: !2324, line: 1149, baseType: !2779, size: 64, offset: 17024)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2780, file: !2324, line: 1151, baseType: !3877, size: 64, offset: 17088)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2324, line: 1151, flags: DIFlagFwdDecl)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2780, file: !2324, line: 1188, baseType: !40, size: 64, offset: 17152)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2780, file: !2324, line: 1191, baseType: !3881, size: 64, offset: 17216)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2324, line: 44, flags: DIFlagFwdDecl)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2780, file: !2324, line: 1194, baseType: !3884, size: 64, offset: 17280)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2324, line: 45, flags: DIFlagFwdDecl)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2780, file: !2324, line: 1197, baseType: !3887, size: 64, offset: 17344)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !3889, line: 155, size: 64, elements: !3890)
!3889 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!3890 = !{!3891}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !3888, file: !3889, line: 157, baseType: !59, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2780, file: !2324, line: 1199, baseType: !3893, size: 64, offset: 17408)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2613, line: 99, size: 128, elements: !3895)
!3895 = !{!3896, !3897, !3898}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3894, file: !2613, line: 100, baseType: !757, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3894, file: !2613, line: 101, baseType: !69, size: 32, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3894, file: !2613, line: 103, baseType: !46, size: 16, offset: 96)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2780, file: !2324, line: 1202, baseType: !3900, size: 64, offset: 17472)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2324, line: 48, flags: DIFlagFwdDecl)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2780, file: !2324, line: 1205, baseType: !59, size: 64, offset: 17536)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2780, file: !2324, line: 1206, baseType: !3904, size: 64, offset: 17600)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3623, line: 14, baseType: !3906)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3623, line: 12, size: 384, elements: !3907)
!3907 = !{!3908}
!3908 = !DIDerivedType(tag: DW_TAG_member, scope: !3906, file: !3623, line: 13, baseType: !3909, size: 384)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3906, file: !3623, line: 13, size: 384, elements: !3910)
!3910 = !{!3911, !3912, !3913, !3914}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3909, file: !3623, line: 13, baseType: !42, size: 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3909, file: !3623, line: 13, baseType: !42, size: 32, offset: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3909, file: !3623, line: 13, baseType: !42, size: 32, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3909, file: !3623, line: 13, baseType: !3915, size: 256, offset: 128)
!3915 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3916, line: 37, size: 256, elements: !3917)
!3916 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3917 = !{!3918, !3923, !3936, !3942, !3951, !3978, !3983}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3915, file: !3916, line: 42, baseType: !3919, size: 64)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3915, file: !3916, line: 39, size: 64, elements: !3920)
!3920 = !{!3921, !3922}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3919, file: !3916, line: 40, baseType: !3137, size: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3919, file: !3916, line: 41, baseType: !507, size: 32, offset: 32)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3915, file: !3916, line: 50, baseType: !3924, size: 192)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3915, file: !3916, line: 45, size: 192, elements: !3925)
!3925 = !{!3926, !3928, !3929, !3935}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3924, file: !3916, line: 46, baseType: !3927, size: 32)
!3927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !57, line: 95, baseType: !42)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3924, file: !3916, line: 47, baseType: !42, size: 32, offset: 32)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3924, file: !3916, line: 48, baseType: !3930, size: 64, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3916, line: 11, baseType: !3931)
!3931 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3916, line: 8, size: 64, elements: !3932)
!3932 = !{!3933, !3934}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3931, file: !3916, line: 9, baseType: !42, size: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3931, file: !3916, line: 10, baseType: !40, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3924, file: !3916, line: 49, baseType: !42, size: 32, offset: 128)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3915, file: !3916, line: 57, baseType: !3937, size: 128)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3915, file: !3916, line: 53, size: 128, elements: !3938)
!3938 = !{!3939, !3940, !3941}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3937, file: !3916, line: 54, baseType: !3137, size: 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3937, file: !3916, line: 55, baseType: !507, size: 32, offset: 32)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3937, file: !3916, line: 56, baseType: !3930, size: 64, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3915, file: !3916, line: 66, baseType: !3943, size: 256)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3915, file: !3916, line: 60, size: 256, elements: !3944)
!3944 = !{!3945, !3946, !3947, !3948, !3950}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3943, file: !3916, line: 61, baseType: !3137, size: 32)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3943, file: !3916, line: 62, baseType: !507, size: 32, offset: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3943, file: !3916, line: 63, baseType: !42, size: 32, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3943, file: !3916, line: 64, baseType: !3949, size: 64, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !57, line: 94, baseType: !455)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3943, file: !3916, line: 65, baseType: !3949, size: 64, offset: 192)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3915, file: !3916, line: 105, baseType: !3952, size: 256)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3915, file: !3916, line: 69, size: 256, elements: !3953)
!3953 = !{!3954, !3955}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3952, file: !3916, line: 70, baseType: !40, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, scope: !3952, file: !3916, line: 79, baseType: !3956, size: 192, offset: 64)
!3956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3952, file: !3916, line: 79, size: 192, elements: !3957)
!3957 = !{!3958, !3959, !3960, !3967, !3972}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3956, file: !3916, line: 81, baseType: !42, size: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3956, file: !3916, line: 86, baseType: !891, size: 16)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3956, file: !3916, line: 92, baseType: !3961, size: 192)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3956, file: !3916, line: 88, size: 192, elements: !3962)
!3962 = !{!3963, !3965, !3966}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3961, file: !3916, line: 89, baseType: !3964, size: 64)
!3964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !2933)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3961, file: !3916, line: 90, baseType: !40, size: 64, offset: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3961, file: !3916, line: 91, baseType: !40, size: 64, offset: 128)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3956, file: !3916, line: 97, baseType: !3968, size: 96)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3956, file: !3916, line: 94, size: 96, elements: !3969)
!3969 = !{!3970, !3971}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3968, file: !3916, line: 95, baseType: !3964, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3968, file: !3916, line: 96, baseType: !565, size: 32, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3956, file: !3916, line: 103, baseType: !3973, size: 128)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3956, file: !3916, line: 99, size: 128, elements: !3974)
!3974 = !{!3975, !3976, !3977}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3973, file: !3916, line: 100, baseType: !59, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3973, file: !3916, line: 101, baseType: !565, size: 32, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3973, file: !3916, line: 102, baseType: !565, size: 32, offset: 96)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3915, file: !3916, line: 111, baseType: !3979, size: 128)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3915, file: !3916, line: 108, size: 128, elements: !3980)
!3980 = !{!3981, !3982}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3979, file: !3916, line: 109, baseType: !456, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3979, file: !3916, line: 110, baseType: !42, size: 32, offset: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3915, file: !3916, line: 118, baseType: !3984, size: 128)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3915, file: !3916, line: 114, size: 128, elements: !3985)
!3985 = !{!3986, !3987, !3988}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3984, file: !3916, line: 115, baseType: !40, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3984, file: !3916, line: 116, baseType: !42, size: 32, offset: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3984, file: !3916, line: 117, baseType: !7, size: 32, offset: 96)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2780, file: !2324, line: 1208, baseType: !3707, size: 448, offset: 17664)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2780, file: !2324, line: 1215, baseType: !568, size: 64, offset: 18112)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2780, file: !2324, line: 1217, baseType: !568, size: 64, offset: 18176)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2780, file: !2324, line: 1219, baseType: !568, size: 64, offset: 18240)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2780, file: !2324, line: 1223, baseType: !2105, size: 64, offset: 18304)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2780, file: !2324, line: 1225, baseType: !536, size: 32, offset: 18368)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2780, file: !2324, line: 1226, baseType: !42, size: 32, offset: 18400)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2780, file: !2324, line: 1227, baseType: !42, size: 32, offset: 18432)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2780, file: !2324, line: 1231, baseType: !3253, size: 64, offset: 18496)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2780, file: !2324, line: 1233, baseType: !117, size: 128, offset: 18560)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2780, file: !2324, line: 1240, baseType: !4000, size: 64, offset: 18688)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2324, line: 62, flags: DIFlagFwdDecl)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2780, file: !2324, line: 1242, baseType: !4003, size: 64, offset: 18752)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2324, line: 1242, flags: DIFlagFwdDecl)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2780, file: !2324, line: 1244, baseType: !117, size: 128, offset: 18816)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2780, file: !2324, line: 1245, baseType: !4007, size: 64, offset: 18944)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2324, line: 51, flags: DIFlagFwdDecl)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2780, file: !2324, line: 1246, baseType: !753, size: 256, offset: 19008)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2780, file: !2324, line: 1247, baseType: !7, size: 32, offset: 19264)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2780, file: !2324, line: 1250, baseType: !4012, size: 64, offset: 19328)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2324, line: 57, flags: DIFlagFwdDecl)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2780, file: !2324, line: 1251, baseType: !753, size: 256, offset: 19392)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2780, file: !2324, line: 1252, baseType: !117, size: 128, offset: 19648)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2780, file: !2324, line: 1259, baseType: !2097, size: 64, offset: 19776)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2780, file: !2324, line: 1260, baseType: !891, size: 16, offset: 19840)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2780, file: !2324, line: 1261, baseType: !891, size: 16, offset: 19856)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2780, file: !2324, line: 1314, baseType: !4020, size: 64, offset: 19904)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4022, line: 62, size: 256, align: 256, elements: !4023)
!4022 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4023 = !{!4024, !4025, !4026, !4027, !4028, !4029, !4030}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4021, file: !4022, line: 75, baseType: !565, size: 32)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4021, file: !4022, line: 90, baseType: !565, size: 32, offset: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4021, file: !4022, line: 112, baseType: !569, size: 64, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4021, file: !4022, line: 132, baseType: !565, size: 32, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4021, file: !4022, line: 140, baseType: !565, size: 32, offset: 160)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4021, file: !4022, line: 149, baseType: !565, size: 32, offset: 192)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4021, file: !4022, line: 154, baseType: !4031, offset: 224)
!4031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, elements: !1319)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2780, file: !2324, line: 1315, baseType: !564, size: 32, offset: 19968)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2780, file: !2324, line: 1316, baseType: !564, size: 32, offset: 20000)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2780, file: !2324, line: 1321, baseType: !59, size: 64, offset: 20032)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2780, file: !2324, line: 1325, baseType: !42, size: 32, offset: 20096)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2780, file: !2324, line: 1326, baseType: !42, size: 32, offset: 20128)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2780, file: !2324, line: 1327, baseType: !42, size: 32, offset: 20160)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2780, file: !2324, line: 1328, baseType: !42, size: 32, offset: 20192)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2780, file: !2324, line: 1329, baseType: !973, size: 128, align: 64, offset: 20224)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2780, file: !2324, line: 1332, baseType: !4041, size: 128, offset: 20352)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4042, line: 51, size: 128, elements: !4043)
!4042 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4043 = !{!4044, !4049, !4050}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4041, file: !4042, line: 60, baseType: !4045, size: 64)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4046, line: 7, size: 64, elements: !4047)
!4046 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4047 = !{!4048}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4045, file: !4046, line: 12, baseType: !366, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4041, file: !4042, line: 63, baseType: !833, size: 8, offset: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4041, file: !4042, line: 70, baseType: !833, size: 8, offset: 72)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2780, file: !2324, line: 1335, baseType: !2322, size: 64, offset: 20480)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2780, file: !2324, line: 1337, baseType: !4053, size: 128, offset: 20544)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4042, line: 39, size: 128, elements: !4054)
!4054 = !{!4055, !4056, !4057}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4053, file: !4042, line: 40, baseType: !1838, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4053, file: !4042, line: 42, baseType: !565, size: 32, offset: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4053, file: !4042, line: 43, baseType: !565, size: 32, offset: 96)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2780, file: !2324, line: 1340, baseType: !4059, size: 64, offset: 20672)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2324, line: 69, flags: DIFlagFwdDecl)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2780, file: !2324, line: 1351, baseType: !42, size: 32, offset: 20736)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2780, file: !2324, line: 1352, baseType: !42, size: 32, offset: 20768)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2780, file: !2324, line: 1354, baseType: !59, size: 64, offset: 20800)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2780, file: !2324, line: 1364, baseType: !568, size: 64, offset: 20864)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2780, file: !2324, line: 1365, baseType: !568, size: 64, offset: 20928)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2780, file: !2324, line: 1412, baseType: !59, size: 64, offset: 20992)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2780, file: !2324, line: 1453, baseType: !2608, size: 64, offset: 21056)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2780, file: !2324, line: 1457, baseType: !4069, size: 64, offset: 21120)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !181, line: 61, size: 576, elements: !4071)
!4071 = !{!4072, !4073, !4092, !4095, !4096, !4129, !4139}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4070, file: !181, line: 62, baseType: !180, size: 32)
!4073 = !DIDerivedType(tag: DW_TAG_member, scope: !4070, file: !181, line: 64, baseType: !4074, size: 192, offset: 64)
!4074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4070, file: !181, line: 64, size: 192, elements: !4075)
!4075 = !{!4076, !4087}
!4076 = !DIDerivedType(tag: DW_TAG_member, scope: !4074, file: !181, line: 65, baseType: !4077, size: 192)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4074, file: !181, line: 65, size: 192, elements: !4078)
!4078 = !{!4079, !4086}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4077, file: !181, line: 66, baseType: !4080, size: 128)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4081, line: 50, size: 128, elements: !4082)
!4081 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4082 = !{!4083, !4084, !4085}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4080, file: !4081, line: 52, baseType: !59, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4080, file: !4081, line: 54, baseType: !7, size: 32, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4080, file: !4081, line: 55, baseType: !7, size: 32, offset: 96)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4077, file: !181, line: 67, baseType: !59, size: 64, offset: 128)
!4087 = !DIDerivedType(tag: DW_TAG_member, scope: !4074, file: !181, line: 70, baseType: !4088, size: 192)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4074, file: !181, line: 70, size: 192, elements: !4089)
!4089 = !{!4090, !4091}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4088, file: !181, line: 71, baseType: !973, size: 128, align: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4088, file: !181, line: 72, baseType: !59, size: 64, offset: 128)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4070, file: !181, line: 76, baseType: !4093, size: 64, offset: 256)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !181, line: 76, flags: DIFlagFwdDecl)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4070, file: !181, line: 77, baseType: !59, size: 64, offset: 320)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4070, file: !181, line: 79, baseType: !4097, size: 64, offset: 384)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4081, line: 25, size: 256, elements: !4099)
!4099 = !{!4100, !4106, !4110}
!4100 = !DIDerivedType(tag: DW_TAG_member, scope: !4098, file: !4081, line: 26, baseType: !4101, size: 128)
!4101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4098, file: !4081, line: 26, size: 128, elements: !4102)
!4102 = !{!4103, !4105}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4101, file: !4081, line: 27, baseType: !4104, size: 128)
!4104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !3195)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4101, file: !4081, line: 28, baseType: !4104, size: 128)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4098, file: !4081, line: 31, baseType: !4107, size: 64, offset: 128)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4109)
!4109 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4081, line: 23, flags: DIFlagFwdDecl)
!4110 = !DIDerivedType(tag: DW_TAG_member, scope: !4098, file: !4081, line: 33, baseType: !4111, size: 64, offset: 192)
!4111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4098, file: !4081, line: 33, size: 64, elements: !4112)
!4112 = !{!4113, !4119, !4124}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4111, file: !4081, line: 38, baseType: !4114, size: 64)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4111, file: !4081, line: 34, size: 64, elements: !4115)
!4115 = !{!4116, !4117, !4118}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4114, file: !4081, line: 35, baseType: !749, size: 32)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4114, file: !4081, line: 36, baseType: !103, size: 8, offset: 32)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4114, file: !4081, line: 37, baseType: !103, size: 8, offset: 40)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4111, file: !4081, line: 42, baseType: !4120, size: 16)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4111, file: !4081, line: 39, size: 16, elements: !4121)
!4121 = !{!4122, !4123}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4120, file: !4081, line: 40, baseType: !103, size: 8)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4120, file: !4081, line: 41, baseType: !103, size: 8, offset: 8)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4111, file: !4081, line: 46, baseType: !4125, size: 16)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4111, file: !4081, line: 43, size: 16, elements: !4126)
!4126 = !{!4127, !4128}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4125, file: !4081, line: 44, baseType: !103, size: 8)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4125, file: !4081, line: 45, baseType: !103, size: 8, offset: 8)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4070, file: !181, line: 81, baseType: !4130, size: 64, offset: 448)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !181, line: 85, size: 384, elements: !4132)
!4132 = !{!4133, !4134, !4135, !4136, !4137, !4138}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4131, file: !181, line: 86, baseType: !4093, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4131, file: !181, line: 87, baseType: !59, size: 64, offset: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4131, file: !181, line: 88, baseType: !59, size: 64, offset: 128)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4131, file: !181, line: 89, baseType: !59, size: 64, offset: 192)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4131, file: !181, line: 90, baseType: !833, size: 8, offset: 256)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4131, file: !181, line: 92, baseType: !4130, size: 64, offset: 320)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4070, file: !181, line: 82, baseType: !7, size: 32, offset: 512)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2780, file: !2324, line: 1463, baseType: !4141, offset: 21184)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2324, line: 739, elements: !1042)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2780, file: !2324, line: 1470, baseType: !973, size: 128, align: 64, offset: 21184)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2780, file: !2324, line: 1471, baseType: !1299, size: 32, offset: 21312)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2780, file: !2324, line: 1472, baseType: !42, size: 32, offset: 21344)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2780, file: !2324, line: 1474, baseType: !2779, size: 64, offset: 21376)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2780, file: !2324, line: 1475, baseType: !995, size: 320, offset: 21440)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2780, file: !2324, line: 1478, baseType: !4148, size: 64, offset: 21760)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2324, line: 1478, flags: DIFlagFwdDecl)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2780, file: !2324, line: 1482, baseType: !1299, size: 32, offset: 21824)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2780, file: !2324, line: 1489, baseType: !40, size: 64, offset: 21888)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2780, file: !2324, line: 1504, baseType: !40, size: 64, offset: 21952)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2780, file: !2324, line: 1505, baseType: !569, size: 64, offset: 22016)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2780, file: !2324, line: 1506, baseType: !568, size: 64, offset: 22080)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2780, file: !2324, line: 1507, baseType: !569, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2780, file: !2324, line: 1508, baseType: !569, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2780, file: !2324, line: 1509, baseType: !569, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2780, file: !2324, line: 1510, baseType: !973, size: 128, align: 64, offset: 22208)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2780, file: !2324, line: 1511, baseType: !42, size: 32, offset: 22336)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2780, file: !2324, line: 1515, baseType: !4161, size: 64, offset: 22400)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1257, line: 56, size: 64, elements: !4162)
!4162 = !{!4163}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4161, file: !1257, line: 57, baseType: !1260, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2780, file: !2324, line: 1518, baseType: !4161, size: 64, offset: 22464)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2780, file: !2324, line: 1528, baseType: !973, size: 128, align: 64, offset: 22528)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2780, file: !2324, line: 1552, baseType: !4167, size: 35328, offset: 23040)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4168, line: 430, size: 35328, elements: !4169)
!4168 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4169 = !{!4170, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4199, !4200, !4201, !4202, !4203, !4204, !4207, !4208, !4209, !4210}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4167, file: !4168, line: 432, baseType: !4171, size: 192)
!4171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4172, size: 192, elements: !422)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4173, line: 16, size: 64, elements: !4174)
!4173 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4174 = !{!4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4172, file: !4173, line: 17, baseType: !113, size: 16)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4172, file: !4173, line: 18, baseType: !113, size: 16, offset: 16)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4172, file: !4173, line: 19, baseType: !113, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4172, file: !4173, line: 19, baseType: !113, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4172, file: !4173, line: 19, baseType: !113, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4172, file: !4173, line: 19, baseType: !113, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4172, file: !4173, line: 19, baseType: !113, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4172, file: !4173, line: 20, baseType: !113, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4172, file: !4173, line: 20, baseType: !113, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4172, file: !4173, line: 20, baseType: !113, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4172, file: !4173, line: 20, baseType: !113, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4172, file: !4173, line: 20, baseType: !113, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4172, file: !4173, line: 20, baseType: !113, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4167, file: !4168, line: 436, baseType: !59, size: 64, offset: 192)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4167, file: !4168, line: 440, baseType: !46, size: 16, offset: 256)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4167, file: !4168, line: 441, baseType: !46, size: 16, offset: 272)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4167, file: !4168, line: 442, baseType: !46, size: 16, offset: 288)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4167, file: !4168, line: 443, baseType: !46, size: 16, offset: 304)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4167, file: !4168, line: 447, baseType: !59, size: 64, offset: 320)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4167, file: !4168, line: 448, baseType: !59, size: 64, offset: 384)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4167, file: !4168, line: 459, baseType: !4196, size: 256, offset: 448)
!4196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4197, size: 256, elements: !983)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4168, line: 428, flags: DIFlagFwdDecl)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4167, file: !4168, line: 461, baseType: !59, size: 64, offset: 704)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4167, file: !4168, line: 463, baseType: !59, size: 64, offset: 768)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4167, file: !4168, line: 465, baseType: !59, size: 64, offset: 832)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4167, file: !4168, line: 466, baseType: !59, size: 64, offset: 896)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4167, file: !4168, line: 467, baseType: !59, size: 64, offset: 960)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4167, file: !4168, line: 473, baseType: !4205, size: 64, offset: 1024)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4168, line: 10, flags: DIFlagFwdDecl)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4167, file: !4168, line: 480, baseType: !59, size: 64, offset: 1088)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4167, file: !4168, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4167, file: !4168, line: 491, baseType: !564, size: 32, offset: 1184)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4167, file: !4168, line: 501, baseType: !4211, size: 33792, offset: 1536)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4212, line: 448, size: 33792, elements: !4213)
!4212 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4213 = !{!4214, !4215, !4216, !4376, !4377, !4383, !4384}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4211, file: !4212, line: 461, baseType: !7, size: 32)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4211, file: !4212, line: 468, baseType: !59, size: 64, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4211, file: !4212, line: 476, baseType: !4217, size: 64, offset: 128)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4212, line: 356, size: 33280, align: 512, elements: !4219)
!4219 = !{!4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4218, file: !4212, line: 358, baseType: !7, size: 32)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4218, file: !4212, line: 361, baseType: !7, size: 32, offset: 32)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4218, file: !4212, line: 364, baseType: !568, size: 64, offset: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4218, file: !4212, line: 367, baseType: !568, size: 64, offset: 128)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4218, file: !4212, line: 370, baseType: !568, size: 64, offset: 192)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4218, file: !4212, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4218, file: !4212, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4218, file: !4212, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4218, file: !4212, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4218, file: !4212, line: 397, baseType: !4230, size: 32768, offset: 512)
!4230 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4212, line: 348, size: 32768, elements: !4231)
!4231 = !{!4232, !4247, !4284, !4361, !4374}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4230, file: !4212, line: 349, baseType: !4233, size: 896)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4212, line: 12, size: 896, elements: !4234)
!4234 = !{!4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4246}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4233, file: !4212, line: 13, baseType: !564, size: 32)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4233, file: !4212, line: 14, baseType: !564, size: 32, offset: 32)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4233, file: !4212, line: 15, baseType: !564, size: 32, offset: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4233, file: !4212, line: 16, baseType: !564, size: 32, offset: 96)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4233, file: !4212, line: 17, baseType: !564, size: 32, offset: 128)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4233, file: !4212, line: 18, baseType: !564, size: 32, offset: 160)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4233, file: !4212, line: 19, baseType: !564, size: 32, offset: 192)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4233, file: !4212, line: 22, baseType: !4243, size: 640, offset: 224)
!4243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 640, elements: !4244)
!4244 = !{!4245}
!4245 = !DISubrange(count: 20)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4233, file: !4212, line: 25, baseType: !564, size: 32, offset: 864)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4230, file: !4212, line: 350, baseType: !4248, size: 4096, align: 128)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4212, line: 34, size: 4096, align: 128, elements: !4249)
!4249 = !{!4250, !4251, !4252, !4253, !4254, !4269, !4270, !4271, !4273, !4275, !4279}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4248, file: !4212, line: 35, baseType: !113, size: 16)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4248, file: !4212, line: 36, baseType: !113, size: 16, offset: 16)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4248, file: !4212, line: 37, baseType: !113, size: 16, offset: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4248, file: !4212, line: 38, baseType: !113, size: 16, offset: 48)
!4254 = !DIDerivedType(tag: DW_TAG_member, scope: !4248, file: !4212, line: 39, baseType: !4255, size: 128, offset: 64)
!4255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4248, file: !4212, line: 39, size: 128, elements: !4256)
!4256 = !{!4257, !4262}
!4257 = !DIDerivedType(tag: DW_TAG_member, scope: !4255, file: !4212, line: 40, baseType: !4258, size: 128)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4255, file: !4212, line: 40, size: 128, elements: !4259)
!4259 = !{!4260, !4261}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4258, file: !4212, line: 41, baseType: !568, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4258, file: !4212, line: 42, baseType: !568, size: 64, offset: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, scope: !4255, file: !4212, line: 44, baseType: !4263, size: 128)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4255, file: !4212, line: 44, size: 128, elements: !4264)
!4264 = !{!4265, !4266, !4267, !4268}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4263, file: !4212, line: 45, baseType: !564, size: 32)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4263, file: !4212, line: 46, baseType: !564, size: 32, offset: 32)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4263, file: !4212, line: 47, baseType: !564, size: 32, offset: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4263, file: !4212, line: 48, baseType: !564, size: 32, offset: 96)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4248, file: !4212, line: 51, baseType: !564, size: 32, offset: 192)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4248, file: !4212, line: 52, baseType: !564, size: 32, offset: 224)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4248, file: !4212, line: 55, baseType: !4272, size: 1024, offset: 256)
!4272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 1024, elements: !577)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4248, file: !4212, line: 58, baseType: !4274, size: 2048, offset: 1280)
!4274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 2048, elements: !426)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4248, file: !4212, line: 60, baseType: !4276, size: 384, offset: 3328)
!4276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 384, elements: !4277)
!4277 = !{!4278}
!4278 = !DISubrange(count: 12)
!4279 = !DIDerivedType(tag: DW_TAG_member, scope: !4248, file: !4212, line: 62, baseType: !4280, size: 384, offset: 3712)
!4280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4248, file: !4212, line: 62, size: 384, elements: !4281)
!4281 = !{!4282, !4283}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4280, file: !4212, line: 63, baseType: !4276, size: 384)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4280, file: !4212, line: 64, baseType: !4276, size: 384)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4230, file: !4212, line: 351, baseType: !4285, size: 1088)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4212, line: 79, size: 1088, elements: !4286)
!4286 = !{!4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4360}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4285, file: !4212, line: 80, baseType: !564, size: 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4285, file: !4212, line: 81, baseType: !564, size: 32, offset: 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4285, file: !4212, line: 82, baseType: !564, size: 32, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4285, file: !4212, line: 83, baseType: !564, size: 32, offset: 96)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4285, file: !4212, line: 84, baseType: !564, size: 32, offset: 128)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4285, file: !4212, line: 85, baseType: !564, size: 32, offset: 160)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4285, file: !4212, line: 86, baseType: !564, size: 32, offset: 192)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4285, file: !4212, line: 88, baseType: !4243, size: 640, offset: 224)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4285, file: !4212, line: 89, baseType: !103, size: 8, offset: 864)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4285, file: !4212, line: 90, baseType: !103, size: 8, offset: 872)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4285, file: !4212, line: 91, baseType: !103, size: 8, offset: 880)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4285, file: !4212, line: 92, baseType: !103, size: 8, offset: 888)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4285, file: !4212, line: 93, baseType: !103, size: 8, offset: 896)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4285, file: !4212, line: 94, baseType: !103, size: 8, offset: 904)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4285, file: !4212, line: 95, baseType: !4302, size: 64, offset: 960)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4304, line: 11, size: 128, elements: !4305)
!4304 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4305 = !{!4306, !4307}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4303, file: !4304, line: 12, baseType: !456, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4303, file: !4304, line: 13, baseType: !4308, size: 64, offset: 64)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4310, line: 103, size: 1344, elements: !4311)
!4310 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4311 = !{!4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4340, !4341, !4342}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4309, file: !4310, line: 109, baseType: !59, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4309, file: !4310, line: 110, baseType: !59, size: 64, offset: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4309, file: !4310, line: 111, baseType: !59, size: 64, offset: 128)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4309, file: !4310, line: 112, baseType: !59, size: 64, offset: 192)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4309, file: !4310, line: 113, baseType: !59, size: 64, offset: 256)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4309, file: !4310, line: 114, baseType: !59, size: 64, offset: 320)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4309, file: !4310, line: 117, baseType: !59, size: 64, offset: 384)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4309, file: !4310, line: 118, baseType: !59, size: 64, offset: 448)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4309, file: !4310, line: 119, baseType: !59, size: 64, offset: 512)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4309, file: !4310, line: 120, baseType: !59, size: 64, offset: 576)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4309, file: !4310, line: 121, baseType: !59, size: 64, offset: 640)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4309, file: !4310, line: 122, baseType: !59, size: 64, offset: 704)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4309, file: !4310, line: 123, baseType: !59, size: 64, offset: 768)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4309, file: !4310, line: 124, baseType: !59, size: 64, offset: 832)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4309, file: !4310, line: 125, baseType: !59, size: 64, offset: 896)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4309, file: !4310, line: 139, baseType: !59, size: 64, offset: 960)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4309, file: !4310, line: 142, baseType: !59, size: 64, offset: 1024)
!4329 = !DIDerivedType(tag: DW_TAG_member, scope: !4309, file: !4310, line: 144, baseType: !4330, size: 64, offset: 1088)
!4330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4309, file: !4310, line: 144, size: 64, elements: !4331)
!4331 = !{!4332, !4333, !4334}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4330, file: !4310, line: 146, baseType: !113, size: 16)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4330, file: !4310, line: 148, baseType: !568, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4330, file: !4310, line: 150, baseType: !4335, size: 64)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4310, line: 59, size: 64, elements: !4336)
!4336 = !{!4337, !4338, !4339}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4335, file: !4310, line: 61, baseType: !568, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4335, file: !4310, line: 63, baseType: !568, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4335, file: !4310, line: 65, baseType: !568, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4309, file: !4310, line: 153, baseType: !59, size: 64, offset: 1152)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4309, file: !4310, line: 154, baseType: !59, size: 64, offset: 1216)
!4342 = !DIDerivedType(tag: DW_TAG_member, scope: !4309, file: !4310, line: 156, baseType: !4343, size: 64, offset: 1280)
!4343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4309, file: !4310, line: 156, size: 64, elements: !4344)
!4344 = !{!4345, !4346, !4347}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4343, file: !4310, line: 158, baseType: !113, size: 16)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4343, file: !4310, line: 160, baseType: !568, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4343, file: !4310, line: 162, baseType: !4348, size: 64)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4310, line: 69, size: 64, elements: !4349)
!4349 = !{!4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4348, file: !4310, line: 71, baseType: !568, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4348, file: !4310, line: 73, baseType: !568, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4348, file: !4310, line: 75, baseType: !568, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4348, file: !4310, line: 77, baseType: !568, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4348, file: !4310, line: 80, baseType: !568, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4348, file: !4310, line: 83, baseType: !568, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4348, file: !4310, line: 86, baseType: !568, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4348, file: !4310, line: 88, baseType: !568, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4348, file: !4310, line: 93, baseType: !568, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4348, file: !4310, line: 100, baseType: !568, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4285, file: !4212, line: 96, baseType: !564, size: 32, offset: 1024)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4230, file: !4212, line: 352, baseType: !4362, size: 4608, align: 512)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4212, line: 333, size: 4608, align: 512, elements: !4363)
!4363 = !{!4364, !4365, !4372}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4362, file: !4212, line: 334, baseType: !4248, size: 4096, align: 128)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4362, file: !4212, line: 335, baseType: !4366, size: 512, offset: 4096)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4212, line: 312, size: 512, elements: !4367)
!4367 = !{!4368, !4369, !4370}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4366, file: !4212, line: 313, baseType: !568, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4366, file: !4212, line: 314, baseType: !568, size: 64, offset: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4366, file: !4212, line: 315, baseType: !4371, size: 384, offset: 128)
!4371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !568, size: 384, elements: !1412)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4362, file: !4212, line: 336, baseType: !4373, offset: 4608)
!4373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, elements: !1319)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4230, file: !4212, line: 353, baseType: !4375, size: 32768)
!4375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 32768, elements: !3400)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4211, file: !4212, line: 484, baseType: !4217, size: 64, offset: 192)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4211, file: !4212, line: 491, baseType: !4378, size: 128, offset: 256)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4212, line: 404, size: 128, elements: !4379)
!4379 = !{!4380, !4381, !4382}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4378, file: !4212, line: 424, baseType: !568, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4378, file: !4212, line: 432, baseType: !7, size: 32, offset: 64)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4378, file: !4212, line: 440, baseType: !7, size: 32, offset: 96)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4211, file: !4212, line: 498, baseType: !4378, size: 128, offset: 384)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4211, file: !4212, line: 508, baseType: !4218, size: 33280, align: 512, offset: 512)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2762, file: !2763, line: 16, baseType: !74, size: 192, offset: 512)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2762, file: !2763, line: 17, baseType: !69, size: 32, offset: 704)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !647, file: !19, line: 1240, baseType: !40, size: 64, offset: 6912)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !647, file: !19, line: 1243, baseType: !564, size: 32, offset: 6976)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !647, file: !19, line: 1245, baseType: !1383, size: 64, offset: 7040)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !647, file: !19, line: 1246, baseType: !1383, size: 64, offset: 7104)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !647, file: !19, line: 1248, baseType: !565, size: 32, offset: 7168)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !647, file: !19, line: 1249, baseType: !4393, size: 64, offset: 7232)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !19, line: 634, flags: DIFlagFwdDecl)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !647, file: !19, line: 1252, baseType: !3753, size: 256, offset: 7296)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !647, file: !19, line: 1253, baseType: !4397, size: 128, offset: 7552)
!4397 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4398, line: 21, baseType: !4399)
!4398 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4398, line: 19, size: 128, elements: !4400)
!4400 = !{!4401}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4399, file: !4398, line: 20, baseType: !4402, size: 128)
!4402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 128, elements: !3195)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !647, file: !19, line: 1255, baseType: !7, size: 32, offset: 7680)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !647, file: !19, line: 1261, baseType: !753, size: 256, offset: 7744)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !647, file: !19, line: 1267, baseType: !36, size: 64, offset: 8000)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !647, file: !19, line: 1269, baseType: !593, size: 64, offset: 8064)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !647, file: !19, line: 1271, baseType: !4408, size: 448, offset: 8128)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2441, line: 63, size: 448, elements: !4409)
!4409 = !{!4410, !4415, !4416, !4417, !4418, !4419, !4420}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4408, file: !2441, line: 64, baseType: !4411, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!59, !4414, !2439}
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4408, file: !2441, line: 66, baseType: !4411, size: 64, offset: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4408, file: !2441, line: 69, baseType: !456, size: 64, offset: 128)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4408, file: !2441, line: 70, baseType: !42, size: 32, offset: 192)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4408, file: !2441, line: 71, baseType: !7, size: 32, offset: 224)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4408, file: !2441, line: 74, baseType: !117, size: 128, offset: 256)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4408, file: !2441, line: 85, baseType: !4421, size: 64, offset: 384)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !647, file: !19, line: 1274, baseType: !757, size: 64, offset: 8576)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !647, file: !19, line: 1280, baseType: !757, size: 64, offset: 8640)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !647, file: !19, line: 1283, baseType: !42, size: 32, offset: 8704)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !647, file: !19, line: 1286, baseType: !2373, size: 32, offset: 8736)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !647, file: !19, line: 1289, baseType: !1075, size: 64, offset: 8768)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !647, file: !19, line: 1290, baseType: !1123, size: 64, offset: 8832)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !647, file: !19, line: 1297, baseType: !1506, size: 64, offset: 8896)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !647, file: !19, line: 1304, baseType: !4430, size: 64, offset: 8960)
!4430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4431, line: 49, size: 64, elements: !4432)
!4431 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4432 = !{!4433}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4430, file: !4431, line: 50, baseType: !4434, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4431, line: 41, size: 512, align: 512, elements: !4436)
!4436 = !{!4437, !4438, !4443}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4435, file: !4431, line: 43, baseType: !79, size: 32)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4435, file: !4431, line: 45, baseType: !4439, size: 192, offset: 64)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4431, line: 29, size: 192, elements: !4440)
!4440 = !{!4441, !4442}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4439, file: !4431, line: 30, baseType: !117, size: 128)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4439, file: !4431, line: 32, baseType: !456, size: 64, offset: 128)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4435, file: !4431, line: 46, baseType: !456, size: 64, offset: 256)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !647, file: !19, line: 1305, baseType: !4430, size: 64, offset: 9024)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !647, file: !19, line: 1306, baseType: !973, size: 128, align: 64, offset: 9088)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !647, file: !19, line: 1307, baseType: !1013, size: 256, offset: 9216)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !647, file: !19, line: 1309, baseType: !753, size: 256, offset: 9472)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !647, file: !19, line: 1314, baseType: !42, size: 32, offset: 9728)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !647, file: !19, line: 1317, baseType: !79, size: 32, align: 512, offset: 10240)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !647, file: !19, line: 1318, baseType: !117, size: 128, offset: 10304)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !647, file: !19, line: 1320, baseType: !79, size: 32, offset: 10432)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !647, file: !19, line: 1321, baseType: !117, size: 128, offset: 10496)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !641, file: !642, line: 73, baseType: !42, size: 32, offset: 128)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !641, file: !642, line: 74, baseType: !4455, size: 64, offset: 192)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1343, line: 42, flags: DIFlagFwdDecl)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !595, file: !532, line: 141, baseType: !4459, size: 64, offset: 704)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!42, !2501, !833}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !595, file: !532, line: 142, baseType: !4463, size: 64, offset: 768)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!530, !530, !4466}
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !531, file: !532, line: 96, baseType: !646, size: 64, offset: 832)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !531, file: !532, line: 97, baseType: !59, size: 64, offset: 896)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !531, file: !532, line: 98, baseType: !40, size: 64, offset: 960)
!4471 = !DIDerivedType(tag: DW_TAG_member, scope: !531, file: !532, line: 100, baseType: !4472, size: 128, offset: 1024)
!4472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !531, file: !532, line: 100, size: 128, elements: !4473)
!4473 = !{!4474, !4475}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4472, file: !532, line: 101, baseType: !117, size: 128)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4472, file: !532, line: 102, baseType: !4476, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !531, file: !532, line: 104, baseType: !117, size: 128, offset: 1152)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !531, file: !532, line: 105, baseType: !117, size: 128, offset: 1280)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !531, file: !532, line: 113, baseType: !4480, size: 128, offset: 1408)
!4480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !531, file: !532, line: 109, size: 128, elements: !4481)
!4481 = !{!4482, !4483, !4484}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4480, file: !532, line: 110, baseType: !999, size: 128)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4480, file: !532, line: 111, baseType: !546, size: 128)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4480, file: !532, line: 112, baseType: !973, size: 128, align: 64)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !524, file: !19, line: 1968, baseType: !4486, size: 64, offset: 64)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!36, !530, !495, !4489}
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4491, line: 10, size: 128, elements: !4492)
!4491 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4492 = !{!4493, !4494}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4490, file: !4491, line: 11, baseType: !796, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4490, file: !4491, line: 12, baseType: !40, size: 64, offset: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !524, file: !19, line: 1969, baseType: !4496, size: 64, offset: 128)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!42, !4455, !495, !42}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !524, file: !19, line: 1970, baseType: !4500, size: 64, offset: 192)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!518, !495, !42, !833}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !524, file: !19, line: 1972, baseType: !4504, size: 64, offset: 256)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!42, !530, !421, !42}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !524, file: !19, line: 1974, baseType: !4508, size: 64, offset: 320)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!42, !4455, !495, !530, !44, !833}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !524, file: !19, line: 1976, baseType: !4512, size: 64, offset: 384)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!42, !530, !495, !530}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !524, file: !19, line: 1977, baseType: !4516, size: 64, offset: 448)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!42, !495, !530}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !524, file: !19, line: 1978, baseType: !4520, size: 64, offset: 512)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!42, !4455, !495, !530, !36}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !524, file: !19, line: 1980, baseType: !4524, size: 64, offset: 576)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!42, !4455, !495, !530, !44}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !524, file: !19, line: 1982, baseType: !4516, size: 64, offset: 640)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !524, file: !19, line: 1983, baseType: !4529, size: 64, offset: 704)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!42, !4455, !495, !530, !44, !651}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !524, file: !19, line: 1985, baseType: !4533, size: 64, offset: 768)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!42, !4455, !495, !530, !495, !530, !7}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !524, file: !19, line: 1987, baseType: !4537, size: 64, offset: 832)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!42, !4455, !530, !4540}
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !19, line: 226, size: 640, elements: !4542)
!4542 = !{!4543, !4544, !4545, !4555, !4564, !4565, !4570, !4571, !4572}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4541, file: !19, line: 227, baseType: !7, size: 32)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4541, file: !19, line: 228, baseType: !44, size: 16, offset: 32)
!4545 = !DIDerivedType(tag: DW_TAG_member, scope: !4541, file: !19, line: 241, baseType: !4546, size: 32, offset: 64)
!4546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4541, file: !19, line: 241, size: 32, elements: !4547)
!4547 = !{!4548, !4549}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4546, file: !19, line: 242, baseType: !501, size: 32)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4546, file: !19, line: 243, baseType: !4550, size: 32)
!4550 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4551, line: 16, baseType: !4552)
!4551 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4551, line: 14, size: 32, elements: !4553)
!4553 = !{!4554}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4552, file: !4551, line: 15, baseType: !506, size: 32)
!4555 = !DIDerivedType(tag: DW_TAG_member, scope: !4541, file: !19, line: 245, baseType: !4556, size: 32, offset: 96)
!4556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4541, file: !19, line: 245, size: 32, elements: !4557)
!4557 = !{!4558, !4559}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4556, file: !19, line: 246, baseType: !510, size: 32)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4556, file: !19, line: 247, baseType: !4560, size: 32)
!4560 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4551, line: 20, baseType: !4561)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4551, line: 18, size: 32, elements: !4562)
!4562 = !{!4563}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4561, file: !4551, line: 19, baseType: !514, size: 32)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4541, file: !19, line: 249, baseType: !61, size: 64, offset: 128)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4541, file: !19, line: 250, baseType: !4566, size: 128, offset: 192)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1384, line: 13, size: 128, elements: !4567)
!4567 = !{!4568, !4569}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4566, file: !1384, line: 14, baseType: !1383, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4566, file: !1384, line: 15, baseType: !456, size: 64, offset: 64)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4541, file: !19, line: 251, baseType: !4566, size: 128, offset: 320)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4541, file: !19, line: 252, baseType: !4566, size: 128, offset: 448)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4541, file: !19, line: 259, baseType: !1675, size: 64, offset: 576)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !524, file: !19, line: 1988, baseType: !4574, size: 64, offset: 896)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!42, !4455, !2501, !4577, !564, !7}
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4579, line: 22, size: 1280, elements: !4580)
!4579 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4580 = !{!4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4578, file: !4579, line: 23, baseType: !564, size: 32)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4578, file: !4579, line: 24, baseType: !44, size: 16, offset: 32)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4578, file: !4579, line: 25, baseType: !7, size: 32, offset: 64)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4578, file: !4579, line: 26, baseType: !1391, size: 32, offset: 96)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4578, file: !4579, line: 27, baseType: !568, size: 64, offset: 128)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4578, file: !4579, line: 28, baseType: !568, size: 64, offset: 192)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4578, file: !4579, line: 41, baseType: !568, size: 64, offset: 256)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4578, file: !4579, line: 42, baseType: !651, size: 32, offset: 320)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4578, file: !4579, line: 43, baseType: !651, size: 32, offset: 352)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4578, file: !4579, line: 44, baseType: !501, size: 32, offset: 384)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4578, file: !4579, line: 45, baseType: !510, size: 32, offset: 416)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4578, file: !4579, line: 46, baseType: !61, size: 64, offset: 448)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4578, file: !4579, line: 47, baseType: !4566, size: 128, offset: 512)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4578, file: !4579, line: 48, baseType: !4566, size: 128, offset: 640)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4578, file: !4579, line: 49, baseType: !4566, size: 128, offset: 768)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4578, file: !4579, line: 50, baseType: !4566, size: 128, offset: 896)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4578, file: !4579, line: 51, baseType: !568, size: 64, offset: 1024)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4578, file: !4579, line: 52, baseType: !568, size: 64, offset: 1088)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4578, file: !4579, line: 53, baseType: !564, size: 32, offset: 1152)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4578, file: !4579, line: 54, baseType: !564, size: 32, offset: 1184)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4578, file: !4579, line: 55, baseType: !568, size: 64, offset: 1216)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !524, file: !19, line: 1990, baseType: !4603, size: 64, offset: 960)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!453, !530, !421, !55}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !524, file: !19, line: 1991, baseType: !4607, size: 64, offset: 1024)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!42, !495, !4610, !568, !568}
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !19, line: 55, flags: DIFlagFwdDecl)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !524, file: !19, line: 1993, baseType: !4613, size: 64, offset: 1088)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!42, !495, !42}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !524, file: !19, line: 1994, baseType: !4617, size: 64, offset: 1152)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!42, !495, !530, !1675, !7, !44}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !524, file: !19, line: 1997, baseType: !4621, size: 64, offset: 1216)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!42, !4455, !495, !1675, !44}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !524, file: !19, line: 1999, baseType: !4625, size: 64, offset: 1280)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!518, !4455, !530, !42}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !524, file: !19, line: 2001, baseType: !4629, size: 64, offset: 1344)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!42, !4455, !530, !518, !42}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !524, file: !19, line: 2003, baseType: !4633, size: 64, offset: 1408)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!42, !4455, !530, !4636}
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !19, line: 76, flags: DIFlagFwdDecl)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !524, file: !19, line: 2005, baseType: !4639, size: 64, offset: 1472)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!42, !530, !4636}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !524, file: !19, line: 2006, baseType: !4643, size: 64, offset: 1536)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!4646, !495}
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !19, line: 3192, size: 192, elements: !4648)
!4648 = !{!4649, !4650}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4647, file: !19, line: 3193, baseType: !3524, size: 128)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4647, file: !19, line: 3194, baseType: !564, size: 32, offset: 128)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !496, file: !19, line: 655, baseType: !646, size: 64, offset: 448)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !496, file: !19, line: 656, baseType: !491, size: 64, offset: 512)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !496, file: !19, line: 659, baseType: !40, size: 64, offset: 576)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !496, file: !19, line: 663, baseType: !59, size: 64, offset: 640)
!4655 = !DIDerivedType(tag: DW_TAG_member, scope: !496, file: !19, line: 671, baseType: !4656, size: 32, offset: 704)
!4656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !496, file: !19, line: 671, size: 32, elements: !4657)
!4657 = !{!4658, !4660}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4656, file: !19, line: 672, baseType: !4659, size: 32)
!4659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4656, file: !19, line: 673, baseType: !7, size: 32)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !496, file: !19, line: 675, baseType: !651, size: 32, offset: 736)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !496, file: !19, line: 676, baseType: !61, size: 64, offset: 768)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !496, file: !19, line: 677, baseType: !4566, size: 128, offset: 832)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !496, file: !19, line: 678, baseType: !4566, size: 128, offset: 960)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !496, file: !19, line: 679, baseType: !4566, size: 128, offset: 1088)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !496, file: !19, line: 680, baseType: !79, size: 32, offset: 1216)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !496, file: !19, line: 681, baseType: !46, size: 16, offset: 1248)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !496, file: !19, line: 682, baseType: !103, size: 8, offset: 1264)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !496, file: !19, line: 683, baseType: !103, size: 8, offset: 1272)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !496, file: !19, line: 684, baseType: !2574, size: 64, offset: 1280)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !496, file: !19, line: 691, baseType: !59, size: 64, offset: 1344)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !496, file: !19, line: 692, baseType: !1367, size: 320, offset: 1408)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !496, file: !19, line: 694, baseType: !59, size: 64, offset: 1728)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !496, file: !19, line: 695, baseType: !59, size: 64, offset: 1792)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !496, file: !19, line: 697, baseType: !999, size: 128, offset: 1856)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !496, file: !19, line: 698, baseType: !117, size: 128, offset: 1984)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !496, file: !19, line: 707, baseType: !117, size: 128, offset: 2112)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !496, file: !19, line: 708, baseType: !117, size: 128, offset: 2240)
!4679 = !DIDerivedType(tag: DW_TAG_member, scope: !496, file: !19, line: 709, baseType: !4680, size: 128, offset: 2368)
!4680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !496, file: !19, line: 709, size: 128, elements: !4681)
!4681 = !{!4682, !4683}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4680, file: !19, line: 710, baseType: !1123, size: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4680, file: !19, line: 711, baseType: !973, size: 128, align: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !496, file: !19, line: 713, baseType: !759, size: 64, offset: 2496)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !496, file: !19, line: 714, baseType: !759, size: 64, offset: 2560)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !496, file: !19, line: 715, baseType: !69, size: 32, offset: 2624)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !496, file: !19, line: 716, baseType: !69, size: 32, offset: 2656)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !496, file: !19, line: 717, baseType: !69, size: 32, offset: 2688)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !496, file: !19, line: 719, baseType: !69, size: 32, offset: 2720)
!4690 = !DIDerivedType(tag: DW_TAG_member, scope: !496, file: !19, line: 721, baseType: !4691, size: 64, offset: 2752)
!4691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !496, file: !19, line: 721, size: 64, elements: !4692)
!4692 = !{!4693, !4694}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4691, file: !19, line: 722, baseType: !1666, size: 64)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4691, file: !19, line: 723, baseType: !1146, size: 64)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !496, file: !19, line: 725, baseType: !4696, size: 64, offset: 2816)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !19, line: 725, flags: DIFlagFwdDecl)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !496, file: !19, line: 726, baseType: !492, size: 1536, align: 64, offset: 2880)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !496, file: !19, line: 727, baseType: !117, size: 128, offset: 4416)
!4700 = !DIDerivedType(tag: DW_TAG_member, scope: !496, file: !19, line: 728, baseType: !4701, size: 64, offset: 4544)
!4701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !496, file: !19, line: 728, size: 64, elements: !4702)
!4702 = !{!4703, !4704, !4707, !4708}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4701, file: !19, line: 729, baseType: !2322, size: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4701, file: !19, line: 730, baseType: !4705, size: 64)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !19, line: 730, flags: DIFlagFwdDecl)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4701, file: !19, line: 731, baseType: !421, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4701, file: !19, line: 732, baseType: !7, size: 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !496, file: !19, line: 735, baseType: !565, size: 32, offset: 4608)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !496, file: !19, line: 738, baseType: !565, size: 32, offset: 4640)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !496, file: !19, line: 739, baseType: !4393, size: 64, offset: 4672)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !496, file: !19, line: 750, baseType: !40, size: 64, offset: 4736)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !492, file: !19, line: 474, baseType: !3524, size: 128, offset: 64)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !492, file: !19, line: 475, baseType: !1367, size: 320, offset: 192)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !492, file: !19, line: 476, baseType: !363, size: 32, offset: 512)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !492, file: !19, line: 477, baseType: !69, size: 32, offset: 544)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !492, file: !19, line: 482, baseType: !2949, size: 128, offset: 576)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !492, file: !19, line: 483, baseType: !59, size: 64, offset: 704)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !492, file: !19, line: 484, baseType: !59, size: 64, offset: 768)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !492, file: !19, line: 485, baseType: !4721, size: 64, offset: 832)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4723)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !19, line: 404, size: 1280, elements: !4724)
!4724 = !{!4725, !4729, !4733, !4737, !4741, !4757, !4762, !4766, !4770, !4774, !4778, !4782, !4783, !4787, !4791, !4795, !4800, !4804, !4856, !4857}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4723, file: !19, line: 405, baseType: !4726, size: 64)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!42, !1838, !1158}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4723, file: !19, line: 406, baseType: !4730, size: 64, offset: 64)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{!42, !1675, !1709}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4723, file: !19, line: 409, baseType: !4734, size: 64, offset: 128)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!42, !491, !1158}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4723, file: !19, line: 412, baseType: !4738, size: 64, offset: 192)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!833, !491, !1709}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4723, file: !19, line: 414, baseType: !4742, size: 64, offset: 256)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{null, !4745}
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1706, line: 1276, size: 448, elements: !4747)
!4747 = !{!4748, !4749, !4750, !4752, !4753, !4754, !4755, !4756}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4746, file: !1706, line: 1277, baseType: !1675, size: 64)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4746, file: !1706, line: 1278, baseType: !491, size: 64, offset: 64)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !4746, file: !1706, line: 1279, baseType: !4751, size: 64, offset: 128)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !4746, file: !1706, line: 1281, baseType: !59, size: 64, offset: 192)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !4746, file: !1706, line: 1282, baseType: !7, size: 32, offset: 256)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !4746, file: !1706, line: 1283, baseType: !7, size: 32, offset: 288)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !4746, file: !1706, line: 1284, baseType: !833, size: 8, offset: 320)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !4746, file: !1706, line: 1285, baseType: !59, size: 64, offset: 384)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4723, file: !19, line: 416, baseType: !4758, size: 64, offset: 320)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!42, !1675, !491, !61, !7, !4761, !2338}
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4723, file: !19, line: 419, baseType: !4763, size: 64, offset: 384)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{!42, !1675, !491, !61, !7, !7, !1838, !40}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4723, file: !19, line: 424, baseType: !4767, size: 64, offset: 448)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DISubroutineType(types: !4769)
!4769 = !{!2605, !491, !2605}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4723, file: !19, line: 425, baseType: !4771, size: 64, offset: 512)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{null, !1709, !55, !55}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4723, file: !19, line: 426, baseType: !4775, size: 64, offset: 576)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!833, !1709, !363}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4723, file: !19, line: 427, baseType: !4779, size: 64, offset: 640)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{null, !1709}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4723, file: !19, line: 428, baseType: !1685, size: 64, offset: 704)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4723, file: !19, line: 433, baseType: !4784, size: 64, offset: 768)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!42, !491, !1709, !1709, !187}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4723, file: !19, line: 435, baseType: !4788, size: 64, offset: 832)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!42, !1709}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4723, file: !19, line: 436, baseType: !4792, size: 64, offset: 896)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!833, !1709, !55, !55}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4723, file: !19, line: 438, baseType: !4796, size: 64, offset: 960)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{null, !1709, !4799, !4799}
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4723, file: !19, line: 439, baseType: !4801, size: 64, offset: 1024)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!42, !491, !1838}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4723, file: !19, line: 442, baseType: !4805, size: 64, offset: 1088)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!42, !4808, !1675, !4855}
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !3889, line: 282, size: 2176, elements: !4810)
!4810 = !{!4811, !4812, !4813, !4814, !4815, !4816, !4817, !4819, !4826, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853}
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4809, file: !3889, line: 283, baseType: !1805, size: 128)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4809, file: !3889, line: 284, baseType: !59, size: 64, offset: 128)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4809, file: !3889, line: 285, baseType: !891, size: 16, offset: 192)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4809, file: !3889, line: 286, baseType: !3048, size: 320, offset: 256)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4809, file: !3889, line: 287, baseType: !804, size: 8, offset: 576)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4809, file: !3889, line: 288, baseType: !7, size: 32, offset: 608)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !4809, file: !3889, line: 289, baseType: !4818, size: 64, offset: 640)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !4809, file: !3889, line: 290, baseType: !4820, size: 64, offset: 704)
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !3889, line: 250, size: 64, elements: !4822)
!4822 = !{!4823, !4824, !4825}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4821, file: !3889, line: 251, baseType: !79, size: 32)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4821, file: !3889, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4821, file: !3889, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !4809, file: !3889, line: 291, baseType: !4827, size: 128, offset: 768)
!4827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !3889, line: 274, size: 128, elements: !4828)
!4828 = !{!4829, !4830}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4827, file: !3889, line: 275, baseType: !4821, size: 64)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4827, file: !3889, line: 276, baseType: !4821, size: 64, offset: 64)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !4809, file: !3889, line: 292, baseType: !7, size: 32, offset: 896)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !4809, file: !3889, line: 293, baseType: !7, size: 32, offset: 928)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4809, file: !3889, line: 294, baseType: !7, size: 32, offset: 960)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !4809, file: !3889, line: 295, baseType: !7, size: 32, offset: 992)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !4809, file: !3889, line: 296, baseType: !7, size: 32, offset: 1024)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !4809, file: !3889, line: 297, baseType: !7, size: 32, offset: 1056)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !4809, file: !3889, line: 298, baseType: !825, size: 64, offset: 1088)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !4809, file: !3889, line: 299, baseType: !4839, size: 64, offset: 1152)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !3889, line: 269, size: 96, elements: !4841)
!4841 = !{!4842, !4843}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4840, file: !3889, line: 270, baseType: !4821, size: 64)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4840, file: !3889, line: 271, baseType: !7, size: 32, offset: 64)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !4809, file: !3889, line: 300, baseType: !1614, size: 64, offset: 1216)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !4809, file: !3889, line: 301, baseType: !2600, size: 64, offset: 1280)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !4809, file: !3889, line: 302, baseType: !1675, size: 64, offset: 1344)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !4809, file: !3889, line: 303, baseType: !7, size: 32, offset: 1408)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !4809, file: !3889, line: 304, baseType: !702, size: 256, offset: 1472)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4809, file: !3889, line: 305, baseType: !79, size: 32, offset: 1728)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !4809, file: !3889, line: 318, baseType: !79, size: 32, offset: 1760)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !4809, file: !3889, line: 322, baseType: !1013, size: 256, offset: 1792)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !4809, file: !3889, line: 323, baseType: !4827, size: 128, offset: 2048)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !4809, file: !3889, line: 324, baseType: !4854, offset: 2176)
!4854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3048, elements: !1319)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4723, file: !19, line: 444, baseType: !2330, size: 64, offset: 1152)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4723, file: !19, line: 445, baseType: !4858, size: 64, offset: 1216)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!42, !1688, !2248}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !492, file: !19, line: 486, baseType: !59, size: 64, offset: 896)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !492, file: !19, line: 487, baseType: !1367, size: 320, offset: 960)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !492, file: !19, line: 488, baseType: !2373, size: 32, offset: 1280)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !492, file: !19, line: 489, baseType: !79, size: 32, offset: 1312)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !492, file: !19, line: 490, baseType: !117, size: 128, offset: 1344)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !492, file: !19, line: 491, baseType: !40, size: 64, offset: 1472)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !482, file: !447, line: 180, baseType: !4868, size: 64, offset: 320)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!453, !1675, !386, !481, !421, !61, !55}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !482, file: !447, line: 182, baseType: !4868, size: 64, offset: 384)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !482, file: !447, line: 184, baseType: !4873, size: 64, offset: 448)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!42, !1675, !386, !481, !1852}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !470, file: !447, line: 90, baseType: !4877, size: 64, offset: 192)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !470, file: !447, line: 91, baseType: !4879, size: 64, offset: 256)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !437, file: !381, line: 120, baseType: !4881, size: 64, offset: 192)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!4884, !404}
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4886)
!4886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !195, line: 39, size: 384, elements: !4887)
!4887 = !{!4888, !4889, !4893, !4897, !4903, !4907}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4886, file: !195, line: 40, baseType: !194, size: 32)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4886, file: !195, line: 41, baseType: !4890, size: 64, offset: 64)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!833}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4886, file: !195, line: 42, baseType: !4894, size: 64, offset: 128)
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{!40}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4886, file: !195, line: 43, baseType: !4898, size: 64, offset: 192)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = !DISubroutineType(types: !4900)
!4900 = !{!1980, !4901}
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !195, line: 19, flags: DIFlagFwdDecl)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4886, file: !195, line: 44, baseType: !4904, size: 64, offset: 256)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = !DISubroutineType(types: !4906)
!4906 = !{!1980}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4886, file: !195, line: 45, baseType: !796, size: 64, offset: 320)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !437, file: !381, line: 121, baseType: !4909, size: 64, offset: 256)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!1980, !404}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !437, file: !381, line: 122, baseType: !4913, size: 64, offset: 320)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{null, !404, !1597, !1598}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !380, file: !381, line: 70, baseType: !3279, size: 64, offset: 384)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !380, file: !381, line: 71, baseType: !2656, size: 32, offset: 448)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !380, file: !381, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !380, file: !381, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !380, file: !381, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !380, file: !381, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !380, file: !381, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !377, file: !207, line: 707, baseType: !2703, size: 64, offset: 512)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !377, file: !207, line: 709, baseType: !4925, size: 64, offset: 576)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !207, line: 37, flags: DIFlagFwdDecl)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !377, file: !207, line: 711, baseType: !36, size: 64, offset: 640)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !377, file: !207, line: 712, baseType: !4929, size: 64, offset: 704)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4931)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !207, line: 89, size: 384, elements: !4932)
!4932 = !{!4933, !4934, !4935, !4941, !4946, !4950}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4931, file: !207, line: 90, baseType: !36, size: 64)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4931, file: !207, line: 91, baseType: !467, size: 64, offset: 64)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4931, file: !207, line: 92, baseType: !4936, size: 64, offset: 128)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!42, !4939, !416}
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4931, file: !207, line: 93, baseType: !4942, size: 64, offset: 192)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!421, !4939, !4945, !1597, !1598}
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4931, file: !207, line: 95, baseType: !4947, size: 64, offset: 256)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = !DISubroutineType(types: !4949)
!4949 = !{null, !2703}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4931, file: !207, line: 97, baseType: !4951, size: 64, offset: 320)
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4953)
!4953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !214, line: 286, size: 1472, elements: !4954)
!4954 = !{!4955, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4953, file: !214, line: 287, baseType: !4956, size: 64)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!42, !2703}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4953, file: !214, line: 288, baseType: !4947, size: 64, offset: 64)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4953, file: !214, line: 289, baseType: !4956, size: 64, offset: 128)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4953, file: !214, line: 290, baseType: !4956, size: 64, offset: 192)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4953, file: !214, line: 291, baseType: !4956, size: 64, offset: 256)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4953, file: !214, line: 292, baseType: !4956, size: 64, offset: 320)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4953, file: !214, line: 293, baseType: !4956, size: 64, offset: 384)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4953, file: !214, line: 294, baseType: !4956, size: 64, offset: 448)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4953, file: !214, line: 295, baseType: !4956, size: 64, offset: 512)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4953, file: !214, line: 296, baseType: !4956, size: 64, offset: 576)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4953, file: !214, line: 297, baseType: !4956, size: 64, offset: 640)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4953, file: !214, line: 298, baseType: !4956, size: 64, offset: 704)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4953, file: !214, line: 299, baseType: !4956, size: 64, offset: 768)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4953, file: !214, line: 300, baseType: !4956, size: 64, offset: 832)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4953, file: !214, line: 301, baseType: !4956, size: 64, offset: 896)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4953, file: !214, line: 302, baseType: !4956, size: 64, offset: 960)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4953, file: !214, line: 303, baseType: !4956, size: 64, offset: 1024)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4953, file: !214, line: 304, baseType: !4956, size: 64, offset: 1088)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4953, file: !214, line: 305, baseType: !4956, size: 64, offset: 1152)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4953, file: !214, line: 306, baseType: !4956, size: 64, offset: 1216)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4953, file: !214, line: 307, baseType: !4956, size: 64, offset: 1280)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4953, file: !214, line: 308, baseType: !4956, size: 64, offset: 1344)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4953, file: !214, line: 309, baseType: !4956, size: 64, offset: 1408)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !377, file: !207, line: 714, baseType: !4982, size: 64, offset: 768)
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4984)
!4984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4985, line: 80, size: 1344, elements: !4986)
!4985 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4986 = !{!4987, !4988, !4989, !4990, !4991, !4992, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5050}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4984, file: !4985, line: 81, baseType: !36, size: 64)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4984, file: !4985, line: 82, baseType: !36, size: 64, offset: 64)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4984, file: !4985, line: 83, baseType: !467, size: 64, offset: 128)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4984, file: !4985, line: 84, baseType: !467, size: 64, offset: 192)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4984, file: !4985, line: 85, baseType: !467, size: 64, offset: 256)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4984, file: !4985, line: 87, baseType: !4993, size: 64, offset: 320)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!42, !2703, !4996}
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !201, line: 96, size: 1152, elements: !4998)
!4998 = !{!4999, !5000, !5001, !5002, !5003, !5004, !5005, !5009, !5013, !5014, !5015, !5016, !5017, !5025, !5026, !5027, !5028, !5029, !5030}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4997, file: !201, line: 97, baseType: !36, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4997, file: !201, line: 98, baseType: !4982, size: 64, offset: 64)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4997, file: !201, line: 100, baseType: !682, size: 64, offset: 128)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4997, file: !201, line: 101, baseType: !36, size: 64, offset: 192)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4997, file: !201, line: 103, baseType: !833, size: 8, offset: 256)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4997, file: !201, line: 104, baseType: !200, size: 32, offset: 288)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4997, file: !201, line: 106, baseType: !5006, size: 64, offset: 320)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5008)
!5008 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !201, line: 106, flags: DIFlagFwdDecl)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4997, file: !201, line: 107, baseType: !5010, size: 64, offset: 384)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5012)
!5012 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !201, line: 107, flags: DIFlagFwdDecl)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4997, file: !201, line: 109, baseType: !4956, size: 64, offset: 448)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4997, file: !201, line: 110, baseType: !4947, size: 64, offset: 512)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4997, file: !201, line: 111, baseType: !4956, size: 64, offset: 576)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4997, file: !201, line: 112, baseType: !4947, size: 64, offset: 640)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4997, file: !201, line: 113, baseType: !5018, size: 64, offset: 704)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DISubroutineType(types: !5020)
!5020 = !{!42, !2703, !5021}
!5021 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !214, line: 60, baseType: !5022)
!5022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !214, line: 58, size: 32, elements: !5023)
!5023 = !{!5024}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5022, file: !214, line: 59, baseType: !42, size: 32)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4997, file: !201, line: 114, baseType: !4956, size: 64, offset: 768)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4997, file: !201, line: 115, baseType: !467, size: 64, offset: 832)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4997, file: !201, line: 116, baseType: !467, size: 64, offset: 896)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4997, file: !201, line: 118, baseType: !4951, size: 64, offset: 960)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4997, file: !201, line: 119, baseType: !4947, size: 64, offset: 1024)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4997, file: !201, line: 121, baseType: !5031, size: 64, offset: 1088)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !201, line: 121, flags: DIFlagFwdDecl)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4984, file: !4985, line: 88, baseType: !4936, size: 64, offset: 384)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4984, file: !4985, line: 89, baseType: !4956, size: 64, offset: 448)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4984, file: !4985, line: 90, baseType: !4947, size: 64, offset: 512)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4984, file: !4985, line: 91, baseType: !4947, size: 64, offset: 576)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4984, file: !4985, line: 92, baseType: !4947, size: 64, offset: 640)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4984, file: !4985, line: 94, baseType: !4956, size: 64, offset: 704)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4984, file: !4985, line: 95, baseType: !4956, size: 64, offset: 768)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4984, file: !4985, line: 97, baseType: !5018, size: 64, offset: 832)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4984, file: !4985, line: 98, baseType: !4956, size: 64, offset: 896)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4984, file: !4985, line: 100, baseType: !4956, size: 64, offset: 960)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4984, file: !4985, line: 102, baseType: !4956, size: 64, offset: 1024)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4984, file: !4985, line: 103, baseType: !4947, size: 64, offset: 1088)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4984, file: !4985, line: 105, baseType: !4951, size: 64, offset: 1152)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4984, file: !4985, line: 107, baseType: !5047, size: 64, offset: 1216)
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5049)
!5049 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4985, line: 107, flags: DIFlagFwdDecl)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4984, file: !4985, line: 109, baseType: !833, size: 8, offset: 1280)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !377, file: !207, line: 715, baseType: !4996, size: 64, offset: 832)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !377, file: !207, line: 717, baseType: !40, size: 64, offset: 896)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !377, file: !207, line: 719, baseType: !40, size: 64, offset: 960)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !377, file: !207, line: 721, baseType: !753, size: 256, offset: 1024)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !377, file: !207, line: 725, baseType: !5056, size: 448, offset: 1280)
!5056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !207, line: 517, size: 448, elements: !5057)
!5057 = !{!5058, !5059, !5060, !5061}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !5056, file: !207, line: 518, baseType: !117, size: 128)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !5056, file: !207, line: 519, baseType: !117, size: 128, offset: 128)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !5056, file: !207, line: 520, baseType: !117, size: 128, offset: 256)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5056, file: !207, line: 521, baseType: !206, size: 32, offset: 384)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !377, file: !207, line: 726, baseType: !5063, size: 2496, offset: 1728)
!5063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !214, line: 663, size: 2496, elements: !5064)
!5064 = !{!5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5147, !5151}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !5063, file: !214, line: 664, baseType: !5021, size: 32)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !5063, file: !214, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !5063, file: !214, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !5063, file: !214, line: 667, baseType: !833, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !5063, file: !214, line: 668, baseType: !833, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !5063, file: !214, line: 669, baseType: !833, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !5063, file: !214, line: 670, baseType: !833, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !5063, file: !214, line: 671, baseType: !833, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !5063, file: !214, line: 672, baseType: !833, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !5063, file: !214, line: 673, baseType: !833, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !5063, file: !214, line: 674, baseType: !833, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !5063, file: !214, line: 675, baseType: !564, size: 32, offset: 64)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5063, file: !214, line: 676, baseType: !79, size: 32, offset: 96)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5063, file: !214, line: 678, baseType: !117, size: 128, offset: 128)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !5063, file: !214, line: 679, baseType: !702, size: 256, offset: 256)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5063, file: !214, line: 680, baseType: !5081, size: 64, offset: 512)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !5083, line: 43, size: 1536, elements: !5084)
!5083 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!5084 = !{!5085, !5086, !5087, !5088, !5089, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5082, file: !5083, line: 44, baseType: !36, size: 64)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5082, file: !5083, line: 45, baseType: !42, size: 32, offset: 64)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5082, file: !5083, line: 46, baseType: !117, size: 128, offset: 128)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5082, file: !5083, line: 47, baseType: !79, size: 32, offset: 256)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5082, file: !5083, line: 48, baseType: !5090, size: 64, offset: 320)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !214, line: 629, flags: DIFlagFwdDecl)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5082, file: !5083, line: 49, baseType: !995, size: 320, offset: 384)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5082, file: !5083, line: 50, baseType: !59, size: 64, offset: 704)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !5082, file: !5083, line: 51, baseType: !2898, size: 64, offset: 768)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !5082, file: !5083, line: 52, baseType: !2898, size: 64, offset: 832)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !5082, file: !5083, line: 53, baseType: !2898, size: 64, offset: 896)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !5082, file: !5083, line: 54, baseType: !2898, size: 64, offset: 960)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !5082, file: !5083, line: 55, baseType: !2898, size: 64, offset: 1024)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !5082, file: !5083, line: 56, baseType: !59, size: 64, offset: 1088)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !5082, file: !5083, line: 57, baseType: !59, size: 64, offset: 1152)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !5082, file: !5083, line: 58, baseType: !59, size: 64, offset: 1216)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !5082, file: !5083, line: 59, baseType: !59, size: 64, offset: 1280)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !5082, file: !5083, line: 60, baseType: !59, size: 64, offset: 1344)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5082, file: !5083, line: 61, baseType: !2703, size: 64, offset: 1408)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5082, file: !5083, line: 62, baseType: !833, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !5082, file: !5083, line: 63, baseType: !833, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !5063, file: !214, line: 681, baseType: !833, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !5063, file: !214, line: 682, baseType: !833, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !5063, file: !214, line: 683, baseType: !833, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !5063, file: !214, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !5063, file: !214, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !5063, file: !214, line: 690, baseType: !2890, size: 512, offset: 640)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5063, file: !214, line: 691, baseType: !568, size: 64, offset: 1152)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5063, file: !214, line: 692, baseType: !1013, size: 256, offset: 1216)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !5063, file: !214, line: 693, baseType: !74, size: 192, offset: 1472)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5063, file: !214, line: 694, baseType: !5090, size: 64, offset: 1664)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !5063, file: !214, line: 695, baseType: !69, size: 32, offset: 1728)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !5063, file: !214, line: 696, baseType: !69, size: 32, offset: 1760)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !5063, file: !214, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !5063, file: !214, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !5063, file: !214, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !5063, file: !214, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !5063, file: !214, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !5063, file: !214, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !5063, file: !214, line: 703, baseType: !833, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !5063, file: !214, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !5063, file: !214, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !5063, file: !214, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !5063, file: !214, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !5063, file: !214, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !5063, file: !214, line: 709, baseType: !7, size: 32, offset: 1824)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !5063, file: !214, line: 710, baseType: !213, size: 32, offset: 1856)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !5063, file: !214, line: 711, baseType: !221, size: 32, offset: 1888)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !5063, file: !214, line: 712, baseType: !221, size: 32, offset: 1920)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !5063, file: !214, line: 713, baseType: !42, size: 32, offset: 1952)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !5063, file: !214, line: 714, baseType: !42, size: 32, offset: 1984)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !5063, file: !214, line: 715, baseType: !568, size: 64, offset: 2048)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !5063, file: !214, line: 716, baseType: !568, size: 64, offset: 2112)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !5063, file: !214, line: 717, baseType: !568, size: 64, offset: 2176)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !5063, file: !214, line: 718, baseType: !568, size: 64, offset: 2240)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !5063, file: !214, line: 720, baseType: !5142, size: 64, offset: 2304)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !214, line: 632, size: 64, elements: !5144)
!5144 = !{!5145, !5146}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5143, file: !214, line: 633, baseType: !79, size: 32)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5143, file: !214, line: 634, baseType: !7, size: 32, offset: 32)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !5063, file: !214, line: 721, baseType: !5148, size: 64, offset: 2368)
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = !DISubroutineType(types: !5150)
!5150 = !{null, !2703, !749}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !5063, file: !214, line: 722, baseType: !5152, size: 64, offset: 2432)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !214, line: 722, flags: DIFlagFwdDecl)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !377, file: !207, line: 727, baseType: !5155, size: 64, offset: 4224)
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !214, line: 742, size: 1792, elements: !5157)
!5157 = !{!5158, !5159, !5160, !5164, !5165, !5166}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5156, file: !214, line: 743, baseType: !4953, size: 1472)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5156, file: !214, line: 744, baseType: !4956, size: 64, offset: 1472)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5156, file: !214, line: 745, baseType: !5161, size: 64, offset: 1536)
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5162 = !DISubroutineType(types: !5163)
!5163 = !{null, !2703, !833}
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !5156, file: !214, line: 746, baseType: !4956, size: 64, offset: 1600)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5156, file: !214, line: 747, baseType: !4947, size: 64, offset: 1664)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !5156, file: !214, line: 748, baseType: !4947, size: 64, offset: 1728)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !377, file: !207, line: 736, baseType: !5168, size: 128, offset: 4288)
!5168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !207, line: 529, size: 128, elements: !5169)
!5169 = !{!5170, !5174}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5168, file: !207, line: 531, baseType: !5171, size: 64)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !5173, line: 13, flags: DIFlagFwdDecl)
!5173 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5168, file: !207, line: 532, baseType: !5175, size: 64, offset: 64)
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5176 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !207, line: 49, flags: DIFlagFwdDecl)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !377, file: !207, line: 738, baseType: !5178, size: 64, offset: 4416)
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5179, size: 64)
!5179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5180)
!5180 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !207, line: 738, flags: DIFlagFwdDecl)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !377, file: !207, line: 740, baseType: !5182, size: 64, offset: 4480)
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !377, file: !207, line: 741, baseType: !568, size: 64, offset: 4544)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !377, file: !207, line: 746, baseType: !568, size: 64, offset: 4608)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !377, file: !207, line: 747, baseType: !5186, size: 64, offset: 4672)
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5187, size: 64)
!5187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5188)
!5188 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !207, line: 747, flags: DIFlagFwdDecl)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !377, file: !207, line: 749, baseType: !5190, size: 64, offset: 4736)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !207, line: 428, size: 128, elements: !5192)
!5192 = !{!5193, !5194, !5195}
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5191, file: !207, line: 433, baseType: !7, size: 32)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !5191, file: !207, line: 434, baseType: !7, size: 32, offset: 32)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !5191, file: !207, line: 435, baseType: !59, size: 64, offset: 64)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !377, file: !207, line: 751, baseType: !117, size: 128, offset: 4800)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !377, file: !207, line: 762, baseType: !5198, size: 64, offset: 4928)
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !207, line: 762, flags: DIFlagFwdDecl)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !377, file: !207, line: 770, baseType: !5201, offset: 4992)
!5201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !5202, line: 5, elements: !1042)
!5202 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !377, file: !207, line: 772, baseType: !5204, size: 64, offset: 4992)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !5206, line: 18, flags: DIFlagFwdDecl)
!5206 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !377, file: !207, line: 773, baseType: !5208, size: 64, offset: 5056)
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5209, size: 64)
!5209 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4985, line: 22, flags: DIFlagFwdDecl)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !377, file: !207, line: 776, baseType: !42, size: 32, offset: 5120)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !377, file: !207, line: 778, baseType: !651, size: 32, offset: 5152)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !377, file: !207, line: 779, baseType: !564, size: 32, offset: 5184)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !377, file: !207, line: 781, baseType: !79, size: 32, offset: 5216)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !377, file: !207, line: 782, baseType: !117, size: 128, offset: 5248)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !377, file: !207, line: 784, baseType: !5216, size: 64, offset: 5376)
!5216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5217, size: 64)
!5217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5218)
!5218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5219, line: 52, size: 768, elements: !5220)
!5219 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!5220 = !{!5221, !5222, !5223, !5224, !5225, !5229, !5233, !5234, !5235, !5236, !5240, !5244}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5218, file: !5219, line: 53, baseType: !36, size: 64)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5218, file: !5219, line: 55, baseType: !467, size: 64, offset: 64)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5218, file: !5219, line: 56, baseType: !467, size: 64, offset: 128)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5218, file: !5219, line: 58, baseType: !4936, size: 64, offset: 192)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5218, file: !5219, line: 59, baseType: !5226, size: 64, offset: 256)
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{!421, !4939, !4945}
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5218, file: !5219, line: 61, baseType: !5230, size: 64, offset: 320)
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{null, !5216}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5218, file: !5219, line: 62, baseType: !4947, size: 64, offset: 384)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5218, file: !5219, line: 64, baseType: !4956, size: 64, offset: 448)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5218, file: !5219, line: 66, baseType: !4884, size: 64, offset: 512)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5218, file: !5219, line: 67, baseType: !5237, size: 64, offset: 576)
!5237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5238, size: 64)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{!1980, !4939}
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5218, file: !5219, line: 69, baseType: !5241, size: 64, offset: 640)
!5241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5242, size: 64)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{null, !4939, !1597, !1598}
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5218, file: !5219, line: 71, baseType: !4951, size: 64, offset: 704)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !377, file: !207, line: 785, baseType: !467, size: 64, offset: 5440)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !377, file: !207, line: 787, baseType: !4947, size: 64, offset: 5504)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !377, file: !207, line: 788, baseType: !5248, size: 64, offset: 5568)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5249, size: 64)
!5249 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !207, line: 46, flags: DIFlagFwdDecl)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !377, file: !207, line: 789, baseType: !5251, size: 64, offset: 5632)
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5252, size: 64)
!5252 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !207, line: 48, flags: DIFlagFwdDecl)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !377, file: !207, line: 791, baseType: !5254, size: 64, offset: 5696)
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5255, size: 64)
!5255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !207, line: 597, size: 128, elements: !5256)
!5256 = !{!5257, !5258, !5259, !5260, !5261}
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !5255, file: !207, line: 598, baseType: !228, size: 32)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !5255, file: !207, line: 599, baseType: !237, size: 32, offset: 32)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !5255, file: !207, line: 600, baseType: !242, size: 32, offset: 64)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !5255, file: !207, line: 601, baseType: !833, size: 8, offset: 96)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !5255, file: !207, line: 602, baseType: !833, size: 8, offset: 104)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !377, file: !207, line: 793, baseType: !247, size: 32, offset: 5760)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !377, file: !207, line: 795, baseType: !833, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !377, file: !207, line: 796, baseType: !833, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !377, file: !207, line: 797, baseType: !833, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !377, file: !207, line: 798, baseType: !833, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !377, file: !207, line: 799, baseType: !833, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !374, file: !3, line: 81, baseType: !117, size: 128, offset: 5824)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !374, file: !3, line: 82, baseType: !7, size: 32, offset: 5952)
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5271, size: 64)
!5271 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !120)
!5272 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !45, line: 42, baseType: !59)
!5273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!5274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5275, size: 64)
!5275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !5276, line: 83, size: 5952, elements: !5277)
!5276 = !DIFile(filename: "./include/linux/node.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aadba8a92b553e495dcaa748506449be")
!5277 = !{!5278, !5279}
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5275, file: !5276, line: 84, baseType: !377, size: 5824)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "access_list", scope: !5275, file: !5276, line: 85, baseType: !117, size: 128, offset: 5824)
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node_attr", file: !3, line: 906, size: 320, elements: !5282)
!5282 = !{!5283, !5296}
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5281, file: !3, line: 907, baseType: !5284, size: 256)
!5284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !207, line: 106, size: 256, elements: !5285)
!5285 = !{!5286, !5287, !5292}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5284, file: !207, line: 107, baseType: !458, size: 128)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5284, file: !207, line: 108, baseType: !5288, size: 64, offset: 128)
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{!453, !2703, !5291, !421}
!5291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5284, file: !207, line: 110, baseType: !5293, size: 64, offset: 192)
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5294, size: 64)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{!453, !2703, !5291, !36, !55}
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5281, file: !3, line: 908, baseType: !253, size: 32, offset: 256)
!5297 = !{!5298, !5300, !5305, !5310, !5313, !0, !5318, !5323, !5326, !5328, !5331, !5333, !5335, !5340, !5343, !5345, !5348, !5350, !5352, !5357, !5362, !5364, !5366, !5371, !5373, !5375, !5378, !5381, !5384, !5386, !5389, !5391, !5393, !5396, !5398, !5400, !5402, !5404, !5406, !5408, !5410, !5412, !5415, !5417, !5419, !5424, !5426, !5428, !5433, !5436}
!5298 = !DIGlobalVariableExpression(var: !5299, expr: !DIExpression())
!5299 = distinct !DIGlobalVariable(scope: null, file: !3, line: 708, type: !3964, isLocal: true, isDefinition: true)
!5300 = !DIGlobalVariableExpression(var: !5301, expr: !DIExpression())
!5301 = distinct !DIGlobalVariable(scope: null, file: !3, line: 714, type: !5302, isLocal: true, isDefinition: true)
!5302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 88, elements: !5303)
!5303 = !{!5304}
!5304 = !DISubrange(count: 11)
!5305 = !DIGlobalVariableExpression(var: !5306, expr: !DIExpression())
!5306 = distinct !DIGlobalVariable(scope: null, file: !3, line: 967, type: !5307, isLocal: true, isDefinition: true)
!5307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 312, elements: !5308)
!5308 = !{!5309}
!5309 = !DISubrange(count: 39)
!5310 = !DIGlobalVariableExpression(var: !5311, expr: !DIExpression())
!5311 = distinct !DIGlobalVariable(scope: null, file: !3, line: 967, type: !5312, isLocal: true, isDefinition: true)
!5312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 112, elements: !3406)
!5313 = !DIGlobalVariableExpression(var: !5314, expr: !DIExpression())
!5314 = distinct !DIGlobalVariable(scope: null, file: !3, line: 976, type: !5315, isLocal: true, isDefinition: true)
!5315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 232, elements: !5316)
!5316 = !{!5317}
!5317 = !DISubrange(count: 29)
!5318 = !DIGlobalVariableExpression(var: !5319, expr: !DIExpression())
!5319 = distinct !DIGlobalVariable(scope: null, file: !3, line: 147, type: !5320, isLocal: true, isDefinition: true)
!5320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 72, elements: !5321)
!5321 = !{!5322}
!5322 = !DISubrange(count: 9)
!5323 = !DIGlobalVariableExpression(var: !5324, expr: !DIExpression())
!5324 = distinct !DIGlobalVariable(name: "node_access_node_groups", scope: !2, file: !3, line: 107, type: !5325, isLocal: true, isDefinition: true)
!5325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 192, elements: !422)
!5326 = !DIGlobalVariableExpression(var: !5327, expr: !DIExpression())
!5327 = distinct !DIGlobalVariable(name: "initiators", scope: !2, file: !3, line: 97, type: !469, isLocal: true, isDefinition: true)
!5328 = !DIGlobalVariableExpression(var: !5329, expr: !DIExpression())
!5329 = distinct !DIGlobalVariable(name: "node_init_access_node_attrs", scope: !2, file: !3, line: 89, type: !5330, isLocal: true, isDefinition: true)
!5330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 64, elements: !371)
!5331 = !DIGlobalVariableExpression(var: !5332, expr: !DIExpression())
!5332 = distinct !DIGlobalVariable(name: "targets", scope: !2, file: !3, line: 102, type: !469, isLocal: true, isDefinition: true)
!5333 = !DIGlobalVariableExpression(var: !5334, expr: !DIExpression())
!5334 = distinct !DIGlobalVariable(name: "node_targ_access_node_attrs", scope: !2, file: !3, line: 93, type: !5330, isLocal: true, isDefinition: true)
!5335 = !DIGlobalVariableExpression(var: !5336, expr: !DIExpression())
!5336 = distinct !DIGlobalVariable(scope: null, file: !270, line: 480, type: !5337, isLocal: true, isDefinition: true)
!5337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 168, elements: !5338)
!5338 = !{!5339}
!5339 = !DISubrange(count: 21)
!5340 = !DIGlobalVariableExpression(var: !5341, expr: !DIExpression())
!5341 = distinct !DIGlobalVariable(name: "node_dev_groups", scope: !2, file: !3, line: 591, type: !5342, isLocal: true, isDefinition: true)
!5342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 128, elements: !872)
!5343 = !DIGlobalVariableExpression(var: !5344, expr: !DIExpression())
!5344 = distinct !DIGlobalVariable(name: "node_dev_group", scope: !2, file: !3, line: 586, type: !469, isLocal: true, isDefinition: true)
!5345 = !DIGlobalVariableExpression(var: !5346, expr: !DIExpression())
!5346 = distinct !DIGlobalVariable(name: "node_dev_attrs", scope: !2, file: !3, line: 572, type: !5347, isLocal: true, isDefinition: true)
!5347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 320, elements: !1524)
!5348 = !DIGlobalVariableExpression(var: !5349, expr: !DIExpression())
!5349 = distinct !DIGlobalVariable(scope: null, file: !3, line: 493, type: !3964, isLocal: true, isDefinition: true)
!5350 = !DIGlobalVariableExpression(var: !5351, expr: !DIExpression())
!5351 = distinct !DIGlobalVariable(name: "dev_attr_meminfo", scope: !2, file: !3, line: 493, type: !5284, isLocal: true, isDefinition: true)
!5352 = !DIGlobalVariableExpression(var: !5353, expr: !DIExpression())
!5353 = distinct !DIGlobalVariable(scope: null, file: !3, line: 386, type: !5354, isLocal: true, isDefinition: true)
!5354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 3080, elements: !5355)
!5355 = !{!5356}
!5356 = !DISubrange(count: 385)
!5357 = !DIGlobalVariableExpression(var: !5358, expr: !DIExpression())
!5358 = distinct !DIGlobalVariable(scope: null, file: !3, line: 425, type: !5359, isLocal: true, isDefinition: true)
!5359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 4104, elements: !5360)
!5360 = !{!5361}
!5361 = !DISubrange(count: 513)
!5362 = !DIGlobalVariableExpression(var: !5363, expr: !DIExpression())
!5363 = distinct !DIGlobalVariable(scope: null, file: !3, line: 513, type: !5320, isLocal: true, isDefinition: true)
!5364 = !DIGlobalVariableExpression(var: !5365, expr: !DIExpression())
!5365 = distinct !DIGlobalVariable(name: "dev_attr_numastat", scope: !2, file: !3, line: 513, type: !5284, isLocal: true, isDefinition: true)
!5366 = !DIGlobalVariableExpression(var: !5367, expr: !DIExpression())
!5367 = distinct !DIGlobalVariable(scope: null, file: !3, line: 500, type: !5368, isLocal: true, isDefinition: true)
!5368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 752, elements: !5369)
!5369 = !{!5370}
!5370 = !DISubrange(count: 94)
!5371 = !DIGlobalVariableExpression(var: !5372, expr: !DIExpression())
!5372 = distinct !DIGlobalVariable(scope: null, file: !3, line: 570, type: !5320, isLocal: true, isDefinition: true)
!5373 = !DIGlobalVariableExpression(var: !5374, expr: !DIExpression())
!5374 = distinct !DIGlobalVariable(name: "dev_attr_distance", scope: !2, file: !3, line: 570, type: !5284, isLocal: true, isDefinition: true)
!5375 = !DIGlobalVariableExpression(var: !5376, expr: !DIExpression())
!5376 = distinct !DIGlobalVariable(scope: null, file: !3, line: 563, type: !5377, isLocal: true, isDefinition: true)
!5377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 40, elements: !1524)
!5378 = !DIGlobalVariableExpression(var: !5379, expr: !DIExpression())
!5379 = distinct !DIGlobalVariable(scope: null, file: !3, line: 564, type: !5380, isLocal: true, isDefinition: true)
!5380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 16, elements: !872)
!5381 = !DIGlobalVariableExpression(var: !5382, expr: !DIExpression())
!5382 = distinct !DIGlobalVariable(scope: null, file: !3, line: 564, type: !5383, isLocal: true, isDefinition: true)
!5383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 8, elements: !371)
!5384 = !DIGlobalVariableExpression(var: !5385, expr: !DIExpression())
!5385 = distinct !DIGlobalVariable(scope: null, file: !3, line: 567, type: !5380, isLocal: true, isDefinition: true)
!5386 = !DIGlobalVariableExpression(var: !5387, expr: !DIExpression())
!5387 = distinct !DIGlobalVariable(scope: null, file: !3, line: 547, type: !5388, isLocal: true, isDefinition: true)
!5388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 56, elements: !874)
!5389 = !DIGlobalVariableExpression(var: !5390, expr: !DIExpression())
!5390 = distinct !DIGlobalVariable(name: "dev_attr_vmstat", scope: !2, file: !3, line: 547, type: !5284, isLocal: true, isDefinition: true)
!5391 = !DIGlobalVariableExpression(var: !5392, expr: !DIExpression())
!5392 = distinct !DIGlobalVariable(scope: null, file: !3, line: 524, type: !3964, isLocal: true, isDefinition: true)
!5393 = !DIGlobalVariableExpression(var: !5394, expr: !DIExpression())
!5394 = distinct !DIGlobalVariable(name: "node_dev_bin_attrs", scope: !2, file: !3, line: 580, type: !5395, isLocal: true, isDefinition: true)
!5395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, size: 192, elements: !422)
!5396 = !DIGlobalVariableExpression(var: !5397, expr: !DIExpression())
!5397 = distinct !DIGlobalVariable(scope: null, file: !3, line: 48, type: !5388, isLocal: true, isDefinition: true)
!5398 = !DIGlobalVariableExpression(var: !5399, expr: !DIExpression())
!5399 = distinct !DIGlobalVariable(name: "bin_attr_cpumap", scope: !2, file: !3, line: 48, type: !482, isLocal: true, isDefinition: true)
!5400 = !DIGlobalVariableExpression(var: !5401, expr: !DIExpression())
!5401 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !3964, isLocal: true, isDefinition: true)
!5402 = !DIGlobalVariableExpression(var: !5403, expr: !DIExpression())
!5403 = distinct !DIGlobalVariable(name: "bin_attr_cpulist", scope: !2, file: !3, line: 69, type: !482, isLocal: true, isDefinition: true)
!5404 = !DIGlobalVariableExpression(var: !5405, expr: !DIExpression())
!5405 = distinct !DIGlobalVariable(scope: null, file: !3, line: 25, type: !5377, isLocal: true, isDefinition: true)
!5406 = !DIGlobalVariableExpression(var: !5407, expr: !DIExpression())
!5407 = distinct !DIGlobalVariable(name: "node_subsys", scope: !2, file: !3, line: 24, type: !4984, isLocal: true, isDefinition: true)
!5408 = !DIGlobalVariableExpression(var: !5409, expr: !DIExpression())
!5409 = distinct !DIGlobalVariable(name: "cpu_root_attr_groups", scope: !2, file: !3, line: 953, type: !5342, isLocal: true, isDefinition: true)
!5410 = !DIGlobalVariableExpression(var: !5411, expr: !DIExpression())
!5411 = distinct !DIGlobalVariable(name: "memory_root_attr_group", scope: !2, file: !3, line: 949, type: !469, isLocal: true, isDefinition: true)
!5412 = !DIGlobalVariableExpression(var: !5413, expr: !DIExpression())
!5413 = distinct !DIGlobalVariable(name: "node_state_attrs", scope: !2, file: !3, line: 936, type: !5414, isLocal: true, isDefinition: true)
!5414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 448, elements: !874)
!5415 = !DIGlobalVariableExpression(var: !5416, expr: !DIExpression())
!5416 = distinct !DIGlobalVariable(scope: null, file: !3, line: 924, type: !5320, isLocal: true, isDefinition: true)
!5417 = !DIGlobalVariableExpression(var: !5418, expr: !DIExpression())
!5418 = distinct !DIGlobalVariable(scope: null, file: !3, line: 925, type: !5388, isLocal: true, isDefinition: true)
!5419 = !DIGlobalVariableExpression(var: !5420, expr: !DIExpression())
!5420 = distinct !DIGlobalVariable(scope: null, file: !3, line: 926, type: !5421, isLocal: true, isDefinition: true)
!5421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 144, elements: !5422)
!5422 = !{!5423}
!5423 = !DISubrange(count: 18)
!5424 = !DIGlobalVariableExpression(var: !5425, expr: !DIExpression())
!5425 = distinct !DIGlobalVariable(scope: null, file: !3, line: 930, type: !5302, isLocal: true, isDefinition: true)
!5426 = !DIGlobalVariableExpression(var: !5427, expr: !DIExpression())
!5427 = distinct !DIGlobalVariable(scope: null, file: !3, line: 931, type: !3964, isLocal: true, isDefinition: true)
!5428 = !DIGlobalVariableExpression(var: !5429, expr: !DIExpression())
!5429 = distinct !DIGlobalVariable(scope: null, file: !3, line: 932, type: !5430, isLocal: true, isDefinition: true)
!5430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 176, elements: !5431)
!5431 = !{!5432}
!5432 = !DISubrange(count: 22)
!5433 = !DIGlobalVariableExpression(var: !5434, expr: !DIExpression())
!5434 = distinct !DIGlobalVariable(name: "node_state_attr", scope: !2, file: !3, line: 923, type: !5435, isLocal: true, isDefinition: true)
!5435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5281, size: 1920, elements: !1412)
!5436 = !DIGlobalVariableExpression(var: !5437, expr: !DIExpression())
!5437 = distinct !DIGlobalVariable(scope: null, file: !3, line: 916, type: !5388, isLocal: true, isDefinition: true)
!5438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5274, size: 4096, elements: !426)
!5439 = !{i32 7, !"Dwarf Version", i32 5}
!5440 = !{i32 2, !"Debug Info Version", i32 3}
!5441 = !{i32 1, !"wchar_size", i32 2}
!5442 = !{i32 8, !"cf-protection-branch", i32 1}
!5443 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5444 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5445 = !{i32 1, !"Code Model", i32 2}
!5446 = !{i32 1, !"override-stack-alignment", i32 8}
!5447 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5448 = distinct !DISubprogram(name: "unregister_node", scope: !3, file: !3, line: 640, type: !5449, scopeLine: 641, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5451)
!5449 = !DISubroutineType(types: !5450)
!5450 = !{null, !5274}
!5451 = !{!5452}
!5452 = !DILocalVariable(name: "node", arg: 1, scope: !5448, file: !3, line: 640, type: !5274)
!5453 = !DILocation(line: 640, column: 35, scope: !5448)
!5454 = !DILocation(line: 642, column: 26, scope: !5448)
!5455 = !DILocation(line: 642, column: 2, scope: !5448)
!5456 = !DILocation(line: 643, column: 29, scope: !5448)
!5457 = !DILocation(line: 643, column: 2, scope: !5448)
!5458 = !DILocation(line: 644, column: 23, scope: !5448)
!5459 = !DILocation(line: 644, column: 2, scope: !5448)
!5460 = !DILocation(line: 645, column: 21, scope: !5448)
!5461 = !DILocation(line: 645, column: 2, scope: !5448)
!5462 = !DILocation(line: 646, column: 21, scope: !5448)
!5463 = !DILocation(line: 646, column: 27, scope: !5448)
!5464 = !DILocation(line: 646, column: 2, scope: !5448)
!5465 = !DILocation(line: 647, column: 1, scope: !5448)
!5466 = !DISubprogram(name: "hugetlb_unregister_node", scope: !5467, file: !5467, line: 1030, type: !5449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5467 = !DIFile(filename: "./include/linux/hugetlb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb3875c3ba49a7a26cb8998ef59b94dc")
!5468 = !DISubprogram(name: "compaction_unregister_node", scope: !5469, file: !5469, line: 138, type: !5449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5469 = !DIFile(filename: "./include/linux/compaction.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "749a05fa830a884a94f8ded732d459b6")
!5470 = distinct !DISubprogram(name: "node_remove_accesses", scope: !3, file: !3, line: 113, type: !5449, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5471)
!5471 = !{!5472, !5473, !5474, !5475, !5478, !5480}
!5472 = !DILocalVariable(name: "node", arg: 1, scope: !5470, file: !3, line: 113, type: !5274)
!5473 = !DILocalVariable(name: "c", scope: !5470, file: !3, line: 115, type: !373)
!5474 = !DILocalVariable(name: "cnext", scope: !5470, file: !3, line: 115, type: !373)
!5475 = !DILocalVariable(name: "__mptr", scope: !5476, file: !3, line: 117, type: !40)
!5476 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 117, column: 2)
!5477 = distinct !DILexicalBlock(scope: !5470, file: !3, line: 117, column: 2)
!5478 = !DILocalVariable(name: "__mptr", scope: !5479, file: !3, line: 117, type: !40)
!5479 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 117, column: 2)
!5480 = !DILocalVariable(name: "__mptr", scope: !5481, file: !3, line: 117, type: !40)
!5481 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 117, column: 2)
!5482 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 117, column: 2)
!5483 = !DILocation(line: 113, column: 47, scope: !5470)
!5484 = !DILocation(line: 115, column: 2, scope: !5470)
!5485 = !DILocation(line: 115, column: 28, scope: !5470)
!5486 = !DILocation(line: 115, column: 32, scope: !5470)
!5487 = !DILocation(line: 117, column: 2, scope: !5476)
!5488 = !DILocation(line: 117, column: 2, scope: !5477)
!5489 = !DILocation(line: 117, column: 2, scope: !5479)
!5490 = !DILocation(line: 117, column: 2, scope: !5482)
!5491 = !DILocation(line: 118, column: 13, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 117, column: 68)
!5493 = !DILocation(line: 118, column: 16, scope: !5492)
!5494 = !DILocation(line: 118, column: 3, scope: !5492)
!5495 = !DILocation(line: 119, column: 22, scope: !5492)
!5496 = !DILocation(line: 119, column: 25, scope: !5492)
!5497 = !DILocation(line: 119, column: 3, scope: !5492)
!5498 = !DILocation(line: 120, column: 2, scope: !5492)
!5499 = !DILocation(line: 117, column: 2, scope: !5481)
!5500 = distinct !{!5500, !5488, !5501, !5502, !5503}
!5501 = !DILocation(line: 120, column: 2, scope: !5477)
!5502 = !{!"llvm.loop.mustprogress"}
!5503 = !{!"llvm.loop.unroll.disable"}
!5504 = !DILocation(line: 121, column: 1, scope: !5470)
!5505 = distinct !DISubprogram(name: "node_remove_caches", scope: !3, file: !3, line: 365, type: !5449, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5506)
!5506 = !{!5507}
!5507 = !DILocalVariable(name: "node", arg: 1, scope: !5505, file: !3, line: 365, type: !5274)
!5508 = !DILocation(line: 365, column: 45, scope: !5505)
!5509 = !DILocation(line: 365, column: 53, scope: !5505)
!5510 = !DISubprogram(name: "device_unregister", scope: !207, file: !207, line: 1055, type: !4948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5511 = distinct !DISubprogram(name: "register_cpu_under_node", scope: !3, file: !3, line: 654, type: !5512, scopeLine: 655, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5514)
!5512 = !DISubroutineType(types: !5513)
!5513 = !{!42, !7, !7}
!5514 = !{!5515, !5516, !5517, !5518}
!5515 = !DILocalVariable(name: "cpu", arg: 1, scope: !5511, file: !3, line: 654, type: !7)
!5516 = !DILocalVariable(name: "nid", arg: 2, scope: !5511, file: !3, line: 654, type: !7)
!5517 = !DILocalVariable(name: "ret", scope: !5511, file: !3, line: 656, type: !42)
!5518 = !DILocalVariable(name: "obj", scope: !5511, file: !3, line: 657, type: !2703)
!5519 = !DILocation(line: 654, column: 42, scope: !5511)
!5520 = !DILocation(line: 654, column: 60, scope: !5511)
!5521 = !DILocation(line: 656, column: 2, scope: !5511)
!5522 = !DILocation(line: 656, column: 6, scope: !5511)
!5523 = !DILocation(line: 657, column: 2, scope: !5511)
!5524 = !DILocation(line: 657, column: 17, scope: !5511)
!5525 = !DILocation(line: 659, column: 7, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 659, column: 6)
!5527 = !DILocation(line: 659, column: 6, scope: !5511)
!5528 = !DILocation(line: 660, column: 3, scope: !5526)
!5529 = !DILocation(line: 662, column: 23, scope: !5511)
!5530 = !DILocation(line: 662, column: 8, scope: !5511)
!5531 = !DILocation(line: 662, column: 6, scope: !5511)
!5532 = !DILocation(line: 663, column: 7, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 663, column: 6)
!5534 = !DILocation(line: 663, column: 6, scope: !5511)
!5535 = !DILocation(line: 664, column: 3, scope: !5533)
!5536 = !DILocation(line: 666, column: 40, scope: !5511)
!5537 = !DILocation(line: 666, column: 27, scope: !5511)
!5538 = !DILocation(line: 666, column: 46, scope: !5511)
!5539 = !DILocation(line: 666, column: 50, scope: !5511)
!5540 = !DILocation(line: 667, column: 6, scope: !5511)
!5541 = !DILocation(line: 667, column: 11, scope: !5511)
!5542 = !DILocation(line: 668, column: 19, scope: !5511)
!5543 = !DILocation(line: 668, column: 24, scope: !5511)
!5544 = !DILocation(line: 668, column: 5, scope: !5511)
!5545 = !DILocation(line: 666, column: 8, scope: !5511)
!5546 = !DILocation(line: 666, column: 6, scope: !5511)
!5547 = !DILocation(line: 669, column: 6, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 669, column: 6)
!5549 = !DILocation(line: 669, column: 6, scope: !5511)
!5550 = !DILocation(line: 670, column: 10, scope: !5548)
!5551 = !DILocation(line: 670, column: 3, scope: !5548)
!5552 = !DILocation(line: 672, column: 28, scope: !5511)
!5553 = !DILocation(line: 672, column: 33, scope: !5511)
!5554 = !DILocation(line: 673, column: 20, scope: !5511)
!5555 = !DILocation(line: 673, column: 7, scope: !5511)
!5556 = !DILocation(line: 673, column: 26, scope: !5511)
!5557 = !DILocation(line: 673, column: 30, scope: !5511)
!5558 = !DILocation(line: 674, column: 33, scope: !5511)
!5559 = !DILocation(line: 674, column: 20, scope: !5511)
!5560 = !DILocation(line: 674, column: 39, scope: !5511)
!5561 = !DILocation(line: 674, column: 43, scope: !5511)
!5562 = !DILocation(line: 674, column: 6, scope: !5511)
!5563 = !DILocation(line: 672, column: 9, scope: !5511)
!5564 = !DILocation(line: 672, column: 2, scope: !5511)
!5565 = !DILocation(line: 675, column: 1, scope: !5511)
!5566 = distinct !DISubprogram(name: "node_state", scope: !254, file: !254, line: 421, type: !5567, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5569)
!5567 = !DISubroutineType(types: !5568)
!5568 = !{!42, !42, !253}
!5569 = !{!5570, !5571}
!5570 = !DILocalVariable(name: "node", arg: 1, scope: !5566, file: !254, line: 421, type: !42)
!5571 = !DILocalVariable(name: "state", arg: 2, scope: !5566, file: !254, line: 421, type: !253)
!5572 = !DILocation(line: 421, column: 34, scope: !5566)
!5573 = !DILocation(line: 421, column: 57, scope: !5566)
!5574 = !DILocation(line: 423, column: 9, scope: !5566)
!5575 = !DILocation(line: 423, column: 2, scope: !5566)
!5576 = !DISubprogram(name: "get_cpu_device", scope: !5577, file: !5577, line: 39, type: !5578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5577 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!5578 = !DISubroutineType(types: !5579)
!5579 = !{!2703, !7}
!5580 = !DISubprogram(name: "sysfs_create_link", scope: !447, file: !447, line: 293, type: !5581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5581 = !DISubroutineType(types: !5582)
!5582 = !{!42, !386, !386, !36}
!5583 = distinct !DISubprogram(name: "kobject_name", scope: !381, file: !381, line: 87, type: !409, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5584)
!5584 = !{!5585}
!5585 = !DILocalVariable(name: "kobj", arg: 1, scope: !5583, file: !381, line: 87, type: !404)
!5586 = !DILocation(line: 87, column: 62, scope: !5583)
!5587 = !DILocation(line: 89, column: 9, scope: !5583)
!5588 = !DILocation(line: 89, column: 15, scope: !5583)
!5589 = !DILocation(line: 89, column: 2, scope: !5583)
!5590 = distinct !DISubprogram(name: "register_memory_node_under_compute_node", scope: !3, file: !3, line: 690, type: !5591, scopeLine: 693, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5593)
!5591 = !DISubroutineType(types: !5592)
!5592 = !{!42, !7, !7, !7}
!5593 = !{!5594, !5595, !5596, !5597, !5598, !5599, !5600, !5601, !5602}
!5594 = !DILocalVariable(name: "mem_nid", arg: 1, scope: !5590, file: !3, line: 690, type: !7)
!5595 = !DILocalVariable(name: "cpu_nid", arg: 2, scope: !5590, file: !3, line: 691, type: !7)
!5596 = !DILocalVariable(name: "access", arg: 3, scope: !5590, file: !3, line: 692, type: !7)
!5597 = !DILocalVariable(name: "init_node", scope: !5590, file: !3, line: 694, type: !5274)
!5598 = !DILocalVariable(name: "targ_node", scope: !5590, file: !3, line: 694, type: !5274)
!5599 = !DILocalVariable(name: "initiator", scope: !5590, file: !3, line: 695, type: !373)
!5600 = !DILocalVariable(name: "target", scope: !5590, file: !3, line: 695, type: !373)
!5601 = !DILocalVariable(name: "ret", scope: !5590, file: !3, line: 696, type: !42)
!5602 = !DILabel(scope: !5590, name: "err", file: !3, line: 721)
!5603 = !DILocation(line: 690, column: 58, scope: !5590)
!5604 = !DILocation(line: 691, column: 23, scope: !5590)
!5605 = !DILocation(line: 692, column: 23, scope: !5590)
!5606 = !DILocation(line: 694, column: 2, scope: !5590)
!5607 = !DILocation(line: 694, column: 15, scope: !5590)
!5608 = !DILocation(line: 694, column: 27, scope: !5590)
!5609 = !DILocation(line: 695, column: 2, scope: !5590)
!5610 = !DILocation(line: 695, column: 28, scope: !5590)
!5611 = !DILocation(line: 695, column: 40, scope: !5590)
!5612 = !DILocation(line: 696, column: 2, scope: !5590)
!5613 = !DILocation(line: 696, column: 6, scope: !5590)
!5614 = !DILocation(line: 698, column: 7, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5590, file: !3, line: 698, column: 6)
!5616 = !DILocation(line: 698, column: 28, scope: !5615)
!5617 = !DILocation(line: 698, column: 32, scope: !5615)
!5618 = !DILocation(line: 698, column: 6, scope: !5590)
!5619 = !DILocation(line: 699, column: 3, scope: !5615)
!5620 = !DILocation(line: 701, column: 27, scope: !5590)
!5621 = !DILocation(line: 701, column: 14, scope: !5590)
!5622 = !DILocation(line: 701, column: 12, scope: !5590)
!5623 = !DILocation(line: 702, column: 27, scope: !5590)
!5624 = !DILocation(line: 702, column: 14, scope: !5590)
!5625 = !DILocation(line: 702, column: 12, scope: !5590)
!5626 = !DILocation(line: 703, column: 36, scope: !5590)
!5627 = !DILocation(line: 703, column: 47, scope: !5590)
!5628 = !DILocation(line: 703, column: 14, scope: !5590)
!5629 = !DILocation(line: 703, column: 12, scope: !5590)
!5630 = !DILocation(line: 704, column: 33, scope: !5590)
!5631 = !DILocation(line: 704, column: 44, scope: !5590)
!5632 = !DILocation(line: 704, column: 11, scope: !5590)
!5633 = !DILocation(line: 704, column: 9, scope: !5590)
!5634 = !DILocation(line: 705, column: 7, scope: !5635)
!5635 = distinct !DILexicalBlock(scope: !5590, file: !3, line: 705, column: 6)
!5636 = !DILocation(line: 705, column: 17, scope: !5635)
!5637 = !DILocation(line: 705, column: 21, scope: !5635)
!5638 = !DILocation(line: 705, column: 6, scope: !5590)
!5639 = !DILocation(line: 706, column: 3, scope: !5635)
!5640 = !DILocation(line: 708, column: 33, scope: !5590)
!5641 = !DILocation(line: 708, column: 44, scope: !5590)
!5642 = !DILocation(line: 708, column: 48, scope: !5590)
!5643 = !DILocation(line: 709, column: 12, scope: !5590)
!5644 = !DILocation(line: 709, column: 23, scope: !5590)
!5645 = !DILocation(line: 709, column: 27, scope: !5590)
!5646 = !DILocation(line: 710, column: 21, scope: !5590)
!5647 = !DILocation(line: 710, column: 32, scope: !5590)
!5648 = !DILocation(line: 710, column: 11, scope: !5590)
!5649 = !DILocation(line: 708, column: 8, scope: !5590)
!5650 = !DILocation(line: 708, column: 6, scope: !5590)
!5651 = !DILocation(line: 711, column: 6, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5590, file: !3, line: 711, column: 6)
!5653 = !DILocation(line: 711, column: 6, scope: !5590)
!5654 = !DILocation(line: 712, column: 10, scope: !5652)
!5655 = !DILocation(line: 712, column: 3, scope: !5652)
!5656 = !DILocation(line: 714, column: 33, scope: !5590)
!5657 = !DILocation(line: 714, column: 41, scope: !5590)
!5658 = !DILocation(line: 714, column: 45, scope: !5590)
!5659 = !DILocation(line: 715, column: 12, scope: !5590)
!5660 = !DILocation(line: 715, column: 23, scope: !5590)
!5661 = !DILocation(line: 715, column: 27, scope: !5590)
!5662 = !DILocation(line: 716, column: 21, scope: !5590)
!5663 = !DILocation(line: 716, column: 32, scope: !5590)
!5664 = !DILocation(line: 716, column: 11, scope: !5590)
!5665 = !DILocation(line: 714, column: 8, scope: !5590)
!5666 = !DILocation(line: 714, column: 6, scope: !5590)
!5667 = !DILocation(line: 717, column: 6, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5590, file: !3, line: 717, column: 6)
!5669 = !DILocation(line: 717, column: 6, scope: !5590)
!5670 = !DILocation(line: 718, column: 3, scope: !5668)
!5671 = !DILocation(line: 720, column: 2, scope: !5590)
!5672 = !DILocation(line: 721, column: 2, scope: !5590)
!5673 = !DILocation(line: 722, column: 32, scope: !5590)
!5674 = !DILocation(line: 722, column: 43, scope: !5590)
!5675 = !DILocation(line: 722, column: 47, scope: !5590)
!5676 = !DILocation(line: 723, column: 20, scope: !5590)
!5677 = !DILocation(line: 723, column: 31, scope: !5590)
!5678 = !DILocation(line: 723, column: 10, scope: !5590)
!5679 = !DILocation(line: 722, column: 2, scope: !5590)
!5680 = !DILocation(line: 724, column: 9, scope: !5590)
!5681 = !DILocation(line: 724, column: 2, scope: !5590)
!5682 = !DILocation(line: 725, column: 1, scope: !5590)
!5683 = distinct !DISubprogram(name: "node_init_node_access", scope: !3, file: !3, line: 128, type: !5684, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5686)
!5684 = !DISubroutineType(types: !5685)
!5685 = !{!373, !5274, !7}
!5686 = !{!5687, !5688, !5689, !5690, !5691, !5694, !5697, !5698}
!5687 = !DILocalVariable(name: "node", arg: 1, scope: !5683, file: !3, line: 128, type: !5274)
!5688 = !DILocalVariable(name: "access", arg: 2, scope: !5683, file: !3, line: 129, type: !7)
!5689 = !DILocalVariable(name: "access_node", scope: !5683, file: !3, line: 131, type: !373)
!5690 = !DILocalVariable(name: "dev", scope: !5683, file: !3, line: 132, type: !2703)
!5691 = !DILocalVariable(name: "__mptr", scope: !5692, file: !3, line: 134, type: !40)
!5692 = distinct !DILexicalBlock(scope: !5693, file: !3, line: 134, column: 2)
!5693 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 134, column: 2)
!5694 = !DILocalVariable(name: "__mptr", scope: !5695, file: !3, line: 134, type: !40)
!5695 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 134, column: 2)
!5696 = distinct !DILexicalBlock(scope: !5693, file: !3, line: 134, column: 2)
!5697 = !DILabel(scope: !5683, name: "free_name", file: !3, line: 156)
!5698 = !DILabel(scope: !5683, name: "free", file: !3, line: 158)
!5699 = !DILocation(line: 128, column: 69, scope: !5683)
!5700 = !DILocation(line: 129, column: 27, scope: !5683)
!5701 = !DILocation(line: 131, column: 2, scope: !5683)
!5702 = !DILocation(line: 131, column: 28, scope: !5683)
!5703 = !DILocation(line: 132, column: 2, scope: !5683)
!5704 = !DILocation(line: 132, column: 17, scope: !5683)
!5705 = !DILocation(line: 134, column: 2, scope: !5692)
!5706 = !DILocation(line: 134, column: 2, scope: !5693)
!5707 = !DILocation(line: 134, column: 2, scope: !5696)
!5708 = !DILocation(line: 135, column: 7, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 135, column: 7)
!5710 = !DILocation(line: 135, column: 20, scope: !5709)
!5711 = !DILocation(line: 135, column: 30, scope: !5709)
!5712 = !DILocation(line: 135, column: 27, scope: !5709)
!5713 = !DILocation(line: 135, column: 7, scope: !5696)
!5714 = !DILocation(line: 136, column: 11, scope: !5709)
!5715 = !DILocation(line: 136, column: 4, scope: !5709)
!5716 = !DILocation(line: 134, column: 2, scope: !5695)
!5717 = distinct !{!5717, !5706, !5718, !5502, !5503}
!5718 = !DILocation(line: 136, column: 11, scope: !5693)
!5719 = !DILocation(line: 138, column: 16, scope: !5683)
!5720 = !DILocation(line: 138, column: 14, scope: !5683)
!5721 = !DILocation(line: 139, column: 7, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 139, column: 6)
!5723 = !DILocation(line: 139, column: 6, scope: !5683)
!5724 = !DILocation(line: 140, column: 3, scope: !5722)
!5725 = !DILocation(line: 142, column: 24, scope: !5683)
!5726 = !DILocation(line: 142, column: 2, scope: !5683)
!5727 = !DILocation(line: 142, column: 15, scope: !5683)
!5728 = !DILocation(line: 142, column: 22, scope: !5683)
!5729 = !DILocation(line: 143, column: 9, scope: !5683)
!5730 = !DILocation(line: 143, column: 22, scope: !5683)
!5731 = !DILocation(line: 143, column: 6, scope: !5683)
!5732 = !DILocation(line: 144, column: 17, scope: !5683)
!5733 = !DILocation(line: 144, column: 23, scope: !5683)
!5734 = !DILocation(line: 144, column: 2, scope: !5683)
!5735 = !DILocation(line: 144, column: 7, scope: !5683)
!5736 = !DILocation(line: 144, column: 14, scope: !5683)
!5737 = !DILocation(line: 145, column: 2, scope: !5683)
!5738 = !DILocation(line: 145, column: 7, scope: !5683)
!5739 = !DILocation(line: 145, column: 15, scope: !5683)
!5740 = !DILocation(line: 146, column: 2, scope: !5683)
!5741 = !DILocation(line: 146, column: 7, scope: !5683)
!5742 = !DILocation(line: 146, column: 14, scope: !5683)
!5743 = !DILocation(line: 147, column: 19, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 147, column: 6)
!5745 = !DILocation(line: 147, column: 36, scope: !5744)
!5746 = !DILocation(line: 147, column: 6, scope: !5744)
!5747 = !DILocation(line: 147, column: 6, scope: !5683)
!5748 = !DILocation(line: 148, column: 3, scope: !5744)
!5749 = !DILocation(line: 150, column: 22, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 150, column: 6)
!5751 = !DILocation(line: 150, column: 6, scope: !5750)
!5752 = !DILocation(line: 150, column: 6, scope: !5683)
!5753 = !DILocation(line: 151, column: 3, scope: !5750)
!5754 = !DILocation(line: 153, column: 26, scope: !5683)
!5755 = !DILocation(line: 153, column: 2, scope: !5683)
!5756 = !DILocation(line: 154, column: 17, scope: !5683)
!5757 = !DILocation(line: 154, column: 30, scope: !5683)
!5758 = !DILocation(line: 154, column: 42, scope: !5683)
!5759 = !DILocation(line: 154, column: 48, scope: !5683)
!5760 = !DILocation(line: 154, column: 2, scope: !5683)
!5761 = !DILocation(line: 155, column: 9, scope: !5683)
!5762 = !DILocation(line: 155, column: 2, scope: !5683)
!5763 = !DILocation(line: 156, column: 1, scope: !5683)
!5764 = !DILocation(line: 157, column: 14, scope: !5683)
!5765 = !DILocation(line: 157, column: 19, scope: !5683)
!5766 = !DILocation(line: 157, column: 24, scope: !5683)
!5767 = !DILocation(line: 157, column: 2, scope: !5683)
!5768 = !DILocation(line: 158, column: 1, scope: !5683)
!5769 = !DILocation(line: 159, column: 8, scope: !5683)
!5770 = !DILocation(line: 159, column: 2, scope: !5683)
!5771 = !DILocation(line: 160, column: 2, scope: !5683)
!5772 = !DILocation(line: 161, column: 1, scope: !5683)
!5773 = !DISubprogram(name: "sysfs_add_link_to_group", scope: !447, file: !447, line: 327, type: !5774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5774 = !DISubroutineType(types: !5775)
!5775 = !{!42, !386, !36, !386, !36}
!5776 = distinct !DISubprogram(name: "dev_name", scope: !207, file: !207, line: 858, type: !5777, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5779)
!5777 = !DISubroutineType(types: !5778)
!5778 = !{!36, !4939}
!5779 = !{!5780}
!5780 = !DILocalVariable(name: "dev", arg: 1, scope: !5776, file: !207, line: 858, type: !4939)
!5781 = !DILocation(line: 858, column: 57, scope: !5776)
!5782 = !DILocation(line: 861, column: 6, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5776, file: !207, line: 861, column: 6)
!5784 = !DILocation(line: 861, column: 11, scope: !5783)
!5785 = !DILocation(line: 861, column: 6, scope: !5776)
!5786 = !DILocation(line: 862, column: 10, scope: !5783)
!5787 = !DILocation(line: 862, column: 15, scope: !5783)
!5788 = !DILocation(line: 862, column: 3, scope: !5783)
!5789 = !DILocation(line: 864, column: 23, scope: !5776)
!5790 = !DILocation(line: 864, column: 28, scope: !5776)
!5791 = !DILocation(line: 864, column: 9, scope: !5776)
!5792 = !DILocation(line: 864, column: 2, scope: !5776)
!5793 = !DILocation(line: 865, column: 1, scope: !5776)
!5794 = !DISubprogram(name: "sysfs_remove_link_from_group", scope: !447, file: !447, line: 329, type: !5795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5795 = !DISubroutineType(types: !5796)
!5796 = !{null, !386, !36, !36}
!5797 = distinct !DISubprogram(name: "unregister_cpu_under_node", scope: !3, file: !3, line: 727, type: !5512, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5798)
!5798 = !{!5799, !5800, !5801}
!5799 = !DILocalVariable(name: "cpu", arg: 1, scope: !5797, file: !3, line: 727, type: !7)
!5800 = !DILocalVariable(name: "nid", arg: 2, scope: !5797, file: !3, line: 727, type: !7)
!5801 = !DILocalVariable(name: "obj", scope: !5797, file: !3, line: 729, type: !2703)
!5802 = !DILocation(line: 727, column: 44, scope: !5797)
!5803 = !DILocation(line: 727, column: 62, scope: !5797)
!5804 = !DILocation(line: 729, column: 2, scope: !5797)
!5805 = !DILocation(line: 729, column: 17, scope: !5797)
!5806 = !DILocation(line: 731, column: 7, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5797, file: !3, line: 731, column: 6)
!5808 = !DILocation(line: 731, column: 6, scope: !5797)
!5809 = !DILocation(line: 732, column: 3, scope: !5807)
!5810 = !DILocation(line: 734, column: 23, scope: !5797)
!5811 = !DILocation(line: 734, column: 8, scope: !5797)
!5812 = !DILocation(line: 734, column: 6, scope: !5797)
!5813 = !DILocation(line: 735, column: 7, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5797, file: !3, line: 735, column: 6)
!5815 = !DILocation(line: 735, column: 6, scope: !5797)
!5816 = !DILocation(line: 736, column: 3, scope: !5814)
!5817 = !DILocation(line: 738, column: 34, scope: !5797)
!5818 = !DILocation(line: 738, column: 21, scope: !5797)
!5819 = !DILocation(line: 738, column: 40, scope: !5797)
!5820 = !DILocation(line: 738, column: 44, scope: !5797)
!5821 = !DILocation(line: 739, column: 20, scope: !5797)
!5822 = !DILocation(line: 739, column: 25, scope: !5797)
!5823 = !DILocation(line: 739, column: 6, scope: !5797)
!5824 = !DILocation(line: 738, column: 2, scope: !5797)
!5825 = !DILocation(line: 740, column: 21, scope: !5797)
!5826 = !DILocation(line: 740, column: 26, scope: !5797)
!5827 = !DILocation(line: 741, column: 33, scope: !5797)
!5828 = !DILocation(line: 741, column: 20, scope: !5797)
!5829 = !DILocation(line: 741, column: 39, scope: !5797)
!5830 = !DILocation(line: 741, column: 43, scope: !5797)
!5831 = !DILocation(line: 741, column: 6, scope: !5797)
!5832 = !DILocation(line: 740, column: 2, scope: !5797)
!5833 = !DILocation(line: 743, column: 2, scope: !5797)
!5834 = !DILocation(line: 744, column: 1, scope: !5797)
!5835 = !DISubprogram(name: "sysfs_remove_link", scope: !447, file: !447, line: 298, type: !5836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5836 = !DISubroutineType(types: !5837)
!5837 = !{null, !386, !36}
!5838 = distinct !DISubprogram(name: "__register_one_node", scope: !3, file: !3, line: 867, type: !2315, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5839)
!5839 = !{!5840, !5841, !5842, !5843}
!5840 = !DILocalVariable(name: "nid", arg: 1, scope: !5838, file: !3, line: 867, type: !42)
!5841 = !DILocalVariable(name: "error", scope: !5838, file: !3, line: 869, type: !42)
!5842 = !DILocalVariable(name: "cpu", scope: !5838, file: !3, line: 870, type: !42)
!5843 = !DILocalVariable(name: "node", scope: !5838, file: !3, line: 871, type: !5274)
!5844 = !DILocation(line: 867, column: 29, scope: !5838)
!5845 = !DILocation(line: 869, column: 2, scope: !5838)
!5846 = !DILocation(line: 869, column: 6, scope: !5838)
!5847 = !DILocation(line: 870, column: 2, scope: !5838)
!5848 = !DILocation(line: 870, column: 6, scope: !5838)
!5849 = !DILocation(line: 871, column: 2, scope: !5838)
!5850 = !DILocation(line: 871, column: 15, scope: !5838)
!5851 = !DILocation(line: 873, column: 9, scope: !5838)
!5852 = !DILocation(line: 873, column: 7, scope: !5838)
!5853 = !DILocation(line: 874, column: 7, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 874, column: 6)
!5855 = !DILocation(line: 874, column: 6, scope: !5838)
!5856 = !DILocation(line: 875, column: 3, scope: !5854)
!5857 = !DILocation(line: 877, column: 18, scope: !5838)
!5858 = !DILocation(line: 877, column: 24, scope: !5838)
!5859 = !DILocation(line: 877, column: 2, scope: !5838)
!5860 = !DILocation(line: 878, column: 22, scope: !5838)
!5861 = !DILocation(line: 878, column: 15, scope: !5838)
!5862 = !DILocation(line: 878, column: 2, scope: !5838)
!5863 = !DILocation(line: 878, column: 20, scope: !5838)
!5864 = !DILocation(line: 880, column: 37, scope: !5838)
!5865 = !DILocation(line: 880, column: 24, scope: !5838)
!5866 = !DILocation(line: 880, column: 43, scope: !5838)
!5867 = !DILocation(line: 880, column: 10, scope: !5838)
!5868 = !DILocation(line: 880, column: 8, scope: !5838)
!5869 = !DILocation(line: 883, column: 2, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 883, column: 2)
!5871 = !DILocation(line: 883, column: 2, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5870, file: !3, line: 883, column: 2)
!5873 = !DILocation(line: 884, column: 19, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 884, column: 7)
!5875 = distinct !DILexicalBlock(scope: !5872, file: !3, line: 883, column: 28)
!5876 = !DILocation(line: 884, column: 7, scope: !5874)
!5877 = !DILocation(line: 884, column: 27, scope: !5874)
!5878 = !DILocation(line: 884, column: 24, scope: !5874)
!5879 = !DILocation(line: 884, column: 7, scope: !5875)
!5880 = !DILocation(line: 885, column: 28, scope: !5874)
!5881 = !DILocation(line: 885, column: 33, scope: !5874)
!5882 = !DILocation(line: 885, column: 4, scope: !5874)
!5883 = !DILocation(line: 886, column: 2, scope: !5875)
!5884 = distinct !{!5884, !5869, !5885, !5502, !5503}
!5885 = !DILocation(line: 886, column: 2, scope: !5870)
!5886 = !DILocation(line: 888, column: 19, scope: !5838)
!5887 = !DILocation(line: 888, column: 2, scope: !5838)
!5888 = !DILocation(line: 890, column: 9, scope: !5838)
!5889 = !DILocation(line: 890, column: 2, scope: !5838)
!5890 = !DILocation(line: 891, column: 1, scope: !5838)
!5891 = distinct !DISubprogram(name: "kzalloc", scope: !270, file: !270, line: 719, type: !5892, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5894)
!5892 = !DISubroutineType(types: !5893)
!5893 = !{!40, !55, !363}
!5894 = !{!5895, !5896}
!5895 = !DILocalVariable(name: "size", arg: 1, scope: !5891, file: !270, line: 719, type: !55)
!5896 = !DILocalVariable(name: "flags", arg: 2, scope: !5891, file: !270, line: 719, type: !363)
!5897 = !DILocation(line: 719, column: 52, scope: !5891)
!5898 = !DILocation(line: 719, column: 64, scope: !5891)
!5899 = !DILocation(line: 721, column: 17, scope: !5891)
!5900 = !DILocation(line: 721, column: 23, scope: !5891)
!5901 = !DILocation(line: 721, column: 29, scope: !5891)
!5902 = !DILocation(line: 721, column: 9, scope: !5891)
!5903 = !DILocation(line: 721, column: 2, scope: !5891)
!5904 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5905, file: !5905, line: 35, type: !5906, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5908)
!5905 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5906 = !DISubroutineType(types: !5907)
!5907 = !{null, !120}
!5908 = !{!5909}
!5909 = !DILocalVariable(name: "list", arg: 1, scope: !5904, file: !5905, line: 35, type: !120)
!5910 = !DILocation(line: 35, column: 53, scope: !5904)
!5911 = !DILocation(line: 37, column: 2, scope: !5904)
!5912 = !DILocation(line: 37, column: 2, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5904, file: !5905, line: 37, column: 2)
!5914 = !DILocation(line: 37, column: 2, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5913, file: !5905, line: 37, column: 2)
!5916 = !DILocation(line: 37, column: 2, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5913, file: !5905, line: 37, column: 2)
!5918 = !DILocation(line: 38, column: 2, scope: !5904)
!5919 = !DILocation(line: 38, column: 2, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5904, file: !5905, line: 38, column: 2)
!5921 = !DILocation(line: 38, column: 2, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5920, file: !5905, line: 38, column: 2)
!5923 = !DILocation(line: 38, column: 2, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5920, file: !5905, line: 38, column: 2)
!5925 = !DILocation(line: 39, column: 1, scope: !5904)
!5926 = distinct !DISubprogram(name: "register_node", scope: !3, file: !3, line: 613, type: !5927, scopeLine: 614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5929)
!5927 = !DISubroutineType(types: !5928)
!5928 = !{!42, !5274, !42}
!5929 = !{!5930, !5931, !5932}
!5930 = !DILocalVariable(name: "node", arg: 1, scope: !5926, file: !3, line: 613, type: !5274)
!5931 = !DILocalVariable(name: "num", arg: 2, scope: !5926, file: !3, line: 613, type: !42)
!5932 = !DILocalVariable(name: "error", scope: !5926, file: !3, line: 615, type: !42)
!5933 = !DILocation(line: 613, column: 39, scope: !5926)
!5934 = !DILocation(line: 613, column: 49, scope: !5926)
!5935 = !DILocation(line: 615, column: 2, scope: !5926)
!5936 = !DILocation(line: 615, column: 6, scope: !5926)
!5937 = !DILocation(line: 617, column: 17, scope: !5926)
!5938 = !DILocation(line: 617, column: 2, scope: !5926)
!5939 = !DILocation(line: 617, column: 8, scope: !5926)
!5940 = !DILocation(line: 617, column: 12, scope: !5926)
!5941 = !DILocation(line: 617, column: 15, scope: !5926)
!5942 = !DILocation(line: 618, column: 2, scope: !5926)
!5943 = !DILocation(line: 618, column: 8, scope: !5926)
!5944 = !DILocation(line: 618, column: 12, scope: !5926)
!5945 = !DILocation(line: 618, column: 16, scope: !5926)
!5946 = !DILocation(line: 619, column: 2, scope: !5926)
!5947 = !DILocation(line: 619, column: 8, scope: !5926)
!5948 = !DILocation(line: 619, column: 12, scope: !5926)
!5949 = !DILocation(line: 619, column: 20, scope: !5926)
!5950 = !DILocation(line: 620, column: 2, scope: !5926)
!5951 = !DILocation(line: 620, column: 8, scope: !5926)
!5952 = !DILocation(line: 620, column: 12, scope: !5926)
!5953 = !DILocation(line: 620, column: 19, scope: !5926)
!5954 = !DILocation(line: 621, column: 27, scope: !5926)
!5955 = !DILocation(line: 621, column: 33, scope: !5926)
!5956 = !DILocation(line: 621, column: 10, scope: !5926)
!5957 = !DILocation(line: 621, column: 8, scope: !5926)
!5958 = !DILocation(line: 623, column: 6, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 623, column: 6)
!5960 = !DILocation(line: 623, column: 6, scope: !5926)
!5961 = !DILocation(line: 624, column: 15, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5959, file: !3, line: 623, column: 13)
!5963 = !DILocation(line: 624, column: 21, scope: !5962)
!5964 = !DILocation(line: 624, column: 3, scope: !5962)
!5965 = !DILocation(line: 625, column: 2, scope: !5962)
!5966 = !DILocation(line: 626, column: 25, scope: !5967)
!5967 = distinct !DILexicalBlock(scope: !5959, file: !3, line: 625, column: 9)
!5968 = !DILocation(line: 626, column: 3, scope: !5967)
!5969 = !DILocation(line: 627, column: 28, scope: !5967)
!5970 = !DILocation(line: 627, column: 3, scope: !5967)
!5971 = !DILocation(line: 630, column: 9, scope: !5926)
!5972 = !DILocation(line: 631, column: 1, scope: !5926)
!5973 = !DILocation(line: 630, column: 2, scope: !5926)
!5974 = distinct !DISubprogram(name: "find_next_bit", scope: !5975, file: !5975, line: 54, type: !5976, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5978)
!5975 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!5976 = !DISubroutineType(types: !5977)
!5977 = !{!59, !5273, !59, !59}
!5978 = !{!5979, !5980, !5981, !5982}
!5979 = !DILocalVariable(name: "addr", arg: 1, scope: !5974, file: !5975, line: 54, type: !5273)
!5980 = !DILocalVariable(name: "size", arg: 2, scope: !5974, file: !5975, line: 54, type: !59)
!5981 = !DILocalVariable(name: "offset", arg: 3, scope: !5974, file: !5975, line: 55, type: !59)
!5982 = !DILocalVariable(name: "val", scope: !5983, file: !5975, line: 58, type: !59)
!5983 = distinct !DILexicalBlock(scope: !5984, file: !5975, line: 57, column: 31)
!5984 = distinct !DILexicalBlock(scope: !5974, file: !5975, line: 57, column: 6)
!5985 = !DILocation(line: 54, column: 50, scope: !5974)
!5986 = !DILocation(line: 54, column: 70, scope: !5974)
!5987 = !DILocation(line: 55, column: 22, scope: !5974)
!5988 = !DILocation(line: 57, column: 6, scope: !5984)
!5989 = !DILocation(line: 57, column: 6, scope: !5974)
!5990 = !DILocation(line: 58, column: 3, scope: !5983)
!5991 = !DILocation(line: 58, column: 17, scope: !5983)
!5992 = !DILocation(line: 60, column: 7, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5983, file: !5975, line: 60, column: 7)
!5994 = !DILocation(line: 60, column: 7, scope: !5983)
!5995 = !DILocation(line: 61, column: 11, scope: !5993)
!5996 = !DILocation(line: 61, column: 4, scope: !5993)
!5997 = !DILocation(line: 63, column: 10, scope: !5983)
!5998 = !DILocation(line: 63, column: 9, scope: !5983)
!5999 = !DILocation(line: 63, column: 17, scope: !5983)
!6000 = !DILocation(line: 63, column: 15, scope: !5983)
!6001 = !DILocation(line: 63, column: 7, scope: !5983)
!6002 = !DILocation(line: 64, column: 10, scope: !5983)
!6003 = !DILocation(line: 64, column: 16, scope: !5983)
!6004 = !DILocation(line: 64, column: 29, scope: !5983)
!6005 = !DILocation(line: 64, column: 3, scope: !5983)
!6006 = !DILocation(line: 65, column: 2, scope: !5984)
!6007 = !DILocation(line: 67, column: 24, scope: !5974)
!6008 = !DILocation(line: 67, column: 30, scope: !5974)
!6009 = !DILocation(line: 67, column: 36, scope: !5974)
!6010 = !DILocation(line: 67, column: 9, scope: !5974)
!6011 = !DILocation(line: 67, column: 2, scope: !5974)
!6012 = !DILocation(line: 68, column: 1, scope: !5974)
!6013 = distinct !DISubprogram(name: "cpu_to_node", scope: !6014, file: !6014, line: 94, type: !2315, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6015)
!6014 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc15680d35900f366282ea60d185adfa")
!6015 = !{!6016, !6017, !6020}
!6016 = !DILocalVariable(name: "cpu", arg: 1, scope: !6013, file: !6014, line: 94, type: !42)
!6017 = !DILocalVariable(name: "__vpp_verify", scope: !6018, file: !6014, line: 96, type: !1980)
!6018 = distinct !DILexicalBlock(scope: !6019, file: !6014, line: 96, column: 9)
!6019 = distinct !DILexicalBlock(scope: !6013, file: !6014, line: 96, column: 9)
!6020 = !DILocalVariable(name: "__ptr", scope: !6021, file: !6014, line: 96, type: !59)
!6021 = distinct !DILexicalBlock(scope: !6019, file: !6014, line: 96, column: 9)
!6022 = !DILocation(line: 94, column: 35, scope: !6013)
!6023 = !DILocation(line: 96, column: 9, scope: !6019)
!6024 = !DILocation(line: 96, column: 9, scope: !6018)
!6025 = !DILocation(line: 96, column: 9, scope: !6021)
!6026 = !DILocation(line: 96, column: 9, scope: !6013)
!6027 = !DILocation(line: 96, column: 2, scope: !6013)
!6028 = distinct !DISubprogram(name: "node_init_caches", scope: !3, file: !3, line: 364, type: !6029, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6031)
!6029 = !DISubroutineType(types: !6030)
!6030 = !{null, !7}
!6031 = !{!6032}
!6032 = !DILocalVariable(name: "nid", arg: 1, scope: !6028, file: !3, line: 364, type: !7)
!6033 = !DILocation(line: 364, column: 43, scope: !6028)
!6034 = !DILocation(line: 364, column: 50, scope: !6028)
!6035 = distinct !DISubprogram(name: "unregister_one_node", scope: !3, file: !3, line: 893, type: !3827, scopeLine: 894, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6036)
!6036 = !{!6037}
!6037 = !DILocalVariable(name: "nid", arg: 1, scope: !6035, file: !3, line: 893, type: !42)
!6038 = !DILocation(line: 893, column: 30, scope: !6035)
!6039 = !DILocation(line: 895, column: 20, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 895, column: 6)
!6041 = !DILocation(line: 895, column: 7, scope: !6040)
!6042 = !DILocation(line: 895, column: 6, scope: !6035)
!6043 = !DILocation(line: 896, column: 3, scope: !6040)
!6044 = !DILocation(line: 898, column: 31, scope: !6035)
!6045 = !DILocation(line: 898, column: 18, scope: !6035)
!6046 = !DILocation(line: 898, column: 2, scope: !6035)
!6047 = !DILocation(line: 899, column: 15, scope: !6035)
!6048 = !DILocation(line: 899, column: 2, scope: !6035)
!6049 = !DILocation(line: 899, column: 20, scope: !6035)
!6050 = !DILocation(line: 900, column: 1, scope: !6035)
!6051 = distinct !DISubprogram(name: "node_dev_init", scope: !3, file: !3, line: 958, type: !1118, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6052)
!6052 = !{!6053, !6054}
!6053 = !DILocalVariable(name: "ret", scope: !6051, file: !3, line: 960, type: !42)
!6054 = !DILocalVariable(name: "i", scope: !6051, file: !3, line: 960, type: !42)
!6055 = !DILocation(line: 960, column: 2, scope: !6051)
!6056 = !DILocation(line: 960, column: 6, scope: !6051)
!6057 = !DILocation(line: 960, column: 11, scope: !6051)
!6058 = !DILocation(line: 962, column: 3, scope: !6051)
!6059 = !DILocation(line: 962, column: 3, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6051, file: !3, line: 962, column: 3)
!6061 = !DILocation(line: 963, column: 3, scope: !6051)
!6062 = !DILocation(line: 963, column: 3, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !6051, file: !3, line: 963, column: 3)
!6064 = !DILocation(line: 965, column: 8, scope: !6051)
!6065 = !DILocation(line: 965, column: 6, scope: !6051)
!6066 = !DILocation(line: 966, column: 6, scope: !6067)
!6067 = distinct !DILexicalBlock(scope: !6051, file: !3, line: 966, column: 6)
!6068 = !DILocation(line: 966, column: 6, scope: !6051)
!6069 = !DILocation(line: 967, column: 62, scope: !6067)
!6070 = !DILocation(line: 967, column: 3, scope: !6067)
!6071 = !DILocation(line: 973, column: 2, scope: !6072)
!6072 = distinct !DILexicalBlock(scope: !6051, file: !3, line: 973, column: 2)
!6073 = !DILocation(line: 973, column: 2, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6072, file: !3, line: 973, column: 2)
!6075 = !DILocation(line: 974, column: 27, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !6074, file: !3, line: 973, column: 26)
!6077 = !DILocation(line: 974, column: 9, scope: !6076)
!6078 = !DILocation(line: 974, column: 7, scope: !6076)
!6079 = !DILocation(line: 975, column: 7, scope: !6080)
!6080 = distinct !DILexicalBlock(scope: !6076, file: !3, line: 975, column: 7)
!6081 = !DILocation(line: 975, column: 7, scope: !6076)
!6082 = !DILocation(line: 976, column: 53, scope: !6080)
!6083 = !DILocation(line: 976, column: 4, scope: !6080)
!6084 = !DILocation(line: 977, column: 2, scope: !6076)
!6085 = distinct !{!6085, !6071, !6086, !5502, !5503}
!6086 = !DILocation(line: 977, column: 2, scope: !6072)
!6087 = !DILocation(line: 978, column: 1, scope: !6051)
!6088 = !DISubprogram(name: "subsys_system_register", scope: !207, file: !207, line: 75, type: !6089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6089 = !DISubroutineType(types: !6090)
!6090 = !{!42, !6091, !467}
!6091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!6092 = !DISubprogram(name: "panic", scope: !6093, file: !6093, line: 12, type: !6094, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6093 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!6094 = !DISubroutineType(types: !6095)
!6095 = !{null, !36, null}
!6096 = distinct !DISubprogram(name: "__first_node", scope: !254, file: !254, line: 264, type: !6097, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6101)
!6097 = !DISubroutineType(types: !6098)
!6098 = !{!7, !6099}
!6099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6100, size: 64)
!6100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2105)
!6101 = !{!6102, !6103, !6105}
!6102 = !DILocalVariable(name: "srcp", arg: 1, scope: !6096, file: !254, line: 264, type: !6099)
!6103 = !DILocalVariable(name: "__UNIQUE_ID___x98", scope: !6104, file: !254, line: 266, type: !7)
!6104 = distinct !DILexicalBlock(scope: !6096, file: !254, line: 266, column: 9)
!6105 = !DILocalVariable(name: "__UNIQUE_ID___y99", scope: !6104, file: !254, line: 266, type: !7)
!6106 = !DILocation(line: 264, column: 59, scope: !6096)
!6107 = !DILocation(line: 266, column: 9, scope: !6104)
!6108 = !DILocation(line: 266, column: 9, scope: !6096)
!6109 = !DILocation(line: 266, column: 2, scope: !6096)
!6110 = distinct !DISubprogram(name: "register_one_node", scope: !5276, file: !5276, line: 114, type: !2315, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6111)
!6111 = !{!6112, !6113, !6114, !6254, !6255}
!6112 = !DILocalVariable(name: "nid", arg: 1, scope: !6110, file: !5276, line: 114, type: !42)
!6113 = !DILocalVariable(name: "error", scope: !6110, file: !5276, line: 116, type: !42)
!6114 = !DILocalVariable(name: "pgdat", scope: !6115, file: !5276, line: 119, type: !6117)
!6115 = distinct !DILexicalBlock(scope: !6116, file: !5276, line: 118, column: 24)
!6116 = distinct !DILexicalBlock(scope: !6110, file: !5276, line: 118, column: 6)
!6117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6118, size: 64)
!6118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pglist_data", file: !280, line: 1266, size: 112128, elements: !6119)
!6119 = !{!6120, !6190, !6203, !6204, !6205, !6206, !6207, !6208, !6209, !6210, !6212, !6213, !6214, !6215, !6216, !6217, !6218, !6219, !6220, !6221, !6222, !6223, !6224, !6225, !6226, !6227, !6238, !6239, !6240, !6249, !6251}
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "node_zones", scope: !6118, file: !280, line: 1272, baseType: !6121, size: 38912, align: 512)
!6121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6122, size: 38912, align: 512, elements: !983)
!6122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zone", file: !280, line: 815, size: 9728, align: 512, elements: !6123)
!6123 = !{!6124, !6125, !6126, !6127, !6128, !6129, !6130, !6142, !6151, !6152, !6153, !6154, !6155, !6156, !6157, !6158, !6159, !6165, !6172, !6173, !6174, !6175, !6176, !6177, !6179, !6180, !6181, !6182, !6183, !6184, !6185, !6186, !6187, !6188}
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "_watermark", scope: !6122, file: !280, line: 819, baseType: !986, size: 256)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "watermark_boost", scope: !6122, file: !280, line: 820, baseType: !59, size: 64, offset: 256)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_highatomic", scope: !6122, file: !280, line: 822, baseType: !59, size: 64, offset: 320)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "lowmem_reserve", scope: !6122, file: !280, line: 833, baseType: !989, size: 256, offset: 384)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6122, file: !280, line: 836, baseType: !42, size: 32, offset: 640)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "zone_pgdat", scope: !6122, file: !280, line: 838, baseType: !6117, size: 64, offset: 704)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_pageset", scope: !6122, file: !280, line: 839, baseType: !6131, size: 64, offset: 768)
!6131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6132, size: 64)
!6132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_pages", file: !280, line: 684, size: 2048, align: 512, elements: !6133)
!6133 = !{!6134, !6135, !6136, !6137, !6138, !6139, !6140}
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6132, file: !280, line: 685, baseType: !79, size: 32)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !6132, file: !280, line: 686, baseType: !42, size: 32, offset: 32)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !6132, file: !280, line: 687, baseType: !42, size: 32, offset: 64)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !6132, file: !280, line: 688, baseType: !42, size: 32, offset: 96)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "free_factor", scope: !6132, file: !280, line: 689, baseType: !891, size: 16, offset: 128)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !6132, file: !280, line: 691, baseType: !891, size: 16, offset: 144)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !6132, file: !280, line: 695, baseType: !6141, size: 1536, offset: 192)
!6141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 1536, elements: !4277)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_zonestats", scope: !6122, file: !280, line: 840, baseType: !6143, size: 64, offset: 832)
!6143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6144, size: 64)
!6144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_zonestat", file: !280, line: 698, size: 512, elements: !6145)
!6145 = !{!6146, !6148, !6149}
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat_diff", scope: !6144, file: !280, line: 700, baseType: !6147, size: 80)
!6147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 80, elements: !1628)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "stat_threshold", scope: !6144, file: !280, line: 701, baseType: !802, size: 8, offset: 80)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "vm_numa_event", scope: !6144, file: !280, line: 709, baseType: !6150, size: 384, offset: 128)
!6150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 384, elements: !1412)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "pageset_high", scope: !6122, file: !280, line: 845, baseType: !42, size: 32, offset: 896)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "pageset_batch", scope: !6122, file: !280, line: 846, baseType: !42, size: 32, offset: 928)
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "zone_start_pfn", scope: !6122, file: !280, line: 857, baseType: !59, size: 64, offset: 960)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "managed_pages", scope: !6122, file: !280, line: 901, baseType: !757, size: 64, offset: 1024)
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "spanned_pages", scope: !6122, file: !280, line: 902, baseType: !59, size: 64, offset: 1088)
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "present_pages", scope: !6122, file: !280, line: 903, baseType: !59, size: 64, offset: 1152)
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6122, file: !280, line: 911, baseType: !36, size: 64, offset: 1216)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !6122, file: !280, line: 927, baseType: !42, size: 32, offset: 1280)
!6159 = !DIDerivedType(tag: DW_TAG_member, name: "_pad1_", scope: !6122, file: !280, line: 930, baseType: !6160, align: 512, offset: 1536)
!6160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cacheline_padding", file: !6161, line: 93, align: 512, elements: !6162)
!6161 = !DIFile(filename: "./include/linux/cache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "599edcbe9a1f0cbc1eddd4ed9f4096ef")
!6162 = !{!6163}
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !6160, file: !6161, line: 94, baseType: !6164)
!6164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, elements: !3378)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "free_area", scope: !6122, file: !280, line: 933, baseType: !6166, size: 6336, offset: 1536)
!6166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6167, size: 6336, elements: !5303)
!6167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "free_area", file: !280, line: 113, size: 576, elements: !6168)
!6168 = !{!6169, !6171}
!6169 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !6167, file: !280, line: 114, baseType: !6170, size: 512)
!6170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 512, elements: !983)
!6171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_free", scope: !6167, file: !280, line: 115, baseType: !59, size: 64, offset: 512)
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6122, file: !280, line: 941, baseType: !59, size: 64, offset: 7872)
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6122, file: !280, line: 944, baseType: !79, size: 32, offset: 7936)
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2_", scope: !6122, file: !280, line: 947, baseType: !6160, align: 512, offset: 8192)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_drift_mark", scope: !6122, file: !280, line: 954, baseType: !59, size: 64, offset: 8192)
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "compact_cached_free_pfn", scope: !6122, file: !280, line: 958, baseType: !59, size: 64, offset: 8256)
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "compact_cached_migrate_pfn", scope: !6122, file: !280, line: 960, baseType: !6178, size: 128, offset: 8320)
!6178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 128, elements: !872)
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "compact_init_migrate_pfn", scope: !6122, file: !280, line: 961, baseType: !59, size: 64, offset: 8448)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "compact_init_free_pfn", scope: !6122, file: !280, line: 962, baseType: !59, size: 64, offset: 8512)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "compact_considered", scope: !6122, file: !280, line: 972, baseType: !7, size: 32, offset: 8576)
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "compact_defer_shift", scope: !6122, file: !280, line: 973, baseType: !7, size: 32, offset: 8608)
!6183 = !DIDerivedType(tag: DW_TAG_member, name: "compact_order_failed", scope: !6122, file: !280, line: 974, baseType: !42, size: 32, offset: 8640)
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "compact_blockskip_flush", scope: !6122, file: !280, line: 979, baseType: !833, size: 8, offset: 8672)
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "contiguous", scope: !6122, file: !280, line: 982, baseType: !833, size: 8, offset: 8680)
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "_pad3_", scope: !6122, file: !280, line: 984, baseType: !6160, align: 512, offset: 8704)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat", scope: !6122, file: !280, line: 986, baseType: !1627, size: 640, offset: 8704)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "vm_numa_event", scope: !6122, file: !280, line: 987, baseType: !6189, size: 384, offset: 9344)
!6189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !757, size: 384, elements: !1412)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "node_zonelists", scope: !6118, file: !280, line: 1279, baseType: !6191, size: 65792, offset: 38912)
!6191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6192, size: 65792, elements: !872)
!6192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zonelist", file: !280, line: 1214, size: 32896, elements: !6193)
!6193 = !{!6194}
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "_zonerefs", scope: !6192, file: !280, line: 1215, baseType: !6195, size: 32896)
!6195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6196, size: 32896, elements: !6201)
!6196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zoneref", file: !280, line: 1195, size: 128, elements: !6197)
!6197 = !{!6198, !6200}
!6198 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !6196, file: !280, line: 1196, baseType: !6199, size: 64)
!6199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6122, size: 64)
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "zone_idx", scope: !6196, file: !280, line: 1197, baseType: !42, size: 32, offset: 64)
!6201 = !{!6202}
!6202 = !DISubrange(count: 257)
!6203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_zones", scope: !6118, file: !280, line: 1281, baseType: !42, size: 32, offset: 104704)
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "node_start_pfn", scope: !6118, file: !280, line: 1303, baseType: !59, size: 64, offset: 104768)
!6205 = !DIDerivedType(tag: DW_TAG_member, name: "node_present_pages", scope: !6118, file: !280, line: 1304, baseType: !59, size: 64, offset: 104832)
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "node_spanned_pages", scope: !6118, file: !280, line: 1305, baseType: !59, size: 64, offset: 104896)
!6207 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !6118, file: !280, line: 1307, baseType: !42, size: 32, offset: 104960)
!6208 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_wait", scope: !6118, file: !280, line: 1308, baseType: !74, size: 192, offset: 105024)
!6209 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc_wait", scope: !6118, file: !280, line: 1309, baseType: !74, size: 192, offset: 105216)
!6210 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_wait", scope: !6118, file: !280, line: 1312, baseType: !6211, size: 768, offset: 105408)
!6211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 768, elements: !983)
!6212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_writeback_throttled", scope: !6118, file: !280, line: 1314, baseType: !69, size: 32, offset: 106176)
!6213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reclaim_start", scope: !6118, file: !280, line: 1315, baseType: !59, size: 64, offset: 106240)
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd", scope: !6118, file: !280, line: 1320, baseType: !2779, size: 64, offset: 106304)
!6215 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_order", scope: !6118, file: !280, line: 1321, baseType: !42, size: 32, offset: 106368)
!6216 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_highest_zoneidx", scope: !6118, file: !280, line: 1322, baseType: !279, size: 32, offset: 106400)
!6217 = !DIDerivedType(tag: DW_TAG_member, name: "kswapd_failures", scope: !6118, file: !280, line: 1324, baseType: !42, size: 32, offset: 106432)
!6218 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_max_order", scope: !6118, file: !280, line: 1327, baseType: !42, size: 32, offset: 106464)
!6219 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_highest_zoneidx", scope: !6118, file: !280, line: 1328, baseType: !279, size: 32, offset: 106496)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd_wait", scope: !6118, file: !280, line: 1329, baseType: !74, size: 192, offset: 106560)
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "kcompactd", scope: !6118, file: !280, line: 1330, baseType: !2779, size: 64, offset: 106752)
!6222 = !DIDerivedType(tag: DW_TAG_member, name: "proactive_compact_trigger", scope: !6118, file: !280, line: 1331, baseType: !833, size: 8, offset: 106816)
!6223 = !DIDerivedType(tag: DW_TAG_member, name: "totalreserve_pages", scope: !6118, file: !280, line: 1337, baseType: !59, size: 64, offset: 106880)
!6224 = !DIDerivedType(tag: DW_TAG_member, name: "min_unmapped_pages", scope: !6118, file: !280, line: 1343, baseType: !59, size: 64, offset: 106944)
!6225 = !DIDerivedType(tag: DW_TAG_member, name: "min_slab_pages", scope: !6118, file: !280, line: 1344, baseType: !59, size: 64, offset: 107008)
!6226 = !DIDerivedType(tag: DW_TAG_member, name: "_pad1_", scope: !6118, file: !280, line: 1348, baseType: !6160, align: 512, offset: 107520)
!6227 = !DIDerivedType(tag: DW_TAG_member, name: "__lruvec", scope: !6118, file: !280, line: 1384, baseType: !6228, size: 1088, offset: 107520)
!6228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lruvec", file: !280, line: 620, size: 1088, elements: !6229)
!6229 = !{!6230, !6232, !6233, !6234, !6235, !6236, !6237}
!6230 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !6228, file: !280, line: 621, baseType: !6231, size: 640)
!6231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 640, elements: !1524)
!6232 = !DIDerivedType(tag: DW_TAG_member, name: "lru_lock", scope: !6228, file: !280, line: 623, baseType: !79, size: 32, offset: 640)
!6233 = !DIDerivedType(tag: DW_TAG_member, name: "anon_cost", scope: !6228, file: !280, line: 629, baseType: !59, size: 64, offset: 704)
!6234 = !DIDerivedType(tag: DW_TAG_member, name: "file_cost", scope: !6228, file: !280, line: 630, baseType: !59, size: 64, offset: 768)
!6235 = !DIDerivedType(tag: DW_TAG_member, name: "nonresident_age", scope: !6228, file: !280, line: 632, baseType: !757, size: 64, offset: 832)
!6236 = !DIDerivedType(tag: DW_TAG_member, name: "refaults", scope: !6228, file: !280, line: 634, baseType: !6178, size: 128, offset: 896)
!6237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6228, file: !280, line: 636, baseType: !59, size: 64, offset: 1024)
!6238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6118, file: !280, line: 1386, baseType: !59, size: 64, offset: 108608)
!6239 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2_", scope: !6118, file: !280, line: 1395, baseType: !6160, align: 512, offset: 109056)
!6240 = !DIDerivedType(tag: DW_TAG_member, name: "per_cpu_nodestats", scope: !6118, file: !280, line: 1398, baseType: !6241, size: 64, offset: 109056)
!6241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6242, size: 64)
!6242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "per_cpu_nodestat", file: !280, line: 713, size: 336, elements: !6243)
!6243 = !{!6244, !6245}
!6244 = !DIDerivedType(tag: DW_TAG_member, name: "stat_threshold", scope: !6242, file: !280, line: 714, baseType: !802, size: 8)
!6245 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node_stat_diff", scope: !6242, file: !280, line: 715, baseType: !6246, size: 328, offset: 8)
!6246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 328, elements: !6247)
!6247 = !{!6248}
!6248 = !DISubrange(count: 41)
!6249 = !DIDerivedType(tag: DW_TAG_member, name: "vm_stat", scope: !6118, file: !280, line: 1399, baseType: !6250, size: 2624, offset: 109120)
!6250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !757, size: 2624, elements: !6247)
!6251 = !DIDerivedType(tag: DW_TAG_member, name: "memtier", scope: !6118, file: !280, line: 1401, baseType: !6252, size: 64, offset: 111744)
!6252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6253, size: 64)
!6253 = !DICompositeType(tag: DW_TAG_structure_type, name: "memory_tier", file: !280, line: 1401, flags: DIFlagFwdDecl)
!6254 = !DILocalVariable(name: "start_pfn", scope: !6115, file: !5276, line: 120, type: !59)
!6255 = !DILocalVariable(name: "end_pfn", scope: !6115, file: !5276, line: 121, type: !59)
!6256 = !DILocation(line: 114, column: 41, scope: !6110)
!6257 = !DILocation(line: 116, column: 2, scope: !6110)
!6258 = !DILocation(line: 116, column: 6, scope: !6110)
!6259 = !DILocation(line: 118, column: 6, scope: !6116)
!6260 = !DILocation(line: 118, column: 6, scope: !6110)
!6261 = !DILocation(line: 119, column: 3, scope: !6115)
!6262 = !DILocation(line: 119, column: 23, scope: !6115)
!6263 = !DILocation(line: 119, column: 31, scope: !6115)
!6264 = !DILocation(line: 120, column: 3, scope: !6115)
!6265 = !DILocation(line: 120, column: 17, scope: !6115)
!6266 = !DILocation(line: 120, column: 29, scope: !6115)
!6267 = !DILocation(line: 120, column: 36, scope: !6115)
!6268 = !DILocation(line: 121, column: 3, scope: !6115)
!6269 = !DILocation(line: 121, column: 17, scope: !6115)
!6270 = !DILocation(line: 121, column: 27, scope: !6115)
!6271 = !DILocation(line: 121, column: 39, scope: !6115)
!6272 = !DILocation(line: 121, column: 46, scope: !6115)
!6273 = !DILocation(line: 121, column: 37, scope: !6115)
!6274 = !DILocation(line: 123, column: 31, scope: !6115)
!6275 = !DILocation(line: 123, column: 11, scope: !6115)
!6276 = !DILocation(line: 123, column: 9, scope: !6115)
!6277 = !DILocation(line: 124, column: 7, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6115, file: !5276, line: 124, column: 7)
!6279 = !DILocation(line: 124, column: 7, scope: !6115)
!6280 = !DILocation(line: 125, column: 11, scope: !6278)
!6281 = !DILocation(line: 125, column: 4, scope: !6278)
!6282 = !DILocation(line: 126, column: 37, scope: !6115)
!6283 = !DILocation(line: 126, column: 42, scope: !6115)
!6284 = !DILocation(line: 126, column: 53, scope: !6115)
!6285 = !DILocation(line: 126, column: 3, scope: !6115)
!6286 = !DILocation(line: 128, column: 2, scope: !6116)
!6287 = !DILocation(line: 128, column: 2, scope: !6115)
!6288 = !DILocation(line: 130, column: 9, scope: !6110)
!6289 = !DILocation(line: 130, column: 2, scope: !6110)
!6290 = !DILocation(line: 131, column: 1, scope: !6110)
!6291 = distinct !DISubprogram(name: "__next_node", scope: !254, file: !254, line: 270, type: !6292, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6294)
!6292 = !DISubroutineType(types: !6293)
!6293 = !{!7, !42, !6099}
!6294 = !{!6295, !6296, !6297, !6299}
!6295 = !DILocalVariable(name: "n", arg: 1, scope: !6291, file: !254, line: 270, type: !42)
!6296 = !DILocalVariable(name: "srcp", arg: 2, scope: !6291, file: !254, line: 270, type: !6099)
!6297 = !DILocalVariable(name: "__UNIQUE_ID___x100", scope: !6298, file: !254, line: 272, type: !7)
!6298 = distinct !DILexicalBlock(scope: !6291, file: !254, line: 272, column: 9)
!6299 = !DILocalVariable(name: "__UNIQUE_ID___y101", scope: !6298, file: !254, line: 272, type: !7)
!6300 = !DILocation(line: 270, column: 44, scope: !6291)
!6301 = !DILocation(line: 270, column: 65, scope: !6291)
!6302 = !DILocation(line: 272, column: 9, scope: !6298)
!6303 = !DILocation(line: 272, column: 9, scope: !6291)
!6304 = !DILocation(line: 272, column: 2, scope: !6291)
!6305 = distinct !DISubprogram(name: "list_del", scope: !5905, file: !5905, line: 227, type: !5906, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6306)
!6306 = !{!6307}
!6307 = !DILocalVariable(name: "entry", arg: 1, scope: !6305, file: !5905, line: 227, type: !120)
!6308 = !DILocation(line: 227, column: 47, scope: !6305)
!6309 = !DILocation(line: 229, column: 19, scope: !6305)
!6310 = !DILocation(line: 229, column: 2, scope: !6305)
!6311 = !DILocation(line: 230, column: 2, scope: !6305)
!6312 = !DILocation(line: 230, column: 9, scope: !6305)
!6313 = !DILocation(line: 230, column: 14, scope: !6305)
!6314 = !DILocation(line: 231, column: 2, scope: !6305)
!6315 = !DILocation(line: 231, column: 9, scope: !6305)
!6316 = !DILocation(line: 231, column: 14, scope: !6305)
!6317 = !DILocation(line: 232, column: 1, scope: !6305)
!6318 = distinct !DISubprogram(name: "__list_del_entry", scope: !5905, file: !5905, line: 213, type: !5906, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6319)
!6319 = !{!6320}
!6320 = !DILocalVariable(name: "entry", arg: 1, scope: !6318, file: !5905, line: 213, type: !120)
!6321 = !DILocation(line: 213, column: 55, scope: !6318)
!6322 = !DILocation(line: 215, column: 30, scope: !6323)
!6323 = distinct !DILexicalBlock(scope: !6318, file: !5905, line: 215, column: 6)
!6324 = !DILocation(line: 215, column: 7, scope: !6323)
!6325 = !DILocation(line: 215, column: 6, scope: !6318)
!6326 = !DILocation(line: 216, column: 3, scope: !6323)
!6327 = !DILocation(line: 218, column: 13, scope: !6318)
!6328 = !DILocation(line: 218, column: 20, scope: !6318)
!6329 = !DILocation(line: 218, column: 26, scope: !6318)
!6330 = !DILocation(line: 218, column: 33, scope: !6318)
!6331 = !DILocation(line: 218, column: 2, scope: !6318)
!6332 = !DILocation(line: 219, column: 1, scope: !6318)
!6333 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5905, file: !5905, line: 134, type: !6334, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6336)
!6334 = !DISubroutineType(types: !6335)
!6335 = !{!833, !120}
!6336 = !{!6337}
!6337 = !DILocalVariable(name: "entry", arg: 1, scope: !6333, file: !5905, line: 134, type: !120)
!6338 = !DILocation(line: 134, column: 61, scope: !6333)
!6339 = !DILocation(line: 136, column: 2, scope: !6333)
!6340 = distinct !DISubprogram(name: "__list_del", scope: !5905, file: !5905, line: 193, type: !6341, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6343)
!6341 = !DISubroutineType(types: !6342)
!6342 = !{null, !120, !120}
!6343 = !{!6344, !6345}
!6344 = !DILocalVariable(name: "prev", arg: 1, scope: !6340, file: !5905, line: 193, type: !120)
!6345 = !DILocalVariable(name: "next", arg: 2, scope: !6340, file: !5905, line: 193, type: !120)
!6346 = !DILocation(line: 193, column: 50, scope: !6340)
!6347 = !DILocation(line: 193, column: 75, scope: !6340)
!6348 = !DILocation(line: 195, column: 15, scope: !6340)
!6349 = !DILocation(line: 195, column: 2, scope: !6340)
!6350 = !DILocation(line: 195, column: 8, scope: !6340)
!6351 = !DILocation(line: 195, column: 13, scope: !6340)
!6352 = !DILocation(line: 196, column: 2, scope: !6340)
!6353 = !DILocation(line: 196, column: 2, scope: !6354)
!6354 = distinct !DILexicalBlock(scope: !6340, file: !5905, line: 196, column: 2)
!6355 = !DILocation(line: 196, column: 2, scope: !6356)
!6356 = distinct !DILexicalBlock(scope: !6354, file: !5905, line: 196, column: 2)
!6357 = !DILocation(line: 196, column: 2, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6354, file: !5905, line: 196, column: 2)
!6359 = !DILocation(line: 197, column: 1, scope: !6340)
!6360 = distinct !DISubprogram(name: "const_test_bit", scope: !6361, file: !6361, line: 166, type: !6362, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6367)
!6361 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6362 = !DISubroutineType(types: !6363)
!6363 = !{!833, !59, !6364}
!6364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6365, size: 64)
!6365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6366)
!6366 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !59)
!6367 = !{!6368, !6369, !6370, !6371, !6372}
!6368 = !DILocalVariable(name: "nr", arg: 1, scope: !6360, file: !6361, line: 166, type: !59)
!6369 = !DILocalVariable(name: "addr", arg: 2, scope: !6360, file: !6361, line: 166, type: !6364)
!6370 = !DILocalVariable(name: "p", scope: !6360, file: !6361, line: 168, type: !5273)
!6371 = !DILocalVariable(name: "mask", scope: !6360, file: !6361, line: 169, type: !59)
!6372 = !DILocalVariable(name: "val", scope: !6360, file: !6361, line: 170, type: !59)
!6373 = !DILocation(line: 166, column: 30, scope: !6360)
!6374 = !DILocation(line: 166, column: 64, scope: !6360)
!6375 = !DILocation(line: 168, column: 2, scope: !6360)
!6376 = !DILocation(line: 168, column: 23, scope: !6360)
!6377 = !DILocation(line: 168, column: 50, scope: !6360)
!6378 = !DILocation(line: 168, column: 57, scope: !6360)
!6379 = !DILocation(line: 168, column: 55, scope: !6360)
!6380 = !DILocation(line: 169, column: 2, scope: !6360)
!6381 = !DILocation(line: 169, column: 16, scope: !6360)
!6382 = !DILocation(line: 169, column: 23, scope: !6360)
!6383 = !DILocation(line: 170, column: 2, scope: !6360)
!6384 = !DILocation(line: 170, column: 16, scope: !6360)
!6385 = !DILocation(line: 170, column: 23, scope: !6360)
!6386 = !DILocation(line: 170, column: 22, scope: !6360)
!6387 = !DILocation(line: 172, column: 12, scope: !6360)
!6388 = !DILocation(line: 172, column: 18, scope: !6360)
!6389 = !DILocation(line: 172, column: 16, scope: !6360)
!6390 = !DILocation(line: 172, column: 10, scope: !6360)
!6391 = !DILocation(line: 172, column: 9, scope: !6360)
!6392 = !DILocation(line: 173, column: 1, scope: !6360)
!6393 = !DILocation(line: 172, column: 2, scope: !6360)
!6394 = distinct !DISubprogram(name: "_test_bit", scope: !6395, file: !6395, line: 139, type: !6362, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6396)
!6395 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6396 = !{!6397, !6398}
!6397 = !DILocalVariable(name: "nr", arg: 1, scope: !6394, file: !6395, line: 139, type: !59)
!6398 = !DILocalVariable(name: "addr", arg: 2, scope: !6394, file: !6395, line: 139, type: !6364)
!6399 = !DILocation(line: 139, column: 25, scope: !6394)
!6400 = !DILocation(line: 139, column: 59, scope: !6394)
!6401 = !DILocation(line: 141, column: 25, scope: !6394)
!6402 = !DILocation(line: 141, column: 32, scope: !6394)
!6403 = !DILocation(line: 141, column: 30, scope: !6394)
!6404 = !DILocation(line: 141, column: 2, scope: !6394)
!6405 = !DILocation(line: 142, column: 23, scope: !6394)
!6406 = !DILocation(line: 142, column: 27, scope: !6394)
!6407 = !DILocation(line: 142, column: 9, scope: !6394)
!6408 = !DILocation(line: 142, column: 2, scope: !6394)
!6409 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6410, file: !6410, line: 66, type: !6411, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6416)
!6410 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6411 = !DISubroutineType(types: !6412)
!6412 = !{null, !6413, !55}
!6413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6414, size: 64)
!6414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6415)
!6415 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6416 = !{!6417, !6418}
!6417 = !DILocalVariable(name: "v", arg: 1, scope: !6409, file: !6410, line: 66, type: !6413)
!6418 = !DILocalVariable(name: "size", arg: 2, scope: !6409, file: !6410, line: 66, type: !55)
!6419 = !DILocation(line: 66, column: 73, scope: !6409)
!6420 = !DILocation(line: 66, column: 83, scope: !6409)
!6421 = !DILocation(line: 68, column: 19, scope: !6409)
!6422 = !DILocation(line: 68, column: 22, scope: !6409)
!6423 = !DILocation(line: 68, column: 2, scope: !6409)
!6424 = !DILocation(line: 69, column: 2, scope: !6409)
!6425 = !DILocation(line: 70, column: 1, scope: !6409)
!6426 = distinct !DISubprogram(name: "arch_test_bit", scope: !6427, file: !6427, line: 237, type: !6362, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6428)
!6427 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6428 = !{!6429, !6430}
!6429 = !DILocalVariable(name: "nr", arg: 1, scope: !6426, file: !6427, line: 237, type: !59)
!6430 = !DILocalVariable(name: "addr", arg: 2, scope: !6426, file: !6427, line: 237, type: !6364)
!6431 = !DILocation(line: 237, column: 29, scope: !6426)
!6432 = !DILocation(line: 237, column: 63, scope: !6426)
!6433 = !DILocation(line: 239, column: 30, scope: !6426)
!6434 = !DILocation(line: 239, column: 9, scope: !6426)
!6435 = !DILocation(line: 239, column: 54, scope: !6426)
!6436 = !DILocation(line: 239, column: 58, scope: !6426)
!6437 = !DILocation(line: 239, column: 36, scope: !6426)
!6438 = !DILocation(line: 240, column: 26, scope: !6426)
!6439 = !DILocation(line: 240, column: 30, scope: !6426)
!6440 = !DILocation(line: 240, column: 8, scope: !6426)
!6441 = !DILocation(line: 239, column: 2, scope: !6426)
!6442 = distinct !DISubprogram(name: "kasan_check_read", scope: !6443, file: !6443, line: 40, type: !6444, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6446)
!6443 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6444 = !DISubroutineType(types: !6445)
!6445 = !{!833, !6413, !7}
!6446 = !{!6447, !6448}
!6447 = !DILocalVariable(name: "p", arg: 1, scope: !6442, file: !6443, line: 40, type: !6413)
!6448 = !DILocalVariable(name: "size", arg: 2, scope: !6442, file: !6443, line: 40, type: !7)
!6449 = !DILocation(line: 40, column: 58, scope: !6442)
!6450 = !DILocation(line: 40, column: 74, scope: !6442)
!6451 = !DILocation(line: 42, column: 2, scope: !6442)
!6452 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6453, file: !6453, line: 229, type: !6454, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6456)
!6453 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6454 = !DISubroutineType(types: !6455)
!6455 = !{null, !6413, !55, !42}
!6456 = !{!6457, !6458, !6459}
!6457 = !DILocalVariable(name: "ptr", arg: 1, scope: !6452, file: !6453, line: 229, type: !6413)
!6458 = !DILocalVariable(name: "size", arg: 2, scope: !6452, file: !6453, line: 229, type: !55)
!6459 = !DILocalVariable(name: "type", arg: 3, scope: !6452, file: !6453, line: 230, type: !42)
!6460 = !DILocation(line: 229, column: 60, scope: !6452)
!6461 = !DILocation(line: 229, column: 72, scope: !6452)
!6462 = !DILocation(line: 230, column: 15, scope: !6452)
!6463 = !DILocation(line: 230, column: 23, scope: !6452)
!6464 = distinct !DISubprogram(name: "constant_test_bit", scope: !6427, file: !6427, line: 204, type: !6465, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6467)
!6465 = !DISubroutineType(types: !6466)
!6466 = !{!833, !456, !6364}
!6467 = !{!6468, !6469}
!6468 = !DILocalVariable(name: "nr", arg: 1, scope: !6464, file: !6427, line: 204, type: !456)
!6469 = !DILocalVariable(name: "addr", arg: 2, scope: !6464, file: !6427, line: 204, type: !6364)
!6470 = !DILocation(line: 204, column: 52, scope: !6464)
!6471 = !DILocation(line: 204, column: 86, scope: !6464)
!6472 = !DILocation(line: 206, column: 19, scope: !6464)
!6473 = !DILocation(line: 206, column: 22, scope: !6464)
!6474 = !DILocation(line: 206, column: 15, scope: !6464)
!6475 = !DILocation(line: 207, column: 4, scope: !6464)
!6476 = !DILocation(line: 207, column: 9, scope: !6464)
!6477 = !DILocation(line: 207, column: 12, scope: !6464)
!6478 = !DILocation(line: 206, column: 44, scope: !6464)
!6479 = !DILocation(line: 207, column: 37, scope: !6464)
!6480 = !DILocation(line: 206, column: 2, scope: !6464)
!6481 = distinct !DISubprogram(name: "variable_test_bit", scope: !6427, file: !6427, line: 224, type: !6465, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6482)
!6482 = !{!6483, !6484, !6485}
!6483 = !DILocalVariable(name: "nr", arg: 1, scope: !6481, file: !6427, line: 224, type: !456)
!6484 = !DILocalVariable(name: "addr", arg: 2, scope: !6481, file: !6427, line: 224, type: !6364)
!6485 = !DILocalVariable(name: "oldbit", scope: !6481, file: !6427, line: 226, type: !833)
!6486 = !DILocation(line: 224, column: 52, scope: !6481)
!6487 = !DILocation(line: 224, column: 86, scope: !6481)
!6488 = !DILocation(line: 226, column: 2, scope: !6481)
!6489 = !DILocation(line: 226, column: 7, scope: !6481)
!6490 = !DILocation(line: 231, column: 33, scope: !6481)
!6491 = !DILocation(line: 231, column: 46, scope: !6481)
!6492 = !DILocation(line: 228, column: 2, scope: !6481)
!6493 = !{i64 2148366241, i64 2148366315}
!6494 = !DILocation(line: 233, column: 9, scope: !6481)
!6495 = !{i8 0, i8 2}
!6496 = !DILocation(line: 234, column: 1, scope: !6481)
!6497 = !DILocation(line: 233, column: 2, scope: !6481)
!6498 = distinct !DISubprogram(name: "node_access_release", scope: !3, file: !3, line: 123, type: !4948, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6499)
!6499 = !{!6500, !6501}
!6500 = !DILocalVariable(name: "dev", arg: 1, scope: !6498, file: !3, line: 123, type: !2703)
!6501 = !DILocalVariable(name: "__mptr", scope: !6502, file: !3, line: 125, type: !40)
!6502 = distinct !DILexicalBlock(scope: !6498, file: !3, line: 125, column: 8)
!6503 = !DILocation(line: 123, column: 48, scope: !6498)
!6504 = !DILocation(line: 125, column: 8, scope: !6502)
!6505 = !DILocation(line: 125, column: 8, scope: !6498)
!6506 = !DILocation(line: 125, column: 2, scope: !6498)
!6507 = !DILocation(line: 126, column: 1, scope: !6498)
!6508 = !DISubprogram(name: "dev_set_name", scope: !207, file: !207, line: 879, type: !6509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6509 = !DISubroutineType(types: !6510)
!6510 = !{!42, !2703, !36, null}
!6511 = !DISubprogram(name: "device_register", scope: !207, file: !207, line: 1054, type: !4957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6512 = !DISubprogram(name: "pm_runtime_no_callbacks", scope: !6513, file: !6513, line: 83, type: !4948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6513 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95dc537c0e4be945b3dc143d0bbabcd4")
!6514 = distinct !DISubprogram(name: "list_add_tail", scope: !5905, file: !5905, line: 181, type: !6341, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6515)
!6515 = !{!6516, !6517}
!6516 = !DILocalVariable(name: "new", arg: 1, scope: !6514, file: !5905, line: 181, type: !120)
!6517 = !DILocalVariable(name: "head", arg: 2, scope: !6514, file: !5905, line: 181, type: !120)
!6518 = !DILocation(line: 181, column: 52, scope: !6514)
!6519 = !DILocation(line: 181, column: 75, scope: !6514)
!6520 = !DILocation(line: 183, column: 13, scope: !6514)
!6521 = !DILocation(line: 183, column: 18, scope: !6514)
!6522 = !DILocation(line: 183, column: 24, scope: !6514)
!6523 = !DILocation(line: 183, column: 30, scope: !6514)
!6524 = !DILocation(line: 183, column: 2, scope: !6514)
!6525 = !DILocation(line: 184, column: 1, scope: !6514)
!6526 = !DISubprogram(name: "kfree_const", scope: !6527, file: !6527, line: 214, type: !6528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6527 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6528 = !DISubroutineType(types: !6529)
!6529 = !{null, !1980}
!6530 = !DISubprogram(name: "kfree", scope: !270, file: !270, line: 227, type: !6528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6531 = distinct !DISubprogram(name: "__list_add", scope: !5905, file: !5905, line: 146, type: !6532, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6534)
!6532 = !DISubroutineType(types: !6533)
!6533 = !{null, !120, !120, !120}
!6534 = !{!6535, !6536, !6537}
!6535 = !DILocalVariable(name: "new", arg: 1, scope: !6531, file: !5905, line: 146, type: !120)
!6536 = !DILocalVariable(name: "prev", arg: 2, scope: !6531, file: !5905, line: 147, type: !120)
!6537 = !DILocalVariable(name: "next", arg: 3, scope: !6531, file: !5905, line: 148, type: !120)
!6538 = !DILocation(line: 146, column: 49, scope: !6531)
!6539 = !DILocation(line: 147, column: 28, scope: !6531)
!6540 = !DILocation(line: 148, column: 28, scope: !6531)
!6541 = !DILocation(line: 150, column: 24, scope: !6542)
!6542 = distinct !DILexicalBlock(scope: !6531, file: !5905, line: 150, column: 6)
!6543 = !DILocation(line: 150, column: 29, scope: !6542)
!6544 = !DILocation(line: 150, column: 35, scope: !6542)
!6545 = !DILocation(line: 150, column: 7, scope: !6542)
!6546 = !DILocation(line: 150, column: 6, scope: !6531)
!6547 = !DILocation(line: 151, column: 3, scope: !6542)
!6548 = !DILocation(line: 153, column: 15, scope: !6531)
!6549 = !DILocation(line: 153, column: 2, scope: !6531)
!6550 = !DILocation(line: 153, column: 8, scope: !6531)
!6551 = !DILocation(line: 153, column: 13, scope: !6531)
!6552 = !DILocation(line: 154, column: 14, scope: !6531)
!6553 = !DILocation(line: 154, column: 2, scope: !6531)
!6554 = !DILocation(line: 154, column: 7, scope: !6531)
!6555 = !DILocation(line: 154, column: 12, scope: !6531)
!6556 = !DILocation(line: 155, column: 14, scope: !6531)
!6557 = !DILocation(line: 155, column: 2, scope: !6531)
!6558 = !DILocation(line: 155, column: 7, scope: !6531)
!6559 = !DILocation(line: 155, column: 12, scope: !6531)
!6560 = !DILocation(line: 156, column: 2, scope: !6531)
!6561 = !DILocation(line: 156, column: 2, scope: !6562)
!6562 = distinct !DILexicalBlock(scope: !6531, file: !5905, line: 156, column: 2)
!6563 = !DILocation(line: 156, column: 2, scope: !6564)
!6564 = distinct !DILexicalBlock(scope: !6562, file: !5905, line: 156, column: 2)
!6565 = !DILocation(line: 156, column: 2, scope: !6566)
!6566 = distinct !DILexicalBlock(scope: !6562, file: !5905, line: 156, column: 2)
!6567 = !DILocation(line: 157, column: 1, scope: !6531)
!6568 = distinct !DISubprogram(name: "__list_add_valid", scope: !5905, file: !5905, line: 128, type: !6569, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6571)
!6569 = !DISubroutineType(types: !6570)
!6570 = !{!833, !120, !120, !120}
!6571 = !{!6572, !6573, !6574}
!6572 = !DILocalVariable(name: "new", arg: 1, scope: !6568, file: !5905, line: 128, type: !120)
!6573 = !DILocalVariable(name: "prev", arg: 2, scope: !6568, file: !5905, line: 129, type: !120)
!6574 = !DILocalVariable(name: "next", arg: 3, scope: !6568, file: !5905, line: 130, type: !120)
!6575 = !DILocation(line: 128, column: 55, scope: !6568)
!6576 = !DILocation(line: 129, column: 23, scope: !6568)
!6577 = !DILocation(line: 130, column: 23, scope: !6568)
!6578 = !DILocation(line: 132, column: 2, scope: !6568)
!6579 = distinct !DISubprogram(name: "kmalloc", scope: !270, file: !270, line: 591, type: !5892, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6580)
!6580 = !{!6581, !6582, !6583}
!6581 = !DILocalVariable(name: "size", arg: 1, scope: !6579, file: !270, line: 591, type: !55)
!6582 = !DILocalVariable(name: "flags", arg: 2, scope: !6579, file: !270, line: 591, type: !363)
!6583 = !DILocalVariable(name: "index", scope: !6584, file: !270, line: 594, type: !7)
!6584 = distinct !DILexicalBlock(scope: !6585, file: !270, line: 593, column: 42)
!6585 = distinct !DILexicalBlock(scope: !6579, file: !270, line: 593, column: 6)
!6586 = !DILocation(line: 591, column: 61, scope: !6579)
!6587 = !DILocation(line: 591, column: 73, scope: !6579)
!6588 = !DILocation(line: 593, column: 27, scope: !6585)
!6589 = !DILocation(line: 593, column: 6, scope: !6585)
!6590 = !DILocation(line: 593, column: 33, scope: !6585)
!6591 = !DILocation(line: 593, column: 36, scope: !6585)
!6592 = !DILocation(line: 593, column: 6, scope: !6579)
!6593 = !DILocation(line: 594, column: 3, scope: !6584)
!6594 = !DILocation(line: 594, column: 16, scope: !6584)
!6595 = !DILocation(line: 596, column: 7, scope: !6596)
!6596 = distinct !DILexicalBlock(scope: !6584, file: !270, line: 596, column: 7)
!6597 = !DILocation(line: 596, column: 12, scope: !6596)
!6598 = !DILocation(line: 596, column: 7, scope: !6584)
!6599 = !DILocation(line: 597, column: 25, scope: !6596)
!6600 = !DILocation(line: 597, column: 31, scope: !6596)
!6601 = !DILocation(line: 597, column: 11, scope: !6596)
!6602 = !DILocation(line: 597, column: 4, scope: !6596)
!6603 = !DILocation(line: 599, column: 11, scope: !6584)
!6604 = !DILocation(line: 599, column: 9, scope: !6584)
!6605 = !DILocation(line: 601, column: 33, scope: !6584)
!6606 = !DILocation(line: 601, column: 40, scope: !6584)
!6607 = !DILocation(line: 601, column: 20, scope: !6584)
!6608 = !DILocation(line: 601, column: 5, scope: !6584)
!6609 = !DILocation(line: 601, column: 51, scope: !6584)
!6610 = !DILocation(line: 602, column: 5, scope: !6584)
!6611 = !DILocation(line: 602, column: 12, scope: !6584)
!6612 = !DILocation(line: 600, column: 10, scope: !6584)
!6613 = !DILocation(line: 600, column: 3, scope: !6584)
!6614 = !DILocation(line: 603, column: 2, scope: !6585)
!6615 = !DILocation(line: 604, column: 19, scope: !6579)
!6616 = !DILocation(line: 604, column: 25, scope: !6579)
!6617 = !DILocation(line: 604, column: 9, scope: !6579)
!6618 = !DILocation(line: 604, column: 2, scope: !6579)
!6619 = !DILocation(line: 605, column: 1, scope: !6579)
!6620 = !DISubprogram(name: "kmalloc_large", scope: !270, file: !270, line: 531, type: !5892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6621 = distinct !DISubprogram(name: "__kmalloc_index", scope: !270, file: !270, line: 444, type: !6622, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6624)
!6622 = !DISubroutineType(types: !6623)
!6623 = !{!7, !55, !833}
!6624 = !{!6625, !6626}
!6625 = !DILocalVariable(name: "size", arg: 1, scope: !6621, file: !270, line: 444, type: !55)
!6626 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6621, file: !270, line: 445, type: !833)
!6627 = !DILocation(line: 444, column: 60, scope: !6621)
!6628 = !DILocation(line: 445, column: 16, scope: !6621)
!6629 = !DILocation(line: 447, column: 7, scope: !6630)
!6630 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 447, column: 6)
!6631 = !DILocation(line: 447, column: 6, scope: !6621)
!6632 = !DILocation(line: 448, column: 3, scope: !6630)
!6633 = !DILocation(line: 450, column: 6, scope: !6634)
!6634 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 450, column: 6)
!6635 = !DILocation(line: 450, column: 11, scope: !6634)
!6636 = !DILocation(line: 450, column: 6, scope: !6621)
!6637 = !DILocation(line: 451, column: 3, scope: !6634)
!6638 = !DILocation(line: 453, column: 32, scope: !6639)
!6639 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 453, column: 6)
!6640 = !DILocation(line: 453, column: 37, scope: !6639)
!6641 = !DILocation(line: 453, column: 42, scope: !6639)
!6642 = !DILocation(line: 453, column: 45, scope: !6639)
!6643 = !DILocation(line: 453, column: 50, scope: !6639)
!6644 = !DILocation(line: 453, column: 6, scope: !6621)
!6645 = !DILocation(line: 454, column: 3, scope: !6639)
!6646 = !DILocation(line: 455, column: 32, scope: !6647)
!6647 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 455, column: 6)
!6648 = !DILocation(line: 455, column: 37, scope: !6647)
!6649 = !DILocation(line: 455, column: 43, scope: !6647)
!6650 = !DILocation(line: 455, column: 46, scope: !6647)
!6651 = !DILocation(line: 455, column: 51, scope: !6647)
!6652 = !DILocation(line: 455, column: 6, scope: !6621)
!6653 = !DILocation(line: 456, column: 3, scope: !6647)
!6654 = !DILocation(line: 457, column: 6, scope: !6655)
!6655 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 457, column: 6)
!6656 = !DILocation(line: 457, column: 11, scope: !6655)
!6657 = !DILocation(line: 457, column: 6, scope: !6621)
!6658 = !DILocation(line: 457, column: 26, scope: !6655)
!6659 = !DILocation(line: 458, column: 6, scope: !6660)
!6660 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 458, column: 6)
!6661 = !DILocation(line: 458, column: 11, scope: !6660)
!6662 = !DILocation(line: 458, column: 6, scope: !6621)
!6663 = !DILocation(line: 458, column: 26, scope: !6660)
!6664 = !DILocation(line: 459, column: 6, scope: !6665)
!6665 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 459, column: 6)
!6666 = !DILocation(line: 459, column: 11, scope: !6665)
!6667 = !DILocation(line: 459, column: 6, scope: !6621)
!6668 = !DILocation(line: 459, column: 26, scope: !6665)
!6669 = !DILocation(line: 460, column: 6, scope: !6670)
!6670 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 460, column: 6)
!6671 = !DILocation(line: 460, column: 11, scope: !6670)
!6672 = !DILocation(line: 460, column: 6, scope: !6621)
!6673 = !DILocation(line: 460, column: 26, scope: !6670)
!6674 = !DILocation(line: 461, column: 6, scope: !6675)
!6675 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 461, column: 6)
!6676 = !DILocation(line: 461, column: 11, scope: !6675)
!6677 = !DILocation(line: 461, column: 6, scope: !6621)
!6678 = !DILocation(line: 461, column: 26, scope: !6675)
!6679 = !DILocation(line: 462, column: 6, scope: !6680)
!6680 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 462, column: 6)
!6681 = !DILocation(line: 462, column: 11, scope: !6680)
!6682 = !DILocation(line: 462, column: 6, scope: !6621)
!6683 = !DILocation(line: 462, column: 26, scope: !6680)
!6684 = !DILocation(line: 463, column: 6, scope: !6685)
!6685 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 463, column: 6)
!6686 = !DILocation(line: 463, column: 11, scope: !6685)
!6687 = !DILocation(line: 463, column: 6, scope: !6621)
!6688 = !DILocation(line: 463, column: 26, scope: !6685)
!6689 = !DILocation(line: 464, column: 6, scope: !6690)
!6690 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 464, column: 6)
!6691 = !DILocation(line: 464, column: 11, scope: !6690)
!6692 = !DILocation(line: 464, column: 6, scope: !6621)
!6693 = !DILocation(line: 464, column: 26, scope: !6690)
!6694 = !DILocation(line: 465, column: 6, scope: !6695)
!6695 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 465, column: 6)
!6696 = !DILocation(line: 465, column: 11, scope: !6695)
!6697 = !DILocation(line: 465, column: 6, scope: !6621)
!6698 = !DILocation(line: 465, column: 26, scope: !6695)
!6699 = !DILocation(line: 466, column: 6, scope: !6700)
!6700 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 466, column: 6)
!6701 = !DILocation(line: 466, column: 11, scope: !6700)
!6702 = !DILocation(line: 466, column: 6, scope: !6621)
!6703 = !DILocation(line: 466, column: 26, scope: !6700)
!6704 = !DILocation(line: 467, column: 6, scope: !6705)
!6705 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 467, column: 6)
!6706 = !DILocation(line: 467, column: 11, scope: !6705)
!6707 = !DILocation(line: 467, column: 6, scope: !6621)
!6708 = !DILocation(line: 467, column: 26, scope: !6705)
!6709 = !DILocation(line: 468, column: 6, scope: !6710)
!6710 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 468, column: 6)
!6711 = !DILocation(line: 468, column: 11, scope: !6710)
!6712 = !DILocation(line: 468, column: 6, scope: !6621)
!6713 = !DILocation(line: 468, column: 26, scope: !6710)
!6714 = !DILocation(line: 469, column: 6, scope: !6715)
!6715 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 469, column: 6)
!6716 = !DILocation(line: 469, column: 11, scope: !6715)
!6717 = !DILocation(line: 469, column: 6, scope: !6621)
!6718 = !DILocation(line: 469, column: 26, scope: !6715)
!6719 = !DILocation(line: 470, column: 6, scope: !6720)
!6720 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 470, column: 6)
!6721 = !DILocation(line: 470, column: 11, scope: !6720)
!6722 = !DILocation(line: 470, column: 6, scope: !6621)
!6723 = !DILocation(line: 470, column: 26, scope: !6720)
!6724 = !DILocation(line: 471, column: 6, scope: !6725)
!6725 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 471, column: 6)
!6726 = !DILocation(line: 471, column: 11, scope: !6725)
!6727 = !DILocation(line: 471, column: 6, scope: !6621)
!6728 = !DILocation(line: 471, column: 26, scope: !6725)
!6729 = !DILocation(line: 472, column: 6, scope: !6730)
!6730 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 472, column: 6)
!6731 = !DILocation(line: 472, column: 11, scope: !6730)
!6732 = !DILocation(line: 472, column: 6, scope: !6621)
!6733 = !DILocation(line: 472, column: 26, scope: !6730)
!6734 = !DILocation(line: 473, column: 6, scope: !6735)
!6735 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 473, column: 6)
!6736 = !DILocation(line: 473, column: 11, scope: !6735)
!6737 = !DILocation(line: 473, column: 6, scope: !6621)
!6738 = !DILocation(line: 473, column: 26, scope: !6735)
!6739 = !DILocation(line: 474, column: 6, scope: !6740)
!6740 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 474, column: 6)
!6741 = !DILocation(line: 474, column: 11, scope: !6740)
!6742 = !DILocation(line: 474, column: 6, scope: !6621)
!6743 = !DILocation(line: 474, column: 27, scope: !6740)
!6744 = !DILocation(line: 475, column: 6, scope: !6745)
!6745 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 475, column: 6)
!6746 = !DILocation(line: 475, column: 11, scope: !6745)
!6747 = !DILocation(line: 475, column: 6, scope: !6621)
!6748 = !DILocation(line: 475, column: 32, scope: !6745)
!6749 = !DILocation(line: 477, column: 50, scope: !6750)
!6750 = distinct !DILexicalBlock(scope: !6621, file: !270, line: 477, column: 6)
!6751 = !DILocation(line: 477, column: 6, scope: !6621)
!6752 = !DILocation(line: 478, column: 3, scope: !6750)
!6753 = !DILocation(line: 478, column: 3, scope: !6754)
!6754 = distinct !DILexicalBlock(scope: !6755, file: !270, line: 478, column: 3)
!6755 = distinct !DILexicalBlock(scope: !6750, file: !270, line: 478, column: 3)
!6756 = !{i32 -2141839642}
!6757 = !DILocation(line: 478, column: 3, scope: !6755)
!6758 = !DILocation(line: 480, column: 3, scope: !6750)
!6759 = !DILocation(line: 480, column: 3, scope: !6760)
!6760 = distinct !DILexicalBlock(scope: !6750, file: !270, line: 480, column: 3)
!6761 = !DILocation(line: 480, column: 3, scope: !6762)
!6762 = distinct !DILexicalBlock(scope: !6760, file: !270, line: 480, column: 3)
!6763 = !DILocation(line: 480, column: 3, scope: !6764)
!6764 = distinct !DILexicalBlock(scope: !6760, file: !270, line: 480, column: 3)
!6765 = !{i64 2153127857, i64 2153127886, i64 2153127932, i64 2153127990, i64 2153128044, i64 2153128098, i64 2153128153, i64 2153128184}
!6766 = !DILocation(line: 483, column: 2, scope: !6621)
!6767 = !DILocation(line: 484, column: 1, scope: !6621)
!6768 = !DISubprogram(name: "kmalloc_trace", scope: !270, file: !270, line: 525, type: !6769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6769 = !DISubroutineType(types: !6770)
!6770 = !{!40, !6771, !363, !55}
!6771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6772, size: 64)
!6772 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6773, line: 11, flags: DIFlagFwdDecl)
!6773 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6774 = distinct !DISubprogram(name: "kmalloc_type", scope: !270, file: !270, line: 401, type: !6775, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6777)
!6775 = !DISubroutineType(types: !6776)
!6776 = !{!269, !363, !59}
!6777 = !{!6778, !6779}
!6778 = !DILocalVariable(name: "flags", arg: 1, scope: !6774, file: !270, line: 401, type: !363)
!6779 = !DILocalVariable(name: "caller", arg: 2, scope: !6774, file: !270, line: 401, type: !59)
!6780 = !DILocation(line: 401, column: 67, scope: !6774)
!6781 = !DILocation(line: 401, column: 88, scope: !6774)
!6782 = !DILocation(line: 407, column: 6, scope: !6783)
!6783 = distinct !DILexicalBlock(scope: !6774, file: !270, line: 407, column: 6)
!6784 = !DILocation(line: 407, column: 6, scope: !6774)
!6785 = !DILocation(line: 413, column: 3, scope: !6783)
!6786 = !DILocation(line: 423, column: 38, scope: !6787)
!6787 = distinct !DILexicalBlock(scope: !6774, file: !270, line: 423, column: 6)
!6788 = !DILocation(line: 423, column: 44, scope: !6787)
!6789 = !DILocation(line: 423, column: 6, scope: !6774)
!6790 = !DILocation(line: 424, column: 3, scope: !6787)
!6791 = !DILocation(line: 426, column: 3, scope: !6792)
!6792 = distinct !DILexicalBlock(scope: !6774, file: !270, line: 425, column: 6)
!6793 = !DILocation(line: 429, column: 1, scope: !6774)
!6794 = !DISubprogram(name: "__kmalloc", scope: !270, file: !270, line: 488, type: !5892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6795 = !DISubprogram(name: "__compiletime_assert_229", scope: !270, file: !270, line: 478, type: !1118, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6796 = distinct !DISubprogram(name: "node_device_release", scope: !3, file: !3, line: 602, type: !4948, scopeLine: 603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6797)
!6797 = !{!6798, !6799}
!6798 = !DILocalVariable(name: "dev", arg: 1, scope: !6796, file: !3, line: 602, type: !2703)
!6799 = !DILocalVariable(name: "__mptr", scope: !6800, file: !3, line: 604, type: !40)
!6800 = distinct !DILexicalBlock(scope: !6796, file: !3, line: 604, column: 8)
!6801 = !DILocation(line: 602, column: 48, scope: !6796)
!6802 = !DILocation(line: 604, column: 8, scope: !6800)
!6803 = !DILocation(line: 604, column: 8, scope: !6796)
!6804 = !DILocation(line: 604, column: 2, scope: !6796)
!6805 = !DILocation(line: 605, column: 1, scope: !6796)
!6806 = !DISubprogram(name: "put_device", scope: !207, file: !207, line: 1231, type: !4948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6807 = !DISubprogram(name: "hugetlb_register_node", scope: !5467, file: !5467, line: 1029, type: !5449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6808 = !DISubprogram(name: "compaction_register_node", scope: !5469, file: !5469, line: 137, type: !6809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6809 = !DISubroutineType(types: !6810)
!6810 = !{!42, !5274}
!6811 = distinct !DISubprogram(name: "node_read_meminfo", scope: !3, file: !3, line: 369, type: !5289, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6812)
!6812 = !{!6813, !6814, !6815, !6816, !6817, !6818, !6819, !6838, !6839, !6840}
!6813 = !DILocalVariable(name: "dev", arg: 1, scope: !6811, file: !3, line: 369, type: !2703)
!6814 = !DILocalVariable(name: "attr", arg: 2, scope: !6811, file: !3, line: 370, type: !5291)
!6815 = !DILocalVariable(name: "buf", arg: 3, scope: !6811, file: !3, line: 370, type: !421)
!6816 = !DILocalVariable(name: "len", scope: !6811, file: !3, line: 372, type: !42)
!6817 = !DILocalVariable(name: "nid", scope: !6811, file: !3, line: 373, type: !42)
!6818 = !DILocalVariable(name: "pgdat", scope: !6811, file: !3, line: 374, type: !6117)
!6819 = !DILocalVariable(name: "i", scope: !6811, file: !3, line: 375, type: !6820)
!6820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysinfo", file: !6821, line: 8, size: 896, elements: !6822)
!6821 = !DIFile(filename: "./include/uapi/linux/sysinfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6f8882c542ddb6603b06a4eafcc17015")
!6822 = !{!6823, !6824, !6826, !6827, !6828, !6829, !6830, !6831, !6832, !6833, !6834, !6835, !6836, !6837}
!6823 = !DIDerivedType(tag: DW_TAG_member, name: "uptime", scope: !6820, file: !6821, line: 9, baseType: !455, size: 64)
!6824 = !DIDerivedType(tag: DW_TAG_member, name: "loads", scope: !6820, file: !6821, line: 10, baseType: !6825, size: 192, offset: 64)
!6825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 192, elements: !422)
!6826 = !DIDerivedType(tag: DW_TAG_member, name: "totalram", scope: !6820, file: !6821, line: 11, baseType: !58, size: 64, offset: 256)
!6827 = !DIDerivedType(tag: DW_TAG_member, name: "freeram", scope: !6820, file: !6821, line: 12, baseType: !58, size: 64, offset: 320)
!6828 = !DIDerivedType(tag: DW_TAG_member, name: "sharedram", scope: !6820, file: !6821, line: 13, baseType: !58, size: 64, offset: 384)
!6829 = !DIDerivedType(tag: DW_TAG_member, name: "bufferram", scope: !6820, file: !6821, line: 14, baseType: !58, size: 64, offset: 448)
!6830 = !DIDerivedType(tag: DW_TAG_member, name: "totalswap", scope: !6820, file: !6821, line: 15, baseType: !58, size: 64, offset: 512)
!6831 = !DIDerivedType(tag: DW_TAG_member, name: "freeswap", scope: !6820, file: !6821, line: 16, baseType: !58, size: 64, offset: 576)
!6832 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !6820, file: !6821, line: 17, baseType: !114, size: 16, offset: 640)
!6833 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !6820, file: !6821, line: 18, baseType: !114, size: 16, offset: 656)
!6834 = !DIDerivedType(tag: DW_TAG_member, name: "totalhigh", scope: !6820, file: !6821, line: 19, baseType: !58, size: 64, offset: 704)
!6835 = !DIDerivedType(tag: DW_TAG_member, name: "freehigh", scope: !6820, file: !6821, line: 20, baseType: !58, size: 64, offset: 768)
!6836 = !DIDerivedType(tag: DW_TAG_member, name: "mem_unit", scope: !6820, file: !6821, line: 21, baseType: !565, size: 32, offset: 832)
!6837 = !DIDerivedType(tag: DW_TAG_member, name: "_f", scope: !6820, file: !6821, line: 22, baseType: !6164, offset: 864)
!6838 = !DILocalVariable(name: "sreclaimable", scope: !6811, file: !3, line: 376, type: !59)
!6839 = !DILocalVariable(name: "sunreclaimable", scope: !6811, file: !3, line: 376, type: !59)
!6840 = !DILocalVariable(name: "swapcached", scope: !6811, file: !3, line: 377, type: !59)
!6841 = !DILocation(line: 369, column: 49, scope: !6811)
!6842 = !DILocation(line: 370, column: 29, scope: !6811)
!6843 = !DILocation(line: 370, column: 41, scope: !6811)
!6844 = !DILocation(line: 372, column: 2, scope: !6811)
!6845 = !DILocation(line: 372, column: 6, scope: !6811)
!6846 = !DILocation(line: 373, column: 2, scope: !6811)
!6847 = !DILocation(line: 373, column: 6, scope: !6811)
!6848 = !DILocation(line: 373, column: 12, scope: !6811)
!6849 = !DILocation(line: 373, column: 17, scope: !6811)
!6850 = !DILocation(line: 374, column: 2, scope: !6811)
!6851 = !DILocation(line: 374, column: 22, scope: !6811)
!6852 = !DILocation(line: 374, column: 30, scope: !6811)
!6853 = !DILocation(line: 375, column: 2, scope: !6811)
!6854 = !DILocation(line: 375, column: 17, scope: !6811)
!6855 = !DILocation(line: 376, column: 2, scope: !6811)
!6856 = !DILocation(line: 376, column: 16, scope: !6811)
!6857 = !DILocation(line: 376, column: 30, scope: !6811)
!6858 = !DILocation(line: 377, column: 2, scope: !6811)
!6859 = !DILocation(line: 377, column: 16, scope: !6811)
!6860 = !DILocation(line: 379, column: 22, scope: !6811)
!6861 = !DILocation(line: 379, column: 2, scope: !6811)
!6862 = !DILocation(line: 380, column: 39, scope: !6811)
!6863 = !DILocation(line: 380, column: 17, scope: !6811)
!6864 = !DILocation(line: 380, column: 15, scope: !6811)
!6865 = !DILocation(line: 381, column: 41, scope: !6811)
!6866 = !DILocation(line: 381, column: 19, scope: !6811)
!6867 = !DILocation(line: 381, column: 17, scope: !6811)
!6868 = !DILocation(line: 383, column: 37, scope: !6811)
!6869 = !DILocation(line: 383, column: 15, scope: !6811)
!6870 = !DILocation(line: 383, column: 13, scope: !6811)
!6871 = !DILocation(line: 385, column: 22, scope: !6811)
!6872 = !DILocation(line: 385, column: 27, scope: !6811)
!6873 = !DILocation(line: 398, column: 8, scope: !6811)
!6874 = !DILocation(line: 398, column: 13, scope: !6811)
!6875 = !DILocation(line: 399, column: 8, scope: !6811)
!6876 = !DILocation(line: 399, column: 13, scope: !6811)
!6877 = !DILocation(line: 400, column: 8, scope: !6811)
!6878 = !DILocation(line: 400, column: 13, scope: !6811)
!6879 = !DILocation(line: 401, column: 8, scope: !6811)
!6880 = !DILocation(line: 401, column: 13, scope: !6811)
!6881 = !DILocation(line: 402, column: 8, scope: !6811)
!6882 = !DILocation(line: 402, column: 13, scope: !6811)
!6883 = !DILocation(line: 404, column: 8, scope: !6811)
!6884 = !DILocation(line: 404, column: 13, scope: !6811)
!6885 = !DILocation(line: 406, column: 8, scope: !6811)
!6886 = !DILocation(line: 406, column: 13, scope: !6811)
!6887 = !DILocation(line: 407, column: 8, scope: !6811)
!6888 = !DILocation(line: 407, column: 13, scope: !6811)
!6889 = !DILocation(line: 408, column: 8, scope: !6811)
!6890 = !DILocation(line: 408, column: 13, scope: !6811)
!6891 = !DILocation(line: 409, column: 8, scope: !6811)
!6892 = !DILocation(line: 409, column: 13, scope: !6811)
!6893 = !DILocation(line: 410, column: 8, scope: !6811)
!6894 = !DILocation(line: 410, column: 13, scope: !6811)
!6895 = !DILocation(line: 411, column: 8, scope: !6811)
!6896 = !DILocation(line: 411, column: 13, scope: !6811)
!6897 = !DILocation(line: 385, column: 8, scope: !6811)
!6898 = !DILocation(line: 385, column: 6, scope: !6811)
!6899 = !DILocation(line: 424, column: 23, scope: !6811)
!6900 = !DILocation(line: 424, column: 28, scope: !6811)
!6901 = !DILocation(line: 455, column: 9, scope: !6811)
!6902 = !DILocation(line: 455, column: 14, scope: !6811)
!6903 = !DILocation(line: 456, column: 9, scope: !6811)
!6904 = !DILocation(line: 456, column: 14, scope: !6811)
!6905 = !DILocation(line: 457, column: 9, scope: !6811)
!6906 = !DILocation(line: 457, column: 14, scope: !6811)
!6907 = !DILocation(line: 458, column: 9, scope: !6811)
!6908 = !DILocation(line: 458, column: 14, scope: !6811)
!6909 = !DILocation(line: 459, column: 9, scope: !6811)
!6910 = !DILocation(line: 459, column: 14, scope: !6811)
!6911 = !DILocation(line: 460, column: 9, scope: !6811)
!6912 = !DILocation(line: 460, column: 14, scope: !6811)
!6913 = !DILocation(line: 461, column: 9, scope: !6811)
!6914 = !DILocation(line: 461, column: 30, scope: !6811)
!6915 = !DILocation(line: 461, column: 14, scope: !6811)
!6916 = !DILocation(line: 465, column: 9, scope: !6811)
!6917 = !DILocation(line: 465, column: 14, scope: !6811)
!6918 = !DILocation(line: 466, column: 9, scope: !6811)
!6919 = !DILocation(line: 466, column: 14, scope: !6811)
!6920 = !DILocation(line: 467, column: 9, scope: !6811)
!6921 = !DILocation(line: 468, column: 9, scope: !6811)
!6922 = !DILocation(line: 468, column: 14, scope: !6811)
!6923 = !DILocation(line: 469, column: 9, scope: !6811)
!6924 = !DILocation(line: 469, column: 14, scope: !6811)
!6925 = !DILocation(line: 470, column: 9, scope: !6811)
!6926 = !DILocation(line: 470, column: 14, scope: !6811)
!6927 = !DILocation(line: 472, column: 9, scope: !6811)
!6928 = !DILocation(line: 472, column: 14, scope: !6811)
!6929 = !DILocation(line: 473, column: 9, scope: !6811)
!6930 = !DILocation(line: 473, column: 14, scope: !6811)
!6931 = !DILocation(line: 474, column: 9, scope: !6811)
!6932 = !DILocation(line: 474, column: 14, scope: !6811)
!6933 = !DILocation(line: 424, column: 9, scope: !6811)
!6934 = !DILocation(line: 424, column: 6, scope: !6811)
!6935 = !DILocation(line: 488, column: 37, scope: !6811)
!6936 = !DILocation(line: 488, column: 42, scope: !6811)
!6937 = !DILocation(line: 488, column: 47, scope: !6811)
!6938 = !DILocation(line: 488, column: 9, scope: !6811)
!6939 = !DILocation(line: 488, column: 6, scope: !6811)
!6940 = !DILocation(line: 489, column: 9, scope: !6811)
!6941 = !DILocation(line: 490, column: 1, scope: !6811)
!6942 = !DILocation(line: 489, column: 2, scope: !6811)
!6943 = !DISubprogram(name: "si_meminfo_node", scope: !1846, file: !1846, line: 3176, type: !6944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6944 = !DISubroutineType(types: !6945)
!6945 = !{null, !6946, !42}
!6946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6820, size: 64)
!6947 = !DISubprogram(name: "node_page_state_pages", scope: !6948, file: !6948, line: 263, type: !6949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6948 = !DIFile(filename: "./include/linux/vmstat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "01b2722995b4b350c1d2f883546d8486")
!6949 = !DISubroutineType(types: !6950)
!6950 = !{!59, !6117, !287}
!6951 = !DISubprogram(name: "sysfs_emit_at", scope: !447, file: !447, line: 359, type: !6952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6952 = !DISubroutineType(types: !6953)
!6953 = !{!42, !421, !42, !36, null}
!6954 = !DISubprogram(name: "node_page_state", scope: !6948, file: !6948, line: 261, type: !6949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6955 = !DISubprogram(name: "sum_zone_node_page_state", scope: !6948, file: !6948, line: 258, type: !6956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6956 = !DISubroutineType(types: !6957)
!6957 = !{!59, !42, !335}
!6958 = !DISubprogram(name: "hugetlb_report_node_meminfo", scope: !5467, file: !5467, line: 147, type: !6959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6959 = !DISubroutineType(types: !6960)
!6960 = !{!42, !421, !42, !42}
!6961 = distinct !DISubprogram(name: "node_read_numastat", scope: !3, file: !3, line: 495, type: !5289, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6962)
!6962 = !{!6963, !6964, !6965}
!6963 = !DILocalVariable(name: "dev", arg: 1, scope: !6961, file: !3, line: 495, type: !2703)
!6964 = !DILocalVariable(name: "attr", arg: 2, scope: !6961, file: !3, line: 496, type: !5291)
!6965 = !DILocalVariable(name: "buf", arg: 3, scope: !6961, file: !3, line: 496, type: !421)
!6966 = !DILocation(line: 495, column: 50, scope: !6961)
!6967 = !DILocation(line: 496, column: 32, scope: !6961)
!6968 = !DILocation(line: 496, column: 44, scope: !6961)
!6969 = !DILocation(line: 498, column: 2, scope: !6961)
!6970 = !DILocation(line: 499, column: 20, scope: !6961)
!6971 = !DILocation(line: 506, column: 32, scope: !6961)
!6972 = !DILocation(line: 506, column: 37, scope: !6961)
!6973 = !DILocation(line: 506, column: 6, scope: !6961)
!6974 = !DILocation(line: 507, column: 32, scope: !6961)
!6975 = !DILocation(line: 507, column: 37, scope: !6961)
!6976 = !DILocation(line: 507, column: 6, scope: !6961)
!6977 = !DILocation(line: 508, column: 32, scope: !6961)
!6978 = !DILocation(line: 508, column: 37, scope: !6961)
!6979 = !DILocation(line: 508, column: 6, scope: !6961)
!6980 = !DILocation(line: 509, column: 32, scope: !6961)
!6981 = !DILocation(line: 509, column: 37, scope: !6961)
!6982 = !DILocation(line: 509, column: 6, scope: !6961)
!6983 = !DILocation(line: 510, column: 32, scope: !6961)
!6984 = !DILocation(line: 510, column: 37, scope: !6961)
!6985 = !DILocation(line: 510, column: 6, scope: !6961)
!6986 = !DILocation(line: 511, column: 32, scope: !6961)
!6987 = !DILocation(line: 511, column: 37, scope: !6961)
!6988 = !DILocation(line: 511, column: 6, scope: !6961)
!6989 = !DILocation(line: 499, column: 9, scope: !6961)
!6990 = !DILocation(line: 499, column: 2, scope: !6961)
!6991 = !DISubprogram(name: "fold_vm_numa_events", scope: !6948, file: !6948, line: 265, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6992 = !DISubprogram(name: "sysfs_emit", scope: !447, file: !447, line: 357, type: !6993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6993 = !DISubroutineType(types: !6994)
!6994 = !{!42, !421, !36, null}
!6995 = !DISubprogram(name: "sum_zone_numa_event_state", scope: !6948, file: !6948, line: 260, type: !6996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6996 = !DISubroutineType(types: !6997)
!6997 = !{!59, !42, !349}
!6998 = distinct !DISubprogram(name: "node_read_distance", scope: !3, file: !3, line: 549, type: !5289, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6999)
!6999 = !{!7000, !7001, !7002, !7003, !7004, !7005}
!7000 = !DILocalVariable(name: "dev", arg: 1, scope: !6998, file: !3, line: 549, type: !2703)
!7001 = !DILocalVariable(name: "attr", arg: 2, scope: !6998, file: !3, line: 550, type: !5291)
!7002 = !DILocalVariable(name: "buf", arg: 3, scope: !6998, file: !3, line: 550, type: !421)
!7003 = !DILocalVariable(name: "nid", scope: !6998, file: !3, line: 552, type: !42)
!7004 = !DILocalVariable(name: "len", scope: !6998, file: !3, line: 553, type: !42)
!7005 = !DILocalVariable(name: "i", scope: !6998, file: !3, line: 554, type: !42)
!7006 = !DILocation(line: 549, column: 50, scope: !6998)
!7007 = !DILocation(line: 550, column: 32, scope: !6998)
!7008 = !DILocation(line: 550, column: 44, scope: !6998)
!7009 = !DILocation(line: 552, column: 2, scope: !6998)
!7010 = !DILocation(line: 552, column: 6, scope: !6998)
!7011 = !DILocation(line: 552, column: 12, scope: !6998)
!7012 = !DILocation(line: 552, column: 17, scope: !6998)
!7013 = !DILocation(line: 553, column: 2, scope: !6998)
!7014 = !DILocation(line: 553, column: 6, scope: !6998)
!7015 = !DILocation(line: 554, column: 2, scope: !6998)
!7016 = !DILocation(line: 554, column: 6, scope: !6998)
!7017 = !DILocation(line: 560, column: 2, scope: !6998)
!7018 = !DILocation(line: 560, column: 2, scope: !7019)
!7019 = distinct !DILexicalBlock(scope: !6998, file: !3, line: 560, column: 2)
!7020 = !DILocation(line: 562, column: 2, scope: !7021)
!7021 = distinct !DILexicalBlock(scope: !6998, file: !3, line: 562, column: 2)
!7022 = !DILocation(line: 562, column: 2, scope: !7023)
!7023 = distinct !DILexicalBlock(scope: !7021, file: !3, line: 562, column: 2)
!7024 = !DILocation(line: 563, column: 24, scope: !7025)
!7025 = distinct !DILexicalBlock(scope: !7023, file: !3, line: 562, column: 26)
!7026 = !DILocation(line: 563, column: 29, scope: !7025)
!7027 = !DILocation(line: 564, column: 10, scope: !7025)
!7028 = !DILocation(line: 564, column: 24, scope: !7025)
!7029 = !DILocation(line: 563, column: 10, scope: !7025)
!7030 = !DILocation(line: 563, column: 7, scope: !7025)
!7031 = !DILocation(line: 565, column: 2, scope: !7025)
!7032 = distinct !{!7032, !7020, !7033, !5502, !5503}
!7033 = !DILocation(line: 565, column: 2, scope: !7021)
!7034 = !DILocation(line: 567, column: 23, scope: !6998)
!7035 = !DILocation(line: 567, column: 28, scope: !6998)
!7036 = !DILocation(line: 567, column: 9, scope: !6998)
!7037 = !DILocation(line: 567, column: 6, scope: !6998)
!7038 = !DILocation(line: 568, column: 9, scope: !6998)
!7039 = !DILocation(line: 569, column: 1, scope: !6998)
!7040 = !DILocation(line: 568, column: 2, scope: !6998)
!7041 = !DISubprogram(name: "__node_distance", scope: !7042, file: !7042, line: 80, type: !7043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7042 = !DIFile(filename: "./arch/x86/include/asm/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "120eda241c1b2b25166ee71f2a584d2d")
!7043 = !DISubroutineType(types: !7044)
!7044 = !{!42, !42, !42}
!7045 = distinct !DISubprogram(name: "node_read_vmstat", scope: !3, file: !3, line: 515, type: !5289, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7046)
!7046 = !{!7047, !7048, !7049, !7050, !7051, !7052, !7053, !7054}
!7047 = !DILocalVariable(name: "dev", arg: 1, scope: !7045, file: !3, line: 515, type: !2703)
!7048 = !DILocalVariable(name: "attr", arg: 2, scope: !7045, file: !3, line: 516, type: !5291)
!7049 = !DILocalVariable(name: "buf", arg: 3, scope: !7045, file: !3, line: 516, type: !421)
!7050 = !DILocalVariable(name: "nid", scope: !7045, file: !3, line: 518, type: !42)
!7051 = !DILocalVariable(name: "pgdat", scope: !7045, file: !3, line: 519, type: !6117)
!7052 = !DILocalVariable(name: "i", scope: !7045, file: !3, line: 520, type: !42)
!7053 = !DILocalVariable(name: "len", scope: !7045, file: !3, line: 521, type: !42)
!7054 = !DILocalVariable(name: "pages", scope: !7055, file: !3, line: 537, type: !59)
!7055 = distinct !DILexicalBlock(scope: !7056, file: !3, line: 536, column: 46)
!7056 = distinct !DILexicalBlock(scope: !7057, file: !3, line: 536, column: 2)
!7057 = distinct !DILexicalBlock(scope: !7045, file: !3, line: 536, column: 2)
!7058 = !DILocation(line: 515, column: 48, scope: !7045)
!7059 = !DILocation(line: 516, column: 30, scope: !7045)
!7060 = !DILocation(line: 516, column: 42, scope: !7045)
!7061 = !DILocation(line: 518, column: 2, scope: !7045)
!7062 = !DILocation(line: 518, column: 6, scope: !7045)
!7063 = !DILocation(line: 518, column: 12, scope: !7045)
!7064 = !DILocation(line: 518, column: 17, scope: !7045)
!7065 = !DILocation(line: 519, column: 2, scope: !7045)
!7066 = !DILocation(line: 519, column: 22, scope: !7045)
!7067 = !DILocation(line: 519, column: 30, scope: !7045)
!7068 = !DILocation(line: 520, column: 2, scope: !7045)
!7069 = !DILocation(line: 520, column: 6, scope: !7045)
!7070 = !DILocation(line: 521, column: 2, scope: !7045)
!7071 = !DILocation(line: 521, column: 6, scope: !7045)
!7072 = !DILocation(line: 523, column: 9, scope: !7073)
!7073 = distinct !DILexicalBlock(scope: !7045, file: !3, line: 523, column: 2)
!7074 = !DILocation(line: 523, column: 7, scope: !7073)
!7075 = !DILocation(line: 523, column: 14, scope: !7076)
!7076 = distinct !DILexicalBlock(scope: !7073, file: !3, line: 523, column: 2)
!7077 = !DILocation(line: 523, column: 16, scope: !7076)
!7078 = !DILocation(line: 523, column: 2, scope: !7073)
!7079 = !DILocation(line: 524, column: 24, scope: !7076)
!7080 = !DILocation(line: 524, column: 29, scope: !7076)
!7081 = !DILocation(line: 525, column: 25, scope: !7076)
!7082 = !DILocation(line: 525, column: 10, scope: !7076)
!7083 = !DILocation(line: 526, column: 35, scope: !7076)
!7084 = !DILocation(line: 526, column: 40, scope: !7076)
!7085 = !DILocation(line: 526, column: 10, scope: !7076)
!7086 = !DILocation(line: 524, column: 10, scope: !7076)
!7087 = !DILocation(line: 524, column: 7, scope: !7076)
!7088 = !DILocation(line: 524, column: 3, scope: !7076)
!7089 = !DILocation(line: 523, column: 42, scope: !7076)
!7090 = !DILocation(line: 523, column: 2, scope: !7076)
!7091 = distinct !{!7091, !7078, !7092, !5502, !5503}
!7092 = !DILocation(line: 526, column: 42, scope: !7073)
!7093 = !DILocation(line: 529, column: 2, scope: !7045)
!7094 = !DILocation(line: 530, column: 9, scope: !7095)
!7095 = distinct !DILexicalBlock(scope: !7045, file: !3, line: 530, column: 2)
!7096 = !DILocation(line: 530, column: 7, scope: !7095)
!7097 = !DILocation(line: 530, column: 14, scope: !7098)
!7098 = distinct !DILexicalBlock(scope: !7095, file: !3, line: 530, column: 2)
!7099 = !DILocation(line: 530, column: 16, scope: !7098)
!7100 = !DILocation(line: 530, column: 2, scope: !7095)
!7101 = !DILocation(line: 531, column: 24, scope: !7098)
!7102 = !DILocation(line: 531, column: 29, scope: !7098)
!7103 = !DILocation(line: 532, column: 25, scope: !7098)
!7104 = !DILocation(line: 532, column: 10, scope: !7098)
!7105 = !DILocation(line: 533, column: 36, scope: !7098)
!7106 = !DILocation(line: 533, column: 41, scope: !7098)
!7107 = !DILocation(line: 533, column: 10, scope: !7098)
!7108 = !DILocation(line: 531, column: 10, scope: !7098)
!7109 = !DILocation(line: 531, column: 7, scope: !7098)
!7110 = !DILocation(line: 531, column: 3, scope: !7098)
!7111 = !DILocation(line: 530, column: 43, scope: !7098)
!7112 = !DILocation(line: 530, column: 2, scope: !7098)
!7113 = distinct !{!7113, !7100, !7114, !5502, !5503}
!7114 = !DILocation(line: 533, column: 43, scope: !7095)
!7115 = !DILocation(line: 536, column: 9, scope: !7057)
!7116 = !DILocation(line: 536, column: 7, scope: !7057)
!7117 = !DILocation(line: 536, column: 14, scope: !7056)
!7118 = !DILocation(line: 536, column: 16, scope: !7056)
!7119 = !DILocation(line: 536, column: 2, scope: !7057)
!7120 = !DILocation(line: 537, column: 3, scope: !7055)
!7121 = !DILocation(line: 537, column: 17, scope: !7055)
!7122 = !DILocation(line: 537, column: 47, scope: !7055)
!7123 = !DILocation(line: 537, column: 54, scope: !7055)
!7124 = !DILocation(line: 537, column: 25, scope: !7055)
!7125 = !DILocation(line: 539, column: 32, scope: !7126)
!7126 = distinct !DILexicalBlock(scope: !7055, file: !3, line: 539, column: 7)
!7127 = !DILocation(line: 539, column: 7, scope: !7126)
!7128 = !DILocation(line: 539, column: 7, scope: !7055)
!7129 = !DILocation(line: 540, column: 13, scope: !7130)
!7130 = distinct !DILexicalBlock(scope: !7126, file: !3, line: 540, column: 13)
!7131 = !DILocation(line: 540, column: 13, scope: !7132)
!7132 = distinct !DILexicalBlock(scope: !7133, file: !3, line: 540, column: 13)
!7133 = distinct !DILexicalBlock(scope: !7130, file: !3, line: 540, column: 13)
!7134 = !{i32 -2139457013}
!7135 = !DILocation(line: 540, column: 13, scope: !7133)
!7136 = !DILocation(line: 540, column: 13, scope: !7126)
!7137 = !DILocation(line: 540, column: 10, scope: !7126)
!7138 = !DILocation(line: 540, column: 4, scope: !7126)
!7139 = !DILocation(line: 541, column: 24, scope: !7055)
!7140 = !DILocation(line: 541, column: 29, scope: !7055)
!7141 = !DILocation(line: 541, column: 61, scope: !7055)
!7142 = !DILocation(line: 541, column: 46, scope: !7055)
!7143 = !DILocation(line: 542, column: 10, scope: !7055)
!7144 = !DILocation(line: 541, column: 10, scope: !7055)
!7145 = !DILocation(line: 541, column: 7, scope: !7055)
!7146 = !DILocation(line: 543, column: 2, scope: !7056)
!7147 = !DILocation(line: 543, column: 2, scope: !7055)
!7148 = !DILocation(line: 536, column: 42, scope: !7056)
!7149 = !DILocation(line: 536, column: 2, scope: !7056)
!7150 = distinct !{!7150, !7119, !7151, !5502, !5503}
!7151 = !DILocation(line: 543, column: 2, scope: !7057)
!7152 = !DILocation(line: 545, column: 9, scope: !7045)
!7153 = !DILocation(line: 546, column: 1, scope: !7045)
!7154 = !DILocation(line: 545, column: 2, scope: !7045)
!7155 = distinct !DISubprogram(name: "zone_stat_name", scope: !6948, file: !6948, line: 500, type: !7156, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7158)
!7156 = !DISubroutineType(types: !7157)
!7157 = !{!36, !335}
!7158 = !{!7159}
!7159 = !DILocalVariable(name: "item", arg: 1, scope: !7155, file: !6948, line: 500, type: !335)
!7160 = !DILocation(line: 500, column: 62, scope: !7155)
!7161 = !DILocation(line: 502, column: 21, scope: !7155)
!7162 = !DILocation(line: 502, column: 9, scope: !7155)
!7163 = !DILocation(line: 502, column: 2, scope: !7155)
!7164 = distinct !DISubprogram(name: "numa_stat_name", scope: !6948, file: !6948, line: 506, type: !7165, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7167)
!7165 = !DISubroutineType(types: !7166)
!7166 = !{!36, !349}
!7167 = !{!7168}
!7168 = !DILocalVariable(name: "item", arg: 1, scope: !7164, file: !6948, line: 506, type: !349)
!7169 = !DILocation(line: 506, column: 62, scope: !7164)
!7170 = !DILocation(line: 509, column: 7, scope: !7164)
!7171 = !DILocation(line: 508, column: 43, scope: !7164)
!7172 = !DILocation(line: 508, column: 9, scope: !7164)
!7173 = !DILocation(line: 508, column: 2, scope: !7164)
!7174 = distinct !DISubprogram(name: "vmstat_item_print_in_thp", scope: !280, file: !280, line: 220, type: !7175, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7177)
!7175 = !DISubroutineType(types: !7176)
!7176 = !{!833, !287}
!7177 = !{!7178}
!7178 = !DILocalVariable(name: "item", arg: 1, scope: !7174, file: !280, line: 220, type: !287)
!7179 = !DILocation(line: 220, column: 74, scope: !7174)
!7180 = !DILocation(line: 223, column: 3, scope: !7181)
!7181 = distinct !DILexicalBlock(scope: !7174, file: !280, line: 222, column: 6)
!7182 = !DISubprogram(name: "__compiletime_assert_337", scope: !3, file: !3, line: 540, type: !1118, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7183 = distinct !DISubprogram(name: "node_stat_name", scope: !6948, file: !6948, line: 513, type: !7184, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7186)
!7184 = !DISubroutineType(types: !7185)
!7185 = !{!36, !287}
!7186 = !{!7187}
!7187 = !DILocalVariable(name: "item", arg: 1, scope: !7183, file: !6948, line: 513, type: !287)
!7188 = !DILocation(line: 513, column: 62, scope: !7183)
!7189 = !DILocation(line: 517, column: 7, scope: !7183)
!7190 = !DILocation(line: 516, column: 30, scope: !7183)
!7191 = !DILocation(line: 515, column: 9, scope: !7183)
!7192 = !DILocation(line: 515, column: 2, scope: !7183)
!7193 = distinct !DISubprogram(name: "cpumap_read", scope: !3, file: !3, line: 29, type: !4869, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7194)
!7194 = !{!7195, !7196, !7197, !7198, !7199, !7200, !7201, !7202, !7204, !7205, !7207, !7210}
!7195 = !DILocalVariable(name: "file", arg: 1, scope: !7193, file: !3, line: 29, type: !1675)
!7196 = !DILocalVariable(name: "kobj", arg: 2, scope: !7193, file: !3, line: 29, type: !386)
!7197 = !DILocalVariable(name: "attr", arg: 3, scope: !7193, file: !3, line: 30, type: !481)
!7198 = !DILocalVariable(name: "buf", arg: 4, scope: !7193, file: !3, line: 30, type: !421)
!7199 = !DILocalVariable(name: "off", arg: 5, scope: !7193, file: !3, line: 31, type: !61)
!7200 = !DILocalVariable(name: "count", arg: 6, scope: !7193, file: !3, line: 31, type: !55)
!7201 = !DILocalVariable(name: "dev", scope: !7193, file: !3, line: 33, type: !2703)
!7202 = !DILocalVariable(name: "__mptr", scope: !7203, file: !3, line: 33, type: !40)
!7203 = distinct !DILexicalBlock(scope: !7193, file: !3, line: 33, column: 23)
!7204 = !DILocalVariable(name: "node_dev", scope: !7193, file: !3, line: 34, type: !5274)
!7205 = !DILocalVariable(name: "__mptr", scope: !7206, file: !3, line: 34, type: !40)
!7206 = distinct !DILexicalBlock(scope: !7193, file: !3, line: 34, column: 26)
!7207 = !DILocalVariable(name: "mask", scope: !7193, file: !3, line: 35, type: !7208)
!7208 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !367, line: 913, baseType: !7209)
!7209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 64, elements: !371)
!7210 = !DILocalVariable(name: "n", scope: !7193, file: !3, line: 36, type: !453)
!7211 = !DILocation(line: 29, column: 48, scope: !7193)
!7212 = !DILocation(line: 29, column: 70, scope: !7193)
!7213 = !DILocation(line: 30, column: 29, scope: !7193)
!7214 = !DILocation(line: 30, column: 41, scope: !7193)
!7215 = !DILocation(line: 31, column: 14, scope: !7193)
!7216 = !DILocation(line: 31, column: 26, scope: !7193)
!7217 = !DILocation(line: 33, column: 2, scope: !7193)
!7218 = !DILocation(line: 33, column: 17, scope: !7193)
!7219 = !DILocation(line: 33, column: 23, scope: !7203)
!7220 = !DILocation(line: 33, column: 23, scope: !7193)
!7221 = !DILocation(line: 34, column: 2, scope: !7193)
!7222 = !DILocation(line: 34, column: 15, scope: !7193)
!7223 = !DILocation(line: 34, column: 26, scope: !7206)
!7224 = !DILocation(line: 34, column: 26, scope: !7193)
!7225 = !DILocation(line: 35, column: 2, scope: !7193)
!7226 = !DILocation(line: 35, column: 16, scope: !7193)
!7227 = !DILocation(line: 36, column: 2, scope: !7193)
!7228 = !DILocation(line: 36, column: 10, scope: !7193)
!7229 = !DILocation(line: 38, column: 7, scope: !7230)
!7230 = distinct !DILexicalBlock(scope: !7193, file: !3, line: 38, column: 6)
!7231 = !DILocation(line: 38, column: 6, scope: !7193)
!7232 = !DILocation(line: 39, column: 3, scope: !7230)
!7233 = !DILocation(line: 41, column: 14, scope: !7193)
!7234 = !DILocation(line: 41, column: 36, scope: !7193)
!7235 = !DILocation(line: 41, column: 46, scope: !7193)
!7236 = !DILocation(line: 41, column: 50, scope: !7193)
!7237 = !DILocation(line: 41, column: 20, scope: !7193)
!7238 = !DILocation(line: 41, column: 2, scope: !7193)
!7239 = !DILocation(line: 42, column: 34, scope: !7193)
!7240 = !DILocation(line: 42, column: 39, scope: !7193)
!7241 = !DILocation(line: 42, column: 45, scope: !7193)
!7242 = !DILocation(line: 42, column: 50, scope: !7193)
!7243 = !DILocation(line: 42, column: 6, scope: !7193)
!7244 = !DILocation(line: 42, column: 4, scope: !7193)
!7245 = !DILocation(line: 43, column: 19, scope: !7193)
!7246 = !DILocation(line: 43, column: 2, scope: !7193)
!7247 = !DILocation(line: 45, column: 9, scope: !7193)
!7248 = !DILocation(line: 45, column: 2, scope: !7193)
!7249 = !DILocation(line: 46, column: 1, scope: !7193)
!7250 = distinct !DISubprogram(name: "alloc_cpumask_var", scope: !367, file: !367, line: 918, type: !7251, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7254)
!7251 = !DISubroutineType(types: !7252)
!7252 = !{!833, !7253, !363}
!7253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7208, size: 64)
!7254 = !{!7255, !7256}
!7255 = !DILocalVariable(name: "mask", arg: 1, scope: !7250, file: !367, line: 918, type: !7253)
!7256 = !DILocalVariable(name: "flags", arg: 2, scope: !7250, file: !367, line: 918, type: !363)
!7257 = !DILocation(line: 918, column: 53, scope: !7250)
!7258 = !DILocation(line: 918, column: 65, scope: !7250)
!7259 = !DILocation(line: 920, column: 2, scope: !7250)
!7260 = distinct !DISubprogram(name: "cpumask_and", scope: !367, file: !367, line: 565, type: !7261, scopeLine: 568, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7264)
!7261 = !DISubroutineType(types: !7262)
!7262 = !{!833, !7263, !364, !364}
!7263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!7264 = !{!7265, !7266, !7267}
!7265 = !DILocalVariable(name: "dstp", arg: 1, scope: !7260, file: !367, line: 565, type: !7263)
!7266 = !DILocalVariable(name: "src1p", arg: 2, scope: !7260, file: !367, line: 566, type: !364)
!7267 = !DILocalVariable(name: "src2p", arg: 3, scope: !7260, file: !367, line: 567, type: !364)
!7268 = !DILocation(line: 565, column: 48, scope: !7260)
!7269 = !DILocation(line: 566, column: 33, scope: !7260)
!7270 = !DILocation(line: 567, column: 33, scope: !7260)
!7271 = !DILocation(line: 569, column: 20, scope: !7260)
!7272 = !DILocation(line: 569, column: 40, scope: !7260)
!7273 = !DILocation(line: 570, column: 12, scope: !7260)
!7274 = !DILocation(line: 569, column: 9, scope: !7260)
!7275 = !DILocation(line: 569, column: 2, scope: !7260)
!7276 = distinct !DISubprogram(name: "cpumask_of_node", scope: !7042, file: !7042, line: 70, type: !7277, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7279)
!7277 = !DISubroutineType(types: !7278)
!7278 = !{!364, !42}
!7279 = !{!7280}
!7280 = !DILocalVariable(name: "node", arg: 1, scope: !7276, file: !7042, line: 70, type: !42)
!7281 = !DILocation(line: 70, column: 57, scope: !7276)
!7282 = !DILocation(line: 72, column: 29, scope: !7276)
!7283 = !DILocation(line: 72, column: 9, scope: !7276)
!7284 = !DILocation(line: 72, column: 2, scope: !7276)
!7285 = distinct !DISubprogram(name: "cpumap_print_bitmask_to_buf", scope: !367, file: !367, line: 1190, type: !7286, scopeLine: 1192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7288)
!7286 = !DISubroutineType(types: !7287)
!7287 = !{!453, !421, !364, !61, !55}
!7288 = !{!7289, !7290, !7291, !7292}
!7289 = !DILocalVariable(name: "buf", arg: 1, scope: !7285, file: !367, line: 1190, type: !421)
!7290 = !DILocalVariable(name: "mask", arg: 2, scope: !7285, file: !367, line: 1190, type: !364)
!7291 = !DILocalVariable(name: "off", arg: 3, scope: !7285, file: !367, line: 1191, type: !61)
!7292 = !DILocalVariable(name: "count", arg: 4, scope: !7285, file: !367, line: 1191, type: !55)
!7293 = !DILocation(line: 1190, column: 35, scope: !7285)
!7294 = !DILocation(line: 1190, column: 62, scope: !7285)
!7295 = !DILocation(line: 1191, column: 10, scope: !7285)
!7296 = !DILocation(line: 1191, column: 22, scope: !7285)
!7297 = !DILocation(line: 1193, column: 37, scope: !7285)
!7298 = !DILocation(line: 1193, column: 42, scope: !7285)
!7299 = !DILocation(line: 1194, column: 8, scope: !7285)
!7300 = !DILocation(line: 1194, column: 20, scope: !7285)
!7301 = !DILocation(line: 1194, column: 25, scope: !7285)
!7302 = !DILocation(line: 1193, column: 9, scope: !7285)
!7303 = !DILocation(line: 1194, column: 32, scope: !7285)
!7304 = !DILocation(line: 1193, column: 2, scope: !7285)
!7305 = distinct !DISubprogram(name: "free_cpumask_var", scope: !367, file: !367, line: 946, type: !7306, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7308)
!7306 = !DISubroutineType(types: !7307)
!7307 = !{null, !7263}
!7308 = !{!7309}
!7309 = !DILocalVariable(name: "mask", arg: 1, scope: !7305, file: !367, line: 946, type: !7263)
!7310 = !DILocation(line: 946, column: 51, scope: !7305)
!7311 = !DILocation(line: 948, column: 1, scope: !7305)
!7312 = distinct !DISubprogram(name: "bitmap_and", scope: !7313, file: !7313, line: 336, type: !7314, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7316)
!7313 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!7314 = !DISubroutineType(types: !7315)
!7315 = !{!833, !1104, !5273, !5273, !7}
!7316 = !{!7317, !7318, !7319, !7320}
!7317 = !DILocalVariable(name: "dst", arg: 1, scope: !7312, file: !7313, line: 336, type: !1104)
!7318 = !DILocalVariable(name: "src1", arg: 2, scope: !7312, file: !7313, line: 336, type: !5273)
!7319 = !DILocalVariable(name: "src2", arg: 3, scope: !7312, file: !7313, line: 337, type: !5273)
!7320 = !DILocalVariable(name: "nbits", arg: 4, scope: !7312, file: !7313, line: 337, type: !7)
!7321 = !DILocation(line: 336, column: 46, scope: !7312)
!7322 = !DILocation(line: 336, column: 72, scope: !7312)
!7323 = !DILocation(line: 337, column: 25, scope: !7312)
!7324 = !DILocation(line: 337, column: 44, scope: !7312)
!7325 = !DILocation(line: 339, column: 6, scope: !7326)
!7326 = distinct !DILexicalBlock(scope: !7312, file: !7313, line: 339, column: 6)
!7327 = !DILocation(line: 339, column: 6, scope: !7312)
!7328 = !DILocation(line: 340, column: 19, scope: !7326)
!7329 = !DILocation(line: 340, column: 18, scope: !7326)
!7330 = !DILocation(line: 340, column: 27, scope: !7326)
!7331 = !DILocation(line: 340, column: 26, scope: !7326)
!7332 = !DILocation(line: 340, column: 24, scope: !7326)
!7333 = !DILocation(line: 340, column: 34, scope: !7326)
!7334 = !DILocation(line: 340, column: 32, scope: !7326)
!7335 = !DILocation(line: 340, column: 12, scope: !7326)
!7336 = !DILocation(line: 340, column: 16, scope: !7326)
!7337 = !DILocation(line: 340, column: 64, scope: !7326)
!7338 = !DILocation(line: 340, column: 3, scope: !7326)
!7339 = !DILocation(line: 341, column: 22, scope: !7312)
!7340 = !DILocation(line: 341, column: 27, scope: !7312)
!7341 = !DILocation(line: 341, column: 33, scope: !7312)
!7342 = !DILocation(line: 341, column: 39, scope: !7312)
!7343 = !DILocation(line: 341, column: 9, scope: !7312)
!7344 = !DILocation(line: 341, column: 2, scope: !7312)
!7345 = !DILocation(line: 342, column: 1, scope: !7312)
!7346 = !DISubprogram(name: "__bitmap_and", scope: !7313, file: !7313, line: 156, type: !7314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7347 = !DISubprogram(name: "bitmap_print_bitmask_to_buf", scope: !7313, file: !7313, line: 235, type: !7348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7348 = !DISubroutineType(types: !7349)
!7349 = !{!42, !421, !5273, !42, !61, !55}
!7350 = distinct !DISubprogram(name: "cpulist_read", scope: !3, file: !3, line: 50, type: !4869, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7351)
!7351 = !{!7352, !7353, !7354, !7355, !7356, !7357, !7358, !7359, !7361, !7362, !7364, !7365}
!7352 = !DILocalVariable(name: "file", arg: 1, scope: !7350, file: !3, line: 50, type: !1675)
!7353 = !DILocalVariable(name: "kobj", arg: 2, scope: !7350, file: !3, line: 50, type: !386)
!7354 = !DILocalVariable(name: "attr", arg: 3, scope: !7350, file: !3, line: 51, type: !481)
!7355 = !DILocalVariable(name: "buf", arg: 4, scope: !7350, file: !3, line: 51, type: !421)
!7356 = !DILocalVariable(name: "off", arg: 5, scope: !7350, file: !3, line: 52, type: !61)
!7357 = !DILocalVariable(name: "count", arg: 6, scope: !7350, file: !3, line: 52, type: !55)
!7358 = !DILocalVariable(name: "dev", scope: !7350, file: !3, line: 54, type: !2703)
!7359 = !DILocalVariable(name: "__mptr", scope: !7360, file: !3, line: 54, type: !40)
!7360 = distinct !DILexicalBlock(scope: !7350, file: !3, line: 54, column: 23)
!7361 = !DILocalVariable(name: "node_dev", scope: !7350, file: !3, line: 55, type: !5274)
!7362 = !DILocalVariable(name: "__mptr", scope: !7363, file: !3, line: 55, type: !40)
!7363 = distinct !DILexicalBlock(scope: !7350, file: !3, line: 55, column: 26)
!7364 = !DILocalVariable(name: "mask", scope: !7350, file: !3, line: 56, type: !7208)
!7365 = !DILocalVariable(name: "n", scope: !7350, file: !3, line: 57, type: !453)
!7366 = !DILocation(line: 50, column: 49, scope: !7350)
!7367 = !DILocation(line: 50, column: 71, scope: !7350)
!7368 = !DILocation(line: 51, column: 30, scope: !7350)
!7369 = !DILocation(line: 51, column: 42, scope: !7350)
!7370 = !DILocation(line: 52, column: 15, scope: !7350)
!7371 = !DILocation(line: 52, column: 27, scope: !7350)
!7372 = !DILocation(line: 54, column: 2, scope: !7350)
!7373 = !DILocation(line: 54, column: 17, scope: !7350)
!7374 = !DILocation(line: 54, column: 23, scope: !7360)
!7375 = !DILocation(line: 54, column: 23, scope: !7350)
!7376 = !DILocation(line: 55, column: 2, scope: !7350)
!7377 = !DILocation(line: 55, column: 15, scope: !7350)
!7378 = !DILocation(line: 55, column: 26, scope: !7363)
!7379 = !DILocation(line: 55, column: 26, scope: !7350)
!7380 = !DILocation(line: 56, column: 2, scope: !7350)
!7381 = !DILocation(line: 56, column: 16, scope: !7350)
!7382 = !DILocation(line: 57, column: 2, scope: !7350)
!7383 = !DILocation(line: 57, column: 10, scope: !7350)
!7384 = !DILocation(line: 59, column: 7, scope: !7385)
!7385 = distinct !DILexicalBlock(scope: !7350, file: !3, line: 59, column: 6)
!7386 = !DILocation(line: 59, column: 6, scope: !7350)
!7387 = !DILocation(line: 60, column: 3, scope: !7385)
!7388 = !DILocation(line: 62, column: 14, scope: !7350)
!7389 = !DILocation(line: 62, column: 36, scope: !7350)
!7390 = !DILocation(line: 62, column: 46, scope: !7350)
!7391 = !DILocation(line: 62, column: 50, scope: !7350)
!7392 = !DILocation(line: 62, column: 20, scope: !7350)
!7393 = !DILocation(line: 62, column: 2, scope: !7350)
!7394 = !DILocation(line: 63, column: 31, scope: !7350)
!7395 = !DILocation(line: 63, column: 36, scope: !7350)
!7396 = !DILocation(line: 63, column: 42, scope: !7350)
!7397 = !DILocation(line: 63, column: 47, scope: !7350)
!7398 = !DILocation(line: 63, column: 6, scope: !7350)
!7399 = !DILocation(line: 63, column: 4, scope: !7350)
!7400 = !DILocation(line: 64, column: 19, scope: !7350)
!7401 = !DILocation(line: 64, column: 2, scope: !7350)
!7402 = !DILocation(line: 66, column: 9, scope: !7350)
!7403 = !DILocation(line: 66, column: 2, scope: !7350)
!7404 = !DILocation(line: 67, column: 1, scope: !7350)
!7405 = distinct !DISubprogram(name: "cpumap_print_list_to_buf", scope: !367, file: !367, line: 1209, type: !7286, scopeLine: 1211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7406)
!7406 = !{!7407, !7408, !7409, !7410}
!7407 = !DILocalVariable(name: "buf", arg: 1, scope: !7405, file: !367, line: 1209, type: !421)
!7408 = !DILocalVariable(name: "mask", arg: 2, scope: !7405, file: !367, line: 1209, type: !364)
!7409 = !DILocalVariable(name: "off", arg: 3, scope: !7405, file: !367, line: 1210, type: !61)
!7410 = !DILocalVariable(name: "count", arg: 4, scope: !7405, file: !367, line: 1210, type: !55)
!7411 = !DILocation(line: 1209, column: 32, scope: !7405)
!7412 = !DILocation(line: 1209, column: 59, scope: !7405)
!7413 = !DILocation(line: 1210, column: 10, scope: !7405)
!7414 = !DILocation(line: 1210, column: 22, scope: !7405)
!7415 = !DILocation(line: 1212, column: 34, scope: !7405)
!7416 = !DILocation(line: 1212, column: 39, scope: !7405)
!7417 = !DILocation(line: 1213, column: 8, scope: !7405)
!7418 = !DILocation(line: 1213, column: 20, scope: !7405)
!7419 = !DILocation(line: 1213, column: 25, scope: !7405)
!7420 = !DILocation(line: 1212, column: 9, scope: !7405)
!7421 = !DILocation(line: 1213, column: 32, scope: !7405)
!7422 = !DILocation(line: 1212, column: 2, scope: !7405)
!7423 = !DISubprogram(name: "bitmap_print_list_to_buf", scope: !7313, file: !7313, line: 238, type: !7348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7424 = distinct !DISubprogram(name: "variable__ffs", scope: !6427, file: !6427, line: 250, type: !7425, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7427)
!7425 = !DISubroutineType(types: !7426)
!7426 = !{!59, !59}
!7427 = !{!7428}
!7428 = !DILocalVariable(name: "word", arg: 1, scope: !7424, file: !6427, line: 250, type: !59)
!7429 = !DILocation(line: 250, column: 66, scope: !7424)
!7430 = !DILocation(line: 254, column: 11, scope: !7424)
!7431 = !DILocation(line: 252, column: 2, scope: !7424)
!7432 = !{i64 861316}
!7433 = !DILocation(line: 255, column: 9, scope: !7424)
!7434 = !DILocation(line: 255, column: 2, scope: !7424)
!7435 = !DISubprogram(name: "_find_next_bit", scope: !5975, file: !5975, line: 11, type: !5976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7436 = distinct !DISubprogram(name: "show_node_state", scope: !3, file: !3, line: 911, type: !5289, scopeLine: 913, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7437)
!7437 = !{!7438, !7439, !7440, !7441, !7442}
!7438 = !DILocalVariable(name: "dev", arg: 1, scope: !7436, file: !3, line: 911, type: !2703)
!7439 = !DILocalVariable(name: "attr", arg: 2, scope: !7436, file: !3, line: 912, type: !5291)
!7440 = !DILocalVariable(name: "buf", arg: 3, scope: !7436, file: !3, line: 912, type: !421)
!7441 = !DILocalVariable(name: "na", scope: !7436, file: !3, line: 914, type: !5280)
!7442 = !DILocalVariable(name: "__mptr", scope: !7443, file: !3, line: 914, type: !40)
!7443 = distinct !DILexicalBlock(scope: !7436, file: !3, line: 914, column: 25)
!7444 = !DILocation(line: 911, column: 47, scope: !7436)
!7445 = !DILocation(line: 912, column: 36, scope: !7436)
!7446 = !DILocation(line: 912, column: 48, scope: !7436)
!7447 = !DILocation(line: 914, column: 2, scope: !7436)
!7448 = !DILocation(line: 914, column: 20, scope: !7436)
!7449 = !DILocation(line: 914, column: 25, scope: !7443)
!7450 = !DILocation(line: 914, column: 25, scope: !7436)
!7451 = !DILocation(line: 916, column: 20, scope: !7436)
!7452 = !DILocation(line: 917, column: 6, scope: !7436)
!7453 = !DILocation(line: 916, column: 9, scope: !7436)
!7454 = !DILocation(line: 918, column: 1, scope: !7436)
!7455 = !DILocation(line: 916, column: 2, scope: !7436)
!7456 = distinct !DISubprogram(name: "__nodemask_pr_numnodes", scope: !254, file: !254, line: 110, type: !6097, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7457)
!7457 = !{!7458}
!7458 = !DILocalVariable(name: "m", arg: 1, scope: !7456, file: !254, line: 110, type: !6099)
!7459 = !DILocation(line: 110, column: 69, scope: !7456)
!7460 = !DILocation(line: 112, column: 9, scope: !7456)
!7461 = !DILocation(line: 112, column: 2, scope: !7456)
!7462 = distinct !DISubprogram(name: "__nodemask_pr_bits", scope: !254, file: !254, line: 114, type: !7463, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7465)
!7463 = !DISubroutineType(types: !7464)
!7464 = !{!5273, !6099}
!7465 = !{!7466}
!7466 = !DILocalVariable(name: "m", arg: 1, scope: !7462, file: !254, line: 114, type: !6099)
!7467 = !DILocation(line: 114, column: 73, scope: !7462)
!7468 = !DILocation(line: 116, column: 9, scope: !7462)
!7469 = !DILocation(line: 116, column: 13, scope: !7462)
!7470 = !DILocation(line: 116, column: 16, scope: !7462)
!7471 = !DILocation(line: 116, column: 2, scope: !7462)
!7472 = distinct !DISubprogram(name: "find_first_bit", scope: !5975, file: !5975, line: 200, type: !7473, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7475)
!7473 = !DISubroutineType(types: !7474)
!7474 = !{!59, !5273, !59}
!7475 = !{!7476, !7477, !7478}
!7476 = !DILocalVariable(name: "addr", arg: 1, scope: !7472, file: !5975, line: 200, type: !5273)
!7477 = !DILocalVariable(name: "size", arg: 2, scope: !7472, file: !5975, line: 200, type: !59)
!7478 = !DILocalVariable(name: "val", scope: !7479, file: !5975, line: 203, type: !59)
!7479 = distinct !DILexicalBlock(scope: !7480, file: !5975, line: 202, column: 31)
!7480 = distinct !DILexicalBlock(scope: !7472, file: !5975, line: 202, column: 6)
!7481 = !DILocation(line: 200, column: 51, scope: !7472)
!7482 = !DILocation(line: 200, column: 71, scope: !7472)
!7483 = !DILocation(line: 202, column: 6, scope: !7480)
!7484 = !DILocation(line: 202, column: 6, scope: !7472)
!7485 = !DILocation(line: 203, column: 3, scope: !7479)
!7486 = !DILocation(line: 203, column: 17, scope: !7479)
!7487 = !DILocation(line: 203, column: 24, scope: !7479)
!7488 = !DILocation(line: 203, column: 23, scope: !7479)
!7489 = !DILocation(line: 203, column: 31, scope: !7479)
!7490 = !DILocation(line: 203, column: 29, scope: !7479)
!7491 = !DILocation(line: 205, column: 10, scope: !7479)
!7492 = !DILocation(line: 205, column: 16, scope: !7479)
!7493 = !DILocation(line: 205, column: 29, scope: !7479)
!7494 = !DILocation(line: 205, column: 3, scope: !7479)
!7495 = !DILocation(line: 206, column: 2, scope: !7480)
!7496 = !DILocation(line: 208, column: 25, scope: !7472)
!7497 = !DILocation(line: 208, column: 31, scope: !7472)
!7498 = !DILocation(line: 208, column: 9, scope: !7472)
!7499 = !DILocation(line: 208, column: 2, scope: !7472)
!7500 = !DILocation(line: 209, column: 1, scope: !7472)
!7501 = !DISubprogram(name: "_find_first_bit", scope: !5975, file: !5975, line: 21, type: !7473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7502 = distinct !DISubprogram(name: "register_memory_blocks_under_node", scope: !5276, file: !5276, line: 100, type: !7503, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7505)
!7503 = !DISubroutineType(types: !7504)
!7504 = !{null, !42, !59, !59, !358}
!7505 = !{!7506, !7507, !7508, !7509}
!7506 = !DILocalVariable(name: "nid", arg: 1, scope: !7502, file: !5276, line: 100, type: !42)
!7507 = !DILocalVariable(name: "start_pfn", arg: 2, scope: !7502, file: !5276, line: 100, type: !59)
!7508 = !DILocalVariable(name: "end_pfn", arg: 3, scope: !7502, file: !5276, line: 101, type: !59)
!7509 = !DILocalVariable(name: "context", arg: 4, scope: !7502, file: !5276, line: 102, type: !358)
!7510 = !DILocation(line: 100, column: 58, scope: !7502)
!7511 = !DILocation(line: 100, column: 77, scope: !7502)
!7512 = !DILocation(line: 101, column: 26, scope: !7502)
!7513 = !DILocation(line: 102, column: 33, scope: !7502)
!7514 = !DILocation(line: 104, column: 1, scope: !7502)
