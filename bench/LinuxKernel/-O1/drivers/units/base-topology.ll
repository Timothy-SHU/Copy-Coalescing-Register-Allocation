; ModuleID = 'drivers/base/topology.c'
source_filename = "drivers/base/topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_topology__287_210_topology_sysfs_init\22, \22a\22\09\09"
module asm "__initcall__kmod_topology__287_210_topology_sysfs_init6:\09\09\09"
module asm ".long\09__initstub__kmod_topology__287_210_topology_sysfs_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.cpuinfo_x86 = type { %union.anon.13, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.15, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.13 = type { i32 }
%union.anon.15 = type { i64, [88 x i8] }
%struct.bin_attribute = type { %struct.attribute, i64, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i64] }
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

@__UNIQUE_ID___addressable___initstub__kmod_topology__287_210_topology_sysfs_init6288 = internal global ptr @__initstub__kmod_topology__287_210_topology_sysfs_init6, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [22 x i8] c"base/topology:prepare\00", align 1, !dbg !4689
@topology_attr_group = internal constant %struct.attribute_group { ptr @.str.1, ptr @topology_is_visible, ptr null, ptr @default_attrs, ptr @bin_attrs }, align 8, !dbg !4699
@.str.1 = private unnamed_addr constant [9 x i8] c"topology\00", align 1, !dbg !4694
@default_attrs = internal global [6 x ptr] [ptr @dev_attr_physical_package_id, ptr @dev_attr_die_id, ptr @dev_attr_cluster_id, ptr @dev_attr_core_id, ptr @dev_attr_ppin, ptr null], align 16, !dbg !4720
@bin_attrs = internal global [13 x ptr] [ptr @bin_attr_core_cpus, ptr @bin_attr_core_cpus_list, ptr @bin_attr_thread_siblings, ptr @bin_attr_thread_siblings_list, ptr @bin_attr_core_siblings, ptr @bin_attr_core_siblings_list, ptr @bin_attr_cluster_cpus, ptr @bin_attr_cluster_cpus_list, ptr @bin_attr_die_cpus, ptr @bin_attr_die_cpus_list, ptr @bin_attr_package_cpus, ptr @bin_attr_package_cpus_list, ptr null], align 16, !dbg !4747
@dev_attr_ppin = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 256 }, ptr @ppin_show, ptr null }, align 8, !dbg !4704
@cpu_info = external dso_local global %struct.cpuinfo_x86, section ".data..percpu..read_mostly", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"ppin\00", align 1, !dbg !4701
@.str.3 = private unnamed_addr constant [8 x i8] c"0x%llx\0A\00", align 1, !dbg !4718
@dev_attr_physical_package_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @physical_package_id_show, ptr null }, align 8, !dbg !4726
@dev_attr_die_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @die_id_show, ptr null }, align 8, !dbg !4734
@dev_attr_cluster_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @cluster_id_show, ptr null }, align 8, !dbg !4741
@dev_attr_core_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @core_id_show, ptr null }, align 8, !dbg !4745
@.str.4 = private unnamed_addr constant [20 x i8] c"physical_package_id\00", align 1, !dbg !4723
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !4728
@.str.6 = private unnamed_addr constant [7 x i8] c"die_id\00", align 1, !dbg !4731
@.str.7 = private unnamed_addr constant [11 x i8] c"cluster_id\00", align 1, !dbg !4736
@cpu_l2c_id = external dso_local global i16, section ".data..percpu..read_mostly", align 2
@.str.8 = private unnamed_addr constant [8 x i8] c"core_id\00", align 1, !dbg !4743
@bin_attr_core_cpus = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.9, i16 292 }, i64 4096, ptr null, ptr null, ptr @core_cpus_read, ptr null, ptr null }, align 8, !dbg !4757
@bin_attr_core_cpus_list = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.10, i16 292 }, i64 4096, ptr null, ptr null, ptr @core_cpus_list_read, ptr null, ptr null }, align 8, !dbg !4764
@bin_attr_thread_siblings = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.11, i16 292 }, i64 4096, ptr null, ptr null, ptr @thread_siblings_read, ptr null, ptr null }, align 8, !dbg !4768
@bin_attr_thread_siblings_list = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.12, i16 292 }, i64 4096, ptr null, ptr null, ptr @thread_siblings_list_read, ptr null, ptr null }, align 8, !dbg !4775
@bin_attr_core_siblings = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.13, i16 292 }, i64 4096, ptr null, ptr null, ptr @core_siblings_read, ptr null, ptr null }, align 8, !dbg !4782
@bin_attr_core_siblings_list = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.14, i16 292 }, i64 4096, ptr null, ptr null, ptr @core_siblings_list_read, ptr null, ptr null }, align 8, !dbg !4789
@bin_attr_cluster_cpus = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.15, i16 292 }, i64 4096, ptr null, ptr null, ptr @cluster_cpus_read, ptr null, ptr null }, align 8, !dbg !4794
@bin_attr_cluster_cpus_list = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.16, i16 292 }, i64 4096, ptr null, ptr null, ptr @cluster_cpus_list_read, ptr null, ptr null }, align 8, !dbg !4801
@bin_attr_die_cpus = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.17, i16 292 }, i64 4096, ptr null, ptr null, ptr @die_cpus_read, ptr null, ptr null }, align 8, !dbg !4805
@bin_attr_die_cpus_list = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.18, i16 292 }, i64 4096, ptr null, ptr null, ptr @die_cpus_list_read, ptr null, ptr null }, align 8, !dbg !4809
@bin_attr_package_cpus = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.19, i16 292 }, i64 4096, ptr null, ptr null, ptr @package_cpus_read, ptr null, ptr null }, align 8, !dbg !4813
@bin_attr_package_cpus_list = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.20, i16 292 }, i64 4096, ptr null, ptr null, ptr @package_cpus_list_read, ptr null, ptr null }, align 8, !dbg !4817
@.str.9 = private unnamed_addr constant [10 x i8] c"core_cpus\00", align 1, !dbg !4752
@cpu_sibling_map = external dso_local global [1 x %struct.cpumask], section ".data..percpu..read_mostly", align 8
@nr_cpu_ids = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"core_cpus_list\00", align 1, !dbg !4759
@.str.11 = private unnamed_addr constant [16 x i8] c"thread_siblings\00", align 1, !dbg !4766
@.str.12 = private unnamed_addr constant [21 x i8] c"thread_siblings_list\00", align 1, !dbg !4770
@.str.13 = private unnamed_addr constant [14 x i8] c"core_siblings\00", align 1, !dbg !4777
@cpu_core_map = external dso_local global [1 x %struct.cpumask], section ".data..percpu..read_mostly", align 8
@.str.14 = private unnamed_addr constant [19 x i8] c"core_siblings_list\00", align 1, !dbg !4784
@.str.15 = private unnamed_addr constant [13 x i8] c"cluster_cpus\00", align 1, !dbg !4791
@.str.16 = private unnamed_addr constant [18 x i8] c"cluster_cpus_list\00", align 1, !dbg !4796
@.str.17 = private unnamed_addr constant [9 x i8] c"die_cpus\00", align 1, !dbg !4803
@cpu_die_map = external dso_local global [1 x %struct.cpumask], section ".data..percpu..read_mostly", align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"die_cpus_list\00", align 1, !dbg !4807
@.str.19 = private unnamed_addr constant [13 x i8] c"package_cpus\00", align 1, !dbg !4811
@.str.20 = private unnamed_addr constant [18 x i8] c"package_cpus_list\00", align 1, !dbg !4815
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_topology__287_210_topology_sysfs_init6288], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_topology__287_210_topology_sysfs_init6() #0 section ".init.text" align 16 !dbg !4828 {
entry:
  %call = call i32 @topology_sysfs_init() #8, !dbg !4829
  ret i32 %call, !dbg !4829
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @topology_sysfs_init() #0 section ".init.text" align 16 !dbg !4830 {
entry:
  %call = call i32 @cpuhp_setup_state(i32 noundef 60, ptr noundef @.str, ptr noundef @topology_add_dev, ptr noundef @topology_remove_dev) #9, !dbg !4831
  ret i32 %call, !dbg !4832
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_setup_state(i32 noundef %state, ptr noundef %name, ptr noundef %startup, ptr noundef %teardown) #1 align 16 !dbg !4833 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %startup.addr = alloca ptr, align 8
  %teardown.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4840, metadata !DIExpression()), !dbg !4844
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4841, metadata !DIExpression()), !dbg !4845
  store ptr %startup, ptr %startup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %startup.addr, metadata !4842, metadata !DIExpression()), !dbg !4846
  store ptr %teardown, ptr %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %teardown.addr, metadata !4843, metadata !DIExpression()), !dbg !4847
  %0 = load i32, ptr %state.addr, align 4, !dbg !4848
  %1 = load ptr, ptr %name.addr, align 8, !dbg !4849
  %2 = load ptr, ptr %startup.addr, align 8, !dbg !4850
  %3 = load ptr, ptr %teardown.addr, align 8, !dbg !4851
  %call = call i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #9, !dbg !4852
  ret i32 %call, !dbg !4853
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @topology_add_dev(i32 noundef %cpu) #2 align 16 !dbg !4854 {
entry:
  %cpu.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4856, metadata !DIExpression()), !dbg !4858
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !4859
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !4857, metadata !DIExpression()), !dbg !4860
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4861
  %call = call ptr @get_cpu_device(i32 noundef %0) #9, !dbg !4862
  store ptr %call, ptr %dev, align 8, !dbg !4860
  %1 = load ptr, ptr %dev, align 8, !dbg !4863
  %kobj = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 0, !dbg !4864
  %call1 = call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef @topology_attr_group) #9, !dbg !4865
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !4866
  ret i32 %call1, !dbg !4867
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @topology_remove_dev(i32 noundef %cpu) #2 align 16 !dbg !4868 {
entry:
  %cpu.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4870, metadata !DIExpression()), !dbg !4872
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !4873
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !4871, metadata !DIExpression()), !dbg !4874
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4875
  %call = call ptr @get_cpu_device(i32 noundef %0) #9, !dbg !4876
  store ptr %call, ptr %dev, align 8, !dbg !4874
  %1 = load ptr, ptr %dev, align 8, !dbg !4877
  %kobj = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 0, !dbg !4878
  call void @sysfs_remove_group(ptr noundef %kobj, ptr noundef @topology_attr_group) #9, !dbg !4879
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !4880
  ret i32 0, !dbg !4881
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4882 dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4885 dso_local ptr @get_cpu_device(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4889 dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @topology_is_visible(ptr noundef %kobj, ptr noundef %attr, i32 noundef %unused) #2 align 16 !dbg !4892 {
entry:
  %retval = alloca i16, align 2
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %unused.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4894, metadata !DIExpression()), !dbg !4905
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4895, metadata !DIExpression()), !dbg !4906
  store i32 %unused, ptr %unused.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !4896, metadata !DIExpression()), !dbg !4907
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !4908
  %cmp = icmp eq ptr %0, @dev_attr_ppin, !dbg !4909
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4910

land.lhs.true:                                    ; preds = %entry
  br label %do.body, !dbg !4911

do.body:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4912
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4897, metadata !DIExpression()), !dbg !4912
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4912
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !4912
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4911
  br label %do.end, !dbg !4912

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !4913
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4901, metadata !DIExpression()), !dbg !4913
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !4913
  %2 = load i64, ptr %__ptr, align 8, !dbg !4913
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !4914
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4903, metadata !DIExpression()), !dbg !4914
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !4914
  store ptr %3, ptr %__mptr, align 8, !dbg !4914
  %4 = load ptr, ptr %__mptr, align 8, !dbg !4914
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !4914
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !4914
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !4913
  %5 = load ptr, ptr %tmp2, align 8, !dbg !4914
  %id = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27, !dbg !4913
  %6 = load i32, ptr %id, align 8, !dbg !4913
  %idxprom = zext i32 %6 to i64, !dbg !4913
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4913
  %7 = load i64, ptr %arrayidx, align 8, !dbg !4913
  %add = add i64 %2, %7, !dbg !4913
  %8 = inttoptr i64 %add to ptr, !dbg !4913
  store ptr %8, ptr %tmp1, align 8, !dbg !4913
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !4911
  %9 = load ptr, ptr %tmp1, align 8, !dbg !4913
  store ptr %9, ptr %tmp, align 8, !dbg !4912
  %10 = load ptr, ptr %tmp, align 8, !dbg !4911
  %ppin = getelementptr inbounds %struct.cpuinfo_x86, ptr %10, i32 0, i32 20, !dbg !4915
  %11 = load i64, ptr %ppin, align 8, !dbg !4915
  %tobool = icmp ne i64 %11, 0, !dbg !4915
  br i1 %tobool, label %if.end, label %if.then, !dbg !4916

if.then:                                          ; preds = %do.end
  store i16 0, ptr %retval, align 2, !dbg !4917
  br label %return, !dbg !4917

if.end:                                           ; preds = %do.end, %entry
  %12 = load ptr, ptr %attr.addr, align 8, !dbg !4918
  %mode = getelementptr inbounds %struct.attribute, ptr %12, i32 0, i32 1, !dbg !4919
  %13 = load i16, ptr %mode, align 8, !dbg !4919
  store i16 %13, ptr %retval, align 2, !dbg !4920
  br label %return, !dbg !4920

return:                                           ; preds = %if.end, %if.then
  %14 = load i16, ptr %retval, align 2, !dbg !4921
  ret i16 %14, !dbg !4921
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ppin_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #2 align 16 !dbg !4922 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4924, metadata !DIExpression()), !dbg !4932
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4925, metadata !DIExpression()), !dbg !4932
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4926, metadata !DIExpression()), !dbg !4932
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4932
  br label %do.body, !dbg !4933

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4934
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4927, metadata !DIExpression()), !dbg !4934
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4934
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !4934
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4933
  br label %do.end, !dbg !4934

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !4935
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4930, metadata !DIExpression()), !dbg !4935
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !4935
  %2 = load i64, ptr %__ptr, align 8, !dbg !4935
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !4935
  %id = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27, !dbg !4935
  %4 = load i32, ptr %id, align 8, !dbg !4935
  %idxprom = zext i32 %4 to i64, !dbg !4935
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4935
  %5 = load i64, ptr %arrayidx, align 8, !dbg !4935
  %add = add i64 %2, %5, !dbg !4935
  %6 = inttoptr i64 %add to ptr, !dbg !4935
  store ptr %6, ptr %tmp1, align 8, !dbg !4935
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !4933
  %7 = load ptr, ptr %tmp1, align 8, !dbg !4935
  store ptr %7, ptr %tmp, align 8, !dbg !4934
  %8 = load ptr, ptr %tmp, align 8, !dbg !4933
  %ppin = getelementptr inbounds %struct.cpuinfo_x86, ptr %8, i32 0, i32 20, !dbg !4932
  %9 = load i64, ptr %ppin, align 8, !dbg !4932
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.3, i64 noundef %9) #9, !dbg !4932
  %conv = sext i32 %call to i64, !dbg !4932
  ret i64 %conv, !dbg !4932
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4936 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @physical_package_id_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #2 align 16 !dbg !4939 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4941, metadata !DIExpression()), !dbg !4949
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4942, metadata !DIExpression()), !dbg !4949
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4943, metadata !DIExpression()), !dbg !4949
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4949
  br label %do.body, !dbg !4950

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4951
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4944, metadata !DIExpression()), !dbg !4951
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4951
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !4951
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4950
  br label %do.end, !dbg !4951

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !4952
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4947, metadata !DIExpression()), !dbg !4952
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !4952
  %2 = load i64, ptr %__ptr, align 8, !dbg !4952
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !4952
  %id = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27, !dbg !4952
  %4 = load i32, ptr %id, align 8, !dbg !4952
  %idxprom = zext i32 %4 to i64, !dbg !4952
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4952
  %5 = load i64, ptr %arrayidx, align 8, !dbg !4952
  %add = add i64 %2, %5, !dbg !4952
  %6 = inttoptr i64 %add to ptr, !dbg !4952
  store ptr %6, ptr %tmp1, align 8, !dbg !4952
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !4950
  %7 = load ptr, ptr %tmp1, align 8, !dbg !4952
  store ptr %7, ptr %tmp, align 8, !dbg !4951
  %8 = load ptr, ptr %tmp, align 8, !dbg !4950
  %phys_proc_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %8, i32 0, i32 26, !dbg !4949
  %9 = load i16, ptr %phys_proc_id, align 2, !dbg !4949
  %conv = zext i16 %9 to i32, !dbg !4949
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.5, i32 noundef %conv) #9, !dbg !4949
  %conv2 = sext i32 %call to i64, !dbg !4949
  ret i64 %conv2, !dbg !4949
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @die_id_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #2 align 16 !dbg !4953 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4955, metadata !DIExpression()), !dbg !4963
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4956, metadata !DIExpression()), !dbg !4963
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4957, metadata !DIExpression()), !dbg !4963
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4963
  br label %do.body, !dbg !4964

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4965
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4958, metadata !DIExpression()), !dbg !4965
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4965
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !4965
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4964
  br label %do.end, !dbg !4965

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !4966
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4961, metadata !DIExpression()), !dbg !4966
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !4966
  %2 = load i64, ptr %__ptr, align 8, !dbg !4966
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !4966
  %id = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27, !dbg !4966
  %4 = load i32, ptr %id, align 8, !dbg !4966
  %idxprom = zext i32 %4 to i64, !dbg !4966
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4966
  %5 = load i64, ptr %arrayidx, align 8, !dbg !4966
  %add = add i64 %2, %5, !dbg !4966
  %6 = inttoptr i64 %add to ptr, !dbg !4966
  store ptr %6, ptr %tmp1, align 8, !dbg !4966
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !4964
  %7 = load ptr, ptr %tmp1, align 8, !dbg !4966
  store ptr %7, ptr %tmp, align 8, !dbg !4965
  %8 = load ptr, ptr %tmp, align 8, !dbg !4964
  %cpu_die_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %8, i32 0, i32 29, !dbg !4963
  %9 = load i16, ptr %cpu_die_id, align 8, !dbg !4963
  %conv = zext i16 %9 to i32, !dbg !4963
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.5, i32 noundef %conv) #9, !dbg !4963
  %conv2 = sext i32 %call to i64, !dbg !4963
  ret i64 %conv2, !dbg !4963
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cluster_id_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #2 align 16 !dbg !4967 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4969, metadata !DIExpression()), !dbg !4977
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4970, metadata !DIExpression()), !dbg !4977
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4971, metadata !DIExpression()), !dbg !4977
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4977
  br label %do.body, !dbg !4978

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4979
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4972, metadata !DIExpression()), !dbg !4979
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4979
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !4979
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4978
  br label %do.end, !dbg !4979

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !4980
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4975, metadata !DIExpression()), !dbg !4980
  store i64 ptrtoint (ptr @cpu_l2c_id to i64), ptr %__ptr, align 8, !dbg !4980
  %2 = load i64, ptr %__ptr, align 8, !dbg !4980
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !4980
  %id = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27, !dbg !4980
  %4 = load i32, ptr %id, align 8, !dbg !4980
  %idxprom = zext i32 %4 to i64, !dbg !4980
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4980
  %5 = load i64, ptr %arrayidx, align 8, !dbg !4980
  %add = add i64 %2, %5, !dbg !4980
  %6 = inttoptr i64 %add to ptr, !dbg !4980
  store ptr %6, ptr %tmp1, align 8, !dbg !4980
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !4978
  %7 = load ptr, ptr %tmp1, align 8, !dbg !4980
  store ptr %7, ptr %tmp, align 8, !dbg !4979
  %8 = load ptr, ptr %tmp, align 8, !dbg !4978
  %9 = load i16, ptr %8, align 2, !dbg !4977
  %conv = zext i16 %9 to i32, !dbg !4977
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.5, i32 noundef %conv) #9, !dbg !4977
  %conv2 = sext i32 %call to i64, !dbg !4977
  ret i64 %conv2, !dbg !4977
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @core_id_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #2 align 16 !dbg !4981 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4983, metadata !DIExpression()), !dbg !4991
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4984, metadata !DIExpression()), !dbg !4991
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4985, metadata !DIExpression()), !dbg !4991
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4991
  br label %do.body, !dbg !4992

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4993
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4986, metadata !DIExpression()), !dbg !4993
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4993
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !4993
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4992
  br label %do.end, !dbg !4993

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !4994
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4989, metadata !DIExpression()), !dbg !4994
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !4994
  %2 = load i64, ptr %__ptr, align 8, !dbg !4994
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !4994
  %id = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27, !dbg !4994
  %4 = load i32, ptr %id, align 8, !dbg !4994
  %idxprom = zext i32 %4 to i64, !dbg !4994
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4994
  %5 = load i64, ptr %arrayidx, align 8, !dbg !4994
  %add = add i64 %2, %5, !dbg !4994
  %6 = inttoptr i64 %add to ptr, !dbg !4994
  store ptr %6, ptr %tmp1, align 8, !dbg !4994
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !4992
  %7 = load ptr, ptr %tmp1, align 8, !dbg !4994
  store ptr %7, ptr %tmp, align 8, !dbg !4993
  %8 = load ptr, ptr %tmp, align 8, !dbg !4992
  %cpu_core_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %8, i32 0, i32 28, !dbg !4991
  %9 = load i16, ptr %cpu_core_id, align 2, !dbg !4991
  %conv = zext i16 %9 to i32, !dbg !4991
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.5, i32 noundef %conv) #9, !dbg !4991
  %conv2 = sext i32 %call to i64, !dbg !4991
  ret i64 %conv2, !dbg !4991
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @core_cpus_read(ptr noundef %file, ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %off, i64 noundef %count) #2 align 16 !dbg !4995 {
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
  %sibling_cpumask = alloca [1 x %struct.cpumask], align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4997, metadata !DIExpression()), !dbg !5013
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4998, metadata !DIExpression()), !dbg !5013
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4999, metadata !DIExpression()), !dbg !5013
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5000, metadata !DIExpression()), !dbg !5013
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5001, metadata !DIExpression()), !dbg !5013
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5002, metadata !DIExpression()), !dbg !5013
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !5013
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5003, metadata !DIExpression()), !dbg !5013
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5014
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5004, metadata !DIExpression()), !dbg !5014
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5014
  store ptr %0, ptr %__mptr, align 8, !dbg !5014
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5014
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5014
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5014
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5013
  %2 = load ptr, ptr %tmp, align 8, !dbg !5014
  store ptr %2, ptr %dev, align 8, !dbg !5013
  call void @llvm.lifetime.start.p0(i64 8, ptr %sibling_cpumask) #10, !dbg !5013
  call void @llvm.dbg.declare(metadata ptr %sibling_cpumask, metadata !5006, metadata !DIExpression()), !dbg !5013
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10, !dbg !5013
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5007, metadata !DIExpression()), !dbg !5013
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef %sibling_cpumask, i32 noundef 3264) #9, !dbg !5015
  br i1 %call, label %if.end, label %if.then, !dbg !5013

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !5015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5015

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %sibling_cpumask, i64 0, i64 0, !dbg !5013
  br label %do.body, !dbg !5017

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5018
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5008, metadata !DIExpression()), !dbg !5018
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5018
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !5018
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5017
  br label %do.cond, !dbg !5018

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5018

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !5019
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5011, metadata !DIExpression()), !dbg !5019
  store i64 ptrtoint (ptr @cpu_sibling_map to i64), ptr %__ptr, align 8, !dbg !5019
  %4 = load i64, ptr %__ptr, align 8, !dbg !5019
  %5 = load ptr, ptr %dev, align 8, !dbg !5019
  %id = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27, !dbg !5019
  %6 = load i32, ptr %id, align 8, !dbg !5019
  %idxprom = zext i32 %6 to i64, !dbg !5019
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5019
  %7 = load i64, ptr %arrayidx, align 8, !dbg !5019
  %add = add i64 %4, %7, !dbg !5019
  %8 = inttoptr i64 %add to ptr, !dbg !5019
  store ptr %8, ptr %tmp2, align 8, !dbg !5019
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !5017
  %9 = load ptr, ptr %tmp2, align 8, !dbg !5019
  store ptr %9, ptr %tmp1, align 8, !dbg !5018
  %10 = load ptr, ptr %tmp1, align 8, !dbg !5017
  %arraydecay3 = getelementptr inbounds [1 x %struct.cpumask], ptr %10, i64 0, i64 0, !dbg !5013
  call void @cpumask_copy(ptr noundef %arraydecay, ptr noundef %arraydecay3) #9, !dbg !5013
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !5013
  %arraydecay4 = getelementptr inbounds [1 x %struct.cpumask], ptr %sibling_cpumask, i64 0, i64 0, !dbg !5013
  %12 = load i64, ptr %off.addr, align 8, !dbg !5013
  %13 = load i64, ptr %count.addr, align 8, !dbg !5013
  %call5 = call i64 @cpumap_print_bitmask_to_buf(ptr noundef %11, ptr noundef %arraydecay4, i64 noundef %12, i64 noundef %13) #9, !dbg !5013
  store i64 %call5, ptr %n, align 8, !dbg !5013
  %arraydecay6 = getelementptr inbounds [1 x %struct.cpumask], ptr %sibling_cpumask, i64 0, i64 0, !dbg !5013
  call void @free_cpumask_var(ptr noundef %arraydecay6) #9, !dbg !5013
  %14 = load i64, ptr %n, align 8, !dbg !5013
  store i64 %14, ptr %retval, align 8, !dbg !5013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5013

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10, !dbg !5013
  call void @llvm.lifetime.end.p0(i64 8, ptr %sibling_cpumask) #10, !dbg !5013
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !5013
  %15 = load i64, ptr %retval, align 8, !dbg !5013
  ret i64 %15, !dbg !5013
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @alloc_cpumask_var(ptr noundef %mask, i32 noundef %flags) #1 align 16 !dbg !5020 {
entry:
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5024, metadata !DIExpression()), !dbg !5026
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5025, metadata !DIExpression()), !dbg !5027
  ret i1 true, !dbg !5028
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_copy(ptr noundef %dstp, ptr noundef %srcp) #1 align 16 !dbg !5029 {
entry:
  %dstp.addr = alloca ptr, align 8
  %srcp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !5036, metadata !DIExpression()), !dbg !5038
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !5037, metadata !DIExpression()), !dbg !5039
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !5040
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !5040
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5040
  %1 = load ptr, ptr %srcp.addr, align 8, !dbg !5041
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !5041
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !5041
  call void @bitmap_copy(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 64) #9, !dbg !5042
  ret void, !dbg !5043
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cpumap_print_bitmask_to_buf(ptr noundef %buf, ptr noundef %mask, i64 noundef %off, i64 noundef %count) #1 align 16 !dbg !5044 {
entry:
  %buf.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %off.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5048, metadata !DIExpression()), !dbg !5052
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5049, metadata !DIExpression()), !dbg !5053
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5050, metadata !DIExpression()), !dbg !5054
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5051, metadata !DIExpression()), !dbg !5055
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5056
  %1 = load ptr, ptr %mask.addr, align 8, !dbg !5057
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !5057
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5057
  %2 = load i32, ptr @nr_cpu_ids, align 4, !dbg !5058
  %3 = load i64, ptr %off.addr, align 8, !dbg !5059
  %4 = load i64, ptr %count.addr, align 8, !dbg !5060
  %call = call i32 @bitmap_print_bitmask_to_buf(ptr noundef %0, ptr noundef %arraydecay, i32 noundef %2, i64 noundef %3, i64 noundef %4) #9, !dbg !5061
  %sub = sub i32 %call, 1, !dbg !5062
  %conv = sext i32 %sub to i64, !dbg !5061
  ret i64 %conv, !dbg !5063
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_cpumask_var(ptr noundef %mask) #1 align 16 !dbg !5064 {
entry:
  %mask.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5068, metadata !DIExpression()), !dbg !5069
  ret void, !dbg !5070
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_copy(ptr noundef %dst, ptr noundef %src, i32 noundef %nbits) #1 align 16 !dbg !5071 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5077, metadata !DIExpression()), !dbg !5081
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5078, metadata !DIExpression()), !dbg !5082
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !5079, metadata !DIExpression()), !dbg !5083
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #10, !dbg !5084
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5080, metadata !DIExpression()), !dbg !5085
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !5086
  %add = add i32 %0, 63, !dbg !5086
  %and = and i32 %add, -64, !dbg !5086
  %div = udiv i32 %and, 8, !dbg !5086
  store i32 %div, ptr %len, align 4, !dbg !5085
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !5087
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !5087
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !5087

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !5087
  %cmp = icmp ule i32 %3, 64, !dbg !5087
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !5087

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !5087
  %cmp2 = icmp ugt i32 %4, 0, !dbg !5087
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5089

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %src.addr, align 8, !dbg !5090
  %6 = load i64, ptr %5, align 8, !dbg !5091
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !5092
  store i64 %6, ptr %7, align 8, !dbg !5093
  br label %if.end, !dbg !5094

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !5095
  %9 = load ptr, ptr %src.addr, align 8, !dbg !5096
  %10 = load i32, ptr %len, align 4, !dbg !5097
  %conv = zext i32 %10 to i64, !dbg !5097
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 %conv, i1 false), !dbg !5098
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #10, !dbg !5099
  ret void, !dbg !5099
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5100 dso_local i32 @bitmap_print_bitmask_to_buf(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @core_cpus_list_read(ptr noundef %file, ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %off, i64 noundef %count) #2 align 16 !dbg !5103 {
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
  %sibling_cpumask = alloca [1 x %struct.cpumask], align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5105, metadata !DIExpression()), !dbg !5121
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5106, metadata !DIExpression()), !dbg !5121
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5107, metadata !DIExpression()), !dbg !5121
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5108, metadata !DIExpression()), !dbg !5121
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5109, metadata !DIExpression()), !dbg !5121
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5110, metadata !DIExpression()), !dbg !5121
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !5121
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5111, metadata !DIExpression()), !dbg !5121
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5122
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5112, metadata !DIExpression()), !dbg !5122
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5122
  store ptr %0, ptr %__mptr, align 8, !dbg !5122
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5122
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5122
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5122
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5121
  %2 = load ptr, ptr %tmp, align 8, !dbg !5122
  store ptr %2, ptr %dev, align 8, !dbg !5121
  call void @llvm.lifetime.start.p0(i64 8, ptr %sibling_cpumask) #10, !dbg !5121
  call void @llvm.dbg.declare(metadata ptr %sibling_cpumask, metadata !5114, metadata !DIExpression()), !dbg !5121
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10, !dbg !5121
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5115, metadata !DIExpression()), !dbg !5121
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef %sibling_cpumask, i32 noundef 3264) #9, !dbg !5123
  br i1 %call, label %if.end, label %if.then, !dbg !5121

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !5123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5123

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %sibling_cpumask, i64 0, i64 0, !dbg !5121
  br label %do.body, !dbg !5125

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5126
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5116, metadata !DIExpression()), !dbg !5126
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5126
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !5126
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5125
  br label %do.cond, !dbg !5126

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5126

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !5127
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5119, metadata !DIExpression()), !dbg !5127
  store i64 ptrtoint (ptr @cpu_sibling_map to i64), ptr %__ptr, align 8, !dbg !5127
  %4 = load i64, ptr %__ptr, align 8, !dbg !5127
  %5 = load ptr, ptr %dev, align 8, !dbg !5127
  %id = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27, !dbg !5127
  %6 = load i32, ptr %id, align 8, !dbg !5127
  %idxprom = zext i32 %6 to i64, !dbg !5127
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5127
  %7 = load i64, ptr %arrayidx, align 8, !dbg !5127
  %add = add i64 %4, %7, !dbg !5127
  %8 = inttoptr i64 %add to ptr, !dbg !5127
  store ptr %8, ptr %tmp2, align 8, !dbg !5127
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !5125
  %9 = load ptr, ptr %tmp2, align 8, !dbg !5127
  store ptr %9, ptr %tmp1, align 8, !dbg !5126
  %10 = load ptr, ptr %tmp1, align 8, !dbg !5125
  %arraydecay3 = getelementptr inbounds [1 x %struct.cpumask], ptr %10, i64 0, i64 0, !dbg !5121
  call void @cpumask_copy(ptr noundef %arraydecay, ptr noundef %arraydecay3) #9, !dbg !5121
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !5121
  %arraydecay4 = getelementptr inbounds [1 x %struct.cpumask], ptr %sibling_cpumask, i64 0, i64 0, !dbg !5121
  %12 = load i64, ptr %off.addr, align 8, !dbg !5121
  %13 = load i64, ptr %count.addr, align 8, !dbg !5121
  %call5 = call i64 @cpumap_print_list_to_buf(ptr noundef %11, ptr noundef %arraydecay4, i64 noundef %12, i64 noundef %13) #9, !dbg !5121
  store i64 %call5, ptr %n, align 8, !dbg !5121
  %arraydecay6 = getelementptr inbounds [1 x %struct.cpumask], ptr %sibling_cpumask, i64 0, i64 0, !dbg !5121
  call void @free_cpumask_var(ptr noundef %arraydecay6) #9, !dbg !5121
  %14 = load i64, ptr %n, align 8, !dbg !5121
  store i64 %14, ptr %retval, align 8, !dbg !5121
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5121

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10, !dbg !5121
  call void @llvm.lifetime.end.p0(i64 8, ptr %sibling_cpumask) #10, !dbg !5121
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !5121
  %15 = load i64, ptr %retval, align 8, !dbg !5121
  ret i64 %15, !dbg !5121
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cpumap_print_list_to_buf(ptr noundef %buf, ptr noundef %mask, i64 noundef %off, i64 noundef %count) #1 align 16 !dbg !5128 {
entry:
  %buf.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %off.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5130, metadata !DIExpression()), !dbg !5134
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5131, metadata !DIExpression()), !dbg !5135
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5132, metadata !DIExpression()), !dbg !5136
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5133, metadata !DIExpression()), !dbg !5137
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5138
  %1 = load ptr, ptr %mask.addr, align 8, !dbg !5139
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !5139
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5139
  %2 = load i32, ptr @nr_cpu_ids, align 4, !dbg !5140
  %3 = load i64, ptr %off.addr, align 8, !dbg !5141
  %4 = load i64, ptr %count.addr, align 8, !dbg !5142
  %call = call i32 @bitmap_print_list_to_buf(ptr noundef %0, ptr noundef %arraydecay, i32 noundef %2, i64 noundef %3, i64 noundef %4) #9, !dbg !5143
  %sub = sub i32 %call, 1, !dbg !5144
  %conv = sext i32 %sub to i64, !dbg !5143
  ret i64 %conv, !dbg !5145
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5146 dso_local i32 @bitmap_print_list_to_buf(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @thread_siblings_read(ptr noundef %file, ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %off, i64 noundef %count) #2 align 16 !dbg !5147 {
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
  %sibling_cpumask = alloca [1 x %struct.cpumask], align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5149, metadata !DIExpression()), !dbg !5165
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5150, metadata !DIExpression()), !dbg !5165
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5151, metadata !DIExpression()), !dbg !5165
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5152, metadata !DIExpression()), !dbg !5165
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5153, metadata !DIExpression()), !dbg !5165
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5154, metadata !DIExpression()), !dbg !5165
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !5165
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5155, metadata !DIExpression()), !dbg !5165
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5166
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5156, metadata !DIExpression()), !dbg !5166
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5166
  store ptr %0, ptr %__mptr, align 8, !dbg !5166
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5166
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5166
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5166
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5165
  %2 = load ptr, ptr %tmp, align 8, !dbg !5166
  store ptr %2, ptr %dev, align 8, !dbg !5165
  call void @llvm.lifetime.start.p0(i64 8, ptr %sibling_cpumask) #10, !dbg !5165
  call void @llvm.dbg.declare(metadata ptr %sibling_cpumask, metadata !5158, metadata !DIExpression()), !dbg !5165
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10, !dbg !5165
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5159, metadata !DIExpression()), !dbg !5165
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef %sibling_cpumask, i32 noundef 3264) #9, !dbg !5167
  br i1 %call, label %if.end, label %if.then, !dbg !5165

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !5167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5167

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %sibling_cpumask, i64 0, i64 0, !dbg !5165
  br label %do.body, !dbg !5169

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5170
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5160, metadata !DIExpression()), !dbg !5170
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5170
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !5170
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5169
  br label %do.cond, !dbg !5170

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5170

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !5171
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5163, metadata !DIExpression()), !dbg !5171
  store i64 ptrtoint (ptr @cpu_sibling_map to i64), ptr %__ptr, align 8, !dbg !5171
  %4 = load i64, ptr %__ptr, align 8, !dbg !5171
  %5 = load ptr, ptr %dev, align 8, !dbg !5171
  %id = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27, !dbg !5171
  %6 = load i32, ptr %id, align 8, !dbg !5171
  %idxprom = zext i32 %6 to i64, !dbg !5171
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5171
  %7 = load i64, ptr %arrayidx, align 8, !dbg !5171
  %add = add i64 %4, %7, !dbg !5171
  %8 = inttoptr i64 %add to ptr, !dbg !5171
  store ptr %8, ptr %tmp2, align 8, !dbg !5171
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !5169
  %9 = load ptr, ptr %tmp2, align 8, !dbg !5171
  store ptr %9, ptr %tmp1, align 8, !dbg !5170
  %10 = load ptr, ptr %tmp1, align 8, !dbg !5169
  %arraydecay3 = getelementptr inbounds [1 x %struct.cpumask], ptr %10, i64 0, i64 0, !dbg !5165
  call void @cpumask_copy(ptr noundef %arraydecay, ptr noundef %arraydecay3) #9, !dbg !5165
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !5165
  %arraydecay4 = getelementptr inbounds [1 x %struct.cpumask], ptr %sibling_cpumask, i64 0, i64 0, !dbg !5165
  %12 = load i64, ptr %off.addr, align 8, !dbg !5165
  %13 = load i64, ptr %count.addr, align 8, !dbg !5165
  %call5 = call i64 @cpumap_print_bitmask_to_buf(ptr noundef %11, ptr noundef %arraydecay4, i64 noundef %12, i64 noundef %13) #9, !dbg !5165
  store i64 %call5, ptr %n, align 8, !dbg !5165
  %arraydecay6 = getelementptr inbounds [1 x %struct.cpumask], ptr %sibling_cpumask, i64 0, i64 0, !dbg !5165
  call void @free_cpumask_var(ptr noundef %arraydecay6) #9, !dbg !5165
  %14 = load i64, ptr %n, align 8, !dbg !5165
  store i64 %14, ptr %retval, align 8, !dbg !5165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5165

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10, !dbg !5165
  call void @llvm.lifetime.end.p0(i64 8, ptr %sibling_cpumask) #10, !dbg !5165
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !5165
  %15 = load i64, ptr %retval, align 8, !dbg !5165
  ret i64 %15, !dbg !5165
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @thread_siblings_list_read(ptr noundef %file, ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %off, i64 noundef %count) #2 align 16 !dbg !5172 {
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
  %sibling_cpumask = alloca [1 x %struct.cpumask], align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5174, metadata !DIExpression()), !dbg !5190
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5175, metadata !DIExpression()), !dbg !5190
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5176, metadata !DIExpression()), !dbg !5190
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5177, metadata !DIExpression()), !dbg !5190
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5178, metadata !DIExpression()), !dbg !5190
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5179, metadata !DIExpression()), !dbg !5190
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !5190
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5180, metadata !DIExpression()), !dbg !5190
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5191
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5181, metadata !DIExpression()), !dbg !5191
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5191
  store ptr %0, ptr %__mptr, align 8, !dbg !5191
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5191
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5191
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5191
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5190
  %2 = load ptr, ptr %tmp, align 8, !dbg !5191
  store ptr %2, ptr %dev, align 8, !dbg !5190
  call void @llvm.lifetime.start.p0(i64 8, ptr %sibling_cpumask) #10, !dbg !5190
  call void @llvm.dbg.declare(metadata ptr %sibling_cpumask, metadata !5183, metadata !DIExpression()), !dbg !5190
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10, !dbg !5190
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5184, metadata !DIExpression()), !dbg !5190
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef %sibling_cpumask, i32 noundef 3264) #9, !dbg !5192
  br i1 %call, label %if.end, label %if.then, !dbg !5190

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !5192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5192

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %sibling_cpumask, i64 0, i64 0, !dbg !5190
  br label %do.body, !dbg !5194

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5195
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5185, metadata !DIExpression()), !dbg !5195
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5195
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !5195
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5194
  br label %do.cond, !dbg !5195

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5195

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !5196
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5188, metadata !DIExpression()), !dbg !5196
  store i64 ptrtoint (ptr @cpu_sibling_map to i64), ptr %__ptr, align 8, !dbg !5196
  %4 = load i64, ptr %__ptr, align 8, !dbg !5196
  %5 = load ptr, ptr %dev, align 8, !dbg !5196
  %id = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27, !dbg !5196
  %6 = load i32, ptr %id, align 8, !dbg !5196
  %idxprom = zext i32 %6 to i64, !dbg !5196
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5196
  %7 = load i64, ptr %arrayidx, align 8, !dbg !5196
  %add = add i64 %4, %7, !dbg !5196
  %8 = inttoptr i64 %add to ptr, !dbg !5196
  store ptr %8, ptr %tmp2, align 8, !dbg !5196
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !5194
  %9 = load ptr, ptr %tmp2, align 8, !dbg !5196
  store ptr %9, ptr %tmp1, align 8, !dbg !5195
  %10 = load ptr, ptr %tmp1, align 8, !dbg !5194
  %arraydecay3 = getelementptr inbounds [1 x %struct.cpumask], ptr %10, i64 0, i64 0, !dbg !5190
  call void @cpumask_copy(ptr noundef %arraydecay, ptr noundef %arraydecay3) #9, !dbg !5190
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !5190
  %arraydecay4 = getelementptr inbounds [1 x %struct.cpumask], ptr %sibling_cpumask, i64 0, i64 0, !dbg !5190
  %12 = load i64, ptr %off.addr, align 8, !dbg !5190
  %13 = load i64, ptr %count.addr, align 8, !dbg !5190
  %call5 = call i64 @cpumap_print_list_to_buf(ptr noundef %11, ptr noundef %arraydecay4, i64 noundef %12, i64 noundef %13) #9, !dbg !5190
  store i64 %call5, ptr %n, align 8, !dbg !5190
  %arraydecay6 = getelementptr inbounds [1 x %struct.cpumask], ptr %sibling_cpumask, i64 0, i64 0, !dbg !5190
  call void @free_cpumask_var(ptr noundef %arraydecay6) #9, !dbg !5190
  %14 = load i64, ptr %n, align 8, !dbg !5190
  store i64 %14, ptr %retval, align 8, !dbg !5190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5190

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10, !dbg !5190
  call void @llvm.lifetime.end.p0(i64 8, ptr %sibling_cpumask) #10, !dbg !5190
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !5190
  %15 = load i64, ptr %retval, align 8, !dbg !5190
  ret i64 %15, !dbg !5190
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @core_siblings_read(ptr noundef %file, ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %off, i64 noundef %count) #2 align 16 !dbg !5197 {
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
  %core_cpumask = alloca [1 x %struct.cpumask], align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5199, metadata !DIExpression()), !dbg !5215
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5200, metadata !DIExpression()), !dbg !5215
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5201, metadata !DIExpression()), !dbg !5215
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5202, metadata !DIExpression()), !dbg !5215
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5203, metadata !DIExpression()), !dbg !5215
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5204, metadata !DIExpression()), !dbg !5215
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !5215
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5205, metadata !DIExpression()), !dbg !5215
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5216
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5206, metadata !DIExpression()), !dbg !5216
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5216
  store ptr %0, ptr %__mptr, align 8, !dbg !5216
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5216
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5216
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5216
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5215
  %2 = load ptr, ptr %tmp, align 8, !dbg !5216
  store ptr %2, ptr %dev, align 8, !dbg !5215
  call void @llvm.lifetime.start.p0(i64 8, ptr %core_cpumask) #10, !dbg !5215
  call void @llvm.dbg.declare(metadata ptr %core_cpumask, metadata !5208, metadata !DIExpression()), !dbg !5215
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10, !dbg !5215
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5209, metadata !DIExpression()), !dbg !5215
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef %core_cpumask, i32 noundef 3264) #9, !dbg !5217
  br i1 %call, label %if.end, label %if.then, !dbg !5215

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !5217
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5217

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %core_cpumask, i64 0, i64 0, !dbg !5215
  br label %do.body, !dbg !5219

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5220
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5210, metadata !DIExpression()), !dbg !5220
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5220
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !5220
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5219
  br label %do.cond, !dbg !5220

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5220

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !5221
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5213, metadata !DIExpression()), !dbg !5221
  store i64 ptrtoint (ptr @cpu_core_map to i64), ptr %__ptr, align 8, !dbg !5221
  %4 = load i64, ptr %__ptr, align 8, !dbg !5221
  %5 = load ptr, ptr %dev, align 8, !dbg !5221
  %id = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27, !dbg !5221
  %6 = load i32, ptr %id, align 8, !dbg !5221
  %idxprom = zext i32 %6 to i64, !dbg !5221
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5221
  %7 = load i64, ptr %arrayidx, align 8, !dbg !5221
  %add = add i64 %4, %7, !dbg !5221
  %8 = inttoptr i64 %add to ptr, !dbg !5221
  store ptr %8, ptr %tmp2, align 8, !dbg !5221
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !5219
  %9 = load ptr, ptr %tmp2, align 8, !dbg !5221
  store ptr %9, ptr %tmp1, align 8, !dbg !5220
  %10 = load ptr, ptr %tmp1, align 8, !dbg !5219
  %arraydecay3 = getelementptr inbounds [1 x %struct.cpumask], ptr %10, i64 0, i64 0, !dbg !5215
  call void @cpumask_copy(ptr noundef %arraydecay, ptr noundef %arraydecay3) #9, !dbg !5215
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !5215
  %arraydecay4 = getelementptr inbounds [1 x %struct.cpumask], ptr %core_cpumask, i64 0, i64 0, !dbg !5215
  %12 = load i64, ptr %off.addr, align 8, !dbg !5215
  %13 = load i64, ptr %count.addr, align 8, !dbg !5215
  %call5 = call i64 @cpumap_print_bitmask_to_buf(ptr noundef %11, ptr noundef %arraydecay4, i64 noundef %12, i64 noundef %13) #9, !dbg !5215
  store i64 %call5, ptr %n, align 8, !dbg !5215
  %arraydecay6 = getelementptr inbounds [1 x %struct.cpumask], ptr %core_cpumask, i64 0, i64 0, !dbg !5215
  call void @free_cpumask_var(ptr noundef %arraydecay6) #9, !dbg !5215
  %14 = load i64, ptr %n, align 8, !dbg !5215
  store i64 %14, ptr %retval, align 8, !dbg !5215
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5215

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10, !dbg !5215
  call void @llvm.lifetime.end.p0(i64 8, ptr %core_cpumask) #10, !dbg !5215
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !5215
  %15 = load i64, ptr %retval, align 8, !dbg !5215
  ret i64 %15, !dbg !5215
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @core_siblings_list_read(ptr noundef %file, ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %off, i64 noundef %count) #2 align 16 !dbg !5222 {
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
  %core_cpumask = alloca [1 x %struct.cpumask], align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5224, metadata !DIExpression()), !dbg !5240
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5225, metadata !DIExpression()), !dbg !5240
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5226, metadata !DIExpression()), !dbg !5240
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5227, metadata !DIExpression()), !dbg !5240
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5228, metadata !DIExpression()), !dbg !5240
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5229, metadata !DIExpression()), !dbg !5240
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !5240
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5230, metadata !DIExpression()), !dbg !5240
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5241
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5231, metadata !DIExpression()), !dbg !5241
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5241
  store ptr %0, ptr %__mptr, align 8, !dbg !5241
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5241
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5241
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5241
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5240
  %2 = load ptr, ptr %tmp, align 8, !dbg !5241
  store ptr %2, ptr %dev, align 8, !dbg !5240
  call void @llvm.lifetime.start.p0(i64 8, ptr %core_cpumask) #10, !dbg !5240
  call void @llvm.dbg.declare(metadata ptr %core_cpumask, metadata !5233, metadata !DIExpression()), !dbg !5240
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10, !dbg !5240
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5234, metadata !DIExpression()), !dbg !5240
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef %core_cpumask, i32 noundef 3264) #9, !dbg !5242
  br i1 %call, label %if.end, label %if.then, !dbg !5240

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !5242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5242

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %core_cpumask, i64 0, i64 0, !dbg !5240
  br label %do.body, !dbg !5244

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5245
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5235, metadata !DIExpression()), !dbg !5245
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5245
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !5245
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5244
  br label %do.cond, !dbg !5245

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5245

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !5246
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5238, metadata !DIExpression()), !dbg !5246
  store i64 ptrtoint (ptr @cpu_core_map to i64), ptr %__ptr, align 8, !dbg !5246
  %4 = load i64, ptr %__ptr, align 8, !dbg !5246
  %5 = load ptr, ptr %dev, align 8, !dbg !5246
  %id = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27, !dbg !5246
  %6 = load i32, ptr %id, align 8, !dbg !5246
  %idxprom = zext i32 %6 to i64, !dbg !5246
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5246
  %7 = load i64, ptr %arrayidx, align 8, !dbg !5246
  %add = add i64 %4, %7, !dbg !5246
  %8 = inttoptr i64 %add to ptr, !dbg !5246
  store ptr %8, ptr %tmp2, align 8, !dbg !5246
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !5244
  %9 = load ptr, ptr %tmp2, align 8, !dbg !5246
  store ptr %9, ptr %tmp1, align 8, !dbg !5245
  %10 = load ptr, ptr %tmp1, align 8, !dbg !5244
  %arraydecay3 = getelementptr inbounds [1 x %struct.cpumask], ptr %10, i64 0, i64 0, !dbg !5240
  call void @cpumask_copy(ptr noundef %arraydecay, ptr noundef %arraydecay3) #9, !dbg !5240
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !5240
  %arraydecay4 = getelementptr inbounds [1 x %struct.cpumask], ptr %core_cpumask, i64 0, i64 0, !dbg !5240
  %12 = load i64, ptr %off.addr, align 8, !dbg !5240
  %13 = load i64, ptr %count.addr, align 8, !dbg !5240
  %call5 = call i64 @cpumap_print_list_to_buf(ptr noundef %11, ptr noundef %arraydecay4, i64 noundef %12, i64 noundef %13) #9, !dbg !5240
  store i64 %call5, ptr %n, align 8, !dbg !5240
  %arraydecay6 = getelementptr inbounds [1 x %struct.cpumask], ptr %core_cpumask, i64 0, i64 0, !dbg !5240
  call void @free_cpumask_var(ptr noundef %arraydecay6) #9, !dbg !5240
  %14 = load i64, ptr %n, align 8, !dbg !5240
  store i64 %14, ptr %retval, align 8, !dbg !5240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5240

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10, !dbg !5240
  call void @llvm.lifetime.end.p0(i64 8, ptr %core_cpumask) #10, !dbg !5240
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !5240
  %15 = load i64, ptr %retval, align 8, !dbg !5240
  ret i64 %15, !dbg !5240
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cluster_cpus_read(ptr noundef %file, ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %off, i64 noundef %count) #2 align 16 !dbg !5247 {
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
  %cluster_cpumask = alloca [1 x %struct.cpumask], align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5249, metadata !DIExpression()), !dbg !5260
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5250, metadata !DIExpression()), !dbg !5260
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5251, metadata !DIExpression()), !dbg !5260
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5252, metadata !DIExpression()), !dbg !5260
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5253, metadata !DIExpression()), !dbg !5260
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5254, metadata !DIExpression()), !dbg !5260
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !5260
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5255, metadata !DIExpression()), !dbg !5260
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5261
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5256, metadata !DIExpression()), !dbg !5261
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5261
  store ptr %0, ptr %__mptr, align 8, !dbg !5261
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5261
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5261
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5261
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5260
  %2 = load ptr, ptr %tmp, align 8, !dbg !5261
  store ptr %2, ptr %dev, align 8, !dbg !5260
  call void @llvm.lifetime.start.p0(i64 8, ptr %cluster_cpumask) #10, !dbg !5260
  call void @llvm.dbg.declare(metadata ptr %cluster_cpumask, metadata !5258, metadata !DIExpression()), !dbg !5260
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10, !dbg !5260
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5259, metadata !DIExpression()), !dbg !5260
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef %cluster_cpumask, i32 noundef 3264) #9, !dbg !5262
  br i1 %call, label %if.end, label %if.then, !dbg !5260

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !5262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5262

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %cluster_cpumask, i64 0, i64 0, !dbg !5260
  %3 = load ptr, ptr %dev, align 8, !dbg !5260
  %id = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27, !dbg !5260
  %4 = load i32, ptr %id, align 8, !dbg !5260
  %call1 = call ptr @cpu_clustergroup_mask(i32 noundef %4) #9, !dbg !5260
  call void @cpumask_copy(ptr noundef %arraydecay, ptr noundef %call1) #9, !dbg !5260
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !5260
  %arraydecay2 = getelementptr inbounds [1 x %struct.cpumask], ptr %cluster_cpumask, i64 0, i64 0, !dbg !5260
  %6 = load i64, ptr %off.addr, align 8, !dbg !5260
  %7 = load i64, ptr %count.addr, align 8, !dbg !5260
  %call3 = call i64 @cpumap_print_bitmask_to_buf(ptr noundef %5, ptr noundef %arraydecay2, i64 noundef %6, i64 noundef %7) #9, !dbg !5260
  store i64 %call3, ptr %n, align 8, !dbg !5260
  %arraydecay4 = getelementptr inbounds [1 x %struct.cpumask], ptr %cluster_cpumask, i64 0, i64 0, !dbg !5260
  call void @free_cpumask_var(ptr noundef %arraydecay4) #9, !dbg !5260
  %8 = load i64, ptr %n, align 8, !dbg !5260
  store i64 %8, ptr %retval, align 8, !dbg !5260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5260

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10, !dbg !5260
  call void @llvm.lifetime.end.p0(i64 8, ptr %cluster_cpumask) #10, !dbg !5260
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !5260
  %9 = load i64, ptr %retval, align 8, !dbg !5260
  ret i64 %9, !dbg !5260
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5264 dso_local ptr @cpu_clustergroup_mask(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cluster_cpus_list_read(ptr noundef %file, ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %off, i64 noundef %count) #2 align 16 !dbg !5268 {
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
  %cluster_cpumask = alloca [1 x %struct.cpumask], align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5270, metadata !DIExpression()), !dbg !5281
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5271, metadata !DIExpression()), !dbg !5281
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5272, metadata !DIExpression()), !dbg !5281
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5273, metadata !DIExpression()), !dbg !5281
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5274, metadata !DIExpression()), !dbg !5281
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5275, metadata !DIExpression()), !dbg !5281
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !5281
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5276, metadata !DIExpression()), !dbg !5281
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5282
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5277, metadata !DIExpression()), !dbg !5282
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5282
  store ptr %0, ptr %__mptr, align 8, !dbg !5282
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5282
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5282
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5282
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5281
  %2 = load ptr, ptr %tmp, align 8, !dbg !5282
  store ptr %2, ptr %dev, align 8, !dbg !5281
  call void @llvm.lifetime.start.p0(i64 8, ptr %cluster_cpumask) #10, !dbg !5281
  call void @llvm.dbg.declare(metadata ptr %cluster_cpumask, metadata !5279, metadata !DIExpression()), !dbg !5281
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10, !dbg !5281
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5280, metadata !DIExpression()), !dbg !5281
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef %cluster_cpumask, i32 noundef 3264) #9, !dbg !5283
  br i1 %call, label %if.end, label %if.then, !dbg !5281

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !5283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5283

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %cluster_cpumask, i64 0, i64 0, !dbg !5281
  %3 = load ptr, ptr %dev, align 8, !dbg !5281
  %id = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27, !dbg !5281
  %4 = load i32, ptr %id, align 8, !dbg !5281
  %call1 = call ptr @cpu_clustergroup_mask(i32 noundef %4) #9, !dbg !5281
  call void @cpumask_copy(ptr noundef %arraydecay, ptr noundef %call1) #9, !dbg !5281
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !5281
  %arraydecay2 = getelementptr inbounds [1 x %struct.cpumask], ptr %cluster_cpumask, i64 0, i64 0, !dbg !5281
  %6 = load i64, ptr %off.addr, align 8, !dbg !5281
  %7 = load i64, ptr %count.addr, align 8, !dbg !5281
  %call3 = call i64 @cpumap_print_list_to_buf(ptr noundef %5, ptr noundef %arraydecay2, i64 noundef %6, i64 noundef %7) #9, !dbg !5281
  store i64 %call3, ptr %n, align 8, !dbg !5281
  %arraydecay4 = getelementptr inbounds [1 x %struct.cpumask], ptr %cluster_cpumask, i64 0, i64 0, !dbg !5281
  call void @free_cpumask_var(ptr noundef %arraydecay4) #9, !dbg !5281
  %8 = load i64, ptr %n, align 8, !dbg !5281
  store i64 %8, ptr %retval, align 8, !dbg !5281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5281

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10, !dbg !5281
  call void @llvm.lifetime.end.p0(i64 8, ptr %cluster_cpumask) #10, !dbg !5281
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !5281
  %9 = load i64, ptr %retval, align 8, !dbg !5281
  ret i64 %9, !dbg !5281
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @die_cpus_read(ptr noundef %file, ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %off, i64 noundef %count) #2 align 16 !dbg !5285 {
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
  %die_cpumask = alloca [1 x %struct.cpumask], align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5287, metadata !DIExpression()), !dbg !5303
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5288, metadata !DIExpression()), !dbg !5303
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5289, metadata !DIExpression()), !dbg !5303
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5290, metadata !DIExpression()), !dbg !5303
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5291, metadata !DIExpression()), !dbg !5303
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5292, metadata !DIExpression()), !dbg !5303
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !5303
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5293, metadata !DIExpression()), !dbg !5303
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5304
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5294, metadata !DIExpression()), !dbg !5304
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5304
  store ptr %0, ptr %__mptr, align 8, !dbg !5304
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5304
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5304
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5303
  %2 = load ptr, ptr %tmp, align 8, !dbg !5304
  store ptr %2, ptr %dev, align 8, !dbg !5303
  call void @llvm.lifetime.start.p0(i64 8, ptr %die_cpumask) #10, !dbg !5303
  call void @llvm.dbg.declare(metadata ptr %die_cpumask, metadata !5296, metadata !DIExpression()), !dbg !5303
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10, !dbg !5303
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5297, metadata !DIExpression()), !dbg !5303
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef %die_cpumask, i32 noundef 3264) #9, !dbg !5305
  br i1 %call, label %if.end, label %if.then, !dbg !5303

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !5305
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5305

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %die_cpumask, i64 0, i64 0, !dbg !5303
  br label %do.body, !dbg !5307

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5308
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5298, metadata !DIExpression()), !dbg !5308
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5308
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !5308
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5307
  br label %do.cond, !dbg !5308

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5308

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !5309
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5301, metadata !DIExpression()), !dbg !5309
  store i64 ptrtoint (ptr @cpu_die_map to i64), ptr %__ptr, align 8, !dbg !5309
  %4 = load i64, ptr %__ptr, align 8, !dbg !5309
  %5 = load ptr, ptr %dev, align 8, !dbg !5309
  %id = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27, !dbg !5309
  %6 = load i32, ptr %id, align 8, !dbg !5309
  %idxprom = zext i32 %6 to i64, !dbg !5309
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5309
  %7 = load i64, ptr %arrayidx, align 8, !dbg !5309
  %add = add i64 %4, %7, !dbg !5309
  %8 = inttoptr i64 %add to ptr, !dbg !5309
  store ptr %8, ptr %tmp2, align 8, !dbg !5309
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !5307
  %9 = load ptr, ptr %tmp2, align 8, !dbg !5309
  store ptr %9, ptr %tmp1, align 8, !dbg !5308
  %10 = load ptr, ptr %tmp1, align 8, !dbg !5307
  %arraydecay3 = getelementptr inbounds [1 x %struct.cpumask], ptr %10, i64 0, i64 0, !dbg !5303
  call void @cpumask_copy(ptr noundef %arraydecay, ptr noundef %arraydecay3) #9, !dbg !5303
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !5303
  %arraydecay4 = getelementptr inbounds [1 x %struct.cpumask], ptr %die_cpumask, i64 0, i64 0, !dbg !5303
  %12 = load i64, ptr %off.addr, align 8, !dbg !5303
  %13 = load i64, ptr %count.addr, align 8, !dbg !5303
  %call5 = call i64 @cpumap_print_bitmask_to_buf(ptr noundef %11, ptr noundef %arraydecay4, i64 noundef %12, i64 noundef %13) #9, !dbg !5303
  store i64 %call5, ptr %n, align 8, !dbg !5303
  %arraydecay6 = getelementptr inbounds [1 x %struct.cpumask], ptr %die_cpumask, i64 0, i64 0, !dbg !5303
  call void @free_cpumask_var(ptr noundef %arraydecay6) #9, !dbg !5303
  %14 = load i64, ptr %n, align 8, !dbg !5303
  store i64 %14, ptr %retval, align 8, !dbg !5303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5303

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10, !dbg !5303
  call void @llvm.lifetime.end.p0(i64 8, ptr %die_cpumask) #10, !dbg !5303
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !5303
  %15 = load i64, ptr %retval, align 8, !dbg !5303
  ret i64 %15, !dbg !5303
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @die_cpus_list_read(ptr noundef %file, ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %off, i64 noundef %count) #2 align 16 !dbg !5310 {
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
  %die_cpumask = alloca [1 x %struct.cpumask], align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5312, metadata !DIExpression()), !dbg !5328
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5313, metadata !DIExpression()), !dbg !5328
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5314, metadata !DIExpression()), !dbg !5328
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5315, metadata !DIExpression()), !dbg !5328
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5316, metadata !DIExpression()), !dbg !5328
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5317, metadata !DIExpression()), !dbg !5328
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !5328
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5318, metadata !DIExpression()), !dbg !5328
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5329
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5319, metadata !DIExpression()), !dbg !5329
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5329
  store ptr %0, ptr %__mptr, align 8, !dbg !5329
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5329
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5329
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5329
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5328
  %2 = load ptr, ptr %tmp, align 8, !dbg !5329
  store ptr %2, ptr %dev, align 8, !dbg !5328
  call void @llvm.lifetime.start.p0(i64 8, ptr %die_cpumask) #10, !dbg !5328
  call void @llvm.dbg.declare(metadata ptr %die_cpumask, metadata !5321, metadata !DIExpression()), !dbg !5328
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10, !dbg !5328
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5322, metadata !DIExpression()), !dbg !5328
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef %die_cpumask, i32 noundef 3264) #9, !dbg !5330
  br i1 %call, label %if.end, label %if.then, !dbg !5328

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !5330
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5330

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %die_cpumask, i64 0, i64 0, !dbg !5328
  br label %do.body, !dbg !5332

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5333
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5323, metadata !DIExpression()), !dbg !5333
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5333
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !5333
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5332
  br label %do.cond, !dbg !5333

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5333

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !5334
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5326, metadata !DIExpression()), !dbg !5334
  store i64 ptrtoint (ptr @cpu_die_map to i64), ptr %__ptr, align 8, !dbg !5334
  %4 = load i64, ptr %__ptr, align 8, !dbg !5334
  %5 = load ptr, ptr %dev, align 8, !dbg !5334
  %id = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27, !dbg !5334
  %6 = load i32, ptr %id, align 8, !dbg !5334
  %idxprom = zext i32 %6 to i64, !dbg !5334
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5334
  %7 = load i64, ptr %arrayidx, align 8, !dbg !5334
  %add = add i64 %4, %7, !dbg !5334
  %8 = inttoptr i64 %add to ptr, !dbg !5334
  store ptr %8, ptr %tmp2, align 8, !dbg !5334
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !5332
  %9 = load ptr, ptr %tmp2, align 8, !dbg !5334
  store ptr %9, ptr %tmp1, align 8, !dbg !5333
  %10 = load ptr, ptr %tmp1, align 8, !dbg !5332
  %arraydecay3 = getelementptr inbounds [1 x %struct.cpumask], ptr %10, i64 0, i64 0, !dbg !5328
  call void @cpumask_copy(ptr noundef %arraydecay, ptr noundef %arraydecay3) #9, !dbg !5328
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !5328
  %arraydecay4 = getelementptr inbounds [1 x %struct.cpumask], ptr %die_cpumask, i64 0, i64 0, !dbg !5328
  %12 = load i64, ptr %off.addr, align 8, !dbg !5328
  %13 = load i64, ptr %count.addr, align 8, !dbg !5328
  %call5 = call i64 @cpumap_print_list_to_buf(ptr noundef %11, ptr noundef %arraydecay4, i64 noundef %12, i64 noundef %13) #9, !dbg !5328
  store i64 %call5, ptr %n, align 8, !dbg !5328
  %arraydecay6 = getelementptr inbounds [1 x %struct.cpumask], ptr %die_cpumask, i64 0, i64 0, !dbg !5328
  call void @free_cpumask_var(ptr noundef %arraydecay6) #9, !dbg !5328
  %14 = load i64, ptr %n, align 8, !dbg !5328
  store i64 %14, ptr %retval, align 8, !dbg !5328
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5328

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 8, ptr %die_cpumask) #10, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !5328
  %15 = load i64, ptr %retval, align 8, !dbg !5328
  ret i64 %15, !dbg !5328
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @package_cpus_read(ptr noundef %file, ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %off, i64 noundef %count) #2 align 16 !dbg !5335 {
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
  %core_cpumask = alloca [1 x %struct.cpumask], align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5337, metadata !DIExpression()), !dbg !5353
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5338, metadata !DIExpression()), !dbg !5353
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5339, metadata !DIExpression()), !dbg !5353
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5340, metadata !DIExpression()), !dbg !5353
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5341, metadata !DIExpression()), !dbg !5353
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5342, metadata !DIExpression()), !dbg !5353
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !5353
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5343, metadata !DIExpression()), !dbg !5353
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5354
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5344, metadata !DIExpression()), !dbg !5354
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5354
  store ptr %0, ptr %__mptr, align 8, !dbg !5354
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5354
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5354
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5354
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5353
  %2 = load ptr, ptr %tmp, align 8, !dbg !5354
  store ptr %2, ptr %dev, align 8, !dbg !5353
  call void @llvm.lifetime.start.p0(i64 8, ptr %core_cpumask) #10, !dbg !5353
  call void @llvm.dbg.declare(metadata ptr %core_cpumask, metadata !5346, metadata !DIExpression()), !dbg !5353
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10, !dbg !5353
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5347, metadata !DIExpression()), !dbg !5353
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef %core_cpumask, i32 noundef 3264) #9, !dbg !5355
  br i1 %call, label %if.end, label %if.then, !dbg !5353

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !5355
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5355

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %core_cpumask, i64 0, i64 0, !dbg !5353
  br label %do.body, !dbg !5357

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5358
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5348, metadata !DIExpression()), !dbg !5358
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5358
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !5358
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5357
  br label %do.cond, !dbg !5358

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5358

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !5359
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5351, metadata !DIExpression()), !dbg !5359
  store i64 ptrtoint (ptr @cpu_core_map to i64), ptr %__ptr, align 8, !dbg !5359
  %4 = load i64, ptr %__ptr, align 8, !dbg !5359
  %5 = load ptr, ptr %dev, align 8, !dbg !5359
  %id = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27, !dbg !5359
  %6 = load i32, ptr %id, align 8, !dbg !5359
  %idxprom = zext i32 %6 to i64, !dbg !5359
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5359
  %7 = load i64, ptr %arrayidx, align 8, !dbg !5359
  %add = add i64 %4, %7, !dbg !5359
  %8 = inttoptr i64 %add to ptr, !dbg !5359
  store ptr %8, ptr %tmp2, align 8, !dbg !5359
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !5357
  %9 = load ptr, ptr %tmp2, align 8, !dbg !5359
  store ptr %9, ptr %tmp1, align 8, !dbg !5358
  %10 = load ptr, ptr %tmp1, align 8, !dbg !5357
  %arraydecay3 = getelementptr inbounds [1 x %struct.cpumask], ptr %10, i64 0, i64 0, !dbg !5353
  call void @cpumask_copy(ptr noundef %arraydecay, ptr noundef %arraydecay3) #9, !dbg !5353
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !5353
  %arraydecay4 = getelementptr inbounds [1 x %struct.cpumask], ptr %core_cpumask, i64 0, i64 0, !dbg !5353
  %12 = load i64, ptr %off.addr, align 8, !dbg !5353
  %13 = load i64, ptr %count.addr, align 8, !dbg !5353
  %call5 = call i64 @cpumap_print_bitmask_to_buf(ptr noundef %11, ptr noundef %arraydecay4, i64 noundef %12, i64 noundef %13) #9, !dbg !5353
  store i64 %call5, ptr %n, align 8, !dbg !5353
  %arraydecay6 = getelementptr inbounds [1 x %struct.cpumask], ptr %core_cpumask, i64 0, i64 0, !dbg !5353
  call void @free_cpumask_var(ptr noundef %arraydecay6) #9, !dbg !5353
  %14 = load i64, ptr %n, align 8, !dbg !5353
  store i64 %14, ptr %retval, align 8, !dbg !5353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5353

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10, !dbg !5353
  call void @llvm.lifetime.end.p0(i64 8, ptr %core_cpumask) #10, !dbg !5353
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !5353
  %15 = load i64, ptr %retval, align 8, !dbg !5353
  ret i64 %15, !dbg !5353
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @package_cpus_list_read(ptr noundef %file, ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %off, i64 noundef %count) #2 align 16 !dbg !5360 {
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
  %core_cpumask = alloca [1 x %struct.cpumask], align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5362, metadata !DIExpression()), !dbg !5378
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5363, metadata !DIExpression()), !dbg !5378
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5364, metadata !DIExpression()), !dbg !5378
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5365, metadata !DIExpression()), !dbg !5378
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5366, metadata !DIExpression()), !dbg !5378
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5367, metadata !DIExpression()), !dbg !5378
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !5378
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5368, metadata !DIExpression()), !dbg !5378
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5379
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5369, metadata !DIExpression()), !dbg !5379
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5379
  store ptr %0, ptr %__mptr, align 8, !dbg !5379
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5379
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5379
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5379
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5378
  %2 = load ptr, ptr %tmp, align 8, !dbg !5379
  store ptr %2, ptr %dev, align 8, !dbg !5378
  call void @llvm.lifetime.start.p0(i64 8, ptr %core_cpumask) #10, !dbg !5378
  call void @llvm.dbg.declare(metadata ptr %core_cpumask, metadata !5371, metadata !DIExpression()), !dbg !5378
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10, !dbg !5378
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5372, metadata !DIExpression()), !dbg !5378
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef %core_cpumask, i32 noundef 3264) #9, !dbg !5380
  br i1 %call, label %if.end, label %if.then, !dbg !5378

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !5380
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5380

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %core_cpumask, i64 0, i64 0, !dbg !5378
  br label %do.body, !dbg !5382

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5383
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5373, metadata !DIExpression()), !dbg !5383
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5383
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !5383
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !5382
  br label %do.cond, !dbg !5383

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5383

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !5384
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5376, metadata !DIExpression()), !dbg !5384
  store i64 ptrtoint (ptr @cpu_core_map to i64), ptr %__ptr, align 8, !dbg !5384
  %4 = load i64, ptr %__ptr, align 8, !dbg !5384
  %5 = load ptr, ptr %dev, align 8, !dbg !5384
  %id = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27, !dbg !5384
  %6 = load i32, ptr %id, align 8, !dbg !5384
  %idxprom = zext i32 %6 to i64, !dbg !5384
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5384
  %7 = load i64, ptr %arrayidx, align 8, !dbg !5384
  %add = add i64 %4, %7, !dbg !5384
  %8 = inttoptr i64 %add to ptr, !dbg !5384
  store ptr %8, ptr %tmp2, align 8, !dbg !5384
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !5382
  %9 = load ptr, ptr %tmp2, align 8, !dbg !5384
  store ptr %9, ptr %tmp1, align 8, !dbg !5383
  %10 = load ptr, ptr %tmp1, align 8, !dbg !5382
  %arraydecay3 = getelementptr inbounds [1 x %struct.cpumask], ptr %10, i64 0, i64 0, !dbg !5378
  call void @cpumask_copy(ptr noundef %arraydecay, ptr noundef %arraydecay3) #9, !dbg !5378
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !5378
  %arraydecay4 = getelementptr inbounds [1 x %struct.cpumask], ptr %core_cpumask, i64 0, i64 0, !dbg !5378
  %12 = load i64, ptr %off.addr, align 8, !dbg !5378
  %13 = load i64, ptr %count.addr, align 8, !dbg !5378
  %call5 = call i64 @cpumap_print_list_to_buf(ptr noundef %11, ptr noundef %arraydecay4, i64 noundef %12, i64 noundef %13) #9, !dbg !5378
  store i64 %call5, ptr %n, align 8, !dbg !5378
  %arraydecay6 = getelementptr inbounds [1 x %struct.cpumask], ptr %core_cpumask, i64 0, i64 0, !dbg !5378
  call void @free_cpumask_var(ptr noundef %arraydecay6) #9, !dbg !5378
  %14 = load i64, ptr %n, align 8, !dbg !5378
  store i64 %14, ptr %retval, align 8, !dbg !5378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5378

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10, !dbg !5378
  call void @llvm.lifetime.end.p0(i64 8, ptr %core_cpumask) #10, !dbg !5378
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !5378
  %15 = load i64, ptr %retval, align 8, !dbg !5378
  ret i64 %15, !dbg !5378
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5385 dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) #4

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826}
!llvm.ident = !{!4827}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_topology__287_210_topology_sysfs_init6288", scope: !2, file: !3, line: 210, type: !341, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/.topology.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/topology\22 -D KBUILD_BASENAME=\22topology\22 -D KBUILD_MODNAME=\22topology\22 -D __KBUILD_MODNAME=kmod_topology -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/topology.ll drivers/base/topology.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !340, globals: !4688, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/topology.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "be374aeaaef2d2b82735809551e5e129")
!4 = !{!5, !200, !206, !213, !218, !224, !229, !237, !253, !261, !267, !274, !281, !287, !293, !300, !308, !315, !324, !329, !334}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !6, line: 57, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c163170cdc0ca5f55decccd45901b0e")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199}
!9 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!10 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!11 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!12 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!13 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!14 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!15 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!16 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!17 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!18 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!19 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!20 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!21 = !DIEnumerator(name: "CPUHP_IBMVNIC_DEAD", value: 11)
!22 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 12)
!23 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 13)
!24 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 14)
!25 = !DIEnumerator(name: "CPUHP_MM_DEMOTION_DEAD", value: 15)
!26 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 16)
!27 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 17)
!28 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 18)
!29 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 19)
!30 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 20)
!31 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 21)
!32 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 22)
!33 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 23)
!34 = !DIEnumerator(name: "CPUHP_BIO_DEAD", value: 24)
!35 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 25)
!36 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 26)
!37 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 27)
!38 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 28)
!39 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 29)
!40 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 30)
!41 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 31)
!42 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 32)
!43 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC", value: 33)
!44 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 34)
!45 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 35)
!46 = !DIEnumerator(name: "CPUHP_IOMMU_IOVA_DEAD", value: 36)
!47 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 37)
!48 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 38)
!49 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 39)
!50 = !DIEnumerator(name: "CPUHP_AP_DTPM_CPU_DEAD", value: 40)
!51 = !DIEnumerator(name: "CPUHP_RANDOM_PREPARE", value: 41)
!52 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 42)
!53 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 43)
!54 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 44)
!55 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 45)
!56 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 46)
!57 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 47)
!58 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 48)
!59 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 49)
!60 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 50)
!61 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 51)
!62 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 52)
!63 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 53)
!64 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 54)
!65 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 55)
!66 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 56)
!67 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 57)
!68 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 58)
!69 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 59)
!70 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 60)
!71 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 61)
!72 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 62)
!73 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 63)
!74 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 64)
!75 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 65)
!76 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 66)
!77 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 67)
!78 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 68)
!79 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 69)
!80 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 70)
!81 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 71)
!82 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 91)
!83 = !DIEnumerator(name: "CPUHP_BP_KICK_AP", value: 92)
!84 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 93)
!85 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 94)
!86 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 95)
!87 = !DIEnumerator(name: "CPUHP_AP_CACHECTRL_STARTING", value: 96)
!88 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 97)
!89 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 98)
!90 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 99)
!91 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 100)
!92 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 101)
!93 = !DIEnumerator(name: "CPUHP_AP_IRQ_APPLE_AIC_STARTING", value: 102)
!94 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 103)
!95 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 104)
!96 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 105)
!97 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 106)
!98 = !DIEnumerator(name: "CPUHP_AP_IRQ_LOONGARCH_STARTING", value: 107)
!99 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 108)
!100 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 109)
!101 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 110)
!102 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 111)
!103 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 112)
!104 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 113)
!105 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 114)
!106 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 115)
!107 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 116)
!108 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 117)
!109 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 118)
!110 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 119)
!111 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 120)
!112 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 121)
!113 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 122)
!114 = !DIEnumerator(name: "CPUHP_AP_PERF_RISCV_STARTING", value: 123)
!115 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 124)
!116 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 125)
!117 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 126)
!118 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 127)
!119 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 128)
!120 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 129)
!121 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 130)
!122 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 131)
!123 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 132)
!124 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 133)
!125 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 134)
!126 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 135)
!127 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 136)
!128 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 137)
!129 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 138)
!130 = !DIEnumerator(name: "CPUHP_AP_TI_GP_TIMER_STARTING", value: 139)
!131 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 140)
!132 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 141)
!133 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 142)
!134 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_RUNSTATE_STARTING", value: 143)
!135 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 144)
!136 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 145)
!137 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 146)
!138 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 147)
!139 = !DIEnumerator(name: "CPUHP_AP_HRTIMERS_DYING", value: 148)
!140 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 149)
!141 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 150)
!142 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 151)
!143 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 152)
!144 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 153)
!145 = !DIEnumerator(name: "CPUHP_AP_HYPERV_ONLINE", value: 154)
!146 = !DIEnumerator(name: "CPUHP_AP_KVM_ONLINE", value: 155)
!147 = !DIEnumerator(name: "CPUHP_AP_SCHED_WAIT_EMPTY", value: 156)
!148 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 157)
!149 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 158)
!150 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 159)
!151 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 160)
!152 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 161)
!153 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 162)
!154 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 163)
!155 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 164)
!156 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 165)
!157 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 166)
!158 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 167)
!159 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 168)
!160 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 169)
!161 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 170)
!162 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_IDXD_ONLINE", value: 171)
!163 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 172)
!164 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 173)
!165 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 174)
!166 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 175)
!167 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_CPA_ONLINE", value: 176)
!168 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 177)
!169 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 178)
!170 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 179)
!171 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PA_ONLINE", value: 180)
!172 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_SLLC_ONLINE", value: 181)
!173 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PCIE_PMU_ONLINE", value: 182)
!174 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HNS3_PMU_ONLINE", value: 183)
!175 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 184)
!176 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 185)
!177 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 186)
!178 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 187)
!179 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 188)
!180 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_MARVELL_CN10K_DDR_ONLINE", value: 189)
!181 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 190)
!182 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 191)
!183 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 192)
!184 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 193)
!185 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 194)
!186 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 195)
!187 = !DIEnumerator(name: "CPUHP_AP_PERF_CSKY_ONLINE", value: 196)
!188 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 197)
!189 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 198)
!190 = !DIEnumerator(name: "CPUHP_AP_RANDOM_ONLINE", value: 199)
!191 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 200)
!192 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 201)
!193 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 202)
!194 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 232)
!195 = !DIEnumerator(name: "CPUHP_AP_MM_DEMOTION_ONLINE", value: 233)
!196 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 234)
!197 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 235)
!198 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 236)
!199 = !DIEnumerator(name: "CPUHP_ONLINE", value: 237)
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !201, line: 10, baseType: !202, size: 32, elements: !203)
!201 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!202 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!203 = !{!204, !205}
!204 = !DIEnumerator(name: "false", value: 0)
!205 = !DIEnumerator(name: "true", value: 1)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !207, line: 312, baseType: !202, size: 32, elements: !208)
!207 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!208 = !{!209, !210, !211, !212}
!209 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!210 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!211 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!212 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !214, line: 2052, baseType: !202, size: 32, elements: !215)
!214 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!215 = !{!216, !217}
!216 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!217 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !219, line: 54, baseType: !202, size: 32, elements: !220)
!219 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!220 = !{!221, !222, !223}
!221 = !DIEnumerator(name: "USRQUOTA", value: 0)
!222 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!223 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !225, line: 65, baseType: !202, size: 32, elements: !226)
!225 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!226 = !{!227, !228}
!227 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!228 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !230, line: 9, baseType: !202, size: 32, elements: !231)
!230 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!231 = !{!232, !233, !234, !235, !236}
!232 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!233 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!234 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!235 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!236 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !238, line: 1325, baseType: !202, size: 32, elements: !239)
!238 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252}
!240 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!241 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!242 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!243 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!244 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!245 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!246 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!247 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!248 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!249 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!250 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!251 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!252 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !254, line: 68, baseType: !202, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!255 = !{!256, !257, !258, !259, !260}
!256 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!257 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!258 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!259 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!260 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !262, line: 16, baseType: !202, size: 32, elements: !263)
!262 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!263 = !{!264, !265, !266}
!264 = !DIEnumerator(name: "TT_NONE", value: 0)
!265 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!266 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !268, line: 51, baseType: !202, size: 32, elements: !269)
!268 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!269 = !{!270, !271, !272, !273}
!270 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!271 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!272 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!273 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !275, line: 15, baseType: !202, size: 32, elements: !276)
!275 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!276 = !{!277, !278, !279, !280}
!277 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!278 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!279 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!280 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !282, line: 26, baseType: !202, size: 32, elements: !283)
!282 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!283 = !{!284, !285, !286}
!284 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!285 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!286 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!287 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !288, line: 45, baseType: !202, size: 32, elements: !289)
!288 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!289 = !{!290, !291, !292}
!290 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!291 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!292 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!293 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !294, line: 487, baseType: !202, size: 32, elements: !295)
!294 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!295 = !{!296, !297, !298, !299}
!296 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!297 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!298 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!299 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !301, line: 620, baseType: !202, size: 32, elements: !302)
!301 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!302 = !{!303, !304, !305, !306, !307}
!303 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!304 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!305 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!306 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!307 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!308 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !301, line: 597, baseType: !7, size: 32, elements: !309)
!309 = !{!310, !311, !312, !313, !314}
!310 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!311 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!312 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!313 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!314 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!315 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !294, line: 547, baseType: !202, size: 32, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !323}
!317 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!318 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!319 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!320 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!321 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!322 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!323 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!324 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !294, line: 564, baseType: !202, size: 32, elements: !325)
!325 = !{!326, !327, !328}
!326 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!327 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!328 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!329 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !294, line: 577, baseType: !202, size: 32, elements: !330)
!330 = !{!331, !332, !333}
!331 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!332 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!333 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!334 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !294, line: 503, baseType: !202, size: 32, elements: !335)
!335 = !{!336, !337, !338, !339}
!336 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!337 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!338 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!339 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!340 = !{!341, !342, !381, !426, !4684, !1356, !4685, !202}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !344, line: 83, size: 2368, elements: !345)
!344 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!345 = !{!346, !361, !362, !363, !367, !368, !369, !370, !371, !372, !373, !382, !387, !391, !392, !393, !394, !395, !396, !397, !398, !403, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !421, !423, !425}
!346 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !344, line: 84, baseType: !347, size: 32)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !344, line: 84, size: 32, elements: !348)
!348 = !{!349, !359}
!349 = !DIDerivedType(tag: DW_TAG_member, scope: !347, file: !344, line: 90, baseType: !350, size: 32)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !347, file: !344, line: 90, size: 32, elements: !351)
!351 = !{!352, !356, !357, !358}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !350, file: !344, line: 91, baseType: !353, size: 8)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !354, line: 21, baseType: !355)
!354 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!355 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !350, file: !344, line: 93, baseType: !353, size: 8, offset: 8)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !350, file: !344, line: 95, baseType: !353, size: 8, offset: 16)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !350, file: !344, line: 96, baseType: !353, size: 8, offset: 24)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !347, file: !344, line: 99, baseType: !360, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !354, line: 27, baseType: !202)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !343, file: !344, line: 101, baseType: !353, size: 8, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !343, file: !344, line: 104, baseType: !7, size: 32, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !343, file: !344, line: 107, baseType: !364, size: 160, offset: 96)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 160, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 5)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !343, file: !344, line: 109, baseType: !353, size: 8, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !343, file: !344, line: 110, baseType: !353, size: 8, offset: 264)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !343, file: !344, line: 112, baseType: !353, size: 8, offset: 272)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !343, file: !344, line: 113, baseType: !353, size: 8, offset: 280)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !343, file: !344, line: 115, baseType: !360, size: 32, offset: 288)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !343, file: !344, line: 117, baseType: !7, size: 32, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !344, line: 123, baseType: !374, size: 768, offset: 384)
!374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !344, line: 123, size: 768, elements: !375)
!375 = !{!376, !380}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !374, file: !344, line: 124, baseType: !377, size: 768)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 768, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 24)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !374, file: !344, line: 125, baseType: !381, size: 64)
!381 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !343, file: !344, line: 127, baseType: !383, size: 128, offset: 1152)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 128, elements: !385)
!384 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!385 = !{!386}
!386 = !DISubrange(count: 16)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !343, file: !344, line: 128, baseType: !388, size: 512, offset: 1280)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 512, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !343, file: !344, line: 130, baseType: !202, size: 32, offset: 1792)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !343, file: !344, line: 131, baseType: !7, size: 32, offset: 1824)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !343, file: !344, line: 133, baseType: !7, size: 32, offset: 1856)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !343, file: !344, line: 134, baseType: !7, size: 32, offset: 1888)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !343, file: !344, line: 135, baseType: !7, size: 32, offset: 1920)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !343, file: !344, line: 136, baseType: !7, size: 32, offset: 1952)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !343, file: !344, line: 137, baseType: !381, size: 64, offset: 1984)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !343, file: !344, line: 139, baseType: !399, size: 64, offset: 2048)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !400, line: 23, baseType: !401)
!400 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !354, line: 31, baseType: !402)
!402 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !343, file: !344, line: 141, baseType: !404, size: 16, offset: 2112)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !400, line: 19, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !354, line: 24, baseType: !406)
!406 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !343, file: !344, line: 142, baseType: !404, size: 16, offset: 2128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !343, file: !344, line: 143, baseType: !404, size: 16, offset: 2144)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !343, file: !344, line: 144, baseType: !404, size: 16, offset: 2160)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !343, file: !344, line: 146, baseType: !404, size: 16, offset: 2176)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !343, file: !344, line: 148, baseType: !404, size: 16, offset: 2192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !343, file: !344, line: 150, baseType: !404, size: 16, offset: 2208)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !343, file: !344, line: 152, baseType: !404, size: 16, offset: 2224)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !343, file: !344, line: 153, baseType: !404, size: 16, offset: 2240)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !343, file: !344, line: 154, baseType: !404, size: 16, offset: 2256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !343, file: !344, line: 156, baseType: !404, size: 16, offset: 2272)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !343, file: !344, line: 158, baseType: !418, size: 8, offset: 2288)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !419, line: 35, baseType: !420)
!419 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!420 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !343, file: !344, line: 159, baseType: !422, size: 32, offset: 2304)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !400, line: 21, baseType: !360)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !343, file: !344, line: 161, baseType: !424, size: 8, offset: 2336)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !400, line: 17, baseType: !353)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !343, file: !344, line: 162, baseType: !202, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !294, line: 705, size: 5824, elements: !428)
!428 = !{!429, !4339, !4340, !4343, !4344, !4397, !4467, !4468, !4469, !4470, !4471, !4478, !4570, !4583, !4593, !4597, !4599, !4600, !4601, !4605, !4612, !4613, !4616, !4619, !4623, !4626, !4627, !4628, !4629, !4630, !4631, !4661, !4662, !4663, !4666, !4669, !4678, !4679, !4680, !4681, !4682, !4683}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !427, file: !294, line: 706, baseType: !430, size: 512)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !431, line: 64, size: 512, elements: !432)
!431 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!432 = !{!433, !436, !442, !444, !523, !4225, !4329, !4334, !4335, !4336, !4337, !4338}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !430, file: !431, line: 65, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !430, file: !431, line: 66, baseType: !437, size: 128, offset: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !419, line: 190, size: 128, elements: !438)
!438 = !{!439, !441}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !437, file: !419, line: 191, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !437, file: !419, line: 191, baseType: !440, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !430, file: !431, line: 67, baseType: !443, size: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !430, file: !431, line: 68, baseType: !445, size: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !431, line: 168, size: 768, elements: !447)
!447 = !{!448, !449, !484, !485}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !446, file: !431, line: 169, baseType: !437, size: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !446, file: !431, line: 170, baseType: !450, size: 32, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !451, line: 29, baseType: !452)
!451 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !451, line: 17, size: 32, elements: !453)
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !451, line: 18, baseType: !455, size: 32)
!455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !451, line: 18, size: 32, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !455, file: !451, line: 19, baseType: !458, size: 32)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !459, line: 14, size: 32, elements: !460)
!459 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!460 = !{!461}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !458, file: !459, line: 15, baseType: !462, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !463, line: 44, baseType: !464)
!463 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !463, line: 14, size: 32, elements: !465)
!465 = !{!466}
!466 = !DIDerivedType(tag: DW_TAG_member, scope: !464, file: !463, line: 15, baseType: !467, size: 32)
!467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !464, file: !463, line: 15, size: 32, elements: !468)
!468 = !{!469, !474, !479}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !467, file: !463, line: 16, baseType: !470, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !419, line: 174, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !419, line: 172, size: 32, elements: !472)
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !471, file: !419, line: 173, baseType: !7, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !463, line: 24, baseType: !475, size: 16)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !467, file: !463, line: 24, size: 16, elements: !476)
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !475, file: !463, line: 25, baseType: !424, size: 8)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !475, file: !463, line: 26, baseType: !424, size: 8, offset: 8)
!479 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !463, line: 28, baseType: !480, size: 32)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !467, file: !463, line: 28, size: 32, elements: !481)
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !480, file: !463, line: 29, baseType: !404, size: 16)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !480, file: !463, line: 30, baseType: !404, size: 16, offset: 16)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !446, file: !431, line: 171, baseType: !430, size: 512, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !446, file: !431, line: 172, baseType: !486, size: 64, offset: 704)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !431, line: 133, size: 192, elements: !489)
!489 = !{!490, !497, !502}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !488, file: !431, line: 134, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!7, !495}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !488, file: !431, line: 135, baseType: !498, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!434, !495}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !488, file: !431, line: 136, baseType: !503, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!7, !495, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !431, line: 125, size: 20736, elements: !509)
!509 = !{!510, !515, !517, !518, !522}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !508, file: !431, line: 126, baseType: !511, size: 192)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 192, elements: !513)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!513 = !{!514}
!514 = !DISubrange(count: 3)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !508, file: !431, line: 127, baseType: !516, size: 4096, offset: 192)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 4096, elements: !389)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !508, file: !431, line: 128, baseType: !7, size: 32, offset: 4288)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !508, file: !431, line: 129, baseType: !519, size: 16384, offset: 4320)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 16384, elements: !520)
!520 = !{!521}
!521 = !DISubrange(count: 2048)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !508, file: !431, line: 130, baseType: !7, size: 32, offset: 20704)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !430, file: !431, line: 69, baseType: !524, size: 64, offset: 320)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !431, line: 116, size: 384, elements: !527)
!527 = !{!528, !532, !560, !4187, !4215, !4219}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !526, file: !431, line: 117, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !443}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !526, file: !431, line: 118, baseType: !533, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !536, line: 254, size: 128, elements: !537)
!536 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!537 = !{!538, !553}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !535, file: !536, line: 255, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!542, !443, !547, !512}
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !419, line: 66, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !544, line: 73, baseType: !545)
!544 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !544, line: 15, baseType: !546)
!546 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !536, line: 30, size: 128, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !548, file: !536, line: 31, baseType: !434, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !548, file: !536, line: 32, baseType: !552, size: 16, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !419, line: 24, baseType: !406)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !535, file: !536, line: 256, baseType: !554, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!542, !443, !547, !434, !557}
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !419, line: 61, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !544, line: 72, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !544, line: 16, baseType: !381)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !526, file: !431, line: 119, baseType: !561, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !536, line: 84, size: 320, elements: !565)
!565 = !{!566, !567, !571, !4183, !4185}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !564, file: !536, line: 85, baseType: !434, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !564, file: !536, line: 86, baseType: !568, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!552, !443, !547, !7}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !564, file: !536, line: 88, baseType: !572, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!552, !443, !575, !7}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !536, line: 175, size: 512, elements: !577)
!577 = !{!578, !579, !580, !581, !4174, !4178, !4179}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !576, file: !536, line: 176, baseType: !548, size: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !576, file: !536, line: 177, baseType: !557, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !576, file: !536, line: 178, baseType: !341, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !576, file: !536, line: 179, baseType: !582, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !214, line: 472, size: 1536, align: 64, elements: !587)
!587 = !{!588, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4168, !4169, !4170, !4171, !4172, !4173}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !586, file: !214, line: 473, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !214, line: 641, size: 4800, elements: !591)
!591 = !{!592, !593, !594, !602, !603, !610, !611, !614, !615, !3946, !3947, !3948, !3949, !3950, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3990, !3993, !3994, !3995, !4004, !4005, !4006, !4007}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !590, file: !214, line: 642, baseType: !552, size: 16)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !590, file: !214, line: 643, baseType: !406, size: 16, offset: 16)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !590, file: !214, line: 644, baseType: !595, size: 32, offset: 32)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !596, line: 23, baseType: !597)
!596 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !596, line: 21, size: 32, elements: !598)
!598 = !{!599}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !597, file: !596, line: 22, baseType: !600, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !419, line: 37, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !544, line: 49, baseType: !202)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !590, file: !214, line: 645, baseType: !437, size: 128, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !590, file: !214, line: 646, baseType: !604, size: 32, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !596, line: 28, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !596, line: 26, size: 32, elements: !606)
!606 = !{!607}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !605, file: !596, line: 27, baseType: !608, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !419, line: 38, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !544, line: 50, baseType: !202)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !590, file: !214, line: 647, baseType: !202, size: 32, offset: 224)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !590, file: !214, line: 650, baseType: !612, size: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !214, line: 607, flags: DIFlagFwdDecl)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !590, file: !214, line: 651, baseType: !612, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !590, file: !214, line: 654, baseType: !616, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !214, line: 1966, size: 2048, align: 512, elements: !619)
!619 = !{!620, !3774, !3784, !3788, !3792, !3796, !3800, !3804, !3808, !3812, !3816, !3817, !3821, !3825, !3862, !3891, !3895, !3901, !3905, !3909, !3913, !3917, !3921, !3927, !3931}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !618, file: !214, line: 1967, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!624, !589, !624, !202}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !626, line: 82, size: 1536, elements: !627)
!626 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!627 = !{!628, !629, !639, !647, !648, !663, !664, !668, !681, !3757, !3758, !3759, !3760, !3766, !3767, !3768}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !625, file: !626, line: 84, baseType: !202, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !625, file: !626, line: 85, baseType: !630, size: 32, offset: 32)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !631, line: 275, baseType: !632)
!631 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !631, line: 275, size: 32, elements: !633)
!633 = !{!634}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !632, file: !631, line: 275, baseType: !635, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !631, line: 69, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !631, line: 64, size: 32, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !636, file: !631, line: 65, baseType: !202, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !625, file: !626, line: 86, baseType: !640, size: 128, offset: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !641, line: 38, size: 128, elements: !642)
!641 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!642 = !{!643, !645}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !640, file: !641, line: 39, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !640, file: !641, line: 39, baseType: !646, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !625, file: !626, line: 87, baseType: !624, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !625, file: !626, line: 88, baseType: !649, size: 128, offset: 256)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !626, line: 49, size: 128, elements: !650)
!650 = !{!651, !660}
!651 = !DIDerivedType(tag: DW_TAG_member, scope: !649, file: !626, line: 50, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !649, file: !626, line: 50, size: 64, elements: !653)
!653 = !{!654, !659}
!654 = !DIDerivedType(tag: DW_TAG_member, scope: !652, file: !626, line: 51, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !652, file: !626, line: 51, size: 64, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !655, file: !626, line: 52, baseType: !422, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !655, file: !626, line: 52, baseType: !422, size: 32, offset: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !652, file: !626, line: 54, baseType: !399, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !649, file: !626, line: 56, baseType: !661, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !625, file: !626, line: 89, baseType: !589, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !625, file: !626, line: 91, baseType: !665, size: 256, offset: 448)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 256, elements: !666)
!666 = !{!667}
!667 = !DISubrange(count: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !625, file: !626, line: 94, baseType: !669, size: 64, offset: 704)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !670, line: 25, size: 64, elements: !671)
!670 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!671 = !{!672}
!672 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !670, line: 26, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !669, file: !670, line: 26, size: 64, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !673, file: !670, line: 28, baseType: !401, size: 64, align: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !670, line: 30, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !673, file: !670, line: 30, size: 64, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !677, file: !670, line: 31, baseType: !450, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !677, file: !670, line: 32, baseType: !7, size: 32, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !625, file: !626, line: 95, baseType: !682, size: 64, offset: 768)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !626, line: 128, size: 1024, align: 512, elements: !685)
!685 = !{!686, !690, !691, !698, !704, !708, !712, !716, !717, !721, !725, !3747, !3751}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !684, file: !626, line: 129, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!7, !624, !202}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !684, file: !626, line: 130, baseType: !687, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !684, file: !626, line: 131, baseType: !692, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!7, !695, !697}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !684, file: !626, line: 132, baseType: !699, size: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!7, !695, !202, !434, !702}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !684, file: !626, line: 134, baseType: !705, size: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!7, !695}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !684, file: !626, line: 135, baseType: !709, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!7, !624}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !684, file: !626, line: 136, baseType: !713, size: 64, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !624}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !684, file: !626, line: 137, baseType: !713, size: 64, offset: 448)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !684, file: !626, line: 138, baseType: !718, size: 64, offset: 512)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !624, !589}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !684, file: !626, line: 139, baseType: !722, size: 64, offset: 576)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!512, !624, !512, !7}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !684, file: !626, line: 140, baseType: !726, size: 64, offset: 640)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!729, !3746}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !731, line: 70, size: 256, elements: !732)
!731 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!732 = !{!733, !734, !3742, !3743}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !730, file: !731, line: 71, baseType: !624, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !730, file: !731, line: 72, baseType: !735, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !214, line: 1190, size: 10752, elements: !737)
!737 = !{!738, !739, !742, !743, !744, !748, !1225, !1365, !1405, !1495, !1499, !1500, !1501, !1502, !1503, !1512, !1513, !1514, !1515, !1520, !1524, !1525, !1528, !1531, !1534, !1537, !1538, !1539, !1580, !3675, !3676, !3677, !3678, !3679, !3680, !3683, !3685, !3692, !3693, !3694, !3695, !3696, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !736, file: !214, line: 1191, baseType: !437, size: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !736, file: !214, line: 1192, baseType: !740, size: 32, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !419, line: 21, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !419, line: 18, baseType: !422)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !736, file: !214, line: 1193, baseType: !355, size: 8, offset: 160)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !736, file: !214, line: 1194, baseType: !381, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !736, file: !214, line: 1195, baseType: !745, size: 64, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !419, line: 52, baseType: !746)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !544, line: 88, baseType: !747)
!747 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !736, file: !214, line: 1196, baseType: !749, size: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !214, line: 2366, size: 576, elements: !751)
!751 = !{!752, !753, !754, !760, !764, !768, !772, !1210, !1211, !1215, !1217, !1218, !1219, !1221, !1222, !1223, !1224}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !750, file: !214, line: 2367, baseType: !434, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !750, file: !214, line: 2368, baseType: !7, size: 32, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !750, file: !214, line: 2376, baseType: !755, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!7, !758}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !731, line: 21, flags: DIFlagFwdDecl)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !750, file: !214, line: 2377, baseType: !761, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !214, line: 75, flags: DIFlagFwdDecl)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !750, file: !214, line: 2378, baseType: !765, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!624, !749, !7, !434, !341}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !750, file: !214, line: 2380, baseType: !769, size: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !735}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !750, file: !214, line: 2381, baseType: !773, size: 64, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !207, line: 402, size: 9216, align: 512, elements: !775)
!775 = !{!776, !777, !778, !782, !804, !830, !831, !832, !833, !837, !842, !843, !863, !919, !920, !921, !922, !923, !924, !925, !926, !934, !938, !965, !986, !987, !988, !989, !998, !1021, !1022, !1025, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1039, !1040, !1168, !1176, !1177, !1178, !1180, !1184, !1185, !1189, !1190, !1191, !1192, !1194, !1195, !1196, !1203, !1204, !1205, !1209}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !774, file: !207, line: 403, baseType: !206, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !774, file: !207, line: 406, baseType: !437, size: 128, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !774, file: !207, line: 409, baseType: !779, size: 448, offset: 192)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 448, elements: !780)
!780 = !{!781}
!781 = !DISubrange(count: 56)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !774, file: !207, line: 417, baseType: !783, size: 768, offset: 640)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !207, line: 45, size: 768, elements: !784)
!784 = !{!785, !786, !787, !788, !791}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !783, file: !207, line: 46, baseType: !430, size: 512)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !783, file: !207, line: 47, baseType: !773, size: 64, offset: 512)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !783, file: !207, line: 48, baseType: !443, size: 64, offset: 576)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !783, file: !207, line: 49, baseType: !789, size: 64, offset: 640)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !207, line: 49, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !783, file: !207, line: 50, baseType: !792, size: 64, offset: 704)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !794, line: 26, size: 256, elements: !795)
!794 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !793, file: !794, line: 27, baseType: !202, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !793, file: !794, line: 28, baseType: !798, size: 192, offset: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !799, line: 43, size: 192, elements: !800)
!799 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!800 = !{!801, !803}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !798, file: !799, line: 44, baseType: !802, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !459, line: 23, baseType: !458)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !798, file: !799, line: 45, baseType: !437, size: 128, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !774, file: !207, line: 418, baseType: !805, size: 64, offset: 1408)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !207, line: 53, size: 448, elements: !807)
!807 = !{!808, !809, !814, !818, !822, !826}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !806, file: !207, line: 54, baseType: !548, size: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !806, file: !207, line: 55, baseType: !810, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!542, !805, !813, !512}
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !806, file: !207, line: 57, baseType: !815, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!542, !805, !813, !434, !557}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !806, file: !207, line: 59, baseType: !819, size: 64, offset: 256)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !773, !434}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !806, file: !207, line: 60, baseType: !823, size: 64, offset: 320)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!7, !773}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !806, file: !207, line: 61, baseType: !827, size: 64, offset: 384)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !773}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !774, file: !207, line: 419, baseType: !434, size: 64, offset: 1472)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !774, file: !207, line: 420, baseType: !434, size: 64, offset: 1536)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !774, file: !207, line: 421, baseType: !443, size: 64, offset: 1600)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !774, file: !207, line: 424, baseType: !834, size: 64, offset: 1664)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !836)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !207, line: 424, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !774, file: !207, line: 425, baseType: !838, size: 64, offset: 1728)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !840)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !400, line: 20, baseType: !841)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !354, line: 26, baseType: !7)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !774, file: !207, line: 426, baseType: !202, size: 32, offset: 1792)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !774, file: !207, line: 435, baseType: !844, size: 256, offset: 1856)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !845, line: 66, size: 256, elements: !846)
!845 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!846 = !{!847, !856, !857, !862}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !844, file: !845, line: 67, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !849, line: 13, baseType: !850)
!849 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !419, line: 181, baseType: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !419, line: 179, size: 64, elements: !852)
!852 = !{!853}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !851, file: !419, line: 180, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !400, line: 22, baseType: !855)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !354, line: 30, baseType: !747)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !844, file: !845, line: 68, baseType: !802, size: 32, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !844, file: !845, line: 70, baseType: !858, size: 32, offset: 96)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !859, line: 15, size: 32, elements: !860)
!859 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!860 = !{!861}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !858, file: !859, line: 20, baseType: !470, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !844, file: !845, line: 72, baseType: !437, size: 128, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !774, file: !207, line: 437, baseType: !864, size: 64, offset: 2112)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !866, line: 69, size: 320, elements: !867)
!866 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!867 = !{!868, !869, !870, !890, !892, !896, !897}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !865, file: !866, line: 70, baseType: !434, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !865, file: !866, line: 71, baseType: !773, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !865, file: !866, line: 72, baseType: !871, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !866, line: 47, size: 256, elements: !874)
!874 = !{!875, !876, !882, !886}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !873, file: !866, line: 49, baseType: !202, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !873, file: !866, line: 51, baseType: !877, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!7, !434, !880}
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !865)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !873, file: !866, line: 53, baseType: !883, size: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!7, !512, !880}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !873, file: !866, line: 55, baseType: !887, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !341}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !865, file: !866, line: 73, baseType: !891, size: 16, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !865, file: !866, line: 74, baseType: !893, size: 8, offset: 208)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !400, line: 16, baseType: !894)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !354, line: 20, baseType: !895)
!895 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !865, file: !866, line: 75, baseType: !424, size: 8, offset: 216)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !865, file: !866, line: 76, baseType: !898, size: 64, offset: 256)
!898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !865, file: !866, line: 76, size: 64, elements: !899)
!899 = !{!900, !901, !908}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !898, file: !866, line: 77, baseType: !341, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !898, file: !866, line: 78, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !904)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !866, line: 86, size: 128, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !904, file: !866, line: 87, baseType: !202, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !904, file: !866, line: 88, baseType: !512, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !898, file: !866, line: 79, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !911)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !866, line: 92, size: 256, elements: !912)
!912 = !{!913, !914, !915, !917, !918}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !911, file: !866, line: 94, baseType: !202, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !911, file: !866, line: 95, baseType: !202, size: 32, offset: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !911, file: !866, line: 96, baseType: !916, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !911, file: !866, line: 97, baseType: !871, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !911, file: !866, line: 98, baseType: !341, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !774, file: !207, line: 438, baseType: !202, size: 32, offset: 2176)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !774, file: !207, line: 441, baseType: !202, size: 32, offset: 2208)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !774, file: !207, line: 442, baseType: !834, size: 64, offset: 2240)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !774, file: !207, line: 443, baseType: !838, size: 64, offset: 2304)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !774, file: !207, line: 444, baseType: !418, size: 8, offset: 2368)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !774, file: !207, line: 451, baseType: !418, size: 8, offset: 2376)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !774, file: !207, line: 454, baseType: !202, size: 32, offset: 2400)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !774, file: !207, line: 455, baseType: !927, size: 64, offset: 2432)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !929, line: 23, size: 96, elements: !930)
!929 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!930 = !{!931, !932, !933}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !928, file: !929, line: 24, baseType: !7, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !928, file: !929, line: 24, baseType: !7, size: 32, offset: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !928, file: !929, line: 24, baseType: !7, size: 32, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !774, file: !207, line: 458, baseType: !935, size: 64, offset: 2496)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!7}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !774, file: !207, line: 460, baseType: !939, size: 4032, align: 512, offset: 2560)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, size: 4032, elements: !963)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !207, line: 362, size: 576, elements: !941)
!941 = !{!942, !943, !944}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !940, file: !207, line: 363, baseType: !341, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !940, file: !207, line: 364, baseType: !202, size: 32, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !940, file: !207, line: 367, baseType: !945, size: 448, offset: 128)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !207, line: 319, size: 448, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !945, file: !207, line: 320, baseType: !773, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !945, file: !207, line: 321, baseType: !949, size: 384, offset: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !950, line: 40, size: 384, elements: !951)
!950 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!951 = !{!952}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !949, file: !950, line: 41, baseType: !953, size: 384, align: 64)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !954, size: 384, align: 64, elements: !961)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !955, line: 5, size: 192, align: 64, elements: !956)
!955 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!956 = !{!957, !958, !960}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !954, file: !955, line: 6, baseType: !381, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !954, file: !955, line: 7, baseType: !959, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !954, file: !955, line: 8, baseType: !959, size: 64, offset: 128)
!961 = !{!962}
!962 = !DISubrange(count: 2)
!963 = !{!964}
!964 = !DISubrange(count: 7)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !774, file: !207, line: 463, baseType: !966, size: 192, offset: 6592)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !967, line: 8, size: 192, elements: !968)
!967 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!968 = !{!969, !970, !972}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !966, file: !967, line: 10, baseType: !202, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !966, file: !967, line: 11, baseType: !971, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !966, file: !967, line: 12, baseType: !973, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !975, line: 59, size: 48, elements: !976)
!975 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!976 = !{!977, !981, !982, !983, !984, !985}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !974, file: !975, line: 60, baseType: !978, size: 16)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !400, line: 18, baseType: !979)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !354, line: 23, baseType: !980)
!980 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !974, file: !975, line: 61, baseType: !978, size: 16, offset: 16)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !974, file: !975, line: 63, baseType: !202, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !974, file: !975, line: 64, baseType: !202, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !974, file: !975, line: 65, baseType: !202, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !974, file: !975, line: 66, baseType: !202, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !774, file: !207, line: 465, baseType: !381, size: 64, offset: 6784)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !774, file: !207, line: 469, baseType: !202, size: 32, offset: 6848)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !774, file: !207, line: 470, baseType: !437, size: 128, offset: 6912)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !774, file: !207, line: 471, baseType: !990, size: 64, offset: 7040)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !992, line: 33, size: 96, elements: !993)
!992 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!993 = !{!994, !995, !996, !997}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !991, file: !992, line: 37, baseType: !7, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !991, file: !992, line: 43, baseType: !7, size: 32, offset: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !991, file: !992, line: 45, baseType: !406, size: 16, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !991, file: !992, line: 47, baseType: !406, size: 16, offset: 80)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !774, file: !207, line: 476, baseType: !999, size: 64, offset: 7104)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !207, line: 378, size: 256, elements: !1001)
!1001 = !{!1002, !1018, !1019, !1020}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1000, file: !207, line: 379, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1005, line: 204, baseType: !1006)
!1005 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1005, line: 197, size: 192, elements: !1007)
!1007 = !{!1008, !1010, !1011, !1012, !1014, !1016}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1006, file: !1005, line: 198, baseType: !1009, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1005, line: 21, baseType: !360)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1006, file: !1005, line: 199, baseType: !355, size: 8, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1006, file: !1005, line: 200, baseType: !355, size: 8, offset: 40)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1006, file: !1005, line: 201, baseType: !1013, size: 16, offset: 48)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1005, line: 17, baseType: !405)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1006, file: !1005, line: 202, baseType: !1015, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1005, line: 16, baseType: !401)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1006, file: !1005, line: 203, baseType: !1017, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1005, line: 22, baseType: !401)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1000, file: !207, line: 380, baseType: !202, size: 32, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1000, file: !207, line: 381, baseType: !512, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1000, file: !207, line: 382, baseType: !512, size: 64, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !774, file: !207, line: 477, baseType: !1000, size: 256, offset: 7168)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !774, file: !207, line: 480, baseType: !1023, size: 64, offset: 7424)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !207, line: 480, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !774, file: !207, line: 483, baseType: !1026, size: 64, offset: 7488)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !207, line: 483, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !774, file: !207, line: 488, baseType: !512, size: 64, offset: 7552)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !774, file: !207, line: 492, baseType: !341, size: 64, offset: 7616)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !774, file: !207, line: 493, baseType: !202, size: 32, offset: 7680)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !774, file: !207, line: 495, baseType: !341, size: 64, offset: 7744)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !774, file: !207, line: 496, baseType: !202, size: 32, offset: 7808)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !774, file: !207, line: 499, baseType: !202, size: 32, offset: 7840)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !774, file: !207, line: 500, baseType: !1035, size: 64, offset: 7872)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1037, line: 45, baseType: !1038)
!1037 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !774, file: !207, line: 503, baseType: !202, size: 32, offset: 7936)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !774, file: !207, line: 504, baseType: !1041, size: 64, offset: 8000)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1044, line: 96, size: 192, elements: !1045)
!1044 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1045 = !{!1046, !1047, !1128, !1132}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1043, file: !1044, line: 97, baseType: !202, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1043, file: !1044, line: 98, baseType: !1048, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1044, line: 24, size: 3072, elements: !1050)
!1050 = !{!1051, !1053, !1054, !1055, !1056, !1080, !1081, !1082, !1083, !1101, !1113, !1114, !1125, !1126, !1127}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1049, file: !1044, line: 26, baseType: !1052, size: 128)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !848, size: 128, elements: !961)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1049, file: !1044, line: 27, baseType: !1052, size: 128, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1049, file: !1044, line: 28, baseType: !7, size: 32, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1049, file: !1044, line: 31, baseType: !450, size: 32, align: 512, offset: 512)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1049, file: !1044, line: 32, baseType: !1057, size: 960, offset: 576)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1058, line: 206, size: 960, elements: !1059)
!1058 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1059 = !{!1060, !1069, !1074, !1076, !1077, !1079}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1057, file: !1058, line: 207, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !419, line: 232, size: 128, align: 64, elements: !1063)
!1063 = !{!1064, !1065}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1062, file: !419, line: 233, baseType: !1061, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1062, file: !419, line: 234, baseType: !1066, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null, !1061}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1057, file: !1058, line: 208, baseType: !1070, size: 256, offset: 64)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1071, size: 256, elements: !1072)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1072 = !{!1073}
!1073 = !DISubrange(count: 4)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1057, file: !1058, line: 209, baseType: !1075, size: 256, offset: 320)
!1075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 256, elements: !1072)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1057, file: !1058, line: 213, baseType: !546, size: 64, offset: 576)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1057, file: !1058, line: 215, baseType: !1078, size: 256, offset: 640)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 256, elements: !1072)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1057, file: !1058, line: 216, baseType: !424, size: 8, offset: 896)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1049, file: !1044, line: 33, baseType: !381, size: 64, offset: 1536)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1049, file: !1044, line: 34, baseType: !381, size: 64, offset: 1600)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1049, file: !1044, line: 35, baseType: !418, size: 8, offset: 1664)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1049, file: !1044, line: 36, baseType: !1084, size: 320, offset: 1728)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1085, line: 11, size: 320, elements: !1086)
!1085 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1086 = !{!1087, !1094, !1095, !1100}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1084, file: !1085, line: 16, baseType: !1088, size: 128)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !419, line: 198, size: 128, elements: !1089)
!1089 = !{!1090, !1092}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1088, file: !419, line: 199, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1088, file: !419, line: 199, baseType: !1093, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1084, file: !1085, line: 17, baseType: !381, size: 64, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1084, file: !1085, line: 18, baseType: !1096, size: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{null, !1099}
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1084, file: !1085, line: 19, baseType: !422, size: 32, offset: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1049, file: !1044, line: 37, baseType: !1102, size: 256, offset: 2048)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1103, line: 98, size: 256, elements: !1104)
!1103 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1104 = !{!1105, !1106, !1107}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1102, file: !1103, line: 99, baseType: !848, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1102, file: !1103, line: 100, baseType: !437, size: 128, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1102, file: !1103, line: 101, baseType: !1108, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1103, line: 21, baseType: !1109)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !1112}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1049, file: !1044, line: 38, baseType: !1062, size: 128, align: 64, offset: 2304)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1049, file: !1044, line: 39, baseType: !1115, size: 64, offset: 2432)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1044, line: 49, size: 768, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1123, !1124}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1116, file: !1044, line: 50, baseType: !450, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1116, file: !1044, line: 51, baseType: !1075, size: 256, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1116, file: !1044, line: 53, baseType: !1075, size: 256, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1116, file: !1044, line: 54, baseType: !381, size: 64, offset: 576)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1116, file: !1044, line: 55, baseType: !1115, size: 64, offset: 640)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1116, file: !1044, line: 56, baseType: !7, size: 32, offset: 704)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1116, file: !1044, line: 57, baseType: !7, size: 32, offset: 736)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1049, file: !1044, line: 40, baseType: !381, size: 64, offset: 2496)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1049, file: !1044, line: 42, baseType: !7, size: 32, offset: 2560)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1049, file: !1044, line: 43, baseType: !1042, size: 64, offset: 2624)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1043, file: !1044, line: 99, baseType: !1129, offset: 128)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1130, line: 211, elements: !1131)
!1130 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1131 = !{}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1043, file: !1044, line: 100, baseType: !1133, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1044, line: 63, size: 3008, elements: !1135)
!1135 = !{!1136, !1137, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1167}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1134, file: !1044, line: 64, baseType: !1115, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1134, file: !1044, line: 65, baseType: !1138, size: 192, offset: 64)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1115, size: 192, elements: !513)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1134, file: !1044, line: 67, baseType: !7, size: 32, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1134, file: !1044, line: 68, baseType: !844, size: 256, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1134, file: !1044, line: 69, baseType: !450, size: 32, offset: 576)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1134, file: !1044, line: 70, baseType: !844, size: 256, offset: 640)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1134, file: !1044, line: 71, baseType: !381, size: 64, offset: 896)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1134, file: !1044, line: 72, baseType: !381, size: 64, offset: 960)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1134, file: !1044, line: 73, baseType: !381, size: 64, offset: 1024)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1134, file: !1044, line: 74, baseType: !381, size: 64, offset: 1088)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1134, file: !1044, line: 75, baseType: !381, size: 64, offset: 1152)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1134, file: !1044, line: 76, baseType: !381, size: 64, offset: 1216)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1134, file: !1044, line: 77, baseType: !381, size: 64, offset: 1280)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1134, file: !1044, line: 78, baseType: !381, size: 64, offset: 1344)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1134, file: !1044, line: 79, baseType: !418, size: 8, offset: 1408)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1134, file: !1044, line: 80, baseType: !381, size: 64, offset: 1472)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1134, file: !1044, line: 81, baseType: !844, size: 256, offset: 1536)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1134, file: !1044, line: 82, baseType: !793, size: 256, offset: 1792)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1134, file: !1044, line: 84, baseType: !470, size: 32, offset: 2048)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1134, file: !1044, line: 87, baseType: !381, size: 64, offset: 2112)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1134, file: !1044, line: 88, baseType: !381, size: 64, offset: 2176)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1134, file: !1044, line: 89, baseType: !1159, size: 704, offset: 2240)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1103, line: 111, size: 704, elements: !1160)
!1160 = !{!1161, !1162, !1163, !1166}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1159, file: !1103, line: 112, baseType: !1102, size: 256)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1159, file: !1103, line: 113, baseType: !1084, size: 320, offset: 256)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1159, file: !1103, line: 116, baseType: !1164, size: 64, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1103, line: 18, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1159, file: !1103, line: 117, baseType: !7, size: 32, offset: 640)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1134, file: !1044, line: 90, baseType: !1042, size: 64, offset: 2944)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !774, file: !207, line: 515, baseType: !1169, size: 64, offset: 8064)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1171, line: 117, size: 128, elements: !1172)
!1171 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1172 = !{!1173, !1174, !1175}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1170, file: !1171, line: 118, baseType: !840, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1170, file: !1171, line: 119, baseType: !840, size: 32, offset: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1170, file: !1171, line: 120, baseType: !546, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !774, file: !207, line: 516, baseType: !202, size: 32, offset: 8128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !774, file: !207, line: 519, baseType: !202, size: 32, offset: 8160)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !774, file: !207, line: 520, baseType: !1179, size: 64, offset: 8192)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !774, file: !207, line: 523, baseType: !1181, size: 64, offset: 8256)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !207, line: 523, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !774, file: !207, line: 524, baseType: !202, size: 32, offset: 8320)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !774, file: !207, line: 525, baseType: !1186, size: 64, offset: 8384)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !207, line: 525, flags: DIFlagFwdDecl)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !774, file: !207, line: 526, baseType: !202, size: 32, offset: 8448)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !774, file: !207, line: 533, baseType: !341, size: 64, offset: 8512)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !774, file: !207, line: 534, baseType: !202, size: 32, offset: 8576)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !774, file: !207, line: 535, baseType: !1193, size: 64, offset: 8640)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !774, file: !207, line: 536, baseType: !202, size: 32, offset: 8704)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !774, file: !207, line: 539, baseType: !7, size: 32, offset: 8736)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !774, file: !207, line: 540, baseType: !1197, size: 64, offset: 8768)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1199, line: 32, size: 64, elements: !1200)
!1199 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1198, file: !1199, line: 33, baseType: !840, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1198, file: !1199, line: 34, baseType: !840, size: 32, offset: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !774, file: !207, line: 563, baseType: !437, size: 128, offset: 8832)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !774, file: !207, line: 565, baseType: !437, size: 128, offset: 8960)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !774, file: !207, line: 568, baseType: !1206, size: 64, offset: 9088)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{null}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !774, file: !207, line: 570, baseType: !470, size: 32, offset: 9152)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !750, file: !214, line: 2382, baseType: !749, size: 64, offset: 448)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !750, file: !214, line: 2383, baseType: !1212, size: 64, offset: 512)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !419, line: 194, size: 64, elements: !1213)
!1213 = !{!1214}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1212, file: !419, line: 195, baseType: !1091, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !750, file: !214, line: 2385, baseType: !1216, offset: 576)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1130, line: 206, elements: !1131)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !750, file: !214, line: 2386, baseType: !1216, offset: 576)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !750, file: !214, line: 2387, baseType: !1216, offset: 576)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !750, file: !214, line: 2388, baseType: !1220, offset: 576)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1216, elements: !513)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !750, file: !214, line: 2390, baseType: !1216, offset: 576)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !750, file: !214, line: 2391, baseType: !1216, offset: 576)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !750, file: !214, line: 2392, baseType: !1216, offset: 576)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !750, file: !214, line: 2393, baseType: !1216, offset: 576)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !736, file: !214, line: 1197, baseType: !1226, size: 64, offset: 384)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1228)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !214, line: 2057, size: 1664, elements: !1229)
!1229 = !{!1230, !1234, !1238, !1239, !1243, !1249, !1253, !1254, !1255, !1259, !1263, !1267, !1268, !1269, !1275, !1279, !1280, !1287, !1288, !1289, !1290, !1294, !1298, !1347, !1363, !1364}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1228, file: !214, line: 2058, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!589, !735}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1228, file: !214, line: 2059, baseType: !1235, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !589}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1228, file: !214, line: 2060, baseType: !1235, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1228, file: !214, line: 2062, baseType: !1240, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{null, !589, !7}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1228, file: !214, line: 2063, baseType: !1244, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!7, !589, !1247}
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !214, line: 309, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1228, file: !214, line: 2064, baseType: !1250, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!7, !589}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1228, file: !214, line: 2065, baseType: !1235, size: 64, offset: 384)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1228, file: !214, line: 2066, baseType: !769, size: 64, offset: 448)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1228, file: !214, line: 2067, baseType: !1256, size: 64, offset: 512)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!7, !735, !7}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1228, file: !214, line: 2068, baseType: !1260, size: 64, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!7, !735, !213}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1228, file: !214, line: 2069, baseType: !1264, size: 64, offset: 640)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!7, !735}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1228, file: !214, line: 2070, baseType: !1260, size: 64, offset: 704)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1228, file: !214, line: 2071, baseType: !1264, size: 64, offset: 768)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1228, file: !214, line: 2072, baseType: !1270, size: 64, offset: 832)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!7, !624, !1273}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !214, line: 62, flags: DIFlagFwdDecl)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1228, file: !214, line: 2073, baseType: !1276, size: 64, offset: 896)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!7, !735, !971, !512}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1228, file: !214, line: 2074, baseType: !769, size: 64, offset: 960)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1228, file: !214, line: 2076, baseType: !1281, size: 64, offset: 1024)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!7, !1284, !624}
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1286, line: 66, flags: DIFlagFwdDecl)
!1286 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1228, file: !214, line: 2077, baseType: !1281, size: 64, offset: 1088)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1228, file: !214, line: 2078, baseType: !1281, size: 64, offset: 1152)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1228, file: !214, line: 2079, baseType: !1281, size: 64, offset: 1216)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1228, file: !214, line: 2081, baseType: !1291, size: 64, offset: 1280)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!542, !735, !7, !512, !557, !745}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1228, file: !214, line: 2082, baseType: !1295, size: 64, offset: 1344)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!542, !735, !7, !434, !557, !745}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1228, file: !214, line: 2083, baseType: !1299, size: 64, offset: 1408)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!1302, !589}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !219, line: 296, size: 1664, elements: !1305)
!1305 = !{!1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1330, !1331, !1332}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1304, file: !219, line: 297, baseType: !1088, size: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1304, file: !219, line: 298, baseType: !437, size: 128, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1304, file: !219, line: 299, baseType: !437, size: 128, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1304, file: !219, line: 300, baseType: !437, size: 128, offset: 384)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1304, file: !219, line: 301, baseType: !844, size: 256, offset: 512)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1304, file: !219, line: 302, baseType: !450, size: 32, offset: 768)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1304, file: !219, line: 303, baseType: !470, size: 32, offset: 800)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1304, file: !219, line: 304, baseType: !735, size: 64, offset: 832)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1304, file: !219, line: 305, baseType: !1315, size: 64, offset: 896)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !219, line: 68, size: 64, elements: !1316)
!1316 = !{!1317, !1329}
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1315, file: !219, line: 69, baseType: !1318, size: 32)
!1318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1315, file: !219, line: 69, size: 32, elements: !1319)
!1319 = !{!1320, !1321, !1322}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1318, file: !219, line: 70, baseType: !595, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1318, file: !219, line: 71, baseType: !604, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1318, file: !219, line: 72, baseType: !1323, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1324, line: 24, baseType: !1325)
!1324 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1324, line: 22, size: 32, elements: !1326)
!1326 = !{!1327}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1325, file: !1324, line: 23, baseType: !1328, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1324, line: 20, baseType: !601)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1315, file: !219, line: 74, baseType: !218, size: 32, offset: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1304, file: !219, line: 306, baseType: !745, size: 64, offset: 960)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1304, file: !219, line: 307, baseType: !381, size: 64, offset: 1024)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1304, file: !219, line: 308, baseType: !1333, size: 576, offset: 1088)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !219, line: 205, size: 576, elements: !1334)
!1334 = !{!1335, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1346}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1333, file: !219, line: 206, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !219, line: 66, baseType: !747)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1333, file: !219, line: 207, baseType: !1336, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1333, file: !219, line: 208, baseType: !1336, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1333, file: !219, line: 209, baseType: !1336, size: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1333, file: !219, line: 210, baseType: !1336, size: 64, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1333, file: !219, line: 211, baseType: !1336, size: 64, offset: 320)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1333, file: !219, line: 212, baseType: !1336, size: 64, offset: 384)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1333, file: !219, line: 213, baseType: !1344, size: 64, offset: 448)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1345, line: 8, baseType: !855)
!1345 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1333, file: !219, line: 214, baseType: !1344, size: 64, offset: 512)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1228, file: !214, line: 2085, baseType: !1348, size: 64, offset: 1472)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!546, !735, !1351}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1353, line: 15, size: 256, elements: !1354)
!1353 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1354 = !{!1355, !1357, !1358, !1359, !1360}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1352, file: !1353, line: 16, baseType: !1356, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !419, line: 154, baseType: !202)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1352, file: !1353, line: 19, baseType: !7, size: 32, offset: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1352, file: !1353, line: 26, baseType: !381, size: 64, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1352, file: !1353, line: 33, baseType: !381, size: 64, offset: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1352, file: !1353, line: 36, baseType: !1361, size: 64, offset: 192)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !238, line: 33, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1228, file: !214, line: 2087, baseType: !1348, size: 64, offset: 1536)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1228, file: !214, line: 2089, baseType: !769, size: 64, offset: 1600)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !736, file: !214, line: 1198, baseType: !1366, size: 64, offset: 448)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1368)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !219, line: 324, size: 704, elements: !1369)
!1369 = !{!1370, !1374, !1378, !1382, !1383, !1384, !1385, !1386, !1391, !1396, !1400}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1368, file: !219, line: 325, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!7, !1303}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1368, file: !219, line: 326, baseType: !1375, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!1303, !735, !7}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1368, file: !219, line: 327, baseType: !1379, size: 64, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !1303}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1368, file: !219, line: 328, baseType: !1371, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1368, file: !219, line: 329, baseType: !1371, size: 64, offset: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1368, file: !219, line: 330, baseType: !1371, size: 64, offset: 320)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1368, file: !219, line: 331, baseType: !1256, size: 64, offset: 384)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1368, file: !219, line: 334, baseType: !1387, size: 64, offset: 448)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!1390, !589}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1368, file: !219, line: 335, baseType: !1392, size: 64, offset: 512)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!7, !589, !1395}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1368, file: !219, line: 337, baseType: !1397, size: 64, offset: 576)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!7, !589, !1390}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1368, file: !219, line: 339, baseType: !1401, size: 64, offset: 640)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!7, !735, !1404}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !736, file: !214, line: 1199, baseType: !1406, size: 64, offset: 512)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !219, line: 430, size: 704, elements: !1409)
!1409 = !{!1410, !1421, !1422, !1426, !1427, !1428, !1443, !1466, !1470, !1471, !1494}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1408, file: !219, line: 431, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!7, !735, !7, !7, !1414}
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1416)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1417, line: 8, size: 128, elements: !1418)
!1417 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1416, file: !1417, line: 9, baseType: !729, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1416, file: !1417, line: 10, baseType: !624, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1408, file: !219, line: 432, baseType: !1256, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1408, file: !219, line: 433, baseType: !1423, size: 64, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!7, !735, !202}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1408, file: !219, line: 434, baseType: !1423, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1408, file: !219, line: 435, baseType: !1256, size: 64, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1408, file: !219, line: 436, baseType: !1429, size: 64, offset: 320)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!7, !735, !7, !1432}
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !219, line: 417, size: 256, elements: !1434)
!1434 = !{!1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1433, file: !219, line: 418, baseType: !7, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1433, file: !219, line: 419, baseType: !202, size: 32, offset: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1433, file: !219, line: 420, baseType: !202, size: 32, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1433, file: !219, line: 422, baseType: !202, size: 32, offset: 96)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1433, file: !219, line: 423, baseType: !202, size: 32, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1433, file: !219, line: 424, baseType: !202, size: 32, offset: 160)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1433, file: !219, line: 425, baseType: !202, size: 32, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1433, file: !219, line: 426, baseType: !202, size: 32, offset: 224)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1408, file: !219, line: 437, baseType: !1444, size: 64, offset: 384)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!7, !735, !1315, !1447}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !219, line: 345, size: 960, elements: !1449)
!1449 = !{!1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1448, file: !219, line: 346, baseType: !7, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1448, file: !219, line: 347, baseType: !399, size: 64, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1448, file: !219, line: 348, baseType: !399, size: 64, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1448, file: !219, line: 349, baseType: !399, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1448, file: !219, line: 350, baseType: !399, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1448, file: !219, line: 351, baseType: !399, size: 64, offset: 320)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1448, file: !219, line: 352, baseType: !399, size: 64, offset: 384)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1448, file: !219, line: 353, baseType: !854, size: 64, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1448, file: !219, line: 355, baseType: !854, size: 64, offset: 512)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1448, file: !219, line: 356, baseType: !7, size: 32, offset: 576)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1448, file: !219, line: 357, baseType: !7, size: 32, offset: 608)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1448, file: !219, line: 358, baseType: !399, size: 64, offset: 640)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1448, file: !219, line: 359, baseType: !399, size: 64, offset: 704)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1448, file: !219, line: 360, baseType: !399, size: 64, offset: 768)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1448, file: !219, line: 361, baseType: !854, size: 64, offset: 832)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1448, file: !219, line: 362, baseType: !7, size: 32, offset: 896)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1408, file: !219, line: 438, baseType: !1467, size: 64, offset: 448)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!7, !735, !1404, !1447}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1408, file: !219, line: 440, baseType: !1444, size: 64, offset: 512)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1408, file: !219, line: 441, baseType: !1472, size: 64, offset: 576)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!7, !735, !1475}
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !219, line: 411, size: 1408, elements: !1477)
!1477 = !{!1478, !1479}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1476, file: !219, line: 412, baseType: !202, size: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1476, file: !219, line: 413, baseType: !1480, size: 1344, offset: 64)
!1480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1481, size: 1344, elements: !513)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !219, line: 397, size: 448, elements: !1482)
!1482 = !{!1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1493}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1481, file: !219, line: 398, baseType: !202, size: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1481, file: !219, line: 399, baseType: !202, size: 32, offset: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1481, file: !219, line: 401, baseType: !202, size: 32, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1481, file: !219, line: 402, baseType: !202, size: 32, offset: 96)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1481, file: !219, line: 403, baseType: !202, size: 32, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1481, file: !219, line: 404, baseType: !202, size: 32, offset: 160)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1481, file: !219, line: 405, baseType: !202, size: 32, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1481, file: !219, line: 406, baseType: !402, size: 64, offset: 256)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1481, file: !219, line: 407, baseType: !1492, size: 64, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !419, line: 132, baseType: !399)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1481, file: !219, line: 408, baseType: !1492, size: 64, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1408, file: !219, line: 442, baseType: !1423, size: 64, offset: 640)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !736, file: !214, line: 1200, baseType: !1496, size: 64, offset: 576)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1498)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !214, line: 54, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !736, file: !214, line: 1201, baseType: !381, size: 64, offset: 640)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !736, file: !214, line: 1202, baseType: !381, size: 64, offset: 704)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !736, file: !214, line: 1203, baseType: !381, size: 64, offset: 768)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !736, file: !214, line: 1204, baseType: !624, size: 64, offset: 832)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !736, file: !214, line: 1205, baseType: !1504, size: 320, offset: 896)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1505, line: 48, size: 320, elements: !1506)
!1505 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1506 = !{!1507, !1508, !1509, !1510, !1511}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1504, file: !1505, line: 49, baseType: !848, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1504, file: !1505, line: 55, baseType: !848, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1504, file: !1505, line: 57, baseType: !858, size: 32, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1504, file: !1505, line: 59, baseType: !802, size: 32, offset: 160)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1504, file: !1505, line: 60, baseType: !437, size: 128, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !736, file: !214, line: 1206, baseType: !7, size: 32, offset: 1216)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !736, file: !214, line: 1207, baseType: !470, size: 32, offset: 1248)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !736, file: !214, line: 1209, baseType: !341, size: 64, offset: 1280)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !736, file: !214, line: 1211, baseType: !1516, size: 64, offset: 1344)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1519)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !214, line: 1211, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !736, file: !214, line: 1223, baseType: !1521, size: 64, offset: 1408)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !641, line: 34, size: 64, elements: !1522)
!1522 = !{!1523}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1521, file: !641, line: 35, baseType: !644, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !736, file: !214, line: 1224, baseType: !437, size: 128, offset: 1472)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !736, file: !214, line: 1225, baseType: !1526, size: 64, offset: 1600)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !214, line: 1225, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !736, file: !214, line: 1226, baseType: !1529, size: 64, offset: 1664)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !214, line: 1226, flags: DIFlagFwdDecl)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !736, file: !214, line: 1227, baseType: !1532, size: 64, offset: 1728)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !214, line: 50, flags: DIFlagFwdDecl)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !736, file: !214, line: 1228, baseType: !1535, size: 64, offset: 1792)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !214, line: 1228, flags: DIFlagFwdDecl)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !736, file: !214, line: 1229, baseType: !1088, size: 128, offset: 1856)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !736, file: !214, line: 1230, baseType: !202, size: 32, offset: 1984)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !736, file: !214, line: 1231, baseType: !1540, size: 2496, offset: 2048)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !219, line: 521, size: 2496, elements: !1541)
!1541 = !{!1542, !1543, !1544, !1546, !1578}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1540, file: !219, line: 522, baseType: !202, size: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1540, file: !219, line: 523, baseType: !1504, size: 320, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1540, file: !219, line: 524, baseType: !1545, size: 192, offset: 384)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 192, elements: !513)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1540, file: !219, line: 525, baseType: !1547, size: 1728, offset: 576)
!1547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1548, size: 1728, elements: !513)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !219, line: 222, size: 576, elements: !1549)
!1549 = !{!1550, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1548, file: !219, line: 223, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !219, line: 445, size: 256, elements: !1553)
!1553 = !{!1554, !1555, !1568, !1569}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1552, file: !219, line: 446, baseType: !7, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1552, file: !219, line: 447, baseType: !1556, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1558)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !219, line: 312, size: 512, elements: !1559)
!1559 = !{!1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1558, file: !219, line: 313, baseType: !1256, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1558, file: !219, line: 314, baseType: !1256, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1558, file: !219, line: 315, baseType: !1256, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1558, file: !219, line: 316, baseType: !1256, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1558, file: !219, line: 317, baseType: !1371, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1558, file: !219, line: 318, baseType: !1371, size: 64, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1558, file: !219, line: 319, baseType: !1371, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1558, file: !219, line: 320, baseType: !1401, size: 64, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1552, file: !219, line: 448, baseType: !773, size: 64, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1552, file: !219, line: 449, baseType: !1551, size: 64, offset: 192)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1548, file: !219, line: 224, baseType: !7, size: 32, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1548, file: !219, line: 226, baseType: !437, size: 128, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1548, file: !219, line: 227, baseType: !381, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1548, file: !219, line: 228, baseType: !202, size: 32, offset: 320)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1548, file: !219, line: 229, baseType: !202, size: 32, offset: 352)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1548, file: !219, line: 230, baseType: !1336, size: 64, offset: 384)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1548, file: !219, line: 231, baseType: !1336, size: 64, offset: 448)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1548, file: !219, line: 232, baseType: !341, size: 64, offset: 512)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1540, file: !219, line: 526, baseType: !1579, size: 192, offset: 2304)
!1579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1556, size: 192, elements: !513)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !736, file: !214, line: 1233, baseType: !1581, size: 2368, offset: 4544)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !214, line: 1184, size: 2368, elements: !1582)
!1582 = !{!1583, !1584, !1585}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1581, file: !214, line: 1185, baseType: !406, size: 16)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1581, file: !214, line: 1186, baseType: !406, size: 16, offset: 16)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1581, file: !214, line: 1187, baseType: !1586, size: 2304, offset: 64)
!1586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1587, size: 2304, elements: !513)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1588, line: 12, size: 768, elements: !1589)
!1588 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1589 = !{!1590, !1604, !1605, !3673, !3674}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1587, file: !1588, line: 13, baseType: !1591, size: 384)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1592, line: 17, size: 384, elements: !1593)
!1592 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1593 = !{!1594, !1595, !1596, !1603}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1591, file: !1592, line: 18, baseType: !7, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1591, file: !1592, line: 19, baseType: !7, size: 32, offset: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1591, file: !1592, line: 20, baseType: !1597, size: 192, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1598, line: 41, baseType: !1599)
!1598 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1598, line: 37, size: 192, elements: !1600)
!1600 = !{!1601, !1602}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1599, file: !1598, line: 38, baseType: !450, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1599, file: !1598, line: 39, baseType: !437, size: 128, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1591, file: !1592, line: 22, baseType: !1062, size: 128, align: 64, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1587, file: !1588, line: 14, baseType: !916, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1587, file: !1588, line: 15, baseType: !1606, size: 64, offset: 448)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1607, line: 16, size: 64, elements: !1608)
!1607 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1608 = !{!1609}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1606, file: !1607, line: 17, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1286, line: 746, size: 58368, elements: !1612)
!1612 = !{!1613, !1621, !1622, !1623, !1629, !1630, !1631, !1632, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1703, !1714, !1809, !1813, !1816, !1847, !1848, !1849, !1850, !1861, !1863, !1864, !1865, !1866, !1867, !1868, !1879, !1880, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1897, !1898, !1905, !1906, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2864, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2912, !2918, !2919, !2920, !2921, !2922, !2923, !2926, !2933, !2938, !2941, !2944, !2947, !2950, !3088, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3126, !3127, !3128, !3137, !3145, !3146, !3147, !3148, !3149, !3154, !3155, !3156, !3159, !3160, !3163, !3166, !3169, !3177, !3180, !3181, !3267, !3268, !3269, !3270, !3271, !3277, !3278, !3279, !3280, !3283, !3284, !3287, !3290, !3291, !3294, !3295, !3296, !3299, !3300, !3301, !3302, !3303, !3304, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3336, !3337, !3343, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3355, !3427, !3429, !3430, !3431, !3432, !3433, !3434, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3451, !3452, !3453}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1611, file: !1286, line: 752, baseType: !1614, size: 192)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1615, line: 56, size: 192, elements: !1616)
!1615 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1616 = !{!1617, !1618, !1619, !1620}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1614, file: !1615, line: 57, baseType: !381, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1614, file: !1615, line: 58, baseType: !381, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1614, file: !1615, line: 59, baseType: !422, size: 32, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1614, file: !1615, line: 61, baseType: !422, size: 32, offset: 160)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1611, file: !1286, line: 754, baseType: !202, size: 32, offset: 192)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1611, file: !1286, line: 767, baseType: !341, size: 64, offset: 256)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1611, file: !1286, line: 768, baseType: !1624, size: 32, offset: 320)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1625, line: 113, baseType: !1626)
!1625 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1625, line: 111, size: 32, elements: !1627)
!1627 = !{!1628}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1626, file: !1625, line: 112, baseType: !470, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1611, file: !1286, line: 770, baseType: !202, size: 32, offset: 352)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1611, file: !1286, line: 771, baseType: !202, size: 32, offset: 384)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1611, file: !1286, line: 774, baseType: !7, size: 32, offset: 416)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1611, file: !1286, line: 775, baseType: !1633, size: 128, offset: 448)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1634, line: 58, size: 128, elements: !1635)
!1634 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1635 = !{!1636, !1642, !1647, !1648}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1633, file: !1634, line: 59, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1638, line: 60, size: 64, elements: !1639)
!1638 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1639 = !{!1640}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1637, file: !1638, line: 61, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1633, file: !1634, line: 60, baseType: !1643, size: 32, offset: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1633, file: !1634, line: 60, size: 32, elements: !1644)
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1643, file: !1634, line: 61, baseType: !202, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1643, file: !1634, line: 62, baseType: !470, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1633, file: !1634, line: 65, baseType: !404, size: 16, offset: 96)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1633, file: !1634, line: 65, baseType: !404, size: 16, offset: 112)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1611, file: !1286, line: 776, baseType: !202, size: 32, offset: 576)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1611, file: !1286, line: 777, baseType: !381, size: 64, offset: 640)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1611, file: !1286, line: 778, baseType: !1610, size: 64, offset: 704)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1611, file: !1286, line: 787, baseType: !7, size: 32, offset: 768)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1611, file: !1286, line: 788, baseType: !7, size: 32, offset: 800)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1611, file: !1286, line: 790, baseType: !7, size: 32, offset: 832)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1611, file: !1286, line: 792, baseType: !7, size: 32, offset: 864)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1611, file: !1286, line: 793, baseType: !7, size: 32, offset: 896)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1611, file: !1286, line: 794, baseType: !7, size: 32, offset: 928)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1611, file: !1286, line: 795, baseType: !202, size: 32, offset: 960)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1611, file: !1286, line: 797, baseType: !1660, size: 2048, offset: 1024)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1286, line: 551, size: 2048, elements: !1661)
!1661 = !{!1662, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1682, !1685, !1686, !1687}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1660, file: !1286, line: 553, baseType: !1663, size: 128)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1286, line: 411, size: 128, elements: !1664)
!1664 = !{!1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1663, file: !1286, line: 412, baseType: !381, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1663, file: !1286, line: 413, baseType: !422, size: 32, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1660, file: !1286, line: 554, baseType: !954, size: 192, align: 64, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1660, file: !1286, line: 555, baseType: !399, size: 64, offset: 320)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1660, file: !1286, line: 556, baseType: !399, size: 64, offset: 384)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1660, file: !1286, line: 558, baseType: !437, size: 128, offset: 448)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1660, file: !1286, line: 559, baseType: !202, size: 32, offset: 576)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1660, file: !1286, line: 561, baseType: !399, size: 64, offset: 640)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1660, file: !1286, line: 562, baseType: !399, size: 64, offset: 704)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1660, file: !1286, line: 563, baseType: !399, size: 64, offset: 768)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1660, file: !1286, line: 564, baseType: !399, size: 64, offset: 832)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1660, file: !1286, line: 565, baseType: !854, size: 64, offset: 896)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1660, file: !1286, line: 566, baseType: !399, size: 64, offset: 960)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1660, file: !1286, line: 568, baseType: !399, size: 64, offset: 1024)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1660, file: !1286, line: 571, baseType: !7, size: 32, offset: 1088)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1660, file: !1286, line: 572, baseType: !1681, size: 64, offset: 1152)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1660, file: !1286, line: 574, baseType: !1683, size: 64, offset: 1216)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1286, line: 49, flags: DIFlagFwdDecl)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1660, file: !1286, line: 576, baseType: !1683, size: 64, offset: 1280)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1660, file: !1286, line: 578, baseType: !381, size: 64, offset: 1344)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1660, file: !1286, line: 588, baseType: !1688, size: 512, align: 512, offset: 1536)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1286, line: 497, size: 512, align: 512, elements: !1689)
!1689 = !{!1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1688, file: !1286, line: 498, baseType: !399, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1688, file: !1286, line: 499, baseType: !399, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1688, file: !1286, line: 500, baseType: !399, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1688, file: !1286, line: 501, baseType: !422, size: 32, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1688, file: !1286, line: 502, baseType: !422, size: 32, offset: 224)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1688, file: !1286, line: 503, baseType: !381, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1688, file: !1286, line: 504, baseType: !381, size: 64, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1688, file: !1286, line: 505, baseType: !381, size: 64, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1688, file: !1286, line: 506, baseType: !1699, size: 64, align: 64, offset: 448)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1286, line: 445, size: 64, align: 64, elements: !1700)
!1700 = !{!1701, !1702}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1699, file: !1286, line: 446, baseType: !202, size: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1699, file: !1286, line: 447, baseType: !202, size: 32, offset: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1611, file: !1286, line: 798, baseType: !1704, size: 384, offset: 3072)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1286, line: 592, size: 384, elements: !1705)
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711, !1712}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1704, file: !1286, line: 593, baseType: !437, size: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1704, file: !1286, line: 594, baseType: !381, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1704, file: !1286, line: 595, baseType: !381, size: 64, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1704, file: !1286, line: 596, baseType: !202, size: 32, offset: 256)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1704, file: !1286, line: 597, baseType: !406, size: 16, offset: 288)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1704, file: !1286, line: 598, baseType: !406, size: 16, offset: 304)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1704, file: !1286, line: 600, baseType: !1713, size: 64, offset: 320)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1611, file: !1286, line: 799, baseType: !1715, size: 1792, offset: 3456)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1286, line: 610, size: 1792, elements: !1716)
!1716 = !{!1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1806, !1807}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1715, file: !1286, line: 611, baseType: !954, size: 192, align: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1715, file: !1286, line: 618, baseType: !399, size: 64, offset: 192)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1715, file: !1286, line: 619, baseType: !399, size: 64, offset: 256)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1715, file: !1286, line: 620, baseType: !399, size: 64, offset: 320)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1715, file: !1286, line: 621, baseType: !399, size: 64, offset: 384)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1715, file: !1286, line: 622, baseType: !399, size: 64, offset: 448)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1715, file: !1286, line: 629, baseType: !854, size: 64, offset: 512)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1715, file: !1286, line: 630, baseType: !399, size: 64, offset: 576)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1715, file: !1286, line: 631, baseType: !202, size: 32, offset: 640)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1715, file: !1286, line: 653, baseType: !202, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1715, file: !1286, line: 654, baseType: !202, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1715, file: !1286, line: 655, baseType: !202, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1715, file: !1286, line: 656, baseType: !202, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1715, file: !1286, line: 662, baseType: !1731, size: 512, offset: 704)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !225, line: 118, size: 512, elements: !1732)
!1732 = !{!1733, !1741, !1742, !1747, !1802, !1803, !1804, !1805}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1731, file: !225, line: 119, baseType: !1734, size: 256)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1735, line: 9, size: 256, elements: !1736)
!1735 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1736 = !{!1737, !1738}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1734, file: !1735, line: 10, baseType: !954, size: 192, align: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1734, file: !1735, line: 11, baseType: !1739, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1740, line: 29, baseType: !854)
!1740 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1731, file: !225, line: 120, baseType: !1739, size: 64, offset: 256)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1731, file: !225, line: 121, baseType: !1743, size: 64, offset: 320)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!224, !1746}
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1731, file: !225, line: 122, baseType: !1748, size: 64, offset: 384)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !225, line: 159, size: 512, align: 512, elements: !1750)
!1750 = !{!1751, !1776, !1777, !1780, !1785, !1786, !1797, !1801}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1749, file: !225, line: 160, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !225, line: 215, size: 4608, align: 512, elements: !1754)
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1753, file: !225, line: 216, baseType: !802, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1753, file: !225, line: 217, baseType: !202, size: 32, offset: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1753, file: !225, line: 218, baseType: !202, size: 32, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1753, file: !225, line: 219, baseType: !202, size: 32, offset: 96)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1753, file: !225, line: 220, baseType: !202, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1753, file: !225, line: 221, baseType: !202, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1753, file: !225, line: 222, baseType: !202, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1753, file: !225, line: 223, baseType: !202, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1753, file: !225, line: 224, baseType: !202, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1753, file: !225, line: 226, baseType: !202, size: 32, offset: 160)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1753, file: !225, line: 227, baseType: !406, size: 16, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1753, file: !225, line: 228, baseType: !406, size: 16, offset: 208)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1753, file: !225, line: 229, baseType: !202, size: 32, offset: 224)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1753, file: !225, line: 235, baseType: !1739, size: 64, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1753, file: !225, line: 236, baseType: !1746, size: 64, offset: 320)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1753, file: !225, line: 237, baseType: !1739, size: 64, offset: 384)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1753, file: !225, line: 238, baseType: !1746, size: 64, offset: 448)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1753, file: !225, line: 239, baseType: !1773, size: 4096, align: 512, offset: 512)
!1773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1749, size: 4096, align: 512, elements: !1774)
!1774 = !{!1775}
!1775 = !DISubrange(count: 8)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1749, file: !225, line: 161, baseType: !202, size: 32, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1749, file: !225, line: 162, baseType: !1778, size: 32, offset: 96)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !419, line: 32, baseType: !1779)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !544, line: 96, baseType: !7)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1749, file: !225, line: 163, baseType: !1781, size: 32, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !631, line: 274, baseType: !1782)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !631, line: 274, size: 32, elements: !1783)
!1783 = !{!1784}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1782, file: !631, line: 274, baseType: !635, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1749, file: !225, line: 164, baseType: !1746, size: 64, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1749, file: !225, line: 165, baseType: !1787, size: 128, offset: 256)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1735, line: 14, size: 128, elements: !1788)
!1788 = !{!1789}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1787, file: !1735, line: 15, baseType: !1790, size: 128)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !955, line: 26, size: 128, elements: !1791)
!1791 = !{!1792, !1796}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1790, file: !955, line: 27, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !955, line: 12, size: 64, elements: !1794)
!1794 = !{!1795}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1793, file: !955, line: 13, baseType: !959, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1790, file: !955, line: 28, baseType: !959, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1749, file: !225, line: 166, baseType: !1798, size: 64, offset: 384)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!1739}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1749, file: !225, line: 167, baseType: !1739, size: 64, offset: 448)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1731, file: !225, line: 123, baseType: !424, size: 8, offset: 448)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1731, file: !225, line: 124, baseType: !424, size: 8, offset: 456)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1731, file: !225, line: 125, baseType: !424, size: 8, offset: 464)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1731, file: !225, line: 126, baseType: !424, size: 8, offset: 472)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1715, file: !1286, line: 671, baseType: !1731, size: 512, offset: 1216)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1715, file: !1286, line: 679, baseType: !1808, size: 64, offset: 1728)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1611, file: !1286, line: 800, baseType: !1810, size: 64, offset: 5248)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1812)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1286, line: 800, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1611, file: !1286, line: 809, baseType: !1814, size: 64, offset: 5312)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1286, line: 70, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1611, file: !1286, line: 825, baseType: !1817, size: 2048, align: 512, offset: 5632)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1286, line: 509, size: 2048, align: 512, elements: !1818)
!1818 = !{!1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1817, file: !1286, line: 511, baseType: !399, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1817, file: !1286, line: 512, baseType: !399, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1817, file: !1286, line: 513, baseType: !399, size: 64, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1817, file: !1286, line: 514, baseType: !399, size: 64, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1817, file: !1286, line: 515, baseType: !399, size: 64, offset: 256)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1817, file: !1286, line: 516, baseType: !399, size: 64, offset: 320)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1817, file: !1286, line: 518, baseType: !399, size: 64, offset: 384)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1817, file: !1286, line: 519, baseType: !399, size: 64, offset: 448)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1817, file: !1286, line: 520, baseType: !854, size: 64, offset: 512)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1817, file: !1286, line: 522, baseType: !399, size: 64, offset: 576)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1817, file: !1286, line: 523, baseType: !399, size: 64, offset: 640)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1817, file: !1286, line: 524, baseType: !854, size: 64, offset: 704)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1817, file: !1286, line: 526, baseType: !854, size: 64, offset: 768)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1817, file: !1286, line: 527, baseType: !399, size: 64, offset: 832)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1817, file: !1286, line: 529, baseType: !399, size: 64, offset: 896)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1817, file: !1286, line: 530, baseType: !399, size: 64, offset: 960)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1817, file: !1286, line: 531, baseType: !399, size: 64, offset: 1024)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1817, file: !1286, line: 532, baseType: !399, size: 64, offset: 1088)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1817, file: !1286, line: 533, baseType: !399, size: 64, offset: 1152)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1817, file: !1286, line: 535, baseType: !399, size: 64, offset: 1216)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1817, file: !1286, line: 536, baseType: !399, size: 64, offset: 1280)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1817, file: !1286, line: 537, baseType: !399, size: 64, offset: 1344)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1817, file: !1286, line: 538, baseType: !399, size: 64, offset: 1408)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1817, file: !1286, line: 539, baseType: !399, size: 64, offset: 1472)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1817, file: !1286, line: 540, baseType: !399, size: 64, offset: 1536)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1817, file: !1286, line: 541, baseType: !399, size: 64, offset: 1600)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1817, file: !1286, line: 542, baseType: !399, size: 64, offset: 1664)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1817, file: !1286, line: 543, baseType: !399, size: 64, offset: 1728)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1611, file: !1286, line: 833, baseType: !202, size: 32, offset: 7680)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1611, file: !1286, line: 836, baseType: !202, size: 32, offset: 7712)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1611, file: !1286, line: 837, baseType: !7, size: 32, offset: 7744)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1611, file: !1286, line: 838, baseType: !1851, size: 64, offset: 7808)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1853)
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1854, line: 19, baseType: !1855)
!1854 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1854, line: 19, size: 64, elements: !1856)
!1856 = !{!1857}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1855, file: !1854, line: 19, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 64, elements: !1859)
!1859 = !{!1860}
!1860 = !DISubrange(count: 1)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1611, file: !1286, line: 839, baseType: !1862, size: 64, offset: 7872)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1611, file: !1286, line: 840, baseType: !1853, size: 64, offset: 7936)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1611, file: !1286, line: 841, baseType: !341, size: 64, offset: 8000)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1611, file: !1286, line: 843, baseType: !406, size: 16, offset: 8064)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1611, file: !1286, line: 845, baseType: !406, size: 16, offset: 8080)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1611, file: !1286, line: 848, baseType: !7, size: 32, offset: 8096)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1611, file: !1286, line: 849, baseType: !1869, size: 32, offset: 8128)
!1869 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1286, line: 718, size: 32, elements: !1870)
!1870 = !{!1871, !1878}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1869, file: !1286, line: 724, baseType: !1872, size: 32)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !1286, line: 719, size: 32, elements: !1873)
!1873 = !{!1874, !1875, !1876, !1877}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1872, file: !1286, line: 720, baseType: !424, size: 8)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1872, file: !1286, line: 721, baseType: !424, size: 8, offset: 8)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1872, file: !1286, line: 722, baseType: !424, size: 8, offset: 16)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1872, file: !1286, line: 723, baseType: !424, size: 8, offset: 24)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1869, file: !1286, line: 725, baseType: !422, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1611, file: !1286, line: 850, baseType: !437, size: 128, offset: 8192)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1611, file: !1286, line: 851, baseType: !1881, size: 64, offset: 8320)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1286, line: 60, flags: DIFlagFwdDecl)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1611, file: !1286, line: 855, baseType: !381, size: 64, offset: 8384)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1611, file: !1286, line: 856, baseType: !424, size: 8, offset: 8448)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1611, file: !1286, line: 857, baseType: !424, size: 8, offset: 8456)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1611, file: !1286, line: 858, baseType: !7, size: 32, offset: 8480)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1611, file: !1286, line: 859, baseType: !437, size: 128, offset: 8512)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1611, file: !1286, line: 860, baseType: !7, size: 32, offset: 8640)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1611, file: !1286, line: 861, baseType: !437, size: 128, offset: 8704)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1611, file: !1286, line: 873, baseType: !1891, size: 256, offset: 8832)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1286, line: 376, size: 256, elements: !1892)
!1892 = !{!1893, !1894, !1895, !1896}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1891, file: !1286, line: 381, baseType: !381, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1891, file: !1286, line: 384, baseType: !402, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1891, file: !1286, line: 389, baseType: !402, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1891, file: !1286, line: 392, baseType: !402, size: 64, offset: 192)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1611, file: !1286, line: 875, baseType: !437, size: 128, offset: 9088)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1611, file: !1286, line: 877, baseType: !1899, size: 320, offset: 9216)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1900, line: 86, size: 320, elements: !1901)
!1900 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1901 = !{!1902, !1903, !1904}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1899, file: !1900, line: 87, baseType: !7, size: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1899, file: !1900, line: 88, baseType: !437, size: 128, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1899, file: !1900, line: 89, baseType: !437, size: 128, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1611, file: !1286, line: 878, baseType: !954, size: 192, align: 64, offset: 9536)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1611, file: !1286, line: 881, baseType: !1907, size: 64, offset: 9728)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !238, line: 733, size: 10240, elements: !1909)
!1909 = !{!1910, !2783}
!1910 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !238, line: 734, baseType: !1911, size: 10240)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1908, file: !238, line: 734, size: 10240, elements: !1912)
!1912 = !{!1913, !1917, !1930, !2660, !2661, !2662, !2663, !2664, !2665, !2672, !2673, !2674, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2713, !2715, !2718, !2763, !2764, !2765, !2768, !2769, !2770, !2773, !2774, !2775, !2781, !2782}
!1913 = !DIDerivedType(tag: DW_TAG_member, scope: !1911, file: !238, line: 739, baseType: !1914, size: 512, align: 512)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1911, file: !238, line: 739, size: 512, align: 512, elements: !1915)
!1915 = !{!1916}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1914, file: !238, line: 747, baseType: !470, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1911, file: !238, line: 750, baseType: !1918, size: 128, offset: 512)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1919, line: 218, size: 128, elements: !1920)
!1919 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1920 = !{!1921, !1928, !1929}
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1918, file: !1919, line: 219, baseType: !1922, size: 32)
!1922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1918, file: !1919, line: 219, size: 32, elements: !1923)
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1922, file: !1919, line: 220, baseType: !450, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1922, file: !1919, line: 221, baseType: !1926)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1919, line: 197, baseType: !1927)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1919, line: 197, elements: !1131)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1918, file: !1919, line: 223, baseType: !202, size: 32, offset: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1918, file: !1919, line: 224, baseType: !341, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1911, file: !238, line: 752, baseType: !1931, size: 64, offset: 640)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!381, !1934, !381, !381, !381, !381}
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !214, line: 994, size: 1856, align: 64, elements: !1936)
!1936 = !{!1937, !1943, !1944, !1946, !1947, !1948, !1949, !1950, !2000, !2190, !2199, !2200, !2201, !2650, !2651, !2652, !2653, !2655, !2656, !2659}
!1937 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !214, line: 995, baseType: !1938, size: 128)
!1938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1935, file: !214, line: 995, size: 128, elements: !1939)
!1939 = !{!1940, !1941, !1942}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1938, file: !214, line: 996, baseType: !1637, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1938, file: !214, line: 997, baseType: !1062, size: 128, align: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1938, file: !214, line: 998, baseType: !202, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1935, file: !214, line: 1005, baseType: !450, size: 32, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1935, file: !214, line: 1006, baseType: !1945, size: 32, offset: 160)
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !419, line: 156, baseType: !202)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1935, file: !214, line: 1007, baseType: !848, size: 64, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1935, file: !214, line: 1008, baseType: !844, size: 256, offset: 256)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1935, file: !214, line: 1009, baseType: !745, size: 64, offset: 512)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1935, file: !214, line: 1010, baseType: !202, size: 32, offset: 576)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1935, file: !214, line: 1011, baseType: !1951, size: 256, offset: 640)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !214, line: 948, size: 256, elements: !1952)
!1952 = !{!1953, !1974, !1996, !1997, !1998, !1999}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1951, file: !214, line: 949, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1955, line: 34, baseType: !1956)
!1955 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1955, line: 25, size: 64, elements: !1957)
!1957 = !{!1958}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1956, file: !1955, line: 26, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1960, line: 27, baseType: !1961)
!1960 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1960, line: 13, size: 64, elements: !1962)
!1962 = !{!1963, !1973}
!1963 = !DIDerivedType(tag: DW_TAG_member, scope: !1961, file: !1960, line: 14, baseType: !1964, size: 32)
!1964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1961, file: !1960, line: 14, size: 32, elements: !1965)
!1965 = !{!1966, !1967}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1964, file: !1960, line: 15, baseType: !470, size: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, scope: !1964, file: !1960, line: 16, baseType: !1968, size: 32)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1964, file: !1960, line: 16, size: 32, elements: !1969)
!1969 = !{!1970, !1971}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1968, file: !1960, line: 18, baseType: !424, size: 8)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1968, file: !1960, line: 19, baseType: !1972, size: 24, offset: 8)
!1972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 24, elements: !513)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1961, file: !1960, line: 26, baseType: !462, size: 32, offset: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1951, file: !214, line: 950, baseType: !1975, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !230, line: 59, size: 768, elements: !1977)
!1977 = !{!1978, !1979, !1980, !1981, !1983, !1984, !1985, !1986}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1976, file: !230, line: 61, baseType: !1624, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1976, file: !230, line: 62, baseType: !202, size: 32, offset: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1976, file: !230, line: 63, baseType: !450, size: 32, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1976, file: !230, line: 65, baseType: !1982, size: 256, offset: 128)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1212, size: 256, elements: !1072)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1976, file: !230, line: 66, baseType: !1212, size: 64, offset: 384)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1976, file: !230, line: 68, baseType: !1597, size: 192, offset: 448)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1976, file: !230, line: 69, baseType: !1062, size: 128, align: 64, offset: 640)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1976, file: !230, line: 70, baseType: !1987, offset: 768)
!1987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1988, elements: !1994)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !230, line: 54, size: 128, elements: !1989)
!1989 = !{!1990, !1991}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1988, file: !230, line: 55, baseType: !7, size: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1988, file: !230, line: 56, baseType: !1992, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !230, line: 56, flags: DIFlagFwdDecl)
!1994 = !{!1995}
!1995 = !DISubrange(count: -1)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1951, file: !214, line: 951, baseType: !229, size: 32, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1951, file: !214, line: 952, baseType: !595, size: 32, offset: 160)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1951, file: !214, line: 952, baseType: !595, size: 32, offset: 192)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1951, file: !214, line: 953, baseType: !7, size: 32, offset: 224)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1935, file: !214, line: 1012, baseType: !2001, size: 64, offset: 896)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2003)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2004, line: 110, size: 1472, elements: !2005)
!2004 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!2005 = !{!2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2022, !2023, !2024, !2025, !2026, !2027, !2135, !2136, !2137, !2138, !2139, !2170, !2173, !2177, !2185}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2003, file: !2004, line: 111, baseType: !848, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2003, file: !2004, line: 112, baseType: !595, size: 32, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2003, file: !2004, line: 113, baseType: !604, size: 32, offset: 96)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2003, file: !2004, line: 114, baseType: !595, size: 32, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2003, file: !2004, line: 115, baseType: !604, size: 32, offset: 160)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2003, file: !2004, line: 116, baseType: !595, size: 32, offset: 192)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2003, file: !2004, line: 117, baseType: !604, size: 32, offset: 224)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2003, file: !2004, line: 118, baseType: !595, size: 32, offset: 256)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2003, file: !2004, line: 119, baseType: !604, size: 32, offset: 288)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2003, file: !2004, line: 120, baseType: !202, size: 32, offset: 320)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2003, file: !2004, line: 121, baseType: !2017, size: 64, offset: 384)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2018, line: 24, baseType: !2019)
!2018 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2018, line: 24, size: 64, elements: !2020)
!2020 = !{!2021}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2019, file: !2018, line: 24, baseType: !399, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2003, file: !2004, line: 122, baseType: !2017, size: 64, offset: 448)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2003, file: !2004, line: 123, baseType: !2017, size: 64, offset: 512)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2003, file: !2004, line: 124, baseType: !2017, size: 64, offset: 576)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2003, file: !2004, line: 125, baseType: !2017, size: 64, offset: 640)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2003, file: !2004, line: 127, baseType: !355, size: 8, offset: 704)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2003, file: !2004, line: 129, baseType: !2028, size: 64, offset: 768)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2030, line: 195, size: 1728, elements: !2031)
!2030 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!2031 = !{!2032, !2033, !2036, !2041, !2042, !2045, !2046, !2051, !2052, !2053, !2054, !2057, !2058, !2059, !2060, !2061, !2099, !2120}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2029, file: !2030, line: 196, baseType: !1624, size: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2029, file: !2030, line: 197, baseType: !2034, size: 32, offset: 32)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2030, line: 28, baseType: !2035)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !419, line: 104, baseType: !840)
!2036 = !DIDerivedType(tag: DW_TAG_member, scope: !2029, file: !2030, line: 198, baseType: !2037, size: 192, offset: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2029, file: !2030, line: 198, size: 192, elements: !2038)
!2038 = !{!2039, !2040}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2037, file: !2030, line: 199, baseType: !437, size: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2037, file: !2030, line: 200, baseType: !954, size: 192, align: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2029, file: !2030, line: 205, baseType: !1504, size: 320, offset: 256)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2029, file: !2030, line: 206, baseType: !2043, size: 64, offset: 576)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2030, line: 206, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2029, file: !2030, line: 207, baseType: !341, size: 64, offset: 640)
!2046 = !DIDerivedType(tag: DW_TAG_member, scope: !2029, file: !2030, line: 208, baseType: !2047, size: 64, offset: 704)
!2047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2029, file: !2030, line: 208, size: 64, elements: !2048)
!2048 = !{!2049, !2050}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2047, file: !2030, line: 209, baseType: !1344, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2047, file: !2030, line: 210, baseType: !1344, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2029, file: !2030, line: 212, baseType: !1344, size: 64, offset: 768)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2029, file: !2030, line: 213, baseType: !595, size: 32, offset: 832)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2029, file: !2030, line: 214, baseType: !604, size: 32, offset: 864)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2029, file: !2030, line: 215, baseType: !2055, size: 32, offset: 896)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2030, line: 31, baseType: !2056)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !419, line: 110, baseType: !422)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2029, file: !2030, line: 216, baseType: !406, size: 16, offset: 928)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2029, file: !2030, line: 217, baseType: !406, size: 16, offset: 944)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2029, file: !2030, line: 221, baseType: !980, size: 16, offset: 960)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2029, file: !2030, line: 228, baseType: !381, size: 64, offset: 1024)
!2061 = !DIDerivedType(tag: DW_TAG_member, scope: !2029, file: !2030, line: 245, baseType: !2062, size: 320, offset: 1088)
!2062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2029, file: !2030, line: 245, size: 320, elements: !2063)
!2063 = !{!2064, !2091}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2062, file: !2030, line: 246, baseType: !2065, size: 320)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2030, line: 114, size: 320, elements: !2066)
!2066 = !{!2067, !2068, !2080, !2083, !2090}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2065, file: !2030, line: 116, baseType: !381, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2065, file: !2030, line: 117, baseType: !2069, size: 64, offset: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2065, file: !2030, line: 117, size: 64, elements: !2070)
!2070 = !{!2071, !2079}
!2071 = !DIDerivedType(tag: DW_TAG_member, scope: !2069, file: !2030, line: 118, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2069, file: !2030, line: 118, size: 64, elements: !2073)
!2073 = !{!2074, !2075}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2072, file: !2030, line: 120, baseType: !404, size: 16)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2072, file: !2030, line: 121, baseType: !2076, size: 48, offset: 16)
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 48, elements: !2077)
!2077 = !{!2078}
!2078 = !DISubrange(count: 6)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2069, file: !2030, line: 127, baseType: !381, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2065, file: !2030, line: 129, baseType: !2081, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2030, line: 102, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2065, file: !2030, line: 130, baseType: !2084, size: 64, offset: 192)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2030, line: 108, size: 192, elements: !2086)
!2086 = !{!2087, !2088, !2089}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2085, file: !2030, line: 109, baseType: !1062, size: 128, align: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2085, file: !2030, line: 110, baseType: !1624, size: 32, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2085, file: !2030, line: 111, baseType: !418, size: 8, offset: 160)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2065, file: !2030, line: 131, baseType: !434, size: 64, offset: 256)
!2091 = !DIDerivedType(tag: DW_TAG_member, scope: !2062, file: !2030, line: 247, baseType: !2092, size: 320)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2062, file: !2030, line: 247, size: 320, elements: !2093)
!2093 = !{!2094, !2095, !2096, !2097, !2098}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2092, file: !2030, line: 248, baseType: !381, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2092, file: !2030, line: 249, baseType: !381, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2092, file: !2030, line: 250, baseType: !2081, size: 64, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2092, file: !2030, line: 251, baseType: !2084, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2092, file: !2030, line: 252, baseType: !512, size: 64, offset: 256)
!2099 = !DIDerivedType(tag: DW_TAG_member, scope: !2029, file: !2030, line: 260, baseType: !2100, size: 256, offset: 1408)
!2100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2029, file: !2030, line: 260, size: 256, elements: !2101)
!2101 = !{!2102, !2108}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2100, file: !2030, line: 261, baseType: !2103, size: 256)
!2103 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2030, line: 134, size: 256, elements: !2104)
!2104 = !{!2105, !2106}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2103, file: !2030, line: 135, baseType: !341, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2103, file: !2030, line: 136, baseType: !2107, size: 256)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 256, elements: !1072)
!2108 = !DIDerivedType(tag: DW_TAG_member, scope: !2100, file: !2030, line: 262, baseType: !2109, size: 256)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2100, file: !2030, line: 262, size: 256, elements: !2110)
!2110 = !{!2111, !2112}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2109, file: !2030, line: 264, baseType: !437, size: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2109, file: !2030, line: 265, baseType: !2113, size: 128, offset: 128)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2114, line: 22, size: 128, elements: !2115)
!2114 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2115 = !{!2116, !2119}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2113, file: !2114, line: 23, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2114, line: 23, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2113, file: !2114, line: 24, baseType: !381, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2029, file: !2030, line: 280, baseType: !2121, size: 64, offset: 1664)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2030, line: 176, size: 192, elements: !2123)
!2123 = !{!2124, !2133, !2134}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2122, file: !2030, line: 177, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2030, line: 171, baseType: !2126)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!7, !2028, !2129, !2131, !2028}
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2082)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2103)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2122, file: !2030, line: 178, baseType: !2028, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2122, file: !2030, line: 179, baseType: !2081, size: 64, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2003, file: !2004, line: 130, baseType: !2028, size: 64, offset: 832)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2003, file: !2004, line: 131, baseType: !2028, size: 64, offset: 896)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2003, file: !2004, line: 132, baseType: !2028, size: 64, offset: 960)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2003, file: !2004, line: 135, baseType: !341, size: 64, offset: 1024)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2003, file: !2004, line: 137, baseType: !2140, size: 64, offset: 1088)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2142, line: 14, size: 1088, elements: !2143)
!2142 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2143 = !{!2144, !2145, !2154, !2155, !2156, !2157, !2158, !2159}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2141, file: !2142, line: 15, baseType: !1624, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2141, file: !2142, line: 17, baseType: !2146, size: 320, offset: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2147, line: 22, size: 320, elements: !2148)
!2147 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2148 = !{!2149, !2150, !2151, !2152}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2146, file: !2147, line: 23, baseType: !802, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2146, file: !2147, line: 24, baseType: !854, size: 64, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2146, file: !2147, line: 26, baseType: !437, size: 128, offset: 128)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2146, file: !2147, line: 28, baseType: !2153, size: 64, offset: 256)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2141, file: !2142, line: 19, baseType: !381, size: 64, offset: 384)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2141, file: !2142, line: 20, baseType: !848, size: 64, offset: 448)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2141, file: !2142, line: 23, baseType: !1088, size: 128, offset: 512)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2141, file: !2142, line: 24, baseType: !595, size: 32, offset: 640)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2141, file: !2142, line: 29, baseType: !848, size: 64, offset: 704)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2141, file: !2142, line: 36, baseType: !2160, size: 320, offset: 768)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2161, line: 15, size: 320, elements: !2162)
!2161 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2162 = !{!2163, !2164, !2165, !2166, !2167, !2168, !2169}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2160, file: !2161, line: 16, baseType: !802, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2160, file: !2161, line: 18, baseType: !7, size: 32, offset: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2160, file: !2161, line: 19, baseType: !7, size: 32, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2160, file: !2161, line: 20, baseType: !7, size: 32, offset: 96)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2160, file: !2161, line: 21, baseType: !7, size: 32, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2160, file: !2161, line: 22, baseType: !381, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2160, file: !2161, line: 23, baseType: !381, size: 64, offset: 256)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2003, file: !2004, line: 138, baseType: !2171, size: 64, offset: 1152)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !238, line: 901, flags: DIFlagFwdDecl)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2003, file: !2004, line: 139, baseType: !2174, size: 64, offset: 1216)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2176, line: 16, flags: DIFlagFwdDecl)
!2176 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2003, file: !2004, line: 140, baseType: !2178, size: 64, offset: 1280)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2004, line: 25, size: 64, elements: !2180)
!2180 = !{!2181, !2182, !2183}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2179, file: !2004, line: 26, baseType: !470, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2179, file: !2004, line: 27, baseType: !7, size: 32, offset: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2179, file: !2004, line: 28, baseType: !2184, offset: 64)
!2184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, elements: !1994)
!2185 = !DIDerivedType(tag: DW_TAG_member, scope: !2003, file: !2004, line: 142, baseType: !2186, size: 128, offset: 1344)
!2186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2003, file: !2004, line: 142, size: 128, elements: !2187)
!2187 = !{!2188, !2189}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2186, file: !2004, line: 143, baseType: !7, size: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2186, file: !2004, line: 144, baseType: !1062, size: 128, align: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1935, file: !214, line: 1013, baseType: !2191, size: 256, offset: 960)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !214, line: 970, size: 256, elements: !2192)
!2192 = !{!2193, !2194, !2195, !2196, !2197, !2198}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2191, file: !214, line: 971, baseType: !381, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2191, file: !214, line: 972, baseType: !202, size: 32, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2191, file: !214, line: 973, baseType: !202, size: 32, offset: 96)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2191, file: !214, line: 974, baseType: !202, size: 32, offset: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2191, file: !214, line: 975, baseType: !202, size: 32, offset: 160)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2191, file: !214, line: 976, baseType: !745, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1935, file: !214, line: 1014, baseType: !1416, size: 128, offset: 1216)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1935, file: !214, line: 1015, baseType: !589, size: 64, offset: 1344)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1935, file: !214, line: 1016, baseType: !2202, size: 64, offset: 1408)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2204)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !214, line: 1914, size: 2112, elements: !2205)
!2205 = !{!2206, !2207, !2211, !2216, !2220, !2248, !2249, !2255, !2268, !2276, !2280, !2281, !2572, !2573, !2577, !2582, !2583, !2587, !2591, !2597, !2598, !2602, !2603, !2609, !2613, !2617, !2623, !2627, !2631, !2635, !2639, !2640, !2646}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2204, file: !214, line: 1915, baseType: !773, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2204, file: !214, line: 1916, baseType: !2208, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!745, !1934, !745, !7}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2204, file: !214, line: 1917, baseType: !2212, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!542, !1934, !512, !557, !2215}
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2204, file: !214, line: 1918, baseType: !2217, size: 64, offset: 192)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!542, !1934, !434, !557, !2215}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2204, file: !214, line: 1919, baseType: !2221, size: 64, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!542, !2224, !2246}
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !214, line: 373, size: 384, elements: !2226)
!2226 = !{!2227, !2228, !2229, !2233, !2234, !2235, !2236}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2225, file: !214, line: 374, baseType: !1934, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2225, file: !214, line: 375, baseType: !745, size: 64, offset: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2225, file: !214, line: 376, baseType: !2230, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{null, !2224, !546}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2225, file: !214, line: 377, baseType: !341, size: 64, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2225, file: !214, line: 378, baseType: !7, size: 32, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2225, file: !214, line: 379, baseType: !404, size: 16, offset: 288)
!2236 = !DIDerivedType(tag: DW_TAG_member, scope: !2225, file: !214, line: 380, baseType: !2237, size: 64, offset: 320)
!2237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2225, file: !214, line: 380, size: 64, elements: !2238)
!2238 = !{!2239, !2242}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2237, file: !214, line: 386, baseType: !2240, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !214, line: 386, flags: DIFlagFwdDecl)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2237, file: !214, line: 395, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!542, !341}
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !214, line: 69, flags: DIFlagFwdDecl)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2204, file: !214, line: 1920, baseType: !2221, size: 64, offset: 320)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2204, file: !214, line: 1921, baseType: !2250, size: 64, offset: 384)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!7, !2224, !2253, !202}
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !214, line: 53, flags: DIFlagFwdDecl)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2204, file: !214, line: 1923, baseType: !2256, size: 64, offset: 448)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!7, !1934, !2259}
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !214, line: 1858, size: 128, elements: !2261)
!2261 = !{!2262, !2267}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2260, file: !214, line: 1859, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !214, line: 1855, baseType: !2264)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!418, !2259, !434, !7, !745, !399, !202}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2260, file: !214, line: 1860, baseType: !745, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2204, file: !214, line: 1924, baseType: !2269, size: 64, offset: 512)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!2272, !1934, !2274}
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2273, line: 59, baseType: !202)
!2273 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !214, line: 61, flags: DIFlagFwdDecl)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2204, file: !214, line: 1925, baseType: !2277, size: 64, offset: 576)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!546, !1934, !202, !381}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2204, file: !214, line: 1926, baseType: !2277, size: 64, offset: 640)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2204, file: !214, line: 1927, baseType: !2282, size: 64, offset: 704)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!7, !1934, !2285}
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !238, line: 625, size: 1344, elements: !2287)
!2287 = !{!2288, !2297, !2298, !2306, !2313, !2314, !2319, !2320, !2325, !2326, !2329, !2565, !2566, !2567, !2568, !2569, !2570}
!2288 = !DIDerivedType(tag: DW_TAG_member, scope: !2286, file: !238, line: 628, baseType: !2289, size: 128)
!2289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2286, file: !238, line: 628, size: 128, elements: !2290)
!2290 = !{!2291, !2296}
!2291 = !DIDerivedType(tag: DW_TAG_member, scope: !2289, file: !238, line: 629, baseType: !2292, size: 128)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2289, file: !238, line: 629, size: 128, elements: !2293)
!2293 = !{!2294, !2295}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2292, file: !238, line: 631, baseType: !381, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2292, file: !238, line: 632, baseType: !381, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2289, file: !238, line: 635, baseType: !1062, size: 128, align: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2286, file: !238, line: 639, baseType: !1907, size: 64, offset: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2286, file: !238, line: 640, baseType: !2299, size: 64, offset: 192)
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2300, line: 297, baseType: !2301)
!2300 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2300, line: 297, size: 64, elements: !2302)
!2302 = !{!2303}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2301, file: !2300, line: 297, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2305, line: 19, baseType: !381)
!2305 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2306 = !DIDerivedType(tag: DW_TAG_member, scope: !2286, file: !238, line: 646, baseType: !2307, size: 64, offset: 256)
!2307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2286, file: !238, line: 646, size: 64, elements: !2308)
!2308 = !{!2309, !2312}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2307, file: !238, line: 647, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2311)
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !238, line: 542, baseType: !381)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2307, file: !238, line: 648, baseType: !2311, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2286, file: !238, line: 666, baseType: !7, size: 32, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2286, file: !238, line: 667, baseType: !2315, size: 64, offset: 384)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !238, line: 579, size: 320, elements: !2317)
!2317 = !{!2318}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2316, file: !238, line: 580, baseType: !1504, size: 320)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2286, file: !238, line: 670, baseType: !418, size: 8, offset: 448)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2286, file: !238, line: 681, baseType: !2321, size: 256, offset: 512)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2286, file: !238, line: 678, size: 256, elements: !2322)
!2322 = !{!2323, !2324}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2321, file: !238, line: 679, baseType: !954, size: 192, align: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2321, file: !238, line: 680, baseType: !381, size: 64, offset: 192)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2286, file: !238, line: 689, baseType: !437, size: 128, offset: 768)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2286, file: !238, line: 691, baseType: !2327, size: 64, offset: 896)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !238, line: 691, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2286, file: !238, line: 694, baseType: !2330, size: 64, offset: 960)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2332)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2333, line: 563, size: 1024, elements: !2334)
!2333 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2334 = !{!2335, !2339, !2340, !2344, !2348, !2352, !2529, !2533, !2537, !2541, !2542, !2543, !2547, !2551, !2557, !2561}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2332, file: !2333, line: 564, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null, !2285}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2332, file: !2333, line: 569, baseType: !2336, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2332, file: !2333, line: 571, baseType: !2341, size: 64, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!7, !2285, !381}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2332, file: !2333, line: 572, baseType: !2345, size: 64, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!7, !2285}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2332, file: !2333, line: 578, baseType: !2349, size: 64, offset: 256)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!7, !2285, !381, !381, !381}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2332, file: !2333, line: 580, baseType: !2353, size: 64, offset: 320)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!2356, !2357}
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !238, line: 1184, baseType: !202)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2333, line: 512, size: 896, elements: !2359)
!2359 = !{!2360, !2368, !2369, !2376, !2383, !2393, !2522, !2523, !2525, !2527}
!2360 = !DIDerivedType(tag: DW_TAG_member, scope: !2358, file: !2333, line: 513, baseType: !2361, size: 320)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2358, file: !2333, line: 513, size: 320, elements: !2362)
!2362 = !{!2363, !2364, !2365, !2366, !2367}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2361, file: !2333, line: 514, baseType: !2285, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2361, file: !2333, line: 515, baseType: !1356, size: 32, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2361, file: !2333, line: 516, baseType: !381, size: 64, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2361, file: !2333, line: 517, baseType: !381, size: 64, offset: 192)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2361, file: !2333, line: 518, baseType: !381, size: 64, offset: 256)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2358, file: !2333, line: 520, baseType: !237, size: 32, offset: 320)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2358, file: !2333, line: 522, baseType: !2370, size: 64, offset: 384)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2305, line: 22, baseType: !2372)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2305, line: 22, size: 64, elements: !2373)
!2373 = !{!2374}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2372, file: !2305, line: 22, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2305, line: 15, baseType: !381)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2358, file: !2333, line: 524, baseType: !2377, size: 64, offset: 448)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2300, line: 372, baseType: !2379)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2300, line: 372, size: 64, elements: !2380)
!2380 = !{!2381}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2379, file: !2300, line: 372, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2305, line: 16, baseType: !381)
!2383 = !DIDerivedType(tag: DW_TAG_member, scope: !2358, file: !2333, line: 527, baseType: !2384, size: 64, offset: 512)
!2384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2358, file: !2333, line: 527, size: 64, elements: !2385)
!2385 = !{!2386, !2392}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2384, file: !2333, line: 528, baseType: !2387, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2305, line: 21, baseType: !2388)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2305, line: 21, size: 64, elements: !2389)
!2389 = !{!2390}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2388, file: !2305, line: 21, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2305, line: 14, baseType: !381)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2384, file: !2333, line: 529, baseType: !2371, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2358, file: !2333, line: 534, baseType: !2394, size: 64, offset: 576)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !238, line: 74, size: 512, align: 128, elements: !2396)
!2396 = !{!2397, !2398, !2516, !2521}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2395, file: !238, line: 75, baseType: !381, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, scope: !2395, file: !238, line: 83, baseType: !2399, size: 320, offset: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2395, file: !238, line: 83, size: 320, elements: !2400)
!2400 = !{!2401, !2422, !2436, !2440, !2515}
!2401 = !DIDerivedType(tag: DW_TAG_member, scope: !2399, file: !238, line: 84, baseType: !2402, size: 320)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2399, file: !238, line: 84, size: 320, elements: !2403)
!2403 = !{!2404, !2415, !2416, !2421}
!2404 = !DIDerivedType(tag: DW_TAG_member, scope: !2402, file: !238, line: 90, baseType: !2405, size: 128)
!2405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2402, file: !238, line: 90, size: 128, elements: !2406)
!2406 = !{!2407, !2408, !2413, !2414}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2405, file: !238, line: 91, baseType: !437, size: 128)
!2408 = !DIDerivedType(tag: DW_TAG_member, scope: !2405, file: !238, line: 94, baseType: !2409, size: 128)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2405, file: !238, line: 94, size: 128, elements: !2410)
!2410 = !{!2411, !2412}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2409, file: !238, line: 96, baseType: !341, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2409, file: !238, line: 98, baseType: !202, size: 32, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2405, file: !238, line: 102, baseType: !437, size: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2405, file: !238, line: 103, baseType: !437, size: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2402, file: !238, line: 106, baseType: !585, size: 64, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, scope: !2402, file: !238, line: 107, baseType: !2417, size: 64, offset: 192)
!2417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2402, file: !238, line: 107, size: 64, elements: !2418)
!2418 = !{!2419, !2420}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2417, file: !238, line: 108, baseType: !381, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2417, file: !238, line: 109, baseType: !381, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2402, file: !238, line: 117, baseType: !381, size: 64, offset: 256)
!2422 = !DIDerivedType(tag: DW_TAG_member, scope: !2399, file: !238, line: 119, baseType: !2423, size: 320)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2399, file: !238, line: 119, size: 320, elements: !2424)
!2424 = !{!2425, !2426, !2429, !2430, !2431}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2423, file: !238, line: 124, baseType: !381, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2423, file: !238, line: 125, baseType: !2427, size: 64, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !238, line: 125, flags: DIFlagFwdDecl)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2423, file: !238, line: 126, baseType: !381, size: 64, offset: 128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2423, file: !238, line: 127, baseType: !381, size: 64, offset: 192)
!2431 = !DIDerivedType(tag: DW_TAG_member, scope: !2423, file: !238, line: 128, baseType: !2432, size: 64, offset: 256)
!2432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2423, file: !238, line: 128, size: 64, elements: !2433)
!2433 = !{!2434, !2435}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2432, file: !238, line: 133, baseType: !381, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2432, file: !238, line: 138, baseType: !848, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, scope: !2399, file: !238, line: 141, baseType: !2437, size: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2399, file: !238, line: 141, size: 64, elements: !2438)
!2438 = !{!2439}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2437, file: !238, line: 142, baseType: !381, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, scope: !2399, file: !238, line: 144, baseType: !2441, size: 128)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2399, file: !238, line: 144, size: 128, elements: !2442)
!2442 = !{!2443, !2514}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2441, file: !238, line: 146, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !254, line: 126, size: 1216, elements: !2446)
!2446 = !{!2447, !2457, !2478, !2479, !2480, !2481, !2482, !2496, !2497, !2498}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2445, file: !254, line: 127, baseType: !2448, size: 384)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !254, line: 21, size: 384, elements: !2449)
!2449 = !{!2450, !2451, !2453, !2454, !2455, !2456}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2448, file: !254, line: 22, baseType: !381, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2448, file: !254, line: 23, baseType: !2452, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2448, file: !254, line: 24, baseType: !2452, size: 64, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2448, file: !254, line: 25, baseType: !381, size: 64, offset: 192)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2448, file: !254, line: 26, baseType: !381, size: 64, offset: 256)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2448, file: !254, line: 27, baseType: !381, size: 64, offset: 320)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2445, file: !254, line: 128, baseType: !2458, size: 128, offset: 384)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2459, line: 105, size: 128, elements: !2460)
!2459 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2460 = !{!2461, !2462}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2458, file: !2459, line: 110, baseType: !381, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2458, file: !2459, line: 118, baseType: !2463, size: 64, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2459, line: 95, size: 448, elements: !2465)
!2465 = !{!2466, !2467, !2473, !2474, !2475, !2476, !2477}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2464, file: !2459, line: 96, baseType: !848, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2464, file: !2459, line: 97, baseType: !2468, size: 64, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2459, line: 60, baseType: !2470)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !2472}
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2464, file: !2459, line: 98, baseType: !2468, size: 64, offset: 128)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2464, file: !2459, line: 99, baseType: !418, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2464, file: !2459, line: 100, baseType: !418, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2464, file: !2459, line: 101, baseType: !1062, size: 128, align: 64, offset: 256)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2464, file: !2459, line: 102, baseType: !2472, size: 64, offset: 384)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2445, file: !254, line: 129, baseType: !793, size: 256, offset: 512)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2445, file: !254, line: 130, baseType: !253, size: 32, offset: 768)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2445, file: !254, line: 131, baseType: !202, size: 32, offset: 800)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2445, file: !254, line: 132, baseType: !381, size: 64, offset: 832)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2445, file: !254, line: 133, baseType: !2483, size: 64, offset: 896)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2485)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !254, line: 77, size: 192, elements: !2486)
!2486 = !{!2487, !2491, !2492}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2485, file: !254, line: 83, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{null, !2394}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2485, file: !254, line: 89, baseType: !2353, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2485, file: !254, line: 100, baseType: !2493, size: 64, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!7, !2444, !381, !381, !7}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2445, file: !254, line: 134, baseType: !341, size: 64, offset: 960)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2445, file: !254, line: 135, baseType: !7, size: 32, offset: 1024)
!2498 = !DIDerivedType(tag: DW_TAG_member, scope: !2445, file: !254, line: 136, baseType: !2499, size: 128, offset: 1088)
!2499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2445, file: !254, line: 136, size: 128, elements: !2500)
!2500 = !{!2501, !2507}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2499, file: !254, line: 137, baseType: !2502, size: 128)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2503, line: 6, size: 128, elements: !2504)
!2503 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2504 = !{!2505, !2506}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2502, file: !2503, line: 7, baseType: !399, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2502, file: !2503, line: 8, baseType: !399, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, scope: !2499, file: !254, line: 138, baseType: !2508)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2499, file: !254, line: 138, elements: !2509)
!2509 = !{!2510, !2512}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2508, file: !254, line: 138, baseType: !2511)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2508, file: !254, line: 138, elements: !1131)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2508, file: !254, line: 138, baseType: !2513)
!2513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2502, elements: !1994)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2441, file: !238, line: 147, baseType: !341, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2399, file: !238, line: 161, baseType: !1062, size: 128, align: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, scope: !2395, file: !238, line: 164, baseType: !2517, size: 32, offset: 384)
!2517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2395, file: !238, line: 164, size: 32, elements: !2518)
!2518 = !{!2519, !2520}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2517, file: !238, line: 169, baseType: !470, size: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2517, file: !238, line: 177, baseType: !202, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2395, file: !238, line: 181, baseType: !470, size: 32, offset: 416)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2358, file: !2333, line: 535, baseType: !2394, size: 64, offset: 640)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2358, file: !2333, line: 541, baseType: !2524, size: 64, offset: 704)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2358, file: !2333, line: 545, baseType: !2526, size: 64, offset: 768)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2358, file: !2333, line: 549, baseType: !2528, size: 64, offset: 832)
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2300, line: 520, baseType: !2394)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2332, file: !2333, line: 581, baseType: !2530, size: 64, offset: 384)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!2356, !2357, !202}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2332, file: !2333, line: 582, baseType: !2534, size: 64, offset: 448)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!2356, !2357, !381, !381}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2332, file: !2333, line: 584, baseType: !2538, size: 64, offset: 512)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!381, !2285}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2332, file: !2333, line: 588, baseType: !2353, size: 64, offset: 576)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2332, file: !2333, line: 591, baseType: !2353, size: 64, offset: 640)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2332, file: !2333, line: 597, baseType: !2544, size: 64, offset: 704)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!7, !2285, !381, !341, !7, !7}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2332, file: !2333, line: 603, baseType: !2548, size: 64, offset: 768)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!434, !2285}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2332, file: !2333, line: 613, baseType: !2552, size: 64, offset: 832)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!7, !2285, !2555}
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !238, line: 717, flags: DIFlagFwdDecl)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2332, file: !2333, line: 625, baseType: !2558, size: 64, offset: 896)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!2555, !2285, !381}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2332, file: !2333, line: 633, baseType: !2562, size: 64, offset: 960)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!2394, !2285, !381}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2286, file: !238, line: 697, baseType: !381, size: 64, offset: 1024)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2286, file: !238, line: 699, baseType: !1934, size: 64, offset: 1088)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2286, file: !238, line: 700, baseType: !341, size: 64, offset: 1152)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2286, file: !238, line: 711, baseType: !848, size: 64, offset: 1216)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2286, file: !238, line: 717, baseType: !2555, size: 64, offset: 1280)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2286, file: !238, line: 722, baseType: !2571, offset: 1344)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !238, line: 570, elements: !1131)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2204, file: !214, line: 1928, baseType: !381, size: 64, offset: 768)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2204, file: !214, line: 1929, baseType: !2574, size: 64, offset: 832)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!7, !589, !1934}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2204, file: !214, line: 1930, baseType: !2578, size: 64, offset: 896)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!7, !1934, !2581}
!2581 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !214, line: 1061, baseType: !341)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2204, file: !214, line: 1931, baseType: !2574, size: 64, offset: 960)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2204, file: !214, line: 1932, baseType: !2584, size: 64, offset: 1024)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!7, !1934, !745, !745, !7}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2204, file: !214, line: 1933, baseType: !2588, size: 64, offset: 1088)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!7, !7, !1934, !7}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2204, file: !214, line: 1934, baseType: !2592, size: 64, offset: 1152)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!7, !1934, !7, !2595}
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !214, line: 1063, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2204, file: !214, line: 1935, baseType: !1931, size: 64, offset: 1216)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2204, file: !214, line: 1936, baseType: !2599, size: 64, offset: 1280)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!7, !7}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2204, file: !214, line: 1937, baseType: !2592, size: 64, offset: 1344)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2204, file: !214, line: 1938, baseType: !2604, size: 64, offset: 1408)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!542, !2607, !1934, !2215, !557, !202}
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1286, line: 59, flags: DIFlagFwdDecl)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2204, file: !214, line: 1939, baseType: !2610, size: 64, offset: 1472)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!542, !1934, !2215, !2607, !557, !202}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2204, file: !214, line: 1940, baseType: !2614, size: 64, offset: 1536)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{null, !1934}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2204, file: !214, line: 1941, baseType: !2618, size: 64, offset: 1600)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!7, !1934, !7, !2621, !2622}
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2204, file: !214, line: 1942, baseType: !2624, size: 64, offset: 1664)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!546, !1934, !7, !745, !745}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2204, file: !214, line: 1944, baseType: !2628, size: 64, offset: 1728)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{null, !1284, !1934}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2204, file: !214, line: 1948, baseType: !2632, size: 64, offset: 1792)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!542, !1934, !745, !1934, !745, !557, !202}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2204, file: !214, line: 1950, baseType: !2636, size: 64, offset: 1856)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!745, !1934, !745, !1934, !745, !745, !202}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2204, file: !214, line: 1953, baseType: !2584, size: 64, offset: 1920)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2204, file: !214, line: 1954, baseType: !2641, size: 64, offset: 1984)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!7, !2644, !202}
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !214, line: 1911, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2204, file: !214, line: 1955, baseType: !2647, size: 64, offset: 2048)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!7, !2644, !2253, !202}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1935, file: !214, line: 1018, baseType: !399, size: 64, offset: 1472)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1935, file: !214, line: 1020, baseType: !341, size: 64, offset: 1536)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1935, file: !214, line: 1023, baseType: !341, size: 64, offset: 1600)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1935, file: !214, line: 1027, baseType: !2654, size: 64, offset: 1664)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1935, file: !214, line: 1029, baseType: !585, size: 64, offset: 1728)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1935, file: !214, line: 1030, baseType: !2657, size: 32, offset: 1792)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2658, line: 8, baseType: !422)
!2658 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1935, file: !214, line: 1031, baseType: !2657, size: 32, offset: 1824)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1911, file: !238, line: 756, baseType: !381, size: 64, offset: 704)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1911, file: !238, line: 757, baseType: !381, size: 64, offset: 768)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1911, file: !238, line: 760, baseType: !381, size: 64, offset: 832)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1911, file: !238, line: 761, baseType: !381, size: 64, offset: 896)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1911, file: !238, line: 763, baseType: !381, size: 64, offset: 960)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1911, file: !238, line: 764, baseType: !2666, size: 64, offset: 1024)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2300, line: 299, baseType: !2668)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2300, line: 299, size: 64, elements: !2669)
!2669 = !{!2670}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2668, file: !2300, line: 299, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2305, line: 18, baseType: !381)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1911, file: !238, line: 773, baseType: !470, size: 32, offset: 1088)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1911, file: !238, line: 785, baseType: !470, size: 32, offset: 1120)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1911, file: !238, line: 795, baseType: !2675, size: 64, offset: 1152)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !238, line: 726, size: 128, elements: !2677)
!2677 = !{!2678, !2679}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2676, file: !238, line: 727, baseType: !399, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2676, file: !238, line: 728, baseType: !7, size: 32, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1911, file: !238, line: 801, baseType: !381, size: 64, offset: 1216)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1911, file: !238, line: 804, baseType: !848, size: 64, offset: 1280)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1911, file: !238, line: 806, baseType: !7, size: 32, offset: 1344)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1911, file: !238, line: 808, baseType: !450, size: 32, offset: 1376)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1911, file: !238, line: 823, baseType: !1504, size: 320, offset: 1408)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1911, file: !238, line: 825, baseType: !437, size: 128, offset: 1728)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1911, file: !238, line: 845, baseType: !7, size: 32, offset: 1856)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1911, file: !238, line: 849, baseType: !381, size: 64, offset: 1920)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1911, file: !238, line: 850, baseType: !381, size: 64, offset: 1984)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1911, file: !238, line: 852, baseType: !381, size: 64, offset: 2048)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1911, file: !238, line: 853, baseType: !381, size: 64, offset: 2112)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1911, file: !238, line: 854, baseType: !850, size: 64, offset: 2176)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1911, file: !238, line: 855, baseType: !381, size: 64, offset: 2240)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1911, file: !238, line: 856, baseType: !381, size: 64, offset: 2304)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1911, file: !238, line: 857, baseType: !381, size: 64, offset: 2368)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1911, file: !238, line: 858, baseType: !381, size: 64, offset: 2432)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1911, file: !238, line: 865, baseType: !635, size: 32, offset: 2496)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1911, file: !238, line: 867, baseType: !450, size: 32, offset: 2528)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1911, file: !238, line: 869, baseType: !381, size: 64, offset: 2560)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1911, file: !238, line: 869, baseType: !381, size: 64, offset: 2624)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1911, file: !238, line: 869, baseType: !381, size: 64, offset: 2688)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1911, file: !238, line: 869, baseType: !381, size: 64, offset: 2752)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1911, file: !238, line: 870, baseType: !381, size: 64, offset: 2816)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1911, file: !238, line: 870, baseType: !381, size: 64, offset: 2880)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1911, file: !238, line: 870, baseType: !381, size: 64, offset: 2944)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1911, file: !238, line: 871, baseType: !381, size: 64, offset: 3008)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1911, file: !238, line: 871, baseType: !381, size: 64, offset: 3072)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1911, file: !238, line: 871, baseType: !381, size: 64, offset: 3136)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1911, file: !238, line: 871, baseType: !381, size: 64, offset: 3200)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1911, file: !238, line: 873, baseType: !2710, size: 3328, offset: 3264)
!2710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 3328, elements: !2711)
!2711 = !{!2712}
!2712 = !DISubrange(count: 52)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1911, file: !238, line: 875, baseType: !2714, size: 1280, offset: 6592)
!2714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2146, size: 1280, elements: !1072)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1911, file: !238, line: 877, baseType: !2716, size: 64, offset: 7872)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !238, line: 877, flags: DIFlagFwdDecl)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1911, file: !238, line: 880, baseType: !2719, size: 1088, offset: 7936)
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2720, line: 72, baseType: !2721)
!2720 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2720, line: 23, size: 1088, elements: !2722)
!2722 = !{!2723, !2724, !2725, !2726, !2727, !2730, !2731, !2732, !2733, !2760, !2761, !2762}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2721, file: !2720, line: 28, baseType: !399, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2721, file: !2720, line: 38, baseType: !850, size: 64, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2721, file: !2720, line: 40, baseType: !381, size: 64, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2721, file: !2720, line: 43, baseType: !1504, size: 320, offset: 192)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2721, file: !2720, line: 44, baseType: !2728, size: 64, offset: 512)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2720, line: 44, flags: DIFlagFwdDecl)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2721, file: !2720, line: 48, baseType: !381, size: 64, offset: 576)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2721, file: !2720, line: 59, baseType: !844, size: 256, offset: 640)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2721, file: !2720, line: 60, baseType: !341, size: 64, offset: 896)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2721, file: !2720, line: 61, baseType: !2734, size: 64, offset: 960)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2736)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2737, line: 13, size: 1216, elements: !2738)
!2737 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2738 = !{!2739, !2740, !2741, !2742, !2743, !2744, !2745, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2736, file: !2737, line: 14, baseType: !341, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2736, file: !2737, line: 15, baseType: !381, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2736, file: !2737, line: 17, baseType: !381, size: 64, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2736, file: !2737, line: 17, baseType: !381, size: 64, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2736, file: !2737, line: 18, baseType: !381, size: 64, offset: 256)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2736, file: !2737, line: 18, baseType: !381, size: 64, offset: 320)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2736, file: !2737, line: 19, baseType: !2746, size: 64, offset: 384)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2736, file: !2737, line: 21, baseType: !546, size: 64, offset: 448)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2736, file: !2737, line: 23, baseType: !546, size: 64, offset: 512)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2736, file: !2737, line: 24, baseType: !546, size: 64, offset: 576)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2736, file: !2737, line: 25, baseType: !546, size: 64, offset: 640)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2736, file: !2737, line: 26, baseType: !546, size: 64, offset: 704)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2736, file: !2737, line: 27, baseType: !546, size: 64, offset: 768)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2736, file: !2737, line: 28, baseType: !546, size: 64, offset: 832)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2736, file: !2737, line: 29, baseType: !546, size: 64, offset: 896)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2736, file: !2737, line: 30, baseType: !546, size: 64, offset: 960)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2736, file: !2737, line: 31, baseType: !546, size: 64, offset: 1024)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2736, file: !2737, line: 32, baseType: !546, size: 64, offset: 1088)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2736, file: !2737, line: 33, baseType: !546, size: 64, offset: 1152)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2721, file: !2720, line: 63, baseType: !470, size: 32, offset: 1024)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2721, file: !2720, line: 69, baseType: !404, size: 16, offset: 1056)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2721, file: !2720, line: 70, baseType: !978, size: 16, offset: 1072)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1911, file: !238, line: 882, baseType: !381, size: 64, offset: 9024)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1911, file: !238, line: 885, baseType: !450, size: 32, offset: 9088)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1911, file: !238, line: 886, baseType: !2766, size: 64, offset: 9152)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !238, line: 732, flags: DIFlagFwdDecl)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1911, file: !238, line: 901, baseType: !2171, size: 64, offset: 9216)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1911, file: !238, line: 904, baseType: !1934, size: 64, offset: 9280)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1911, file: !238, line: 906, baseType: !2771, size: 64, offset: 9344)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !238, line: 906, flags: DIFlagFwdDecl)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1911, file: !238, line: 930, baseType: !470, size: 32, offset: 9408)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1911, file: !238, line: 933, baseType: !470, size: 32, offset: 9440)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1911, file: !238, line: 935, baseType: !2776, size: 64, offset: 9472)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !268, line: 103, size: 64, elements: !2777)
!2777 = !{!2778}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2776, file: !268, line: 104, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !268, line: 101, flags: DIFlagFwdDecl)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1911, file: !238, line: 940, baseType: !848, size: 64, offset: 9536)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1911, file: !238, line: 942, baseType: !1102, size: 256, offset: 9600)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1908, file: !238, line: 986, baseType: !2784, offset: 10240)
!2784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, elements: !1994)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1611, file: !1286, line: 882, baseType: !1907, size: 64, offset: 9792)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1611, file: !1286, line: 884, baseType: !7, size: 32, offset: 9856)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1611, file: !1286, line: 885, baseType: !7, size: 32, offset: 9888)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1611, file: !1286, line: 886, baseType: !7, size: 32, offset: 9920)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1611, file: !1286, line: 888, baseType: !7, size: 32, offset: 9952)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1611, file: !1286, line: 890, baseType: !381, size: 64, offset: 9984)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1611, file: !1286, line: 893, baseType: !202, size: 32, offset: 10048)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1611, file: !1286, line: 896, baseType: !202, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1611, file: !1286, line: 897, baseType: !202, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1611, file: !1286, line: 898, baseType: !202, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1611, file: !1286, line: 899, baseType: !202, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1611, file: !1286, line: 919, baseType: !202, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1611, file: !1286, line: 922, baseType: !202, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1611, file: !1286, line: 923, baseType: !202, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1611, file: !1286, line: 925, baseType: !202, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1611, file: !1286, line: 939, baseType: !202, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1611, file: !1286, line: 941, baseType: !202, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1611, file: !1286, line: 944, baseType: !202, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1611, file: !1286, line: 956, baseType: !202, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1611, file: !1286, line: 962, baseType: !202, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1611, file: !1286, line: 966, baseType: !202, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1611, file: !1286, line: 969, baseType: !381, size: 64, offset: 10176)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1611, file: !1286, line: 971, baseType: !2808, size: 448, offset: 10240)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !262, line: 25, size: 448, elements: !2809)
!2809 = !{!2810, !2811, !2816}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2808, file: !262, line: 26, baseType: !381, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2808, file: !262, line: 27, baseType: !2812, size: 64, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!546, !2815}
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, scope: !2808, file: !262, line: 28, baseType: !2817, size: 320, offset: 128)
!2817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2808, file: !262, line: 28, size: 320, elements: !2818)
!2818 = !{!2819, !2829, !2854}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2817, file: !262, line: 37, baseType: !2820, size: 320)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2817, file: !262, line: 30, size: 320, elements: !2821)
!2821 = !{!2822, !2824, !2825, !2826, !2827, !2828}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2820, file: !262, line: 31, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2820, file: !262, line: 32, baseType: !422, size: 32, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2820, file: !262, line: 33, baseType: !422, size: 32, offset: 96)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2820, file: !262, line: 34, baseType: !422, size: 32, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2820, file: !262, line: 35, baseType: !399, size: 64, offset: 192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2820, file: !262, line: 36, baseType: !2823, size: 64, offset: 256)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2817, file: !262, line: 47, baseType: !2830, size: 192)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2817, file: !262, line: 39, size: 192, elements: !2831)
!2831 = !{!2832, !2833, !2834, !2853}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2830, file: !262, line: 40, baseType: !1778, size: 32)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2830, file: !262, line: 41, baseType: !261, size: 32, offset: 32)
!2834 = !DIDerivedType(tag: DW_TAG_member, scope: !2830, file: !262, line: 42, baseType: !2835, size: 64, offset: 64)
!2835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2830, file: !262, line: 42, size: 64, elements: !2836)
!2836 = !{!2837, !2845}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2835, file: !262, line: 43, baseType: !2838, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2840, line: 7, size: 128, elements: !2841)
!2840 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2841 = !{!2842, !2844}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2839, file: !2840, line: 8, baseType: !2843, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !544, line: 93, baseType: !747)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2839, file: !2840, line: 9, baseType: !747, size: 64, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2835, file: !262, line: 44, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2848, line: 7, size: 64, elements: !2849)
!2848 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2849 = !{!2850, !2852}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2847, file: !2848, line: 8, baseType: !2851, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2848, line: 5, baseType: !840)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2847, file: !2848, line: 9, baseType: !840, size: 32, offset: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2830, file: !262, line: 46, baseType: !399, size: 64, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2817, file: !262, line: 55, baseType: !2855, size: 256)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2817, file: !262, line: 49, size: 256, elements: !2856)
!2856 = !{!2857, !2860, !2861, !2862, !2863}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2855, file: !262, line: 50, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !262, line: 14, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2855, file: !262, line: 51, baseType: !7, size: 32, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2855, file: !262, line: 52, baseType: !7, size: 32, offset: 96)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2855, file: !262, line: 53, baseType: !381, size: 64, offset: 128)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2855, file: !262, line: 54, baseType: !381, size: 64, offset: 192)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1611, file: !1286, line: 973, baseType: !2865, size: 32, offset: 10688)
!2865 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !419, line: 27, baseType: !2866)
!2866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !544, line: 28, baseType: !7)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1611, file: !1286, line: 974, baseType: !2865, size: 32, offset: 10720)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1611, file: !1286, line: 978, baseType: !381, size: 64, offset: 10752)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1611, file: !1286, line: 987, baseType: !1610, size: 64, offset: 10816)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1611, file: !1286, line: 990, baseType: !1610, size: 64, offset: 10880)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1611, file: !1286, line: 995, baseType: !437, size: 128, offset: 10944)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1611, file: !1286, line: 996, baseType: !437, size: 128, offset: 11072)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1611, file: !1286, line: 997, baseType: !1610, size: 64, offset: 11200)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1611, file: !1286, line: 1005, baseType: !437, size: 128, offset: 11264)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1611, file: !1286, line: 1006, baseType: !437, size: 128, offset: 11392)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1611, file: !1286, line: 1009, baseType: !1975, size: 64, offset: 11520)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1611, file: !1286, line: 1010, baseType: !2878, size: 512, offset: 11584)
!2878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1088, size: 512, elements: !1072)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1611, file: !1286, line: 1011, baseType: !437, size: 128, offset: 12096)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1611, file: !1286, line: 1012, baseType: !437, size: 128, offset: 12224)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1611, file: !1286, line: 1014, baseType: !792, size: 64, offset: 12352)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1611, file: !1286, line: 1017, baseType: !971, size: 64, offset: 12416)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1611, file: !1286, line: 1020, baseType: !971, size: 64, offset: 12480)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1611, file: !1286, line: 1023, baseType: !341, size: 64, offset: 12544)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1611, file: !1286, line: 1025, baseType: !399, size: 64, offset: 12608)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1611, file: !1286, line: 1026, baseType: !399, size: 64, offset: 12672)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1611, file: !1286, line: 1031, baseType: !399, size: 64, offset: 12736)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1611, file: !1286, line: 1032, baseType: !2889, size: 192, offset: 12800)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1286, line: 324, size: 192, elements: !2890)
!2890 = !{!2891, !2892, !2893}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2889, file: !1286, line: 326, baseType: !399, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2889, file: !1286, line: 327, baseType: !399, size: 64, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2889, file: !1286, line: 328, baseType: !802, size: 32, offset: 128)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1611, file: !1286, line: 1041, baseType: !381, size: 64, offset: 12992)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1611, file: !1286, line: 1042, baseType: !381, size: 64, offset: 13056)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1611, file: !1286, line: 1045, baseType: !399, size: 64, offset: 13120)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1611, file: !1286, line: 1048, baseType: !399, size: 64, offset: 13184)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1611, file: !1286, line: 1051, baseType: !381, size: 64, offset: 13248)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1611, file: !1286, line: 1052, baseType: !381, size: 64, offset: 13312)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1611, file: !1286, line: 1055, baseType: !2901, size: 640, offset: 13376)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2902, line: 132, size: 640, elements: !2903)
!2902 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2903 = !{!2904, !2910, !2911}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2901, file: !2902, line: 133, baseType: !2905, size: 576)
!2905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2906, size: 576, elements: !513)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2902, line: 117, size: 192, elements: !2907)
!2907 = !{!2908, !2909}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2906, file: !2902, line: 118, baseType: !399, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2906, file: !2902, line: 119, baseType: !1787, size: 128, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2901, file: !2902, line: 134, baseType: !202, size: 32, offset: 576)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2901, file: !2902, line: 135, baseType: !202, size: 32, offset: 608)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1611, file: !1286, line: 1058, baseType: !2913, size: 448, offset: 14016)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2902, line: 144, size: 448, elements: !2914)
!2914 = !{!2915, !2916, !2917}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2913, file: !2902, line: 145, baseType: !1062, size: 128, align: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2913, file: !2902, line: 146, baseType: !844, size: 256, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2913, file: !2902, line: 147, baseType: !202, size: 32, offset: 384)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1611, file: !1286, line: 1064, baseType: !2001, size: 64, offset: 14464)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1611, file: !1286, line: 1067, baseType: !2001, size: 64, offset: 14528)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1611, file: !1286, line: 1070, baseType: !2001, size: 64, offset: 14592)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1611, file: !1286, line: 1074, baseType: !2028, size: 64, offset: 14656)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1611, file: !1286, line: 1084, baseType: !383, size: 128, offset: 14720)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1611, file: !1286, line: 1086, baseType: !2924, size: 64, offset: 14848)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1286, line: 55, flags: DIFlagFwdDecl)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1611, file: !1286, line: 1089, baseType: !2927, size: 64, offset: 14912)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2928, line: 12, size: 64, elements: !2929)
!2928 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2929 = !{!2930}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2927, file: !2928, line: 13, baseType: !2931, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2928, line: 8, flags: DIFlagFwdDecl)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1611, file: !1286, line: 1090, baseType: !2934, size: 128, offset: 14976)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2935, line: 13, size: 128, elements: !2936)
!2935 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2936 = !{!2937}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2934, file: !2935, line: 14, baseType: !437, size: 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1611, file: !1286, line: 1097, baseType: !2939, size: 64, offset: 15104)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1286, line: 50, flags: DIFlagFwdDecl)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1611, file: !1286, line: 1100, baseType: !2942, size: 64, offset: 15168)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1286, line: 1100, flags: DIFlagFwdDecl)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1611, file: !1286, line: 1103, baseType: !2945, size: 64, offset: 15232)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1286, line: 53, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1611, file: !1286, line: 1107, baseType: !2948, size: 64, offset: 15296)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1286, line: 56, flags: DIFlagFwdDecl)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1611, file: !1286, line: 1110, baseType: !2951, size: 64, offset: 15360)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2953, line: 93, size: 8768, elements: !2954)
!2953 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2954 = !{!2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !3002, !3011, !3012, !3014, !3015, !3016, !3019, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3057, !3058, !3065, !3075, !3078, !3079, !3082, !3083, !3084, !3085, !3086, !3087}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2952, file: !2953, line: 94, baseType: !1624, size: 32)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2952, file: !2953, line: 95, baseType: !470, size: 32, offset: 32)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2952, file: !2953, line: 96, baseType: !7, size: 32, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2952, file: !2953, line: 97, baseType: !7, size: 32, offset: 96)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2952, file: !2953, line: 98, baseType: !437, size: 128, offset: 128)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2952, file: !2953, line: 100, baseType: !1597, size: 192, offset: 256)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2952, file: !2953, line: 103, baseType: !1610, size: 64, offset: 448)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2952, file: !2953, line: 106, baseType: !2963, size: 192, offset: 512)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2176, line: 32, size: 192, elements: !2964)
!2964 = !{!2965, !2966}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2963, file: !2176, line: 33, baseType: !437, size: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2963, file: !2176, line: 34, baseType: !2967, size: 64, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2968, line: 25, baseType: !2969)
!2968 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2968, line: 23, size: 64, elements: !2970)
!2970 = !{!2971}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2969, file: !2968, line: 24, baseType: !1858, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2952, file: !2953, line: 109, baseType: !1212, size: 64, offset: 704)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2952, file: !2953, line: 112, baseType: !7, size: 32, offset: 768)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2952, file: !2953, line: 114, baseType: !7, size: 32, offset: 800)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2952, file: !2953, line: 115, baseType: !1610, size: 64, offset: 832)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2952, file: !2953, line: 118, baseType: !7, size: 32, offset: 896)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2952, file: !2953, line: 119, baseType: !202, size: 32, offset: 928)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2952, file: !2953, line: 121, baseType: !2979, size: 64, offset: 960)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2953, line: 80, size: 448, elements: !2981)
!2981 = !{!2982, !2983, !2989}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2980, file: !2953, line: 81, baseType: !470, size: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2980, file: !2953, line: 82, baseType: !2984, size: 128, offset: 64)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2953, line: 75, size: 128, elements: !2985)
!2985 = !{!2986, !2987}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2984, file: !2953, line: 76, baseType: !1610, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2984, file: !2953, line: 77, baseType: !2988, size: 64, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2980, file: !2953, line: 83, baseType: !793, size: 256, offset: 192)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2952, file: !2953, line: 132, baseType: !202, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2952, file: !2953, line: 133, baseType: !202, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2952, file: !2953, line: 138, baseType: !202, size: 32, offset: 1056)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2952, file: !2953, line: 139, baseType: !437, size: 128, offset: 1088)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2952, file: !2953, line: 142, baseType: !1731, size: 512, offset: 1216)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2952, file: !2953, line: 143, baseType: !1739, size: 64, offset: 1728)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2952, file: !2953, line: 150, baseType: !2997, size: 256, offset: 1792)
!2997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2998, size: 256, elements: !961)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2953, line: 38, size: 128, elements: !2999)
!2999 = !{!3000, !3001}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2998, file: !2953, line: 39, baseType: !399, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2998, file: !2953, line: 40, baseType: !399, size: 64, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2952, file: !2953, line: 156, baseType: !3003, size: 192, offset: 2048)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2953, line: 66, size: 192, elements: !3004)
!3004 = !{!3005}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3003, file: !2953, line: 67, baseType: !3006, size: 192)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2953, line: 47, size: 192, elements: !3007)
!3007 = !{!3008, !3009, !3010}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3006, file: !2953, line: 48, baseType: !850, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3006, file: !2953, line: 49, baseType: !850, size: 64, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3006, file: !2953, line: 50, baseType: !850, size: 64, offset: 128)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2952, file: !2953, line: 160, baseType: !2901, size: 640, offset: 2240)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2952, file: !2953, line: 163, baseType: !3013, size: 256, offset: 2880)
!3013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1975, size: 256, elements: !1072)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2952, file: !2953, line: 169, baseType: !1975, size: 64, offset: 3136)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2952, file: !2953, line: 172, baseType: !7, size: 32, offset: 3200)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2952, file: !2953, line: 174, baseType: !3017, size: 64, offset: 3264)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2953, line: 174, flags: DIFlagFwdDecl)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2952, file: !2953, line: 185, baseType: !3020, size: 64, offset: 3328)
!3020 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !631, line: 860, baseType: !3021)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !631, line: 853, size: 64, elements: !3022)
!3022 = !{!3023, !3024}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3021, file: !631, line: 858, baseType: !630, size: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3021, file: !631, line: 859, baseType: !450, size: 32, offset: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2952, file: !2953, line: 186, baseType: !399, size: 64, offset: 3392)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2952, file: !2953, line: 186, baseType: !399, size: 64, offset: 3456)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2952, file: !2953, line: 186, baseType: !399, size: 64, offset: 3520)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2952, file: !2953, line: 186, baseType: !399, size: 64, offset: 3584)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2952, file: !2953, line: 187, baseType: !399, size: 64, offset: 3648)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2952, file: !2953, line: 188, baseType: !399, size: 64, offset: 3712)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2952, file: !2953, line: 189, baseType: !2889, size: 192, offset: 3776)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2952, file: !2953, line: 190, baseType: !381, size: 64, offset: 3968)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2952, file: !2953, line: 190, baseType: !381, size: 64, offset: 4032)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2952, file: !2953, line: 190, baseType: !381, size: 64, offset: 4096)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2952, file: !2953, line: 190, baseType: !381, size: 64, offset: 4160)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2952, file: !2953, line: 191, baseType: !381, size: 64, offset: 4224)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2952, file: !2953, line: 191, baseType: !381, size: 64, offset: 4288)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2952, file: !2953, line: 191, baseType: !381, size: 64, offset: 4352)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2952, file: !2953, line: 191, baseType: !381, size: 64, offset: 4416)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2952, file: !2953, line: 192, baseType: !381, size: 64, offset: 4480)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2952, file: !2953, line: 192, baseType: !381, size: 64, offset: 4544)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2952, file: !2953, line: 192, baseType: !381, size: 64, offset: 4608)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2952, file: !2953, line: 192, baseType: !381, size: 64, offset: 4672)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2952, file: !2953, line: 193, baseType: !381, size: 64, offset: 4736)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2952, file: !2953, line: 193, baseType: !381, size: 64, offset: 4800)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2952, file: !2953, line: 194, baseType: !3047, size: 448, offset: 4864)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3048, line: 12, size: 448, elements: !3049)
!3048 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3049 = !{!3050, !3051, !3052, !3053, !3054, !3055, !3056}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3047, file: !3048, line: 15, baseType: !399, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3047, file: !3048, line: 17, baseType: !399, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3047, file: !3048, line: 19, baseType: !399, size: 64, offset: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3047, file: !3048, line: 21, baseType: !399, size: 64, offset: 192)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3047, file: !3048, line: 29, baseType: !399, size: 64, offset: 256)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3047, file: !3048, line: 35, baseType: !399, size: 64, offset: 320)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3047, file: !3048, line: 44, baseType: !399, size: 64, offset: 384)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2952, file: !2953, line: 202, baseType: !402, size: 64, offset: 5312)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2952, file: !2953, line: 213, baseType: !3059, size: 2048, offset: 5376)
!3059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3060, size: 2048, elements: !385)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3061, line: 43, size: 128, elements: !3062)
!3061 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3062 = !{!3063, !3064}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3060, file: !3061, line: 44, baseType: !559, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3060, file: !3061, line: 45, baseType: !559, size: 64, offset: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2952, file: !2953, line: 216, baseType: !3066, size: 448, offset: 7424)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2953, line: 30, size: 448, elements: !3067)
!3067 = !{!3068, !3069, !3070, !3071, !3072, !3073, !3074}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3066, file: !2953, line: 31, baseType: !7, size: 32)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3066, file: !2953, line: 32, baseType: !546, size: 64, offset: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3066, file: !2953, line: 33, baseType: !381, size: 64, offset: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3066, file: !2953, line: 34, baseType: !399, size: 64, offset: 192)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3066, file: !2953, line: 34, baseType: !399, size: 64, offset: 256)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3066, file: !2953, line: 35, baseType: !381, size: 64, offset: 320)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3066, file: !2953, line: 35, baseType: !381, size: 64, offset: 384)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2952, file: !2953, line: 219, baseType: !3076, size: 64, offset: 7872)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2953, line: 219, flags: DIFlagFwdDecl)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2952, file: !2953, line: 222, baseType: !202, size: 32, offset: 7936)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2952, file: !2953, line: 223, baseType: !3080, size: 64, offset: 8000)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2953, line: 223, flags: DIFlagFwdDecl)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2952, file: !2953, line: 230, baseType: !418, size: 8, offset: 8064)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2952, file: !2953, line: 231, baseType: !980, size: 16, offset: 8080)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2952, file: !2953, line: 232, baseType: !980, size: 16, offset: 8096)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2952, file: !2953, line: 234, baseType: !1907, size: 64, offset: 8128)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2952, file: !2953, line: 237, baseType: !844, size: 256, offset: 8192)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2952, file: !2953, line: 243, baseType: !1504, size: 320, offset: 8448)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1611, file: !1286, line: 1111, baseType: !3089, size: 64, offset: 15424)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2953, line: 20, size: 16640, elements: !3091)
!3091 = !{!3092, !3093, !3094, !3095}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3090, file: !2953, line: 21, baseType: !450, size: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3090, file: !2953, line: 22, baseType: !1624, size: 32, offset: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3090, file: !2953, line: 23, baseType: !1597, size: 192, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3090, file: !2953, line: 24, baseType: !3096, size: 16384, offset: 256)
!3096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3097, size: 16384, elements: !389)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2176, line: 51, size: 256, elements: !3098)
!3098 = !{!3099}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3097, file: !2176, line: 52, baseType: !3100, size: 256)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2176, line: 37, size: 256, elements: !3101)
!3101 = !{!3102, !3109, !3110, !3114}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3100, file: !2176, line: 39, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3104, line: 83, baseType: !3105)
!3104 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3104, line: 82, baseType: !3107)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{null, !7}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3100, file: !2176, line: 40, baseType: !381, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3100, file: !2176, line: 46, baseType: !3111, size: 64, offset: 128)
!3111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3104, line: 86, baseType: !3112)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3104, line: 85, baseType: !1207)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3100, file: !2176, line: 48, baseType: !2967, size: 64, offset: 192)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1611, file: !1286, line: 1112, baseType: !2967, size: 64, offset: 15488)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1611, file: !1286, line: 1113, baseType: !2967, size: 64, offset: 15552)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1611, file: !1286, line: 1115, baseType: !2967, size: 64, offset: 15616)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1611, file: !1286, line: 1116, baseType: !2963, size: 192, offset: 15680)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1611, file: !1286, line: 1117, baseType: !381, size: 64, offset: 15872)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1611, file: !1286, line: 1118, baseType: !557, size: 64, offset: 15936)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1611, file: !1286, line: 1119, baseType: !202, size: 32, offset: 16000)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1611, file: !1286, line: 1121, baseType: !1061, size: 64, offset: 16064)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1611, file: !1286, line: 1125, baseType: !3124, size: 64, offset: 16128)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1286, line: 43, flags: DIFlagFwdDecl)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1611, file: !1286, line: 1127, baseType: !595, size: 32, offset: 16192)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1611, file: !1286, line: 1128, baseType: !202, size: 32, offset: 16224)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1611, file: !1286, line: 1130, baseType: !3129, size: 128, offset: 16256)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3130, line: 37, size: 128, elements: !3131)
!3130 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3131 = !{!3132, !3133, !3134}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3129, file: !3130, line: 38, baseType: !7, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3129, file: !3130, line: 39, baseType: !470, size: 32, offset: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3129, file: !3130, line: 40, baseType: !3135, size: 64, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3130, line: 24, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1611, file: !1286, line: 1131, baseType: !3138, size: 256, offset: 16384)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3139, line: 12, size: 256, elements: !3140)
!3139 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3140 = !{!3141, !3142, !3143, !3144}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3138, file: !3139, line: 13, baseType: !512, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3138, file: !3139, line: 14, baseType: !381, size: 64, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3138, file: !3139, line: 15, baseType: !381, size: 64, offset: 128)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3138, file: !3139, line: 16, baseType: !418, size: 8, offset: 192)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1611, file: !1286, line: 1134, baseType: !399, size: 64, offset: 16640)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1611, file: !1286, line: 1135, baseType: !399, size: 64, offset: 16704)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1611, file: !1286, line: 1138, baseType: !450, size: 32, offset: 16768)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1611, file: !1286, line: 1141, baseType: !802, size: 32, offset: 16800)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1611, file: !1286, line: 1143, baseType: !3150, size: 64, offset: 16832)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1286, line: 735, size: 64, elements: !3151)
!3151 = !{!3152}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3150, file: !1286, line: 736, baseType: !3153, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1611, file: !1286, line: 1147, baseType: !1790, size: 128, offset: 16896)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1611, file: !1286, line: 1149, baseType: !1610, size: 64, offset: 17024)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1611, file: !1286, line: 1151, baseType: !3157, size: 64, offset: 17088)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1286, line: 1151, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1611, file: !1286, line: 1188, baseType: !341, size: 64, offset: 17152)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1611, file: !1286, line: 1191, baseType: !3161, size: 64, offset: 17216)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1286, line: 44, flags: DIFlagFwdDecl)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1611, file: !1286, line: 1194, baseType: !3164, size: 64, offset: 17280)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1286, line: 45, flags: DIFlagFwdDecl)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1611, file: !1286, line: 1197, baseType: !3167, size: 64, offset: 17344)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1286, line: 61, flags: DIFlagFwdDecl)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1611, file: !1286, line: 1199, baseType: !3170, size: 64, offset: 17408)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3172, line: 99, size: 128, elements: !3173)
!3172 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3173 = !{!3174, !3175, !3176}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3171, file: !3172, line: 100, baseType: !848, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3171, file: !3172, line: 101, baseType: !470, size: 32, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3171, file: !3172, line: 103, baseType: !406, size: 16, offset: 96)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1611, file: !1286, line: 1202, baseType: !3178, size: 64, offset: 17472)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1286, line: 48, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1611, file: !1286, line: 1205, baseType: !381, size: 64, offset: 17536)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1611, file: !1286, line: 1206, baseType: !3182, size: 64, offset: 17600)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2176, line: 14, baseType: !3184)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2176, line: 12, size: 384, elements: !3185)
!3185 = !{!3186}
!3186 = !DIDerivedType(tag: DW_TAG_member, scope: !3184, file: !2176, line: 13, baseType: !3187, size: 384)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3184, file: !2176, line: 13, size: 384, elements: !3188)
!3188 = !{!3189, !3190, !3191, !3192}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3187, file: !2176, line: 13, baseType: !7, size: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3187, file: !2176, line: 13, baseType: !7, size: 32, offset: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3187, file: !2176, line: 13, baseType: !7, size: 32, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3187, file: !2176, line: 13, baseType: !3193, size: 256, offset: 128)
!3193 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3194, line: 37, size: 256, elements: !3195)
!3194 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3195 = !{!3196, !3201, !3214, !3220, !3229, !3256, !3261}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3193, file: !3194, line: 42, baseType: !3197, size: 64)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3193, file: !3194, line: 39, size: 64, elements: !3198)
!3198 = !{!3199, !3200}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3197, file: !3194, line: 40, baseType: !2866, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3197, file: !3194, line: 41, baseType: !601, size: 32, offset: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3193, file: !3194, line: 50, baseType: !3202, size: 192)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3193, file: !3194, line: 45, size: 192, elements: !3203)
!3203 = !{!3204, !3206, !3207, !3213}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3202, file: !3194, line: 46, baseType: !3205, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !544, line: 95, baseType: !7)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3202, file: !3194, line: 47, baseType: !7, size: 32, offset: 32)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3202, file: !3194, line: 48, baseType: !3208, size: 64, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3194, line: 11, baseType: !3209)
!3209 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3194, line: 8, size: 64, elements: !3210)
!3210 = !{!3211, !3212}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3209, file: !3194, line: 9, baseType: !7, size: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3209, file: !3194, line: 10, baseType: !341, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3202, file: !3194, line: 49, baseType: !7, size: 32, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3193, file: !3194, line: 57, baseType: !3215, size: 128)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3193, file: !3194, line: 53, size: 128, elements: !3216)
!3216 = !{!3217, !3218, !3219}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3215, file: !3194, line: 54, baseType: !2866, size: 32)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3215, file: !3194, line: 55, baseType: !601, size: 32, offset: 32)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3215, file: !3194, line: 56, baseType: !3208, size: 64, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3193, file: !3194, line: 66, baseType: !3221, size: 256)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3193, file: !3194, line: 60, size: 256, elements: !3222)
!3222 = !{!3223, !3224, !3225, !3226, !3228}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3221, file: !3194, line: 61, baseType: !2866, size: 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3221, file: !3194, line: 62, baseType: !601, size: 32, offset: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3221, file: !3194, line: 63, baseType: !7, size: 32, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3221, file: !3194, line: 64, baseType: !3227, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !544, line: 94, baseType: !545)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3221, file: !3194, line: 65, baseType: !3227, size: 64, offset: 192)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3193, file: !3194, line: 105, baseType: !3230, size: 256)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3193, file: !3194, line: 69, size: 256, elements: !3231)
!3231 = !{!3232, !3233}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3230, file: !3194, line: 70, baseType: !341, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, scope: !3230, file: !3194, line: 79, baseType: !3234, size: 192, offset: 64)
!3234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3230, file: !3194, line: 79, size: 192, elements: !3235)
!3235 = !{!3236, !3237, !3238, !3245, !3250}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3234, file: !3194, line: 81, baseType: !7, size: 32)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3234, file: !3194, line: 86, baseType: !980, size: 16)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3234, file: !3194, line: 92, baseType: !3239, size: 192)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3234, file: !3194, line: 88, size: 192, elements: !3240)
!3240 = !{!3241, !3243, !3244}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3239, file: !3194, line: 89, baseType: !3242, size: 64)
!3242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 64, elements: !1774)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3239, file: !3194, line: 90, baseType: !341, size: 64, offset: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3239, file: !3194, line: 91, baseType: !341, size: 64, offset: 128)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3234, file: !3194, line: 97, baseType: !3246, size: 96)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3234, file: !3194, line: 94, size: 96, elements: !3247)
!3247 = !{!3248, !3249}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3246, file: !3194, line: 95, baseType: !3242, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3246, file: !3194, line: 96, baseType: !360, size: 32, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3234, file: !3194, line: 103, baseType: !3251, size: 128)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3234, file: !3194, line: 99, size: 128, elements: !3252)
!3252 = !{!3253, !3254, !3255}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3251, file: !3194, line: 100, baseType: !381, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3251, file: !3194, line: 101, baseType: !360, size: 32, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3251, file: !3194, line: 102, baseType: !360, size: 32, offset: 96)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3193, file: !3194, line: 111, baseType: !3257, size: 128)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3193, file: !3194, line: 108, size: 128, elements: !3258)
!3258 = !{!3259, !3260}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3257, file: !3194, line: 109, baseType: !546, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3257, file: !3194, line: 110, baseType: !7, size: 32, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3193, file: !3194, line: 118, baseType: !3262, size: 128)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3193, file: !3194, line: 114, size: 128, elements: !3263)
!3263 = !{!3264, !3265, !3266}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3262, file: !3194, line: 115, baseType: !341, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3262, file: !3194, line: 116, baseType: !7, size: 32, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3262, file: !3194, line: 117, baseType: !202, size: 32, offset: 96)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1611, file: !1286, line: 1208, baseType: !3047, size: 448, offset: 17664)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1611, file: !1286, line: 1215, baseType: !399, size: 64, offset: 18112)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1611, file: !1286, line: 1217, baseType: !399, size: 64, offset: 18176)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1611, file: !1286, line: 1219, baseType: !399, size: 64, offset: 18240)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1611, file: !1286, line: 1223, baseType: !3272, size: 64, offset: 18304)
!3272 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3273, line: 99, baseType: !3274)
!3273 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3273, line: 99, size: 64, elements: !3275)
!3275 = !{!3276}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3274, file: !3273, line: 99, baseType: !1858, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1611, file: !1286, line: 1225, baseType: !630, size: 32, offset: 18368)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1611, file: !1286, line: 1226, baseType: !7, size: 32, offset: 18400)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1611, file: !1286, line: 1227, baseType: !7, size: 32, offset: 18432)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1611, file: !1286, line: 1231, baseType: !3281, size: 64, offset: 18496)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1286, line: 1231, flags: DIFlagFwdDecl)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1611, file: !1286, line: 1233, baseType: !437, size: 128, offset: 18560)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1611, file: !1286, line: 1240, baseType: !3285, size: 64, offset: 18688)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1286, line: 62, flags: DIFlagFwdDecl)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1611, file: !1286, line: 1242, baseType: !3288, size: 64, offset: 18752)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1286, line: 1242, flags: DIFlagFwdDecl)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1611, file: !1286, line: 1244, baseType: !437, size: 128, offset: 18816)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1611, file: !1286, line: 1245, baseType: !3292, size: 64, offset: 18944)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1286, line: 51, flags: DIFlagFwdDecl)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1611, file: !1286, line: 1246, baseType: !844, size: 256, offset: 19008)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1611, file: !1286, line: 1247, baseType: !202, size: 32, offset: 19264)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1611, file: !1286, line: 1250, baseType: !3297, size: 64, offset: 19328)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1286, line: 57, flags: DIFlagFwdDecl)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1611, file: !1286, line: 1251, baseType: !844, size: 256, offset: 19392)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1611, file: !1286, line: 1252, baseType: !437, size: 128, offset: 19648)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1611, file: !1286, line: 1259, baseType: !2555, size: 64, offset: 19776)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1611, file: !1286, line: 1260, baseType: !980, size: 16, offset: 19840)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1611, file: !1286, line: 1261, baseType: !980, size: 16, offset: 19856)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1611, file: !1286, line: 1314, baseType: !3305, size: 64, offset: 19904)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3307, line: 62, size: 256, align: 256, elements: !3308)
!3307 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3308 = !{!3309, !3310, !3311, !3312, !3313, !3314, !3315}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3306, file: !3307, line: 75, baseType: !360, size: 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3306, file: !3307, line: 90, baseType: !360, size: 32, offset: 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3306, file: !3307, line: 112, baseType: !401, size: 64, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3306, file: !3307, line: 132, baseType: !360, size: 32, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3306, file: !3307, line: 140, baseType: !360, size: 32, offset: 160)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3306, file: !3307, line: 149, baseType: !360, size: 32, offset: 192)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3306, file: !3307, line: 154, baseType: !3316, offset: 224)
!3316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, elements: !1994)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1611, file: !1286, line: 1315, baseType: !422, size: 32, offset: 19968)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1611, file: !1286, line: 1316, baseType: !422, size: 32, offset: 20000)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1611, file: !1286, line: 1321, baseType: !381, size: 64, offset: 20032)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1611, file: !1286, line: 1325, baseType: !7, size: 32, offset: 20096)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1611, file: !1286, line: 1326, baseType: !7, size: 32, offset: 20128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1611, file: !1286, line: 1327, baseType: !7, size: 32, offset: 20160)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1611, file: !1286, line: 1328, baseType: !7, size: 32, offset: 20192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1611, file: !1286, line: 1329, baseType: !1062, size: 128, align: 64, offset: 20224)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1611, file: !1286, line: 1332, baseType: !3326, size: 128, offset: 20352)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3327, line: 51, size: 128, elements: !3328)
!3327 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3328 = !{!3329, !3334, !3335}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3326, file: !3327, line: 60, baseType: !3330, size: 64)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3331, line: 7, size: 64, elements: !3332)
!3331 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3332 = !{!3333}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3330, file: !3331, line: 12, baseType: !1855, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3326, file: !3327, line: 63, baseType: !418, size: 8, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3326, file: !3327, line: 70, baseType: !418, size: 8, offset: 72)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1611, file: !1286, line: 1335, baseType: !2607, size: 64, offset: 20480)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1611, file: !1286, line: 1337, baseType: !3338, size: 128, offset: 20544)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3327, line: 39, size: 128, elements: !3339)
!3339 = !{!3340, !3341, !3342}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3338, file: !3327, line: 40, baseType: !2394, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3338, file: !3327, line: 42, baseType: !360, size: 32, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3338, file: !3327, line: 43, baseType: !360, size: 32, offset: 96)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1611, file: !1286, line: 1340, baseType: !3344, size: 64, offset: 20672)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1286, line: 69, flags: DIFlagFwdDecl)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1611, file: !1286, line: 1351, baseType: !7, size: 32, offset: 20736)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1611, file: !1286, line: 1352, baseType: !7, size: 32, offset: 20768)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1611, file: !1286, line: 1354, baseType: !381, size: 64, offset: 20800)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1611, file: !1286, line: 1364, baseType: !399, size: 64, offset: 20864)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1611, file: !1286, line: 1365, baseType: !399, size: 64, offset: 20928)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1611, file: !1286, line: 1412, baseType: !381, size: 64, offset: 20992)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1611, file: !1286, line: 1453, baseType: !3353, size: 64, offset: 21056)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1286, line: 1453, flags: DIFlagFwdDecl)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1611, file: !1286, line: 1457, baseType: !3356, size: 64, offset: 21120)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !268, line: 61, size: 576, elements: !3358)
!3358 = !{!3359, !3360, !3379, !3382, !3383, !3416, !3426}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3357, file: !268, line: 62, baseType: !267, size: 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, scope: !3357, file: !268, line: 64, baseType: !3361, size: 192, offset: 64)
!3361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3357, file: !268, line: 64, size: 192, elements: !3362)
!3362 = !{!3363, !3374}
!3363 = !DIDerivedType(tag: DW_TAG_member, scope: !3361, file: !268, line: 65, baseType: !3364, size: 192)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3361, file: !268, line: 65, size: 192, elements: !3365)
!3365 = !{!3366, !3373}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3364, file: !268, line: 66, baseType: !3367, size: 128)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3368, line: 50, size: 128, elements: !3369)
!3368 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3369 = !{!3370, !3371, !3372}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3367, file: !3368, line: 52, baseType: !381, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3367, file: !3368, line: 54, baseType: !202, size: 32, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3367, file: !3368, line: 55, baseType: !202, size: 32, offset: 96)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3364, file: !268, line: 67, baseType: !381, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, scope: !3361, file: !268, line: 70, baseType: !3375, size: 192)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3361, file: !268, line: 70, size: 192, elements: !3376)
!3376 = !{!3377, !3378}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3375, file: !268, line: 71, baseType: !1062, size: 128, align: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3375, file: !268, line: 72, baseType: !381, size: 64, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3357, file: !268, line: 76, baseType: !3380, size: 64, offset: 256)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !268, line: 76, flags: DIFlagFwdDecl)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3357, file: !268, line: 77, baseType: !381, size: 64, offset: 320)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3357, file: !268, line: 79, baseType: !3384, size: 64, offset: 384)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3368, line: 25, size: 256, elements: !3386)
!3386 = !{!3387, !3393, !3397}
!3387 = !DIDerivedType(tag: DW_TAG_member, scope: !3385, file: !3368, line: 26, baseType: !3388, size: 128)
!3388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3385, file: !3368, line: 26, size: 128, elements: !3389)
!3389 = !{!3390, !3392}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3388, file: !3368, line: 27, baseType: !3391, size: 128)
!3391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 128, elements: !385)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3388, file: !3368, line: 28, baseType: !3391, size: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3385, file: !3368, line: 31, baseType: !3394, size: 64, offset: 128)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3396)
!3396 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3368, line: 23, flags: DIFlagFwdDecl)
!3397 = !DIDerivedType(tag: DW_TAG_member, scope: !3385, file: !3368, line: 33, baseType: !3398, size: 64, offset: 192)
!3398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3385, file: !3368, line: 33, size: 64, elements: !3399)
!3399 = !{!3400, !3406, !3411}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3398, file: !3368, line: 38, baseType: !3401, size: 64)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3398, file: !3368, line: 34, size: 64, elements: !3402)
!3402 = !{!3403, !3404, !3405}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3401, file: !3368, line: 35, baseType: !840, size: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3401, file: !3368, line: 36, baseType: !424, size: 8, offset: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3401, file: !3368, line: 37, baseType: !424, size: 8, offset: 40)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3398, file: !3368, line: 42, baseType: !3407, size: 16)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3398, file: !3368, line: 39, size: 16, elements: !3408)
!3408 = !{!3409, !3410}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3407, file: !3368, line: 40, baseType: !424, size: 8)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3407, file: !3368, line: 41, baseType: !424, size: 8, offset: 8)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3398, file: !3368, line: 46, baseType: !3412, size: 16)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3398, file: !3368, line: 43, size: 16, elements: !3413)
!3413 = !{!3414, !3415}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3412, file: !3368, line: 44, baseType: !424, size: 8)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3412, file: !3368, line: 45, baseType: !424, size: 8, offset: 8)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3357, file: !268, line: 81, baseType: !3417, size: 64, offset: 448)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !268, line: 85, size: 384, elements: !3419)
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3425}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3418, file: !268, line: 86, baseType: !3380, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3418, file: !268, line: 87, baseType: !381, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3418, file: !268, line: 88, baseType: !381, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3418, file: !268, line: 89, baseType: !381, size: 64, offset: 192)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3418, file: !268, line: 90, baseType: !418, size: 8, offset: 256)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3418, file: !268, line: 92, baseType: !3417, size: 64, offset: 320)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3357, file: !268, line: 82, baseType: !202, size: 32, offset: 512)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1611, file: !1286, line: 1463, baseType: !3428, offset: 21184)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1286, line: 739, elements: !1131)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1611, file: !1286, line: 1470, baseType: !1062, size: 128, align: 64, offset: 21184)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1611, file: !1286, line: 1471, baseType: !1624, size: 32, offset: 21312)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1611, file: !1286, line: 1472, baseType: !7, size: 32, offset: 21344)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1611, file: !1286, line: 1474, baseType: !1610, size: 64, offset: 21376)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1611, file: !1286, line: 1475, baseType: !1084, size: 320, offset: 21440)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1611, file: !1286, line: 1478, baseType: !3435, size: 64, offset: 21760)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1286, line: 1478, flags: DIFlagFwdDecl)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1611, file: !1286, line: 1482, baseType: !1624, size: 32, offset: 21824)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1611, file: !1286, line: 1489, baseType: !341, size: 64, offset: 21888)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1611, file: !1286, line: 1504, baseType: !341, size: 64, offset: 21952)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1611, file: !1286, line: 1505, baseType: !401, size: 64, offset: 22016)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1611, file: !1286, line: 1506, baseType: !399, size: 64, offset: 22080)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1611, file: !1286, line: 1507, baseType: !401, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1611, file: !1286, line: 1508, baseType: !401, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1611, file: !1286, line: 1509, baseType: !401, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1611, file: !1286, line: 1510, baseType: !1062, size: 128, align: 64, offset: 22208)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1611, file: !1286, line: 1511, baseType: !7, size: 32, offset: 22336)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1611, file: !1286, line: 1515, baseType: !3448, size: 64, offset: 22400)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1638, line: 56, size: 64, elements: !3449)
!3449 = !{!3450}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3448, file: !1638, line: 57, baseType: !1641, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1611, file: !1286, line: 1518, baseType: !3448, size: 64, offset: 22464)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1611, file: !1286, line: 1528, baseType: !1062, size: 128, align: 64, offset: 22528)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1611, file: !1286, line: 1552, baseType: !3454, size: 35328, offset: 23040)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !344, line: 430, size: 35328, elements: !3455)
!3455 = !{!3456, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3485, !3486, !3487, !3488, !3489, !3490, !3493, !3494, !3495, !3496}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3454, file: !344, line: 432, baseType: !3457, size: 192)
!3457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3458, size: 192, elements: !513)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3459, line: 16, size: 64, elements: !3460)
!3459 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3460 = !{!3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3458, file: !3459, line: 17, baseType: !404, size: 16)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3458, file: !3459, line: 18, baseType: !404, size: 16, offset: 16)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3458, file: !3459, line: 19, baseType: !404, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3458, file: !3459, line: 19, baseType: !404, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3458, file: !3459, line: 19, baseType: !404, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3458, file: !3459, line: 19, baseType: !404, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3458, file: !3459, line: 19, baseType: !404, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3458, file: !3459, line: 20, baseType: !404, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3458, file: !3459, line: 20, baseType: !404, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3458, file: !3459, line: 20, baseType: !404, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3458, file: !3459, line: 20, baseType: !404, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3458, file: !3459, line: 20, baseType: !404, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3458, file: !3459, line: 20, baseType: !404, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3454, file: !344, line: 436, baseType: !381, size: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3454, file: !344, line: 440, baseType: !406, size: 16, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3454, file: !344, line: 441, baseType: !406, size: 16, offset: 272)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3454, file: !344, line: 442, baseType: !406, size: 16, offset: 288)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3454, file: !344, line: 443, baseType: !406, size: 16, offset: 304)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3454, file: !344, line: 447, baseType: !381, size: 64, offset: 320)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3454, file: !344, line: 448, baseType: !381, size: 64, offset: 384)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3454, file: !344, line: 459, baseType: !3482, size: 256, offset: 448)
!3482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3483, size: 256, elements: !1072)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !344, line: 428, flags: DIFlagFwdDecl)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3454, file: !344, line: 461, baseType: !381, size: 64, offset: 704)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3454, file: !344, line: 463, baseType: !381, size: 64, offset: 768)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3454, file: !344, line: 465, baseType: !381, size: 64, offset: 832)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3454, file: !344, line: 466, baseType: !381, size: 64, offset: 896)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3454, file: !344, line: 467, baseType: !381, size: 64, offset: 960)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3454, file: !344, line: 473, baseType: !3491, size: 64, offset: 1024)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !344, line: 10, flags: DIFlagFwdDecl)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3454, file: !344, line: 480, baseType: !381, size: 64, offset: 1088)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3454, file: !344, line: 482, baseType: !202, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3454, file: !344, line: 491, baseType: !422, size: 32, offset: 1184)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3454, file: !344, line: 501, baseType: !3497, size: 33792, offset: 1536)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3498, line: 448, size: 33792, elements: !3499)
!3498 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3499 = !{!3500, !3501, !3502, !3664, !3665, !3671, !3672}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3497, file: !3498, line: 461, baseType: !202, size: 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3497, file: !3498, line: 468, baseType: !381, size: 64, offset: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3497, file: !3498, line: 476, baseType: !3503, size: 64, offset: 128)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3498, line: 356, size: 33280, align: 512, elements: !3505)
!3505 = !{!3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3504, file: !3498, line: 358, baseType: !202, size: 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3504, file: !3498, line: 361, baseType: !202, size: 32, offset: 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3504, file: !3498, line: 364, baseType: !399, size: 64, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3504, file: !3498, line: 367, baseType: !399, size: 64, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3504, file: !3498, line: 370, baseType: !399, size: 64, offset: 192)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3504, file: !3498, line: 373, baseType: !202, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3504, file: !3498, line: 376, baseType: !202, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3504, file: !3498, line: 391, baseType: !202, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3504, file: !3498, line: 394, baseType: !202, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3504, file: !3498, line: 397, baseType: !3516, size: 32768, offset: 512)
!3516 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3498, line: 348, size: 32768, elements: !3517)
!3517 = !{!3518, !3533, !3570, !3647, !3660}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3516, file: !3498, line: 349, baseType: !3519, size: 896)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3498, line: 12, size: 896, elements: !3520)
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3532}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3519, file: !3498, line: 13, baseType: !422, size: 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3519, file: !3498, line: 14, baseType: !422, size: 32, offset: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3519, file: !3498, line: 15, baseType: !422, size: 32, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3519, file: !3498, line: 16, baseType: !422, size: 32, offset: 96)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3519, file: !3498, line: 17, baseType: !422, size: 32, offset: 128)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3519, file: !3498, line: 18, baseType: !422, size: 32, offset: 160)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3519, file: !3498, line: 19, baseType: !422, size: 32, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3519, file: !3498, line: 22, baseType: !3529, size: 640, offset: 224)
!3529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 640, elements: !3530)
!3530 = !{!3531}
!3531 = !DISubrange(count: 20)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3519, file: !3498, line: 25, baseType: !422, size: 32, offset: 864)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3516, file: !3498, line: 350, baseType: !3534, size: 4096, align: 128)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3498, line: 34, size: 4096, align: 128, elements: !3535)
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3555, !3556, !3557, !3559, !3561, !3565}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3534, file: !3498, line: 35, baseType: !404, size: 16)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3534, file: !3498, line: 36, baseType: !404, size: 16, offset: 16)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3534, file: !3498, line: 37, baseType: !404, size: 16, offset: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3534, file: !3498, line: 38, baseType: !404, size: 16, offset: 48)
!3540 = !DIDerivedType(tag: DW_TAG_member, scope: !3534, file: !3498, line: 39, baseType: !3541, size: 128, offset: 64)
!3541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3534, file: !3498, line: 39, size: 128, elements: !3542)
!3542 = !{!3543, !3548}
!3543 = !DIDerivedType(tag: DW_TAG_member, scope: !3541, file: !3498, line: 40, baseType: !3544, size: 128)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3541, file: !3498, line: 40, size: 128, elements: !3545)
!3545 = !{!3546, !3547}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3544, file: !3498, line: 41, baseType: !399, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3544, file: !3498, line: 42, baseType: !399, size: 64, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, scope: !3541, file: !3498, line: 44, baseType: !3549, size: 128)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3541, file: !3498, line: 44, size: 128, elements: !3550)
!3550 = !{!3551, !3552, !3553, !3554}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3549, file: !3498, line: 45, baseType: !422, size: 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3549, file: !3498, line: 46, baseType: !422, size: 32, offset: 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3549, file: !3498, line: 47, baseType: !422, size: 32, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3549, file: !3498, line: 48, baseType: !422, size: 32, offset: 96)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3534, file: !3498, line: 51, baseType: !422, size: 32, offset: 192)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3534, file: !3498, line: 52, baseType: !422, size: 32, offset: 224)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3534, file: !3498, line: 55, baseType: !3558, size: 1024, offset: 256)
!3558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 1024, elements: !666)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3534, file: !3498, line: 58, baseType: !3560, size: 2048, offset: 1280)
!3560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 2048, elements: !389)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3534, file: !3498, line: 60, baseType: !3562, size: 384, offset: 3328)
!3562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 384, elements: !3563)
!3563 = !{!3564}
!3564 = !DISubrange(count: 12)
!3565 = !DIDerivedType(tag: DW_TAG_member, scope: !3534, file: !3498, line: 62, baseType: !3566, size: 384, offset: 3712)
!3566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3534, file: !3498, line: 62, size: 384, elements: !3567)
!3567 = !{!3568, !3569}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3566, file: !3498, line: 63, baseType: !3562, size: 384)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3566, file: !3498, line: 64, baseType: !3562, size: 384)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3516, file: !3498, line: 351, baseType: !3571, size: 1088)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3498, line: 79, size: 1088, elements: !3572)
!3572 = !{!3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3646}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3571, file: !3498, line: 80, baseType: !422, size: 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3571, file: !3498, line: 81, baseType: !422, size: 32, offset: 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3571, file: !3498, line: 82, baseType: !422, size: 32, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3571, file: !3498, line: 83, baseType: !422, size: 32, offset: 96)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3571, file: !3498, line: 84, baseType: !422, size: 32, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3571, file: !3498, line: 85, baseType: !422, size: 32, offset: 160)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3571, file: !3498, line: 86, baseType: !422, size: 32, offset: 192)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3571, file: !3498, line: 88, baseType: !3529, size: 640, offset: 224)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3571, file: !3498, line: 89, baseType: !424, size: 8, offset: 864)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3571, file: !3498, line: 90, baseType: !424, size: 8, offset: 872)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3571, file: !3498, line: 91, baseType: !424, size: 8, offset: 880)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3571, file: !3498, line: 92, baseType: !424, size: 8, offset: 888)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3571, file: !3498, line: 93, baseType: !424, size: 8, offset: 896)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3571, file: !3498, line: 94, baseType: !424, size: 8, offset: 904)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3571, file: !3498, line: 95, baseType: !3588, size: 64, offset: 960)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3590, line: 11, size: 128, elements: !3591)
!3590 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3591 = !{!3592, !3593}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3589, file: !3590, line: 12, baseType: !546, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3589, file: !3590, line: 13, baseType: !3594, size: 64, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3596, line: 103, size: 1344, elements: !3597)
!3596 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3597 = !{!3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3626, !3627, !3628}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3595, file: !3596, line: 109, baseType: !381, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3595, file: !3596, line: 110, baseType: !381, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3595, file: !3596, line: 111, baseType: !381, size: 64, offset: 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3595, file: !3596, line: 112, baseType: !381, size: 64, offset: 192)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3595, file: !3596, line: 113, baseType: !381, size: 64, offset: 256)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3595, file: !3596, line: 114, baseType: !381, size: 64, offset: 320)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3595, file: !3596, line: 117, baseType: !381, size: 64, offset: 384)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3595, file: !3596, line: 118, baseType: !381, size: 64, offset: 448)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3595, file: !3596, line: 119, baseType: !381, size: 64, offset: 512)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3595, file: !3596, line: 120, baseType: !381, size: 64, offset: 576)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3595, file: !3596, line: 121, baseType: !381, size: 64, offset: 640)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3595, file: !3596, line: 122, baseType: !381, size: 64, offset: 704)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3595, file: !3596, line: 123, baseType: !381, size: 64, offset: 768)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3595, file: !3596, line: 124, baseType: !381, size: 64, offset: 832)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3595, file: !3596, line: 125, baseType: !381, size: 64, offset: 896)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3595, file: !3596, line: 139, baseType: !381, size: 64, offset: 960)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3595, file: !3596, line: 142, baseType: !381, size: 64, offset: 1024)
!3615 = !DIDerivedType(tag: DW_TAG_member, scope: !3595, file: !3596, line: 144, baseType: !3616, size: 64, offset: 1088)
!3616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3595, file: !3596, line: 144, size: 64, elements: !3617)
!3617 = !{!3618, !3619, !3620}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3616, file: !3596, line: 146, baseType: !404, size: 16)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3616, file: !3596, line: 148, baseType: !399, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3616, file: !3596, line: 150, baseType: !3621, size: 64)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3596, line: 59, size: 64, elements: !3622)
!3622 = !{!3623, !3624, !3625}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3621, file: !3596, line: 61, baseType: !399, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3621, file: !3596, line: 63, baseType: !399, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3621, file: !3596, line: 65, baseType: !399, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3595, file: !3596, line: 153, baseType: !381, size: 64, offset: 1152)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3595, file: !3596, line: 154, baseType: !381, size: 64, offset: 1216)
!3628 = !DIDerivedType(tag: DW_TAG_member, scope: !3595, file: !3596, line: 156, baseType: !3629, size: 64, offset: 1280)
!3629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3595, file: !3596, line: 156, size: 64, elements: !3630)
!3630 = !{!3631, !3632, !3633}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3629, file: !3596, line: 158, baseType: !404, size: 16)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3629, file: !3596, line: 160, baseType: !399, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3629, file: !3596, line: 162, baseType: !3634, size: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3596, line: 69, size: 64, elements: !3635)
!3635 = !{!3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3634, file: !3596, line: 71, baseType: !399, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3634, file: !3596, line: 73, baseType: !399, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3634, file: !3596, line: 75, baseType: !399, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3634, file: !3596, line: 77, baseType: !399, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3634, file: !3596, line: 80, baseType: !399, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3634, file: !3596, line: 83, baseType: !399, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3634, file: !3596, line: 86, baseType: !399, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3634, file: !3596, line: 88, baseType: !399, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3634, file: !3596, line: 93, baseType: !399, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3634, file: !3596, line: 100, baseType: !399, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3571, file: !3498, line: 96, baseType: !422, size: 32, offset: 1024)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3516, file: !3498, line: 352, baseType: !3648, size: 4608, align: 512)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3498, line: 333, size: 4608, align: 512, elements: !3649)
!3649 = !{!3650, !3651, !3658}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3648, file: !3498, line: 334, baseType: !3534, size: 4096, align: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3648, file: !3498, line: 335, baseType: !3652, size: 512, offset: 4096)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3498, line: 312, size: 512, elements: !3653)
!3653 = !{!3654, !3655, !3656}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3652, file: !3498, line: 313, baseType: !399, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3652, file: !3498, line: 314, baseType: !399, size: 64, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3652, file: !3498, line: 315, baseType: !3657, size: 384, offset: 128)
!3657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 384, elements: !2077)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3648, file: !3498, line: 336, baseType: !3659, offset: 4608)
!3659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, elements: !1994)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3516, file: !3498, line: 353, baseType: !3661, size: 32768)
!3661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 32768, elements: !3662)
!3662 = !{!3663}
!3663 = !DISubrange(count: 4096)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3497, file: !3498, line: 484, baseType: !3503, size: 64, offset: 192)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3497, file: !3498, line: 491, baseType: !3666, size: 128, offset: 256)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3498, line: 404, size: 128, elements: !3667)
!3667 = !{!3668, !3669, !3670}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3666, file: !3498, line: 424, baseType: !399, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3666, file: !3498, line: 432, baseType: !202, size: 32, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3666, file: !3498, line: 440, baseType: !202, size: 32, offset: 96)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3497, file: !3498, line: 498, baseType: !3666, size: 128, offset: 384)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3497, file: !3498, line: 508, baseType: !3504, size: 33280, align: 512, offset: 512)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1587, file: !1588, line: 16, baseType: !1597, size: 192, offset: 512)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1587, file: !1588, line: 17, baseType: !470, size: 32, offset: 704)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !736, file: !214, line: 1240, baseType: !341, size: 64, offset: 6912)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !736, file: !214, line: 1243, baseType: !422, size: 32, offset: 6976)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !736, file: !214, line: 1245, baseType: !1344, size: 64, offset: 7040)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !736, file: !214, line: 1246, baseType: !1344, size: 64, offset: 7104)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !736, file: !214, line: 1248, baseType: !360, size: 32, offset: 7168)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !736, file: !214, line: 1249, baseType: !3681, size: 64, offset: 7232)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !214, line: 634, flags: DIFlagFwdDecl)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !736, file: !214, line: 1252, baseType: !3684, size: 256, offset: 7296)
!3684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 256, elements: !666)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !736, file: !214, line: 1253, baseType: !3686, size: 128, offset: 7552)
!3686 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3687, line: 21, baseType: !3688)
!3687 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3687, line: 19, size: 128, elements: !3689)
!3689 = !{!3690}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3688, file: !3687, line: 20, baseType: !3691, size: 128)
!3691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 128, elements: !385)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !736, file: !214, line: 1255, baseType: !202, size: 32, offset: 7680)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !736, file: !214, line: 1261, baseType: !844, size: 256, offset: 7744)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !736, file: !214, line: 1267, baseType: !434, size: 64, offset: 8000)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !736, file: !214, line: 1269, baseType: !682, size: 64, offset: 8064)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !736, file: !214, line: 1271, baseType: !3697, size: 448, offset: 8128)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1353, line: 63, size: 448, elements: !3698)
!3698 = !{!3699, !3704, !3705, !3706, !3707, !3708, !3709}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3697, file: !1353, line: 64, baseType: !3700, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!381, !3703, !1351}
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3697, file: !1353, line: 66, baseType: !3700, size: 64, offset: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3697, file: !1353, line: 69, baseType: !546, size: 64, offset: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3697, file: !1353, line: 70, baseType: !7, size: 32, offset: 192)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3697, file: !1353, line: 71, baseType: !202, size: 32, offset: 224)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3697, file: !1353, line: 74, baseType: !437, size: 128, offset: 256)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3697, file: !1353, line: 85, baseType: !3710, size: 64, offset: 384)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !736, file: !214, line: 1274, baseType: !848, size: 64, offset: 8576)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !736, file: !214, line: 1280, baseType: !848, size: 64, offset: 8640)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !736, file: !214, line: 1283, baseType: !7, size: 32, offset: 8704)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !736, file: !214, line: 1286, baseType: !2657, size: 32, offset: 8736)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !736, file: !214, line: 1289, baseType: !1164, size: 64, offset: 8768)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !736, file: !214, line: 1290, baseType: !1212, size: 64, offset: 8832)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !736, file: !214, line: 1297, baseType: !2171, size: 64, offset: 8896)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !736, file: !214, line: 1304, baseType: !3719, size: 64, offset: 8960)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3720, line: 49, size: 64, elements: !3721)
!3720 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3721 = !{!3722}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3719, file: !3720, line: 50, baseType: !3723, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3720, line: 41, size: 512, align: 512, elements: !3725)
!3725 = !{!3726, !3727, !3732}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3724, file: !3720, line: 43, baseType: !450, size: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3724, file: !3720, line: 45, baseType: !3728, size: 192, offset: 64)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3720, line: 29, size: 192, elements: !3729)
!3729 = !{!3730, !3731}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3728, file: !3720, line: 30, baseType: !437, size: 128)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3728, file: !3720, line: 32, baseType: !546, size: 64, offset: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3724, file: !3720, line: 46, baseType: !546, size: 64, offset: 256)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !736, file: !214, line: 1305, baseType: !3719, size: 64, offset: 9024)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !736, file: !214, line: 1306, baseType: !1062, size: 128, align: 64, offset: 9088)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !736, file: !214, line: 1307, baseType: !1102, size: 256, offset: 9216)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !736, file: !214, line: 1309, baseType: !844, size: 256, offset: 9472)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !736, file: !214, line: 1314, baseType: !7, size: 32, offset: 9728)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !736, file: !214, line: 1317, baseType: !450, size: 32, align: 512, offset: 10240)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !736, file: !214, line: 1318, baseType: !437, size: 128, offset: 10304)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !736, file: !214, line: 1320, baseType: !450, size: 32, offset: 10432)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !736, file: !214, line: 1321, baseType: !437, size: 128, offset: 10496)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !730, file: !731, line: 73, baseType: !7, size: 32, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !730, file: !731, line: 74, baseType: !3744, size: 64, offset: 192)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !2018, line: 42, flags: DIFlagFwdDecl)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !684, file: !626, line: 141, baseType: !3748, size: 64, offset: 704)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!7, !1414, !418}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !684, file: !626, line: 142, baseType: !3752, size: 64, offset: 768)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!624, !624, !3755}
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !625, file: !626, line: 96, baseType: !735, size: 64, offset: 832)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !625, file: !626, line: 97, baseType: !381, size: 64, offset: 896)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !625, file: !626, line: 98, baseType: !341, size: 64, offset: 960)
!3760 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !626, line: 100, baseType: !3761, size: 128, offset: 1024)
!3761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !625, file: !626, line: 100, size: 128, elements: !3762)
!3762 = !{!3763, !3764}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3761, file: !626, line: 101, baseType: !437, size: 128)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3761, file: !626, line: 102, baseType: !3765, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !625, file: !626, line: 104, baseType: !437, size: 128, offset: 1152)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !625, file: !626, line: 105, baseType: !437, size: 128, offset: 1280)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !625, file: !626, line: 113, baseType: !3769, size: 128, offset: 1408)
!3769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !625, file: !626, line: 109, size: 128, elements: !3770)
!3770 = !{!3771, !3772, !3773}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3769, file: !626, line: 110, baseType: !1088, size: 128)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3769, file: !626, line: 111, baseType: !640, size: 128)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3769, file: !626, line: 112, baseType: !1062, size: 128, align: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !618, file: !214, line: 1968, baseType: !3775, size: 64, offset: 64)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!434, !624, !589, !3778}
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3780, line: 10, size: 128, elements: !3781)
!3780 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3781 = !{!3782, !3783}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3779, file: !3780, line: 11, baseType: !887, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3779, file: !3780, line: 12, baseType: !341, size: 64, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !618, file: !214, line: 1969, baseType: !3785, size: 64, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!7, !3744, !589, !7}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !618, file: !214, line: 1970, baseType: !3789, size: 64, offset: 192)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!612, !589, !7, !418}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !618, file: !214, line: 1972, baseType: !3793, size: 64, offset: 256)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!7, !624, !512, !7}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !618, file: !214, line: 1974, baseType: !3797, size: 64, offset: 320)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!7, !3744, !589, !624, !552, !418}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !618, file: !214, line: 1976, baseType: !3801, size: 64, offset: 384)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!7, !624, !589, !624}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !618, file: !214, line: 1977, baseType: !3805, size: 64, offset: 448)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!7, !589, !624}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !618, file: !214, line: 1978, baseType: !3809, size: 64, offset: 512)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!7, !3744, !589, !624, !434}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !618, file: !214, line: 1980, baseType: !3813, size: 64, offset: 576)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!7, !3744, !589, !624, !552}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !618, file: !214, line: 1982, baseType: !3805, size: 64, offset: 640)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !618, file: !214, line: 1983, baseType: !3818, size: 64, offset: 704)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!7, !3744, !589, !624, !552, !740}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !618, file: !214, line: 1985, baseType: !3822, size: 64, offset: 768)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!7, !3744, !589, !624, !589, !624, !202}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !618, file: !214, line: 1987, baseType: !3826, size: 64, offset: 832)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!7, !3744, !624, !3829}
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !214, line: 226, size: 640, elements: !3831)
!3831 = !{!3832, !3833, !3834, !3844, !3853, !3854, !3859, !3860, !3861}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3830, file: !214, line: 227, baseType: !202, size: 32)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3830, file: !214, line: 228, baseType: !552, size: 16, offset: 32)
!3834 = !DIDerivedType(tag: DW_TAG_member, scope: !3830, file: !214, line: 241, baseType: !3835, size: 32, offset: 64)
!3835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3830, file: !214, line: 241, size: 32, elements: !3836)
!3836 = !{!3837, !3838}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3835, file: !214, line: 242, baseType: !595, size: 32)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3835, file: !214, line: 243, baseType: !3839, size: 32)
!3839 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3840, line: 16, baseType: !3841)
!3840 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3840, line: 14, size: 32, elements: !3842)
!3842 = !{!3843}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3841, file: !3840, line: 15, baseType: !600, size: 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, scope: !3830, file: !214, line: 245, baseType: !3845, size: 32, offset: 96)
!3845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3830, file: !214, line: 245, size: 32, elements: !3846)
!3846 = !{!3847, !3848}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3845, file: !214, line: 246, baseType: !604, size: 32)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3845, file: !214, line: 247, baseType: !3849, size: 32)
!3849 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3840, line: 20, baseType: !3850)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3840, line: 18, size: 32, elements: !3851)
!3851 = !{!3852}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3850, file: !3840, line: 19, baseType: !608, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3830, file: !214, line: 249, baseType: !745, size: 64, offset: 128)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3830, file: !214, line: 250, baseType: !3855, size: 128, offset: 192)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1345, line: 13, size: 128, elements: !3856)
!3856 = !{!3857, !3858}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3855, file: !1345, line: 14, baseType: !1344, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3855, file: !1345, line: 15, baseType: !546, size: 64, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3830, file: !214, line: 251, baseType: !3855, size: 128, offset: 320)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3830, file: !214, line: 252, baseType: !3855, size: 128, offset: 448)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3830, file: !214, line: 259, baseType: !1934, size: 64, offset: 576)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !618, file: !214, line: 1988, baseType: !3863, size: 64, offset: 896)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!7, !3744, !1414, !3866, !422, !202}
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3868, line: 22, size: 1280, elements: !3869)
!3868 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3869 = !{!3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3867, file: !3868, line: 23, baseType: !422, size: 32)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3867, file: !3868, line: 24, baseType: !552, size: 16, offset: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3867, file: !3868, line: 25, baseType: !202, size: 32, offset: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3867, file: !3868, line: 26, baseType: !2056, size: 32, offset: 96)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3867, file: !3868, line: 27, baseType: !399, size: 64, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3867, file: !3868, line: 28, baseType: !399, size: 64, offset: 192)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3867, file: !3868, line: 41, baseType: !399, size: 64, offset: 256)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3867, file: !3868, line: 42, baseType: !740, size: 32, offset: 320)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3867, file: !3868, line: 43, baseType: !740, size: 32, offset: 352)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3867, file: !3868, line: 44, baseType: !595, size: 32, offset: 384)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3867, file: !3868, line: 45, baseType: !604, size: 32, offset: 416)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3867, file: !3868, line: 46, baseType: !745, size: 64, offset: 448)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3867, file: !3868, line: 47, baseType: !3855, size: 128, offset: 512)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3867, file: !3868, line: 48, baseType: !3855, size: 128, offset: 640)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3867, file: !3868, line: 49, baseType: !3855, size: 128, offset: 768)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3867, file: !3868, line: 50, baseType: !3855, size: 128, offset: 896)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3867, file: !3868, line: 51, baseType: !399, size: 64, offset: 1024)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3867, file: !3868, line: 52, baseType: !399, size: 64, offset: 1088)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3867, file: !3868, line: 53, baseType: !422, size: 32, offset: 1152)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3867, file: !3868, line: 54, baseType: !422, size: 32, offset: 1184)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3867, file: !3868, line: 55, baseType: !399, size: 64, offset: 1216)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !618, file: !214, line: 1990, baseType: !3892, size: 64, offset: 960)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!542, !624, !512, !557}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !618, file: !214, line: 1991, baseType: !3896, size: 64, offset: 1024)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!7, !589, !3899, !399, !399}
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !214, line: 55, flags: DIFlagFwdDecl)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !618, file: !214, line: 1993, baseType: !3902, size: 64, offset: 1088)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!7, !589, !7}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !618, file: !214, line: 1994, baseType: !3906, size: 64, offset: 1152)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!7, !589, !624, !1934, !202, !552}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !618, file: !214, line: 1997, baseType: !3910, size: 64, offset: 1216)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!7, !3744, !589, !1934, !552}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !618, file: !214, line: 1999, baseType: !3914, size: 64, offset: 1280)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!612, !3744, !624, !7}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !618, file: !214, line: 2001, baseType: !3918, size: 64, offset: 1344)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!7, !3744, !624, !612, !7}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !618, file: !214, line: 2003, baseType: !3922, size: 64, offset: 1408)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!7, !3744, !624, !3925}
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !214, line: 76, flags: DIFlagFwdDecl)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !618, file: !214, line: 2005, baseType: !3928, size: 64, offset: 1472)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!7, !624, !3925}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !618, file: !214, line: 2006, baseType: !3932, size: 64, offset: 1536)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!3935, !589}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !214, line: 3192, size: 192, elements: !3937)
!3937 = !{!3938, !3945}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3936, file: !214, line: 3193, baseType: !3939, size: 128)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3940, line: 296, size: 128, elements: !3941)
!3940 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3941 = !{!3942, !3943, !3944}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3939, file: !3940, line: 297, baseType: !450, size: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3939, file: !3940, line: 299, baseType: !1356, size: 32, offset: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3939, file: !3940, line: 300, baseType: !341, size: 64, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3936, file: !214, line: 3194, baseType: !422, size: 32, offset: 128)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !590, file: !214, line: 655, baseType: !735, size: 64, offset: 448)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !590, file: !214, line: 656, baseType: !585, size: 64, offset: 512)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !590, file: !214, line: 659, baseType: !341, size: 64, offset: 576)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !590, file: !214, line: 663, baseType: !381, size: 64, offset: 640)
!3950 = !DIDerivedType(tag: DW_TAG_member, scope: !590, file: !214, line: 671, baseType: !3951, size: 32, offset: 704)
!3951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !590, file: !214, line: 671, size: 32, elements: !3952)
!3952 = !{!3953, !3955}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3951, file: !214, line: 672, baseType: !3954, size: 32)
!3954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3951, file: !214, line: 673, baseType: !202, size: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !590, file: !214, line: 675, baseType: !740, size: 32, offset: 736)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !590, file: !214, line: 676, baseType: !745, size: 64, offset: 768)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !590, file: !214, line: 677, baseType: !3855, size: 128, offset: 832)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !590, file: !214, line: 678, baseType: !3855, size: 128, offset: 960)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !590, file: !214, line: 679, baseType: !3855, size: 128, offset: 1088)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !590, file: !214, line: 680, baseType: !450, size: 32, offset: 1216)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !590, file: !214, line: 681, baseType: !406, size: 16, offset: 1248)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !590, file: !214, line: 682, baseType: !424, size: 8, offset: 1264)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !590, file: !214, line: 683, baseType: !424, size: 8, offset: 1272)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !590, file: !214, line: 684, baseType: !1492, size: 64, offset: 1280)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !590, file: !214, line: 691, baseType: !381, size: 64, offset: 1344)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !590, file: !214, line: 692, baseType: !1504, size: 320, offset: 1408)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !590, file: !214, line: 694, baseType: !381, size: 64, offset: 1728)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !590, file: !214, line: 695, baseType: !381, size: 64, offset: 1792)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !590, file: !214, line: 697, baseType: !1088, size: 128, offset: 1856)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !590, file: !214, line: 698, baseType: !437, size: 128, offset: 1984)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !590, file: !214, line: 707, baseType: !437, size: 128, offset: 2112)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !590, file: !214, line: 708, baseType: !437, size: 128, offset: 2240)
!3974 = !DIDerivedType(tag: DW_TAG_member, scope: !590, file: !214, line: 709, baseType: !3975, size: 128, offset: 2368)
!3975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !590, file: !214, line: 709, size: 128, elements: !3976)
!3976 = !{!3977, !3978}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3975, file: !214, line: 710, baseType: !1212, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3975, file: !214, line: 711, baseType: !1062, size: 128, align: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !590, file: !214, line: 713, baseType: !850, size: 64, offset: 2496)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !590, file: !214, line: 714, baseType: !850, size: 64, offset: 2560)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !590, file: !214, line: 715, baseType: !470, size: 32, offset: 2624)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !590, file: !214, line: 716, baseType: !470, size: 32, offset: 2656)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !590, file: !214, line: 717, baseType: !470, size: 32, offset: 2688)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !590, file: !214, line: 719, baseType: !470, size: 32, offset: 2720)
!3985 = !DIDerivedType(tag: DW_TAG_member, scope: !590, file: !214, line: 721, baseType: !3986, size: 64, offset: 2752)
!3986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !590, file: !214, line: 721, size: 64, elements: !3987)
!3987 = !{!3988, !3989}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3986, file: !214, line: 722, baseType: !2202, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3986, file: !214, line: 723, baseType: !1235, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !590, file: !214, line: 725, baseType: !3991, size: 64, offset: 2816)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !214, line: 725, flags: DIFlagFwdDecl)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !590, file: !214, line: 726, baseType: !586, size: 1536, align: 64, offset: 2880)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !590, file: !214, line: 727, baseType: !437, size: 128, offset: 4416)
!3995 = !DIDerivedType(tag: DW_TAG_member, scope: !590, file: !214, line: 728, baseType: !3996, size: 64, offset: 4544)
!3996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !590, file: !214, line: 728, size: 64, elements: !3997)
!3997 = !{!3998, !3999, !4002, !4003}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3996, file: !214, line: 729, baseType: !2607, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3996, file: !214, line: 730, baseType: !4000, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !214, line: 730, flags: DIFlagFwdDecl)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3996, file: !214, line: 731, baseType: !512, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3996, file: !214, line: 732, baseType: !202, size: 32)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !590, file: !214, line: 735, baseType: !360, size: 32, offset: 4608)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !590, file: !214, line: 738, baseType: !360, size: 32, offset: 4640)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !590, file: !214, line: 739, baseType: !3681, size: 64, offset: 4672)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !590, file: !214, line: 750, baseType: !341, size: 64, offset: 4736)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !586, file: !214, line: 474, baseType: !3939, size: 128, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !586, file: !214, line: 475, baseType: !1504, size: 320, offset: 192)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !586, file: !214, line: 476, baseType: !1356, size: 32, offset: 512)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !586, file: !214, line: 477, baseType: !470, size: 32, offset: 544)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !586, file: !214, line: 482, baseType: !1790, size: 128, offset: 576)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !586, file: !214, line: 483, baseType: !381, size: 64, offset: 704)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !586, file: !214, line: 484, baseType: !381, size: 64, offset: 768)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !586, file: !214, line: 485, baseType: !4016, size: 64, offset: 832)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4018)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !214, line: 404, size: 1280, elements: !4019)
!4019 = !{!4020, !4024, !4094, !4098, !4102, !4108, !4113, !4117, !4122, !4126, !4130, !4134, !4135, !4139, !4143, !4147, !4152, !4156, !4163, !4164}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4018, file: !214, line: 405, baseType: !4021, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!7, !2394, !1247}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4018, file: !214, line: 406, baseType: !4025, size: 64, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!7, !1934, !4028}
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !238, line: 293, size: 1536, elements: !4030)
!4030 = !{!4031, !4061, !4075}
!4031 = !DIDerivedType(tag: DW_TAG_member, scope: !4029, file: !238, line: 295, baseType: !4032, size: 512)
!4032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4029, file: !238, line: 295, size: 512, elements: !4033)
!4033 = !{!4034, !4060}
!4034 = !DIDerivedType(tag: DW_TAG_member, scope: !4032, file: !238, line: 296, baseType: !4035, size: 448)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4032, file: !238, line: 296, size: 448, elements: !4036)
!4036 = !{!4037, !4038, !4047, !4048, !4049, !4058, !4059}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4035, file: !238, line: 298, baseType: !381, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, scope: !4035, file: !238, line: 299, baseType: !4039, size: 128, offset: 64)
!4039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4035, file: !238, line: 299, size: 128, elements: !4040)
!4040 = !{!4041, !4042}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4039, file: !238, line: 300, baseType: !437, size: 128)
!4042 = !DIDerivedType(tag: DW_TAG_member, scope: !4039, file: !238, line: 302, baseType: !4043, size: 128)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4039, file: !238, line: 302, size: 128, elements: !4044)
!4044 = !{!4045, !4046}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4043, file: !238, line: 303, baseType: !341, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4043, file: !238, line: 305, baseType: !202, size: 32, offset: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4035, file: !238, line: 310, baseType: !585, size: 64, offset: 192)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4035, file: !238, line: 311, baseType: !381, size: 64, offset: 256)
!4049 = !DIDerivedType(tag: DW_TAG_member, scope: !4035, file: !238, line: 312, baseType: !4050, size: 64, offset: 320)
!4050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4035, file: !238, line: 312, size: 64, elements: !4051)
!4051 = !{!4052, !4053}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4050, file: !238, line: 313, baseType: !341, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4050, file: !238, line: 314, baseType: !4054, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !238, line: 257, baseType: !4055)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 255, size: 64, elements: !4056)
!4056 = !{!4057}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4055, file: !238, line: 256, baseType: !381, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4035, file: !238, line: 316, baseType: !470, size: 32, offset: 384)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4035, file: !238, line: 317, baseType: !470, size: 32, offset: 416)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4032, file: !238, line: 323, baseType: !2395, size: 512, align: 128)
!4061 = !DIDerivedType(tag: DW_TAG_member, scope: !4029, file: !238, line: 325, baseType: !4062, size: 512, offset: 512)
!4062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4029, file: !238, line: 325, size: 512, elements: !4063)
!4063 = !{!4064, !4074}
!4064 = !DIDerivedType(tag: DW_TAG_member, scope: !4062, file: !238, line: 326, baseType: !4065, size: 320)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4062, file: !238, line: 326, size: 320, elements: !4066)
!4066 = !{!4067, !4068, !4069, !4070, !4071, !4072, !4073}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4065, file: !238, line: 327, baseType: !381, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4065, file: !238, line: 328, baseType: !381, size: 64, offset: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4065, file: !238, line: 329, baseType: !381, size: 64, offset: 128)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4065, file: !238, line: 331, baseType: !470, size: 32, offset: 192)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4065, file: !238, line: 332, baseType: !470, size: 32, offset: 224)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4065, file: !238, line: 333, baseType: !470, size: 32, offset: 256)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4065, file: !238, line: 335, baseType: !202, size: 32, offset: 288)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4062, file: !238, line: 339, baseType: !2395, size: 512, align: 128)
!4075 = !DIDerivedType(tag: DW_TAG_member, scope: !4029, file: !238, line: 341, baseType: !4076, size: 512, offset: 1024)
!4076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4029, file: !238, line: 341, size: 512, elements: !4077)
!4077 = !{!4078, !4087, !4093}
!4078 = !DIDerivedType(tag: DW_TAG_member, scope: !4076, file: !238, line: 342, baseType: !4079, size: 384)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4076, file: !238, line: 342, size: 384, elements: !4080)
!4080 = !{!4081, !4082, !4083, !4084, !4085, !4086}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4079, file: !238, line: 343, baseType: !381, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4079, file: !238, line: 344, baseType: !381, size: 64, offset: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4079, file: !238, line: 346, baseType: !341, size: 64, offset: 128)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4079, file: !238, line: 347, baseType: !341, size: 64, offset: 192)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4079, file: !238, line: 348, baseType: !341, size: 64, offset: 256)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4079, file: !238, line: 349, baseType: !341, size: 64, offset: 320)
!4087 = !DIDerivedType(tag: DW_TAG_member, scope: !4076, file: !238, line: 352, baseType: !4088, size: 256)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4076, file: !238, line: 352, size: 256, elements: !4089)
!4089 = !{!4090, !4091, !4092}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4088, file: !238, line: 353, baseType: !381, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4088, file: !238, line: 354, baseType: !381, size: 64, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4088, file: !238, line: 356, baseType: !437, size: 128, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4076, file: !238, line: 359, baseType: !2395, size: 512, align: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4018, file: !214, line: 409, baseType: !4095, size: 64, offset: 128)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!7, !585, !1247}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4018, file: !214, line: 412, baseType: !4099, size: 64, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!418, !585, !4028}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4018, file: !214, line: 414, baseType: !4103, size: 64, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{null, !4106}
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !214, line: 310, flags: DIFlagFwdDecl)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4018, file: !214, line: 416, baseType: !4109, size: 64, offset: 320)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!7, !1934, !585, !745, !202, !4112, !2622}
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4018, file: !214, line: 419, baseType: !4114, size: 64, offset: 384)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!7, !1934, !585, !745, !202, !202, !2394, !341}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4018, file: !214, line: 424, baseType: !4118, size: 64, offset: 448)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!4121, !585, !4121}
!4121 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !419, line: 131, baseType: !399)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4018, file: !214, line: 425, baseType: !4123, size: 64, offset: 512)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{null, !4028, !557, !557}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4018, file: !214, line: 426, baseType: !4127, size: 64, offset: 576)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!418, !4028, !1356}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4018, file: !214, line: 427, baseType: !4131, size: 64, offset: 640)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{null, !4028}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4018, file: !214, line: 428, baseType: !2221, size: 64, offset: 704)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4018, file: !214, line: 433, baseType: !4136, size: 64, offset: 768)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!7, !585, !4028, !4028, !274}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4018, file: !214, line: 435, baseType: !4140, size: 64, offset: 832)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!7, !4028}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4018, file: !214, line: 436, baseType: !4144, size: 64, offset: 896)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!418, !4028, !557, !557}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4018, file: !214, line: 438, baseType: !4148, size: 64, offset: 960)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{null, !4028, !4151, !4151}
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4018, file: !214, line: 439, baseType: !4153, size: 64, offset: 1024)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!7, !585, !2394}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4018, file: !214, line: 442, baseType: !4157, size: 64, offset: 1088)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!7, !4160, !1934, !4162}
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !214, line: 66, flags: DIFlagFwdDecl)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4018, file: !214, line: 444, baseType: !2614, size: 64, offset: 1152)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4018, file: !214, line: 445, baseType: !4165, size: 64, offset: 1216)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!7, !2224, !2246}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !586, file: !214, line: 486, baseType: !381, size: 64, offset: 896)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !586, file: !214, line: 487, baseType: !1504, size: 320, offset: 960)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !586, file: !214, line: 488, baseType: !2657, size: 32, offset: 1280)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !586, file: !214, line: 489, baseType: !450, size: 32, offset: 1312)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !586, file: !214, line: 490, baseType: !437, size: 128, offset: 1344)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !586, file: !214, line: 491, baseType: !341, size: 64, offset: 1472)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !576, file: !536, line: 180, baseType: !4175, size: 64, offset: 320)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!542, !1934, !443, !575, !512, !745, !557}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !576, file: !536, line: 182, baseType: !4175, size: 64, offset: 384)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !576, file: !536, line: 184, baseType: !4180, size: 64, offset: 448)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!7, !1934, !443, !575, !2285}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !564, file: !536, line: 90, baseType: !4184, size: 64, offset: 192)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !564, file: !536, line: 91, baseType: !4186, size: 64, offset: 256)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !526, file: !431, line: 120, baseType: !4188, size: 64, offset: 192)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!4191, !495}
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4193)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !282, line: 39, size: 384, elements: !4194)
!4194 = !{!4195, !4196, !4200, !4204, !4210, !4214}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4193, file: !282, line: 40, baseType: !281, size: 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4193, file: !282, line: 41, baseType: !4197, size: 64, offset: 64)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!418}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4193, file: !282, line: 42, baseType: !4201, size: 64, offset: 128)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!341}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4193, file: !282, line: 43, baseType: !4205, size: 64, offset: 192)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!2746, !4208}
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !282, line: 19, flags: DIFlagFwdDecl)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4193, file: !282, line: 44, baseType: !4211, size: 64, offset: 256)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!2746}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4193, file: !282, line: 45, baseType: !887, size: 64, offset: 320)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !526, file: !431, line: 121, baseType: !4216, size: 64, offset: 256)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!2746, !495}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !526, file: !431, line: 122, baseType: !4220, size: 64, offset: 320)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{null, !495, !4223, !4224}
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !430, file: !431, line: 70, baseType: !4226, size: 64, offset: 384)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4228, line: 190, size: 1152, elements: !4229)
!4228 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4229 = !{!4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4321, !4322, !4323, !4324, !4325, !4328}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4227, file: !4228, line: 191, baseType: !470, size: 32)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4227, file: !4228, line: 192, baseType: !470, size: 32, offset: 32)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4227, file: !4228, line: 202, baseType: !4226, size: 64, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4227, file: !4228, line: 203, baseType: !434, size: 64, offset: 128)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4227, file: !4228, line: 205, baseType: !954, size: 192, align: 64, offset: 192)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4227, file: !4228, line: 207, baseType: !2746, size: 64, offset: 384)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4227, file: !4228, line: 208, baseType: !202, size: 32, offset: 448)
!4237 = !DIDerivedType(tag: DW_TAG_member, scope: !4227, file: !4228, line: 209, baseType: !4238, size: 256, offset: 512)
!4238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4227, file: !4228, line: 209, size: 256, elements: !4239)
!4239 = !{!4240, !4249, !4253}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4238, file: !4228, line: 210, baseType: !4241, size: 256)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4228, line: 153, size: 256, elements: !4242)
!4242 = !{!4243, !4244, !4245, !4248}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4241, file: !4228, line: 154, baseType: !381, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4241, file: !4228, line: 156, baseType: !1793, size: 64, offset: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4241, file: !4228, line: 162, baseType: !4246, size: 64, offset: 128)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4228, line: 162, flags: DIFlagFwdDecl)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4241, file: !4228, line: 167, baseType: !381, size: 64, offset: 192)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4238, file: !4228, line: 211, baseType: !4250, size: 64)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4228, line: 170, size: 64, elements: !4251)
!4251 = !{!4252}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4250, file: !4228, line: 171, baseType: !4226, size: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4238, file: !4228, line: 212, baseType: !4254, size: 256)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4228, line: 174, size: 256, elements: !4255)
!4255 = !{!4256, !4316, !4319, !4320}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4254, file: !4228, line: 175, baseType: !4257, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4259)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4228, line: 271, size: 768, elements: !4260)
!4260 = !{!4261, !4281, !4285, !4289, !4293, !4297, !4301, !4305, !4306, !4307, !4308, !4312}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4259, file: !4228, line: 276, baseType: !4262, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!7, !4265}
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4228, line: 251, size: 1216, elements: !4267)
!4267 = !{!4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4266, file: !4228, line: 253, baseType: !4226, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4266, file: !4228, line: 254, baseType: !1934, size: 64, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4266, file: !4228, line: 255, baseType: !1284, size: 64, offset: 128)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4266, file: !4228, line: 256, baseType: !341, size: 64, offset: 192)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4266, file: !4228, line: 259, baseType: !844, size: 256, offset: 256)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4266, file: !4228, line: 260, baseType: !844, size: 256, offset: 512)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4266, file: !4228, line: 261, baseType: !7, size: 32, offset: 768)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4266, file: !4228, line: 262, baseType: !437, size: 128, offset: 832)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4266, file: !4228, line: 263, baseType: !512, size: 64, offset: 960)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4266, file: !4228, line: 265, baseType: !557, size: 64, offset: 1024)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4266, file: !4228, line: 266, baseType: !418, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4266, file: !4228, line: 267, baseType: !418, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4266, file: !4228, line: 268, baseType: !2330, size: 64, offset: 1152)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4259, file: !4228, line: 277, baseType: !4282, size: 64, offset: 64)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{null, !4265}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4259, file: !4228, line: 290, baseType: !4286, size: 64, offset: 128)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!7, !1284, !341}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4259, file: !4228, line: 292, baseType: !4290, size: 64, offset: 192)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!341, !1284, !2215}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4259, file: !4228, line: 293, baseType: !4294, size: 64, offset: 256)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!341, !1284, !341, !2215}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4259, file: !4228, line: 294, baseType: !4298, size: 64, offset: 320)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{null, !1284, !341}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4259, file: !4228, line: 296, baseType: !4302, size: 64, offset: 384)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!542, !4265, !512, !557, !745}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4259, file: !4228, line: 306, baseType: !557, size: 64, offset: 448)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4259, file: !4228, line: 313, baseType: !418, size: 8, offset: 512)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4259, file: !4228, line: 314, baseType: !4302, size: 64, offset: 576)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4259, file: !4228, line: 317, baseType: !4309, size: 64, offset: 640)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!2272, !4265, !2274}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4259, file: !4228, line: 320, baseType: !4313, size: 64, offset: 704)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!7, !4265, !2285}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4254, file: !4228, line: 176, baseType: !4317, size: 64, offset: 64)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4228, line: 35, flags: DIFlagFwdDecl)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4254, file: !4228, line: 177, baseType: !745, size: 64, offset: 128)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4254, file: !4228, line: 178, baseType: !4226, size: 64, offset: 192)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4227, file: !4228, line: 215, baseType: !341, size: 64, offset: 768)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4227, file: !4228, line: 221, baseType: !399, size: 64, offset: 832)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4227, file: !4228, line: 223, baseType: !406, size: 16, offset: 896)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4227, file: !4228, line: 224, baseType: !552, size: 16, offset: 912)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4227, file: !4228, line: 225, baseType: !4326, size: 64, offset: 960)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4228, line: 36, flags: DIFlagFwdDecl)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4227, file: !4228, line: 227, baseType: !1062, size: 128, align: 64, offset: 1024)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !430, file: !431, line: 71, baseType: !4330, size: 32, offset: 448)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4331, line: 19, size: 32, elements: !4332)
!4331 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4332 = !{!4333}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4330, file: !4331, line: 20, baseType: !1624, size: 32)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !430, file: !431, line: 73, baseType: !202, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !430, file: !431, line: 74, baseType: !202, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !430, file: !431, line: 75, baseType: !202, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !430, file: !431, line: 76, baseType: !202, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !430, file: !431, line: 77, baseType: !202, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !427, file: !294, line: 707, baseType: !426, size: 64, offset: 512)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !427, file: !294, line: 709, baseType: !4341, size: 64, offset: 576)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !294, line: 37, flags: DIFlagFwdDecl)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !427, file: !294, line: 711, baseType: !434, size: 64, offset: 640)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !427, file: !294, line: 712, baseType: !4345, size: 64, offset: 704)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4347)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !294, line: 89, size: 384, elements: !4348)
!4348 = !{!4349, !4350, !4351, !4357, !4362, !4366}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4347, file: !294, line: 90, baseType: !434, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4347, file: !294, line: 91, baseType: !561, size: 64, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4347, file: !294, line: 92, baseType: !4352, size: 64, offset: 128)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!7, !4355, !507}
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4347, file: !294, line: 93, baseType: !4358, size: 64, offset: 192)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!512, !4355, !4361, !4223, !4224}
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4347, file: !294, line: 95, baseType: !4363, size: 64, offset: 256)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{null, !426}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4347, file: !294, line: 97, baseType: !4367, size: 64, offset: 320)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4369)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !301, line: 286, size: 1472, elements: !4370)
!4370 = !{!4371, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4369, file: !301, line: 287, baseType: !4372, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!7, !426}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4369, file: !301, line: 288, baseType: !4363, size: 64, offset: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4369, file: !301, line: 289, baseType: !4372, size: 64, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4369, file: !301, line: 290, baseType: !4372, size: 64, offset: 192)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4369, file: !301, line: 291, baseType: !4372, size: 64, offset: 256)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4369, file: !301, line: 292, baseType: !4372, size: 64, offset: 320)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4369, file: !301, line: 293, baseType: !4372, size: 64, offset: 384)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4369, file: !301, line: 294, baseType: !4372, size: 64, offset: 448)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4369, file: !301, line: 295, baseType: !4372, size: 64, offset: 512)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4369, file: !301, line: 296, baseType: !4372, size: 64, offset: 576)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4369, file: !301, line: 297, baseType: !4372, size: 64, offset: 640)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4369, file: !301, line: 298, baseType: !4372, size: 64, offset: 704)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4369, file: !301, line: 299, baseType: !4372, size: 64, offset: 768)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4369, file: !301, line: 300, baseType: !4372, size: 64, offset: 832)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4369, file: !301, line: 301, baseType: !4372, size: 64, offset: 896)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4369, file: !301, line: 302, baseType: !4372, size: 64, offset: 960)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4369, file: !301, line: 303, baseType: !4372, size: 64, offset: 1024)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4369, file: !301, line: 304, baseType: !4372, size: 64, offset: 1088)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4369, file: !301, line: 305, baseType: !4372, size: 64, offset: 1152)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4369, file: !301, line: 306, baseType: !4372, size: 64, offset: 1216)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4369, file: !301, line: 307, baseType: !4372, size: 64, offset: 1280)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4369, file: !301, line: 308, baseType: !4372, size: 64, offset: 1344)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4369, file: !301, line: 309, baseType: !4372, size: 64, offset: 1408)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !427, file: !294, line: 714, baseType: !4398, size: 64, offset: 768)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4400)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4401, line: 80, size: 1344, elements: !4402)
!4401 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4402 = !{!4403, !4404, !4405, !4406, !4407, !4408, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4466}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4400, file: !4401, line: 81, baseType: !434, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4400, file: !4401, line: 82, baseType: !434, size: 64, offset: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4400, file: !4401, line: 83, baseType: !561, size: 64, offset: 128)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4400, file: !4401, line: 84, baseType: !561, size: 64, offset: 192)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4400, file: !4401, line: 85, baseType: !561, size: 64, offset: 256)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4400, file: !4401, line: 87, baseType: !4409, size: 64, offset: 320)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{!7, !426, !4412}
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !288, line: 96, size: 1152, elements: !4414)
!4414 = !{!4415, !4416, !4417, !4418, !4419, !4420, !4421, !4425, !4429, !4430, !4431, !4432, !4433, !4441, !4442, !4443, !4444, !4445, !4446}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4413, file: !288, line: 97, baseType: !434, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4413, file: !288, line: 98, baseType: !4398, size: 64, offset: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4413, file: !288, line: 100, baseType: !773, size: 64, offset: 128)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4413, file: !288, line: 101, baseType: !434, size: 64, offset: 192)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4413, file: !288, line: 103, baseType: !418, size: 8, offset: 256)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4413, file: !288, line: 104, baseType: !287, size: 32, offset: 288)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4413, file: !288, line: 106, baseType: !4422, size: 64, offset: 320)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4424)
!4424 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !288, line: 106, flags: DIFlagFwdDecl)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4413, file: !288, line: 107, baseType: !4426, size: 64, offset: 384)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4428)
!4428 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !288, line: 107, flags: DIFlagFwdDecl)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4413, file: !288, line: 109, baseType: !4372, size: 64, offset: 448)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4413, file: !288, line: 110, baseType: !4363, size: 64, offset: 512)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4413, file: !288, line: 111, baseType: !4372, size: 64, offset: 576)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4413, file: !288, line: 112, baseType: !4363, size: 64, offset: 640)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4413, file: !288, line: 113, baseType: !4434, size: 64, offset: 704)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!7, !426, !4437}
!4437 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !301, line: 60, baseType: !4438)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !301, line: 58, size: 32, elements: !4439)
!4439 = !{!4440}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4438, file: !301, line: 59, baseType: !7, size: 32)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4413, file: !288, line: 114, baseType: !4372, size: 64, offset: 768)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4413, file: !288, line: 115, baseType: !561, size: 64, offset: 832)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4413, file: !288, line: 116, baseType: !561, size: 64, offset: 896)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4413, file: !288, line: 118, baseType: !4367, size: 64, offset: 960)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4413, file: !288, line: 119, baseType: !4363, size: 64, offset: 1024)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4413, file: !288, line: 121, baseType: !4447, size: 64, offset: 1088)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !288, line: 121, flags: DIFlagFwdDecl)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4400, file: !4401, line: 88, baseType: !4352, size: 64, offset: 384)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4400, file: !4401, line: 89, baseType: !4372, size: 64, offset: 448)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4400, file: !4401, line: 90, baseType: !4363, size: 64, offset: 512)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4400, file: !4401, line: 91, baseType: !4363, size: 64, offset: 576)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4400, file: !4401, line: 92, baseType: !4363, size: 64, offset: 640)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4400, file: !4401, line: 94, baseType: !4372, size: 64, offset: 704)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4400, file: !4401, line: 95, baseType: !4372, size: 64, offset: 768)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4400, file: !4401, line: 97, baseType: !4434, size: 64, offset: 832)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4400, file: !4401, line: 98, baseType: !4372, size: 64, offset: 896)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4400, file: !4401, line: 100, baseType: !4372, size: 64, offset: 960)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4400, file: !4401, line: 102, baseType: !4372, size: 64, offset: 1024)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4400, file: !4401, line: 103, baseType: !4363, size: 64, offset: 1088)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4400, file: !4401, line: 105, baseType: !4367, size: 64, offset: 1152)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4400, file: !4401, line: 107, baseType: !4463, size: 64, offset: 1216)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4465)
!4465 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4401, line: 107, flags: DIFlagFwdDecl)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4400, file: !4401, line: 109, baseType: !418, size: 8, offset: 1280)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !427, file: !294, line: 715, baseType: !4412, size: 64, offset: 832)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !427, file: !294, line: 717, baseType: !341, size: 64, offset: 896)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !427, file: !294, line: 719, baseType: !341, size: 64, offset: 960)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !427, file: !294, line: 721, baseType: !844, size: 256, offset: 1024)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !427, file: !294, line: 725, baseType: !4472, size: 448, offset: 1280)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !294, line: 517, size: 448, elements: !4473)
!4473 = !{!4474, !4475, !4476, !4477}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4472, file: !294, line: 518, baseType: !437, size: 128)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4472, file: !294, line: 519, baseType: !437, size: 128, offset: 128)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4472, file: !294, line: 520, baseType: !437, size: 128, offset: 256)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4472, file: !294, line: 521, baseType: !293, size: 32, offset: 384)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !427, file: !294, line: 726, baseType: !4479, size: 2496, offset: 1728)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !301, line: 663, size: 2496, elements: !4480)
!4480 = !{!4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4563, !4567}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4479, file: !301, line: 664, baseType: !4437, size: 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4479, file: !301, line: 665, baseType: !202, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4479, file: !301, line: 666, baseType: !202, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4479, file: !301, line: 667, baseType: !418, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4479, file: !301, line: 668, baseType: !418, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4479, file: !301, line: 669, baseType: !418, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4479, file: !301, line: 670, baseType: !418, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4479, file: !301, line: 671, baseType: !418, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4479, file: !301, line: 672, baseType: !418, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4479, file: !301, line: 673, baseType: !418, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4479, file: !301, line: 674, baseType: !418, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4479, file: !301, line: 675, baseType: !422, size: 32, offset: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4479, file: !301, line: 676, baseType: !450, size: 32, offset: 96)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4479, file: !301, line: 678, baseType: !437, size: 128, offset: 128)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4479, file: !301, line: 679, baseType: !793, size: 256, offset: 256)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4479, file: !301, line: 680, baseType: !4497, size: 64, offset: 512)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4499, line: 43, size: 1536, elements: !4500)
!4499 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4500 = !{!4501, !4502, !4503, !4504, !4505, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4498, file: !4499, line: 44, baseType: !434, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4498, file: !4499, line: 45, baseType: !7, size: 32, offset: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4498, file: !4499, line: 46, baseType: !437, size: 128, offset: 128)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4498, file: !4499, line: 47, baseType: !450, size: 32, offset: 256)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4498, file: !4499, line: 48, baseType: !4506, size: 64, offset: 320)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !301, line: 629, flags: DIFlagFwdDecl)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4498, file: !4499, line: 49, baseType: !1084, size: 320, offset: 384)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4498, file: !4499, line: 50, baseType: !381, size: 64, offset: 704)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4498, file: !4499, line: 51, baseType: !1739, size: 64, offset: 768)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4498, file: !4499, line: 52, baseType: !1739, size: 64, offset: 832)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4498, file: !4499, line: 53, baseType: !1739, size: 64, offset: 896)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4498, file: !4499, line: 54, baseType: !1739, size: 64, offset: 960)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4498, file: !4499, line: 55, baseType: !1739, size: 64, offset: 1024)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4498, file: !4499, line: 56, baseType: !381, size: 64, offset: 1088)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4498, file: !4499, line: 57, baseType: !381, size: 64, offset: 1152)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4498, file: !4499, line: 58, baseType: !381, size: 64, offset: 1216)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4498, file: !4499, line: 59, baseType: !381, size: 64, offset: 1280)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4498, file: !4499, line: 60, baseType: !381, size: 64, offset: 1344)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4498, file: !4499, line: 61, baseType: !426, size: 64, offset: 1408)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4498, file: !4499, line: 62, baseType: !418, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4498, file: !4499, line: 63, baseType: !418, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4479, file: !301, line: 681, baseType: !418, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4479, file: !301, line: 682, baseType: !418, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4479, file: !301, line: 683, baseType: !418, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4479, file: !301, line: 684, baseType: !202, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4479, file: !301, line: 685, baseType: !202, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4479, file: !301, line: 690, baseType: !1731, size: 512, offset: 640)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4479, file: !301, line: 691, baseType: !399, size: 64, offset: 1152)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4479, file: !301, line: 692, baseType: !1102, size: 256, offset: 1216)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4479, file: !301, line: 693, baseType: !1597, size: 192, offset: 1472)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4479, file: !301, line: 694, baseType: !4506, size: 64, offset: 1664)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4479, file: !301, line: 695, baseType: !470, size: 32, offset: 1728)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4479, file: !301, line: 696, baseType: !470, size: 32, offset: 1760)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4479, file: !301, line: 697, baseType: !202, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4479, file: !301, line: 698, baseType: !202, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4479, file: !301, line: 699, baseType: !202, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4479, file: !301, line: 700, baseType: !202, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4479, file: !301, line: 701, baseType: !202, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4479, file: !301, line: 702, baseType: !202, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4479, file: !301, line: 703, baseType: !418, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4479, file: !301, line: 704, baseType: !202, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4479, file: !301, line: 705, baseType: !202, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4479, file: !301, line: 706, baseType: !202, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4479, file: !301, line: 707, baseType: !202, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4479, file: !301, line: 708, baseType: !202, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4479, file: !301, line: 709, baseType: !202, size: 32, offset: 1824)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4479, file: !301, line: 710, baseType: !300, size: 32, offset: 1856)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4479, file: !301, line: 711, baseType: !308, size: 32, offset: 1888)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4479, file: !301, line: 712, baseType: !308, size: 32, offset: 1920)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4479, file: !301, line: 713, baseType: !7, size: 32, offset: 1952)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4479, file: !301, line: 714, baseType: !7, size: 32, offset: 1984)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4479, file: !301, line: 715, baseType: !399, size: 64, offset: 2048)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4479, file: !301, line: 716, baseType: !399, size: 64, offset: 2112)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4479, file: !301, line: 717, baseType: !399, size: 64, offset: 2176)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4479, file: !301, line: 718, baseType: !399, size: 64, offset: 2240)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4479, file: !301, line: 720, baseType: !4558, size: 64, offset: 2304)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !301, line: 632, size: 64, elements: !4560)
!4560 = !{!4561, !4562}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4559, file: !301, line: 633, baseType: !450, size: 32)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4559, file: !301, line: 634, baseType: !202, size: 32, offset: 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4479, file: !301, line: 721, baseType: !4564, size: 64, offset: 2368)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{null, !426, !840}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4479, file: !301, line: 722, baseType: !4568, size: 64, offset: 2432)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !301, line: 722, flags: DIFlagFwdDecl)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !427, file: !294, line: 727, baseType: !4571, size: 64, offset: 4224)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !301, line: 742, size: 1792, elements: !4573)
!4573 = !{!4574, !4575, !4576, !4580, !4581, !4582}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4572, file: !301, line: 743, baseType: !4369, size: 1472)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4572, file: !301, line: 744, baseType: !4372, size: 64, offset: 1472)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4572, file: !301, line: 745, baseType: !4577, size: 64, offset: 1536)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{null, !426, !418}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4572, file: !301, line: 746, baseType: !4372, size: 64, offset: 1600)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4572, file: !301, line: 747, baseType: !4363, size: 64, offset: 1664)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4572, file: !301, line: 748, baseType: !4363, size: 64, offset: 1728)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !427, file: !294, line: 736, baseType: !4584, size: 128, offset: 4288)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !294, line: 529, size: 128, elements: !4585)
!4585 = !{!4586, !4590}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4584, file: !294, line: 531, baseType: !4587, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4589, line: 13, flags: DIFlagFwdDecl)
!4589 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4584, file: !294, line: 532, baseType: !4591, size: 64, offset: 64)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !294, line: 49, flags: DIFlagFwdDecl)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !427, file: !294, line: 738, baseType: !4594, size: 64, offset: 4416)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4596)
!4596 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !294, line: 738, flags: DIFlagFwdDecl)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !427, file: !294, line: 740, baseType: !4598, size: 64, offset: 4480)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !427, file: !294, line: 741, baseType: !399, size: 64, offset: 4544)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !427, file: !294, line: 746, baseType: !399, size: 64, offset: 4608)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !427, file: !294, line: 747, baseType: !4602, size: 64, offset: 4672)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4604)
!4604 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !294, line: 747, flags: DIFlagFwdDecl)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !427, file: !294, line: 749, baseType: !4606, size: 64, offset: 4736)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !294, line: 428, size: 128, elements: !4608)
!4608 = !{!4609, !4610, !4611}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4607, file: !294, line: 433, baseType: !202, size: 32)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4607, file: !294, line: 434, baseType: !202, size: 32, offset: 32)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4607, file: !294, line: 435, baseType: !381, size: 64, offset: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !427, file: !294, line: 751, baseType: !437, size: 128, offset: 4800)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !427, file: !294, line: 762, baseType: !4614, size: 64, offset: 4928)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !294, line: 762, flags: DIFlagFwdDecl)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !427, file: !294, line: 770, baseType: !4617, offset: 4992)
!4617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4618, line: 5, elements: !1131)
!4618 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !427, file: !294, line: 772, baseType: !4620, size: 64, offset: 4992)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4622, line: 18, flags: DIFlagFwdDecl)
!4622 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !427, file: !294, line: 773, baseType: !4624, size: 64, offset: 5056)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4401, line: 22, flags: DIFlagFwdDecl)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !427, file: !294, line: 776, baseType: !7, size: 32, offset: 5120)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !427, file: !294, line: 778, baseType: !740, size: 32, offset: 5152)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !427, file: !294, line: 779, baseType: !422, size: 32, offset: 5184)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !427, file: !294, line: 781, baseType: !450, size: 32, offset: 5216)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !427, file: !294, line: 782, baseType: !437, size: 128, offset: 5248)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !427, file: !294, line: 784, baseType: !4632, size: 64, offset: 5376)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4634)
!4634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4635, line: 52, size: 768, elements: !4636)
!4635 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4636 = !{!4637, !4638, !4639, !4640, !4641, !4645, !4649, !4650, !4651, !4652, !4656, !4660}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4634, file: !4635, line: 53, baseType: !434, size: 64)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4634, file: !4635, line: 55, baseType: !561, size: 64, offset: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4634, file: !4635, line: 56, baseType: !561, size: 64, offset: 128)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4634, file: !4635, line: 58, baseType: !4352, size: 64, offset: 192)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4634, file: !4635, line: 59, baseType: !4642, size: 64, offset: 256)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!512, !4355, !4361}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4634, file: !4635, line: 61, baseType: !4646, size: 64, offset: 320)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{null, !4632}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4634, file: !4635, line: 62, baseType: !4363, size: 64, offset: 384)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4634, file: !4635, line: 64, baseType: !4372, size: 64, offset: 448)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4634, file: !4635, line: 66, baseType: !4191, size: 64, offset: 512)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4634, file: !4635, line: 67, baseType: !4653, size: 64, offset: 576)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!2746, !4355}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4634, file: !4635, line: 69, baseType: !4657, size: 64, offset: 640)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{null, !4355, !4223, !4224}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4634, file: !4635, line: 71, baseType: !4367, size: 64, offset: 704)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !427, file: !294, line: 785, baseType: !561, size: 64, offset: 5440)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !427, file: !294, line: 787, baseType: !4363, size: 64, offset: 5504)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !427, file: !294, line: 788, baseType: !4664, size: 64, offset: 5568)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !294, line: 46, flags: DIFlagFwdDecl)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !427, file: !294, line: 789, baseType: !4667, size: 64, offset: 5632)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !294, line: 48, flags: DIFlagFwdDecl)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !427, file: !294, line: 791, baseType: !4670, size: 64, offset: 5696)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !294, line: 597, size: 128, elements: !4672)
!4672 = !{!4673, !4674, !4675, !4676, !4677}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4671, file: !294, line: 598, baseType: !315, size: 32)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4671, file: !294, line: 599, baseType: !324, size: 32, offset: 32)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4671, file: !294, line: 600, baseType: !329, size: 32, offset: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4671, file: !294, line: 601, baseType: !418, size: 8, offset: 96)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4671, file: !294, line: 602, baseType: !418, size: 8, offset: 104)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !427, file: !294, line: 793, baseType: !334, size: 32, offset: 5760)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !427, file: !294, line: 795, baseType: !418, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !427, file: !294, line: 796, baseType: !418, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !427, file: !294, line: 797, baseType: !418, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !427, file: !294, line: 798, baseType: !418, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !427, file: !294, line: 799, baseType: !418, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1854, line: 913, baseType: !4687)
!4687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1855, size: 64, elements: !1859)
!4688 = !{!0, !4689, !4694, !4699, !4701, !4704, !4718, !4720, !4723, !4726, !4728, !4731, !4734, !4736, !4741, !4743, !4745, !4747, !4752, !4757, !4759, !4764, !4766, !4768, !4770, !4775, !4777, !4782, !4784, !4789, !4791, !4794, !4796, !4801, !4803, !4805, !4807, !4809, !4811, !4813, !4815, !4817}
!4689 = !DIGlobalVariableExpression(var: !4690, expr: !DIExpression())
!4690 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !4691, isLocal: true, isDefinition: true)
!4691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 176, elements: !4692)
!4692 = !{!4693}
!4693 = !DISubrange(count: 22)
!4694 = !DIGlobalVariableExpression(var: !4695, expr: !DIExpression())
!4695 = distinct !DIGlobalVariable(scope: null, file: !3, line: 184, type: !4696, isLocal: true, isDefinition: true)
!4696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 72, elements: !4697)
!4697 = !{!4698}
!4698 = !DISubrange(count: 9)
!4699 = !DIGlobalVariableExpression(var: !4700, expr: !DIExpression())
!4700 = distinct !DIGlobalVariable(name: "topology_attr_group", scope: !2, file: !3, line: 180, type: !563, isLocal: true, isDefinition: true)
!4701 = !DIGlobalVariableExpression(var: !4702, expr: !DIExpression())
!4702 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !4703, isLocal: true, isDefinition: true)
!4703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 40, elements: !365)
!4704 = !DIGlobalVariableExpression(var: !4705, expr: !DIExpression())
!4705 = distinct !DIGlobalVariable(name: "dev_attr_ppin", scope: !2, file: !3, line: 78, type: !4706, isLocal: true, isDefinition: true)
!4706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !294, line: 106, size: 256, elements: !4707)
!4707 = !{!4708, !4709, !4714}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4706, file: !294, line: 107, baseType: !548, size: 128)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4706, file: !294, line: 108, baseType: !4710, size: 64, offset: 128)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!542, !426, !4713, !512}
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4706, file: !294, line: 110, baseType: !4715, size: 64, offset: 192)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!542, !426, !4713, !434, !557}
!4718 = !DIGlobalVariableExpression(var: !4719, expr: !DIExpression())
!4719 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !3242, isLocal: true, isDefinition: true)
!4720 = !DIGlobalVariableExpression(var: !4721, expr: !DIExpression())
!4721 = distinct !DIGlobalVariable(name: "default_attrs", scope: !2, file: !3, line: 152, type: !4722, isLocal: true, isDefinition: true)
!4722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 384, elements: !2077)
!4723 = !DIGlobalVariableExpression(var: !4724, expr: !DIExpression())
!4724 = distinct !DIGlobalVariable(scope: null, file: !3, line: 62, type: !4725, isLocal: true, isDefinition: true)
!4725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 160, elements: !3530)
!4726 = !DIGlobalVariableExpression(var: !4727, expr: !DIExpression())
!4727 = distinct !DIGlobalVariable(name: "dev_attr_physical_package_id", scope: !2, file: !3, line: 62, type: !4706, isLocal: true, isDefinition: true)
!4728 = !DIGlobalVariableExpression(var: !4729, expr: !DIExpression())
!4729 = distinct !DIGlobalVariable(scope: null, file: !3, line: 61, type: !4730, isLocal: true, isDefinition: true)
!4730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 32, elements: !1072)
!4731 = !DIGlobalVariableExpression(var: !4732, expr: !DIExpression())
!4732 = distinct !DIGlobalVariable(scope: null, file: !3, line: 66, type: !4733, isLocal: true, isDefinition: true)
!4733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 56, elements: !963)
!4734 = !DIGlobalVariableExpression(var: !4735, expr: !DIExpression())
!4735 = distinct !DIGlobalVariable(name: "dev_attr_die_id", scope: !2, file: !3, line: 66, type: !4706, isLocal: true, isDefinition: true)
!4736 = !DIGlobalVariableExpression(var: !4737, expr: !DIExpression())
!4737 = distinct !DIGlobalVariable(scope: null, file: !3, line: 71, type: !4738, isLocal: true, isDefinition: true)
!4738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 88, elements: !4739)
!4739 = !{!4740}
!4740 = !DISubrange(count: 11)
!4741 = !DIGlobalVariableExpression(var: !4742, expr: !DIExpression())
!4742 = distinct !DIGlobalVariable(name: "dev_attr_cluster_id", scope: !2, file: !3, line: 71, type: !4706, isLocal: true, isDefinition: true)
!4743 = !DIGlobalVariableExpression(var: !4744, expr: !DIExpression())
!4744 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !3242, isLocal: true, isDefinition: true)
!4745 = !DIGlobalVariableExpression(var: !4746, expr: !DIExpression())
!4746 = distinct !DIGlobalVariable(name: "dev_attr_core_id", scope: !2, file: !3, line: 75, type: !4706, isLocal: true, isDefinition: true)
!4747 = !DIGlobalVariableExpression(var: !4748, expr: !DIExpression())
!4748 = distinct !DIGlobalVariable(name: "bin_attrs", scope: !2, file: !3, line: 124, type: !4749, isLocal: true, isDefinition: true)
!4749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 832, elements: !4750)
!4750 = !{!4751}
!4751 = !DISubrange(count: 13)
!4752 = !DIGlobalVariableExpression(var: !4753, expr: !DIExpression())
!4753 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !4754, isLocal: true, isDefinition: true)
!4754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 80, elements: !4755)
!4755 = !{!4756}
!4756 = !DISubrange(count: 10)
!4757 = !DIGlobalVariableExpression(var: !4758, expr: !DIExpression())
!4758 = distinct !DIGlobalVariable(name: "bin_attr_core_cpus", scope: !2, file: !3, line: 85, type: !576, isLocal: true, isDefinition: true)
!4759 = !DIGlobalVariableExpression(var: !4760, expr: !DIExpression())
!4760 = distinct !DIGlobalVariable(scope: null, file: !3, line: 86, type: !4761, isLocal: true, isDefinition: true)
!4761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 120, elements: !4762)
!4762 = !{!4763}
!4763 = !DISubrange(count: 15)
!4764 = !DIGlobalVariableExpression(var: !4765, expr: !DIExpression())
!4765 = distinct !DIGlobalVariable(name: "bin_attr_core_cpus_list", scope: !2, file: !3, line: 86, type: !576, isLocal: true, isDefinition: true)
!4766 = !DIGlobalVariableExpression(var: !4767, expr: !DIExpression())
!4767 = distinct !DIGlobalVariable(scope: null, file: !3, line: 81, type: !383, isLocal: true, isDefinition: true)
!4768 = !DIGlobalVariableExpression(var: !4769, expr: !DIExpression())
!4769 = distinct !DIGlobalVariable(name: "bin_attr_thread_siblings", scope: !2, file: !3, line: 81, type: !576, isLocal: true, isDefinition: true)
!4770 = !DIGlobalVariableExpression(var: !4771, expr: !DIExpression())
!4771 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !4772, isLocal: true, isDefinition: true)
!4772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 168, elements: !4773)
!4773 = !{!4774}
!4774 = !DISubrange(count: 21)
!4775 = !DIGlobalVariableExpression(var: !4776, expr: !DIExpression())
!4776 = distinct !DIGlobalVariable(name: "bin_attr_thread_siblings_list", scope: !2, file: !3, line: 82, type: !576, isLocal: true, isDefinition: true)
!4777 = !DIGlobalVariableExpression(var: !4778, expr: !DIExpression())
!4778 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !4779, isLocal: true, isDefinition: true)
!4779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 112, elements: !4780)
!4780 = !{!4781}
!4781 = !DISubrange(count: 14)
!4782 = !DIGlobalVariableExpression(var: !4783, expr: !DIExpression())
!4783 = distinct !DIGlobalVariable(name: "bin_attr_core_siblings", scope: !2, file: !3, line: 89, type: !576, isLocal: true, isDefinition: true)
!4784 = !DIGlobalVariableExpression(var: !4785, expr: !DIExpression())
!4785 = distinct !DIGlobalVariable(scope: null, file: !3, line: 90, type: !4786, isLocal: true, isDefinition: true)
!4786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 152, elements: !4787)
!4787 = !{!4788}
!4788 = !DISubrange(count: 19)
!4789 = !DIGlobalVariableExpression(var: !4790, expr: !DIExpression())
!4790 = distinct !DIGlobalVariable(name: "bin_attr_core_siblings_list", scope: !2, file: !3, line: 90, type: !576, isLocal: true, isDefinition: true)
!4791 = !DIGlobalVariableExpression(var: !4792, expr: !DIExpression())
!4792 = distinct !DIGlobalVariable(scope: null, file: !3, line: 94, type: !4793, isLocal: true, isDefinition: true)
!4793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 104, elements: !4750)
!4794 = !DIGlobalVariableExpression(var: !4795, expr: !DIExpression())
!4795 = distinct !DIGlobalVariable(name: "bin_attr_cluster_cpus", scope: !2, file: !3, line: 94, type: !576, isLocal: true, isDefinition: true)
!4796 = !DIGlobalVariableExpression(var: !4797, expr: !DIExpression())
!4797 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !4798, isLocal: true, isDefinition: true)
!4798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 144, elements: !4799)
!4799 = !{!4800}
!4800 = !DISubrange(count: 18)
!4801 = !DIGlobalVariableExpression(var: !4802, expr: !DIExpression())
!4802 = distinct !DIGlobalVariable(name: "bin_attr_cluster_cpus_list", scope: !2, file: !3, line: 95, type: !576, isLocal: true, isDefinition: true)
!4803 = !DIGlobalVariableExpression(var: !4804, expr: !DIExpression())
!4804 = distinct !DIGlobalVariable(scope: null, file: !3, line: 100, type: !4696, isLocal: true, isDefinition: true)
!4805 = !DIGlobalVariableExpression(var: !4806, expr: !DIExpression())
!4806 = distinct !DIGlobalVariable(name: "bin_attr_die_cpus", scope: !2, file: !3, line: 100, type: !576, isLocal: true, isDefinition: true)
!4807 = !DIGlobalVariableExpression(var: !4808, expr: !DIExpression())
!4808 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !4779, isLocal: true, isDefinition: true)
!4809 = !DIGlobalVariableExpression(var: !4810, expr: !DIExpression())
!4810 = distinct !DIGlobalVariable(name: "bin_attr_die_cpus_list", scope: !2, file: !3, line: 101, type: !576, isLocal: true, isDefinition: true)
!4811 = !DIGlobalVariableExpression(var: !4812, expr: !DIExpression())
!4812 = distinct !DIGlobalVariable(scope: null, file: !3, line: 105, type: !4793, isLocal: true, isDefinition: true)
!4813 = !DIGlobalVariableExpression(var: !4814, expr: !DIExpression())
!4814 = distinct !DIGlobalVariable(name: "bin_attr_package_cpus", scope: !2, file: !3, line: 105, type: !576, isLocal: true, isDefinition: true)
!4815 = !DIGlobalVariableExpression(var: !4816, expr: !DIExpression())
!4816 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !4798, isLocal: true, isDefinition: true)
!4817 = !DIGlobalVariableExpression(var: !4818, expr: !DIExpression())
!4818 = distinct !DIGlobalVariable(name: "bin_attr_package_cpus_list", scope: !2, file: !3, line: 106, type: !576, isLocal: true, isDefinition: true)
!4819 = !{i32 7, !"Dwarf Version", i32 5}
!4820 = !{i32 2, !"Debug Info Version", i32 3}
!4821 = !{i32 1, !"wchar_size", i32 2}
!4822 = !{i32 8, !"cf-protection-branch", i32 1}
!4823 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4824 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4825 = !{i32 1, !"Code Model", i32 2}
!4826 = !{i32 1, !"override-stack-alignment", i32 8}
!4827 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4828 = distinct !DISubprogram(name: "__initstub__kmod_topology__287_210_topology_sysfs_init6", scope: !3, file: !3, line: 210, type: !936, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4829 = !DILocation(line: 210, column: 1, scope: !4828)
!4830 = distinct !DISubprogram(name: "topology_sysfs_init", scope: !3, file: !3, line: 203, type: !936, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4831 = !DILocation(line: 205, column: 9, scope: !4830)
!4832 = !DILocation(line: 205, column: 2, scope: !4830)
!4833 = distinct !DISubprogram(name: "cpuhp_setup_state", scope: !6, file: !6, line: 283, type: !4834, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4839)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!7, !5, !434, !4836, !4836}
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!7, !202}
!4839 = !{!4840, !4841, !4842, !4843}
!4840 = !DILocalVariable(name: "state", arg: 1, scope: !4833, file: !6, line: 283, type: !5)
!4841 = !DILocalVariable(name: "name", arg: 2, scope: !4833, file: !6, line: 284, type: !434)
!4842 = !DILocalVariable(name: "startup", arg: 3, scope: !4833, file: !6, line: 285, type: !4836)
!4843 = !DILocalVariable(name: "teardown", arg: 4, scope: !4833, file: !6, line: 286, type: !4836)
!4844 = !DILocation(line: 283, column: 54, scope: !4833)
!4845 = !DILocation(line: 284, column: 21, scope: !4833)
!4846 = !DILocation(line: 285, column: 15, scope: !4833)
!4847 = !DILocation(line: 286, column: 15, scope: !4833)
!4848 = !DILocation(line: 288, column: 29, scope: !4833)
!4849 = !DILocation(line: 288, column: 36, scope: !4833)
!4850 = !DILocation(line: 288, column: 48, scope: !4833)
!4851 = !DILocation(line: 288, column: 57, scope: !4833)
!4852 = !DILocation(line: 288, column: 9, scope: !4833)
!4853 = !DILocation(line: 288, column: 2, scope: !4833)
!4854 = distinct !DISubprogram(name: "topology_add_dev", scope: !3, file: !3, line: 188, type: !4837, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4855)
!4855 = !{!4856, !4857}
!4856 = !DILocalVariable(name: "cpu", arg: 1, scope: !4854, file: !3, line: 188, type: !202)
!4857 = !DILocalVariable(name: "dev", scope: !4854, file: !3, line: 190, type: !426)
!4858 = !DILocation(line: 188, column: 42, scope: !4854)
!4859 = !DILocation(line: 190, column: 2, scope: !4854)
!4860 = !DILocation(line: 190, column: 17, scope: !4854)
!4861 = !DILocation(line: 190, column: 38, scope: !4854)
!4862 = !DILocation(line: 190, column: 23, scope: !4854)
!4863 = !DILocation(line: 192, column: 29, scope: !4854)
!4864 = !DILocation(line: 192, column: 34, scope: !4854)
!4865 = !DILocation(line: 192, column: 9, scope: !4854)
!4866 = !DILocation(line: 193, column: 1, scope: !4854)
!4867 = !DILocation(line: 192, column: 2, scope: !4854)
!4868 = distinct !DISubprogram(name: "topology_remove_dev", scope: !3, file: !3, line: 195, type: !4837, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4869)
!4869 = !{!4870, !4871}
!4870 = !DILocalVariable(name: "cpu", arg: 1, scope: !4868, file: !3, line: 195, type: !202)
!4871 = !DILocalVariable(name: "dev", scope: !4868, file: !3, line: 197, type: !426)
!4872 = !DILocation(line: 195, column: 45, scope: !4868)
!4873 = !DILocation(line: 197, column: 2, scope: !4868)
!4874 = !DILocation(line: 197, column: 17, scope: !4868)
!4875 = !DILocation(line: 197, column: 38, scope: !4868)
!4876 = !DILocation(line: 197, column: 23, scope: !4868)
!4877 = !DILocation(line: 199, column: 22, scope: !4868)
!4878 = !DILocation(line: 199, column: 27, scope: !4868)
!4879 = !DILocation(line: 199, column: 2, scope: !4868)
!4880 = !DILocation(line: 201, column: 1, scope: !4868)
!4881 = !DILocation(line: 200, column: 2, scope: !4868)
!4882 = !DISubprogram(name: "__cpuhp_setup_state", scope: !6, file: !6, line: 263, type: !4883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!7, !5, !434, !418, !4836, !4836, !418}
!4885 = !DISubprogram(name: "get_cpu_device", scope: !4886, file: !4886, line: 39, type: !4887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4886 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!4887 = !DISubroutineType(types: !4888)
!4888 = !{!426, !202}
!4889 = !DISubprogram(name: "sysfs_create_group", scope: !536, file: !536, line: 307, type: !4890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!7, !443, !562}
!4892 = distinct !DISubprogram(name: "topology_is_visible", scope: !3, file: !3, line: 171, type: !569, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4893)
!4893 = !{!4894, !4895, !4896, !4897, !4901, !4903}
!4894 = !DILocalVariable(name: "kobj", arg: 1, scope: !4892, file: !3, line: 171, type: !443)
!4895 = !DILocalVariable(name: "attr", arg: 2, scope: !4892, file: !3, line: 172, type: !547)
!4896 = !DILocalVariable(name: "unused", arg: 3, scope: !4892, file: !3, line: 172, type: !7)
!4897 = !DILocalVariable(name: "__vpp_verify", scope: !4898, file: !3, line: 174, type: !2746)
!4898 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 174, column: 38)
!4899 = distinct !DILexicalBlock(scope: !4900, file: !3, line: 174, column: 38)
!4900 = distinct !DILexicalBlock(scope: !4892, file: !3, line: 174, column: 6)
!4901 = !DILocalVariable(name: "__ptr", scope: !4902, file: !3, line: 174, type: !381)
!4902 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 174, column: 38)
!4903 = !DILocalVariable(name: "__mptr", scope: !4904, file: !3, line: 174, type: !341)
!4904 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 174, column: 38)
!4905 = !DILocation(line: 171, column: 52, scope: !4892)
!4906 = !DILocation(line: 172, column: 26, scope: !4892)
!4907 = !DILocation(line: 172, column: 36, scope: !4892)
!4908 = !DILocation(line: 174, column: 6, scope: !4900)
!4909 = !DILocation(line: 174, column: 11, scope: !4900)
!4910 = !DILocation(line: 174, column: 34, scope: !4900)
!4911 = !DILocation(line: 174, column: 38, scope: !4899)
!4912 = !DILocation(line: 174, column: 38, scope: !4898)
!4913 = !DILocation(line: 174, column: 38, scope: !4902)
!4914 = !DILocation(line: 174, column: 38, scope: !4904)
!4915 = !DILocation(line: 174, column: 38, scope: !4900)
!4916 = !DILocation(line: 174, column: 6, scope: !4892)
!4917 = !DILocation(line: 175, column: 3, scope: !4900)
!4918 = !DILocation(line: 177, column: 9, scope: !4892)
!4919 = !DILocation(line: 177, column: 15, scope: !4892)
!4920 = !DILocation(line: 177, column: 2, scope: !4892)
!4921 = !DILocation(line: 178, column: 1, scope: !4892)
!4922 = distinct !DISubprogram(name: "ppin_show", scope: !3, file: !3, line: 77, type: !4711, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4923)
!4923 = !{!4924, !4925, !4926, !4927, !4930}
!4924 = !DILocalVariable(name: "dev", arg: 1, scope: !4922, file: !3, line: 77, type: !426)
!4925 = !DILocalVariable(name: "attr", arg: 2, scope: !4922, file: !3, line: 77, type: !4713)
!4926 = !DILocalVariable(name: "buf", arg: 3, scope: !4922, file: !3, line: 77, type: !512)
!4927 = !DILocalVariable(name: "__vpp_verify", scope: !4928, file: !3, line: 77, type: !2746)
!4928 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 77, column: 1)
!4929 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 77, column: 1)
!4930 = !DILocalVariable(name: "__ptr", scope: !4931, file: !3, line: 77, type: !381)
!4931 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 77, column: 1)
!4932 = !DILocation(line: 77, column: 1, scope: !4922)
!4933 = !DILocation(line: 77, column: 1, scope: !4929)
!4934 = !DILocation(line: 77, column: 1, scope: !4928)
!4935 = !DILocation(line: 77, column: 1, scope: !4931)
!4936 = !DISubprogram(name: "sysfs_emit", scope: !536, file: !536, line: 357, type: !4937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!7, !512, !434, null}
!4939 = distinct !DISubprogram(name: "physical_package_id_show", scope: !3, file: !3, line: 61, type: !4711, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4940)
!4940 = !{!4941, !4942, !4943, !4944, !4947}
!4941 = !DILocalVariable(name: "dev", arg: 1, scope: !4939, file: !3, line: 61, type: !426)
!4942 = !DILocalVariable(name: "attr", arg: 2, scope: !4939, file: !3, line: 61, type: !4713)
!4943 = !DILocalVariable(name: "buf", arg: 3, scope: !4939, file: !3, line: 61, type: !512)
!4944 = !DILocalVariable(name: "__vpp_verify", scope: !4945, file: !3, line: 61, type: !2746)
!4945 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 61, column: 1)
!4946 = distinct !DILexicalBlock(scope: !4939, file: !3, line: 61, column: 1)
!4947 = !DILocalVariable(name: "__ptr", scope: !4948, file: !3, line: 61, type: !381)
!4948 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 61, column: 1)
!4949 = !DILocation(line: 61, column: 1, scope: !4939)
!4950 = !DILocation(line: 61, column: 1, scope: !4946)
!4951 = !DILocation(line: 61, column: 1, scope: !4945)
!4952 = !DILocation(line: 61, column: 1, scope: !4948)
!4953 = distinct !DISubprogram(name: "die_id_show", scope: !3, file: !3, line: 65, type: !4711, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4954)
!4954 = !{!4955, !4956, !4957, !4958, !4961}
!4955 = !DILocalVariable(name: "dev", arg: 1, scope: !4953, file: !3, line: 65, type: !426)
!4956 = !DILocalVariable(name: "attr", arg: 2, scope: !4953, file: !3, line: 65, type: !4713)
!4957 = !DILocalVariable(name: "buf", arg: 3, scope: !4953, file: !3, line: 65, type: !512)
!4958 = !DILocalVariable(name: "__vpp_verify", scope: !4959, file: !3, line: 65, type: !2746)
!4959 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 65, column: 1)
!4960 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 65, column: 1)
!4961 = !DILocalVariable(name: "__ptr", scope: !4962, file: !3, line: 65, type: !381)
!4962 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 65, column: 1)
!4963 = !DILocation(line: 65, column: 1, scope: !4953)
!4964 = !DILocation(line: 65, column: 1, scope: !4960)
!4965 = !DILocation(line: 65, column: 1, scope: !4959)
!4966 = !DILocation(line: 65, column: 1, scope: !4962)
!4967 = distinct !DISubprogram(name: "cluster_id_show", scope: !3, file: !3, line: 70, type: !4711, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4968)
!4968 = !{!4969, !4970, !4971, !4972, !4975}
!4969 = !DILocalVariable(name: "dev", arg: 1, scope: !4967, file: !3, line: 70, type: !426)
!4970 = !DILocalVariable(name: "attr", arg: 2, scope: !4967, file: !3, line: 70, type: !4713)
!4971 = !DILocalVariable(name: "buf", arg: 3, scope: !4967, file: !3, line: 70, type: !512)
!4972 = !DILocalVariable(name: "__vpp_verify", scope: !4973, file: !3, line: 70, type: !2746)
!4973 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 70, column: 1)
!4974 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 70, column: 1)
!4975 = !DILocalVariable(name: "__ptr", scope: !4976, file: !3, line: 70, type: !381)
!4976 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 70, column: 1)
!4977 = !DILocation(line: 70, column: 1, scope: !4967)
!4978 = !DILocation(line: 70, column: 1, scope: !4974)
!4979 = !DILocation(line: 70, column: 1, scope: !4973)
!4980 = !DILocation(line: 70, column: 1, scope: !4976)
!4981 = distinct !DISubprogram(name: "core_id_show", scope: !3, file: !3, line: 74, type: !4711, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4982)
!4982 = !{!4983, !4984, !4985, !4986, !4989}
!4983 = !DILocalVariable(name: "dev", arg: 1, scope: !4981, file: !3, line: 74, type: !426)
!4984 = !DILocalVariable(name: "attr", arg: 2, scope: !4981, file: !3, line: 74, type: !4713)
!4985 = !DILocalVariable(name: "buf", arg: 3, scope: !4981, file: !3, line: 74, type: !512)
!4986 = !DILocalVariable(name: "__vpp_verify", scope: !4987, file: !3, line: 74, type: !2746)
!4987 = distinct !DILexicalBlock(scope: !4988, file: !3, line: 74, column: 1)
!4988 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 74, column: 1)
!4989 = !DILocalVariable(name: "__ptr", scope: !4990, file: !3, line: 74, type: !381)
!4990 = distinct !DILexicalBlock(scope: !4988, file: !3, line: 74, column: 1)
!4991 = !DILocation(line: 74, column: 1, scope: !4981)
!4992 = !DILocation(line: 74, column: 1, scope: !4988)
!4993 = !DILocation(line: 74, column: 1, scope: !4987)
!4994 = !DILocation(line: 74, column: 1, scope: !4990)
!4995 = distinct !DISubprogram(name: "core_cpus_read", scope: !3, file: !3, line: 84, type: !4176, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4996)
!4996 = !{!4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5006, !5007, !5008, !5011}
!4997 = !DILocalVariable(name: "file", arg: 1, scope: !4995, file: !3, line: 84, type: !1934)
!4998 = !DILocalVariable(name: "kobj", arg: 2, scope: !4995, file: !3, line: 84, type: !443)
!4999 = !DILocalVariable(name: "attr", arg: 3, scope: !4995, file: !3, line: 84, type: !575)
!5000 = !DILocalVariable(name: "buf", arg: 4, scope: !4995, file: !3, line: 84, type: !512)
!5001 = !DILocalVariable(name: "off", arg: 5, scope: !4995, file: !3, line: 84, type: !745)
!5002 = !DILocalVariable(name: "count", arg: 6, scope: !4995, file: !3, line: 84, type: !557)
!5003 = !DILocalVariable(name: "dev", scope: !4995, file: !3, line: 84, type: !426)
!5004 = !DILocalVariable(name: "__mptr", scope: !5005, file: !3, line: 84, type: !341)
!5005 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 84, column: 1)
!5006 = !DILocalVariable(name: "sibling_cpumask", scope: !4995, file: !3, line: 84, type: !4686)
!5007 = !DILocalVariable(name: "n", scope: !4995, file: !3, line: 84, type: !542)
!5008 = !DILocalVariable(name: "__vpp_verify", scope: !5009, file: !3, line: 84, type: !2746)
!5009 = distinct !DILexicalBlock(scope: !5010, file: !3, line: 84, column: 1)
!5010 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 84, column: 1)
!5011 = !DILocalVariable(name: "__ptr", scope: !5012, file: !3, line: 84, type: !381)
!5012 = distinct !DILexicalBlock(scope: !5010, file: !3, line: 84, column: 1)
!5013 = !DILocation(line: 84, column: 1, scope: !4995)
!5014 = !DILocation(line: 84, column: 1, scope: !5005)
!5015 = !DILocation(line: 84, column: 1, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 84, column: 1)
!5017 = !DILocation(line: 84, column: 1, scope: !5010)
!5018 = !DILocation(line: 84, column: 1, scope: !5009)
!5019 = !DILocation(line: 84, column: 1, scope: !5012)
!5020 = distinct !DISubprogram(name: "alloc_cpumask_var", scope: !1854, file: !1854, line: 918, type: !5021, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5023)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!418, !4685, !1356}
!5023 = !{!5024, !5025}
!5024 = !DILocalVariable(name: "mask", arg: 1, scope: !5020, file: !1854, line: 918, type: !4685)
!5025 = !DILocalVariable(name: "flags", arg: 2, scope: !5020, file: !1854, line: 918, type: !1356)
!5026 = !DILocation(line: 918, column: 53, scope: !5020)
!5027 = !DILocation(line: 918, column: 65, scope: !5020)
!5028 = !DILocation(line: 920, column: 2, scope: !5020)
!5029 = distinct !DISubprogram(name: "cpumask_copy", scope: !1854, file: !1854, line: 737, type: !5030, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5035)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{null, !5032, !5033}
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1855)
!5035 = !{!5036, !5037}
!5036 = !DILocalVariable(name: "dstp", arg: 1, scope: !5029, file: !1854, line: 737, type: !5032)
!5037 = !DILocalVariable(name: "srcp", arg: 2, scope: !5029, file: !1854, line: 738, type: !5033)
!5038 = !DILocation(line: 737, column: 49, scope: !5029)
!5039 = !DILocation(line: 738, column: 27, scope: !5029)
!5040 = !DILocation(line: 740, column: 14, scope: !5029)
!5041 = !DILocation(line: 740, column: 34, scope: !5029)
!5042 = !DILocation(line: 740, column: 2, scope: !5029)
!5043 = !DILocation(line: 741, column: 1, scope: !5029)
!5044 = distinct !DISubprogram(name: "cpumap_print_bitmask_to_buf", scope: !1854, file: !1854, line: 1190, type: !5045, scopeLine: 1192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5047)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!542, !512, !5033, !745, !557}
!5047 = !{!5048, !5049, !5050, !5051}
!5048 = !DILocalVariable(name: "buf", arg: 1, scope: !5044, file: !1854, line: 1190, type: !512)
!5049 = !DILocalVariable(name: "mask", arg: 2, scope: !5044, file: !1854, line: 1190, type: !5033)
!5050 = !DILocalVariable(name: "off", arg: 3, scope: !5044, file: !1854, line: 1191, type: !745)
!5051 = !DILocalVariable(name: "count", arg: 4, scope: !5044, file: !1854, line: 1191, type: !557)
!5052 = !DILocation(line: 1190, column: 35, scope: !5044)
!5053 = !DILocation(line: 1190, column: 62, scope: !5044)
!5054 = !DILocation(line: 1191, column: 10, scope: !5044)
!5055 = !DILocation(line: 1191, column: 22, scope: !5044)
!5056 = !DILocation(line: 1193, column: 37, scope: !5044)
!5057 = !DILocation(line: 1193, column: 42, scope: !5044)
!5058 = !DILocation(line: 1194, column: 8, scope: !5044)
!5059 = !DILocation(line: 1194, column: 20, scope: !5044)
!5060 = !DILocation(line: 1194, column: 25, scope: !5044)
!5061 = !DILocation(line: 1193, column: 9, scope: !5044)
!5062 = !DILocation(line: 1194, column: 32, scope: !5044)
!5063 = !DILocation(line: 1193, column: 2, scope: !5044)
!5064 = distinct !DISubprogram(name: "free_cpumask_var", scope: !1854, file: !1854, line: 946, type: !5065, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5067)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{null, !5032}
!5067 = !{!5068}
!5068 = !DILocalVariable(name: "mask", arg: 1, scope: !5064, file: !1854, line: 946, type: !5032)
!5069 = !DILocation(line: 946, column: 51, scope: !5064)
!5070 = !DILocation(line: 948, column: 1, scope: !5064)
!5071 = distinct !DISubprogram(name: "bitmap_copy", scope: !5072, file: !5072, line: 266, type: !5073, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5076)
!5072 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!5073 = !DISubroutineType(types: !5074)
!5074 = !{null, !1193, !5075, !202}
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!5076 = !{!5077, !5078, !5079, !5080}
!5077 = !DILocalVariable(name: "dst", arg: 1, scope: !5071, file: !5072, line: 266, type: !1193)
!5078 = !DILocalVariable(name: "src", arg: 2, scope: !5071, file: !5072, line: 266, type: !5075)
!5079 = !DILocalVariable(name: "nbits", arg: 3, scope: !5071, file: !5072, line: 267, type: !202)
!5080 = !DILocalVariable(name: "len", scope: !5071, file: !5072, line: 269, type: !202)
!5081 = !DILocation(line: 266, column: 47, scope: !5071)
!5082 = !DILocation(line: 266, column: 73, scope: !5071)
!5083 = !DILocation(line: 267, column: 17, scope: !5071)
!5084 = !DILocation(line: 269, column: 2, scope: !5071)
!5085 = !DILocation(line: 269, column: 15, scope: !5071)
!5086 = !DILocation(line: 269, column: 21, scope: !5071)
!5087 = !DILocation(line: 271, column: 6, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5071, file: !5072, line: 271, column: 6)
!5089 = !DILocation(line: 271, column: 6, scope: !5071)
!5090 = !DILocation(line: 272, column: 11, scope: !5088)
!5091 = !DILocation(line: 272, column: 10, scope: !5088)
!5092 = !DILocation(line: 272, column: 4, scope: !5088)
!5093 = !DILocation(line: 272, column: 8, scope: !5088)
!5094 = !DILocation(line: 272, column: 3, scope: !5088)
!5095 = !DILocation(line: 274, column: 10, scope: !5088)
!5096 = !DILocation(line: 274, column: 15, scope: !5088)
!5097 = !DILocation(line: 274, column: 20, scope: !5088)
!5098 = !DILocation(line: 274, column: 3, scope: !5088)
!5099 = !DILocation(line: 275, column: 1, scope: !5071)
!5100 = !DISubprogram(name: "bitmap_print_bitmask_to_buf", scope: !5072, file: !5072, line: 235, type: !5101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5101 = !DISubroutineType(types: !5102)
!5102 = !{!7, !512, !5075, !7, !745, !557}
!5103 = distinct !DISubprogram(name: "core_cpus_list_read", scope: !3, file: !3, line: 84, type: !4176, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5104)
!5104 = !{!5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5114, !5115, !5116, !5119}
!5105 = !DILocalVariable(name: "file", arg: 1, scope: !5103, file: !3, line: 84, type: !1934)
!5106 = !DILocalVariable(name: "kobj", arg: 2, scope: !5103, file: !3, line: 84, type: !443)
!5107 = !DILocalVariable(name: "attr", arg: 3, scope: !5103, file: !3, line: 84, type: !575)
!5108 = !DILocalVariable(name: "buf", arg: 4, scope: !5103, file: !3, line: 84, type: !512)
!5109 = !DILocalVariable(name: "off", arg: 5, scope: !5103, file: !3, line: 84, type: !745)
!5110 = !DILocalVariable(name: "count", arg: 6, scope: !5103, file: !3, line: 84, type: !557)
!5111 = !DILocalVariable(name: "dev", scope: !5103, file: !3, line: 84, type: !426)
!5112 = !DILocalVariable(name: "__mptr", scope: !5113, file: !3, line: 84, type: !341)
!5113 = distinct !DILexicalBlock(scope: !5103, file: !3, line: 84, column: 1)
!5114 = !DILocalVariable(name: "sibling_cpumask", scope: !5103, file: !3, line: 84, type: !4686)
!5115 = !DILocalVariable(name: "n", scope: !5103, file: !3, line: 84, type: !542)
!5116 = !DILocalVariable(name: "__vpp_verify", scope: !5117, file: !3, line: 84, type: !2746)
!5117 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 84, column: 1)
!5118 = distinct !DILexicalBlock(scope: !5103, file: !3, line: 84, column: 1)
!5119 = !DILocalVariable(name: "__ptr", scope: !5120, file: !3, line: 84, type: !381)
!5120 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 84, column: 1)
!5121 = !DILocation(line: 84, column: 1, scope: !5103)
!5122 = !DILocation(line: 84, column: 1, scope: !5113)
!5123 = !DILocation(line: 84, column: 1, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5103, file: !3, line: 84, column: 1)
!5125 = !DILocation(line: 84, column: 1, scope: !5118)
!5126 = !DILocation(line: 84, column: 1, scope: !5117)
!5127 = !DILocation(line: 84, column: 1, scope: !5120)
!5128 = distinct !DISubprogram(name: "cpumap_print_list_to_buf", scope: !1854, file: !1854, line: 1209, type: !5045, scopeLine: 1211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5129)
!5129 = !{!5130, !5131, !5132, !5133}
!5130 = !DILocalVariable(name: "buf", arg: 1, scope: !5128, file: !1854, line: 1209, type: !512)
!5131 = !DILocalVariable(name: "mask", arg: 2, scope: !5128, file: !1854, line: 1209, type: !5033)
!5132 = !DILocalVariable(name: "off", arg: 3, scope: !5128, file: !1854, line: 1210, type: !745)
!5133 = !DILocalVariable(name: "count", arg: 4, scope: !5128, file: !1854, line: 1210, type: !557)
!5134 = !DILocation(line: 1209, column: 32, scope: !5128)
!5135 = !DILocation(line: 1209, column: 59, scope: !5128)
!5136 = !DILocation(line: 1210, column: 10, scope: !5128)
!5137 = !DILocation(line: 1210, column: 22, scope: !5128)
!5138 = !DILocation(line: 1212, column: 34, scope: !5128)
!5139 = !DILocation(line: 1212, column: 39, scope: !5128)
!5140 = !DILocation(line: 1213, column: 8, scope: !5128)
!5141 = !DILocation(line: 1213, column: 20, scope: !5128)
!5142 = !DILocation(line: 1213, column: 25, scope: !5128)
!5143 = !DILocation(line: 1212, column: 9, scope: !5128)
!5144 = !DILocation(line: 1213, column: 32, scope: !5128)
!5145 = !DILocation(line: 1212, column: 2, scope: !5128)
!5146 = !DISubprogram(name: "bitmap_print_list_to_buf", scope: !5072, file: !5072, line: 238, type: !5101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5147 = distinct !DISubprogram(name: "thread_siblings_read", scope: !3, file: !3, line: 80, type: !4176, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5148)
!5148 = !{!5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5158, !5159, !5160, !5163}
!5149 = !DILocalVariable(name: "file", arg: 1, scope: !5147, file: !3, line: 80, type: !1934)
!5150 = !DILocalVariable(name: "kobj", arg: 2, scope: !5147, file: !3, line: 80, type: !443)
!5151 = !DILocalVariable(name: "attr", arg: 3, scope: !5147, file: !3, line: 80, type: !575)
!5152 = !DILocalVariable(name: "buf", arg: 4, scope: !5147, file: !3, line: 80, type: !512)
!5153 = !DILocalVariable(name: "off", arg: 5, scope: !5147, file: !3, line: 80, type: !745)
!5154 = !DILocalVariable(name: "count", arg: 6, scope: !5147, file: !3, line: 80, type: !557)
!5155 = !DILocalVariable(name: "dev", scope: !5147, file: !3, line: 80, type: !426)
!5156 = !DILocalVariable(name: "__mptr", scope: !5157, file: !3, line: 80, type: !341)
!5157 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 80, column: 1)
!5158 = !DILocalVariable(name: "sibling_cpumask", scope: !5147, file: !3, line: 80, type: !4686)
!5159 = !DILocalVariable(name: "n", scope: !5147, file: !3, line: 80, type: !542)
!5160 = !DILocalVariable(name: "__vpp_verify", scope: !5161, file: !3, line: 80, type: !2746)
!5161 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 80, column: 1)
!5162 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 80, column: 1)
!5163 = !DILocalVariable(name: "__ptr", scope: !5164, file: !3, line: 80, type: !381)
!5164 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 80, column: 1)
!5165 = !DILocation(line: 80, column: 1, scope: !5147)
!5166 = !DILocation(line: 80, column: 1, scope: !5157)
!5167 = !DILocation(line: 80, column: 1, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 80, column: 1)
!5169 = !DILocation(line: 80, column: 1, scope: !5162)
!5170 = !DILocation(line: 80, column: 1, scope: !5161)
!5171 = !DILocation(line: 80, column: 1, scope: !5164)
!5172 = distinct !DISubprogram(name: "thread_siblings_list_read", scope: !3, file: !3, line: 80, type: !4176, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5173)
!5173 = !{!5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5183, !5184, !5185, !5188}
!5174 = !DILocalVariable(name: "file", arg: 1, scope: !5172, file: !3, line: 80, type: !1934)
!5175 = !DILocalVariable(name: "kobj", arg: 2, scope: !5172, file: !3, line: 80, type: !443)
!5176 = !DILocalVariable(name: "attr", arg: 3, scope: !5172, file: !3, line: 80, type: !575)
!5177 = !DILocalVariable(name: "buf", arg: 4, scope: !5172, file: !3, line: 80, type: !512)
!5178 = !DILocalVariable(name: "off", arg: 5, scope: !5172, file: !3, line: 80, type: !745)
!5179 = !DILocalVariable(name: "count", arg: 6, scope: !5172, file: !3, line: 80, type: !557)
!5180 = !DILocalVariable(name: "dev", scope: !5172, file: !3, line: 80, type: !426)
!5181 = !DILocalVariable(name: "__mptr", scope: !5182, file: !3, line: 80, type: !341)
!5182 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 80, column: 1)
!5183 = !DILocalVariable(name: "sibling_cpumask", scope: !5172, file: !3, line: 80, type: !4686)
!5184 = !DILocalVariable(name: "n", scope: !5172, file: !3, line: 80, type: !542)
!5185 = !DILocalVariable(name: "__vpp_verify", scope: !5186, file: !3, line: 80, type: !2746)
!5186 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 80, column: 1)
!5187 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 80, column: 1)
!5188 = !DILocalVariable(name: "__ptr", scope: !5189, file: !3, line: 80, type: !381)
!5189 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 80, column: 1)
!5190 = !DILocation(line: 80, column: 1, scope: !5172)
!5191 = !DILocation(line: 80, column: 1, scope: !5182)
!5192 = !DILocation(line: 80, column: 1, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 80, column: 1)
!5194 = !DILocation(line: 80, column: 1, scope: !5187)
!5195 = !DILocation(line: 80, column: 1, scope: !5186)
!5196 = !DILocation(line: 80, column: 1, scope: !5189)
!5197 = distinct !DISubprogram(name: "core_siblings_read", scope: !3, file: !3, line: 88, type: !4176, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5198)
!5198 = !{!5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5208, !5209, !5210, !5213}
!5199 = !DILocalVariable(name: "file", arg: 1, scope: !5197, file: !3, line: 88, type: !1934)
!5200 = !DILocalVariable(name: "kobj", arg: 2, scope: !5197, file: !3, line: 88, type: !443)
!5201 = !DILocalVariable(name: "attr", arg: 3, scope: !5197, file: !3, line: 88, type: !575)
!5202 = !DILocalVariable(name: "buf", arg: 4, scope: !5197, file: !3, line: 88, type: !512)
!5203 = !DILocalVariable(name: "off", arg: 5, scope: !5197, file: !3, line: 88, type: !745)
!5204 = !DILocalVariable(name: "count", arg: 6, scope: !5197, file: !3, line: 88, type: !557)
!5205 = !DILocalVariable(name: "dev", scope: !5197, file: !3, line: 88, type: !426)
!5206 = !DILocalVariable(name: "__mptr", scope: !5207, file: !3, line: 88, type: !341)
!5207 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 88, column: 1)
!5208 = !DILocalVariable(name: "core_cpumask", scope: !5197, file: !3, line: 88, type: !4686)
!5209 = !DILocalVariable(name: "n", scope: !5197, file: !3, line: 88, type: !542)
!5210 = !DILocalVariable(name: "__vpp_verify", scope: !5211, file: !3, line: 88, type: !2746)
!5211 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 88, column: 1)
!5212 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 88, column: 1)
!5213 = !DILocalVariable(name: "__ptr", scope: !5214, file: !3, line: 88, type: !381)
!5214 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 88, column: 1)
!5215 = !DILocation(line: 88, column: 1, scope: !5197)
!5216 = !DILocation(line: 88, column: 1, scope: !5207)
!5217 = !DILocation(line: 88, column: 1, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 88, column: 1)
!5219 = !DILocation(line: 88, column: 1, scope: !5212)
!5220 = !DILocation(line: 88, column: 1, scope: !5211)
!5221 = !DILocation(line: 88, column: 1, scope: !5214)
!5222 = distinct !DISubprogram(name: "core_siblings_list_read", scope: !3, file: !3, line: 88, type: !4176, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5223)
!5223 = !{!5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5233, !5234, !5235, !5238}
!5224 = !DILocalVariable(name: "file", arg: 1, scope: !5222, file: !3, line: 88, type: !1934)
!5225 = !DILocalVariable(name: "kobj", arg: 2, scope: !5222, file: !3, line: 88, type: !443)
!5226 = !DILocalVariable(name: "attr", arg: 3, scope: !5222, file: !3, line: 88, type: !575)
!5227 = !DILocalVariable(name: "buf", arg: 4, scope: !5222, file: !3, line: 88, type: !512)
!5228 = !DILocalVariable(name: "off", arg: 5, scope: !5222, file: !3, line: 88, type: !745)
!5229 = !DILocalVariable(name: "count", arg: 6, scope: !5222, file: !3, line: 88, type: !557)
!5230 = !DILocalVariable(name: "dev", scope: !5222, file: !3, line: 88, type: !426)
!5231 = !DILocalVariable(name: "__mptr", scope: !5232, file: !3, line: 88, type: !341)
!5232 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 88, column: 1)
!5233 = !DILocalVariable(name: "core_cpumask", scope: !5222, file: !3, line: 88, type: !4686)
!5234 = !DILocalVariable(name: "n", scope: !5222, file: !3, line: 88, type: !542)
!5235 = !DILocalVariable(name: "__vpp_verify", scope: !5236, file: !3, line: 88, type: !2746)
!5236 = distinct !DILexicalBlock(scope: !5237, file: !3, line: 88, column: 1)
!5237 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 88, column: 1)
!5238 = !DILocalVariable(name: "__ptr", scope: !5239, file: !3, line: 88, type: !381)
!5239 = distinct !DILexicalBlock(scope: !5237, file: !3, line: 88, column: 1)
!5240 = !DILocation(line: 88, column: 1, scope: !5222)
!5241 = !DILocation(line: 88, column: 1, scope: !5232)
!5242 = !DILocation(line: 88, column: 1, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 88, column: 1)
!5244 = !DILocation(line: 88, column: 1, scope: !5237)
!5245 = !DILocation(line: 88, column: 1, scope: !5236)
!5246 = !DILocation(line: 88, column: 1, scope: !5239)
!5247 = distinct !DISubprogram(name: "cluster_cpus_read", scope: !3, file: !3, line: 93, type: !4176, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5248)
!5248 = !{!5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5258, !5259}
!5249 = !DILocalVariable(name: "file", arg: 1, scope: !5247, file: !3, line: 93, type: !1934)
!5250 = !DILocalVariable(name: "kobj", arg: 2, scope: !5247, file: !3, line: 93, type: !443)
!5251 = !DILocalVariable(name: "attr", arg: 3, scope: !5247, file: !3, line: 93, type: !575)
!5252 = !DILocalVariable(name: "buf", arg: 4, scope: !5247, file: !3, line: 93, type: !512)
!5253 = !DILocalVariable(name: "off", arg: 5, scope: !5247, file: !3, line: 93, type: !745)
!5254 = !DILocalVariable(name: "count", arg: 6, scope: !5247, file: !3, line: 93, type: !557)
!5255 = !DILocalVariable(name: "dev", scope: !5247, file: !3, line: 93, type: !426)
!5256 = !DILocalVariable(name: "__mptr", scope: !5257, file: !3, line: 93, type: !341)
!5257 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 93, column: 1)
!5258 = !DILocalVariable(name: "cluster_cpumask", scope: !5247, file: !3, line: 93, type: !4686)
!5259 = !DILocalVariable(name: "n", scope: !5247, file: !3, line: 93, type: !542)
!5260 = !DILocation(line: 93, column: 1, scope: !5247)
!5261 = !DILocation(line: 93, column: 1, scope: !5257)
!5262 = !DILocation(line: 93, column: 1, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 93, column: 1)
!5264 = !DISubprogram(name: "cpu_clustergroup_mask", scope: !5265, file: !5265, line: 106, type: !5266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5265 = !DIFile(filename: "./arch/x86/include/asm/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "120eda241c1b2b25166ee71f2a584d2d")
!5266 = !DISubroutineType(types: !5267)
!5267 = !{!5033, !7}
!5268 = distinct !DISubprogram(name: "cluster_cpus_list_read", scope: !3, file: !3, line: 93, type: !4176, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5269)
!5269 = !{!5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5279, !5280}
!5270 = !DILocalVariable(name: "file", arg: 1, scope: !5268, file: !3, line: 93, type: !1934)
!5271 = !DILocalVariable(name: "kobj", arg: 2, scope: !5268, file: !3, line: 93, type: !443)
!5272 = !DILocalVariable(name: "attr", arg: 3, scope: !5268, file: !3, line: 93, type: !575)
!5273 = !DILocalVariable(name: "buf", arg: 4, scope: !5268, file: !3, line: 93, type: !512)
!5274 = !DILocalVariable(name: "off", arg: 5, scope: !5268, file: !3, line: 93, type: !745)
!5275 = !DILocalVariable(name: "count", arg: 6, scope: !5268, file: !3, line: 93, type: !557)
!5276 = !DILocalVariable(name: "dev", scope: !5268, file: !3, line: 93, type: !426)
!5277 = !DILocalVariable(name: "__mptr", scope: !5278, file: !3, line: 93, type: !341)
!5278 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 93, column: 1)
!5279 = !DILocalVariable(name: "cluster_cpumask", scope: !5268, file: !3, line: 93, type: !4686)
!5280 = !DILocalVariable(name: "n", scope: !5268, file: !3, line: 93, type: !542)
!5281 = !DILocation(line: 93, column: 1, scope: !5268)
!5282 = !DILocation(line: 93, column: 1, scope: !5278)
!5283 = !DILocation(line: 93, column: 1, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 93, column: 1)
!5285 = distinct !DISubprogram(name: "die_cpus_read", scope: !3, file: !3, line: 99, type: !4176, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5286)
!5286 = !{!5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5296, !5297, !5298, !5301}
!5287 = !DILocalVariable(name: "file", arg: 1, scope: !5285, file: !3, line: 99, type: !1934)
!5288 = !DILocalVariable(name: "kobj", arg: 2, scope: !5285, file: !3, line: 99, type: !443)
!5289 = !DILocalVariable(name: "attr", arg: 3, scope: !5285, file: !3, line: 99, type: !575)
!5290 = !DILocalVariable(name: "buf", arg: 4, scope: !5285, file: !3, line: 99, type: !512)
!5291 = !DILocalVariable(name: "off", arg: 5, scope: !5285, file: !3, line: 99, type: !745)
!5292 = !DILocalVariable(name: "count", arg: 6, scope: !5285, file: !3, line: 99, type: !557)
!5293 = !DILocalVariable(name: "dev", scope: !5285, file: !3, line: 99, type: !426)
!5294 = !DILocalVariable(name: "__mptr", scope: !5295, file: !3, line: 99, type: !341)
!5295 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 99, column: 1)
!5296 = !DILocalVariable(name: "die_cpumask", scope: !5285, file: !3, line: 99, type: !4686)
!5297 = !DILocalVariable(name: "n", scope: !5285, file: !3, line: 99, type: !542)
!5298 = !DILocalVariable(name: "__vpp_verify", scope: !5299, file: !3, line: 99, type: !2746)
!5299 = distinct !DILexicalBlock(scope: !5300, file: !3, line: 99, column: 1)
!5300 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 99, column: 1)
!5301 = !DILocalVariable(name: "__ptr", scope: !5302, file: !3, line: 99, type: !381)
!5302 = distinct !DILexicalBlock(scope: !5300, file: !3, line: 99, column: 1)
!5303 = !DILocation(line: 99, column: 1, scope: !5285)
!5304 = !DILocation(line: 99, column: 1, scope: !5295)
!5305 = !DILocation(line: 99, column: 1, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 99, column: 1)
!5307 = !DILocation(line: 99, column: 1, scope: !5300)
!5308 = !DILocation(line: 99, column: 1, scope: !5299)
!5309 = !DILocation(line: 99, column: 1, scope: !5302)
!5310 = distinct !DISubprogram(name: "die_cpus_list_read", scope: !3, file: !3, line: 99, type: !4176, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5311)
!5311 = !{!5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5321, !5322, !5323, !5326}
!5312 = !DILocalVariable(name: "file", arg: 1, scope: !5310, file: !3, line: 99, type: !1934)
!5313 = !DILocalVariable(name: "kobj", arg: 2, scope: !5310, file: !3, line: 99, type: !443)
!5314 = !DILocalVariable(name: "attr", arg: 3, scope: !5310, file: !3, line: 99, type: !575)
!5315 = !DILocalVariable(name: "buf", arg: 4, scope: !5310, file: !3, line: 99, type: !512)
!5316 = !DILocalVariable(name: "off", arg: 5, scope: !5310, file: !3, line: 99, type: !745)
!5317 = !DILocalVariable(name: "count", arg: 6, scope: !5310, file: !3, line: 99, type: !557)
!5318 = !DILocalVariable(name: "dev", scope: !5310, file: !3, line: 99, type: !426)
!5319 = !DILocalVariable(name: "__mptr", scope: !5320, file: !3, line: 99, type: !341)
!5320 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 99, column: 1)
!5321 = !DILocalVariable(name: "die_cpumask", scope: !5310, file: !3, line: 99, type: !4686)
!5322 = !DILocalVariable(name: "n", scope: !5310, file: !3, line: 99, type: !542)
!5323 = !DILocalVariable(name: "__vpp_verify", scope: !5324, file: !3, line: 99, type: !2746)
!5324 = distinct !DILexicalBlock(scope: !5325, file: !3, line: 99, column: 1)
!5325 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 99, column: 1)
!5326 = !DILocalVariable(name: "__ptr", scope: !5327, file: !3, line: 99, type: !381)
!5327 = distinct !DILexicalBlock(scope: !5325, file: !3, line: 99, column: 1)
!5328 = !DILocation(line: 99, column: 1, scope: !5310)
!5329 = !DILocation(line: 99, column: 1, scope: !5320)
!5330 = !DILocation(line: 99, column: 1, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 99, column: 1)
!5332 = !DILocation(line: 99, column: 1, scope: !5325)
!5333 = !DILocation(line: 99, column: 1, scope: !5324)
!5334 = !DILocation(line: 99, column: 1, scope: !5327)
!5335 = distinct !DISubprogram(name: "package_cpus_read", scope: !3, file: !3, line: 104, type: !4176, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5336)
!5336 = !{!5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344, !5346, !5347, !5348, !5351}
!5337 = !DILocalVariable(name: "file", arg: 1, scope: !5335, file: !3, line: 104, type: !1934)
!5338 = !DILocalVariable(name: "kobj", arg: 2, scope: !5335, file: !3, line: 104, type: !443)
!5339 = !DILocalVariable(name: "attr", arg: 3, scope: !5335, file: !3, line: 104, type: !575)
!5340 = !DILocalVariable(name: "buf", arg: 4, scope: !5335, file: !3, line: 104, type: !512)
!5341 = !DILocalVariable(name: "off", arg: 5, scope: !5335, file: !3, line: 104, type: !745)
!5342 = !DILocalVariable(name: "count", arg: 6, scope: !5335, file: !3, line: 104, type: !557)
!5343 = !DILocalVariable(name: "dev", scope: !5335, file: !3, line: 104, type: !426)
!5344 = !DILocalVariable(name: "__mptr", scope: !5345, file: !3, line: 104, type: !341)
!5345 = distinct !DILexicalBlock(scope: !5335, file: !3, line: 104, column: 1)
!5346 = !DILocalVariable(name: "core_cpumask", scope: !5335, file: !3, line: 104, type: !4686)
!5347 = !DILocalVariable(name: "n", scope: !5335, file: !3, line: 104, type: !542)
!5348 = !DILocalVariable(name: "__vpp_verify", scope: !5349, file: !3, line: 104, type: !2746)
!5349 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 104, column: 1)
!5350 = distinct !DILexicalBlock(scope: !5335, file: !3, line: 104, column: 1)
!5351 = !DILocalVariable(name: "__ptr", scope: !5352, file: !3, line: 104, type: !381)
!5352 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 104, column: 1)
!5353 = !DILocation(line: 104, column: 1, scope: !5335)
!5354 = !DILocation(line: 104, column: 1, scope: !5345)
!5355 = !DILocation(line: 104, column: 1, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5335, file: !3, line: 104, column: 1)
!5357 = !DILocation(line: 104, column: 1, scope: !5350)
!5358 = !DILocation(line: 104, column: 1, scope: !5349)
!5359 = !DILocation(line: 104, column: 1, scope: !5352)
!5360 = distinct !DISubprogram(name: "package_cpus_list_read", scope: !3, file: !3, line: 104, type: !4176, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5361)
!5361 = !{!5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5371, !5372, !5373, !5376}
!5362 = !DILocalVariable(name: "file", arg: 1, scope: !5360, file: !3, line: 104, type: !1934)
!5363 = !DILocalVariable(name: "kobj", arg: 2, scope: !5360, file: !3, line: 104, type: !443)
!5364 = !DILocalVariable(name: "attr", arg: 3, scope: !5360, file: !3, line: 104, type: !575)
!5365 = !DILocalVariable(name: "buf", arg: 4, scope: !5360, file: !3, line: 104, type: !512)
!5366 = !DILocalVariable(name: "off", arg: 5, scope: !5360, file: !3, line: 104, type: !745)
!5367 = !DILocalVariable(name: "count", arg: 6, scope: !5360, file: !3, line: 104, type: !557)
!5368 = !DILocalVariable(name: "dev", scope: !5360, file: !3, line: 104, type: !426)
!5369 = !DILocalVariable(name: "__mptr", scope: !5370, file: !3, line: 104, type: !341)
!5370 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 104, column: 1)
!5371 = !DILocalVariable(name: "core_cpumask", scope: !5360, file: !3, line: 104, type: !4686)
!5372 = !DILocalVariable(name: "n", scope: !5360, file: !3, line: 104, type: !542)
!5373 = !DILocalVariable(name: "__vpp_verify", scope: !5374, file: !3, line: 104, type: !2746)
!5374 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 104, column: 1)
!5375 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 104, column: 1)
!5376 = !DILocalVariable(name: "__ptr", scope: !5377, file: !3, line: 104, type: !381)
!5377 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 104, column: 1)
!5378 = !DILocation(line: 104, column: 1, scope: !5360)
!5379 = !DILocation(line: 104, column: 1, scope: !5370)
!5380 = !DILocation(line: 104, column: 1, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 104, column: 1)
!5382 = !DILocation(line: 104, column: 1, scope: !5375)
!5383 = !DILocation(line: 104, column: 1, scope: !5374)
!5384 = !DILocation(line: 104, column: 1, scope: !5377)
!5385 = !DISubprogram(name: "sysfs_remove_group", scope: !536, file: !536, line: 315, type: !5386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5386 = !DISubroutineType(types: !5387)
!5387 = !{null, !443, !562}
