; ModuleID = 'drivers/acpi/ioapic.c'
source_filename = "drivers/acpi/ioapic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.acpi_pci_ioapic = type { ptr, ptr, i32, %struct.resource, ptr, %struct.list_head }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.15, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.15 = type { ptr }
%struct.acpi_pci_root = type { ptr, ptr, i16, i32, %struct.resource, i32, i32, i32, i32, i64 }
%struct.acpi_device = type { i32, i32, ptr, %struct.fwnode_handle, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, ptr, ptr, ptr, ptr, %struct.device, i32, i32, %struct.list_head, %struct.mutex, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], i32, %struct.acpi_pnp_type, i64, ptr, %struct.list_head, [40 x i8], [20 x i8], ptr }
%struct.acpi_pnp_type = type { i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state], i8 }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.13, i32, i32, %struct.list_head }
%struct.anon.13 = type { i8 }
%struct.acpi_device_wakeup = type { ptr, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, ptr, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { ptr, ptr }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, ptr }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_dir = type { ptr }
%struct.acpi_device_data = type { ptr, %struct.list_head, ptr, %struct.list_head }
%struct.acpi_device_info = type { i32, i32, i32, i8, i16, i8, [4 x i8], [5 x i8], i64, %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id_list }
%struct.acpi_pnp_device_id = type { i32, ptr }
%struct.acpi_pnp_device_id_list = type { i32, i32, [0 x %struct.acpi_pnp_device_id] }
%struct.resource_win = type { %struct.resource, i64 }

@ioapic_list_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ioapic_list_lock, i64 16), ptr getelementptr (i8, ptr @ioapic_list_lock, i64 16) } }, align 8, !dbg !0
@ioapic_list = internal global %struct.list_head { ptr @ioapic_list, ptr @ioapic_list }, align 8, !dbg !4945
@.str = private unnamed_addr constant [5 x i8] c"_GSB\00", align 1, !dbg !4892
@.str.1 = private unnamed_addr constant [3 x i8] c"\014\00", align 1, !dbg !4897
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to evaluate _GSB method\0A\00", align 1, !dbg !4900
@.str.3 = private unnamed_addr constant [55 x i8] c"\013ACPI: IOAPIC: cannot allocate memory for new IOAPIC\0A\00", align 1, !dbg !4902
@.str.4 = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1, !dbg !4907
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to get resource\0A\00", align 1, !dbg !4909
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to insert resource\0A\00", align 1, !dbg !4914
@.str.7 = private unnamed_addr constant [27 x i8] c"failed to register IOAPIC\0A\00", align 1, !dbg !4919
@.str.8 = private unnamed_addr constant [19 x i8] c"%s at %pR, GSI %u\0A\00", align 1, !dbg !4921
@.str.9 = private unnamed_addr constant [3 x i8] c"\016\00", align 1, !dbg !4926
@.str.10 = private unnamed_addr constant [9 x i8] c"ACPI0009\00", align 1, !dbg !4928
@.str.11 = private unnamed_addr constant [8 x i8] c"IOxAPIC\00", align 1, !dbg !4933
@.str.12 = private unnamed_addr constant [9 x i8] c"ACPI000A\00", align 1, !dbg !4935
@.str.13 = private unnamed_addr constant [7 x i8] c"IOAPIC\00", align 1, !dbg !4937
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.14 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4940

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ioapic_add(ptr noundef %root_handle) #0 align 16 !dbg !4956 {
entry:
  %root_handle.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store ptr %root_handle, ptr %root_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root_handle.addr, metadata !4960, metadata !DIExpression()), !dbg !4963
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #16, !dbg !4964
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4961, metadata !DIExpression()), !dbg !4965
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !4964
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !4962, metadata !DIExpression()), !dbg !4966
  store i32 0, ptr %retval1, align 4, !dbg !4966
  %0 = load ptr, ptr %root_handle.addr, align 8, !dbg !4967
  %1 = load ptr, ptr %root_handle.addr, align 8, !dbg !4968
  %call = call i32 @acpi_walk_namespace(i32 noundef 6, ptr noundef %0, i32 noundef -1, ptr noundef @handle_ioapic_add, ptr noundef null, ptr noundef %1, ptr noundef %retval1) #17, !dbg !4969
  store i32 %call, ptr %status, align 4, !dbg !4970
  %2 = load i32, ptr %status, align 4, !dbg !4971
  %tobool = icmp ne i32 %2, 0, !dbg !4971
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4972

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %retval1, align 4, !dbg !4973
  %tobool2 = icmp ne i32 %3, 0, !dbg !4973
  %lnot = xor i1 %tobool2, true, !dbg !4973
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !4974
  %5 = zext i1 %4 to i64, !dbg !4971
  %cond = select i1 %4, i32 0, i32 -19, !dbg !4971
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !4975
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #16, !dbg !4975
  ret i32 %cond, !dbg !4976
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4977 dso_local i32 @acpi_walk_namespace(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @handle_ioapic_add(ptr noundef %handle, i32 noundef %lvl, ptr noundef %context, ptr noundef %rv) #0 align 16 !dbg !4986 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %lvl.addr = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %rv.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %gsi_base = alloca i64, align 8
  %ioapic = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %res = alloca ptr, align 8
  %pci_res = alloca ptr, align 8
  %crs_res = alloca ptr, align 8
  %type = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr5 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %tmp15 = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !4988, metadata !DIExpression()), !dbg !5011
  store i32 %lvl, ptr %lvl.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lvl.addr, metadata !4989, metadata !DIExpression()), !dbg !5012
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !4990, metadata !DIExpression()), !dbg !5013
  store ptr %rv, ptr %rv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rv.addr, metadata !4991, metadata !DIExpression()), !dbg !5014
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #16, !dbg !5015
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4992, metadata !DIExpression()), !dbg !5016
  call void @llvm.lifetime.start.p0(i64 8, ptr %gsi_base) #16, !dbg !5017
  call void @llvm.dbg.declare(metadata ptr %gsi_base, metadata !4993, metadata !DIExpression()), !dbg !5018
  call void @llvm.lifetime.start.p0(i64 8, ptr %ioapic) #16, !dbg !5019
  call void @llvm.dbg.declare(metadata ptr %ioapic, metadata !4994, metadata !DIExpression()), !dbg !5020
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !5021
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !4995, metadata !DIExpression()), !dbg !5022
  store ptr null, ptr %dev, align 8, !dbg !5022
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !5023
  call void @llvm.dbg.declare(metadata ptr %res, metadata !4996, metadata !DIExpression()), !dbg !5024
  store ptr null, ptr %res, align 8, !dbg !5024
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_res) #16, !dbg !5023
  call void @llvm.dbg.declare(metadata ptr %pci_res, metadata !4997, metadata !DIExpression()), !dbg !5025
  store ptr null, ptr %pci_res, align 8, !dbg !5025
  call void @llvm.lifetime.start.p0(i64 8, ptr %crs_res) #16, !dbg !5023
  call void @llvm.dbg.declare(metadata ptr %crs_res, metadata !4998, metadata !DIExpression()), !dbg !5026
  call void @llvm.lifetime.start.p0(i64 8, ptr %type) #16, !dbg !5027
  call void @llvm.dbg.declare(metadata ptr %type, metadata !4999, metadata !DIExpression()), !dbg !5028
  store ptr null, ptr %type, align 8, !dbg !5028
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !5029
  %call = call zeroext i1 @acpi_is_ioapic(ptr noundef %0, ptr noundef %type) #17, !dbg !5031
  br i1 %call, label %if.end, label %if.then, !dbg !5032

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5033

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @ioapic_list_lock) #17, !dbg !5034
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5035
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5000, metadata !DIExpression()), !dbg !5035
  %1 = load ptr, ptr @ioapic_list, align 8, !dbg !5035
  store ptr %1, ptr %__mptr, align 8, !dbg !5035
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5035
  %add.ptr = getelementptr i8, ptr %2, i64 -96, !dbg !5035
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5035
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5036
  %3 = load ptr, ptr %tmp, align 8, !dbg !5035
  store ptr %3, ptr %ioapic, align 8, !dbg !5036
  br label %for.cond, !dbg !5036

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %ioapic, align 8, !dbg !5037
  %list = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %4, i32 0, i32 5, !dbg !5037
  %cmp = icmp eq ptr %list, @ioapic_list, !dbg !5037
  %lnot = xor i1 %cmp, true, !dbg !5037
  br i1 %lnot, label %for.body, label %for.end, !dbg !5036

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %ioapic, align 8, !dbg !5038
  %handle1 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %5, i32 0, i32 1, !dbg !5040
  %6 = load ptr, ptr %handle1, align 8, !dbg !5040
  %7 = load ptr, ptr %handle.addr, align 8, !dbg !5041
  %cmp2 = icmp eq ptr %6, %7, !dbg !5042
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5043

if.then3:                                         ; preds = %for.body
  call void @mutex_unlock(ptr noundef @ioapic_list_lock) #17, !dbg !5044
  store i32 0, ptr %retval, align 4, !dbg !5046
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5046

if.end4:                                          ; preds = %for.body
  br label %for.inc, !dbg !5041

for.inc:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #16, !dbg !5047
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !5003, metadata !DIExpression()), !dbg !5047
  %8 = load ptr, ptr %ioapic, align 8, !dbg !5047
  %list6 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %8, i32 0, i32 5, !dbg !5047
  %next = getelementptr inbounds %struct.list_head, ptr %list6, i32 0, i32 0, !dbg !5047
  %9 = load ptr, ptr %next, align 8, !dbg !5047
  store ptr %9, ptr %__mptr5, align 8, !dbg !5047
  %10 = load ptr, ptr %__mptr5, align 8, !dbg !5047
  %add.ptr8 = getelementptr i8, ptr %10, i64 -96, !dbg !5047
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !5047
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #16, !dbg !5037
  %11 = load ptr, ptr %tmp7, align 8, !dbg !5047
  store ptr %11, ptr %ioapic, align 8, !dbg !5037
  br label %for.cond, !dbg !5037, !llvm.loop !5048

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %handle.addr, align 8, !dbg !5052
  %call9 = call i32 @acpi_evaluate_integer(ptr noundef %12, ptr noundef @.str, ptr noundef null, ptr noundef %gsi_base) #17, !dbg !5053
  store i32 %call9, ptr %status, align 4, !dbg !5054
  %13 = load i32, ptr %status, align 4, !dbg !5055
  %tobool = icmp ne i32 %13, 0, !dbg !5055
  br i1 %tobool, label %if.then10, label %if.end11, !dbg !5057

if.then10:                                        ; preds = %for.end
  %14 = load ptr, ptr %handle.addr, align 8, !dbg !5058
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.1, ptr noundef %14, ptr noundef @.str.2) #17, !dbg !5058
  br label %exit, !dbg !5060

if.end11:                                         ; preds = %for.end
  %call12 = call noalias ptr @kzalloc(i64 noundef 112, i32 noundef 3264) #18, !dbg !5061
  store ptr %call12, ptr %ioapic, align 8, !dbg !5062
  %15 = load ptr, ptr %ioapic, align 8, !dbg !5063
  %tobool13 = icmp ne ptr %15, null, !dbg !5063
  br i1 %tobool13, label %if.else, label %if.then14, !dbg !5065

if.then14:                                        ; preds = %if.end11
  br label %do.body, !dbg !5066

do.body:                                          ; preds = %if.then14
  br label %do.cond, !dbg !5069

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5069

do.end:                                           ; preds = %do.cond
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #19, !dbg !5066
  store i32 %call16, ptr %tmp15, align 4, !dbg !5069
  %16 = load i32, ptr %tmp15, align 4, !dbg !5066
  br label %exit, !dbg !5071

if.else:                                          ; preds = %if.end11
  %17 = load ptr, ptr %context.addr, align 8, !dbg !5072
  %18 = load ptr, ptr %ioapic, align 8, !dbg !5074
  %root_handle = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %18, i32 0, i32 0, !dbg !5075
  store ptr %17, ptr %root_handle, align 8, !dbg !5076
  %19 = load ptr, ptr %handle.addr, align 8, !dbg !5077
  %20 = load ptr, ptr %ioapic, align 8, !dbg !5078
  %handle17 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %20, i32 0, i32 1, !dbg !5079
  store ptr %19, ptr %handle17, align 8, !dbg !5080
  %21 = load i64, ptr %gsi_base, align 8, !dbg !5081
  %conv = trunc i64 %21 to i32, !dbg !5082
  %22 = load ptr, ptr %ioapic, align 8, !dbg !5083
  %gsi_base18 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %22, i32 0, i32 2, !dbg !5084
  store i32 %conv, ptr %gsi_base18, align 8, !dbg !5085
  %23 = load ptr, ptr %ioapic, align 8, !dbg !5086
  %list19 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %23, i32 0, i32 5, !dbg !5087
  call void @INIT_LIST_HEAD(ptr noundef %list19) #17, !dbg !5088
  br label %if.end20

if.end20:                                         ; preds = %if.else
  %24 = load ptr, ptr %handle.addr, align 8, !dbg !5089
  %25 = load i64, ptr %gsi_base, align 8, !dbg !5091
  %conv21 = trunc i64 %25 to i32, !dbg !5092
  %call22 = call i32 @acpi_ioapic_registered(ptr noundef %24, i32 noundef %conv21) #17, !dbg !5093
  %tobool23 = icmp ne i32 %call22, 0, !dbg !5093
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !5094

if.then24:                                        ; preds = %if.end20
  br label %done, !dbg !5095

if.end25:                                         ; preds = %if.end20
  %26 = load ptr, ptr %handle.addr, align 8, !dbg !5096
  %call26 = call ptr @acpi_get_pci_dev(ptr noundef %26) #17, !dbg !5097
  store ptr %call26, ptr %dev, align 8, !dbg !5098
  %27 = load ptr, ptr %dev, align 8, !dbg !5099
  %tobool27 = icmp ne ptr %27, null, !dbg !5099
  br i1 %tobool27, label %land.lhs.true, label %if.else45, !dbg !5101

land.lhs.true:                                    ; preds = %if.end25
  %28 = load ptr, ptr %dev, align 8, !dbg !5102
  %resource = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 40, !dbg !5102
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 0, !dbg !5102
  %end = getelementptr inbounds %struct.resource, ptr %arrayidx, i32 0, i32 1, !dbg !5102
  %29 = load i64, ptr %end, align 8, !dbg !5102
  %tobool28 = icmp ne i64 %29, 0, !dbg !5102
  br i1 %tobool28, label %cond.true, label %cond.false, !dbg !5103

cond.true:                                        ; preds = %land.lhs.true
  %30 = load ptr, ptr %dev, align 8, !dbg !5102
  %resource29 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 40, !dbg !5102
  %arrayidx30 = getelementptr [11 x %struct.resource], ptr %resource29, i64 0, i64 0, !dbg !5102
  %call31 = call i64 @resource_size(ptr noundef %arrayidx30) #17, !dbg !5102
  %tobool32 = icmp ne i64 %call31, 0, !dbg !5102
  br i1 %tobool32, label %if.then33, label %if.else45, !dbg !5102

cond.false:                                       ; preds = %land.lhs.true
  br i1 false, label %if.then33, label %if.else45, !dbg !5103

if.then33:                                        ; preds = %cond.false, %cond.true
  %31 = load ptr, ptr %dev, align 8, !dbg !5104
  %call34 = call i32 @pci_enable_device(ptr noundef %31) #17, !dbg !5107
  %cmp35 = icmp slt i32 %call34, 0, !dbg !5108
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !5109

if.then37:                                        ; preds = %if.then33
  br label %exit_put, !dbg !5110

if.end38:                                         ; preds = %if.then33
  %32 = load ptr, ptr %dev, align 8, !dbg !5111
  call void @pci_set_master(ptr noundef %32) #17, !dbg !5112
  %33 = load ptr, ptr %dev, align 8, !dbg !5113
  %34 = load ptr, ptr %type, align 8, !dbg !5115
  %call39 = call i32 @pci_request_region(ptr noundef %33, i32 noundef 0, ptr noundef %34) #17, !dbg !5116
  %tobool40 = icmp ne i32 %call39, 0, !dbg !5116
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !5117

if.then41:                                        ; preds = %if.end38
  br label %exit_disable, !dbg !5118

if.end42:                                         ; preds = %if.end38
  %35 = load ptr, ptr %dev, align 8, !dbg !5119
  %resource43 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 40, !dbg !5120
  %arrayidx44 = getelementptr [11 x %struct.resource], ptr %resource43, i64 0, i64 0, !dbg !5119
  store ptr %arrayidx44, ptr %pci_res, align 8, !dbg !5121
  %36 = load ptr, ptr %dev, align 8, !dbg !5122
  %37 = load ptr, ptr %ioapic, align 8, !dbg !5123
  %pdev = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %37, i32 0, i32 4, !dbg !5124
  store ptr %36, ptr %pdev, align 8, !dbg !5125
  br label %if.end46, !dbg !5126

if.else45:                                        ; preds = %cond.false, %cond.true, %if.end25
  %38 = load ptr, ptr %dev, align 8, !dbg !5127
  call void @pci_dev_put(ptr noundef %38) #17, !dbg !5129
  store ptr null, ptr %dev, align 8, !dbg !5130
  br label %if.end46

if.end46:                                         ; preds = %if.else45, %if.end42
  %39 = load ptr, ptr %ioapic, align 8, !dbg !5131
  %res47 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %39, i32 0, i32 3, !dbg !5132
  store ptr %res47, ptr %crs_res, align 8, !dbg !5133
  %40 = load ptr, ptr %handle.addr, align 8, !dbg !5134
  %41 = load ptr, ptr %crs_res, align 8, !dbg !5135
  %call48 = call i32 @acpi_walk_resources(ptr noundef %40, ptr noundef @.str.4, ptr noundef @setup_res, ptr noundef %41) #17, !dbg !5136
  %42 = load ptr, ptr %type, align 8, !dbg !5137
  %43 = load ptr, ptr %crs_res, align 8, !dbg !5138
  %name = getelementptr inbounds %struct.resource, ptr %43, i32 0, i32 2, !dbg !5139
  store ptr %42, ptr %name, align 8, !dbg !5140
  %44 = load ptr, ptr %crs_res, align 8, !dbg !5141
  %flags = getelementptr inbounds %struct.resource, ptr %44, i32 0, i32 3, !dbg !5142
  %45 = load i64, ptr %flags, align 8, !dbg !5143
  %or = or i64 %45, 2147483648, !dbg !5143
  store i64 %or, ptr %flags, align 8, !dbg !5143
  %46 = load ptr, ptr %crs_res, align 8, !dbg !5144
  %flags49 = getelementptr inbounds %struct.resource, ptr %46, i32 0, i32 3, !dbg !5146
  %47 = load i64, ptr %flags49, align 8, !dbg !5146
  %cmp50 = icmp eq i64 %47, 0, !dbg !5147
  br i1 %cmp50, label %if.then52, label %if.else53, !dbg !5148

if.then52:                                        ; preds = %if.end46
  %48 = load ptr, ptr %handle.addr, align 8, !dbg !5149
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.1, ptr noundef %48, ptr noundef @.str.5) #17, !dbg !5149
  br label %exit_release, !dbg !5151

if.else53:                                        ; preds = %if.end46
  %49 = load ptr, ptr %crs_res, align 8, !dbg !5152
  %call54 = call i32 @insert_resource(ptr noundef @iomem_resource, ptr noundef %49) #17, !dbg !5154
  %tobool55 = icmp ne i32 %call54, 0, !dbg !5154
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !5155

if.then56:                                        ; preds = %if.else53
  %50 = load ptr, ptr %handle.addr, align 8, !dbg !5156
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.1, ptr noundef %50, ptr noundef @.str.6) #17, !dbg !5156
  br label %exit_release, !dbg !5158

if.end57:                                         ; preds = %if.else53
  br label %if.end58

if.end58:                                         ; preds = %if.end57
  %51 = load ptr, ptr %pci_res, align 8, !dbg !5159
  store ptr %51, ptr %res, align 8, !dbg !5160
  %52 = load ptr, ptr %res, align 8, !dbg !5161
  %tobool59 = icmp ne ptr %52, null, !dbg !5161
  br i1 %tobool59, label %lor.lhs.false, label %if.then62, !dbg !5163

lor.lhs.false:                                    ; preds = %if.end58
  %53 = load ptr, ptr %res, align 8, !dbg !5164
  %flags60 = getelementptr inbounds %struct.resource, ptr %53, i32 0, i32 3, !dbg !5165
  %54 = load i64, ptr %flags60, align 8, !dbg !5165
  %tobool61 = icmp ne i64 %54, 0, !dbg !5164
  br i1 %tobool61, label %if.end63, label %if.then62, !dbg !5166

if.then62:                                        ; preds = %lor.lhs.false, %if.end58
  %55 = load ptr, ptr %crs_res, align 8, !dbg !5167
  store ptr %55, ptr %res, align 8, !dbg !5168
  br label %if.end63, !dbg !5169

if.end63:                                         ; preds = %if.then62, %lor.lhs.false
  %56 = load ptr, ptr %handle.addr, align 8, !dbg !5170
  %57 = load ptr, ptr %res, align 8, !dbg !5172
  %start = getelementptr inbounds %struct.resource, ptr %57, i32 0, i32 0, !dbg !5173
  %58 = load i64, ptr %start, align 8, !dbg !5173
  %59 = load i64, ptr %gsi_base, align 8, !dbg !5174
  %conv64 = trunc i64 %59 to i32, !dbg !5175
  %call65 = call i32 @acpi_register_ioapic(ptr noundef %56, i64 noundef %58, i32 noundef %conv64) #17, !dbg !5176
  %tobool66 = icmp ne i32 %call65, 0, !dbg !5176
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !5177

if.then67:                                        ; preds = %if.end63
  %60 = load ptr, ptr %handle.addr, align 8, !dbg !5178
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.1, ptr noundef %60, ptr noundef @.str.7) #17, !dbg !5178
  br label %exit_release, !dbg !5180

if.end68:                                         ; preds = %if.end63
  br label %done, !dbg !5181

done:                                             ; preds = %if.end68, %if.then24
  call void @llvm.dbg.label(metadata !5006), !dbg !5182
  %61 = load ptr, ptr %ioapic, align 8, !dbg !5183
  %list69 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %61, i32 0, i32 5, !dbg !5184
  call void @list_add(ptr noundef %list69, ptr noundef @ioapic_list) #17, !dbg !5185
  call void @mutex_unlock(ptr noundef @ioapic_list_lock) #17, !dbg !5186
  %62 = load ptr, ptr %dev, align 8, !dbg !5187
  %tobool70 = icmp ne ptr %62, null, !dbg !5187
  br i1 %tobool70, label %if.then71, label %if.else77, !dbg !5189

if.then71:                                        ; preds = %done
  br label %do.body72, !dbg !5190

do.body72:                                        ; preds = %if.then71
  br label %do.cond73, !dbg !5192

do.cond73:                                        ; preds = %do.body72
  br label %do.end74, !dbg !5192

do.end74:                                         ; preds = %do.cond73
  %63 = load ptr, ptr %dev, align 8, !dbg !5190
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 37, !dbg !5190
  %64 = load ptr, ptr %type, align 8, !dbg !5190
  %65 = load ptr, ptr %res, align 8, !dbg !5190
  %66 = load i64, ptr %gsi_base, align 8, !dbg !5190
  %conv76 = trunc i64 %66 to i32, !dbg !5190
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev75, ptr noundef @.str.8, ptr noundef %64, ptr noundef %65, i32 noundef %conv76) #19, !dbg !5190
  br label %if.end79, !dbg !5194

if.else77:                                        ; preds = %done
  %67 = load ptr, ptr %handle.addr, align 8, !dbg !5195
  %68 = load ptr, ptr %type, align 8, !dbg !5195
  %69 = load ptr, ptr %res, align 8, !dbg !5195
  %70 = load i64, ptr %gsi_base, align 8, !dbg !5195
  %conv78 = trunc i64 %70 to i32, !dbg !5195
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.9, ptr noundef %67, ptr noundef @.str.8, ptr noundef %68, ptr noundef %69, i32 noundef %conv78) #17, !dbg !5195
  br label %if.end79

if.end79:                                         ; preds = %if.else77, %do.end74
  store i32 0, ptr %retval, align 4, !dbg !5196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5196

exit_release:                                     ; preds = %if.then67, %if.then56, %if.then52
  call void @llvm.dbg.label(metadata !5007), !dbg !5197
  %71 = load ptr, ptr %dev, align 8, !dbg !5198
  %tobool80 = icmp ne ptr %71, null, !dbg !5198
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !5200

if.then81:                                        ; preds = %exit_release
  %72 = load ptr, ptr %dev, align 8, !dbg !5201
  call void @pci_release_region(ptr noundef %72, i32 noundef 0) #17, !dbg !5202
  br label %if.end82, !dbg !5202

if.end82:                                         ; preds = %if.then81, %exit_release
  %73 = load ptr, ptr %ioapic, align 8, !dbg !5203
  %res83 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %73, i32 0, i32 3, !dbg !5205
  %flags84 = getelementptr inbounds %struct.resource, ptr %res83, i32 0, i32 3, !dbg !5206
  %74 = load i64, ptr %flags84, align 8, !dbg !5206
  %tobool85 = icmp ne i64 %74, 0, !dbg !5203
  br i1 %tobool85, label %land.lhs.true86, label %if.end92, !dbg !5207

land.lhs.true86:                                  ; preds = %if.end82
  %75 = load ptr, ptr %ioapic, align 8, !dbg !5208
  %res87 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %75, i32 0, i32 3, !dbg !5209
  %parent = getelementptr inbounds %struct.resource, ptr %res87, i32 0, i32 5, !dbg !5210
  %76 = load ptr, ptr %parent, align 8, !dbg !5210
  %tobool88 = icmp ne ptr %76, null, !dbg !5208
  br i1 %tobool88, label %if.then89, label %if.end92, !dbg !5211

if.then89:                                        ; preds = %land.lhs.true86
  %77 = load ptr, ptr %ioapic, align 8, !dbg !5212
  %res90 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %77, i32 0, i32 3, !dbg !5213
  %call91 = call i32 @release_resource(ptr noundef %res90) #17, !dbg !5214
  br label %if.end92, !dbg !5214

if.end92:                                         ; preds = %if.then89, %land.lhs.true86, %if.end82
  br label %exit_disable, !dbg !5210

exit_disable:                                     ; preds = %if.end92, %if.then41
  call void @llvm.dbg.label(metadata !5008), !dbg !5215
  %78 = load ptr, ptr %dev, align 8, !dbg !5216
  %tobool93 = icmp ne ptr %78, null, !dbg !5216
  br i1 %tobool93, label %if.then94, label %if.end95, !dbg !5218

if.then94:                                        ; preds = %exit_disable
  %79 = load ptr, ptr %dev, align 8, !dbg !5219
  call void @pci_disable_device(ptr noundef %79) #17, !dbg !5220
  br label %if.end95, !dbg !5220

if.end95:                                         ; preds = %if.then94, %exit_disable
  br label %exit_put, !dbg !5216

exit_put:                                         ; preds = %if.end95, %if.then37
  call void @llvm.dbg.label(metadata !5009), !dbg !5221
  %80 = load ptr, ptr %dev, align 8, !dbg !5222
  call void @pci_dev_put(ptr noundef %80) #17, !dbg !5223
  %81 = load ptr, ptr %ioapic, align 8, !dbg !5224
  call void @kfree(ptr noundef %81) #17, !dbg !5225
  br label %exit, !dbg !5225

exit:                                             ; preds = %exit_put, %do.end, %if.then10
  call void @llvm.dbg.label(metadata !5010), !dbg !5226
  call void @mutex_unlock(ptr noundef @ioapic_list_lock) #17, !dbg !5227
  %82 = load ptr, ptr %rv.addr, align 8, !dbg !5228
  store i32 1, ptr %82, align 4, !dbg !5229
  store i32 0, ptr %retval, align 4, !dbg !5230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5230

cleanup:                                          ; preds = %exit, %if.end79, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %type) #16, !dbg !5231
  call void @llvm.lifetime.end.p0(i64 8, ptr %crs_res) #16, !dbg !5231
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_res) #16, !dbg !5231
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !5231
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !5231
  call void @llvm.lifetime.end.p0(i64 8, ptr %ioapic) #16, !dbg !5231
  call void @llvm.lifetime.end.p0(i64 8, ptr %gsi_base) #16, !dbg !5231
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #16, !dbg !5231
  %83 = load i32, ptr %retval, align 4, !dbg !5231
  ret i32 %83, !dbg !5231
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_ioapic_remove(ptr noundef %root) #0 align 16 !dbg !5232 {
entry:
  %root.addr = alloca ptr, align 8
  %ioapic = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr12 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5503, metadata !DIExpression()), !dbg !5514
  call void @llvm.lifetime.start.p0(i64 8, ptr %ioapic) #16, !dbg !5515
  call void @llvm.dbg.declare(metadata ptr %ioapic, metadata !5504, metadata !DIExpression()), !dbg !5516
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !5515
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5505, metadata !DIExpression()), !dbg !5517
  call void @mutex_lock(ptr noundef @ioapic_list_lock) #17, !dbg !5518
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5519
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5506, metadata !DIExpression()), !dbg !5519
  %0 = load ptr, ptr @ioapic_list, align 8, !dbg !5519
  store ptr %0, ptr %__mptr, align 8, !dbg !5519
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5519
  %add.ptr = getelementptr i8, ptr %1, i64 -96, !dbg !5519
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !5519
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5520
  %2 = load ptr, ptr %tmp1, align 8, !dbg !5519
  store ptr %2, ptr %ioapic, align 8, !dbg !5520
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #16, !dbg !5521
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !5509, metadata !DIExpression()), !dbg !5521
  %3 = load ptr, ptr %ioapic, align 8, !dbg !5521
  %list = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %3, i32 0, i32 5, !dbg !5521
  %next = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !5521
  %4 = load ptr, ptr %next, align 8, !dbg !5521
  store ptr %4, ptr %__mptr2, align 8, !dbg !5521
  %5 = load ptr, ptr %__mptr2, align 8, !dbg !5521
  %add.ptr4 = getelementptr i8, ptr %5, i64 -96, !dbg !5521
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !5521
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #16, !dbg !5520
  %6 = load ptr, ptr %tmp3, align 8, !dbg !5521
  store ptr %6, ptr %tmp, align 8, !dbg !5520
  br label %for.cond, !dbg !5520

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %ioapic, align 8, !dbg !5522
  %list5 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %7, i32 0, i32 5, !dbg !5522
  %cmp = icmp eq ptr %list5, @ioapic_list, !dbg !5522
  %lnot = xor i1 %cmp, true, !dbg !5522
  br i1 %lnot, label %for.body, label %for.end, !dbg !5520

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %root.addr, align 8, !dbg !5523
  %device = getelementptr inbounds %struct.acpi_pci_root, ptr %8, i32 0, i32 0, !dbg !5526
  %9 = load ptr, ptr %device, align 8, !dbg !5526
  %handle = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 2, !dbg !5527
  %10 = load ptr, ptr %handle, align 8, !dbg !5527
  %11 = load ptr, ptr %ioapic, align 8, !dbg !5528
  %root_handle = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %11, i32 0, i32 0, !dbg !5529
  %12 = load ptr, ptr %root_handle, align 8, !dbg !5529
  %cmp6 = icmp ne ptr %10, %12, !dbg !5530
  br i1 %cmp6, label %if.then, label %if.end, !dbg !5531

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5532

if.end:                                           ; preds = %for.body
  %13 = load ptr, ptr %ioapic, align 8, !dbg !5533
  %pdev = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %13, i32 0, i32 4, !dbg !5535
  %14 = load ptr, ptr %pdev, align 8, !dbg !5535
  %tobool = icmp ne ptr %14, null, !dbg !5533
  br i1 %tobool, label %if.then7, label %if.end11, !dbg !5536

if.then7:                                         ; preds = %if.end
  %15 = load ptr, ptr %ioapic, align 8, !dbg !5537
  %pdev8 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %15, i32 0, i32 4, !dbg !5539
  %16 = load ptr, ptr %pdev8, align 8, !dbg !5539
  call void @pci_release_region(ptr noundef %16, i32 noundef 0) #17, !dbg !5540
  %17 = load ptr, ptr %ioapic, align 8, !dbg !5541
  %pdev9 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %17, i32 0, i32 4, !dbg !5542
  %18 = load ptr, ptr %pdev9, align 8, !dbg !5542
  call void @pci_disable_device(ptr noundef %18) #17, !dbg !5543
  %19 = load ptr, ptr %ioapic, align 8, !dbg !5544
  %pdev10 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %19, i32 0, i32 4, !dbg !5545
  %20 = load ptr, ptr %pdev10, align 8, !dbg !5545
  call void @pci_dev_put(ptr noundef %20) #17, !dbg !5546
  br label %if.end11, !dbg !5547

if.end11:                                         ; preds = %if.then7, %if.end
  br label %for.inc, !dbg !5548

for.inc:                                          ; preds = %if.end11, %if.then
  %21 = load ptr, ptr %tmp, align 8, !dbg !5522
  store ptr %21, ptr %ioapic, align 8, !dbg !5522
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr12) #16, !dbg !5549
  call void @llvm.dbg.declare(metadata ptr %__mptr12, metadata !5511, metadata !DIExpression()), !dbg !5549
  %22 = load ptr, ptr %tmp, align 8, !dbg !5549
  %list13 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %22, i32 0, i32 5, !dbg !5549
  %next14 = getelementptr inbounds %struct.list_head, ptr %list13, i32 0, i32 0, !dbg !5549
  %23 = load ptr, ptr %next14, align 8, !dbg !5549
  store ptr %23, ptr %__mptr12, align 8, !dbg !5549
  %24 = load ptr, ptr %__mptr12, align 8, !dbg !5549
  %add.ptr16 = getelementptr i8, ptr %24, i64 -96, !dbg !5549
  store ptr %add.ptr16, ptr %tmp15, align 8, !dbg !5549
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr12) #16, !dbg !5522
  %25 = load ptr, ptr %tmp15, align 8, !dbg !5549
  store ptr %25, ptr %tmp, align 8, !dbg !5522
  br label %for.cond, !dbg !5522, !llvm.loop !5550

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @ioapic_list_lock) #17, !dbg !5552
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !5553
  call void @llvm.lifetime.end.p0(i64 8, ptr %ioapic) #16, !dbg !5553
  ret void, !dbg !5553
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5554 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5558 dso_local void @pci_release_region(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5561 dso_local void @pci_disable_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5562 dso_local void @pci_dev_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5563 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ioapic_remove(ptr noundef %root) #0 align 16 !dbg !5564 {
entry:
  %root.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %ioapic = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr19 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !5568, metadata !DIExpression()), !dbg !5580
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16, !dbg !5581
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5569, metadata !DIExpression()), !dbg !5582
  store i32 0, ptr %retval1, align 4, !dbg !5582
  call void @llvm.lifetime.start.p0(i64 8, ptr %ioapic) #16, !dbg !5583
  call void @llvm.dbg.declare(metadata ptr %ioapic, metadata !5570, metadata !DIExpression()), !dbg !5584
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !5583
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5571, metadata !DIExpression()), !dbg !5585
  call void @mutex_lock(ptr noundef @ioapic_list_lock) #17, !dbg !5586
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5587
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5572, metadata !DIExpression()), !dbg !5587
  %0 = load ptr, ptr @ioapic_list, align 8, !dbg !5587
  store ptr %0, ptr %__mptr, align 8, !dbg !5587
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5587
  %add.ptr = getelementptr i8, ptr %1, i64 -96, !dbg !5587
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !5587
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5588
  %2 = load ptr, ptr %tmp2, align 8, !dbg !5587
  store ptr %2, ptr %ioapic, align 8, !dbg !5588
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #16, !dbg !5589
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !5575, metadata !DIExpression()), !dbg !5589
  %3 = load ptr, ptr %ioapic, align 8, !dbg !5589
  %list = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %3, i32 0, i32 5, !dbg !5589
  %next = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !5589
  %4 = load ptr, ptr %next, align 8, !dbg !5589
  store ptr %4, ptr %__mptr3, align 8, !dbg !5589
  %5 = load ptr, ptr %__mptr3, align 8, !dbg !5589
  %add.ptr5 = getelementptr i8, ptr %5, i64 -96, !dbg !5589
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !5589
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #16, !dbg !5588
  %6 = load ptr, ptr %tmp4, align 8, !dbg !5589
  store ptr %6, ptr %tmp, align 8, !dbg !5588
  br label %for.cond, !dbg !5588

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %ioapic, align 8, !dbg !5590
  %list6 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %7, i32 0, i32 5, !dbg !5590
  %cmp = icmp eq ptr %list6, @ioapic_list, !dbg !5590
  %lnot = xor i1 %cmp, true, !dbg !5590
  br i1 %lnot, label %for.body, label %for.end, !dbg !5588

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %root.addr, align 8, !dbg !5591
  %device = getelementptr inbounds %struct.acpi_pci_root, ptr %8, i32 0, i32 0, !dbg !5594
  %9 = load ptr, ptr %device, align 8, !dbg !5594
  %handle = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 2, !dbg !5595
  %10 = load ptr, ptr %handle, align 8, !dbg !5595
  %11 = load ptr, ptr %ioapic, align 8, !dbg !5596
  %root_handle = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %11, i32 0, i32 0, !dbg !5597
  %12 = load ptr, ptr %root_handle, align 8, !dbg !5597
  %cmp7 = icmp ne ptr %10, %12, !dbg !5598
  br i1 %cmp7, label %if.then, label %if.end, !dbg !5599

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5600

if.end:                                           ; preds = %for.body
  %13 = load ptr, ptr %ioapic, align 8, !dbg !5601
  %handle8 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %13, i32 0, i32 1, !dbg !5603
  %14 = load ptr, ptr %handle8, align 8, !dbg !5603
  %15 = load ptr, ptr %ioapic, align 8, !dbg !5604
  %gsi_base = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %15, i32 0, i32 2, !dbg !5605
  %16 = load i32, ptr %gsi_base, align 8, !dbg !5605
  %call = call i32 @acpi_unregister_ioapic(ptr noundef %14, i32 noundef %16) #17, !dbg !5606
  %tobool = icmp ne i32 %call, 0, !dbg !5606
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !5607

if.then9:                                         ; preds = %if.end
  store i32 -16, ptr %retval1, align 4, !dbg !5608
  br label %if.end10, !dbg !5609

if.end10:                                         ; preds = %if.then9, %if.end
  %17 = load ptr, ptr %ioapic, align 8, !dbg !5610
  %res = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %17, i32 0, i32 3, !dbg !5612
  %flags = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3, !dbg !5613
  %18 = load i64, ptr %flags, align 8, !dbg !5613
  %tobool11 = icmp ne i64 %18, 0, !dbg !5610
  br i1 %tobool11, label %land.lhs.true, label %if.end17, !dbg !5614

land.lhs.true:                                    ; preds = %if.end10
  %19 = load ptr, ptr %ioapic, align 8, !dbg !5615
  %res12 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %19, i32 0, i32 3, !dbg !5616
  %parent = getelementptr inbounds %struct.resource, ptr %res12, i32 0, i32 5, !dbg !5617
  %20 = load ptr, ptr %parent, align 8, !dbg !5617
  %tobool13 = icmp ne ptr %20, null, !dbg !5615
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !5618

if.then14:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %ioapic, align 8, !dbg !5619
  %res15 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %21, i32 0, i32 3, !dbg !5620
  %call16 = call i32 @release_resource(ptr noundef %res15) #17, !dbg !5621
  br label %if.end17, !dbg !5621

if.end17:                                         ; preds = %if.then14, %land.lhs.true, %if.end10
  %22 = load ptr, ptr %ioapic, align 8, !dbg !5622
  %list18 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %22, i32 0, i32 5, !dbg !5623
  call void @list_del(ptr noundef %list18) #17, !dbg !5624
  %23 = load ptr, ptr %ioapic, align 8, !dbg !5625
  call void @kfree(ptr noundef %23) #17, !dbg !5626
  br label %for.inc, !dbg !5627

for.inc:                                          ; preds = %if.end17, %if.then
  %24 = load ptr, ptr %tmp, align 8, !dbg !5590
  store ptr %24, ptr %ioapic, align 8, !dbg !5590
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr19) #16, !dbg !5628
  call void @llvm.dbg.declare(metadata ptr %__mptr19, metadata !5577, metadata !DIExpression()), !dbg !5628
  %25 = load ptr, ptr %tmp, align 8, !dbg !5628
  %list20 = getelementptr inbounds %struct.acpi_pci_ioapic, ptr %25, i32 0, i32 5, !dbg !5628
  %next21 = getelementptr inbounds %struct.list_head, ptr %list20, i32 0, i32 0, !dbg !5628
  %26 = load ptr, ptr %next21, align 8, !dbg !5628
  store ptr %26, ptr %__mptr19, align 8, !dbg !5628
  %27 = load ptr, ptr %__mptr19, align 8, !dbg !5628
  %add.ptr23 = getelementptr i8, ptr %27, i64 -96, !dbg !5628
  store ptr %add.ptr23, ptr %tmp22, align 8, !dbg !5628
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr19) #16, !dbg !5590
  %28 = load ptr, ptr %tmp22, align 8, !dbg !5628
  store ptr %28, ptr %tmp, align 8, !dbg !5590
  br label %for.cond, !dbg !5590, !llvm.loop !5629

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @ioapic_list_lock) #17, !dbg !5631
  %29 = load i32, ptr %retval1, align 4, !dbg !5632
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !5633
  call void @llvm.lifetime.end.p0(i64 8, ptr %ioapic) #16, !dbg !5633
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16, !dbg !5633
  ret i32 %29, !dbg !5634
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5635 dso_local i32 @acpi_unregister_ioapic(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5639 dso_local i32 @release_resource(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !5642 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5647, metadata !DIExpression()), !dbg !5648
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5649
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !5650
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5651
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5652
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5653
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5654
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5655
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5656
  ret void, !dbg !5657
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5658 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_is_ioapic(ptr noundef %handle, ptr noundef %type) #0 align 16 !dbg !5661 {
entry:
  %retval = alloca i1, align 1
  %handle.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %info = alloca ptr, align 8
  %hid = alloca ptr, align 8
  %match = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !5666, metadata !DIExpression()), !dbg !5700
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5667, metadata !DIExpression()), !dbg !5701
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #16, !dbg !5702
  call void @llvm.dbg.declare(metadata ptr %status, metadata !5668, metadata !DIExpression()), !dbg !5703
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #16, !dbg !5704
  call void @llvm.dbg.declare(metadata ptr %info, metadata !5669, metadata !DIExpression()), !dbg !5705
  call void @llvm.lifetime.start.p0(i64 8, ptr %hid) #16, !dbg !5706
  call void @llvm.dbg.declare(metadata ptr %hid, metadata !5698, metadata !DIExpression()), !dbg !5707
  store ptr null, ptr %hid, align 8, !dbg !5707
  call void @llvm.lifetime.start.p0(i64 1, ptr %match) #16, !dbg !5708
  call void @llvm.dbg.declare(metadata ptr %match, metadata !5699, metadata !DIExpression()), !dbg !5709
  store i8 0, ptr %match, align 1, !dbg !5709
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !5710
  %call = call zeroext i1 @acpi_has_method(ptr noundef %0, ptr noundef @.str) #17, !dbg !5712
  br i1 %call, label %if.end, label %if.then, !dbg !5713

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5714
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5714

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !5715
  %call1 = call i32 @acpi_get_object_info(ptr noundef %1, ptr noundef %info) #17, !dbg !5716
  store i32 %call1, ptr %status, align 4, !dbg !5717
  %2 = load i32, ptr %status, align 4, !dbg !5718
  %tobool = icmp ne i32 %2, 0, !dbg !5718
  br i1 %tobool, label %if.end18, label %if.then2, !dbg !5720

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %info, align 8, !dbg !5721
  %valid = getelementptr inbounds %struct.acpi_device_info, ptr %3, i32 0, i32 4, !dbg !5724
  %4 = load i16, ptr %valid, align 2, !dbg !5724
  %conv = zext i16 %4 to i32, !dbg !5721
  %and = and i32 %conv, 4, !dbg !5725
  %tobool3 = icmp ne i32 %and, 0, !dbg !5725
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5726

if.then4:                                         ; preds = %if.then2
  %5 = load ptr, ptr %info, align 8, !dbg !5727
  %hardware_id = getelementptr inbounds %struct.acpi_device_info, ptr %5, i32 0, i32 9, !dbg !5728
  %string = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %hardware_id, i32 0, i32 1, !dbg !5729
  %6 = load ptr, ptr %string, align 8, !dbg !5729
  store ptr %6, ptr %hid, align 8, !dbg !5730
  br label %if.end5, !dbg !5731

if.end5:                                          ; preds = %if.then4, %if.then2
  %7 = load ptr, ptr %hid, align 8, !dbg !5732
  %tobool6 = icmp ne ptr %7, null, !dbg !5732
  br i1 %tobool6, label %if.then7, label %if.end17, !dbg !5734

if.then7:                                         ; preds = %if.end5
  %8 = load ptr, ptr %hid, align 8, !dbg !5735
  %call8 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.10) #17, !dbg !5738
  %cmp = icmp eq i32 %call8, 0, !dbg !5739
  br i1 %cmp, label %if.then10, label %if.else, !dbg !5740

if.then10:                                        ; preds = %if.then7
  %9 = load ptr, ptr %type.addr, align 8, !dbg !5741
  store ptr @.str.11, ptr %9, align 8, !dbg !5743
  store i8 1, ptr %match, align 1, !dbg !5744
  br label %if.end16, !dbg !5745

if.else:                                          ; preds = %if.then7
  %10 = load ptr, ptr %hid, align 8, !dbg !5746
  %call11 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.12) #17, !dbg !5748
  %cmp12 = icmp eq i32 %call11, 0, !dbg !5749
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !5750

if.then14:                                        ; preds = %if.else
  %11 = load ptr, ptr %type.addr, align 8, !dbg !5751
  store ptr @.str.13, ptr %11, align 8, !dbg !5753
  store i8 1, ptr %match, align 1, !dbg !5754
  br label %if.end15, !dbg !5755

if.end15:                                         ; preds = %if.then14, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then10
  br label %if.end17, !dbg !5756

if.end17:                                         ; preds = %if.end16, %if.end5
  %12 = load ptr, ptr %info, align 8, !dbg !5757
  call void @kfree(ptr noundef %12) #17, !dbg !5758
  br label %if.end18, !dbg !5759

if.end18:                                         ; preds = %if.end17, %if.end
  %13 = load i8, ptr %match, align 1, !dbg !5760, !range !5761, !noundef !977
  %tobool19 = trunc i8 %13 to i1, !dbg !5760
  store i1 %tobool19, ptr %retval, align 1, !dbg !5762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5762

cleanup:                                          ; preds = %if.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %match) #16, !dbg !5763
  call void @llvm.lifetime.end.p0(i64 8, ptr %hid) #16, !dbg !5763
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #16, !dbg !5763
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #16, !dbg !5763
  %14 = load i1, ptr %retval, align 1, !dbg !5763
  ret i1 %14, !dbg !5763
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5764 dso_local i32 @acpi_evaluate_integer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5774 dso_local void @acpi_handle_printk(ptr noundef, ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !5777 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5781, metadata !DIExpression()), !dbg !5783
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5782, metadata !DIExpression()), !dbg !5784
  %0 = load i64, ptr %size.addr, align 8, !dbg !5785
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5786
  %or = or i32 %1, 256, !dbg !5787
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !5788
  ret ptr %call, !dbg !5789
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5790 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !5794 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5796, metadata !DIExpression()), !dbg !5797
  br label %do.body, !dbg !5798

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5799

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5801

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5799

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5803
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5803
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5803
  store volatile ptr %0, ptr %next, align 8, !dbg !5803
  br label %do.end3, !dbg !5803

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5799

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5805

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5806

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5808

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5806

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5810
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5810
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5810
  store volatile ptr %2, ptr %prev, align 8, !dbg !5810
  br label %do.end9, !dbg !5810

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5806

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5812
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5813 dso_local i32 @acpi_ioapic_registered(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5814 dso_local ptr @acpi_get_pci_dev(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resource_size(ptr noundef %res) #4 align 16 !dbg !5818 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5824, metadata !DIExpression()), !dbg !5825
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5826
  %end = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1, !dbg !5827
  %1 = load i64, ptr %end, align 8, !dbg !5827
  %2 = load ptr, ptr %res.addr, align 8, !dbg !5828
  %start = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 0, !dbg !5829
  %3 = load i64, ptr %start, align 8, !dbg !5829
  %sub = sub i64 %1, %3, !dbg !5830
  %add = add i64 %sub, 1, !dbg !5831
  ret i64 %add, !dbg !5832
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5833 dso_local i32 @pci_enable_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5834 dso_local void @pci_set_master(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5835 dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5838 dso_local i32 @acpi_walk_resources(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @setup_res(ptr noundef %acpi_res, ptr noundef %data) #0 align 16 !dbg !6256 {
entry:
  %retval = alloca i32, align 4
  %acpi_res.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %res = alloca ptr, align 8
  %win = alloca %struct.resource_win, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %acpi_res, ptr %acpi_res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acpi_res.addr, metadata !6258, metadata !DIExpression()), !dbg !6267
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6259, metadata !DIExpression()), !dbg !6268
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !6269
  call void @llvm.dbg.declare(metadata ptr %res, metadata !6260, metadata !DIExpression()), !dbg !6270
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6271
  store ptr %0, ptr %res, align 8, !dbg !6270
  call void @llvm.lifetime.start.p0(i64 72, ptr %win) #16, !dbg !6272
  call void @llvm.dbg.declare(metadata ptr %win, metadata !6261, metadata !DIExpression()), !dbg !6273
  call void @llvm.memset.p0.i64(ptr align 8 %win, i8 0, i64 72, i1 false), !dbg !6274
  %1 = load ptr, ptr %res, align 8, !dbg !6275
  %flags = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 3, !dbg !6276
  store i64 0, ptr %flags, align 8, !dbg !6277
  %2 = load ptr, ptr %acpi_res.addr, align 8, !dbg !6278
  %call = call i32 @acpi_dev_filter_resource_type(ptr noundef %2, i64 noundef 512) #17, !dbg !6280
  %tobool = icmp ne i32 %call, 0, !dbg !6280
  br i1 %tobool, label %if.then, label %if.end, !dbg !6281

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6282

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %acpi_res.addr, align 8, !dbg !6283
  %4 = load ptr, ptr %res, align 8, !dbg !6285
  %call1 = call zeroext i1 @acpi_dev_resource_memory(ptr noundef %3, ptr noundef %4) #17, !dbg !6286
  br i1 %call1, label %if.end8, label %if.then2, !dbg !6287

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %acpi_res.addr, align 8, !dbg !6288
  %call3 = call zeroext i1 @acpi_dev_resource_address_space(ptr noundef %5, ptr noundef %win) #17, !dbg !6291
  br i1 %call3, label %if.then5, label %lor.lhs.false, !dbg !6292

lor.lhs.false:                                    ; preds = %if.then2
  %6 = load ptr, ptr %acpi_res.addr, align 8, !dbg !6293
  %call4 = call zeroext i1 @acpi_dev_resource_ext_address_space(ptr noundef %6, ptr noundef %win) #17, !dbg !6294
  br i1 %call4, label %if.then5, label %if.end7, !dbg !6295

if.then5:                                         ; preds = %lor.lhs.false, %if.then2
  %7 = load ptr, ptr %res, align 8, !dbg !6296
  %res6 = getelementptr inbounds %struct.resource_win, ptr %win, i32 0, i32 0, !dbg !6297
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %res6, i64 64, i1 false), !dbg !6297
  br label %if.end7, !dbg !6298

if.end7:                                          ; preds = %if.then5, %lor.lhs.false
  br label %if.end8, !dbg !6299

if.end8:                                          ; preds = %if.end7, %if.end
  %8 = load ptr, ptr %res, align 8, !dbg !6300
  %flags9 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 3, !dbg !6302
  %9 = load i64, ptr %flags9, align 8, !dbg !6302
  %and = and i64 %9, 8192, !dbg !6303
  %tobool10 = icmp ne i64 %and, 0, !dbg !6303
  br i1 %tobool10, label %if.then15, label %lor.lhs.false11, !dbg !6304

lor.lhs.false11:                                  ; preds = %if.end8
  %10 = load ptr, ptr %res, align 8, !dbg !6305
  %flags12 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 3, !dbg !6306
  %11 = load i64, ptr %flags12, align 8, !dbg !6306
  %and13 = and i64 %11, 268435456, !dbg !6307
  %tobool14 = icmp ne i64 %and13, 0, !dbg !6307
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !6308

if.then15:                                        ; preds = %lor.lhs.false11, %if.end8
  %12 = load ptr, ptr %res, align 8, !dbg !6309
  %flags16 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 3, !dbg !6310
  store i64 0, ptr %flags16, align 8, !dbg !6311
  br label %if.end17, !dbg !6309

if.end17:                                         ; preds = %if.then15, %lor.lhs.false11
  store i32 16387, ptr %retval, align 4, !dbg !6312
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6312

cleanup:                                          ; preds = %if.end17, %if.then
  call void @llvm.lifetime.end.p0(i64 72, ptr %win) #16, !dbg !6313
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !6313
  %13 = load i32, ptr %retval, align 4, !dbg !6313
  ret i32 %13, !dbg !6313
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6314 dso_local i32 @insert_resource(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6317 dso_local i32 @acpi_register_ioapic(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !6320 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6324, metadata !DIExpression()), !dbg !6326
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6325, metadata !DIExpression()), !dbg !6327
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6328
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6329
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6330
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !6331
  %3 = load ptr, ptr %next, align 8, !dbg !6331
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #17, !dbg !6332
  ret void, !dbg !6333
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6334 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6338 dso_local zeroext i1 @acpi_has_method(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6341 dso_local i32 @acpi_get_object_info(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6345 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6349 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6351, metadata !DIExpression()), !dbg !6356
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6352, metadata !DIExpression()), !dbg !6357
  %0 = load i64, ptr %size.addr, align 8, !dbg !6358
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6359
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6360

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6361
  %tobool = icmp ne i64 %2, 0, !dbg !6361
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6362

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6363
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6353, metadata !DIExpression()), !dbg !6364
  %3 = load i64, ptr %size.addr, align 8, !dbg !6365
  %cmp = icmp ugt i64 %3, 8192, !dbg !6367
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6368

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6369
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6370
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !6371
  store ptr %call, ptr %retval, align 8, !dbg !6372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6372

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6373
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6373
  store i32 %call2, ptr %index, align 4, !dbg !6374
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6375
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6376
  %9 = ptrtoint ptr %8 to i64, !dbg !6376
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6377
  %idxprom = zext i32 %call3 to i64, !dbg !6378
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6378
  %10 = load i32, ptr %index, align 4, !dbg !6379
  %idxprom4 = zext i32 %10 to i64, !dbg !6378
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6378
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6378
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6380
  %13 = load i64, ptr %size.addr, align 8, !dbg !6381
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !6382
  store ptr %call6, ptr %retval, align 8, !dbg !6383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6383

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6384
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6385
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6386
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !6387
  store ptr %call8, ptr %retval, align 8, !dbg !6388
  br label %return, !dbg !6388

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6389
  ret ptr %16, !dbg !6389
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6390 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !6391 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6395, metadata !DIExpression()), !dbg !6397
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6396, metadata !DIExpression()), !dbg !6398
  %0 = load i64, ptr %size.addr, align 8, !dbg !6399
  %tobool = icmp ne i64 %0, 0, !dbg !6399
  br i1 %tobool, label %if.end, label %if.then, !dbg !6401

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6402
  br label %return, !dbg !6402

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6403
  %cmp = icmp ule i64 %1, 8, !dbg !6405
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6406

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6407
  br label %return, !dbg !6407

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6408
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6410
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6411

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6412
  %cmp4 = icmp ule i64 %3, 96, !dbg !6413
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6414

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6415
  br label %return, !dbg !6415

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6416
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6418
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6419

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6420
  %cmp9 = icmp ule i64 %5, 192, !dbg !6421
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6422

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6423
  br label %return, !dbg !6423

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6424
  %cmp12 = icmp ule i64 %6, 8, !dbg !6426
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6427

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6428
  br label %return, !dbg !6428

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6429
  %cmp15 = icmp ule i64 %7, 16, !dbg !6431
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6432

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6433
  br label %return, !dbg !6433

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6434
  %cmp18 = icmp ule i64 %8, 32, !dbg !6436
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6437

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6438
  br label %return, !dbg !6438

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6439
  %cmp21 = icmp ule i64 %9, 64, !dbg !6441
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6442

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6443
  br label %return, !dbg !6443

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6444
  %cmp24 = icmp ule i64 %10, 128, !dbg !6446
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6447

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6448
  br label %return, !dbg !6448

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6449
  %cmp27 = icmp ule i64 %11, 256, !dbg !6451
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6452

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6453
  br label %return, !dbg !6453

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6454
  %cmp30 = icmp ule i64 %12, 512, !dbg !6456
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6457

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6458
  br label %return, !dbg !6458

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6459
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6461
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6462

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6463
  br label %return, !dbg !6463

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6464
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6466
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6467

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6468
  br label %return, !dbg !6468

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6469
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6471
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6472

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6473
  br label %return, !dbg !6473

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6474
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6476
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6477

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6478
  br label %return, !dbg !6478

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6479
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6481
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6482

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6483
  br label %return, !dbg !6483

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6484
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6486
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6487

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6488
  br label %return, !dbg !6488

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6489
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6491
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6492

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6493
  br label %return, !dbg !6493

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6494
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6496
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6497

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6498
  br label %return, !dbg !6498

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6499
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6501
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6502

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6503
  br label %return, !dbg !6503

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6504
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6506
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6507

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6508
  br label %return, !dbg !6508

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6509
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6511
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6512

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6513
  br label %return, !dbg !6513

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6514
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6516
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6517

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6518
  br label %return, !dbg !6518

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6519, !range !5761, !noundef !977
  %tobool69 = trunc i8 %25 to i1, !dbg !6519
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6521

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6522

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #21, !dbg !6523, !srcloc !6526
  unreachable, !dbg !6523

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6527

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6528

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6529

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6531

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6529

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.14, i32 480, i32 0, i64 12) #16, !dbg !6533, !srcloc !6535
  br label %do.end75, !dbg !6533

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6529

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6536
  br label %return, !dbg !6536

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6537
  ret i32 %26, !dbg !6537
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6538 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !6544 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6548, metadata !DIExpression()), !dbg !6550
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6549, metadata !DIExpression()), !dbg !6551
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6552
  %and = and i32 %0, 17, !dbg !6552
  %cmp = icmp eq i32 %and, 0, !dbg !6552
  %lnot = xor i1 %cmp, true, !dbg !6552
  %lnot1 = xor i1 %lnot, true, !dbg !6552
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6552
  %conv = sext i32 %lnot.ext to i64, !dbg !6552
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6552
  %tobool = icmp ne i64 %expval, 0, !dbg !6552
  br i1 %tobool, label %if.then, label %if.end, !dbg !6554

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6555
  br label %return, !dbg !6555

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6556
  %and2 = and i32 %1, 1, !dbg !6558
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6558
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6559

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6560
  br label %return, !dbg !6560

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6561
  br label %return, !dbg !6561

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6563
  ret i32 %2, !dbg !6563
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6564 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6565 dso_local void @__compiletime_assert_117() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6566 dso_local i32 @acpi_dev_filter_resource_type(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6569 dso_local zeroext i1 @acpi_dev_resource_memory(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6572 dso_local zeroext i1 @acpi_dev_resource_address_space(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6576 dso_local zeroext i1 @acpi_dev_resource_ext_address_space(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6577 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6581, metadata !DIExpression()), !dbg !6584
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6582, metadata !DIExpression()), !dbg !6585
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6583, metadata !DIExpression()), !dbg !6586
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6587
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6589
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6590
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !6591
  br i1 %call, label %if.end, label %if.then, !dbg !6592

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6593

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6594
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6595
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6596
  store ptr %3, ptr %prev1, align 8, !dbg !6597
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6598
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6599
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6600
  store ptr %5, ptr %next2, align 8, !dbg !6601
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6602
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6603
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6604
  store ptr %7, ptr %prev3, align 8, !dbg !6605
  br label %do.body, !dbg !6606

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6607

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6609

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6607

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6611
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6611
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6611
  store volatile ptr %9, ptr %next6, align 8, !dbg !6611
  br label %do.end7, !dbg !6611

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6607

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6613
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6614 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6618, metadata !DIExpression()), !dbg !6621
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6619, metadata !DIExpression()), !dbg !6622
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6620, metadata !DIExpression()), !dbg !6623
  ret i1 true, !dbg !6624
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !6625 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6627, metadata !DIExpression()), !dbg !6628
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6629
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !6631
  br i1 %call, label %if.end, label %if.then, !dbg !6632

if.then:                                          ; preds = %entry
  br label %return, !dbg !6633

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6634
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6635
  %2 = load ptr, ptr %prev, align 8, !dbg !6635
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6636
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6637
  %4 = load ptr, ptr %next, align 8, !dbg !6637
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !6638
  br label %return, !dbg !6639

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6639
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !6640 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6644, metadata !DIExpression()), !dbg !6645
  ret i1 true, !dbg !6646
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6647 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6649, metadata !DIExpression()), !dbg !6651
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6650, metadata !DIExpression()), !dbg !6652
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6653
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6654
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6655
  store ptr %0, ptr %prev1, align 8, !dbg !6656
  br label %do.body, !dbg !6657

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6658

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6660

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6658

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6662
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6662
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6662
  store volatile ptr %2, ptr %next4, align 8, !dbg !6662
  br label %do.end5, !dbg !6662

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6658

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6664
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954}
!llvm.ident = !{!4955}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ioapic_list_lock", scope: !2, file: !3, line: 39, type: !690, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.ioapic.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/ioapic\22 -D KBUILD_BASENAME=\22ioapic\22 -D KBUILD_MODNAME=\22ioapic\22 -D __KBUILD_MODNAME=kmod_ioapic -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/ioapic.ll drivers/acpi/ioapic.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !162, globals: !4891, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/ioapic.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "563c7cb49f7cece8ce4533af55179304")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !147, !152}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !19, line: 54, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "USRQUOTA", value: 0)
!22 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!23 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !30, line: 9, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!33 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!34 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!35 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!36 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !38, line: 1325, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!40 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!41 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!42 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!43 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!44 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!45 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!46 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!47 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!48 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!49 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!50 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!51 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!52 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !54, line: 68, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!57 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!58 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !75, line: 15, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!79 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!80 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !82, line: 26, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!86 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 45, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !94, line: 487, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!97 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!98 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!99 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !101, line: 620, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!104 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!105 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!106 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!107 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !101, line: 597, baseType: !109, size: 32, elements: !110)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!112 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!113 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!114 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!115 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124}
!118 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!119 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!120 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!121 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!122 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!123 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!124 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!128 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!129 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!133 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!134 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!138 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!139 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!140 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !142, line: 30, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!145 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!146 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 10, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!149 = !{!150, !151}
!150 = !DIEnumerator(name: "false", value: 0)
!151 = !DIEnumerator(name: "true", value: 1)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !153, line: 364, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!154 = !{!155, !156, !157, !158, !159, !160, !161}
!155 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!156 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!157 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!158 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!159 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!160 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!161 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!162 = !{!163, !169, !170, !171, !1202, !175, !165, !4888, !195, !4889}
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !164, line: 421, baseType: !165)
!164 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !166, line: 21, baseType: !167)
!166 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !168, line: 27, baseType: !7)
!168 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_ioapic", file: !3, line: 29, size: 896, elements: !173)
!173 = !{!174, !176, !177, !178, !201, !4887}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "root_handle", scope: !172, file: !3, line: 30, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !164, line: 424, baseType: !170)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !172, file: !3, line: 31, baseType: !175, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "gsi_base", scope: !172, file: !3, line: 32, baseType: !165, size: 32, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !172, file: !3, line: 33, baseType: !179, size: 512, offset: 192)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !180, line: 21, size: 512, elements: !181)
!180 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!181 = !{!182, !189, !190, !194, !196, !197, !199, !200}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !179, file: !180, line: 22, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !184, line: 164, baseType: !185)
!184 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !184, line: 159, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !166, line: 23, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !168, line: 31, baseType: !188)
!188 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !179, file: !180, line: 23, baseType: !183, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !179, file: !180, line: 24, baseType: !191, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !179, file: !180, line: 25, baseType: !195, size: 64, offset: 192)
!195 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !179, file: !180, line: 26, baseType: !195, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !179, file: !180, line: 27, baseType: !198, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !179, file: !180, line: 27, baseType: !198, size: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !179, file: !180, line: 27, baseType: !198, size: 64, offset: 448)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "pdev", scope: !172, file: !3, line: 34, baseType: !202, size: 64, offset: 704)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !204, line: 322, size: 16640, elements: !205)
!204 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!205 = !{!206, !212, !4662, !4663, !4664, !4665, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4771, !4772, !4773, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4850, !4851, !4852, !4854, !4855, !4857, !4858, !4859, !4860, !4866, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !203, file: !204, line: 323, baseType: !207, size: 128)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !184, line: 190, size: 128, elements: !208)
!208 = !{!209, !211}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !207, file: !184, line: 191, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !207, file: !184, line: 191, baseType: !210, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !203, file: !204, line: 324, baseType: !213, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !204, line: 647, size: 8256, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !226, !227, !228, !253, !254, !258, !260, !261, !262, !263, !267, !269, !271, !4657, !4658, !4659, !4660, !4661}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !214, file: !204, line: 648, baseType: !207, size: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !214, file: !204, line: 649, baseType: !213, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !214, file: !204, line: 650, baseType: !207, size: 128, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !214, file: !204, line: 651, baseType: !207, size: 128, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !214, file: !204, line: 652, baseType: !202, size: 64, offset: 448)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !214, file: !204, line: 653, baseType: !207, size: 128, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !214, file: !204, line: 655, baseType: !223, size: 256, offset: 640)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 256, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 4)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !214, file: !204, line: 656, baseType: !207, size: 128, offset: 896)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !214, file: !204, line: 657, baseType: !179, size: 512, offset: 1024)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !214, file: !204, line: 659, baseType: !229, size: 64, offset: 1536)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !204, line: 773, size: 320, elements: !231)
!231 = !{!232, !236, !240, !244, !249}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !230, file: !204, line: 774, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!109, !213}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !230, file: !204, line: 775, baseType: !237, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !213}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !230, file: !204, line: 776, baseType: !241, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!170, !213, !7, !109}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !230, file: !204, line: 777, baseType: !245, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!109, !213, !7, !109, !109, !248}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !230, file: !204, line: 778, baseType: !250, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!109, !213, !7, !109, !109, !165}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !214, file: !204, line: 660, baseType: !170, size: 64, offset: 1600)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !214, file: !204, line: 661, baseType: !255, size: 64, offset: 1664)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !257, line: 86, flags: DIFlagFwdDecl)
!257 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!258 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !214, file: !204, line: 663, baseType: !259, size: 8, offset: 1728)
!259 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !214, file: !204, line: 664, baseType: !259, size: 8, offset: 1736)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !214, file: !204, line: 665, baseType: !259, size: 8, offset: 1744)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !214, file: !204, line: 666, baseType: !259, size: 8, offset: 1752)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !204, line: 671, baseType: !264, size: 384, offset: 1760)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 384, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 48)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !214, file: !204, line: 673, baseType: !268, size: 16, offset: 2144)
!268 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !214, file: !204, line: 674, baseType: !270, size: 16, offset: 2160)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !204, line: 255, baseType: !268)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !214, file: !204, line: 675, baseType: !272, size: 64, offset: 2176)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !274)
!274 = !{!275, !4197, !4198, !4201, !4202, !4255, !4340, !4341, !4342, !4343, !4344, !4351, !4443, !4456, !4466, !4470, !4472, !4473, !4474, !4478, !4485, !4486, !4489, !4492, !4496, !4599, !4600, !4601, !4602, !4603, !4604, !4634, !4635, !4636, !4639, !4642, !4651, !4652, !4653, !4654, !4655, !4656}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !273, file: !94, line: 706, baseType: !276, size: 512)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !277, line: 64, size: 512, elements: !278)
!277 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!278 = !{!279, !280, !281, !283, !368, !4084, !4187, !4192, !4193, !4194, !4195, !4196}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !276, file: !277, line: 65, baseType: !191, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !276, file: !277, line: 66, baseType: !207, size: 128, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !276, file: !277, line: 67, baseType: !282, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !276, file: !277, line: 68, baseType: !284, size: 64, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !277, line: 168, size: 768, elements: !286)
!286 = !{!287, !288, !327, !328}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !285, file: !277, line: 169, baseType: !207, size: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !285, file: !277, line: 170, baseType: !289, size: 32, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !290, line: 29, baseType: !291)
!290 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !290, line: 17, size: 32, elements: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !290, line: 18, baseType: !294, size: 32)
!294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !291, file: !290, line: 18, size: 32, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !294, file: !290, line: 19, baseType: !297, size: 32)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !298, line: 14, size: 32, elements: !299)
!298 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !297, file: !298, line: 15, baseType: !301, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !302, line: 44, baseType: !303)
!302 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !302, line: 14, size: 32, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, scope: !303, file: !302, line: 15, baseType: !306, size: 32)
!306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !302, line: 15, size: 32, elements: !307)
!307 = !{!308, !313, !320}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !306, file: !302, line: 16, baseType: !309, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !184, line: 174, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !184, line: 172, size: 32, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !310, file: !184, line: 173, baseType: !109, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, scope: !306, file: !302, line: 24, baseType: !314, size: 16)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !302, line: 24, size: 16, elements: !315)
!315 = !{!316, !319}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !314, file: !302, line: 25, baseType: !317, size: 8)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !166, line: 17, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !168, line: 21, baseType: !259)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !314, file: !302, line: 26, baseType: !317, size: 8, offset: 8)
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !306, file: !302, line: 28, baseType: !321, size: 32)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !302, line: 28, size: 32, elements: !322)
!322 = !{!323, !326}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !321, file: !302, line: 29, baseType: !324, size: 16)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !166, line: 19, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !168, line: 24, baseType: !268)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !321, file: !302, line: 30, baseType: !324, size: 16, offset: 16)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !285, file: !277, line: 171, baseType: !276, size: 512, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !285, file: !277, line: 172, baseType: !329, size: 64, offset: 704)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !277, line: 133, size: 192, elements: !332)
!332 = !{!333, !340, !345}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !331, file: !277, line: 134, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!109, !338}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !331, file: !277, line: 135, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!191, !338}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !331, file: !277, line: 136, baseType: !346, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!109, !338, !350}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !277, line: 125, size: 20736, elements: !352)
!352 = !{!353, !358, !362, !363, !367}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !351, file: !277, line: 126, baseType: !354, size: 192)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 192, elements: !356)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!356 = !{!357}
!357 = !DISubrange(count: 3)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !351, file: !277, line: 127, baseType: !359, size: 4096, offset: 192)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 4096, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !351, file: !277, line: 128, baseType: !109, size: 32, offset: 4288)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !351, file: !277, line: 129, baseType: !364, size: 16384, offset: 4320)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 16384, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 2048)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !351, file: !277, line: 130, baseType: !109, size: 32, offset: 20704)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !276, file: !277, line: 69, baseType: !369, size: 64, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !277, line: 116, size: 384, elements: !372)
!372 = !{!373, !377, !405, !4046, !4074, !4078}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !371, file: !277, line: 117, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !282}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !371, file: !277, line: 118, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !381, line: 254, size: 128, elements: !382)
!381 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!382 = !{!383, !398}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !380, file: !381, line: 255, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!387, !282, !392, !355}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !184, line: 66, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !389, line: 73, baseType: !390)
!389 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !389, line: 15, baseType: !391)
!391 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !381, line: 30, size: 128, elements: !394)
!394 = !{!395, !396}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !393, file: !381, line: 31, baseType: !191, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !393, file: !381, line: 32, baseType: !397, size: 16, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !184, line: 24, baseType: !268)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !380, file: !381, line: 256, baseType: !399, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!387, !282, !392, !191, !402}
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !184, line: 61, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !389, line: 72, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !389, line: 16, baseType: !195)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !371, file: !277, line: 119, baseType: !406, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !381, line: 84, size: 320, elements: !410)
!410 = !{!411, !412, !416, !4042, !4044}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !409, file: !381, line: 85, baseType: !191, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !409, file: !381, line: 86, baseType: !413, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!397, !282, !392, !109}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !409, file: !381, line: 88, baseType: !417, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!397, !282, !420, !109}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !381, line: 175, size: 512, elements: !422)
!422 = !{!423, !424, !425, !426, !4033, !4037, !4038}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !421, file: !381, line: 176, baseType: !393, size: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !421, file: !381, line: 177, baseType: !402, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !421, file: !381, line: 178, baseType: !170, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !421, file: !381, line: 179, baseType: !427, size: 64, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !432)
!432 = !{!433, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !4027, !4028, !4029, !4030, !4031, !4032}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !431, file: !14, line: 473, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !436)
!436 = !{!437, !438, !439, !447, !448, !455, !456, !459, !460, !3806, !3807, !3808, !3809, !3810, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3850, !3853, !3854, !3855, !3864, !3865, !3866, !3867}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !435, file: !14, line: 642, baseType: !397, size: 16)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !435, file: !14, line: 643, baseType: !268, size: 16, offset: 16)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !435, file: !14, line: 644, baseType: !440, size: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !441, line: 23, baseType: !442)
!441 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 21, size: 32, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !442, file: !441, line: 22, baseType: !445, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !184, line: 37, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !389, line: 49, baseType: !7)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !435, file: !14, line: 645, baseType: !207, size: 128, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !435, file: !14, line: 646, baseType: !449, size: 32, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !441, line: 28, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 26, size: 32, elements: !451)
!451 = !{!452}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !450, file: !441, line: 27, baseType: !453, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !184, line: 38, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !389, line: 50, baseType: !7)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !435, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !435, file: !14, line: 650, baseType: !457, size: 64, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !435, file: !14, line: 651, baseType: !457, size: 64, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !435, file: !14, line: 654, baseType: !461, size: 64, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !464)
!464 = !{!465, !3634, !3644, !3648, !3652, !3656, !3660, !3664, !3668, !3672, !3676, !3677, !3681, !3685, !3722, !3751, !3755, !3761, !3765, !3769, !3773, !3777, !3781, !3787, !3791}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !463, file: !14, line: 1967, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!469, !434, !469, !7}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !471, line: 82, size: 1536, elements: !472)
!471 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!472 = !{!473, !474, !484, !492, !493, !508, !509, !513, !526, !3617, !3618, !3619, !3620, !3626, !3627, !3628}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !470, file: !471, line: 84, baseType: !7, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !470, file: !471, line: 85, baseType: !475, size: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !476, line: 275, baseType: !477)
!476 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !476, line: 275, size: 32, elements: !478)
!478 = !{!479}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !477, file: !476, line: 275, baseType: !480, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !476, line: 69, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !476, line: 64, size: 32, elements: !482)
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !481, file: !476, line: 65, baseType: !7, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !470, file: !471, line: 86, baseType: !485, size: 128, offset: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !486, line: 38, size: 128, elements: !487)
!486 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!487 = !{!488, !490}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !485, file: !486, line: 39, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !485, file: !486, line: 39, baseType: !491, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !470, file: !471, line: 87, baseType: !469, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !470, file: !471, line: 88, baseType: !494, size: 128, offset: 256)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !471, line: 49, size: 128, elements: !495)
!495 = !{!496, !505}
!496 = !DIDerivedType(tag: DW_TAG_member, scope: !494, file: !471, line: 50, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !494, file: !471, line: 50, size: 64, elements: !498)
!498 = !{!499, !504}
!499 = !DIDerivedType(tag: DW_TAG_member, scope: !497, file: !471, line: 51, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !497, file: !471, line: 51, size: 64, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !500, file: !471, line: 52, baseType: !165, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !500, file: !471, line: 52, baseType: !165, size: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !497, file: !471, line: 54, baseType: !186, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !494, file: !471, line: 56, baseType: !506, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !470, file: !471, line: 89, baseType: !434, size: 64, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !470, file: !471, line: 91, baseType: !510, size: 256, offset: 448)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 256, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !470, file: !471, line: 94, baseType: !514, size: 64, offset: 704)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !515, line: 25, size: 64, elements: !516)
!515 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!516 = !{!517}
!517 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !515, line: 26, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !514, file: !515, line: 26, size: 64, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !518, file: !515, line: 28, baseType: !187, size: 64, align: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, scope: !518, file: !515, line: 30, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !518, file: !515, line: 30, size: 64, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !522, file: !515, line: 31, baseType: !289, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !522, file: !515, line: 32, baseType: !109, size: 32, offset: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !470, file: !471, line: 95, baseType: !527, size: 64, offset: 768)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !471, line: 128, size: 1024, align: 512, elements: !530)
!530 = !{!531, !535, !536, !543, !549, !553, !557, !561, !562, !566, !570, !3607, !3611}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !529, file: !471, line: 129, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!109, !469, !7}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !529, file: !471, line: 130, baseType: !532, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !529, file: !471, line: 131, baseType: !537, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!109, !540, !542}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !529, file: !471, line: 132, baseType: !544, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!109, !540, !7, !191, !547}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !529, file: !471, line: 134, baseType: !550, size: 64, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!109, !540}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !529, file: !471, line: 135, baseType: !554, size: 64, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!109, !469}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !529, file: !471, line: 136, baseType: !558, size: 64, offset: 384)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !469}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !529, file: !471, line: 137, baseType: !558, size: 64, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !529, file: !471, line: 138, baseType: !563, size: 64, offset: 512)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !469, !434}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !529, file: !471, line: 139, baseType: !567, size: 64, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!355, !469, !355, !109}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !529, file: !471, line: 140, baseType: !571, size: 64, offset: 640)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!574, !3606}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !576, line: 70, size: 256, elements: !577)
!576 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!577 = !{!578, !579, !3602, !3603}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !575, file: !576, line: 71, baseType: !469, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !575, file: !576, line: 72, baseType: !580, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !582)
!582 = !{!583, !584, !587, !588, !589, !593, !1071, !1211, !1251, !1341, !1345, !1346, !1347, !1348, !1349, !1358, !1359, !1360, !1361, !1366, !1370, !1371, !1374, !1377, !1380, !1383, !1384, !1385, !1426, !3535, !3536, !3537, !3538, !3539, !3540, !3543, !3545, !3552, !3553, !3554, !3555, !3556, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !581, file: !14, line: 1191, baseType: !207, size: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !581, file: !14, line: 1192, baseType: !585, size: 32, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !184, line: 21, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !184, line: 18, baseType: !165)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !581, file: !14, line: 1193, baseType: !259, size: 8, offset: 160)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !581, file: !14, line: 1194, baseType: !195, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !581, file: !14, line: 1195, baseType: !590, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !184, line: 52, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !389, line: 88, baseType: !592)
!592 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !581, file: !14, line: 1196, baseType: !594, size: 64, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !596)
!596 = !{!597, !598, !599, !606, !610, !614, !618, !1056, !1057, !1061, !1063, !1064, !1065, !1067, !1068, !1069, !1070}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !595, file: !14, line: 2367, baseType: !191, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !595, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !595, file: !14, line: 2376, baseType: !600, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!109, !603}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !605, line: 32, flags: DIFlagFwdDecl)
!605 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!606 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !595, file: !14, line: 2377, baseType: !607, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !609)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !595, file: !14, line: 2378, baseType: !611, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!469, !594, !109, !191, !170}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !595, file: !14, line: 2380, baseType: !615, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !580}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !595, file: !14, line: 2381, baseType: !619, size: 64, offset: 384)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !621)
!621 = !{!622, !623, !624, !628, !650, !676, !677, !678, !679, !683, !688, !689, !709, !765, !766, !767, !768, !769, !772, !773, !774, !782, !786, !813, !834, !835, !836, !837, !846, !869, !870, !873, !876, !877, !878, !879, !880, !881, !882, !887, !888, !1014, !1022, !1023, !1024, !1026, !1030, !1031, !1035, !1036, !1037, !1038, !1040, !1041, !1042, !1049, !1050, !1051, !1055}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !620, file: !6, line: 403, baseType: !5, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !620, file: !6, line: 406, baseType: !207, size: 128, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !620, file: !6, line: 409, baseType: !625, size: 448, offset: 192)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 448, elements: !626)
!626 = !{!627}
!627 = !DISubrange(count: 56)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !620, file: !6, line: 417, baseType: !629, size: 768, offset: 640)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !630)
!630 = !{!631, !632, !633, !634, !637}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !629, file: !6, line: 46, baseType: !276, size: 512)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !629, file: !6, line: 47, baseType: !619, size: 64, offset: 512)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !629, file: !6, line: 48, baseType: !282, size: 64, offset: 576)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !629, file: !6, line: 49, baseType: !635, size: 64, offset: 640)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !629, file: !6, line: 50, baseType: !638, size: 64, offset: 704)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !640, line: 26, size: 256, elements: !641)
!640 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!641 = !{!642, !643}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !639, file: !640, line: 27, baseType: !7, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !639, file: !640, line: 28, baseType: !644, size: 192, offset: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !645, line: 43, size: 192, elements: !646)
!645 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!646 = !{!647, !649}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !644, file: !645, line: 44, baseType: !648, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !298, line: 23, baseType: !297)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !644, file: !645, line: 45, baseType: !207, size: 128, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !620, file: !6, line: 418, baseType: !651, size: 64, offset: 1408)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !653)
!653 = !{!654, !655, !660, !664, !668, !672}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !652, file: !6, line: 54, baseType: !393, size: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !652, file: !6, line: 55, baseType: !656, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!387, !651, !659, !355}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !652, file: !6, line: 57, baseType: !661, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!387, !651, !659, !191, !402}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !652, file: !6, line: 59, baseType: !665, size: 64, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !619, !191}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !652, file: !6, line: 60, baseType: !669, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!109, !619}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !652, file: !6, line: 61, baseType: !673, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !619}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !620, file: !6, line: 419, baseType: !191, size: 64, offset: 1472)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !620, file: !6, line: 420, baseType: !191, size: 64, offset: 1536)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !620, file: !6, line: 421, baseType: !282, size: 64, offset: 1600)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !620, file: !6, line: 424, baseType: !680, size: 64, offset: 1664)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!682 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !620, file: !6, line: 425, baseType: !684, size: 64, offset: 1728)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !166, line: 20, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !168, line: 26, baseType: !109)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !620, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !620, file: !6, line: 435, baseType: !690, size: 256, offset: 1856)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !691, line: 66, size: 256, elements: !692)
!691 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!692 = !{!693, !702, !703, !708}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !690, file: !691, line: 67, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !695, line: 13, baseType: !696)
!695 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !184, line: 181, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !184, line: 179, size: 64, elements: !698)
!698 = !{!699}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !697, file: !184, line: 180, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !166, line: 22, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !168, line: 30, baseType: !592)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !690, file: !691, line: 68, baseType: !648, size: 32, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !690, file: !691, line: 70, baseType: !704, size: 32, offset: 96)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !705, line: 15, size: 32, elements: !706)
!705 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!706 = !{!707}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !704, file: !705, line: 20, baseType: !309, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !690, file: !691, line: 72, baseType: !207, size: 128, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !620, file: !6, line: 437, baseType: !710, size: 64, offset: 2112)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !712, line: 69, size: 320, elements: !713)
!712 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!713 = !{!714, !715, !716, !736, !738, !742, !743}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !711, file: !712, line: 70, baseType: !191, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !711, file: !712, line: 71, baseType: !619, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !711, file: !712, line: 72, baseType: !717, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !712, line: 47, size: 256, elements: !720)
!720 = !{!721, !722, !728, !732}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !719, file: !712, line: 49, baseType: !7, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !719, file: !712, line: 51, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!109, !191, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !711)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !719, file: !712, line: 53, baseType: !729, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!109, !355, !726}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !719, file: !712, line: 55, baseType: !733, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !170}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !711, file: !712, line: 73, baseType: !737, size: 16, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !711, file: !712, line: 74, baseType: !739, size: 8, offset: 208)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !166, line: 16, baseType: !740)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !168, line: 20, baseType: !741)
!741 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !712, line: 75, baseType: !317, size: 8, offset: 216)
!743 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !712, line: 76, baseType: !744, size: 64, offset: 256)
!744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !712, line: 76, size: 64, elements: !745)
!745 = !{!746, !747, !754}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !744, file: !712, line: 77, baseType: !170, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !744, file: !712, line: 78, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !712, line: 86, size: 128, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !750, file: !712, line: 87, baseType: !7, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !750, file: !712, line: 88, baseType: !355, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !744, file: !712, line: 79, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !712, line: 92, size: 256, elements: !758)
!758 = !{!759, !760, !761, !763, !764}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !757, file: !712, line: 94, baseType: !7, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !757, file: !712, line: 95, baseType: !7, size: 32, offset: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !757, file: !712, line: 96, baseType: !762, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !757, file: !712, line: 97, baseType: !717, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !757, file: !712, line: 98, baseType: !170, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !620, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !620, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !620, file: !6, line: 442, baseType: !680, size: 64, offset: 2240)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !620, file: !6, line: 443, baseType: !684, size: 64, offset: 2304)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !620, file: !6, line: 444, baseType: !770, size: 8, offset: 2368)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !184, line: 35, baseType: !771)
!771 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !620, file: !6, line: 451, baseType: !770, size: 8, offset: 2376)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !620, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !620, file: !6, line: 455, baseType: !775, size: 64, offset: 2432)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !777, line: 23, size: 96, elements: !778)
!777 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!778 = !{!779, !780, !781}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !776, file: !777, line: 24, baseType: !109, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !776, file: !777, line: 24, baseType: !109, size: 32, offset: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !776, file: !777, line: 24, baseType: !109, size: 32, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !620, file: !6, line: 458, baseType: !783, size: 64, offset: 2496)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!109}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !620, file: !6, line: 460, baseType: !787, size: 4032, align: 512, offset: 2560)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 4032, elements: !811)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !789)
!789 = !{!790, !791, !792}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !788, file: !6, line: 363, baseType: !170, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !788, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !788, file: !6, line: 367, baseType: !793, size: 448, offset: 128)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !794)
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !793, file: !6, line: 320, baseType: !619, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !793, file: !6, line: 321, baseType: !797, size: 384, offset: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !798, line: 40, size: 384, elements: !799)
!798 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !797, file: !798, line: 41, baseType: !801, size: 384, align: 64)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 384, align: 64, elements: !809)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !803, line: 5, size: 192, align: 64, elements: !804)
!803 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!804 = !{!805, !806, !808}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !802, file: !803, line: 6, baseType: !195, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !802, file: !803, line: 7, baseType: !807, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !802, file: !803, line: 8, baseType: !807, size: 64, offset: 128)
!809 = !{!810}
!810 = !DISubrange(count: 2)
!811 = !{!812}
!812 = !DISubrange(count: 7)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !620, file: !6, line: 463, baseType: !814, size: 192, offset: 6592)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !815, line: 8, size: 192, elements: !816)
!815 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!816 = !{!817, !818, !820}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !814, file: !815, line: 10, baseType: !7, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !814, file: !815, line: 11, baseType: !819, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !814, file: !815, line: 12, baseType: !821, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !823, line: 59, size: 48, elements: !824)
!823 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!824 = !{!825, !829, !830, !831, !832, !833}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !822, file: !823, line: 60, baseType: !826, size: 16)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !166, line: 18, baseType: !827)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !168, line: 23, baseType: !828)
!828 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !822, file: !823, line: 61, baseType: !826, size: 16, offset: 16)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !822, file: !823, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !822, file: !823, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !822, file: !823, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !822, file: !823, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !620, file: !6, line: 465, baseType: !195, size: 64, offset: 6784)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !620, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !620, file: !6, line: 470, baseType: !207, size: 128, offset: 6912)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !620, file: !6, line: 471, baseType: !838, size: 64, offset: 7040)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !840, line: 33, size: 96, elements: !841)
!840 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!841 = !{!842, !843, !844, !845}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !839, file: !840, line: 37, baseType: !109, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !839, file: !840, line: 43, baseType: !109, size: 32, offset: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !839, file: !840, line: 45, baseType: !268, size: 16, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !839, file: !840, line: 47, baseType: !268, size: 16, offset: 80)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !620, file: !6, line: 476, baseType: !847, size: 64, offset: 7104)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !849)
!849 = !{!850, !866, !867, !868}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !848, file: !6, line: 379, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !853, line: 204, baseType: !854)
!853 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !853, line: 197, size: 192, elements: !855)
!855 = !{!856, !858, !859, !860, !862, !864}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !854, file: !853, line: 198, baseType: !857, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !853, line: 21, baseType: !167)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !854, file: !853, line: 199, baseType: !259, size: 8, offset: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !854, file: !853, line: 200, baseType: !259, size: 8, offset: 40)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !854, file: !853, line: 201, baseType: !861, size: 16, offset: 48)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !853, line: 17, baseType: !325)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !854, file: !853, line: 202, baseType: !863, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !853, line: 16, baseType: !187)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !854, file: !853, line: 203, baseType: !865, size: 64, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !853, line: 22, baseType: !187)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !848, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !848, file: !6, line: 381, baseType: !355, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !848, file: !6, line: 382, baseType: !355, size: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !620, file: !6, line: 477, baseType: !848, size: 256, offset: 7168)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !620, file: !6, line: 480, baseType: !871, size: 64, offset: 7424)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !620, file: !6, line: 483, baseType: !874, size: 64, offset: 7488)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !620, file: !6, line: 488, baseType: !355, size: 64, offset: 7552)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !620, file: !6, line: 492, baseType: !170, size: 64, offset: 7616)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !620, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !620, file: !6, line: 495, baseType: !170, size: 64, offset: 7744)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !620, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !620, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !620, file: !6, line: 500, baseType: !883, size: 64, offset: 7872)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !885, line: 45, baseType: !886)
!885 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !620, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !620, file: !6, line: 504, baseType: !889, size: 64, offset: 8000)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !892, line: 96, size: 192, elements: !893)
!892 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!893 = !{!894, !895, !974, !978}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !891, file: !892, line: 97, baseType: !7, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !891, file: !892, line: 98, baseType: !896, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !892, line: 24, size: 3072, elements: !898)
!898 = !{!899, !901, !902, !903, !904, !926, !927, !928, !929, !947, !959, !960, !971, !972, !973}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !897, file: !892, line: 26, baseType: !900, size: 128)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !694, size: 128, elements: !809)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !897, file: !892, line: 27, baseType: !900, size: 128, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !897, file: !892, line: 28, baseType: !109, size: 32, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !897, file: !892, line: 31, baseType: !289, size: 32, align: 512, offset: 512)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !897, file: !892, line: 32, baseType: !905, size: 960, offset: 576)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !906, line: 206, size: 960, elements: !907)
!906 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!907 = !{!908, !917, !920, !922, !923, !925}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !905, file: !906, line: 207, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !184, line: 232, size: 128, align: 64, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !910, file: !184, line: 233, baseType: !909, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !910, file: !184, line: 234, baseType: !914, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !909}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !905, file: !906, line: 208, baseType: !918, size: 256, offset: 64)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !919, size: 256, elements: !224)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !905, file: !906, line: 209, baseType: !921, size: 256, offset: 320)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 256, elements: !224)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !905, file: !906, line: 213, baseType: !391, size: 64, offset: 576)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !905, file: !906, line: 215, baseType: !924, size: 256, offset: 640)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 256, elements: !224)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !905, file: !906, line: 216, baseType: !317, size: 8, offset: 896)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !897, file: !892, line: 33, baseType: !195, size: 64, offset: 1536)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !897, file: !892, line: 34, baseType: !195, size: 64, offset: 1600)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !897, file: !892, line: 35, baseType: !770, size: 8, offset: 1664)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !897, file: !892, line: 36, baseType: !930, size: 320, offset: 1728)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !931, line: 11, size: 320, elements: !932)
!931 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!932 = !{!933, !940, !941, !946}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !930, file: !931, line: 16, baseType: !934, size: 128)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !184, line: 198, size: 128, elements: !935)
!935 = !{!936, !938}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !934, file: !184, line: 199, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !934, file: !184, line: 199, baseType: !939, size: 64, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !930, file: !931, line: 17, baseType: !195, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !930, file: !931, line: 18, baseType: !942, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !945}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !930, file: !931, line: 19, baseType: !165, size: 32, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !897, file: !892, line: 37, baseType: !948, size: 256, offset: 2048)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !949, line: 98, size: 256, elements: !950)
!949 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!950 = !{!951, !952, !953}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !948, file: !949, line: 99, baseType: !694, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !948, file: !949, line: 100, baseType: !207, size: 128, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !948, file: !949, line: 101, baseType: !954, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !949, line: 21, baseType: !955)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !958}
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !897, file: !892, line: 38, baseType: !910, size: 128, align: 64, offset: 2304)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !897, file: !892, line: 39, baseType: !961, size: 64, offset: 2432)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !892, line: 49, size: 768, elements: !963)
!963 = !{!964, !965, !966, !967, !968, !969, !970}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !962, file: !892, line: 50, baseType: !289, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !962, file: !892, line: 51, baseType: !921, size: 256, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !962, file: !892, line: 53, baseType: !921, size: 256, offset: 320)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !962, file: !892, line: 54, baseType: !195, size: 64, offset: 576)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !962, file: !892, line: 55, baseType: !961, size: 64, offset: 640)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !962, file: !892, line: 56, baseType: !109, size: 32, offset: 704)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !962, file: !892, line: 57, baseType: !109, size: 32, offset: 736)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !897, file: !892, line: 40, baseType: !195, size: 64, offset: 2496)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !897, file: !892, line: 42, baseType: !109, size: 32, offset: 2560)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !897, file: !892, line: 43, baseType: !890, size: 64, offset: 2624)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !891, file: !892, line: 99, baseType: !975, offset: 128)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !976, line: 211, elements: !977)
!976 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!977 = !{}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !891, file: !892, line: 100, baseType: !979, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !892, line: 63, size: 3008, elements: !981)
!981 = !{!982, !983, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1013}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !980, file: !892, line: 64, baseType: !961, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !980, file: !892, line: 65, baseType: !984, size: 192, offset: 64)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !961, size: 192, elements: !356)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !980, file: !892, line: 67, baseType: !109, size: 32, offset: 256)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !980, file: !892, line: 68, baseType: !690, size: 256, offset: 320)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !980, file: !892, line: 69, baseType: !289, size: 32, offset: 576)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !980, file: !892, line: 70, baseType: !690, size: 256, offset: 640)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !980, file: !892, line: 71, baseType: !195, size: 64, offset: 896)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !980, file: !892, line: 72, baseType: !195, size: 64, offset: 960)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !980, file: !892, line: 73, baseType: !195, size: 64, offset: 1024)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !980, file: !892, line: 74, baseType: !195, size: 64, offset: 1088)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !980, file: !892, line: 75, baseType: !195, size: 64, offset: 1152)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !980, file: !892, line: 76, baseType: !195, size: 64, offset: 1216)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !980, file: !892, line: 77, baseType: !195, size: 64, offset: 1280)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !980, file: !892, line: 78, baseType: !195, size: 64, offset: 1344)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !980, file: !892, line: 79, baseType: !770, size: 8, offset: 1408)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !980, file: !892, line: 80, baseType: !195, size: 64, offset: 1472)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !980, file: !892, line: 81, baseType: !690, size: 256, offset: 1536)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !980, file: !892, line: 82, baseType: !639, size: 256, offset: 1792)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !980, file: !892, line: 84, baseType: !309, size: 32, offset: 2048)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !980, file: !892, line: 87, baseType: !195, size: 64, offset: 2112)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !980, file: !892, line: 88, baseType: !195, size: 64, offset: 2176)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !980, file: !892, line: 89, baseType: !1005, size: 704, offset: 2240)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !949, line: 111, size: 704, elements: !1006)
!1006 = !{!1007, !1008, !1009, !1012}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1005, file: !949, line: 112, baseType: !948, size: 256)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1005, file: !949, line: 113, baseType: !930, size: 320, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1005, file: !949, line: 116, baseType: !1010, size: 64, offset: 576)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !949, line: 18, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1005, file: !949, line: 117, baseType: !109, size: 32, offset: 640)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !980, file: !892, line: 90, baseType: !890, size: 64, offset: 2944)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !620, file: !6, line: 515, baseType: !1015, size: 64, offset: 8064)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1017, line: 117, size: 128, elements: !1018)
!1017 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1018 = !{!1019, !1020, !1021}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1016, file: !1017, line: 118, baseType: !686, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1016, file: !1017, line: 119, baseType: !686, size: 32, offset: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1016, file: !1017, line: 120, baseType: !391, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !620, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !620, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !620, file: !6, line: 520, baseType: !1025, size: 64, offset: 8192)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !620, file: !6, line: 523, baseType: !1027, size: 64, offset: 8256)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !620, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !620, file: !6, line: 525, baseType: !1032, size: 64, offset: 8384)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !620, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !620, file: !6, line: 533, baseType: !170, size: 64, offset: 8512)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !620, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !620, file: !6, line: 535, baseType: !1039, size: 64, offset: 8640)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !620, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !620, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !620, file: !6, line: 540, baseType: !1043, size: 64, offset: 8768)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1045, line: 32, size: 64, elements: !1046)
!1045 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1044, file: !1045, line: 33, baseType: !686, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1044, file: !1045, line: 34, baseType: !686, size: 32, offset: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !620, file: !6, line: 563, baseType: !207, size: 128, offset: 8832)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !620, file: !6, line: 565, baseType: !207, size: 128, offset: 8960)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !620, file: !6, line: 568, baseType: !1052, size: 64, offset: 9088)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !620, file: !6, line: 570, baseType: !309, size: 32, offset: 9152)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !595, file: !14, line: 2382, baseType: !594, size: 64, offset: 448)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !595, file: !14, line: 2383, baseType: !1058, size: 64, offset: 512)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !184, line: 194, size: 64, elements: !1059)
!1059 = !{!1060}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1058, file: !184, line: 195, baseType: !937, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !595, file: !14, line: 2385, baseType: !1062, offset: 576)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !976, line: 206, elements: !977)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !595, file: !14, line: 2386, baseType: !1062, offset: 576)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !595, file: !14, line: 2387, baseType: !1062, offset: 576)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !595, file: !14, line: 2388, baseType: !1066, offset: 576)
!1066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1062, elements: !356)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !595, file: !14, line: 2390, baseType: !1062, offset: 576)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !595, file: !14, line: 2391, baseType: !1062, offset: 576)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !595, file: !14, line: 2392, baseType: !1062, offset: 576)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !595, file: !14, line: 2393, baseType: !1062, offset: 576)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !581, file: !14, line: 1197, baseType: !1072, size: 64, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1074)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1075)
!1075 = !{!1076, !1080, !1084, !1085, !1089, !1095, !1099, !1100, !1101, !1105, !1109, !1113, !1114, !1115, !1121, !1125, !1126, !1133, !1134, !1135, !1136, !1140, !1144, !1193, !1209, !1210}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1074, file: !14, line: 2058, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!434, !580}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1074, file: !14, line: 2059, baseType: !1081, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{null, !434}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1074, file: !14, line: 2060, baseType: !1081, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1074, file: !14, line: 2062, baseType: !1086, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null, !434, !109}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1074, file: !14, line: 2063, baseType: !1090, size: 64, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!109, !434, !1093}
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1074, file: !14, line: 2064, baseType: !1096, size: 64, offset: 320)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!109, !434}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1074, file: !14, line: 2065, baseType: !1081, size: 64, offset: 384)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1074, file: !14, line: 2066, baseType: !615, size: 64, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1074, file: !14, line: 2067, baseType: !1102, size: 64, offset: 512)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!109, !580, !109}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1074, file: !14, line: 2068, baseType: !1106, size: 64, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!109, !580, !13}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1074, file: !14, line: 2069, baseType: !1110, size: 64, offset: 640)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!109, !580}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1074, file: !14, line: 2070, baseType: !1106, size: 64, offset: 704)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1074, file: !14, line: 2071, baseType: !1110, size: 64, offset: 768)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1074, file: !14, line: 2072, baseType: !1116, size: 64, offset: 832)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!109, !469, !1119}
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1074, file: !14, line: 2073, baseType: !1122, size: 64, offset: 896)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!109, !580, !819, !355}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1074, file: !14, line: 2074, baseType: !615, size: 64, offset: 960)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1074, file: !14, line: 2076, baseType: !1127, size: 64, offset: 1024)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!109, !1130, !469}
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1132, line: 66, flags: DIFlagFwdDecl)
!1132 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1074, file: !14, line: 2077, baseType: !1127, size: 64, offset: 1088)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1074, file: !14, line: 2078, baseType: !1127, size: 64, offset: 1152)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1074, file: !14, line: 2079, baseType: !1127, size: 64, offset: 1216)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1074, file: !14, line: 2081, baseType: !1137, size: 64, offset: 1280)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!387, !580, !109, !355, !402, !590}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1074, file: !14, line: 2082, baseType: !1141, size: 64, offset: 1344)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!387, !580, !109, !191, !402, !590}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1074, file: !14, line: 2083, baseType: !1145, size: 64, offset: 1408)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!1148, !434}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1151)
!1151 = !{!1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1176, !1177, !1178}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1150, file: !19, line: 297, baseType: !934, size: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1150, file: !19, line: 298, baseType: !207, size: 128, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1150, file: !19, line: 299, baseType: !207, size: 128, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1150, file: !19, line: 300, baseType: !207, size: 128, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1150, file: !19, line: 301, baseType: !690, size: 256, offset: 512)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1150, file: !19, line: 302, baseType: !289, size: 32, offset: 768)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1150, file: !19, line: 303, baseType: !309, size: 32, offset: 800)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1150, file: !19, line: 304, baseType: !580, size: 64, offset: 832)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1150, file: !19, line: 305, baseType: !1161, size: 64, offset: 896)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1162)
!1162 = !{!1163, !1175}
!1163 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !19, line: 69, baseType: !1164, size: 32)
!1164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !19, line: 69, size: 32, elements: !1165)
!1165 = !{!1166, !1167, !1168}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1164, file: !19, line: 70, baseType: !440, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1164, file: !19, line: 71, baseType: !449, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1164, file: !19, line: 72, baseType: !1169, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1170, line: 24, baseType: !1171)
!1170 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1170, line: 22, size: 32, elements: !1172)
!1172 = !{!1173}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1171, file: !1170, line: 23, baseType: !1174, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1170, line: 20, baseType: !446)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1161, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1150, file: !19, line: 306, baseType: !590, size: 64, offset: 960)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1150, file: !19, line: 307, baseType: !195, size: 64, offset: 1024)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1150, file: !19, line: 308, baseType: !1179, size: 576, offset: 1088)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1180)
!1180 = !{!1181, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1192}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1179, file: !19, line: 206, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !592)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1179, file: !19, line: 207, baseType: !1182, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1179, file: !19, line: 208, baseType: !1182, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1179, file: !19, line: 209, baseType: !1182, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1179, file: !19, line: 210, baseType: !1182, size: 64, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1179, file: !19, line: 211, baseType: !1182, size: 64, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1179, file: !19, line: 212, baseType: !1182, size: 64, offset: 384)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1179, file: !19, line: 213, baseType: !1190, size: 64, offset: 448)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1191, line: 8, baseType: !701)
!1191 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1179, file: !19, line: 214, baseType: !1190, size: 64, offset: 512)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1074, file: !14, line: 2085, baseType: !1194, size: 64, offset: 1472)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!391, !580, !1197}
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1199, line: 15, size: 256, elements: !1200)
!1199 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1200 = !{!1201, !1203, !1204, !1205, !1206}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1198, file: !1199, line: 16, baseType: !1202, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !184, line: 154, baseType: !7)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1198, file: !1199, line: 19, baseType: !109, size: 32, offset: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1198, file: !1199, line: 26, baseType: !195, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1198, file: !1199, line: 33, baseType: !195, size: 64, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1198, file: !1199, line: 36, baseType: !1207, size: 64, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1074, file: !14, line: 2087, baseType: !1194, size: 64, offset: 1536)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1074, file: !14, line: 2089, baseType: !615, size: 64, offset: 1600)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !581, file: !14, line: 1198, baseType: !1212, size: 64, offset: 448)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1214)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1215)
!1215 = !{!1216, !1220, !1224, !1228, !1229, !1230, !1231, !1232, !1237, !1242, !1246}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1214, file: !19, line: 325, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!109, !1149}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1214, file: !19, line: 326, baseType: !1221, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!1149, !580, !109}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1214, file: !19, line: 327, baseType: !1225, size: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !1149}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1214, file: !19, line: 328, baseType: !1217, size: 64, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1214, file: !19, line: 329, baseType: !1217, size: 64, offset: 256)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1214, file: !19, line: 330, baseType: !1217, size: 64, offset: 320)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1214, file: !19, line: 331, baseType: !1102, size: 64, offset: 384)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1214, file: !19, line: 334, baseType: !1233, size: 64, offset: 448)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!1236, !434}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1214, file: !19, line: 335, baseType: !1238, size: 64, offset: 512)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!109, !434, !1241}
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1214, file: !19, line: 337, baseType: !1243, size: 64, offset: 576)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!109, !434, !1236}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1214, file: !19, line: 339, baseType: !1247, size: 64, offset: 640)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!109, !580, !1250}
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !581, file: !14, line: 1199, baseType: !1252, size: 64, offset: 512)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1254)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1255)
!1255 = !{!1256, !1267, !1268, !1272, !1273, !1274, !1289, !1312, !1316, !1317, !1340}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1254, file: !19, line: 431, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!109, !580, !109, !109, !1260}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1262)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1263, line: 8, size: 128, elements: !1264)
!1263 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1264 = !{!1265, !1266}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1262, file: !1263, line: 9, baseType: !574, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1262, file: !1263, line: 10, baseType: !469, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1254, file: !19, line: 432, baseType: !1102, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1254, file: !19, line: 433, baseType: !1269, size: 64, offset: 128)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!109, !580, !7}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1254, file: !19, line: 434, baseType: !1269, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1254, file: !19, line: 435, baseType: !1102, size: 64, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1254, file: !19, line: 436, baseType: !1275, size: 64, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!109, !580, !109, !1278}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1280)
!1280 = !{!1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1279, file: !19, line: 418, baseType: !109, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1279, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1279, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1279, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1279, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1279, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1279, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1279, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1254, file: !19, line: 437, baseType: !1290, size: 64, offset: 384)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!109, !580, !1161, !1293}
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1294, file: !19, line: 346, baseType: !109, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1294, file: !19, line: 347, baseType: !186, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1294, file: !19, line: 348, baseType: !186, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1294, file: !19, line: 349, baseType: !186, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1294, file: !19, line: 350, baseType: !186, size: 64, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1294, file: !19, line: 351, baseType: !186, size: 64, offset: 320)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1294, file: !19, line: 352, baseType: !186, size: 64, offset: 384)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1294, file: !19, line: 353, baseType: !700, size: 64, offset: 448)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1294, file: !19, line: 355, baseType: !700, size: 64, offset: 512)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1294, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1294, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1294, file: !19, line: 358, baseType: !186, size: 64, offset: 640)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1294, file: !19, line: 359, baseType: !186, size: 64, offset: 704)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1294, file: !19, line: 360, baseType: !186, size: 64, offset: 768)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1294, file: !19, line: 361, baseType: !700, size: 64, offset: 832)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1294, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1254, file: !19, line: 438, baseType: !1313, size: 64, offset: 448)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!109, !580, !1250, !1293}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1254, file: !19, line: 440, baseType: !1290, size: 64, offset: 512)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1254, file: !19, line: 441, baseType: !1318, size: 64, offset: 576)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!109, !580, !1321}
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1323)
!1323 = !{!1324, !1325}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1322, file: !19, line: 412, baseType: !7, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1322, file: !19, line: 413, baseType: !1326, size: 1344, offset: 64)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1327, size: 1344, elements: !356)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1328)
!1328 = !{!1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1339}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1327, file: !19, line: 398, baseType: !7, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1327, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1327, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1327, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1327, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1327, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1327, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1327, file: !19, line: 406, baseType: !188, size: 64, offset: 256)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1327, file: !19, line: 407, baseType: !1338, size: 64, offset: 320)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !184, line: 132, baseType: !186)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1327, file: !19, line: 408, baseType: !1338, size: 64, offset: 384)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1254, file: !19, line: 442, baseType: !1269, size: 64, offset: 640)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !581, file: !14, line: 1200, baseType: !1342, size: 64, offset: 576)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1344)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !581, file: !14, line: 1201, baseType: !195, size: 64, offset: 640)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !581, file: !14, line: 1202, baseType: !195, size: 64, offset: 704)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !581, file: !14, line: 1203, baseType: !195, size: 64, offset: 768)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !581, file: !14, line: 1204, baseType: !469, size: 64, offset: 832)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !581, file: !14, line: 1205, baseType: !1350, size: 320, offset: 896)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1351, line: 48, size: 320, elements: !1352)
!1351 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1352 = !{!1353, !1354, !1355, !1356, !1357}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1350, file: !1351, line: 49, baseType: !694, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1350, file: !1351, line: 55, baseType: !694, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1350, file: !1351, line: 57, baseType: !704, size: 32, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1350, file: !1351, line: 59, baseType: !648, size: 32, offset: 160)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1350, file: !1351, line: 60, baseType: !207, size: 128, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !581, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !581, file: !14, line: 1207, baseType: !309, size: 32, offset: 1248)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !581, file: !14, line: 1209, baseType: !170, size: 64, offset: 1280)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !581, file: !14, line: 1211, baseType: !1362, size: 64, offset: 1344)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1365)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !581, file: !14, line: 1223, baseType: !1367, size: 64, offset: 1408)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !486, line: 34, size: 64, elements: !1368)
!1368 = !{!1369}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1367, file: !486, line: 35, baseType: !489, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !581, file: !14, line: 1224, baseType: !207, size: 128, offset: 1472)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !581, file: !14, line: 1225, baseType: !1372, size: 64, offset: 1600)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !581, file: !14, line: 1226, baseType: !1375, size: 64, offset: 1664)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !581, file: !14, line: 1227, baseType: !1378, size: 64, offset: 1728)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !581, file: !14, line: 1228, baseType: !1381, size: 64, offset: 1792)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !581, file: !14, line: 1229, baseType: !934, size: 128, offset: 1856)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !581, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !581, file: !14, line: 1231, baseType: !1386, size: 2496, offset: 2048)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1387)
!1387 = !{!1388, !1389, !1390, !1392, !1424}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1386, file: !19, line: 522, baseType: !7, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1386, file: !19, line: 523, baseType: !1350, size: 320, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1386, file: !19, line: 524, baseType: !1391, size: 192, offset: 384)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 192, elements: !356)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1386, file: !19, line: 525, baseType: !1393, size: 1728, offset: 576)
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 1728, elements: !356)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1395)
!1395 = !{!1396, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1394, file: !19, line: 223, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1399)
!1399 = !{!1400, !1401, !1414, !1415}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1398, file: !19, line: 446, baseType: !109, size: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1398, file: !19, line: 447, baseType: !1402, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1405)
!1405 = !{!1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1404, file: !19, line: 313, baseType: !1102, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1404, file: !19, line: 314, baseType: !1102, size: 64, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1404, file: !19, line: 315, baseType: !1102, size: 64, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1404, file: !19, line: 316, baseType: !1102, size: 64, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1404, file: !19, line: 317, baseType: !1217, size: 64, offset: 256)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1404, file: !19, line: 318, baseType: !1217, size: 64, offset: 320)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1404, file: !19, line: 319, baseType: !1217, size: 64, offset: 384)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1404, file: !19, line: 320, baseType: !1247, size: 64, offset: 448)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1398, file: !19, line: 448, baseType: !619, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1398, file: !19, line: 449, baseType: !1397, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1394, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1394, file: !19, line: 226, baseType: !207, size: 128, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1394, file: !19, line: 227, baseType: !195, size: 64, offset: 256)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1394, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1394, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1394, file: !19, line: 230, baseType: !1182, size: 64, offset: 384)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1394, file: !19, line: 231, baseType: !1182, size: 64, offset: 448)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1394, file: !19, line: 232, baseType: !170, size: 64, offset: 512)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1386, file: !19, line: 526, baseType: !1425, size: 192, offset: 2304)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1402, size: 192, elements: !356)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !581, file: !14, line: 1233, baseType: !1427, size: 2368, offset: 4544)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1428)
!1428 = !{!1429, !1430, !1431}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1427, file: !14, line: 1185, baseType: !268, size: 16)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1427, file: !14, line: 1186, baseType: !268, size: 16, offset: 16)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1427, file: !14, line: 1187, baseType: !1432, size: 2304, offset: 64)
!1432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1433, size: 2304, elements: !356)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1434, line: 12, size: 768, elements: !1435)
!1434 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1435 = !{!1436, !1450, !1451, !3533, !3534}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1433, file: !1434, line: 13, baseType: !1437, size: 384)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1438, line: 17, size: 384, elements: !1439)
!1438 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1439 = !{!1440, !1441, !1442, !1449}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1437, file: !1438, line: 18, baseType: !109, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1437, file: !1438, line: 19, baseType: !109, size: 32, offset: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1437, file: !1438, line: 20, baseType: !1443, size: 192, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1444, line: 41, baseType: !1445)
!1444 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1444, line: 37, size: 192, elements: !1446)
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1445, file: !1444, line: 38, baseType: !289, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1445, file: !1444, line: 39, baseType: !207, size: 128, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1437, file: !1438, line: 22, baseType: !910, size: 128, align: 64, offset: 256)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1433, file: !1434, line: 14, baseType: !762, size: 64, offset: 384)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1433, file: !1434, line: 15, baseType: !1452, size: 64, offset: 448)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1453, line: 16, size: 64, elements: !1454)
!1453 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1454 = !{!1455}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1452, file: !1453, line: 17, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1132, line: 746, size: 58368, elements: !1458)
!1458 = !{!1459, !1467, !1468, !1469, !1475, !1476, !1477, !1478, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1549, !1560, !1655, !1659, !1662, !1693, !1694, !1695, !1696, !1707, !1709, !1710, !1711, !1712, !1713, !1714, !1725, !1726, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1743, !1744, !1751, !1752, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2709, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2757, !2763, !2764, !2765, !2766, !2767, !2771, !2774, !2781, !2786, !2789, !2792, !2795, !2798, !2936, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2974, !2975, !2976, !2985, !2993, !2994, !2995, !2996, !2997, !3002, !3003, !3004, !3007, !3008, !3011, !3014, !3017, !3025, !3028, !3029, !3115, !3116, !3117, !3118, !3119, !3125, !3126, !3127, !3128, !3131, !3132, !3135, !3138, !3139, !3142, !3143, !3144, !3147, !3148, !3149, !3150, !3151, !3152, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3184, !3185, !3191, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3203, !3275, !3277, !3278, !3279, !3280, !3281, !3282, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3310, !3311, !3312}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1457, file: !1132, line: 752, baseType: !1460, size: 192)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1461, line: 56, size: 192, elements: !1462)
!1461 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1462 = !{!1463, !1464, !1465, !1466}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1460, file: !1461, line: 57, baseType: !195, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1460, file: !1461, line: 58, baseType: !195, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1460, file: !1461, line: 59, baseType: !165, size: 32, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1460, file: !1461, line: 61, baseType: !165, size: 32, offset: 160)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1457, file: !1132, line: 754, baseType: !7, size: 32, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1457, file: !1132, line: 767, baseType: !170, size: 64, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1457, file: !1132, line: 768, baseType: !1470, size: 32, offset: 320)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1471, line: 113, baseType: !1472)
!1471 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1471, line: 111, size: 32, elements: !1473)
!1473 = !{!1474}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1472, file: !1471, line: 112, baseType: !309, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1457, file: !1132, line: 770, baseType: !7, size: 32, offset: 352)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1457, file: !1132, line: 771, baseType: !7, size: 32, offset: 384)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1457, file: !1132, line: 774, baseType: !109, size: 32, offset: 416)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1457, file: !1132, line: 775, baseType: !1479, size: 128, offset: 448)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1480, line: 58, size: 128, elements: !1481)
!1480 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1481 = !{!1482, !1488, !1493, !1494}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1479, file: !1480, line: 59, baseType: !1483, size: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1484, line: 60, size: 64, elements: !1485)
!1484 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1485 = !{!1486}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1483, file: !1484, line: 61, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, scope: !1479, file: !1480, line: 60, baseType: !1489, size: 32, offset: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1479, file: !1480, line: 60, size: 32, elements: !1490)
!1490 = !{!1491, !1492}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1489, file: !1480, line: 61, baseType: !7, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1489, file: !1480, line: 62, baseType: !309, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1479, file: !1480, line: 65, baseType: !324, size: 16, offset: 96)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1479, file: !1480, line: 65, baseType: !324, size: 16, offset: 112)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1457, file: !1132, line: 776, baseType: !7, size: 32, offset: 576)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1457, file: !1132, line: 777, baseType: !195, size: 64, offset: 640)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1457, file: !1132, line: 778, baseType: !1456, size: 64, offset: 704)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1457, file: !1132, line: 787, baseType: !109, size: 32, offset: 768)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1457, file: !1132, line: 788, baseType: !109, size: 32, offset: 800)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1457, file: !1132, line: 790, baseType: !109, size: 32, offset: 832)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1457, file: !1132, line: 792, baseType: !109, size: 32, offset: 864)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1457, file: !1132, line: 793, baseType: !109, size: 32, offset: 896)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1457, file: !1132, line: 794, baseType: !109, size: 32, offset: 928)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1457, file: !1132, line: 795, baseType: !7, size: 32, offset: 960)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1457, file: !1132, line: 797, baseType: !1506, size: 2048, offset: 1024)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1132, line: 551, size: 2048, elements: !1507)
!1507 = !{!1508, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1528, !1531, !1532, !1533}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1506, file: !1132, line: 553, baseType: !1509, size: 128)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1132, line: 411, size: 128, elements: !1510)
!1510 = !{!1511, !1512}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1509, file: !1132, line: 412, baseType: !195, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1509, file: !1132, line: 413, baseType: !165, size: 32, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1506, file: !1132, line: 554, baseType: !802, size: 192, align: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1506, file: !1132, line: 555, baseType: !186, size: 64, offset: 320)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1506, file: !1132, line: 556, baseType: !186, size: 64, offset: 384)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1506, file: !1132, line: 558, baseType: !207, size: 128, offset: 448)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1506, file: !1132, line: 559, baseType: !7, size: 32, offset: 576)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1506, file: !1132, line: 561, baseType: !186, size: 64, offset: 640)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1506, file: !1132, line: 562, baseType: !186, size: 64, offset: 704)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1506, file: !1132, line: 563, baseType: !186, size: 64, offset: 768)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1506, file: !1132, line: 564, baseType: !186, size: 64, offset: 832)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1506, file: !1132, line: 565, baseType: !700, size: 64, offset: 896)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1506, file: !1132, line: 566, baseType: !186, size: 64, offset: 960)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1506, file: !1132, line: 568, baseType: !186, size: 64, offset: 1024)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1506, file: !1132, line: 571, baseType: !109, size: 32, offset: 1088)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1506, file: !1132, line: 572, baseType: !1527, size: 64, offset: 1152)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1506, file: !1132, line: 574, baseType: !1529, size: 64, offset: 1216)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1132, line: 49, flags: DIFlagFwdDecl)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1506, file: !1132, line: 576, baseType: !1529, size: 64, offset: 1280)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1506, file: !1132, line: 578, baseType: !195, size: 64, offset: 1344)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1506, file: !1132, line: 588, baseType: !1534, size: 512, align: 512, offset: 1536)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1132, line: 497, size: 512, align: 512, elements: !1535)
!1535 = !{!1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1534, file: !1132, line: 498, baseType: !186, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1534, file: !1132, line: 499, baseType: !186, size: 64, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1534, file: !1132, line: 500, baseType: !186, size: 64, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1534, file: !1132, line: 501, baseType: !165, size: 32, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1534, file: !1132, line: 502, baseType: !165, size: 32, offset: 224)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1534, file: !1132, line: 503, baseType: !195, size: 64, offset: 256)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1534, file: !1132, line: 504, baseType: !195, size: 64, offset: 320)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1534, file: !1132, line: 505, baseType: !195, size: 64, offset: 384)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1534, file: !1132, line: 506, baseType: !1545, size: 64, align: 64, offset: 448)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1132, line: 445, size: 64, align: 64, elements: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1545, file: !1132, line: 446, baseType: !7, size: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1545, file: !1132, line: 447, baseType: !7, size: 32, offset: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1457, file: !1132, line: 798, baseType: !1550, size: 384, offset: 3072)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1132, line: 592, size: 384, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557, !1558}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1550, file: !1132, line: 593, baseType: !207, size: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1550, file: !1132, line: 594, baseType: !195, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1550, file: !1132, line: 595, baseType: !195, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1550, file: !1132, line: 596, baseType: !7, size: 32, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1550, file: !1132, line: 597, baseType: !268, size: 16, offset: 288)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1550, file: !1132, line: 598, baseType: !268, size: 16, offset: 304)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1550, file: !1132, line: 600, baseType: !1559, size: 64, offset: 320)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1457, file: !1132, line: 799, baseType: !1561, size: 1792, offset: 3456)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1132, line: 610, size: 1792, elements: !1562)
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1652, !1653}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1561, file: !1132, line: 611, baseType: !802, size: 192, align: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1561, file: !1132, line: 618, baseType: !186, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1561, file: !1132, line: 619, baseType: !186, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1561, file: !1132, line: 620, baseType: !186, size: 64, offset: 320)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1561, file: !1132, line: 621, baseType: !186, size: 64, offset: 384)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1561, file: !1132, line: 622, baseType: !186, size: 64, offset: 448)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1561, file: !1132, line: 629, baseType: !700, size: 64, offset: 512)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1561, file: !1132, line: 630, baseType: !186, size: 64, offset: 576)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1561, file: !1132, line: 631, baseType: !7, size: 32, offset: 640)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1561, file: !1132, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1561, file: !1132, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1561, file: !1132, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1561, file: !1132, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1561, file: !1132, line: 662, baseType: !1577, size: 512, offset: 704)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1578)
!1578 = !{!1579, !1587, !1588, !1593, !1648, !1649, !1650, !1651}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1577, file: !25, line: 119, baseType: !1580, size: 256)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1581, line: 9, size: 256, elements: !1582)
!1581 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1580, file: !1581, line: 10, baseType: !802, size: 192, align: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1580, file: !1581, line: 11, baseType: !1585, size: 64, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1586, line: 29, baseType: !700)
!1586 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1577, file: !25, line: 120, baseType: !1585, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1577, file: !25, line: 121, baseType: !1589, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!24, !1592}
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1577, file: !25, line: 122, baseType: !1594, size: 64, offset: 384)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1596)
!1596 = !{!1597, !1622, !1623, !1626, !1631, !1632, !1643, !1647}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1595, file: !25, line: 160, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1600)
!1600 = !{!1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1599, file: !25, line: 216, baseType: !648, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1599, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1599, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1599, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1599, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1599, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1599, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1599, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1599, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1599, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1599, file: !25, line: 227, baseType: !268, size: 16, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1599, file: !25, line: 228, baseType: !268, size: 16, offset: 208)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1599, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1599, file: !25, line: 235, baseType: !1585, size: 64, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1599, file: !25, line: 236, baseType: !1592, size: 64, offset: 320)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1599, file: !25, line: 237, baseType: !1585, size: 64, offset: 384)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1599, file: !25, line: 238, baseType: !1592, size: 64, offset: 448)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1599, file: !25, line: 239, baseType: !1619, size: 4096, align: 512, offset: 512)
!1619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1595, size: 4096, align: 512, elements: !1620)
!1620 = !{!1621}
!1621 = !DISubrange(count: 8)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1595, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1595, file: !25, line: 162, baseType: !1624, size: 32, offset: 96)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !184, line: 32, baseType: !1625)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !389, line: 96, baseType: !109)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1595, file: !25, line: 163, baseType: !1627, size: 32, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !476, line: 274, baseType: !1628)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !476, line: 274, size: 32, elements: !1629)
!1629 = !{!1630}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1628, file: !476, line: 274, baseType: !480, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1595, file: !25, line: 164, baseType: !1592, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1595, file: !25, line: 165, baseType: !1633, size: 128, offset: 256)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1581, line: 14, size: 128, elements: !1634)
!1634 = !{!1635}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1633, file: !1581, line: 15, baseType: !1636, size: 128)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !803, line: 26, size: 128, elements: !1637)
!1637 = !{!1638, !1642}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1636, file: !803, line: 27, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !803, line: 12, size: 64, elements: !1640)
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1639, file: !803, line: 13, baseType: !807, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1636, file: !803, line: 28, baseType: !807, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1595, file: !25, line: 166, baseType: !1644, size: 64, offset: 384)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!1585}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1595, file: !25, line: 167, baseType: !1585, size: 64, offset: 448)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1577, file: !25, line: 123, baseType: !317, size: 8, offset: 448)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1577, file: !25, line: 124, baseType: !317, size: 8, offset: 456)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1577, file: !25, line: 125, baseType: !317, size: 8, offset: 464)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1577, file: !25, line: 126, baseType: !317, size: 8, offset: 472)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1561, file: !1132, line: 671, baseType: !1577, size: 512, offset: 1216)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1561, file: !1132, line: 679, baseType: !1654, size: 64, offset: 1728)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1457, file: !1132, line: 800, baseType: !1656, size: 64, offset: 5248)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1658)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1132, line: 800, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1457, file: !1132, line: 809, baseType: !1660, size: 64, offset: 5312)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1132, line: 70, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1457, file: !1132, line: 825, baseType: !1663, size: 2048, align: 512, offset: 5632)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1132, line: 509, size: 2048, align: 512, elements: !1664)
!1664 = !{!1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1663, file: !1132, line: 511, baseType: !186, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1663, file: !1132, line: 512, baseType: !186, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1663, file: !1132, line: 513, baseType: !186, size: 64, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1663, file: !1132, line: 514, baseType: !186, size: 64, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1663, file: !1132, line: 515, baseType: !186, size: 64, offset: 256)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1663, file: !1132, line: 516, baseType: !186, size: 64, offset: 320)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1663, file: !1132, line: 518, baseType: !186, size: 64, offset: 384)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1663, file: !1132, line: 519, baseType: !186, size: 64, offset: 448)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1663, file: !1132, line: 520, baseType: !700, size: 64, offset: 512)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1663, file: !1132, line: 522, baseType: !186, size: 64, offset: 576)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1663, file: !1132, line: 523, baseType: !186, size: 64, offset: 640)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1663, file: !1132, line: 524, baseType: !700, size: 64, offset: 704)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1663, file: !1132, line: 526, baseType: !700, size: 64, offset: 768)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1663, file: !1132, line: 527, baseType: !186, size: 64, offset: 832)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1663, file: !1132, line: 529, baseType: !186, size: 64, offset: 896)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1663, file: !1132, line: 530, baseType: !186, size: 64, offset: 960)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1663, file: !1132, line: 531, baseType: !186, size: 64, offset: 1024)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1663, file: !1132, line: 532, baseType: !186, size: 64, offset: 1088)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1663, file: !1132, line: 533, baseType: !186, size: 64, offset: 1152)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1663, file: !1132, line: 535, baseType: !186, size: 64, offset: 1216)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1663, file: !1132, line: 536, baseType: !186, size: 64, offset: 1280)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1663, file: !1132, line: 537, baseType: !186, size: 64, offset: 1344)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1663, file: !1132, line: 538, baseType: !186, size: 64, offset: 1408)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1663, file: !1132, line: 539, baseType: !186, size: 64, offset: 1472)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1663, file: !1132, line: 540, baseType: !186, size: 64, offset: 1536)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1663, file: !1132, line: 541, baseType: !186, size: 64, offset: 1600)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1663, file: !1132, line: 542, baseType: !186, size: 64, offset: 1664)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1663, file: !1132, line: 543, baseType: !186, size: 64, offset: 1728)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1457, file: !1132, line: 833, baseType: !7, size: 32, offset: 7680)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1457, file: !1132, line: 836, baseType: !7, size: 32, offset: 7712)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1457, file: !1132, line: 837, baseType: !109, size: 32, offset: 7744)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1457, file: !1132, line: 838, baseType: !1697, size: 64, offset: 7808)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1699)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1700, line: 19, baseType: !1701)
!1700 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1700, line: 19, size: 64, elements: !1702)
!1702 = !{!1703}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1701, file: !1700, line: 19, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 64, elements: !1705)
!1705 = !{!1706}
!1706 = !DISubrange(count: 1)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1457, file: !1132, line: 839, baseType: !1708, size: 64, offset: 7872)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1457, file: !1132, line: 840, baseType: !1699, size: 64, offset: 7936)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1457, file: !1132, line: 841, baseType: !170, size: 64, offset: 8000)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1457, file: !1132, line: 843, baseType: !268, size: 16, offset: 8064)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1457, file: !1132, line: 845, baseType: !268, size: 16, offset: 8080)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1457, file: !1132, line: 848, baseType: !109, size: 32, offset: 8096)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1457, file: !1132, line: 849, baseType: !1715, size: 32, offset: 8128)
!1715 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1132, line: 718, size: 32, elements: !1716)
!1716 = !{!1717, !1724}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1715, file: !1132, line: 724, baseType: !1718, size: 32)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1715, file: !1132, line: 719, size: 32, elements: !1719)
!1719 = !{!1720, !1721, !1722, !1723}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1718, file: !1132, line: 720, baseType: !317, size: 8)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1718, file: !1132, line: 721, baseType: !317, size: 8, offset: 8)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1718, file: !1132, line: 722, baseType: !317, size: 8, offset: 16)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1718, file: !1132, line: 723, baseType: !317, size: 8, offset: 24)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1715, file: !1132, line: 725, baseType: !165, size: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1457, file: !1132, line: 850, baseType: !207, size: 128, offset: 8192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1457, file: !1132, line: 851, baseType: !1727, size: 64, offset: 8320)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1132, line: 60, flags: DIFlagFwdDecl)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1457, file: !1132, line: 855, baseType: !195, size: 64, offset: 8384)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1457, file: !1132, line: 856, baseType: !317, size: 8, offset: 8448)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1457, file: !1132, line: 857, baseType: !317, size: 8, offset: 8456)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1457, file: !1132, line: 858, baseType: !109, size: 32, offset: 8480)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1457, file: !1132, line: 859, baseType: !207, size: 128, offset: 8512)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1457, file: !1132, line: 860, baseType: !109, size: 32, offset: 8640)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1457, file: !1132, line: 861, baseType: !207, size: 128, offset: 8704)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1457, file: !1132, line: 873, baseType: !1737, size: 256, offset: 8832)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1132, line: 376, size: 256, elements: !1738)
!1738 = !{!1739, !1740, !1741, !1742}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1737, file: !1132, line: 381, baseType: !195, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1737, file: !1132, line: 384, baseType: !188, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1737, file: !1132, line: 389, baseType: !188, size: 64, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1737, file: !1132, line: 392, baseType: !188, size: 64, offset: 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1457, file: !1132, line: 875, baseType: !207, size: 128, offset: 9088)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1457, file: !1132, line: 877, baseType: !1745, size: 320, offset: 9216)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1746, line: 86, size: 320, elements: !1747)
!1746 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1747 = !{!1748, !1749, !1750}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1745, file: !1746, line: 87, baseType: !109, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1745, file: !1746, line: 88, baseType: !207, size: 128, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1745, file: !1746, line: 89, baseType: !207, size: 128, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1457, file: !1132, line: 878, baseType: !802, size: 192, align: 64, offset: 9536)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1457, file: !1132, line: 881, baseType: !1753, size: 64, offset: 9728)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1755)
!1755 = !{!1756, !2629}
!1756 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !38, line: 734, baseType: !1757, size: 10240)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1754, file: !38, line: 734, size: 10240, elements: !1758)
!1758 = !{!1759, !1763, !1776, !2506, !2507, !2508, !2509, !2510, !2511, !2518, !2519, !2520, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2559, !2561, !2564, !2609, !2610, !2611, !2614, !2615, !2616, !2619, !2620, !2621, !2627, !2628}
!1759 = !DIDerivedType(tag: DW_TAG_member, scope: !1757, file: !38, line: 739, baseType: !1760, size: 512, align: 512)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1757, file: !38, line: 739, size: 512, align: 512, elements: !1761)
!1761 = !{!1762}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1760, file: !38, line: 747, baseType: !309, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1757, file: !38, line: 750, baseType: !1764, size: 128, offset: 512)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1765, line: 218, size: 128, elements: !1766)
!1765 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1766 = !{!1767, !1774, !1775}
!1767 = !DIDerivedType(tag: DW_TAG_member, scope: !1764, file: !1765, line: 219, baseType: !1768, size: 32)
!1768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1764, file: !1765, line: 219, size: 32, elements: !1769)
!1769 = !{!1770, !1771}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1768, file: !1765, line: 220, baseType: !289, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1768, file: !1765, line: 221, baseType: !1772)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1765, line: 197, baseType: !1773)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1765, line: 197, elements: !977)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1764, file: !1765, line: 223, baseType: !7, size: 32, offset: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1764, file: !1765, line: 224, baseType: !170, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1757, file: !38, line: 752, baseType: !1777, size: 64, offset: 640)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!195, !1780, !195, !195, !195, !195}
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1782)
!1782 = !{!1783, !1789, !1790, !1792, !1793, !1794, !1795, !1796, !1846, !2036, !2045, !2046, !2047, !2496, !2497, !2498, !2499, !2501, !2502, !2505}
!1783 = !DIDerivedType(tag: DW_TAG_member, scope: !1781, file: !14, line: 995, baseType: !1784, size: 128)
!1784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1781, file: !14, line: 995, size: 128, elements: !1785)
!1785 = !{!1786, !1787, !1788}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1784, file: !14, line: 996, baseType: !1483, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1784, file: !14, line: 997, baseType: !910, size: 128, align: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1784, file: !14, line: 998, baseType: !7, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1781, file: !14, line: 1005, baseType: !289, size: 32, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1781, file: !14, line: 1006, baseType: !1791, size: 32, offset: 160)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !184, line: 156, baseType: !7)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1781, file: !14, line: 1007, baseType: !694, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1781, file: !14, line: 1008, baseType: !690, size: 256, offset: 256)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1781, file: !14, line: 1009, baseType: !590, size: 64, offset: 512)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1781, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1781, file: !14, line: 1011, baseType: !1797, size: 256, offset: 640)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1798)
!1798 = !{!1799, !1820, !1842, !1843, !1844, !1845}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1797, file: !14, line: 949, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1801, line: 34, baseType: !1802)
!1801 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1801, line: 25, size: 64, elements: !1803)
!1803 = !{!1804}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1802, file: !1801, line: 26, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1806, line: 27, baseType: !1807)
!1806 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1806, line: 13, size: 64, elements: !1808)
!1808 = !{!1809, !1819}
!1809 = !DIDerivedType(tag: DW_TAG_member, scope: !1807, file: !1806, line: 14, baseType: !1810, size: 32)
!1810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1807, file: !1806, line: 14, size: 32, elements: !1811)
!1811 = !{!1812, !1813}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1810, file: !1806, line: 15, baseType: !309, size: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, scope: !1810, file: !1806, line: 16, baseType: !1814, size: 32)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1810, file: !1806, line: 16, size: 32, elements: !1815)
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1814, file: !1806, line: 18, baseType: !317, size: 8)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1814, file: !1806, line: 19, baseType: !1818, size: 24, offset: 8)
!1818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 24, elements: !356)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1807, file: !1806, line: 26, baseType: !301, size: 32, offset: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1797, file: !14, line: 950, baseType: !1821, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1823)
!1823 = !{!1824, !1825, !1826, !1827, !1829, !1830, !1831, !1832}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1822, file: !30, line: 61, baseType: !1470, size: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1822, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1822, file: !30, line: 63, baseType: !289, size: 32, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1822, file: !30, line: 65, baseType: !1828, size: 256, offset: 128)
!1828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1058, size: 256, elements: !224)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1822, file: !30, line: 66, baseType: !1058, size: 64, offset: 384)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1822, file: !30, line: 68, baseType: !1443, size: 192, offset: 448)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1822, file: !30, line: 69, baseType: !910, size: 128, align: 64, offset: 640)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1822, file: !30, line: 70, baseType: !1833, offset: 768)
!1833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1834, elements: !1840)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1835)
!1835 = !{!1836, !1837}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1834, file: !30, line: 55, baseType: !109, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1834, file: !30, line: 56, baseType: !1838, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1840 = !{!1841}
!1841 = !DISubrange(count: -1)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1797, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1797, file: !14, line: 952, baseType: !440, size: 32, offset: 160)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1797, file: !14, line: 952, baseType: !440, size: 32, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1797, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1781, file: !14, line: 1012, baseType: !1847, size: 64, offset: 896)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1849)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1850, line: 110, size: 1472, elements: !1851)
!1850 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1851 = !{!1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1868, !1869, !1870, !1871, !1872, !1873, !1981, !1982, !1983, !1984, !1985, !2016, !2019, !2023, !2031}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1849, file: !1850, line: 111, baseType: !694, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1849, file: !1850, line: 112, baseType: !440, size: 32, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1849, file: !1850, line: 113, baseType: !449, size: 32, offset: 96)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1849, file: !1850, line: 114, baseType: !440, size: 32, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1849, file: !1850, line: 115, baseType: !449, size: 32, offset: 160)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1849, file: !1850, line: 116, baseType: !440, size: 32, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1849, file: !1850, line: 117, baseType: !449, size: 32, offset: 224)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1849, file: !1850, line: 118, baseType: !440, size: 32, offset: 256)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1849, file: !1850, line: 119, baseType: !449, size: 32, offset: 288)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1849, file: !1850, line: 120, baseType: !7, size: 32, offset: 320)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1849, file: !1850, line: 121, baseType: !1863, size: 64, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1864, line: 24, baseType: !1865)
!1864 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1864, line: 24, size: 64, elements: !1866)
!1866 = !{!1867}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1865, file: !1864, line: 24, baseType: !186, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1849, file: !1850, line: 122, baseType: !1863, size: 64, offset: 448)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1849, file: !1850, line: 123, baseType: !1863, size: 64, offset: 512)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1849, file: !1850, line: 124, baseType: !1863, size: 64, offset: 576)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1849, file: !1850, line: 125, baseType: !1863, size: 64, offset: 640)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1849, file: !1850, line: 127, baseType: !259, size: 8, offset: 704)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1849, file: !1850, line: 129, baseType: !1874, size: 64, offset: 768)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1876, line: 195, size: 1728, elements: !1877)
!1876 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1877 = !{!1878, !1879, !1882, !1887, !1888, !1891, !1892, !1897, !1898, !1899, !1900, !1903, !1904, !1905, !1906, !1907, !1945, !1966}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1875, file: !1876, line: 196, baseType: !1470, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1875, file: !1876, line: 197, baseType: !1880, size: 32, offset: 32)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1876, line: 28, baseType: !1881)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !184, line: 104, baseType: !686)
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1875, file: !1876, line: 198, baseType: !1883, size: 192, offset: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1875, file: !1876, line: 198, size: 192, elements: !1884)
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1883, file: !1876, line: 199, baseType: !207, size: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1883, file: !1876, line: 200, baseType: !802, size: 192, align: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1875, file: !1876, line: 205, baseType: !1350, size: 320, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1875, file: !1876, line: 206, baseType: !1889, size: 64, offset: 576)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1876, line: 206, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1875, file: !1876, line: 207, baseType: !170, size: 64, offset: 640)
!1892 = !DIDerivedType(tag: DW_TAG_member, scope: !1875, file: !1876, line: 208, baseType: !1893, size: 64, offset: 704)
!1893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1875, file: !1876, line: 208, size: 64, elements: !1894)
!1894 = !{!1895, !1896}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1893, file: !1876, line: 209, baseType: !1190, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1893, file: !1876, line: 210, baseType: !1190, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1875, file: !1876, line: 212, baseType: !1190, size: 64, offset: 768)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1875, file: !1876, line: 213, baseType: !440, size: 32, offset: 832)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1875, file: !1876, line: 214, baseType: !449, size: 32, offset: 864)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1875, file: !1876, line: 215, baseType: !1901, size: 32, offset: 896)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1876, line: 31, baseType: !1902)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !184, line: 110, baseType: !165)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1875, file: !1876, line: 216, baseType: !268, size: 16, offset: 928)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1875, file: !1876, line: 217, baseType: !268, size: 16, offset: 944)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1875, file: !1876, line: 221, baseType: !828, size: 16, offset: 960)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1875, file: !1876, line: 228, baseType: !195, size: 64, offset: 1024)
!1907 = !DIDerivedType(tag: DW_TAG_member, scope: !1875, file: !1876, line: 245, baseType: !1908, size: 320, offset: 1088)
!1908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1875, file: !1876, line: 245, size: 320, elements: !1909)
!1909 = !{!1910, !1937}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1908, file: !1876, line: 246, baseType: !1911, size: 320)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1876, line: 114, size: 320, elements: !1912)
!1912 = !{!1913, !1914, !1926, !1929, !1936}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1911, file: !1876, line: 116, baseType: !195, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, scope: !1911, file: !1876, line: 117, baseType: !1915, size: 64, offset: 64)
!1915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1911, file: !1876, line: 117, size: 64, elements: !1916)
!1916 = !{!1917, !1925}
!1917 = !DIDerivedType(tag: DW_TAG_member, scope: !1915, file: !1876, line: 118, baseType: !1918, size: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1915, file: !1876, line: 118, size: 64, elements: !1919)
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1918, file: !1876, line: 120, baseType: !324, size: 16)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1918, file: !1876, line: 121, baseType: !1922, size: 48, offset: 16)
!1922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 48, elements: !1923)
!1923 = !{!1924}
!1924 = !DISubrange(count: 6)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1915, file: !1876, line: 127, baseType: !195, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1911, file: !1876, line: 129, baseType: !1927, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1876, line: 102, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1911, file: !1876, line: 130, baseType: !1930, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1876, line: 108, size: 192, elements: !1932)
!1932 = !{!1933, !1934, !1935}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1931, file: !1876, line: 109, baseType: !910, size: 128, align: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1931, file: !1876, line: 110, baseType: !1470, size: 32, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1931, file: !1876, line: 111, baseType: !770, size: 8, offset: 160)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1911, file: !1876, line: 131, baseType: !191, size: 64, offset: 256)
!1937 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !1876, line: 247, baseType: !1938, size: 320)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1908, file: !1876, line: 247, size: 320, elements: !1939)
!1939 = !{!1940, !1941, !1942, !1943, !1944}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1938, file: !1876, line: 248, baseType: !195, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1938, file: !1876, line: 249, baseType: !195, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1938, file: !1876, line: 250, baseType: !1927, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1938, file: !1876, line: 251, baseType: !1930, size: 64, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1938, file: !1876, line: 252, baseType: !355, size: 64, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !1875, file: !1876, line: 260, baseType: !1946, size: 256, offset: 1408)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1875, file: !1876, line: 260, size: 256, elements: !1947)
!1947 = !{!1948, !1954}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1946, file: !1876, line: 261, baseType: !1949, size: 256)
!1949 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1876, line: 134, size: 256, elements: !1950)
!1950 = !{!1951, !1952}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1949, file: !1876, line: 135, baseType: !170, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1949, file: !1876, line: 136, baseType: !1953, size: 256)
!1953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 256, elements: !224)
!1954 = !DIDerivedType(tag: DW_TAG_member, scope: !1946, file: !1876, line: 262, baseType: !1955, size: 256)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1946, file: !1876, line: 262, size: 256, elements: !1956)
!1956 = !{!1957, !1958}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1955, file: !1876, line: 264, baseType: !207, size: 128)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1955, file: !1876, line: 265, baseType: !1959, size: 128, offset: 128)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1960, line: 22, size: 128, elements: !1961)
!1960 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1961 = !{!1962, !1965}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1959, file: !1960, line: 23, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1960, line: 23, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1959, file: !1960, line: 24, baseType: !195, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1875, file: !1876, line: 280, baseType: !1967, size: 64, offset: 1664)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1876, line: 176, size: 192, elements: !1969)
!1969 = !{!1970, !1979, !1980}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1968, file: !1876, line: 177, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1876, line: 171, baseType: !1972)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!109, !1874, !1975, !1977, !1874}
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1928)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1949)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1968, file: !1876, line: 178, baseType: !1874, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1968, file: !1876, line: 179, baseType: !1927, size: 64, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1849, file: !1850, line: 130, baseType: !1874, size: 64, offset: 832)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1849, file: !1850, line: 131, baseType: !1874, size: 64, offset: 896)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1849, file: !1850, line: 132, baseType: !1874, size: 64, offset: 960)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1849, file: !1850, line: 135, baseType: !170, size: 64, offset: 1024)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1849, file: !1850, line: 137, baseType: !1986, size: 64, offset: 1088)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1988, line: 14, size: 1088, elements: !1989)
!1988 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1989 = !{!1990, !1991, !2000, !2001, !2002, !2003, !2004, !2005}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1987, file: !1988, line: 15, baseType: !1470, size: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1987, file: !1988, line: 17, baseType: !1992, size: 320, offset: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1993, line: 22, size: 320, elements: !1994)
!1993 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1994 = !{!1995, !1996, !1997, !1998}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1992, file: !1993, line: 23, baseType: !648, size: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1992, file: !1993, line: 24, baseType: !700, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1992, file: !1993, line: 26, baseType: !207, size: 128, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1992, file: !1993, line: 28, baseType: !1999, size: 64, offset: 256)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1987, file: !1988, line: 19, baseType: !195, size: 64, offset: 384)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1987, file: !1988, line: 20, baseType: !694, size: 64, offset: 448)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1987, file: !1988, line: 23, baseType: !934, size: 128, offset: 512)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1987, file: !1988, line: 24, baseType: !440, size: 32, offset: 640)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1987, file: !1988, line: 29, baseType: !694, size: 64, offset: 704)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1987, file: !1988, line: 36, baseType: !2006, size: 320, offset: 768)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2007, line: 15, size: 320, elements: !2008)
!2007 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2008 = !{!2009, !2010, !2011, !2012, !2013, !2014, !2015}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2006, file: !2007, line: 16, baseType: !648, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2006, file: !2007, line: 18, baseType: !109, size: 32, offset: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2006, file: !2007, line: 19, baseType: !109, size: 32, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2006, file: !2007, line: 20, baseType: !109, size: 32, offset: 96)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2006, file: !2007, line: 21, baseType: !109, size: 32, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2006, file: !2007, line: 22, baseType: !195, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2006, file: !2007, line: 23, baseType: !195, size: 64, offset: 256)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1849, file: !1850, line: 138, baseType: !2017, size: 64, offset: 1152)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1849, file: !1850, line: 139, baseType: !2020, size: 64, offset: 1216)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2022, line: 16, flags: DIFlagFwdDecl)
!2022 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1849, file: !1850, line: 140, baseType: !2024, size: 64, offset: 1280)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1850, line: 25, size: 64, elements: !2026)
!2026 = !{!2027, !2028, !2029}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2025, file: !1850, line: 26, baseType: !309, size: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2025, file: !1850, line: 27, baseType: !109, size: 32, offset: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2025, file: !1850, line: 28, baseType: !2030, offset: 64)
!2030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, elements: !1840)
!2031 = !DIDerivedType(tag: DW_TAG_member, scope: !1849, file: !1850, line: 142, baseType: !2032, size: 128, offset: 1344)
!2032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1849, file: !1850, line: 142, size: 128, elements: !2033)
!2033 = !{!2034, !2035}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2032, file: !1850, line: 143, baseType: !109, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2032, file: !1850, line: 144, baseType: !910, size: 128, align: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1781, file: !14, line: 1013, baseType: !2037, size: 256, offset: 960)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2038)
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2037, file: !14, line: 971, baseType: !195, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2037, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2037, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2037, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2037, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2037, file: !14, line: 976, baseType: !590, size: 64, offset: 192)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1781, file: !14, line: 1014, baseType: !1262, size: 128, offset: 1216)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1781, file: !14, line: 1015, baseType: !434, size: 64, offset: 1344)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1781, file: !14, line: 1016, baseType: !2048, size: 64, offset: 1408)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2050)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2051)
!2051 = !{!2052, !2053, !2057, !2062, !2066, !2095, !2096, !2102, !2115, !2123, !2127, !2128, !2419, !2420, !2424, !2429, !2430, !2434, !2438, !2444, !2445, !2449, !2450, !2456, !2460, !2464, !2469, !2473, !2477, !2481, !2485, !2486, !2492}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2050, file: !14, line: 1915, baseType: !619, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2050, file: !14, line: 1916, baseType: !2054, size: 64, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!590, !1780, !590, !109}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2050, file: !14, line: 1917, baseType: !2058, size: 64, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!387, !1780, !355, !402, !2061}
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2050, file: !14, line: 1918, baseType: !2063, size: 64, offset: 192)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!387, !1780, !191, !402, !2061}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2050, file: !14, line: 1919, baseType: !2067, size: 64, offset: 256)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!387, !2070, !2092}
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2072)
!2072 = !{!2073, !2074, !2075, !2079, !2080, !2081, !2082}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2071, file: !14, line: 374, baseType: !1780, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2071, file: !14, line: 375, baseType: !590, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2071, file: !14, line: 376, baseType: !2076, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{null, !2070, !391}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2071, file: !14, line: 377, baseType: !170, size: 64, offset: 192)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2071, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2071, file: !14, line: 379, baseType: !324, size: 16, offset: 288)
!2082 = !DIDerivedType(tag: DW_TAG_member, scope: !2071, file: !14, line: 380, baseType: !2083, size: 64, offset: 320)
!2083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2071, file: !14, line: 380, size: 64, elements: !2084)
!2084 = !{!2085, !2088}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2083, file: !14, line: 386, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2083, file: !14, line: 395, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!387, !170}
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2094, line: 17, flags: DIFlagFwdDecl)
!2094 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2050, file: !14, line: 1920, baseType: !2067, size: 64, offset: 320)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2050, file: !14, line: 1921, baseType: !2097, size: 64, offset: 384)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!109, !2070, !2100, !7}
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2050, file: !14, line: 1923, baseType: !2103, size: 64, offset: 448)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!109, !1780, !2106}
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2108)
!2108 = !{!2109, !2114}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2107, file: !14, line: 1859, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2111)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!770, !2106, !191, !109, !590, !186, !7}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2107, file: !14, line: 1860, baseType: !590, size: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2050, file: !14, line: 1924, baseType: !2116, size: 64, offset: 512)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!2119, !1780, !2121}
!2119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2120, line: 59, baseType: !7)
!2120 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !605, line: 31, flags: DIFlagFwdDecl)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2050, file: !14, line: 1925, baseType: !2124, size: 64, offset: 576)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!391, !1780, !7, !195}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2050, file: !14, line: 1926, baseType: !2124, size: 64, offset: 640)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2050, file: !14, line: 1927, baseType: !2129, size: 64, offset: 704)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!109, !1780, !2132}
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2134)
!2134 = !{!2135, !2144, !2145, !2153, !2160, !2161, !2166, !2167, !2172, !2173, !2176, !2412, !2413, !2414, !2415, !2416, !2417}
!2135 = !DIDerivedType(tag: DW_TAG_member, scope: !2133, file: !38, line: 628, baseType: !2136, size: 128)
!2136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2133, file: !38, line: 628, size: 128, elements: !2137)
!2137 = !{!2138, !2143}
!2138 = !DIDerivedType(tag: DW_TAG_member, scope: !2136, file: !38, line: 629, baseType: !2139, size: 128)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2136, file: !38, line: 629, size: 128, elements: !2140)
!2140 = !{!2141, !2142}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2139, file: !38, line: 631, baseType: !195, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2139, file: !38, line: 632, baseType: !195, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2136, file: !38, line: 635, baseType: !910, size: 128, align: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2133, file: !38, line: 639, baseType: !1753, size: 64, offset: 128)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2133, file: !38, line: 640, baseType: !2146, size: 64, offset: 192)
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2147, line: 297, baseType: !2148)
!2147 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2147, line: 297, size: 64, elements: !2149)
!2149 = !{!2150}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2148, file: !2147, line: 297, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2152, line: 19, baseType: !195)
!2152 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2153 = !DIDerivedType(tag: DW_TAG_member, scope: !2133, file: !38, line: 646, baseType: !2154, size: 64, offset: 256)
!2154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2133, file: !38, line: 646, size: 64, elements: !2155)
!2155 = !{!2156, !2159}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2154, file: !38, line: 647, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2158)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !195)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2154, file: !38, line: 648, baseType: !2158, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2133, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2133, file: !38, line: 667, baseType: !2162, size: 64, offset: 384)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2164)
!2164 = !{!2165}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2163, file: !38, line: 580, baseType: !1350, size: 320)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2133, file: !38, line: 670, baseType: !770, size: 8, offset: 448)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2133, file: !38, line: 681, baseType: !2168, size: 256, offset: 512)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2133, file: !38, line: 678, size: 256, elements: !2169)
!2169 = !{!2170, !2171}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2168, file: !38, line: 679, baseType: !802, size: 192, align: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2168, file: !38, line: 680, baseType: !195, size: 64, offset: 192)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2133, file: !38, line: 689, baseType: !207, size: 128, offset: 768)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2133, file: !38, line: 691, baseType: !2174, size: 64, offset: 896)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2133, file: !38, line: 694, baseType: !2177, size: 64, offset: 960)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2179)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2180, line: 563, size: 1024, elements: !2181)
!2180 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2181 = !{!2182, !2186, !2187, !2191, !2195, !2199, !2376, !2380, !2384, !2388, !2389, !2390, !2394, !2398, !2404, !2408}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2179, file: !2180, line: 564, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{null, !2132}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2179, file: !2180, line: 569, baseType: !2183, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2179, file: !2180, line: 571, baseType: !2188, size: 64, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!109, !2132, !195}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2179, file: !2180, line: 572, baseType: !2192, size: 64, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!109, !2132}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2179, file: !2180, line: 578, baseType: !2196, size: 64, offset: 256)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!109, !2132, !195, !195, !195}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2179, file: !2180, line: 580, baseType: !2200, size: 64, offset: 320)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2180, line: 512, size: 896, elements: !2206)
!2206 = !{!2207, !2215, !2216, !2223, !2230, !2240, !2369, !2370, !2372, !2374}
!2207 = !DIDerivedType(tag: DW_TAG_member, scope: !2205, file: !2180, line: 513, baseType: !2208, size: 320)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2205, file: !2180, line: 513, size: 320, elements: !2209)
!2209 = !{!2210, !2211, !2212, !2213, !2214}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2208, file: !2180, line: 514, baseType: !2132, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2208, file: !2180, line: 515, baseType: !1202, size: 32, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2208, file: !2180, line: 516, baseType: !195, size: 64, offset: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2208, file: !2180, line: 517, baseType: !195, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2208, file: !2180, line: 518, baseType: !195, size: 64, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2205, file: !2180, line: 520, baseType: !37, size: 32, offset: 320)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2205, file: !2180, line: 522, baseType: !2217, size: 64, offset: 384)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2152, line: 22, baseType: !2219)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2152, line: 22, size: 64, elements: !2220)
!2220 = !{!2221}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2219, file: !2152, line: 22, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2152, line: 15, baseType: !195)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2205, file: !2180, line: 524, baseType: !2224, size: 64, offset: 448)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2147, line: 372, baseType: !2226)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2147, line: 372, size: 64, elements: !2227)
!2227 = !{!2228}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2226, file: !2147, line: 372, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2152, line: 16, baseType: !195)
!2230 = !DIDerivedType(tag: DW_TAG_member, scope: !2205, file: !2180, line: 527, baseType: !2231, size: 64, offset: 512)
!2231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2205, file: !2180, line: 527, size: 64, elements: !2232)
!2232 = !{!2233, !2239}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2231, file: !2180, line: 528, baseType: !2234, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2152, line: 21, baseType: !2235)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2152, line: 21, size: 64, elements: !2236)
!2236 = !{!2237}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2235, file: !2152, line: 21, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2152, line: 14, baseType: !195)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2231, file: !2180, line: 529, baseType: !2218, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2205, file: !2180, line: 534, baseType: !2241, size: 64, offset: 576)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2243)
!2243 = !{!2244, !2245, !2363, !2368}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2242, file: !38, line: 75, baseType: !195, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, scope: !2242, file: !38, line: 83, baseType: !2246, size: 320, offset: 64)
!2246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2242, file: !38, line: 83, size: 320, elements: !2247)
!2247 = !{!2248, !2269, !2283, !2287, !2362}
!2248 = !DIDerivedType(tag: DW_TAG_member, scope: !2246, file: !38, line: 84, baseType: !2249, size: 320)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2246, file: !38, line: 84, size: 320, elements: !2250)
!2250 = !{!2251, !2262, !2263, !2268}
!2251 = !DIDerivedType(tag: DW_TAG_member, scope: !2249, file: !38, line: 90, baseType: !2252, size: 128)
!2252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2249, file: !38, line: 90, size: 128, elements: !2253)
!2253 = !{!2254, !2255, !2260, !2261}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2252, file: !38, line: 91, baseType: !207, size: 128)
!2255 = !DIDerivedType(tag: DW_TAG_member, scope: !2252, file: !38, line: 94, baseType: !2256, size: 128)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2252, file: !38, line: 94, size: 128, elements: !2257)
!2257 = !{!2258, !2259}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2256, file: !38, line: 96, baseType: !170, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2256, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2252, file: !38, line: 102, baseType: !207, size: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2252, file: !38, line: 103, baseType: !207, size: 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2249, file: !38, line: 106, baseType: !430, size: 64, offset: 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, scope: !2249, file: !38, line: 107, baseType: !2264, size: 64, offset: 192)
!2264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2249, file: !38, line: 107, size: 64, elements: !2265)
!2265 = !{!2266, !2267}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2264, file: !38, line: 108, baseType: !195, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2264, file: !38, line: 109, baseType: !195, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2249, file: !38, line: 117, baseType: !195, size: 64, offset: 256)
!2269 = !DIDerivedType(tag: DW_TAG_member, scope: !2246, file: !38, line: 119, baseType: !2270, size: 320)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2246, file: !38, line: 119, size: 320, elements: !2271)
!2271 = !{!2272, !2273, !2276, !2277, !2278}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2270, file: !38, line: 124, baseType: !195, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2270, file: !38, line: 125, baseType: !2274, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2270, file: !38, line: 126, baseType: !195, size: 64, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2270, file: !38, line: 127, baseType: !195, size: 64, offset: 192)
!2278 = !DIDerivedType(tag: DW_TAG_member, scope: !2270, file: !38, line: 128, baseType: !2279, size: 64, offset: 256)
!2279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2270, file: !38, line: 128, size: 64, elements: !2280)
!2280 = !{!2281, !2282}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2279, file: !38, line: 133, baseType: !195, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2279, file: !38, line: 138, baseType: !694, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, scope: !2246, file: !38, line: 141, baseType: !2284, size: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2246, file: !38, line: 141, size: 64, elements: !2285)
!2285 = !{!2286}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2284, file: !38, line: 142, baseType: !195, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, scope: !2246, file: !38, line: 144, baseType: !2288, size: 128)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2246, file: !38, line: 144, size: 128, elements: !2289)
!2289 = !{!2290, !2361}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2288, file: !38, line: 146, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2293)
!2293 = !{!2294, !2304, !2325, !2326, !2327, !2328, !2329, !2343, !2344, !2345}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2292, file: !54, line: 127, baseType: !2295, size: 384)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2296)
!2296 = !{!2297, !2298, !2300, !2301, !2302, !2303}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2295, file: !54, line: 22, baseType: !195, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2295, file: !54, line: 23, baseType: !2299, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2295, file: !54, line: 24, baseType: !2299, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2295, file: !54, line: 25, baseType: !195, size: 64, offset: 192)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2295, file: !54, line: 26, baseType: !195, size: 64, offset: 256)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2295, file: !54, line: 27, baseType: !195, size: 64, offset: 320)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2292, file: !54, line: 128, baseType: !2305, size: 128, offset: 384)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2306, line: 105, size: 128, elements: !2307)
!2306 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2307 = !{!2308, !2309}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2305, file: !2306, line: 110, baseType: !195, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2305, file: !2306, line: 118, baseType: !2310, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2306, line: 95, size: 448, elements: !2312)
!2312 = !{!2313, !2314, !2320, !2321, !2322, !2323, !2324}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2311, file: !2306, line: 96, baseType: !694, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2311, file: !2306, line: 97, baseType: !2315, size: 64, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2306, line: 60, baseType: !2317)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{null, !2319}
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2311, file: !2306, line: 98, baseType: !2315, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2311, file: !2306, line: 99, baseType: !770, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2311, file: !2306, line: 100, baseType: !770, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2311, file: !2306, line: 101, baseType: !910, size: 128, align: 64, offset: 256)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2311, file: !2306, line: 102, baseType: !2319, size: 64, offset: 384)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2292, file: !54, line: 129, baseType: !639, size: 256, offset: 512)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2292, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2292, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2292, file: !54, line: 132, baseType: !195, size: 64, offset: 832)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2292, file: !54, line: 133, baseType: !2330, size: 64, offset: 896)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2332)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2333)
!2333 = !{!2334, !2338, !2339}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2332, file: !54, line: 83, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{null, !2241}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2332, file: !54, line: 89, baseType: !2200, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2332, file: !54, line: 100, baseType: !2340, size: 64, offset: 128)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!109, !2291, !195, !195, !109}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2292, file: !54, line: 134, baseType: !170, size: 64, offset: 960)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2292, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2345 = !DIDerivedType(tag: DW_TAG_member, scope: !2292, file: !54, line: 136, baseType: !2346, size: 128, offset: 1088)
!2346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2292, file: !54, line: 136, size: 128, elements: !2347)
!2347 = !{!2348, !2354}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2346, file: !54, line: 137, baseType: !2349, size: 128)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2350, line: 6, size: 128, elements: !2351)
!2350 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2351 = !{!2352, !2353}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2349, file: !2350, line: 7, baseType: !186, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2349, file: !2350, line: 8, baseType: !186, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, scope: !2346, file: !54, line: 138, baseType: !2355)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2346, file: !54, line: 138, elements: !2356)
!2356 = !{!2357, !2359}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2355, file: !54, line: 138, baseType: !2358)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2355, file: !54, line: 138, elements: !977)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2355, file: !54, line: 138, baseType: !2360)
!2360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2349, elements: !1840)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2288, file: !38, line: 147, baseType: !170, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2246, file: !38, line: 161, baseType: !910, size: 128, align: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, scope: !2242, file: !38, line: 164, baseType: !2364, size: 32, offset: 384)
!2364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2242, file: !38, line: 164, size: 32, elements: !2365)
!2365 = !{!2366, !2367}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2364, file: !38, line: 169, baseType: !309, size: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2364, file: !38, line: 177, baseType: !7, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2242, file: !38, line: 181, baseType: !309, size: 32, offset: 416)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2205, file: !2180, line: 535, baseType: !2241, size: 64, offset: 640)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2205, file: !2180, line: 541, baseType: !2371, size: 64, offset: 704)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2205, file: !2180, line: 545, baseType: !2373, size: 64, offset: 768)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2205, file: !2180, line: 549, baseType: !2375, size: 64, offset: 832)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2147, line: 520, baseType: !2241)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2179, file: !2180, line: 581, baseType: !2377, size: 64, offset: 384)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!2203, !2204, !7}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2179, file: !2180, line: 582, baseType: !2381, size: 64, offset: 448)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!2203, !2204, !195, !195}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2179, file: !2180, line: 584, baseType: !2385, size: 64, offset: 512)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!195, !2132}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2179, file: !2180, line: 588, baseType: !2200, size: 64, offset: 576)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2179, file: !2180, line: 591, baseType: !2200, size: 64, offset: 640)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2179, file: !2180, line: 597, baseType: !2391, size: 64, offset: 704)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!109, !2132, !195, !170, !109, !109}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2179, file: !2180, line: 603, baseType: !2395, size: 64, offset: 768)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!191, !2132}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2179, file: !2180, line: 613, baseType: !2399, size: 64, offset: 832)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!109, !2132, !2402}
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2179, file: !2180, line: 625, baseType: !2405, size: 64, offset: 896)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!2402, !2132, !195}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2179, file: !2180, line: 633, baseType: !2409, size: 64, offset: 960)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!2241, !2132, !195}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2133, file: !38, line: 697, baseType: !195, size: 64, offset: 1024)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2133, file: !38, line: 699, baseType: !1780, size: 64, offset: 1088)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2133, file: !38, line: 700, baseType: !170, size: 64, offset: 1152)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2133, file: !38, line: 711, baseType: !694, size: 64, offset: 1216)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2133, file: !38, line: 717, baseType: !2402, size: 64, offset: 1280)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2133, file: !38, line: 722, baseType: !2418, offset: 1344)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !977)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2050, file: !14, line: 1928, baseType: !195, size: 64, offset: 768)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2050, file: !14, line: 1929, baseType: !2421, size: 64, offset: 832)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!109, !434, !1780}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2050, file: !14, line: 1930, baseType: !2425, size: 64, offset: 896)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!109, !1780, !2428}
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !170)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2050, file: !14, line: 1931, baseType: !2421, size: 64, offset: 960)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2050, file: !14, line: 1932, baseType: !2431, size: 64, offset: 1024)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!109, !1780, !590, !590, !109}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2050, file: !14, line: 1933, baseType: !2435, size: 64, offset: 1088)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!109, !109, !1780, !109}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2050, file: !14, line: 1934, baseType: !2439, size: 64, offset: 1152)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!109, !1780, !109, !2442}
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2050, file: !14, line: 1935, baseType: !1777, size: 64, offset: 1216)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2050, file: !14, line: 1936, baseType: !2446, size: 64, offset: 1280)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!109, !109}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2050, file: !14, line: 1937, baseType: !2439, size: 64, offset: 1344)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2050, file: !14, line: 1938, baseType: !2451, size: 64, offset: 1408)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!387, !2454, !1780, !2061, !402, !7}
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1132, line: 59, flags: DIFlagFwdDecl)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2050, file: !14, line: 1939, baseType: !2457, size: 64, offset: 1472)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!387, !1780, !2061, !2454, !402, !7}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2050, file: !14, line: 1940, baseType: !2461, size: 64, offset: 1536)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{null, !1780}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2050, file: !14, line: 1941, baseType: !2465, size: 64, offset: 1600)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!109, !1780, !109, !2468, !169}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2050, file: !14, line: 1942, baseType: !2470, size: 64, offset: 1664)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!391, !1780, !109, !590, !590}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2050, file: !14, line: 1944, baseType: !2474, size: 64, offset: 1728)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{null, !1130, !1780}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2050, file: !14, line: 1948, baseType: !2478, size: 64, offset: 1792)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!387, !1780, !590, !1780, !590, !402, !7}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2050, file: !14, line: 1950, baseType: !2482, size: 64, offset: 1856)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!590, !1780, !590, !1780, !590, !590, !7}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2050, file: !14, line: 1953, baseType: !2431, size: 64, offset: 1920)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2050, file: !14, line: 1954, baseType: !2487, size: 64, offset: 1984)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!109, !2490, !7}
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2050, file: !14, line: 1955, baseType: !2493, size: 64, offset: 2048)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!109, !2490, !2100, !7}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1781, file: !14, line: 1018, baseType: !186, size: 64, offset: 1472)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1781, file: !14, line: 1020, baseType: !170, size: 64, offset: 1536)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1781, file: !14, line: 1023, baseType: !170, size: 64, offset: 1600)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1781, file: !14, line: 1027, baseType: !2500, size: 64, offset: 1664)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1781, file: !14, line: 1029, baseType: !430, size: 64, offset: 1728)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1781, file: !14, line: 1030, baseType: !2503, size: 32, offset: 1792)
!2503 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2504, line: 8, baseType: !165)
!2504 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1781, file: !14, line: 1031, baseType: !2503, size: 32, offset: 1824)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1757, file: !38, line: 756, baseType: !195, size: 64, offset: 704)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1757, file: !38, line: 757, baseType: !195, size: 64, offset: 768)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1757, file: !38, line: 760, baseType: !195, size: 64, offset: 832)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1757, file: !38, line: 761, baseType: !195, size: 64, offset: 896)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1757, file: !38, line: 763, baseType: !195, size: 64, offset: 960)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1757, file: !38, line: 764, baseType: !2512, size: 64, offset: 1024)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2147, line: 299, baseType: !2514)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2147, line: 299, size: 64, elements: !2515)
!2515 = !{!2516}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2514, file: !2147, line: 299, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2152, line: 18, baseType: !195)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1757, file: !38, line: 773, baseType: !309, size: 32, offset: 1088)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1757, file: !38, line: 785, baseType: !309, size: 32, offset: 1120)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1757, file: !38, line: 795, baseType: !2521, size: 64, offset: 1152)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2523)
!2523 = !{!2524, !2525}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2522, file: !38, line: 727, baseType: !186, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2522, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1757, file: !38, line: 801, baseType: !195, size: 64, offset: 1216)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1757, file: !38, line: 804, baseType: !694, size: 64, offset: 1280)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1757, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1757, file: !38, line: 808, baseType: !289, size: 32, offset: 1376)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1757, file: !38, line: 823, baseType: !1350, size: 320, offset: 1408)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1757, file: !38, line: 825, baseType: !207, size: 128, offset: 1728)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1757, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1757, file: !38, line: 849, baseType: !195, size: 64, offset: 1920)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1757, file: !38, line: 850, baseType: !195, size: 64, offset: 1984)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1757, file: !38, line: 852, baseType: !195, size: 64, offset: 2048)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1757, file: !38, line: 853, baseType: !195, size: 64, offset: 2112)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1757, file: !38, line: 854, baseType: !696, size: 64, offset: 2176)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1757, file: !38, line: 855, baseType: !195, size: 64, offset: 2240)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1757, file: !38, line: 856, baseType: !195, size: 64, offset: 2304)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1757, file: !38, line: 857, baseType: !195, size: 64, offset: 2368)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1757, file: !38, line: 858, baseType: !195, size: 64, offset: 2432)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1757, file: !38, line: 865, baseType: !480, size: 32, offset: 2496)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1757, file: !38, line: 867, baseType: !289, size: 32, offset: 2528)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1757, file: !38, line: 869, baseType: !195, size: 64, offset: 2560)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1757, file: !38, line: 869, baseType: !195, size: 64, offset: 2624)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1757, file: !38, line: 869, baseType: !195, size: 64, offset: 2688)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1757, file: !38, line: 869, baseType: !195, size: 64, offset: 2752)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1757, file: !38, line: 870, baseType: !195, size: 64, offset: 2816)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1757, file: !38, line: 870, baseType: !195, size: 64, offset: 2880)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1757, file: !38, line: 870, baseType: !195, size: 64, offset: 2944)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1757, file: !38, line: 871, baseType: !195, size: 64, offset: 3008)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1757, file: !38, line: 871, baseType: !195, size: 64, offset: 3072)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1757, file: !38, line: 871, baseType: !195, size: 64, offset: 3136)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1757, file: !38, line: 871, baseType: !195, size: 64, offset: 3200)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1757, file: !38, line: 873, baseType: !2556, size: 3328, offset: 3264)
!2556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 3328, elements: !2557)
!2557 = !{!2558}
!2558 = !DISubrange(count: 52)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1757, file: !38, line: 875, baseType: !2560, size: 1280, offset: 6592)
!2560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1992, size: 1280, elements: !224)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1757, file: !38, line: 877, baseType: !2562, size: 64, offset: 7872)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1757, file: !38, line: 880, baseType: !2565, size: 1088, offset: 7936)
!2565 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2566, line: 72, baseType: !2567)
!2566 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2566, line: 23, size: 1088, elements: !2568)
!2568 = !{!2569, !2570, !2571, !2572, !2573, !2576, !2577, !2578, !2579, !2606, !2607, !2608}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2567, file: !2566, line: 28, baseType: !186, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2567, file: !2566, line: 38, baseType: !696, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2567, file: !2566, line: 40, baseType: !195, size: 64, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2567, file: !2566, line: 43, baseType: !1350, size: 320, offset: 192)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2567, file: !2566, line: 44, baseType: !2574, size: 64, offset: 512)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2566, line: 44, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2567, file: !2566, line: 48, baseType: !195, size: 64, offset: 576)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2567, file: !2566, line: 59, baseType: !690, size: 256, offset: 640)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2567, file: !2566, line: 60, baseType: !170, size: 64, offset: 896)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2567, file: !2566, line: 61, baseType: !2580, size: 64, offset: 960)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2582)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2583, line: 13, size: 1216, elements: !2584)
!2583 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2584 = !{!2585, !2586, !2587, !2588, !2589, !2590, !2591, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2582, file: !2583, line: 14, baseType: !170, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2582, file: !2583, line: 15, baseType: !195, size: 64, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2582, file: !2583, line: 17, baseType: !195, size: 64, offset: 128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2582, file: !2583, line: 17, baseType: !195, size: 64, offset: 192)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2582, file: !2583, line: 18, baseType: !195, size: 64, offset: 256)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2582, file: !2583, line: 18, baseType: !195, size: 64, offset: 320)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2582, file: !2583, line: 19, baseType: !2592, size: 64, offset: 384)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2582, file: !2583, line: 21, baseType: !391, size: 64, offset: 448)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2582, file: !2583, line: 23, baseType: !391, size: 64, offset: 512)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2582, file: !2583, line: 24, baseType: !391, size: 64, offset: 576)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2582, file: !2583, line: 25, baseType: !391, size: 64, offset: 640)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2582, file: !2583, line: 26, baseType: !391, size: 64, offset: 704)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2582, file: !2583, line: 27, baseType: !391, size: 64, offset: 768)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2582, file: !2583, line: 28, baseType: !391, size: 64, offset: 832)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2582, file: !2583, line: 29, baseType: !391, size: 64, offset: 896)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2582, file: !2583, line: 30, baseType: !391, size: 64, offset: 960)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2582, file: !2583, line: 31, baseType: !391, size: 64, offset: 1024)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2582, file: !2583, line: 32, baseType: !391, size: 64, offset: 1088)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2582, file: !2583, line: 33, baseType: !391, size: 64, offset: 1152)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2567, file: !2566, line: 63, baseType: !309, size: 32, offset: 1024)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2567, file: !2566, line: 69, baseType: !324, size: 16, offset: 1056)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2567, file: !2566, line: 70, baseType: !826, size: 16, offset: 1072)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1757, file: !38, line: 882, baseType: !195, size: 64, offset: 9024)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1757, file: !38, line: 885, baseType: !289, size: 32, offset: 9088)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1757, file: !38, line: 886, baseType: !2612, size: 64, offset: 9152)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1757, file: !38, line: 901, baseType: !2017, size: 64, offset: 9216)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1757, file: !38, line: 904, baseType: !1780, size: 64, offset: 9280)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1757, file: !38, line: 906, baseType: !2617, size: 64, offset: 9344)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1757, file: !38, line: 930, baseType: !309, size: 32, offset: 9408)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1757, file: !38, line: 933, baseType: !309, size: 32, offset: 9440)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1757, file: !38, line: 935, baseType: !2622, size: 64, offset: 9472)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2623)
!2623 = !{!2624}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2622, file: !68, line: 104, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1757, file: !38, line: 940, baseType: !694, size: 64, offset: 9536)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1757, file: !38, line: 942, baseType: !948, size: 256, offset: 9600)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1754, file: !38, line: 986, baseType: !2630, offset: 10240)
!2630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, elements: !1840)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1457, file: !1132, line: 882, baseType: !1753, size: 64, offset: 9792)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1457, file: !1132, line: 884, baseType: !109, size: 32, offset: 9856)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1457, file: !1132, line: 885, baseType: !109, size: 32, offset: 9888)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1457, file: !1132, line: 886, baseType: !109, size: 32, offset: 9920)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1457, file: !1132, line: 888, baseType: !109, size: 32, offset: 9952)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1457, file: !1132, line: 890, baseType: !195, size: 64, offset: 9984)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1457, file: !1132, line: 893, baseType: !7, size: 32, offset: 10048)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1457, file: !1132, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1457, file: !1132, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1457, file: !1132, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1457, file: !1132, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1457, file: !1132, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1457, file: !1132, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1457, file: !1132, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1457, file: !1132, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1457, file: !1132, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1457, file: !1132, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1457, file: !1132, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1457, file: !1132, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1457, file: !1132, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1457, file: !1132, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1457, file: !1132, line: 969, baseType: !195, size: 64, offset: 10176)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1457, file: !1132, line: 971, baseType: !2654, size: 448, offset: 10240)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2655)
!2655 = !{!2656, !2657, !2662}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2654, file: !62, line: 26, baseType: !195, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2654, file: !62, line: 27, baseType: !2658, size: 64, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!391, !2661}
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, scope: !2654, file: !62, line: 28, baseType: !2663, size: 320, offset: 128)
!2663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2654, file: !62, line: 28, size: 320, elements: !2664)
!2664 = !{!2665, !2674, !2699}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2663, file: !62, line: 37, baseType: !2666, size: 320)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2663, file: !62, line: 30, size: 320, elements: !2667)
!2667 = !{!2668, !2669, !2670, !2671, !2672, !2673}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2666, file: !62, line: 31, baseType: !248, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2666, file: !62, line: 32, baseType: !165, size: 32, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2666, file: !62, line: 33, baseType: !165, size: 32, offset: 96)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2666, file: !62, line: 34, baseType: !165, size: 32, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2666, file: !62, line: 35, baseType: !186, size: 64, offset: 192)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2666, file: !62, line: 36, baseType: !248, size: 64, offset: 256)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2663, file: !62, line: 47, baseType: !2675, size: 192)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2663, file: !62, line: 39, size: 192, elements: !2676)
!2676 = !{!2677, !2678, !2679, !2698}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2675, file: !62, line: 40, baseType: !1624, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2675, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, scope: !2675, file: !62, line: 42, baseType: !2680, size: 64, offset: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2675, file: !62, line: 42, size: 64, elements: !2681)
!2681 = !{!2682, !2690}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2680, file: !62, line: 43, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2685, line: 7, size: 128, elements: !2686)
!2685 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2686 = !{!2687, !2689}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2684, file: !2685, line: 8, baseType: !2688, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !389, line: 93, baseType: !592)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2684, file: !2685, line: 9, baseType: !592, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2680, file: !62, line: 44, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2693, line: 7, size: 64, elements: !2694)
!2693 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2694 = !{!2695, !2697}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2692, file: !2693, line: 8, baseType: !2696, size: 32)
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2693, line: 5, baseType: !686)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2692, file: !2693, line: 9, baseType: !686, size: 32, offset: 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2675, file: !62, line: 46, baseType: !186, size: 64, offset: 128)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2663, file: !62, line: 55, baseType: !2700, size: 256)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2663, file: !62, line: 49, size: 256, elements: !2701)
!2701 = !{!2702, !2705, !2706, !2707, !2708}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2700, file: !62, line: 50, baseType: !2703, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2700, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2700, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2700, file: !62, line: 53, baseType: !195, size: 64, offset: 128)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2700, file: !62, line: 54, baseType: !195, size: 64, offset: 192)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1457, file: !1132, line: 973, baseType: !2710, size: 32, offset: 10688)
!2710 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !184, line: 27, baseType: !2711)
!2711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !389, line: 28, baseType: !109)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1457, file: !1132, line: 974, baseType: !2710, size: 32, offset: 10720)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1457, file: !1132, line: 978, baseType: !195, size: 64, offset: 10752)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1457, file: !1132, line: 987, baseType: !1456, size: 64, offset: 10816)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1457, file: !1132, line: 990, baseType: !1456, size: 64, offset: 10880)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1457, file: !1132, line: 995, baseType: !207, size: 128, offset: 10944)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1457, file: !1132, line: 996, baseType: !207, size: 128, offset: 11072)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1457, file: !1132, line: 997, baseType: !1456, size: 64, offset: 11200)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1457, file: !1132, line: 1005, baseType: !207, size: 128, offset: 11264)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1457, file: !1132, line: 1006, baseType: !207, size: 128, offset: 11392)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1457, file: !1132, line: 1009, baseType: !1821, size: 64, offset: 11520)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1457, file: !1132, line: 1010, baseType: !2723, size: 512, offset: 11584)
!2723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !934, size: 512, elements: !224)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1457, file: !1132, line: 1011, baseType: !207, size: 128, offset: 12096)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1457, file: !1132, line: 1012, baseType: !207, size: 128, offset: 12224)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1457, file: !1132, line: 1014, baseType: !638, size: 64, offset: 12352)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1457, file: !1132, line: 1017, baseType: !819, size: 64, offset: 12416)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1457, file: !1132, line: 1020, baseType: !819, size: 64, offset: 12480)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1457, file: !1132, line: 1023, baseType: !170, size: 64, offset: 12544)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1457, file: !1132, line: 1025, baseType: !186, size: 64, offset: 12608)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1457, file: !1132, line: 1026, baseType: !186, size: 64, offset: 12672)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1457, file: !1132, line: 1031, baseType: !186, size: 64, offset: 12736)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1457, file: !1132, line: 1032, baseType: !2734, size: 192, offset: 12800)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1132, line: 324, size: 192, elements: !2735)
!2735 = !{!2736, !2737, !2738}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2734, file: !1132, line: 326, baseType: !186, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2734, file: !1132, line: 327, baseType: !186, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2734, file: !1132, line: 328, baseType: !648, size: 32, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1457, file: !1132, line: 1041, baseType: !195, size: 64, offset: 12992)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1457, file: !1132, line: 1042, baseType: !195, size: 64, offset: 13056)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1457, file: !1132, line: 1045, baseType: !186, size: 64, offset: 13120)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1457, file: !1132, line: 1048, baseType: !186, size: 64, offset: 13184)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1457, file: !1132, line: 1051, baseType: !195, size: 64, offset: 13248)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1457, file: !1132, line: 1052, baseType: !195, size: 64, offset: 13312)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1457, file: !1132, line: 1055, baseType: !2746, size: 640, offset: 13376)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2747, line: 132, size: 640, elements: !2748)
!2747 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2748 = !{!2749, !2755, !2756}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2746, file: !2747, line: 133, baseType: !2750, size: 576)
!2750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2751, size: 576, elements: !356)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2747, line: 117, size: 192, elements: !2752)
!2752 = !{!2753, !2754}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2751, file: !2747, line: 118, baseType: !186, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2751, file: !2747, line: 119, baseType: !1633, size: 128, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2746, file: !2747, line: 134, baseType: !7, size: 32, offset: 576)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2746, file: !2747, line: 135, baseType: !7, size: 32, offset: 608)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1457, file: !1132, line: 1058, baseType: !2758, size: 448, offset: 14016)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2747, line: 144, size: 448, elements: !2759)
!2759 = !{!2760, !2761, !2762}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2758, file: !2747, line: 145, baseType: !910, size: 128, align: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2758, file: !2747, line: 146, baseType: !690, size: 256, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2758, file: !2747, line: 147, baseType: !7, size: 32, offset: 384)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1457, file: !1132, line: 1064, baseType: !1847, size: 64, offset: 14464)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1457, file: !1132, line: 1067, baseType: !1847, size: 64, offset: 14528)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1457, file: !1132, line: 1070, baseType: !1847, size: 64, offset: 14592)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1457, file: !1132, line: 1074, baseType: !1874, size: 64, offset: 14656)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1457, file: !1132, line: 1084, baseType: !2768, size: 128, offset: 14720)
!2768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 128, elements: !2769)
!2769 = !{!2770}
!2770 = !DISubrange(count: 16)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1457, file: !1132, line: 1086, baseType: !2772, size: 64, offset: 14848)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1132, line: 55, flags: DIFlagFwdDecl)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1457, file: !1132, line: 1089, baseType: !2775, size: 64, offset: 14912)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2776, line: 12, size: 64, elements: !2777)
!2776 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2777 = !{!2778}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2775, file: !2776, line: 13, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2776, line: 8, flags: DIFlagFwdDecl)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1457, file: !1132, line: 1090, baseType: !2782, size: 128, offset: 14976)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2783, line: 13, size: 128, elements: !2784)
!2783 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2784 = !{!2785}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2782, file: !2783, line: 14, baseType: !207, size: 128)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1457, file: !1132, line: 1097, baseType: !2787, size: 64, offset: 15104)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1132, line: 50, flags: DIFlagFwdDecl)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1457, file: !1132, line: 1100, baseType: !2790, size: 64, offset: 15168)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1132, line: 1100, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1457, file: !1132, line: 1103, baseType: !2793, size: 64, offset: 15232)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1132, line: 53, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1457, file: !1132, line: 1107, baseType: !2796, size: 64, offset: 15296)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1132, line: 56, flags: DIFlagFwdDecl)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1457, file: !1132, line: 1110, baseType: !2799, size: 64, offset: 15360)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2801, line: 93, size: 8768, elements: !2802)
!2801 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2802 = !{!2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2850, !2859, !2860, !2862, !2863, !2864, !2867, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2905, !2906, !2913, !2923, !2926, !2927, !2930, !2931, !2932, !2933, !2934, !2935}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2800, file: !2801, line: 94, baseType: !1470, size: 32)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2800, file: !2801, line: 95, baseType: !309, size: 32, offset: 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2800, file: !2801, line: 96, baseType: !109, size: 32, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2800, file: !2801, line: 97, baseType: !109, size: 32, offset: 96)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2800, file: !2801, line: 98, baseType: !207, size: 128, offset: 128)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2800, file: !2801, line: 100, baseType: !1443, size: 192, offset: 256)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2800, file: !2801, line: 103, baseType: !1456, size: 64, offset: 448)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2800, file: !2801, line: 106, baseType: !2811, size: 192, offset: 512)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2022, line: 32, size: 192, elements: !2812)
!2812 = !{!2813, !2814}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2811, file: !2022, line: 33, baseType: !207, size: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2811, file: !2022, line: 34, baseType: !2815, size: 64, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2816, line: 25, baseType: !2817)
!2816 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2816, line: 23, size: 64, elements: !2818)
!2818 = !{!2819}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2817, file: !2816, line: 24, baseType: !1704, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2800, file: !2801, line: 109, baseType: !1058, size: 64, offset: 704)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2800, file: !2801, line: 112, baseType: !109, size: 32, offset: 768)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2800, file: !2801, line: 114, baseType: !109, size: 32, offset: 800)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2800, file: !2801, line: 115, baseType: !1456, size: 64, offset: 832)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2800, file: !2801, line: 118, baseType: !109, size: 32, offset: 896)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2800, file: !2801, line: 119, baseType: !7, size: 32, offset: 928)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2800, file: !2801, line: 121, baseType: !2827, size: 64, offset: 960)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2801, line: 80, size: 448, elements: !2829)
!2829 = !{!2830, !2831, !2837}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2828, file: !2801, line: 81, baseType: !309, size: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2828, file: !2801, line: 82, baseType: !2832, size: 128, offset: 64)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2801, line: 75, size: 128, elements: !2833)
!2833 = !{!2834, !2835}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2832, file: !2801, line: 76, baseType: !1456, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2832, file: !2801, line: 77, baseType: !2836, size: 64, offset: 64)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2828, file: !2801, line: 83, baseType: !639, size: 256, offset: 192)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2800, file: !2801, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2800, file: !2801, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2800, file: !2801, line: 138, baseType: !7, size: 32, offset: 1056)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2800, file: !2801, line: 139, baseType: !207, size: 128, offset: 1088)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2800, file: !2801, line: 142, baseType: !1577, size: 512, offset: 1216)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2800, file: !2801, line: 143, baseType: !1585, size: 64, offset: 1728)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2800, file: !2801, line: 150, baseType: !2845, size: 256, offset: 1792)
!2845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2846, size: 256, elements: !809)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2801, line: 38, size: 128, elements: !2847)
!2847 = !{!2848, !2849}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2846, file: !2801, line: 39, baseType: !186, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2846, file: !2801, line: 40, baseType: !186, size: 64, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2800, file: !2801, line: 156, baseType: !2851, size: 192, offset: 2048)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2801, line: 66, size: 192, elements: !2852)
!2852 = !{!2853}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2851, file: !2801, line: 67, baseType: !2854, size: 192)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2801, line: 47, size: 192, elements: !2855)
!2855 = !{!2856, !2857, !2858}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2854, file: !2801, line: 48, baseType: !696, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2854, file: !2801, line: 49, baseType: !696, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2854, file: !2801, line: 50, baseType: !696, size: 64, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2800, file: !2801, line: 160, baseType: !2746, size: 640, offset: 2240)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2800, file: !2801, line: 163, baseType: !2861, size: 256, offset: 2880)
!2861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1821, size: 256, elements: !224)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2800, file: !2801, line: 169, baseType: !1821, size: 64, offset: 3136)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2800, file: !2801, line: 172, baseType: !109, size: 32, offset: 3200)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2800, file: !2801, line: 174, baseType: !2865, size: 64, offset: 3264)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2801, line: 174, flags: DIFlagFwdDecl)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2800, file: !2801, line: 185, baseType: !2868, size: 64, offset: 3328)
!2868 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !476, line: 860, baseType: !2869)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !476, line: 853, size: 64, elements: !2870)
!2870 = !{!2871, !2872}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2869, file: !476, line: 858, baseType: !475, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2869, file: !476, line: 859, baseType: !289, size: 32, offset: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2800, file: !2801, line: 186, baseType: !186, size: 64, offset: 3392)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2800, file: !2801, line: 186, baseType: !186, size: 64, offset: 3456)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2800, file: !2801, line: 186, baseType: !186, size: 64, offset: 3520)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2800, file: !2801, line: 186, baseType: !186, size: 64, offset: 3584)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2800, file: !2801, line: 187, baseType: !186, size: 64, offset: 3648)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2800, file: !2801, line: 188, baseType: !186, size: 64, offset: 3712)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2800, file: !2801, line: 189, baseType: !2734, size: 192, offset: 3776)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2800, file: !2801, line: 190, baseType: !195, size: 64, offset: 3968)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2800, file: !2801, line: 190, baseType: !195, size: 64, offset: 4032)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2800, file: !2801, line: 190, baseType: !195, size: 64, offset: 4096)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2800, file: !2801, line: 190, baseType: !195, size: 64, offset: 4160)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2800, file: !2801, line: 191, baseType: !195, size: 64, offset: 4224)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2800, file: !2801, line: 191, baseType: !195, size: 64, offset: 4288)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2800, file: !2801, line: 191, baseType: !195, size: 64, offset: 4352)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2800, file: !2801, line: 191, baseType: !195, size: 64, offset: 4416)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2800, file: !2801, line: 192, baseType: !195, size: 64, offset: 4480)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2800, file: !2801, line: 192, baseType: !195, size: 64, offset: 4544)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2800, file: !2801, line: 192, baseType: !195, size: 64, offset: 4608)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2800, file: !2801, line: 192, baseType: !195, size: 64, offset: 4672)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2800, file: !2801, line: 193, baseType: !195, size: 64, offset: 4736)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2800, file: !2801, line: 193, baseType: !195, size: 64, offset: 4800)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2800, file: !2801, line: 194, baseType: !2895, size: 448, offset: 4864)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2896, line: 12, size: 448, elements: !2897)
!2896 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2895, file: !2896, line: 15, baseType: !186, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2895, file: !2896, line: 17, baseType: !186, size: 64, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2895, file: !2896, line: 19, baseType: !186, size: 64, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2895, file: !2896, line: 21, baseType: !186, size: 64, offset: 192)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2895, file: !2896, line: 29, baseType: !186, size: 64, offset: 256)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2895, file: !2896, line: 35, baseType: !186, size: 64, offset: 320)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2895, file: !2896, line: 44, baseType: !186, size: 64, offset: 384)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2800, file: !2801, line: 202, baseType: !188, size: 64, offset: 5312)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2800, file: !2801, line: 213, baseType: !2907, size: 2048, offset: 5376)
!2907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2908, size: 2048, elements: !2769)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2909, line: 43, size: 128, elements: !2910)
!2909 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2910 = !{!2911, !2912}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2908, file: !2909, line: 44, baseType: !404, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2908, file: !2909, line: 45, baseType: !404, size: 64, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2800, file: !2801, line: 216, baseType: !2914, size: 448, offset: 7424)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2801, line: 30, size: 448, elements: !2915)
!2915 = !{!2916, !2917, !2918, !2919, !2920, !2921, !2922}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2914, file: !2801, line: 31, baseType: !109, size: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2914, file: !2801, line: 32, baseType: !391, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2914, file: !2801, line: 33, baseType: !195, size: 64, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2914, file: !2801, line: 34, baseType: !186, size: 64, offset: 192)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2914, file: !2801, line: 34, baseType: !186, size: 64, offset: 256)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2914, file: !2801, line: 35, baseType: !195, size: 64, offset: 320)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2914, file: !2801, line: 35, baseType: !195, size: 64, offset: 384)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2800, file: !2801, line: 219, baseType: !2924, size: 64, offset: 7872)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2801, line: 219, flags: DIFlagFwdDecl)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2800, file: !2801, line: 222, baseType: !7, size: 32, offset: 7936)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2800, file: !2801, line: 223, baseType: !2928, size: 64, offset: 8000)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2801, line: 223, flags: DIFlagFwdDecl)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2800, file: !2801, line: 230, baseType: !770, size: 8, offset: 8064)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2800, file: !2801, line: 231, baseType: !828, size: 16, offset: 8080)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2800, file: !2801, line: 232, baseType: !828, size: 16, offset: 8096)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2800, file: !2801, line: 234, baseType: !1753, size: 64, offset: 8128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2800, file: !2801, line: 237, baseType: !690, size: 256, offset: 8192)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2800, file: !2801, line: 243, baseType: !1350, size: 320, offset: 8448)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1457, file: !1132, line: 1111, baseType: !2937, size: 64, offset: 15424)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2801, line: 20, size: 16640, elements: !2939)
!2939 = !{!2940, !2941, !2942, !2943}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2938, file: !2801, line: 21, baseType: !289, size: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2938, file: !2801, line: 22, baseType: !1470, size: 32, offset: 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2938, file: !2801, line: 23, baseType: !1443, size: 192, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2938, file: !2801, line: 24, baseType: !2944, size: 16384, offset: 256)
!2944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2945, size: 16384, elements: !360)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2022, line: 51, size: 256, elements: !2946)
!2946 = !{!2947}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2945, file: !2022, line: 52, baseType: !2948, size: 256)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2022, line: 37, size: 256, elements: !2949)
!2949 = !{!2950, !2957, !2958, !2962}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2948, file: !2022, line: 39, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2952, line: 83, baseType: !2953)
!2952 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2952, line: 82, baseType: !2955)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{null, !109}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2948, file: !2022, line: 40, baseType: !195, size: 64, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2948, file: !2022, line: 46, baseType: !2959, size: 64, offset: 128)
!2959 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2952, line: 86, baseType: !2960)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2952, line: 85, baseType: !1053)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2948, file: !2022, line: 48, baseType: !2815, size: 64, offset: 192)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1457, file: !1132, line: 1112, baseType: !2815, size: 64, offset: 15488)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1457, file: !1132, line: 1113, baseType: !2815, size: 64, offset: 15552)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1457, file: !1132, line: 1115, baseType: !2815, size: 64, offset: 15616)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1457, file: !1132, line: 1116, baseType: !2811, size: 192, offset: 15680)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1457, file: !1132, line: 1117, baseType: !195, size: 64, offset: 15872)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1457, file: !1132, line: 1118, baseType: !402, size: 64, offset: 15936)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1457, file: !1132, line: 1119, baseType: !7, size: 32, offset: 16000)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1457, file: !1132, line: 1121, baseType: !909, size: 64, offset: 16064)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1457, file: !1132, line: 1125, baseType: !2972, size: 64, offset: 16128)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1132, line: 43, flags: DIFlagFwdDecl)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1457, file: !1132, line: 1127, baseType: !440, size: 32, offset: 16192)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1457, file: !1132, line: 1128, baseType: !7, size: 32, offset: 16224)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1457, file: !1132, line: 1130, baseType: !2977, size: 128, offset: 16256)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2978, line: 37, size: 128, elements: !2979)
!2978 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2979 = !{!2980, !2981, !2982}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2977, file: !2978, line: 38, baseType: !109, size: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2977, file: !2978, line: 39, baseType: !309, size: 32, offset: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2977, file: !2978, line: 40, baseType: !2983, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2978, line: 24, flags: DIFlagFwdDecl)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1457, file: !1132, line: 1131, baseType: !2986, size: 256, offset: 16384)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2987, line: 12, size: 256, elements: !2988)
!2987 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2988 = !{!2989, !2990, !2991, !2992}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2986, file: !2987, line: 13, baseType: !355, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2986, file: !2987, line: 14, baseType: !195, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2986, file: !2987, line: 15, baseType: !195, size: 64, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2986, file: !2987, line: 16, baseType: !770, size: 8, offset: 192)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1457, file: !1132, line: 1134, baseType: !186, size: 64, offset: 16640)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1457, file: !1132, line: 1135, baseType: !186, size: 64, offset: 16704)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1457, file: !1132, line: 1138, baseType: !289, size: 32, offset: 16768)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1457, file: !1132, line: 1141, baseType: !648, size: 32, offset: 16800)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1457, file: !1132, line: 1143, baseType: !2998, size: 64, offset: 16832)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1132, line: 735, size: 64, elements: !2999)
!2999 = !{!3000}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2998, file: !1132, line: 736, baseType: !3001, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1457, file: !1132, line: 1147, baseType: !1636, size: 128, offset: 16896)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1457, file: !1132, line: 1149, baseType: !1456, size: 64, offset: 17024)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1457, file: !1132, line: 1151, baseType: !3005, size: 64, offset: 17088)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1132, line: 1151, flags: DIFlagFwdDecl)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1457, file: !1132, line: 1188, baseType: !170, size: 64, offset: 17152)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1457, file: !1132, line: 1191, baseType: !3009, size: 64, offset: 17216)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1132, line: 44, flags: DIFlagFwdDecl)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1457, file: !1132, line: 1194, baseType: !3012, size: 64, offset: 17280)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1132, line: 45, flags: DIFlagFwdDecl)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1457, file: !1132, line: 1197, baseType: !3015, size: 64, offset: 17344)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1132, line: 61, flags: DIFlagFwdDecl)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1457, file: !1132, line: 1199, baseType: !3018, size: 64, offset: 17408)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3020, line: 99, size: 128, elements: !3021)
!3020 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3021 = !{!3022, !3023, !3024}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3019, file: !3020, line: 100, baseType: !694, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3019, file: !3020, line: 101, baseType: !309, size: 32, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3019, file: !3020, line: 103, baseType: !268, size: 16, offset: 96)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1457, file: !1132, line: 1202, baseType: !3026, size: 64, offset: 17472)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1132, line: 48, flags: DIFlagFwdDecl)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1457, file: !1132, line: 1205, baseType: !195, size: 64, offset: 17536)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1457, file: !1132, line: 1206, baseType: !3030, size: 64, offset: 17600)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2022, line: 14, baseType: !3032)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2022, line: 12, size: 384, elements: !3033)
!3033 = !{!3034}
!3034 = !DIDerivedType(tag: DW_TAG_member, scope: !3032, file: !2022, line: 13, baseType: !3035, size: 384)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3032, file: !2022, line: 13, size: 384, elements: !3036)
!3036 = !{!3037, !3038, !3039, !3040}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3035, file: !2022, line: 13, baseType: !109, size: 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3035, file: !2022, line: 13, baseType: !109, size: 32, offset: 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3035, file: !2022, line: 13, baseType: !109, size: 32, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3035, file: !2022, line: 13, baseType: !3041, size: 256, offset: 128)
!3041 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3042, line: 37, size: 256, elements: !3043)
!3042 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3043 = !{!3044, !3049, !3062, !3068, !3077, !3104, !3109}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3041, file: !3042, line: 42, baseType: !3045, size: 64)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3041, file: !3042, line: 39, size: 64, elements: !3046)
!3046 = !{!3047, !3048}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3045, file: !3042, line: 40, baseType: !2711, size: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3045, file: !3042, line: 41, baseType: !446, size: 32, offset: 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3041, file: !3042, line: 50, baseType: !3050, size: 192)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3041, file: !3042, line: 45, size: 192, elements: !3051)
!3051 = !{!3052, !3054, !3055, !3061}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3050, file: !3042, line: 46, baseType: !3053, size: 32)
!3053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !389, line: 95, baseType: !109)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3050, file: !3042, line: 47, baseType: !109, size: 32, offset: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3050, file: !3042, line: 48, baseType: !3056, size: 64, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3042, line: 11, baseType: !3057)
!3057 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3042, line: 8, size: 64, elements: !3058)
!3058 = !{!3059, !3060}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3057, file: !3042, line: 9, baseType: !109, size: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3057, file: !3042, line: 10, baseType: !170, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3050, file: !3042, line: 49, baseType: !109, size: 32, offset: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3041, file: !3042, line: 57, baseType: !3063, size: 128)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3041, file: !3042, line: 53, size: 128, elements: !3064)
!3064 = !{!3065, !3066, !3067}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3063, file: !3042, line: 54, baseType: !2711, size: 32)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3063, file: !3042, line: 55, baseType: !446, size: 32, offset: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3063, file: !3042, line: 56, baseType: !3056, size: 64, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3041, file: !3042, line: 66, baseType: !3069, size: 256)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3041, file: !3042, line: 60, size: 256, elements: !3070)
!3070 = !{!3071, !3072, !3073, !3074, !3076}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3069, file: !3042, line: 61, baseType: !2711, size: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3069, file: !3042, line: 62, baseType: !446, size: 32, offset: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3069, file: !3042, line: 63, baseType: !109, size: 32, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3069, file: !3042, line: 64, baseType: !3075, size: 64, offset: 128)
!3075 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !389, line: 94, baseType: !390)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3069, file: !3042, line: 65, baseType: !3075, size: 64, offset: 192)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3041, file: !3042, line: 105, baseType: !3078, size: 256)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3041, file: !3042, line: 69, size: 256, elements: !3079)
!3079 = !{!3080, !3081}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3078, file: !3042, line: 70, baseType: !170, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, scope: !3078, file: !3042, line: 79, baseType: !3082, size: 192, offset: 64)
!3082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3078, file: !3042, line: 79, size: 192, elements: !3083)
!3083 = !{!3084, !3085, !3086, !3093, !3098}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3082, file: !3042, line: 81, baseType: !109, size: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3082, file: !3042, line: 86, baseType: !828, size: 16)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3082, file: !3042, line: 92, baseType: !3087, size: 192)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3082, file: !3042, line: 88, size: 192, elements: !3088)
!3088 = !{!3089, !3091, !3092}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3087, file: !3042, line: 89, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 64, elements: !1620)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3087, file: !3042, line: 90, baseType: !170, size: 64, offset: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3087, file: !3042, line: 91, baseType: !170, size: 64, offset: 128)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3082, file: !3042, line: 97, baseType: !3094, size: 96)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3082, file: !3042, line: 94, size: 96, elements: !3095)
!3095 = !{!3096, !3097}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3094, file: !3042, line: 95, baseType: !3090, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3094, file: !3042, line: 96, baseType: !167, size: 32, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3082, file: !3042, line: 103, baseType: !3099, size: 128)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3082, file: !3042, line: 99, size: 128, elements: !3100)
!3100 = !{!3101, !3102, !3103}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3099, file: !3042, line: 100, baseType: !195, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3099, file: !3042, line: 101, baseType: !167, size: 32, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3099, file: !3042, line: 102, baseType: !167, size: 32, offset: 96)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3041, file: !3042, line: 111, baseType: !3105, size: 128)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3041, file: !3042, line: 108, size: 128, elements: !3106)
!3106 = !{!3107, !3108}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3105, file: !3042, line: 109, baseType: !391, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3105, file: !3042, line: 110, baseType: !109, size: 32, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3041, file: !3042, line: 118, baseType: !3110, size: 128)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3041, file: !3042, line: 114, size: 128, elements: !3111)
!3111 = !{!3112, !3113, !3114}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3110, file: !3042, line: 115, baseType: !170, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3110, file: !3042, line: 116, baseType: !109, size: 32, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3110, file: !3042, line: 117, baseType: !7, size: 32, offset: 96)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1457, file: !1132, line: 1208, baseType: !2895, size: 448, offset: 17664)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1457, file: !1132, line: 1215, baseType: !186, size: 64, offset: 18112)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1457, file: !1132, line: 1217, baseType: !186, size: 64, offset: 18176)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1457, file: !1132, line: 1219, baseType: !186, size: 64, offset: 18240)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1457, file: !1132, line: 1223, baseType: !3120, size: 64, offset: 18304)
!3120 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3121, line: 99, baseType: !3122)
!3121 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3121, line: 99, size: 64, elements: !3123)
!3123 = !{!3124}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3122, file: !3121, line: 99, baseType: !1704, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1457, file: !1132, line: 1225, baseType: !475, size: 32, offset: 18368)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1457, file: !1132, line: 1226, baseType: !109, size: 32, offset: 18400)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1457, file: !1132, line: 1227, baseType: !109, size: 32, offset: 18432)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1457, file: !1132, line: 1231, baseType: !3129, size: 64, offset: 18496)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1132, line: 1231, flags: DIFlagFwdDecl)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1457, file: !1132, line: 1233, baseType: !207, size: 128, offset: 18560)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1457, file: !1132, line: 1240, baseType: !3133, size: 64, offset: 18688)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1132, line: 62, flags: DIFlagFwdDecl)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1457, file: !1132, line: 1242, baseType: !3136, size: 64, offset: 18752)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1132, line: 1242, flags: DIFlagFwdDecl)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1457, file: !1132, line: 1244, baseType: !207, size: 128, offset: 18816)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1457, file: !1132, line: 1245, baseType: !3140, size: 64, offset: 18944)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1132, line: 51, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1457, file: !1132, line: 1246, baseType: !690, size: 256, offset: 19008)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1457, file: !1132, line: 1247, baseType: !7, size: 32, offset: 19264)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1457, file: !1132, line: 1250, baseType: !3145, size: 64, offset: 19328)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1132, line: 57, flags: DIFlagFwdDecl)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1457, file: !1132, line: 1251, baseType: !690, size: 256, offset: 19392)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1457, file: !1132, line: 1252, baseType: !207, size: 128, offset: 19648)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1457, file: !1132, line: 1259, baseType: !2402, size: 64, offset: 19776)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1457, file: !1132, line: 1260, baseType: !828, size: 16, offset: 19840)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1457, file: !1132, line: 1261, baseType: !828, size: 16, offset: 19856)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1457, file: !1132, line: 1314, baseType: !3153, size: 64, offset: 19904)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3155, line: 62, size: 256, align: 256, elements: !3156)
!3155 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3156 = !{!3157, !3158, !3159, !3160, !3161, !3162, !3163}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3154, file: !3155, line: 75, baseType: !167, size: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3154, file: !3155, line: 90, baseType: !167, size: 32, offset: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3154, file: !3155, line: 112, baseType: !187, size: 64, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3154, file: !3155, line: 132, baseType: !167, size: 32, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3154, file: !3155, line: 140, baseType: !167, size: 32, offset: 160)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3154, file: !3155, line: 149, baseType: !167, size: 32, offset: 192)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3154, file: !3155, line: 154, baseType: !3164, offset: 224)
!3164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, elements: !1840)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1457, file: !1132, line: 1315, baseType: !165, size: 32, offset: 19968)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1457, file: !1132, line: 1316, baseType: !165, size: 32, offset: 20000)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1457, file: !1132, line: 1321, baseType: !195, size: 64, offset: 20032)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1457, file: !1132, line: 1325, baseType: !109, size: 32, offset: 20096)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1457, file: !1132, line: 1326, baseType: !109, size: 32, offset: 20128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1457, file: !1132, line: 1327, baseType: !109, size: 32, offset: 20160)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1457, file: !1132, line: 1328, baseType: !109, size: 32, offset: 20192)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1457, file: !1132, line: 1329, baseType: !910, size: 128, align: 64, offset: 20224)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1457, file: !1132, line: 1332, baseType: !3174, size: 128, offset: 20352)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3175, line: 51, size: 128, elements: !3176)
!3175 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3176 = !{!3177, !3182, !3183}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3174, file: !3175, line: 60, baseType: !3178, size: 64)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3179, line: 7, size: 64, elements: !3180)
!3179 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3180 = !{!3181}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3178, file: !3179, line: 12, baseType: !1701, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3174, file: !3175, line: 63, baseType: !770, size: 8, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3174, file: !3175, line: 70, baseType: !770, size: 8, offset: 72)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1457, file: !1132, line: 1335, baseType: !2454, size: 64, offset: 20480)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1457, file: !1132, line: 1337, baseType: !3186, size: 128, offset: 20544)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3175, line: 39, size: 128, elements: !3187)
!3187 = !{!3188, !3189, !3190}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3186, file: !3175, line: 40, baseType: !2241, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3186, file: !3175, line: 42, baseType: !167, size: 32, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3186, file: !3175, line: 43, baseType: !167, size: 32, offset: 96)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1457, file: !1132, line: 1340, baseType: !3192, size: 64, offset: 20672)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1132, line: 69, flags: DIFlagFwdDecl)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1457, file: !1132, line: 1351, baseType: !109, size: 32, offset: 20736)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1457, file: !1132, line: 1352, baseType: !109, size: 32, offset: 20768)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1457, file: !1132, line: 1354, baseType: !195, size: 64, offset: 20800)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1457, file: !1132, line: 1364, baseType: !186, size: 64, offset: 20864)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1457, file: !1132, line: 1365, baseType: !186, size: 64, offset: 20928)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1457, file: !1132, line: 1412, baseType: !195, size: 64, offset: 20992)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1457, file: !1132, line: 1453, baseType: !3201, size: 64, offset: 21056)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1132, line: 1453, flags: DIFlagFwdDecl)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1457, file: !1132, line: 1457, baseType: !3204, size: 64, offset: 21120)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3206)
!3206 = !{!3207, !3208, !3227, !3230, !3231, !3264, !3274}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3205, file: !68, line: 62, baseType: !67, size: 32)
!3208 = !DIDerivedType(tag: DW_TAG_member, scope: !3205, file: !68, line: 64, baseType: !3209, size: 192, offset: 64)
!3209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3205, file: !68, line: 64, size: 192, elements: !3210)
!3210 = !{!3211, !3222}
!3211 = !DIDerivedType(tag: DW_TAG_member, scope: !3209, file: !68, line: 65, baseType: !3212, size: 192)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3209, file: !68, line: 65, size: 192, elements: !3213)
!3213 = !{!3214, !3221}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3212, file: !68, line: 66, baseType: !3215, size: 128)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3216, line: 50, size: 128, elements: !3217)
!3216 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3217 = !{!3218, !3219, !3220}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3215, file: !3216, line: 52, baseType: !195, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3215, file: !3216, line: 54, baseType: !7, size: 32, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3215, file: !3216, line: 55, baseType: !7, size: 32, offset: 96)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3212, file: !68, line: 67, baseType: !195, size: 64, offset: 128)
!3222 = !DIDerivedType(tag: DW_TAG_member, scope: !3209, file: !68, line: 70, baseType: !3223, size: 192)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3209, file: !68, line: 70, size: 192, elements: !3224)
!3224 = !{!3225, !3226}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3223, file: !68, line: 71, baseType: !910, size: 128, align: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3223, file: !68, line: 72, baseType: !195, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3205, file: !68, line: 76, baseType: !3228, size: 64, offset: 256)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3205, file: !68, line: 77, baseType: !195, size: 64, offset: 320)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3205, file: !68, line: 79, baseType: !3232, size: 64, offset: 384)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3216, line: 25, size: 256, elements: !3234)
!3234 = !{!3235, !3241, !3245}
!3235 = !DIDerivedType(tag: DW_TAG_member, scope: !3233, file: !3216, line: 26, baseType: !3236, size: 128)
!3236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3233, file: !3216, line: 26, size: 128, elements: !3237)
!3237 = !{!3238, !3240}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3236, file: !3216, line: 27, baseType: !3239, size: 128)
!3239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 128, elements: !2769)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3236, file: !3216, line: 28, baseType: !3239, size: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3233, file: !3216, line: 31, baseType: !3242, size: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3244)
!3244 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3216, line: 23, flags: DIFlagFwdDecl)
!3245 = !DIDerivedType(tag: DW_TAG_member, scope: !3233, file: !3216, line: 33, baseType: !3246, size: 64, offset: 192)
!3246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3233, file: !3216, line: 33, size: 64, elements: !3247)
!3247 = !{!3248, !3254, !3259}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3246, file: !3216, line: 38, baseType: !3249, size: 64)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3246, file: !3216, line: 34, size: 64, elements: !3250)
!3250 = !{!3251, !3252, !3253}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3249, file: !3216, line: 35, baseType: !686, size: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3249, file: !3216, line: 36, baseType: !317, size: 8, offset: 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3249, file: !3216, line: 37, baseType: !317, size: 8, offset: 40)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3246, file: !3216, line: 42, baseType: !3255, size: 16)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3246, file: !3216, line: 39, size: 16, elements: !3256)
!3256 = !{!3257, !3258}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3255, file: !3216, line: 40, baseType: !317, size: 8)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3255, file: !3216, line: 41, baseType: !317, size: 8, offset: 8)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3246, file: !3216, line: 46, baseType: !3260, size: 16)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3246, file: !3216, line: 43, size: 16, elements: !3261)
!3261 = !{!3262, !3263}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3260, file: !3216, line: 44, baseType: !317, size: 8)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3260, file: !3216, line: 45, baseType: !317, size: 8, offset: 8)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3205, file: !68, line: 81, baseType: !3265, size: 64, offset: 448)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3267)
!3267 = !{!3268, !3269, !3270, !3271, !3272, !3273}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3266, file: !68, line: 86, baseType: !3228, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3266, file: !68, line: 87, baseType: !195, size: 64, offset: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3266, file: !68, line: 88, baseType: !195, size: 64, offset: 128)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3266, file: !68, line: 89, baseType: !195, size: 64, offset: 192)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3266, file: !68, line: 90, baseType: !770, size: 8, offset: 256)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3266, file: !68, line: 92, baseType: !3265, size: 64, offset: 320)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3205, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1457, file: !1132, line: 1463, baseType: !3276, offset: 21184)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1132, line: 739, elements: !977)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1457, file: !1132, line: 1470, baseType: !910, size: 128, align: 64, offset: 21184)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1457, file: !1132, line: 1471, baseType: !1470, size: 32, offset: 21312)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1457, file: !1132, line: 1472, baseType: !109, size: 32, offset: 21344)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1457, file: !1132, line: 1474, baseType: !1456, size: 64, offset: 21376)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1457, file: !1132, line: 1475, baseType: !930, size: 320, offset: 21440)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1457, file: !1132, line: 1478, baseType: !3283, size: 64, offset: 21760)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2094, line: 49, size: 512, elements: !3285)
!3285 = !{!3286, !3287, !3288, !3289, !3290, !3292, !3293, !3294, !3295}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3284, file: !2094, line: 50, baseType: !3283, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3284, file: !2094, line: 51, baseType: !170, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3284, file: !2094, line: 52, baseType: !195, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3284, file: !2094, line: 53, baseType: !195, size: 64, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3284, file: !2094, line: 54, baseType: !3291, size: 64, offset: 256)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3284, file: !2094, line: 56, baseType: !7, size: 32, offset: 320)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3284, file: !2094, line: 58, baseType: !7, size: 32, offset: 352)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3284, file: !2094, line: 59, baseType: !185, size: 64, offset: 384)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3284, file: !2094, line: 60, baseType: !2592, size: 64, offset: 448)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1457, file: !1132, line: 1482, baseType: !1470, size: 32, offset: 21824)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1457, file: !1132, line: 1489, baseType: !170, size: 64, offset: 21888)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1457, file: !1132, line: 1504, baseType: !170, size: 64, offset: 21952)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1457, file: !1132, line: 1505, baseType: !187, size: 64, offset: 22016)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1457, file: !1132, line: 1506, baseType: !186, size: 64, offset: 22080)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1457, file: !1132, line: 1507, baseType: !187, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1457, file: !1132, line: 1508, baseType: !187, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1457, file: !1132, line: 1509, baseType: !187, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1457, file: !1132, line: 1510, baseType: !910, size: 128, align: 64, offset: 22208)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1457, file: !1132, line: 1511, baseType: !109, size: 32, offset: 22336)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1457, file: !1132, line: 1515, baseType: !3307, size: 64, offset: 22400)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1484, line: 56, size: 64, elements: !3308)
!3308 = !{!3309}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3307, file: !1484, line: 57, baseType: !1487, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1457, file: !1132, line: 1518, baseType: !3307, size: 64, offset: 22464)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1457, file: !1132, line: 1528, baseType: !910, size: 128, align: 64, offset: 22528)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1457, file: !1132, line: 1552, baseType: !3313, size: 35328, offset: 23040)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3314, line: 430, size: 35328, elements: !3315)
!3314 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3315 = !{!3316, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3345, !3346, !3347, !3348, !3349, !3350, !3353, !3354, !3355, !3356}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3313, file: !3314, line: 432, baseType: !3317, size: 192)
!3317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3318, size: 192, elements: !356)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3319, line: 16, size: 64, elements: !3320)
!3319 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3320 = !{!3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3318, file: !3319, line: 17, baseType: !324, size: 16)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3318, file: !3319, line: 18, baseType: !324, size: 16, offset: 16)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3318, file: !3319, line: 19, baseType: !324, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3318, file: !3319, line: 19, baseType: !324, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3318, file: !3319, line: 19, baseType: !324, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3318, file: !3319, line: 19, baseType: !324, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3318, file: !3319, line: 19, baseType: !324, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3318, file: !3319, line: 20, baseType: !324, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3318, file: !3319, line: 20, baseType: !324, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3318, file: !3319, line: 20, baseType: !324, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3318, file: !3319, line: 20, baseType: !324, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3318, file: !3319, line: 20, baseType: !324, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3318, file: !3319, line: 20, baseType: !324, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3313, file: !3314, line: 436, baseType: !195, size: 64, offset: 192)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3313, file: !3314, line: 440, baseType: !268, size: 16, offset: 256)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3313, file: !3314, line: 441, baseType: !268, size: 16, offset: 272)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3313, file: !3314, line: 442, baseType: !268, size: 16, offset: 288)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3313, file: !3314, line: 443, baseType: !268, size: 16, offset: 304)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3313, file: !3314, line: 447, baseType: !195, size: 64, offset: 320)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3313, file: !3314, line: 448, baseType: !195, size: 64, offset: 384)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3313, file: !3314, line: 459, baseType: !3342, size: 256, offset: 448)
!3342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3343, size: 256, elements: !224)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3314, line: 428, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3313, file: !3314, line: 461, baseType: !195, size: 64, offset: 704)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3313, file: !3314, line: 463, baseType: !195, size: 64, offset: 768)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3313, file: !3314, line: 465, baseType: !195, size: 64, offset: 832)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3313, file: !3314, line: 466, baseType: !195, size: 64, offset: 896)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3313, file: !3314, line: 467, baseType: !195, size: 64, offset: 960)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3313, file: !3314, line: 473, baseType: !3351, size: 64, offset: 1024)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3314, line: 10, flags: DIFlagFwdDecl)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3313, file: !3314, line: 480, baseType: !195, size: 64, offset: 1088)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3313, file: !3314, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3313, file: !3314, line: 491, baseType: !165, size: 32, offset: 1184)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3313, file: !3314, line: 501, baseType: !3357, size: 33792, offset: 1536)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3358, line: 448, size: 33792, elements: !3359)
!3358 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3359 = !{!3360, !3361, !3362, !3524, !3525, !3531, !3532}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3357, file: !3358, line: 461, baseType: !7, size: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3357, file: !3358, line: 468, baseType: !195, size: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3357, file: !3358, line: 476, baseType: !3363, size: 64, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3358, line: 356, size: 33280, align: 512, elements: !3365)
!3365 = !{!3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3364, file: !3358, line: 358, baseType: !7, size: 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3364, file: !3358, line: 361, baseType: !7, size: 32, offset: 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3364, file: !3358, line: 364, baseType: !186, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3364, file: !3358, line: 367, baseType: !186, size: 64, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3364, file: !3358, line: 370, baseType: !186, size: 64, offset: 192)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3364, file: !3358, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3364, file: !3358, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3364, file: !3358, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3364, file: !3358, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3364, file: !3358, line: 397, baseType: !3376, size: 32768, offset: 512)
!3376 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3358, line: 348, size: 32768, elements: !3377)
!3377 = !{!3378, !3393, !3430, !3507, !3520}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3376, file: !3358, line: 349, baseType: !3379, size: 896)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3358, line: 12, size: 896, elements: !3380)
!3380 = !{!3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3392}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3379, file: !3358, line: 13, baseType: !165, size: 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3379, file: !3358, line: 14, baseType: !165, size: 32, offset: 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3379, file: !3358, line: 15, baseType: !165, size: 32, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3379, file: !3358, line: 16, baseType: !165, size: 32, offset: 96)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3379, file: !3358, line: 17, baseType: !165, size: 32, offset: 128)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3379, file: !3358, line: 18, baseType: !165, size: 32, offset: 160)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3379, file: !3358, line: 19, baseType: !165, size: 32, offset: 192)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3379, file: !3358, line: 22, baseType: !3389, size: 640, offset: 224)
!3389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 640, elements: !3390)
!3390 = !{!3391}
!3391 = !DISubrange(count: 20)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3379, file: !3358, line: 25, baseType: !165, size: 32, offset: 864)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3376, file: !3358, line: 350, baseType: !3394, size: 4096, align: 128)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3358, line: 34, size: 4096, align: 128, elements: !3395)
!3395 = !{!3396, !3397, !3398, !3399, !3400, !3415, !3416, !3417, !3419, !3421, !3425}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3394, file: !3358, line: 35, baseType: !324, size: 16)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3394, file: !3358, line: 36, baseType: !324, size: 16, offset: 16)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3394, file: !3358, line: 37, baseType: !324, size: 16, offset: 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3394, file: !3358, line: 38, baseType: !324, size: 16, offset: 48)
!3400 = !DIDerivedType(tag: DW_TAG_member, scope: !3394, file: !3358, line: 39, baseType: !3401, size: 128, offset: 64)
!3401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3394, file: !3358, line: 39, size: 128, elements: !3402)
!3402 = !{!3403, !3408}
!3403 = !DIDerivedType(tag: DW_TAG_member, scope: !3401, file: !3358, line: 40, baseType: !3404, size: 128)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3401, file: !3358, line: 40, size: 128, elements: !3405)
!3405 = !{!3406, !3407}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3404, file: !3358, line: 41, baseType: !186, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3404, file: !3358, line: 42, baseType: !186, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, scope: !3401, file: !3358, line: 44, baseType: !3409, size: 128)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3401, file: !3358, line: 44, size: 128, elements: !3410)
!3410 = !{!3411, !3412, !3413, !3414}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3409, file: !3358, line: 45, baseType: !165, size: 32)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3409, file: !3358, line: 46, baseType: !165, size: 32, offset: 32)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3409, file: !3358, line: 47, baseType: !165, size: 32, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3409, file: !3358, line: 48, baseType: !165, size: 32, offset: 96)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3394, file: !3358, line: 51, baseType: !165, size: 32, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3394, file: !3358, line: 52, baseType: !165, size: 32, offset: 224)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3394, file: !3358, line: 55, baseType: !3418, size: 1024, offset: 256)
!3418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 1024, elements: !511)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3394, file: !3358, line: 58, baseType: !3420, size: 2048, offset: 1280)
!3420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 2048, elements: !360)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3394, file: !3358, line: 60, baseType: !3422, size: 384, offset: 3328)
!3422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 384, elements: !3423)
!3423 = !{!3424}
!3424 = !DISubrange(count: 12)
!3425 = !DIDerivedType(tag: DW_TAG_member, scope: !3394, file: !3358, line: 62, baseType: !3426, size: 384, offset: 3712)
!3426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3394, file: !3358, line: 62, size: 384, elements: !3427)
!3427 = !{!3428, !3429}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3426, file: !3358, line: 63, baseType: !3422, size: 384)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3426, file: !3358, line: 64, baseType: !3422, size: 384)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3376, file: !3358, line: 351, baseType: !3431, size: 1088)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3358, line: 79, size: 1088, elements: !3432)
!3432 = !{!3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3506}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3431, file: !3358, line: 80, baseType: !165, size: 32)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3431, file: !3358, line: 81, baseType: !165, size: 32, offset: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3431, file: !3358, line: 82, baseType: !165, size: 32, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3431, file: !3358, line: 83, baseType: !165, size: 32, offset: 96)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3431, file: !3358, line: 84, baseType: !165, size: 32, offset: 128)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3431, file: !3358, line: 85, baseType: !165, size: 32, offset: 160)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3431, file: !3358, line: 86, baseType: !165, size: 32, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3431, file: !3358, line: 88, baseType: !3389, size: 640, offset: 224)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3431, file: !3358, line: 89, baseType: !317, size: 8, offset: 864)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3431, file: !3358, line: 90, baseType: !317, size: 8, offset: 872)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3431, file: !3358, line: 91, baseType: !317, size: 8, offset: 880)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3431, file: !3358, line: 92, baseType: !317, size: 8, offset: 888)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3431, file: !3358, line: 93, baseType: !317, size: 8, offset: 896)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3431, file: !3358, line: 94, baseType: !317, size: 8, offset: 904)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3431, file: !3358, line: 95, baseType: !3448, size: 64, offset: 960)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3450, line: 11, size: 128, elements: !3451)
!3450 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3451 = !{!3452, !3453}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3449, file: !3450, line: 12, baseType: !391, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3449, file: !3450, line: 13, baseType: !3454, size: 64, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3456, line: 103, size: 1344, elements: !3457)
!3456 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3457 = !{!3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3486, !3487, !3488}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3455, file: !3456, line: 109, baseType: !195, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3455, file: !3456, line: 110, baseType: !195, size: 64, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3455, file: !3456, line: 111, baseType: !195, size: 64, offset: 128)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3455, file: !3456, line: 112, baseType: !195, size: 64, offset: 192)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3455, file: !3456, line: 113, baseType: !195, size: 64, offset: 256)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3455, file: !3456, line: 114, baseType: !195, size: 64, offset: 320)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3455, file: !3456, line: 117, baseType: !195, size: 64, offset: 384)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3455, file: !3456, line: 118, baseType: !195, size: 64, offset: 448)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3455, file: !3456, line: 119, baseType: !195, size: 64, offset: 512)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3455, file: !3456, line: 120, baseType: !195, size: 64, offset: 576)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3455, file: !3456, line: 121, baseType: !195, size: 64, offset: 640)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3455, file: !3456, line: 122, baseType: !195, size: 64, offset: 704)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3455, file: !3456, line: 123, baseType: !195, size: 64, offset: 768)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3455, file: !3456, line: 124, baseType: !195, size: 64, offset: 832)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3455, file: !3456, line: 125, baseType: !195, size: 64, offset: 896)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3455, file: !3456, line: 139, baseType: !195, size: 64, offset: 960)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3455, file: !3456, line: 142, baseType: !195, size: 64, offset: 1024)
!3475 = !DIDerivedType(tag: DW_TAG_member, scope: !3455, file: !3456, line: 144, baseType: !3476, size: 64, offset: 1088)
!3476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3455, file: !3456, line: 144, size: 64, elements: !3477)
!3477 = !{!3478, !3479, !3480}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3476, file: !3456, line: 146, baseType: !324, size: 16)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3476, file: !3456, line: 148, baseType: !186, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3476, file: !3456, line: 150, baseType: !3481, size: 64)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3456, line: 59, size: 64, elements: !3482)
!3482 = !{!3483, !3484, !3485}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3481, file: !3456, line: 61, baseType: !186, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3481, file: !3456, line: 63, baseType: !186, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3481, file: !3456, line: 65, baseType: !186, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3455, file: !3456, line: 153, baseType: !195, size: 64, offset: 1152)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3455, file: !3456, line: 154, baseType: !195, size: 64, offset: 1216)
!3488 = !DIDerivedType(tag: DW_TAG_member, scope: !3455, file: !3456, line: 156, baseType: !3489, size: 64, offset: 1280)
!3489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3455, file: !3456, line: 156, size: 64, elements: !3490)
!3490 = !{!3491, !3492, !3493}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3489, file: !3456, line: 158, baseType: !324, size: 16)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3489, file: !3456, line: 160, baseType: !186, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3489, file: !3456, line: 162, baseType: !3494, size: 64)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3456, line: 69, size: 64, elements: !3495)
!3495 = !{!3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3494, file: !3456, line: 71, baseType: !186, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3494, file: !3456, line: 73, baseType: !186, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3494, file: !3456, line: 75, baseType: !186, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3494, file: !3456, line: 77, baseType: !186, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3494, file: !3456, line: 80, baseType: !186, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3494, file: !3456, line: 83, baseType: !186, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3494, file: !3456, line: 86, baseType: !186, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3494, file: !3456, line: 88, baseType: !186, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3494, file: !3456, line: 93, baseType: !186, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3494, file: !3456, line: 100, baseType: !186, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3431, file: !3358, line: 96, baseType: !165, size: 32, offset: 1024)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3376, file: !3358, line: 352, baseType: !3508, size: 4608, align: 512)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3358, line: 333, size: 4608, align: 512, elements: !3509)
!3509 = !{!3510, !3511, !3518}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3508, file: !3358, line: 334, baseType: !3394, size: 4096, align: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3508, file: !3358, line: 335, baseType: !3512, size: 512, offset: 4096)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3358, line: 312, size: 512, elements: !3513)
!3513 = !{!3514, !3515, !3516}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3512, file: !3358, line: 313, baseType: !186, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3512, file: !3358, line: 314, baseType: !186, size: 64, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3512, file: !3358, line: 315, baseType: !3517, size: 384, offset: 128)
!3517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 384, elements: !1923)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3508, file: !3358, line: 336, baseType: !3519, offset: 4608)
!3519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, elements: !1840)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3376, file: !3358, line: 353, baseType: !3521, size: 32768)
!3521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 32768, elements: !3522)
!3522 = !{!3523}
!3523 = !DISubrange(count: 4096)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3357, file: !3358, line: 484, baseType: !3363, size: 64, offset: 192)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3357, file: !3358, line: 491, baseType: !3526, size: 128, offset: 256)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3358, line: 404, size: 128, elements: !3527)
!3527 = !{!3528, !3529, !3530}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3526, file: !3358, line: 424, baseType: !186, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3526, file: !3358, line: 432, baseType: !7, size: 32, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3526, file: !3358, line: 440, baseType: !7, size: 32, offset: 96)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3357, file: !3358, line: 498, baseType: !3526, size: 128, offset: 384)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3357, file: !3358, line: 508, baseType: !3364, size: 33280, align: 512, offset: 512)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1433, file: !1434, line: 16, baseType: !1443, size: 192, offset: 512)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1433, file: !1434, line: 17, baseType: !309, size: 32, offset: 704)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !581, file: !14, line: 1240, baseType: !170, size: 64, offset: 6912)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !581, file: !14, line: 1243, baseType: !165, size: 32, offset: 6976)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !581, file: !14, line: 1245, baseType: !1190, size: 64, offset: 7040)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !581, file: !14, line: 1246, baseType: !1190, size: 64, offset: 7104)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !581, file: !14, line: 1248, baseType: !167, size: 32, offset: 7168)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !581, file: !14, line: 1249, baseType: !3541, size: 64, offset: 7232)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !581, file: !14, line: 1252, baseType: !3544, size: 256, offset: 7296)
!3544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 256, elements: !511)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !581, file: !14, line: 1253, baseType: !3546, size: 128, offset: 7552)
!3546 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3547, line: 21, baseType: !3548)
!3547 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3547, line: 19, size: 128, elements: !3549)
!3549 = !{!3550}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3548, file: !3547, line: 20, baseType: !3551, size: 128)
!3551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 128, elements: !2769)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !581, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !581, file: !14, line: 1261, baseType: !690, size: 256, offset: 7744)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !581, file: !14, line: 1267, baseType: !191, size: 64, offset: 8000)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !581, file: !14, line: 1269, baseType: !527, size: 64, offset: 8064)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !581, file: !14, line: 1271, baseType: !3557, size: 448, offset: 8128)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1199, line: 63, size: 448, elements: !3558)
!3558 = !{!3559, !3564, !3565, !3566, !3567, !3568, !3569}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3557, file: !1199, line: 64, baseType: !3560, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!195, !3563, !1197}
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3557, file: !1199, line: 66, baseType: !3560, size: 64, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3557, file: !1199, line: 69, baseType: !391, size: 64, offset: 128)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3557, file: !1199, line: 70, baseType: !109, size: 32, offset: 192)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3557, file: !1199, line: 71, baseType: !7, size: 32, offset: 224)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3557, file: !1199, line: 74, baseType: !207, size: 128, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3557, file: !1199, line: 85, baseType: !3570, size: 64, offset: 384)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !581, file: !14, line: 1274, baseType: !694, size: 64, offset: 8576)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !581, file: !14, line: 1280, baseType: !694, size: 64, offset: 8640)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !581, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !581, file: !14, line: 1286, baseType: !2503, size: 32, offset: 8736)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !581, file: !14, line: 1289, baseType: !1010, size: 64, offset: 8768)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !581, file: !14, line: 1290, baseType: !1058, size: 64, offset: 8832)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !581, file: !14, line: 1297, baseType: !2017, size: 64, offset: 8896)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !581, file: !14, line: 1304, baseType: !3579, size: 64, offset: 8960)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3580, line: 49, size: 64, elements: !3581)
!3580 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3581 = !{!3582}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3579, file: !3580, line: 50, baseType: !3583, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3580, line: 41, size: 512, align: 512, elements: !3585)
!3585 = !{!3586, !3587, !3592}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3584, file: !3580, line: 43, baseType: !289, size: 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3584, file: !3580, line: 45, baseType: !3588, size: 192, offset: 64)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3580, line: 29, size: 192, elements: !3589)
!3589 = !{!3590, !3591}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3588, file: !3580, line: 30, baseType: !207, size: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3588, file: !3580, line: 32, baseType: !391, size: 64, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3584, file: !3580, line: 46, baseType: !391, size: 64, offset: 256)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !581, file: !14, line: 1305, baseType: !3579, size: 64, offset: 9024)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !581, file: !14, line: 1306, baseType: !910, size: 128, align: 64, offset: 9088)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !581, file: !14, line: 1307, baseType: !948, size: 256, offset: 9216)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !581, file: !14, line: 1309, baseType: !690, size: 256, offset: 9472)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !581, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !581, file: !14, line: 1317, baseType: !289, size: 32, align: 512, offset: 10240)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !581, file: !14, line: 1318, baseType: !207, size: 128, offset: 10304)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !581, file: !14, line: 1320, baseType: !289, size: 32, offset: 10432)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !581, file: !14, line: 1321, baseType: !207, size: 128, offset: 10496)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !575, file: !576, line: 73, baseType: !109, size: 32, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !575, file: !576, line: 74, baseType: !3604, size: 64, offset: 192)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1864, line: 42, flags: DIFlagFwdDecl)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !529, file: !471, line: 141, baseType: !3608, size: 64, offset: 704)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!109, !1260, !770}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !529, file: !471, line: 142, baseType: !3612, size: 64, offset: 768)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!469, !469, !3615}
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !470, file: !471, line: 96, baseType: !580, size: 64, offset: 832)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !470, file: !471, line: 97, baseType: !195, size: 64, offset: 896)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !470, file: !471, line: 98, baseType: !170, size: 64, offset: 960)
!3620 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !471, line: 100, baseType: !3621, size: 128, offset: 1024)
!3621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !470, file: !471, line: 100, size: 128, elements: !3622)
!3622 = !{!3623, !3624}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3621, file: !471, line: 101, baseType: !207, size: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3621, file: !471, line: 102, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !470, file: !471, line: 104, baseType: !207, size: 128, offset: 1152)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !470, file: !471, line: 105, baseType: !207, size: 128, offset: 1280)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !470, file: !471, line: 113, baseType: !3629, size: 128, offset: 1408)
!3629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !470, file: !471, line: 109, size: 128, elements: !3630)
!3630 = !{!3631, !3632, !3633}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3629, file: !471, line: 110, baseType: !934, size: 128)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3629, file: !471, line: 111, baseType: !485, size: 128)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3629, file: !471, line: 112, baseType: !910, size: 128, align: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !463, file: !14, line: 1968, baseType: !3635, size: 64, offset: 64)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!191, !469, !434, !3638}
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3640, line: 10, size: 128, elements: !3641)
!3640 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3641 = !{!3642, !3643}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3639, file: !3640, line: 11, baseType: !733, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3639, file: !3640, line: 12, baseType: !170, size: 64, offset: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !463, file: !14, line: 1969, baseType: !3645, size: 64, offset: 128)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!109, !3604, !434, !109}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !463, file: !14, line: 1970, baseType: !3649, size: 64, offset: 192)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!457, !434, !109, !770}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !463, file: !14, line: 1972, baseType: !3653, size: 64, offset: 256)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!109, !469, !355, !109}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !463, file: !14, line: 1974, baseType: !3657, size: 64, offset: 320)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!109, !3604, !434, !469, !397, !770}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !463, file: !14, line: 1976, baseType: !3661, size: 64, offset: 384)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!109, !469, !434, !469}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !463, file: !14, line: 1977, baseType: !3665, size: 64, offset: 448)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!109, !434, !469}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !463, file: !14, line: 1978, baseType: !3669, size: 64, offset: 512)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!109, !3604, !434, !469, !191}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !463, file: !14, line: 1980, baseType: !3673, size: 64, offset: 576)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!109, !3604, !434, !469, !397}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !463, file: !14, line: 1982, baseType: !3665, size: 64, offset: 640)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !463, file: !14, line: 1983, baseType: !3678, size: 64, offset: 704)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!109, !3604, !434, !469, !397, !585}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !463, file: !14, line: 1985, baseType: !3682, size: 64, offset: 768)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!109, !3604, !434, !469, !434, !469, !7}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !463, file: !14, line: 1987, baseType: !3686, size: 64, offset: 832)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!109, !3604, !469, !3689}
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3691)
!3691 = !{!3692, !3693, !3694, !3704, !3713, !3714, !3719, !3720, !3721}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3690, file: !14, line: 227, baseType: !7, size: 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3690, file: !14, line: 228, baseType: !397, size: 16, offset: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, scope: !3690, file: !14, line: 241, baseType: !3695, size: 32, offset: 64)
!3695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3690, file: !14, line: 241, size: 32, elements: !3696)
!3696 = !{!3697, !3698}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3695, file: !14, line: 242, baseType: !440, size: 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3695, file: !14, line: 243, baseType: !3699, size: 32)
!3699 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3700, line: 16, baseType: !3701)
!3700 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3700, line: 14, size: 32, elements: !3702)
!3702 = !{!3703}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3701, file: !3700, line: 15, baseType: !445, size: 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, scope: !3690, file: !14, line: 245, baseType: !3705, size: 32, offset: 96)
!3705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3690, file: !14, line: 245, size: 32, elements: !3706)
!3706 = !{!3707, !3708}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3705, file: !14, line: 246, baseType: !449, size: 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3705, file: !14, line: 247, baseType: !3709, size: 32)
!3709 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3700, line: 20, baseType: !3710)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3700, line: 18, size: 32, elements: !3711)
!3711 = !{!3712}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3710, file: !3700, line: 19, baseType: !453, size: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3690, file: !14, line: 249, baseType: !590, size: 64, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3690, file: !14, line: 250, baseType: !3715, size: 128, offset: 192)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1191, line: 13, size: 128, elements: !3716)
!3716 = !{!3717, !3718}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3715, file: !1191, line: 14, baseType: !1190, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3715, file: !1191, line: 15, baseType: !391, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3690, file: !14, line: 251, baseType: !3715, size: 128, offset: 320)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3690, file: !14, line: 252, baseType: !3715, size: 128, offset: 448)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3690, file: !14, line: 259, baseType: !1780, size: 64, offset: 576)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !463, file: !14, line: 1988, baseType: !3723, size: 64, offset: 896)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!109, !3604, !1260, !3726, !165, !7}
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3728, line: 22, size: 1280, elements: !3729)
!3728 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3729 = !{!3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3727, file: !3728, line: 23, baseType: !165, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3727, file: !3728, line: 24, baseType: !397, size: 16, offset: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3727, file: !3728, line: 25, baseType: !7, size: 32, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3727, file: !3728, line: 26, baseType: !1902, size: 32, offset: 96)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3727, file: !3728, line: 27, baseType: !186, size: 64, offset: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3727, file: !3728, line: 28, baseType: !186, size: 64, offset: 192)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3727, file: !3728, line: 41, baseType: !186, size: 64, offset: 256)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3727, file: !3728, line: 42, baseType: !585, size: 32, offset: 320)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3727, file: !3728, line: 43, baseType: !585, size: 32, offset: 352)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3727, file: !3728, line: 44, baseType: !440, size: 32, offset: 384)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3727, file: !3728, line: 45, baseType: !449, size: 32, offset: 416)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3727, file: !3728, line: 46, baseType: !590, size: 64, offset: 448)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3727, file: !3728, line: 47, baseType: !3715, size: 128, offset: 512)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3727, file: !3728, line: 48, baseType: !3715, size: 128, offset: 640)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3727, file: !3728, line: 49, baseType: !3715, size: 128, offset: 768)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3727, file: !3728, line: 50, baseType: !3715, size: 128, offset: 896)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3727, file: !3728, line: 51, baseType: !186, size: 64, offset: 1024)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3727, file: !3728, line: 52, baseType: !186, size: 64, offset: 1088)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3727, file: !3728, line: 53, baseType: !165, size: 32, offset: 1152)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3727, file: !3728, line: 54, baseType: !165, size: 32, offset: 1184)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3727, file: !3728, line: 55, baseType: !186, size: 64, offset: 1216)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !463, file: !14, line: 1990, baseType: !3752, size: 64, offset: 960)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!387, !469, !355, !402}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !463, file: !14, line: 1991, baseType: !3756, size: 64, offset: 1024)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!109, !434, !3759, !186, !186}
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !463, file: !14, line: 1993, baseType: !3762, size: 64, offset: 1088)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!109, !434, !109}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !463, file: !14, line: 1994, baseType: !3766, size: 64, offset: 1152)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!109, !434, !469, !1780, !7, !397}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !463, file: !14, line: 1997, baseType: !3770, size: 64, offset: 1216)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!109, !3604, !434, !1780, !397}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !463, file: !14, line: 1999, baseType: !3774, size: 64, offset: 1280)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!457, !3604, !469, !109}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !463, file: !14, line: 2001, baseType: !3778, size: 64, offset: 1344)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!109, !3604, !469, !457, !109}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !463, file: !14, line: 2003, baseType: !3782, size: 64, offset: 1408)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!109, !3604, !469, !3785}
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !463, file: !14, line: 2005, baseType: !3788, size: 64, offset: 1472)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!109, !469, !3785}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !463, file: !14, line: 2006, baseType: !3792, size: 64, offset: 1536)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!3795, !434}
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3797)
!3797 = !{!3798, !3805}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3796, file: !14, line: 3193, baseType: !3799, size: 128)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3800, line: 296, size: 128, elements: !3801)
!3800 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3801 = !{!3802, !3803, !3804}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3799, file: !3800, line: 297, baseType: !289, size: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3799, file: !3800, line: 299, baseType: !1202, size: 32, offset: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3799, file: !3800, line: 300, baseType: !170, size: 64, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3796, file: !14, line: 3194, baseType: !165, size: 32, offset: 128)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !435, file: !14, line: 655, baseType: !580, size: 64, offset: 448)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !435, file: !14, line: 656, baseType: !430, size: 64, offset: 512)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !435, file: !14, line: 659, baseType: !170, size: 64, offset: 576)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !435, file: !14, line: 663, baseType: !195, size: 64, offset: 640)
!3810 = !DIDerivedType(tag: DW_TAG_member, scope: !435, file: !14, line: 671, baseType: !3811, size: 32, offset: 704)
!3811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !435, file: !14, line: 671, size: 32, elements: !3812)
!3812 = !{!3813, !3815}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3811, file: !14, line: 672, baseType: !3814, size: 32)
!3814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3811, file: !14, line: 673, baseType: !7, size: 32)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !435, file: !14, line: 675, baseType: !585, size: 32, offset: 736)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !435, file: !14, line: 676, baseType: !590, size: 64, offset: 768)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !435, file: !14, line: 677, baseType: !3715, size: 128, offset: 832)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !435, file: !14, line: 678, baseType: !3715, size: 128, offset: 960)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !435, file: !14, line: 679, baseType: !3715, size: 128, offset: 1088)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !435, file: !14, line: 680, baseType: !289, size: 32, offset: 1216)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !435, file: !14, line: 681, baseType: !268, size: 16, offset: 1248)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !435, file: !14, line: 682, baseType: !317, size: 8, offset: 1264)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !435, file: !14, line: 683, baseType: !317, size: 8, offset: 1272)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !435, file: !14, line: 684, baseType: !1338, size: 64, offset: 1280)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !435, file: !14, line: 691, baseType: !195, size: 64, offset: 1344)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !435, file: !14, line: 692, baseType: !1350, size: 320, offset: 1408)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !435, file: !14, line: 694, baseType: !195, size: 64, offset: 1728)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !435, file: !14, line: 695, baseType: !195, size: 64, offset: 1792)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !435, file: !14, line: 697, baseType: !934, size: 128, offset: 1856)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !435, file: !14, line: 698, baseType: !207, size: 128, offset: 1984)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !435, file: !14, line: 707, baseType: !207, size: 128, offset: 2112)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !435, file: !14, line: 708, baseType: !207, size: 128, offset: 2240)
!3834 = !DIDerivedType(tag: DW_TAG_member, scope: !435, file: !14, line: 709, baseType: !3835, size: 128, offset: 2368)
!3835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !435, file: !14, line: 709, size: 128, elements: !3836)
!3836 = !{!3837, !3838}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3835, file: !14, line: 710, baseType: !1058, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3835, file: !14, line: 711, baseType: !910, size: 128, align: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !435, file: !14, line: 713, baseType: !696, size: 64, offset: 2496)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !435, file: !14, line: 714, baseType: !696, size: 64, offset: 2560)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !435, file: !14, line: 715, baseType: !309, size: 32, offset: 2624)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !435, file: !14, line: 716, baseType: !309, size: 32, offset: 2656)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !435, file: !14, line: 717, baseType: !309, size: 32, offset: 2688)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !435, file: !14, line: 719, baseType: !309, size: 32, offset: 2720)
!3845 = !DIDerivedType(tag: DW_TAG_member, scope: !435, file: !14, line: 721, baseType: !3846, size: 64, offset: 2752)
!3846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !435, file: !14, line: 721, size: 64, elements: !3847)
!3847 = !{!3848, !3849}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3846, file: !14, line: 722, baseType: !2048, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3846, file: !14, line: 723, baseType: !1081, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !435, file: !14, line: 725, baseType: !3851, size: 64, offset: 2816)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !435, file: !14, line: 726, baseType: !431, size: 1536, align: 64, offset: 2880)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !435, file: !14, line: 727, baseType: !207, size: 128, offset: 4416)
!3855 = !DIDerivedType(tag: DW_TAG_member, scope: !435, file: !14, line: 728, baseType: !3856, size: 64, offset: 4544)
!3856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !435, file: !14, line: 728, size: 64, elements: !3857)
!3857 = !{!3858, !3859, !3862, !3863}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3856, file: !14, line: 729, baseType: !2454, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3856, file: !14, line: 730, baseType: !3860, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3856, file: !14, line: 731, baseType: !355, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3856, file: !14, line: 732, baseType: !7, size: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !435, file: !14, line: 735, baseType: !167, size: 32, offset: 4608)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !435, file: !14, line: 738, baseType: !167, size: 32, offset: 4640)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !435, file: !14, line: 739, baseType: !3541, size: 64, offset: 4672)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !435, file: !14, line: 750, baseType: !170, size: 64, offset: 4736)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !431, file: !14, line: 474, baseType: !3799, size: 128, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !431, file: !14, line: 475, baseType: !1350, size: 320, offset: 192)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !431, file: !14, line: 476, baseType: !1202, size: 32, offset: 512)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !431, file: !14, line: 477, baseType: !309, size: 32, offset: 544)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !431, file: !14, line: 482, baseType: !1636, size: 128, offset: 576)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !431, file: !14, line: 483, baseType: !195, size: 64, offset: 704)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !431, file: !14, line: 484, baseType: !195, size: 64, offset: 768)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !431, file: !14, line: 485, baseType: !3876, size: 64, offset: 832)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3878)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3879)
!3879 = !{!3880, !3884, !3954, !3958, !3962, !3968, !3972, !3976, !3981, !3985, !3989, !3993, !3994, !3998, !4002, !4006, !4011, !4015, !4022, !4023}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3878, file: !14, line: 405, baseType: !3881, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!109, !2241, !1093}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3878, file: !14, line: 406, baseType: !3885, size: 64, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!109, !1780, !3888}
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3890)
!3890 = !{!3891, !3921, !3935}
!3891 = !DIDerivedType(tag: DW_TAG_member, scope: !3889, file: !38, line: 295, baseType: !3892, size: 512)
!3892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3889, file: !38, line: 295, size: 512, elements: !3893)
!3893 = !{!3894, !3920}
!3894 = !DIDerivedType(tag: DW_TAG_member, scope: !3892, file: !38, line: 296, baseType: !3895, size: 448)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3892, file: !38, line: 296, size: 448, elements: !3896)
!3896 = !{!3897, !3898, !3907, !3908, !3909, !3918, !3919}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3895, file: !38, line: 298, baseType: !195, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, scope: !3895, file: !38, line: 299, baseType: !3899, size: 128, offset: 64)
!3899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3895, file: !38, line: 299, size: 128, elements: !3900)
!3900 = !{!3901, !3902}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3899, file: !38, line: 300, baseType: !207, size: 128)
!3902 = !DIDerivedType(tag: DW_TAG_member, scope: !3899, file: !38, line: 302, baseType: !3903, size: 128)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3899, file: !38, line: 302, size: 128, elements: !3904)
!3904 = !{!3905, !3906}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3903, file: !38, line: 303, baseType: !170, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3903, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3895, file: !38, line: 310, baseType: !430, size: 64, offset: 192)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3895, file: !38, line: 311, baseType: !195, size: 64, offset: 256)
!3909 = !DIDerivedType(tag: DW_TAG_member, scope: !3895, file: !38, line: 312, baseType: !3910, size: 64, offset: 320)
!3910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3895, file: !38, line: 312, size: 64, elements: !3911)
!3911 = !{!3912, !3913}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3910, file: !38, line: 313, baseType: !170, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3910, file: !38, line: 314, baseType: !3914, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3915)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3916)
!3916 = !{!3917}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3915, file: !38, line: 256, baseType: !195, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3895, file: !38, line: 316, baseType: !309, size: 32, offset: 384)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3895, file: !38, line: 317, baseType: !309, size: 32, offset: 416)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3892, file: !38, line: 323, baseType: !2242, size: 512, align: 128)
!3921 = !DIDerivedType(tag: DW_TAG_member, scope: !3889, file: !38, line: 325, baseType: !3922, size: 512, offset: 512)
!3922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3889, file: !38, line: 325, size: 512, elements: !3923)
!3923 = !{!3924, !3934}
!3924 = !DIDerivedType(tag: DW_TAG_member, scope: !3922, file: !38, line: 326, baseType: !3925, size: 320)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3922, file: !38, line: 326, size: 320, elements: !3926)
!3926 = !{!3927, !3928, !3929, !3930, !3931, !3932, !3933}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3925, file: !38, line: 327, baseType: !195, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3925, file: !38, line: 328, baseType: !195, size: 64, offset: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3925, file: !38, line: 329, baseType: !195, size: 64, offset: 128)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3925, file: !38, line: 331, baseType: !309, size: 32, offset: 192)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3925, file: !38, line: 332, baseType: !309, size: 32, offset: 224)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3925, file: !38, line: 333, baseType: !309, size: 32, offset: 256)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3925, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3922, file: !38, line: 339, baseType: !2242, size: 512, align: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, scope: !3889, file: !38, line: 341, baseType: !3936, size: 512, offset: 1024)
!3936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3889, file: !38, line: 341, size: 512, elements: !3937)
!3937 = !{!3938, !3947, !3953}
!3938 = !DIDerivedType(tag: DW_TAG_member, scope: !3936, file: !38, line: 342, baseType: !3939, size: 384)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3936, file: !38, line: 342, size: 384, elements: !3940)
!3940 = !{!3941, !3942, !3943, !3944, !3945, !3946}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3939, file: !38, line: 343, baseType: !195, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3939, file: !38, line: 344, baseType: !195, size: 64, offset: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3939, file: !38, line: 346, baseType: !170, size: 64, offset: 128)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3939, file: !38, line: 347, baseType: !170, size: 64, offset: 192)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3939, file: !38, line: 348, baseType: !170, size: 64, offset: 256)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3939, file: !38, line: 349, baseType: !170, size: 64, offset: 320)
!3947 = !DIDerivedType(tag: DW_TAG_member, scope: !3936, file: !38, line: 352, baseType: !3948, size: 256)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3936, file: !38, line: 352, size: 256, elements: !3949)
!3949 = !{!3950, !3951, !3952}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3948, file: !38, line: 353, baseType: !195, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3948, file: !38, line: 354, baseType: !195, size: 64, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3948, file: !38, line: 356, baseType: !207, size: 128, offset: 128)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3936, file: !38, line: 359, baseType: !2242, size: 512, align: 128)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3878, file: !14, line: 409, baseType: !3955, size: 64, offset: 128)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!109, !430, !1093}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3878, file: !14, line: 412, baseType: !3959, size: 64, offset: 192)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!770, !430, !3888}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3878, file: !14, line: 414, baseType: !3963, size: 64, offset: 256)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{null, !3966}
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3878, file: !14, line: 416, baseType: !3969, size: 64, offset: 320)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!109, !1780, !430, !590, !7, !3291, !169}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3878, file: !14, line: 419, baseType: !3973, size: 64, offset: 384)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!109, !1780, !430, !590, !7, !7, !2241, !170}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3878, file: !14, line: 424, baseType: !3977, size: 64, offset: 448)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!3980, !430, !3980}
!3980 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !184, line: 131, baseType: !186)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3878, file: !14, line: 425, baseType: !3982, size: 64, offset: 512)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{null, !3888, !402, !402}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3878, file: !14, line: 426, baseType: !3986, size: 64, offset: 576)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!770, !3888, !1202}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3878, file: !14, line: 427, baseType: !3990, size: 64, offset: 640)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{null, !3888}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3878, file: !14, line: 428, baseType: !2067, size: 64, offset: 704)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3878, file: !14, line: 433, baseType: !3995, size: 64, offset: 768)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!109, !430, !3888, !3888, !74}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3878, file: !14, line: 435, baseType: !3999, size: 64, offset: 832)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!109, !3888}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3878, file: !14, line: 436, baseType: !4003, size: 64, offset: 896)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!770, !3888, !402, !402}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3878, file: !14, line: 438, baseType: !4007, size: 64, offset: 960)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{null, !3888, !4010, !4010}
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3878, file: !14, line: 439, baseType: !4012, size: 64, offset: 1024)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!109, !430, !2241}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3878, file: !14, line: 442, baseType: !4016, size: 64, offset: 1088)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!109, !4019, !1780, !4021}
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3878, file: !14, line: 444, baseType: !2461, size: 64, offset: 1152)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3878, file: !14, line: 445, baseType: !4024, size: 64, offset: 1216)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!109, !2070, !2092}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !431, file: !14, line: 486, baseType: !195, size: 64, offset: 896)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !431, file: !14, line: 487, baseType: !1350, size: 320, offset: 960)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !431, file: !14, line: 488, baseType: !2503, size: 32, offset: 1280)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !431, file: !14, line: 489, baseType: !289, size: 32, offset: 1312)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !431, file: !14, line: 490, baseType: !207, size: 128, offset: 1344)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !431, file: !14, line: 491, baseType: !170, size: 64, offset: 1472)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !421, file: !381, line: 180, baseType: !4034, size: 64, offset: 320)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!387, !1780, !282, !420, !355, !590, !402}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !421, file: !381, line: 182, baseType: !4034, size: 64, offset: 384)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !421, file: !381, line: 184, baseType: !4039, size: 64, offset: 448)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!109, !1780, !282, !420, !2132}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !409, file: !381, line: 90, baseType: !4043, size: 64, offset: 192)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !409, file: !381, line: 91, baseType: !4045, size: 64, offset: 256)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !371, file: !277, line: 120, baseType: !4047, size: 64, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!4050, !338}
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4052)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4053)
!4053 = !{!4054, !4055, !4059, !4063, !4069, !4073}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4052, file: !82, line: 40, baseType: !81, size: 32)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4052, file: !82, line: 41, baseType: !4056, size: 64, offset: 64)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!770}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4052, file: !82, line: 42, baseType: !4060, size: 64, offset: 128)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!170}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4052, file: !82, line: 43, baseType: !4064, size: 64, offset: 192)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!2592, !4067}
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4052, file: !82, line: 44, baseType: !4070, size: 64, offset: 256)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!2592}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4052, file: !82, line: 45, baseType: !733, size: 64, offset: 320)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !371, file: !277, line: 121, baseType: !4075, size: 64, offset: 256)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!2592, !338}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !371, file: !277, line: 122, baseType: !4079, size: 64, offset: 320)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{null, !338, !4082, !4083}
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !276, file: !277, line: 70, baseType: !4085, size: 64, offset: 384)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !605, line: 190, size: 1152, elements: !4087)
!4087 = !{!4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4179, !4180, !4181, !4182, !4183, !4186}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4086, file: !605, line: 191, baseType: !309, size: 32)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4086, file: !605, line: 192, baseType: !309, size: 32, offset: 32)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4086, file: !605, line: 202, baseType: !4085, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4086, file: !605, line: 203, baseType: !191, size: 64, offset: 128)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4086, file: !605, line: 205, baseType: !802, size: 192, align: 64, offset: 192)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4086, file: !605, line: 207, baseType: !2592, size: 64, offset: 384)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4086, file: !605, line: 208, baseType: !7, size: 32, offset: 448)
!4095 = !DIDerivedType(tag: DW_TAG_member, scope: !4086, file: !605, line: 209, baseType: !4096, size: 256, offset: 512)
!4096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4086, file: !605, line: 209, size: 256, elements: !4097)
!4097 = !{!4098, !4107, !4111}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4096, file: !605, line: 210, baseType: !4099, size: 256)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !605, line: 153, size: 256, elements: !4100)
!4100 = !{!4101, !4102, !4103, !4106}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4099, file: !605, line: 154, baseType: !195, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4099, file: !605, line: 156, baseType: !1639, size: 64, offset: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4099, file: !605, line: 162, baseType: !4104, size: 64, offset: 128)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !605, line: 162, flags: DIFlagFwdDecl)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4099, file: !605, line: 167, baseType: !195, size: 64, offset: 192)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4096, file: !605, line: 211, baseType: !4108, size: 64)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !605, line: 170, size: 64, elements: !4109)
!4109 = !{!4110}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4108, file: !605, line: 171, baseType: !4085, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4096, file: !605, line: 212, baseType: !4112, size: 256)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !605, line: 174, size: 256, elements: !4113)
!4113 = !{!4114, !4174, !4177, !4178}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4112, file: !605, line: 175, baseType: !4115, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4117)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !605, line: 271, size: 768, elements: !4118)
!4118 = !{!4119, !4139, !4143, !4147, !4151, !4155, !4159, !4163, !4164, !4165, !4166, !4170}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4117, file: !605, line: 276, baseType: !4120, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!109, !4123}
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !605, line: 251, size: 1216, elements: !4125)
!4125 = !{!4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4124, file: !605, line: 253, baseType: !4085, size: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4124, file: !605, line: 254, baseType: !1780, size: 64, offset: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4124, file: !605, line: 255, baseType: !1130, size: 64, offset: 128)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4124, file: !605, line: 256, baseType: !170, size: 64, offset: 192)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4124, file: !605, line: 259, baseType: !690, size: 256, offset: 256)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4124, file: !605, line: 260, baseType: !690, size: 256, offset: 512)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4124, file: !605, line: 261, baseType: !109, size: 32, offset: 768)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4124, file: !605, line: 262, baseType: !207, size: 128, offset: 832)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4124, file: !605, line: 263, baseType: !355, size: 64, offset: 960)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4124, file: !605, line: 265, baseType: !402, size: 64, offset: 1024)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4124, file: !605, line: 266, baseType: !770, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4124, file: !605, line: 267, baseType: !770, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4124, file: !605, line: 268, baseType: !2177, size: 64, offset: 1152)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4117, file: !605, line: 277, baseType: !4140, size: 64, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{null, !4123}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4117, file: !605, line: 290, baseType: !4144, size: 64, offset: 128)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!109, !1130, !170}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4117, file: !605, line: 292, baseType: !4148, size: 64, offset: 192)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!170, !1130, !2061}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4117, file: !605, line: 293, baseType: !4152, size: 64, offset: 256)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!170, !1130, !170, !2061}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4117, file: !605, line: 294, baseType: !4156, size: 64, offset: 320)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{null, !1130, !170}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4117, file: !605, line: 296, baseType: !4160, size: 64, offset: 384)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!387, !4123, !355, !402, !590}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4117, file: !605, line: 306, baseType: !402, size: 64, offset: 448)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4117, file: !605, line: 313, baseType: !770, size: 8, offset: 512)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4117, file: !605, line: 314, baseType: !4160, size: 64, offset: 576)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4117, file: !605, line: 317, baseType: !4167, size: 64, offset: 640)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!2119, !4123, !2121}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4117, file: !605, line: 320, baseType: !4171, size: 64, offset: 704)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!109, !4123, !2132}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4112, file: !605, line: 176, baseType: !4175, size: 64, offset: 64)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !605, line: 35, flags: DIFlagFwdDecl)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4112, file: !605, line: 177, baseType: !590, size: 64, offset: 128)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4112, file: !605, line: 178, baseType: !4085, size: 64, offset: 192)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4086, file: !605, line: 215, baseType: !170, size: 64, offset: 768)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4086, file: !605, line: 221, baseType: !186, size: 64, offset: 832)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4086, file: !605, line: 223, baseType: !268, size: 16, offset: 896)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4086, file: !605, line: 224, baseType: !397, size: 16, offset: 912)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4086, file: !605, line: 225, baseType: !4184, size: 64, offset: 960)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !605, line: 36, flags: DIFlagFwdDecl)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4086, file: !605, line: 227, baseType: !910, size: 128, align: 64, offset: 1024)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !276, file: !277, line: 71, baseType: !4188, size: 32, offset: 448)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4189, line: 19, size: 32, elements: !4190)
!4189 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4190 = !{!4191}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4188, file: !4189, line: 20, baseType: !1470, size: 32)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !276, file: !277, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !276, file: !277, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !276, file: !277, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !276, file: !277, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !276, file: !277, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !273, file: !94, line: 707, baseType: !272, size: 64, offset: 512)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !273, file: !94, line: 709, baseType: !4199, size: 64, offset: 576)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !273, file: !94, line: 711, baseType: !191, size: 64, offset: 640)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !273, file: !94, line: 712, baseType: !4203, size: 64, offset: 704)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4205)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4206)
!4206 = !{!4207, !4208, !4209, !4215, !4220, !4224}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4205, file: !94, line: 90, baseType: !191, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4205, file: !94, line: 91, baseType: !406, size: 64, offset: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4205, file: !94, line: 92, baseType: !4210, size: 64, offset: 128)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!109, !4213, !350}
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4205, file: !94, line: 93, baseType: !4216, size: 64, offset: 192)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!355, !4213, !4219, !4082, !4083}
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4205, file: !94, line: 95, baseType: !4221, size: 64, offset: 256)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{null, !272}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4205, file: !94, line: 97, baseType: !4225, size: 64, offset: 320)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4227)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4228)
!4228 = !{!4229, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4227, file: !101, line: 287, baseType: !4230, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!109, !272}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4227, file: !101, line: 288, baseType: !4221, size: 64, offset: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4227, file: !101, line: 289, baseType: !4230, size: 64, offset: 128)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4227, file: !101, line: 290, baseType: !4230, size: 64, offset: 192)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4227, file: !101, line: 291, baseType: !4230, size: 64, offset: 256)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4227, file: !101, line: 292, baseType: !4230, size: 64, offset: 320)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4227, file: !101, line: 293, baseType: !4230, size: 64, offset: 384)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4227, file: !101, line: 294, baseType: !4230, size: 64, offset: 448)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4227, file: !101, line: 295, baseType: !4230, size: 64, offset: 512)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4227, file: !101, line: 296, baseType: !4230, size: 64, offset: 576)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4227, file: !101, line: 297, baseType: !4230, size: 64, offset: 640)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4227, file: !101, line: 298, baseType: !4230, size: 64, offset: 704)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4227, file: !101, line: 299, baseType: !4230, size: 64, offset: 768)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4227, file: !101, line: 300, baseType: !4230, size: 64, offset: 832)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4227, file: !101, line: 301, baseType: !4230, size: 64, offset: 896)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4227, file: !101, line: 302, baseType: !4230, size: 64, offset: 960)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4227, file: !101, line: 303, baseType: !4230, size: 64, offset: 1024)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4227, file: !101, line: 304, baseType: !4230, size: 64, offset: 1088)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4227, file: !101, line: 305, baseType: !4230, size: 64, offset: 1152)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4227, file: !101, line: 306, baseType: !4230, size: 64, offset: 1216)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4227, file: !101, line: 307, baseType: !4230, size: 64, offset: 1280)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4227, file: !101, line: 308, baseType: !4230, size: 64, offset: 1344)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4227, file: !101, line: 309, baseType: !4230, size: 64, offset: 1408)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !273, file: !94, line: 714, baseType: !4256, size: 64, offset: 768)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4258)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4259, line: 80, size: 1344, elements: !4260)
!4259 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4260 = !{!4261, !4262, !4263, !4264, !4265, !4266, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4339}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4258, file: !4259, line: 81, baseType: !191, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4258, file: !4259, line: 82, baseType: !191, size: 64, offset: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4258, file: !4259, line: 83, baseType: !406, size: 64, offset: 128)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4258, file: !4259, line: 84, baseType: !406, size: 64, offset: 192)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4258, file: !4259, line: 85, baseType: !406, size: 64, offset: 256)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4258, file: !4259, line: 87, baseType: !4267, size: 64, offset: 320)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!109, !272, !4270}
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4272)
!4272 = !{!4273, !4274, !4275, !4276, !4277, !4278, !4279, !4292, !4302, !4303, !4304, !4305, !4306, !4314, !4315, !4316, !4317, !4318, !4319}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4271, file: !88, line: 97, baseType: !191, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4271, file: !88, line: 98, baseType: !4256, size: 64, offset: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4271, file: !88, line: 100, baseType: !619, size: 64, offset: 128)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4271, file: !88, line: 101, baseType: !191, size: 64, offset: 192)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4271, file: !88, line: 103, baseType: !770, size: 8, offset: 256)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4271, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4271, file: !88, line: 106, baseType: !4280, size: 64, offset: 320)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4282)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4283, line: 282, size: 1600, elements: !4284)
!4283 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4284 = !{!4285, !4286, !4287, !4291}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4282, file: !4283, line: 283, baseType: !3544, size: 256)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4282, file: !4283, line: 284, baseType: !3544, size: 256, offset: 256)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4282, file: !4283, line: 285, baseType: !4288, size: 1024, offset: 512)
!4288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 1024, elements: !4289)
!4289 = !{!4290}
!4290 = !DISubrange(count: 128)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4282, file: !4283, line: 286, baseType: !2592, size: 64, offset: 1536)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4271, file: !88, line: 107, baseType: !4293, size: 64, offset: 384)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4295)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4283, line: 217, size: 256, elements: !4296)
!4296 = !{!4297, !4298, !4300, !4301}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4295, file: !4283, line: 218, baseType: !3551, size: 128)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4295, file: !4283, line: 219, baseType: !4299, size: 64, offset: 128)
!4299 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4283, line: 15, baseType: !195)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4295, file: !4283, line: 220, baseType: !167, size: 32, offset: 192)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4295, file: !4283, line: 221, baseType: !167, size: 32, offset: 224)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4271, file: !88, line: 109, baseType: !4230, size: 64, offset: 448)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4271, file: !88, line: 110, baseType: !4221, size: 64, offset: 512)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4271, file: !88, line: 111, baseType: !4230, size: 64, offset: 576)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4271, file: !88, line: 112, baseType: !4221, size: 64, offset: 640)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4271, file: !88, line: 113, baseType: !4307, size: 64, offset: 704)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!109, !272, !4310}
!4310 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4311)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4312)
!4312 = !{!4313}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4311, file: !101, line: 59, baseType: !109, size: 32)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4271, file: !88, line: 114, baseType: !4230, size: 64, offset: 768)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4271, file: !88, line: 115, baseType: !406, size: 64, offset: 832)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4271, file: !88, line: 116, baseType: !406, size: 64, offset: 896)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4271, file: !88, line: 118, baseType: !4225, size: 64, offset: 960)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4271, file: !88, line: 119, baseType: !4221, size: 64, offset: 1024)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4271, file: !88, line: 121, baseType: !4320, size: 64, offset: 1088)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4258, file: !4259, line: 88, baseType: !4210, size: 64, offset: 384)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4258, file: !4259, line: 89, baseType: !4230, size: 64, offset: 448)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4258, file: !4259, line: 90, baseType: !4221, size: 64, offset: 512)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4258, file: !4259, line: 91, baseType: !4221, size: 64, offset: 576)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4258, file: !4259, line: 92, baseType: !4221, size: 64, offset: 640)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4258, file: !4259, line: 94, baseType: !4230, size: 64, offset: 704)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4258, file: !4259, line: 95, baseType: !4230, size: 64, offset: 768)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4258, file: !4259, line: 97, baseType: !4307, size: 64, offset: 832)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4258, file: !4259, line: 98, baseType: !4230, size: 64, offset: 896)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4258, file: !4259, line: 100, baseType: !4230, size: 64, offset: 960)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4258, file: !4259, line: 102, baseType: !4230, size: 64, offset: 1024)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4258, file: !4259, line: 103, baseType: !4221, size: 64, offset: 1088)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4258, file: !4259, line: 105, baseType: !4225, size: 64, offset: 1152)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4258, file: !4259, line: 107, baseType: !4336, size: 64, offset: 1216)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4338)
!4338 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4259, line: 107, flags: DIFlagFwdDecl)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4258, file: !4259, line: 109, baseType: !770, size: 8, offset: 1280)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !273, file: !94, line: 715, baseType: !4270, size: 64, offset: 832)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !273, file: !94, line: 717, baseType: !170, size: 64, offset: 896)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !273, file: !94, line: 719, baseType: !170, size: 64, offset: 960)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !273, file: !94, line: 721, baseType: !690, size: 256, offset: 1024)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !273, file: !94, line: 725, baseType: !4345, size: 448, offset: 1280)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4346)
!4346 = !{!4347, !4348, !4349, !4350}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4345, file: !94, line: 518, baseType: !207, size: 128)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4345, file: !94, line: 519, baseType: !207, size: 128, offset: 128)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4345, file: !94, line: 520, baseType: !207, size: 128, offset: 256)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4345, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !273, file: !94, line: 726, baseType: !4352, size: 2496, offset: 1728)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4353)
!4353 = !{!4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4436, !4440}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4352, file: !101, line: 664, baseType: !4310, size: 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4352, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4352, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4352, file: !101, line: 667, baseType: !770, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4352, file: !101, line: 668, baseType: !770, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4352, file: !101, line: 669, baseType: !770, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4352, file: !101, line: 670, baseType: !770, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4352, file: !101, line: 671, baseType: !770, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4352, file: !101, line: 672, baseType: !770, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4352, file: !101, line: 673, baseType: !770, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4352, file: !101, line: 674, baseType: !770, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4352, file: !101, line: 675, baseType: !165, size: 32, offset: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4352, file: !101, line: 676, baseType: !289, size: 32, offset: 96)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4352, file: !101, line: 678, baseType: !207, size: 128, offset: 128)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4352, file: !101, line: 679, baseType: !639, size: 256, offset: 256)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4352, file: !101, line: 680, baseType: !4370, size: 64, offset: 512)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4372, line: 43, size: 1536, elements: !4373)
!4372 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4373 = !{!4374, !4375, !4376, !4377, !4378, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4371, file: !4372, line: 44, baseType: !191, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4371, file: !4372, line: 45, baseType: !109, size: 32, offset: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4371, file: !4372, line: 46, baseType: !207, size: 128, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4371, file: !4372, line: 47, baseType: !289, size: 32, offset: 256)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4371, file: !4372, line: 48, baseType: !4379, size: 64, offset: 320)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4371, file: !4372, line: 49, baseType: !930, size: 320, offset: 384)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4371, file: !4372, line: 50, baseType: !195, size: 64, offset: 704)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4371, file: !4372, line: 51, baseType: !1585, size: 64, offset: 768)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4371, file: !4372, line: 52, baseType: !1585, size: 64, offset: 832)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4371, file: !4372, line: 53, baseType: !1585, size: 64, offset: 896)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4371, file: !4372, line: 54, baseType: !1585, size: 64, offset: 960)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4371, file: !4372, line: 55, baseType: !1585, size: 64, offset: 1024)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4371, file: !4372, line: 56, baseType: !195, size: 64, offset: 1088)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4371, file: !4372, line: 57, baseType: !195, size: 64, offset: 1152)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4371, file: !4372, line: 58, baseType: !195, size: 64, offset: 1216)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4371, file: !4372, line: 59, baseType: !195, size: 64, offset: 1280)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4371, file: !4372, line: 60, baseType: !195, size: 64, offset: 1344)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4371, file: !4372, line: 61, baseType: !272, size: 64, offset: 1408)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4371, file: !4372, line: 62, baseType: !770, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4371, file: !4372, line: 63, baseType: !770, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4352, file: !101, line: 681, baseType: !770, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4352, file: !101, line: 682, baseType: !770, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4352, file: !101, line: 683, baseType: !770, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4352, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4352, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4352, file: !101, line: 690, baseType: !1577, size: 512, offset: 640)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4352, file: !101, line: 691, baseType: !186, size: 64, offset: 1152)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4352, file: !101, line: 692, baseType: !948, size: 256, offset: 1216)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4352, file: !101, line: 693, baseType: !1443, size: 192, offset: 1472)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4352, file: !101, line: 694, baseType: !4379, size: 64, offset: 1664)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4352, file: !101, line: 695, baseType: !309, size: 32, offset: 1728)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4352, file: !101, line: 696, baseType: !309, size: 32, offset: 1760)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4352, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4352, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4352, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4352, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4352, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4352, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4352, file: !101, line: 703, baseType: !770, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4352, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4352, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4352, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4352, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4352, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4352, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4352, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4352, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4352, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4352, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4352, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4352, file: !101, line: 715, baseType: !186, size: 64, offset: 2048)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4352, file: !101, line: 716, baseType: !186, size: 64, offset: 2112)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4352, file: !101, line: 717, baseType: !186, size: 64, offset: 2176)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4352, file: !101, line: 718, baseType: !186, size: 64, offset: 2240)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4352, file: !101, line: 720, baseType: !4431, size: 64, offset: 2304)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4433)
!4433 = !{!4434, !4435}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4432, file: !101, line: 633, baseType: !289, size: 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4432, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4352, file: !101, line: 721, baseType: !4437, size: 64, offset: 2368)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{null, !272, !686}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4352, file: !101, line: 722, baseType: !4441, size: 64, offset: 2432)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !273, file: !94, line: 727, baseType: !4444, size: 64, offset: 4224)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4446)
!4446 = !{!4447, !4448, !4449, !4453, !4454, !4455}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4445, file: !101, line: 743, baseType: !4227, size: 1472)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4445, file: !101, line: 744, baseType: !4230, size: 64, offset: 1472)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4445, file: !101, line: 745, baseType: !4450, size: 64, offset: 1536)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{null, !272, !770}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4445, file: !101, line: 746, baseType: !4230, size: 64, offset: 1600)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4445, file: !101, line: 747, baseType: !4221, size: 64, offset: 1664)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4445, file: !101, line: 748, baseType: !4221, size: 64, offset: 1728)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !273, file: !94, line: 736, baseType: !4457, size: 128, offset: 4288)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4458)
!4458 = !{!4459, !4463}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4457, file: !94, line: 531, baseType: !4460, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4462, line: 13, flags: DIFlagFwdDecl)
!4462 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4457, file: !94, line: 532, baseType: !4464, size: 64, offset: 64)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !273, file: !94, line: 738, baseType: !4467, size: 64, offset: 4416)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4469)
!4469 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !273, file: !94, line: 740, baseType: !4471, size: 64, offset: 4480)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !273, file: !94, line: 741, baseType: !186, size: 64, offset: 4544)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !273, file: !94, line: 746, baseType: !186, size: 64, offset: 4608)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !273, file: !94, line: 747, baseType: !4475, size: 64, offset: 4672)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4477)
!4477 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !273, file: !94, line: 749, baseType: !4479, size: 64, offset: 4736)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4481)
!4481 = !{!4482, !4483, !4484}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4480, file: !94, line: 433, baseType: !7, size: 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4480, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4480, file: !94, line: 435, baseType: !195, size: 64, offset: 64)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !273, file: !94, line: 751, baseType: !207, size: 128, offset: 4800)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !273, file: !94, line: 762, baseType: !4487, size: 64, offset: 4928)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !273, file: !94, line: 770, baseType: !4490, offset: 4992)
!4490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4491, line: 5, elements: !977)
!4491 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !273, file: !94, line: 772, baseType: !4493, size: 64, offset: 4992)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4495, line: 18, flags: DIFlagFwdDecl)
!4495 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !273, file: !94, line: 773, baseType: !4497, size: 64, offset: 5056)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4499, line: 41, size: 512, elements: !4500)
!4499 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4500 = !{!4501, !4502, !4595, !4596, !4597, !4598}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4498, file: !4499, line: 42, baseType: !4497, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4498, file: !4499, line: 43, baseType: !4503, size: 64, offset: 64)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4505)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4499, line: 125, size: 1408, elements: !4506)
!4506 = !{!4507, !4511, !4515, !4521, !4525, !4526, !4530, !4534, !4538, !4542, !4546, !4547, !4551, !4555, !4559, !4570, !4571, !4572, !4573, !4583, !4587, !4591}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4505, file: !4499, line: 126, baseType: !4508, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!4497, !4497}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4505, file: !4499, line: 127, baseType: !4512, size: 64, offset: 64)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{null, !4497}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4505, file: !4499, line: 128, baseType: !4516, size: 64, offset: 128)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!770, !4519}
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4498)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4505, file: !4499, line: 129, baseType: !4522, size: 64, offset: 192)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!2592, !4519, !4213}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4505, file: !4499, line: 131, baseType: !4516, size: 64, offset: 256)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4505, file: !4499, line: 133, baseType: !4527, size: 64, offset: 320)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!141, !4519}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4505, file: !4499, line: 134, baseType: !4531, size: 64, offset: 384)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!770, !4519, !191}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4505, file: !4499, line: 136, baseType: !4535, size: 64, offset: 448)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!109, !4519, !191, !7, !170, !402}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4505, file: !4499, line: 141, baseType: !4539, size: 64, offset: 512)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!109, !4519, !191, !1025, !402}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4505, file: !4499, line: 144, baseType: !4543, size: 64, offset: 576)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!191, !4519}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4505, file: !4499, line: 145, baseType: !4543, size: 64, offset: 640)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4505, file: !4499, line: 146, baseType: !4548, size: 64, offset: 704)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!4497, !4519}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4505, file: !4499, line: 148, baseType: !4552, size: 64, offset: 768)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!4497, !4519, !4497}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4505, file: !4499, line: 151, baseType: !4556, size: 64, offset: 832)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!4497, !4519, !191}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4505, file: !4499, line: 153, baseType: !4560, size: 64, offset: 896)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!109, !4519, !191, !191, !7, !7, !4563}
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4499, line: 94, size: 640, elements: !4565)
!4565 = !{!4566, !4567, !4568}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4564, file: !4499, line: 95, baseType: !4497, size: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4564, file: !4499, line: 96, baseType: !7, size: 32, offset: 64)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4564, file: !4499, line: 97, baseType: !4569, size: 512, offset: 128)
!4569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 512, elements: !1620)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4505, file: !4499, line: 158, baseType: !4552, size: 64, offset: 960)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4505, file: !4499, line: 161, baseType: !4548, size: 64, offset: 1024)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4505, file: !4499, line: 163, baseType: !4508, size: 64, offset: 1088)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4505, file: !4499, line: 164, baseType: !4574, size: 64, offset: 1152)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!109, !4519, !4577}
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4499, line: 73, size: 128, elements: !4579)
!4579 = !{!4580, !4581, !4582}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4578, file: !4499, line: 74, baseType: !7, size: 32)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4578, file: !4499, line: 75, baseType: !7, size: 32, offset: 32)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4578, file: !4499, line: 76, baseType: !4519, size: 64, offset: 64)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4505, file: !4499, line: 166, baseType: !4584, size: 64, offset: 1216)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!170, !4497, !109}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4505, file: !4499, line: 167, baseType: !4588, size: 64, offset: 1280)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!109, !4519, !7}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4505, file: !4499, line: 168, baseType: !4592, size: 64, offset: 1344)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!109, !4497}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4498, file: !4499, line: 44, baseType: !272, size: 64, offset: 128)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4498, file: !4499, line: 45, baseType: !207, size: 128, offset: 192)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4498, file: !4499, line: 46, baseType: !207, size: 128, offset: 320)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4498, file: !4499, line: 47, baseType: !317, size: 8, offset: 448)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !273, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !273, file: !94, line: 778, baseType: !585, size: 32, offset: 5152)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !273, file: !94, line: 779, baseType: !165, size: 32, offset: 5184)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !273, file: !94, line: 781, baseType: !289, size: 32, offset: 5216)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !273, file: !94, line: 782, baseType: !207, size: 128, offset: 5248)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !273, file: !94, line: 784, baseType: !4605, size: 64, offset: 5376)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4607)
!4607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4608, line: 52, size: 768, elements: !4609)
!4608 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4609 = !{!4610, !4611, !4612, !4613, !4614, !4618, !4622, !4623, !4624, !4625, !4629, !4633}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4607, file: !4608, line: 53, baseType: !191, size: 64)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4607, file: !4608, line: 55, baseType: !406, size: 64, offset: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4607, file: !4608, line: 56, baseType: !406, size: 64, offset: 128)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4607, file: !4608, line: 58, baseType: !4210, size: 64, offset: 192)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4607, file: !4608, line: 59, baseType: !4615, size: 64, offset: 256)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!355, !4213, !4219}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4607, file: !4608, line: 61, baseType: !4619, size: 64, offset: 320)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{null, !4605}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4607, file: !4608, line: 62, baseType: !4221, size: 64, offset: 384)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4607, file: !4608, line: 64, baseType: !4230, size: 64, offset: 448)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4607, file: !4608, line: 66, baseType: !4050, size: 64, offset: 512)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4607, file: !4608, line: 67, baseType: !4626, size: 64, offset: 576)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!2592, !4213}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4607, file: !4608, line: 69, baseType: !4630, size: 64, offset: 640)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{null, !4213, !4082, !4083}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4607, file: !4608, line: 71, baseType: !4225, size: 64, offset: 704)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !273, file: !94, line: 785, baseType: !406, size: 64, offset: 5440)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !273, file: !94, line: 787, baseType: !4221, size: 64, offset: 5504)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !273, file: !94, line: 788, baseType: !4637, size: 64, offset: 5568)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !273, file: !94, line: 789, baseType: !4640, size: 64, offset: 5632)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !273, file: !94, line: 791, baseType: !4643, size: 64, offset: 5696)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4645)
!4645 = !{!4646, !4647, !4648, !4649, !4650}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4644, file: !94, line: 598, baseType: !116, size: 32)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4644, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4644, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4644, file: !94, line: 601, baseType: !770, size: 8, offset: 96)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4644, file: !94, line: 602, baseType: !770, size: 8, offset: 104)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !273, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !273, file: !94, line: 795, baseType: !770, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !273, file: !94, line: 796, baseType: !770, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !273, file: !94, line: 797, baseType: !770, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !273, file: !94, line: 798, baseType: !770, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !273, file: !94, line: 799, baseType: !770, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !214, file: !204, line: 676, baseType: !273, size: 5824, offset: 2240)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !214, file: !204, line: 677, baseType: !420, size: 64, offset: 8064)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !214, file: !204, line: 678, baseType: !420, size: 64, offset: 8128)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !214, file: !204, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !214, file: !204, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !203, file: !204, line: 325, baseType: !213, size: 64, offset: 192)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !203, file: !204, line: 327, baseType: !170, size: 64, offset: 256)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !203, file: !204, line: 328, baseType: !255, size: 64, offset: 320)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !203, file: !204, line: 329, baseType: !4666, size: 64, offset: 384)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !204, line: 76, size: 832, elements: !4668)
!4668 = !{!4669, !4670, !4671, !4674, !4675}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4667, file: !204, line: 77, baseType: !213, size: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4667, file: !204, line: 78, baseType: !207, size: 128, offset: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4667, file: !204, line: 79, baseType: !4672, size: 64, offset: 192)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !204, line: 79, flags: DIFlagFwdDecl)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4667, file: !204, line: 80, baseType: !259, size: 8, offset: 256)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4667, file: !204, line: 81, baseType: !276, size: 512, offset: 320)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !203, file: !204, line: 331, baseType: !7, size: 32, offset: 448)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !203, file: !204, line: 332, baseType: !268, size: 16, offset: 480)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !203, file: !204, line: 333, baseType: !268, size: 16, offset: 496)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !203, file: !204, line: 334, baseType: !268, size: 16, offset: 512)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !203, file: !204, line: 335, baseType: !268, size: 16, offset: 528)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !203, file: !204, line: 336, baseType: !7, size: 32, offset: 544)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !203, file: !204, line: 337, baseType: !317, size: 8, offset: 576)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !203, file: !204, line: 338, baseType: !317, size: 8, offset: 584)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !203, file: !204, line: 344, baseType: !4685, size: 64, offset: 640)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !204, line: 319, flags: DIFlagFwdDecl)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !203, file: !204, line: 345, baseType: !202, size: 64, offset: 704)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !203, file: !204, line: 347, baseType: !165, size: 32, offset: 768)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !203, file: !204, line: 348, baseType: !317, size: 8, offset: 800)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !203, file: !204, line: 349, baseType: !317, size: 8, offset: 808)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !203, file: !204, line: 350, baseType: !317, size: 8, offset: 816)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !203, file: !204, line: 351, baseType: !317, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !203, file: !204, line: 352, baseType: !317, size: 8, offset: 832)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !203, file: !204, line: 353, baseType: !317, size: 8, offset: 840)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !203, file: !204, line: 354, baseType: !324, size: 16, offset: 848)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !203, file: !204, line: 355, baseType: !1039, size: 64, offset: 896)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !203, file: !204, line: 357, baseType: !4698, size: 64, offset: 960)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !204, line: 918, size: 2368, elements: !4700)
!4700 = !{!4701, !4702, !4703, !4716, !4720, !4724, !4728, !4732, !4733, !4737, !4738, !4742, !4762, !4763, !4764, !4765, !4770}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4699, file: !204, line: 919, baseType: !207, size: 128)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4699, file: !204, line: 920, baseType: !191, size: 64, offset: 128)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4699, file: !204, line: 921, baseType: !4704, size: 64, offset: 192)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4706)
!4706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4283, line: 44, size: 320, elements: !4707)
!4707 = !{!4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4706, file: !4283, line: 45, baseType: !167, size: 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4706, file: !4283, line: 45, baseType: !167, size: 32, offset: 32)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4706, file: !4283, line: 46, baseType: !167, size: 32, offset: 64)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4706, file: !4283, line: 46, baseType: !167, size: 32, offset: 96)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4706, file: !4283, line: 47, baseType: !167, size: 32, offset: 128)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4706, file: !4283, line: 47, baseType: !167, size: 32, offset: 160)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4706, file: !4283, line: 48, baseType: !4299, size: 64, offset: 192)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4706, file: !4283, line: 49, baseType: !167, size: 32, offset: 256)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4699, file: !204, line: 922, baseType: !4717, size: 64, offset: 256)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!109, !202, !4704}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4699, file: !204, line: 923, baseType: !4721, size: 64, offset: 320)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{null, !202}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4699, file: !204, line: 924, baseType: !4725, size: 64, offset: 384)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!109, !202, !4310}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4699, file: !204, line: 925, baseType: !4729, size: 64, offset: 448)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!109, !202}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4699, file: !204, line: 926, baseType: !4721, size: 64, offset: 512)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4699, file: !204, line: 927, baseType: !4734, size: 64, offset: 576)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!109, !202, !109}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4699, file: !204, line: 928, baseType: !4734, size: 64, offset: 640)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4699, file: !204, line: 929, baseType: !4739, size: 64, offset: 704)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!165, !202}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4699, file: !204, line: 930, baseType: !4743, size: 64, offset: 768)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4745)
!4745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !204, line: 837, size: 448, elements: !4746)
!4746 = !{!4747, !4753, !4757, !4758, !4759, !4760, !4761}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4745, file: !204, line: 839, baseType: !4748, size: 64)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!4751, !202, !4752}
!4751 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !204, line: 814, baseType: !7)
!4752 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !204, line: 196, baseType: !7)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4745, file: !204, line: 843, baseType: !4754, size: 64, offset: 64)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!4751, !202}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4745, file: !204, line: 846, baseType: !4754, size: 64, offset: 128)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4745, file: !204, line: 849, baseType: !4721, size: 64, offset: 192)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4745, file: !204, line: 850, baseType: !4721, size: 64, offset: 256)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4745, file: !204, line: 853, baseType: !4721, size: 64, offset: 320)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4745, file: !204, line: 856, baseType: !4721, size: 64, offset: 384)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4699, file: !204, line: 931, baseType: !406, size: 64, offset: 832)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4699, file: !204, line: 932, baseType: !406, size: 64, offset: 896)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4699, file: !204, line: 933, baseType: !4271, size: 1152, offset: 960)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4699, file: !204, line: 934, baseType: !4766, size: 192, offset: 2112)
!4766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !204, line: 801, size: 192, elements: !4767)
!4767 = !{!4768, !4769}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4766, file: !204, line: 802, baseType: !289, size: 32)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4766, file: !204, line: 803, baseType: !207, size: 128, offset: 64)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4699, file: !204, line: 935, baseType: !770, size: 8, offset: 2304)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !203, file: !204, line: 358, baseType: !186, size: 64, offset: 1024)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !203, file: !204, line: 364, baseType: !4480, size: 128, offset: 1088)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !203, file: !204, line: 366, baseType: !4774, size: 32, offset: 1216)
!4774 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !204, line: 171, baseType: !109)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !203, file: !204, line: 369, baseType: !317, size: 8, offset: 1248)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !203, file: !204, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !203, file: !204, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !203, file: !204, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !203, file: !204, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !203, file: !204, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !203, file: !204, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !203, file: !204, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !203, file: !204, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !203, file: !204, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !203, file: !204, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !203, file: !204, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !203, file: !204, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !203, file: !204, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !203, file: !204, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !203, file: !204, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !203, file: !204, line: 390, baseType: !7, size: 32, offset: 1280)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !203, file: !204, line: 391, baseType: !7, size: 32, offset: 1312)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !203, file: !204, line: 394, baseType: !4794, size: 64, offset: 1344)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !204, line: 316, flags: DIFlagFwdDecl)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !203, file: !204, line: 395, baseType: !324, size: 16, offset: 1408)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !203, file: !204, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !203, file: !204, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !203, file: !204, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !203, file: !204, line: 402, baseType: !4752, size: 32, offset: 1440)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !203, file: !204, line: 403, baseType: !273, size: 5824, offset: 1472)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !203, file: !204, line: 405, baseType: !109, size: 32, offset: 7296)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !203, file: !204, line: 411, baseType: !7, size: 32, offset: 7328)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !203, file: !204, line: 412, baseType: !4805, size: 5632, offset: 7360)
!4805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 5632, elements: !4806)
!4806 = !{!4807}
!4807 = !DISubrange(count: 11)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !203, file: !204, line: 413, baseType: !179, size: 512, offset: 12992)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !203, file: !204, line: 415, baseType: !770, size: 8, offset: 13504)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !203, file: !204, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !203, file: !204, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !203, file: !204, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !203, file: !204, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !203, file: !204, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !203, file: !204, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !203, file: !204, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !203, file: !204, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !203, file: !204, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !203, file: !204, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !203, file: !204, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !203, file: !204, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !203, file: !204, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !203, file: !204, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !203, file: !204, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !203, file: !204, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !203, file: !204, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !203, file: !204, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !203, file: !204, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !203, file: !204, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !203, file: !204, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !203, file: !204, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !203, file: !204, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !203, file: !204, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !203, file: !204, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !203, file: !204, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !203, file: !204, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !203, file: !204, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !203, file: !204, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !203, file: !204, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !203, file: !204, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !203, file: !204, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !203, file: !204, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !203, file: !204, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !203, file: !204, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !203, file: !204, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !203, file: !204, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !203, file: !204, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !203, file: !204, line: 468, baseType: !4849, size: 16, offset: 13552)
!4849 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !204, line: 222, baseType: !268)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !203, file: !204, line: 469, baseType: !309, size: 32, offset: 13568)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !203, file: !204, line: 471, baseType: !289, size: 32, offset: 13600)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !203, file: !204, line: 472, baseType: !4853, size: 512, offset: 13632)
!4853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 512, elements: !2769)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !203, file: !204, line: 473, baseType: !1058, size: 64, offset: 14144)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !203, file: !204, line: 474, baseType: !4856, size: 704, offset: 14208)
!4856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 704, elements: !4806)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !203, file: !204, line: 475, baseType: !4856, size: 704, offset: 14912)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !203, file: !204, line: 487, baseType: !170, size: 64, offset: 15616)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !203, file: !204, line: 488, baseType: !648, size: 32, offset: 15680)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !203, file: !204, line: 490, baseType: !4861, size: 320, offset: 15744)
!4861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !204, line: 309, size: 320, elements: !4862)
!4862 = !{!4863, !4864, !4865}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4861, file: !204, line: 310, baseType: !690, size: 256)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4861, file: !204, line: 311, baseType: !7, size: 32, offset: 256)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4861, file: !204, line: 312, baseType: !317, size: 8, offset: 288)
!4866 = !DIDerivedType(tag: DW_TAG_member, scope: !203, file: !204, line: 497, baseType: !4867, size: 64, offset: 16064)
!4867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !203, file: !204, line: 497, size: 64, elements: !4868)
!4868 = !{!4869, !4872}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4867, file: !204, line: 498, baseType: !4870, size: 64)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !204, line: 317, flags: DIFlagFwdDecl)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4867, file: !204, line: 499, baseType: !202, size: 64)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !203, file: !204, line: 501, baseType: !324, size: 16, offset: 16128)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !203, file: !204, line: 502, baseType: !317, size: 8, offset: 16144)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !203, file: !204, line: 505, baseType: !324, size: 16, offset: 16160)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !203, file: !204, line: 506, baseType: !165, size: 32, offset: 16192)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !203, file: !204, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !203, file: !204, line: 510, baseType: !324, size: 16, offset: 16240)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !203, file: !204, line: 511, baseType: !324, size: 16, offset: 16256)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !203, file: !204, line: 519, baseType: !324, size: 16, offset: 16272)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !203, file: !204, line: 520, baseType: !185, size: 64, offset: 16320)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !203, file: !204, line: 521, baseType: !402, size: 64, offset: 16384)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !203, file: !204, line: 526, baseType: !191, size: 64, offset: 16448)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !203, file: !204, line: 528, baseType: !195, size: 64, offset: 16512)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !203, file: !204, line: 531, baseType: !4886, size: 56, offset: 16576)
!4886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 56, elements: !811)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !172, file: !3, line: 35, baseType: !207, size: 128, offset: 768)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !210)
!4891 = !{!4892, !4897, !4900, !4902, !4907, !4909, !4914, !4919, !4921, !4926, !4928, !4933, !4935, !4937, !4940, !0, !4945}
!4892 = !DIGlobalVariableExpression(var: !4893, expr: !DIExpression())
!4893 = distinct !DIGlobalVariable(scope: null, file: !3, line: 117, type: !4894, isLocal: true, isDefinition: true)
!4894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 40, elements: !4895)
!4895 = !{!4896}
!4896 = !DISubrange(count: 5)
!4897 = !DIGlobalVariableExpression(var: !4898, expr: !DIExpression())
!4898 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !4899, isLocal: true, isDefinition: true)
!4899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 24, elements: !356)
!4900 = !DIGlobalVariableExpression(var: !4901, expr: !DIExpression())
!4901 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !3544, isLocal: true, isDefinition: true)
!4902 = !DIGlobalVariableExpression(var: !4903, expr: !DIExpression())
!4903 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !4904, isLocal: true, isDefinition: true)
!4904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 440, elements: !4905)
!4905 = !{!4906}
!4906 = !DISubrange(count: 55)
!4907 = !DIGlobalVariableExpression(var: !4908, expr: !DIExpression())
!4908 = distinct !DIGlobalVariable(scope: null, file: !3, line: 152, type: !4894, isLocal: true, isDefinition: true)
!4909 = !DIGlobalVariableExpression(var: !4910, expr: !DIExpression())
!4910 = distinct !DIGlobalVariable(scope: null, file: !3, line: 156, type: !4911, isLocal: true, isDefinition: true)
!4911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 192, elements: !4912)
!4912 = !{!4913}
!4913 = !DISubrange(count: 24)
!4914 = !DIGlobalVariableExpression(var: !4915, expr: !DIExpression())
!4915 = distinct !DIGlobalVariable(scope: null, file: !3, line: 159, type: !4916, isLocal: true, isDefinition: true)
!4916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 216, elements: !4917)
!4917 = !{!4918}
!4918 = !DISubrange(count: 27)
!4919 = !DIGlobalVariableExpression(var: !4920, expr: !DIExpression())
!4920 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !4916, isLocal: true, isDefinition: true)
!4921 = !DIGlobalVariableExpression(var: !4922, expr: !DIExpression())
!4922 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !4923, isLocal: true, isDefinition: true)
!4923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 152, elements: !4924)
!4924 = !{!4925}
!4925 = !DISubrange(count: 19)
!4926 = !DIGlobalVariableExpression(var: !4927, expr: !DIExpression())
!4927 = distinct !DIGlobalVariable(scope: null, file: !3, line: 180, type: !4899, isLocal: true, isDefinition: true)
!4928 = !DIGlobalVariableExpression(var: !4929, expr: !DIExpression())
!4929 = distinct !DIGlobalVariable(scope: null, file: !3, line: 83, type: !4930, isLocal: true, isDefinition: true)
!4930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 72, elements: !4931)
!4931 = !{!4932}
!4932 = !DISubrange(count: 9)
!4933 = !DIGlobalVariableExpression(var: !4934, expr: !DIExpression())
!4934 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !3090, isLocal: true, isDefinition: true)
!4935 = !DIGlobalVariableExpression(var: !4936, expr: !DIExpression())
!4936 = distinct !DIGlobalVariable(scope: null, file: !3, line: 86, type: !4930, isLocal: true, isDefinition: true)
!4937 = !DIGlobalVariableExpression(var: !4938, expr: !DIExpression())
!4938 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !4939, isLocal: true, isDefinition: true)
!4939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 56, elements: !811)
!4940 = !DIGlobalVariableExpression(var: !4941, expr: !DIExpression())
!4941 = distinct !DIGlobalVariable(scope: null, file: !153, line: 480, type: !4942, isLocal: true, isDefinition: true)
!4942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 168, elements: !4943)
!4943 = !{!4944}
!4944 = !DISubrange(count: 21)
!4945 = !DIGlobalVariableExpression(var: !4946, expr: !DIExpression())
!4946 = distinct !DIGlobalVariable(name: "ioapic_list", scope: !2, file: !3, line: 38, type: !207, isLocal: true, isDefinition: true)
!4947 = !{i32 7, !"Dwarf Version", i32 5}
!4948 = !{i32 2, !"Debug Info Version", i32 3}
!4949 = !{i32 1, !"wchar_size", i32 2}
!4950 = !{i32 8, !"cf-protection-branch", i32 1}
!4951 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4952 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4953 = !{i32 1, !"Code Model", i32 2}
!4954 = !{i32 1, !"override-stack-alignment", i32 8}
!4955 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4956 = distinct !DISubprogram(name: "acpi_ioapic_add", scope: !3, file: !3, line: 202, type: !4957, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4959)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!109, !175}
!4959 = !{!4960, !4961, !4962}
!4960 = !DILocalVariable(name: "root_handle", arg: 1, scope: !4956, file: !3, line: 202, type: !175)
!4961 = !DILocalVariable(name: "status", scope: !4956, file: !3, line: 204, type: !163)
!4962 = !DILocalVariable(name: "retval", scope: !4956, file: !3, line: 204, type: !163)
!4963 = !DILocation(line: 202, column: 33, scope: !4956)
!4964 = !DILocation(line: 204, column: 2, scope: !4956)
!4965 = !DILocation(line: 204, column: 14, scope: !4956)
!4966 = !DILocation(line: 204, column: 22, scope: !4956)
!4967 = !DILocation(line: 206, column: 49, scope: !4956)
!4968 = !DILocation(line: 208, column: 10, scope: !4956)
!4969 = !DILocation(line: 206, column: 11, scope: !4956)
!4970 = !DILocation(line: 206, column: 9, scope: !4956)
!4971 = !DILocation(line: 210, column: 9, scope: !4956)
!4972 = !DILocation(line: 210, column: 30, scope: !4956)
!4973 = !DILocation(line: 210, column: 33, scope: !4956)
!4974 = !DILocation(line: 0, scope: !4956)
!4975 = !DILocation(line: 211, column: 1, scope: !4956)
!4976 = !DILocation(line: 210, column: 2, scope: !4956)
!4977 = !DISubprogram(name: "acpi_walk_namespace", scope: !4978, file: !4978, line: 509, type: !4979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4978 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!163, !4981, !175, !165, !4982, !4982, !170, !169}
!4981 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !164, line: 644, baseType: !165)
!4982 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_callback", file: !164, line: 1135, baseType: !4983)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!163, !175, !165, !170, !169}
!4986 = distinct !DISubprogram(name: "handle_ioapic_add", scope: !3, file: !3, line: 97, type: !4984, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4987)
!4987 = !{!4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5003, !5006, !5007, !5008, !5009, !5010}
!4988 = !DILocalVariable(name: "handle", arg: 1, scope: !4986, file: !3, line: 97, type: !175)
!4989 = !DILocalVariable(name: "lvl", arg: 2, scope: !4986, file: !3, line: 97, type: !165)
!4990 = !DILocalVariable(name: "context", arg: 3, scope: !4986, file: !3, line: 98, type: !170)
!4991 = !DILocalVariable(name: "rv", arg: 4, scope: !4986, file: !3, line: 98, type: !169)
!4992 = !DILocalVariable(name: "status", scope: !4986, file: !3, line: 100, type: !163)
!4993 = !DILocalVariable(name: "gsi_base", scope: !4986, file: !3, line: 101, type: !188)
!4994 = !DILocalVariable(name: "ioapic", scope: !4986, file: !3, line: 102, type: !171)
!4995 = !DILocalVariable(name: "dev", scope: !4986, file: !3, line: 103, type: !202)
!4996 = !DILocalVariable(name: "res", scope: !4986, file: !3, line: 104, type: !198)
!4997 = !DILocalVariable(name: "pci_res", scope: !4986, file: !3, line: 104, type: !198)
!4998 = !DILocalVariable(name: "crs_res", scope: !4986, file: !3, line: 104, type: !198)
!4999 = !DILocalVariable(name: "type", scope: !4986, file: !3, line: 105, type: !355)
!5000 = !DILocalVariable(name: "__mptr", scope: !5001, file: !3, line: 111, type: !170)
!5001 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 111, column: 2)
!5002 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 111, column: 2)
!5003 = !DILocalVariable(name: "__mptr", scope: !5004, file: !3, line: 111, type: !170)
!5004 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 111, column: 2)
!5005 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 111, column: 2)
!5006 = !DILabel(scope: !4986, name: "done", file: !3, line: 172)
!5007 = !DILabel(scope: !4986, name: "exit_release", file: !3, line: 185)
!5008 = !DILabel(scope: !4986, name: "exit_disable", file: !3, line: 190)
!5009 = !DILabel(scope: !4986, name: "exit_put", file: !3, line: 193)
!5010 = !DILabel(scope: !4986, name: "exit", file: !3, line: 196)
!5011 = !DILocation(line: 97, column: 50, scope: !4986)
!5012 = !DILocation(line: 97, column: 62, scope: !4986)
!5013 = !DILocation(line: 98, column: 16, scope: !4986)
!5014 = !DILocation(line: 98, column: 32, scope: !4986)
!5015 = !DILocation(line: 100, column: 2, scope: !4986)
!5016 = !DILocation(line: 100, column: 14, scope: !4986)
!5017 = !DILocation(line: 101, column: 2, scope: !4986)
!5018 = !DILocation(line: 101, column: 21, scope: !4986)
!5019 = !DILocation(line: 102, column: 2, scope: !4986)
!5020 = !DILocation(line: 102, column: 26, scope: !4986)
!5021 = !DILocation(line: 103, column: 2, scope: !4986)
!5022 = !DILocation(line: 103, column: 18, scope: !4986)
!5023 = !DILocation(line: 104, column: 2, scope: !4986)
!5024 = !DILocation(line: 104, column: 19, scope: !4986)
!5025 = !DILocation(line: 104, column: 32, scope: !4986)
!5026 = !DILocation(line: 104, column: 49, scope: !4986)
!5027 = !DILocation(line: 105, column: 2, scope: !4986)
!5028 = !DILocation(line: 105, column: 8, scope: !4986)
!5029 = !DILocation(line: 107, column: 22, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 107, column: 6)
!5031 = !DILocation(line: 107, column: 7, scope: !5030)
!5032 = !DILocation(line: 107, column: 6, scope: !4986)
!5033 = !DILocation(line: 108, column: 3, scope: !5030)
!5034 = !DILocation(line: 110, column: 2, scope: !4986)
!5035 = !DILocation(line: 111, column: 2, scope: !5001)
!5036 = !DILocation(line: 111, column: 2, scope: !5002)
!5037 = !DILocation(line: 111, column: 2, scope: !5005)
!5038 = !DILocation(line: 112, column: 7, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 112, column: 7)
!5040 = !DILocation(line: 112, column: 15, scope: !5039)
!5041 = !DILocation(line: 112, column: 25, scope: !5039)
!5042 = !DILocation(line: 112, column: 22, scope: !5039)
!5043 = !DILocation(line: 112, column: 7, scope: !5005)
!5044 = !DILocation(line: 113, column: 4, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5039, file: !3, line: 112, column: 33)
!5046 = !DILocation(line: 114, column: 4, scope: !5045)
!5047 = !DILocation(line: 111, column: 2, scope: !5004)
!5048 = distinct !{!5048, !5036, !5049, !5050, !5051}
!5049 = !DILocation(line: 115, column: 3, scope: !5002)
!5050 = !{!"llvm.loop.mustprogress"}
!5051 = !{!"llvm.loop.unroll.disable"}
!5052 = !DILocation(line: 117, column: 33, scope: !4986)
!5053 = !DILocation(line: 117, column: 11, scope: !4986)
!5054 = !DILocation(line: 117, column: 9, scope: !4986)
!5055 = !DILocation(line: 118, column: 6, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 118, column: 6)
!5057 = !DILocation(line: 118, column: 6, scope: !4986)
!5058 = !DILocation(line: 119, column: 3, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5056, file: !3, line: 118, column: 28)
!5060 = !DILocation(line: 120, column: 3, scope: !5059)
!5061 = !DILocation(line: 123, column: 11, scope: !4986)
!5062 = !DILocation(line: 123, column: 9, scope: !4986)
!5063 = !DILocation(line: 124, column: 7, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 124, column: 6)
!5065 = !DILocation(line: 124, column: 6, scope: !4986)
!5066 = !DILocation(line: 125, column: 3, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 125, column: 3)
!5068 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 124, column: 15)
!5069 = !DILocation(line: 125, column: 3, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 125, column: 3)
!5071 = !DILocation(line: 126, column: 3, scope: !5068)
!5072 = !DILocation(line: 128, column: 38, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 127, column: 9)
!5074 = !DILocation(line: 128, column: 3, scope: !5073)
!5075 = !DILocation(line: 128, column: 11, scope: !5073)
!5076 = !DILocation(line: 128, column: 23, scope: !5073)
!5077 = !DILocation(line: 129, column: 20, scope: !5073)
!5078 = !DILocation(line: 129, column: 3, scope: !5073)
!5079 = !DILocation(line: 129, column: 11, scope: !5073)
!5080 = !DILocation(line: 129, column: 18, scope: !5073)
!5081 = !DILocation(line: 130, column: 27, scope: !5073)
!5082 = !DILocation(line: 130, column: 22, scope: !5073)
!5083 = !DILocation(line: 130, column: 3, scope: !5073)
!5084 = !DILocation(line: 130, column: 11, scope: !5073)
!5085 = !DILocation(line: 130, column: 20, scope: !5073)
!5086 = !DILocation(line: 131, column: 19, scope: !5073)
!5087 = !DILocation(line: 131, column: 27, scope: !5073)
!5088 = !DILocation(line: 131, column: 3, scope: !5073)
!5089 = !DILocation(line: 134, column: 29, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 134, column: 6)
!5091 = !DILocation(line: 134, column: 42, scope: !5090)
!5092 = !DILocation(line: 134, column: 37, scope: !5090)
!5093 = !DILocation(line: 134, column: 6, scope: !5090)
!5094 = !DILocation(line: 134, column: 6, scope: !4986)
!5095 = !DILocation(line: 135, column: 3, scope: !5090)
!5096 = !DILocation(line: 137, column: 25, scope: !4986)
!5097 = !DILocation(line: 137, column: 8, scope: !4986)
!5098 = !DILocation(line: 137, column: 6, scope: !4986)
!5099 = !DILocation(line: 138, column: 6, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 138, column: 6)
!5101 = !DILocation(line: 138, column: 10, scope: !5100)
!5102 = !DILocation(line: 138, column: 13, scope: !5100)
!5103 = !DILocation(line: 138, column: 6, scope: !4986)
!5104 = !DILocation(line: 139, column: 25, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 139, column: 7)
!5106 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 138, column: 39)
!5107 = !DILocation(line: 139, column: 7, scope: !5105)
!5108 = !DILocation(line: 139, column: 30, scope: !5105)
!5109 = !DILocation(line: 139, column: 7, scope: !5106)
!5110 = !DILocation(line: 140, column: 4, scope: !5105)
!5111 = !DILocation(line: 141, column: 18, scope: !5106)
!5112 = !DILocation(line: 141, column: 3, scope: !5106)
!5113 = !DILocation(line: 142, column: 26, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 142, column: 7)
!5115 = !DILocation(line: 142, column: 34, scope: !5114)
!5116 = !DILocation(line: 142, column: 7, scope: !5114)
!5117 = !DILocation(line: 142, column: 7, scope: !5106)
!5118 = !DILocation(line: 143, column: 4, scope: !5114)
!5119 = !DILocation(line: 144, column: 14, scope: !5106)
!5120 = !DILocation(line: 144, column: 19, scope: !5106)
!5121 = !DILocation(line: 144, column: 11, scope: !5106)
!5122 = !DILocation(line: 145, column: 18, scope: !5106)
!5123 = !DILocation(line: 145, column: 3, scope: !5106)
!5124 = !DILocation(line: 145, column: 11, scope: !5106)
!5125 = !DILocation(line: 145, column: 16, scope: !5106)
!5126 = !DILocation(line: 146, column: 2, scope: !5106)
!5127 = !DILocation(line: 147, column: 15, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 146, column: 9)
!5129 = !DILocation(line: 147, column: 3, scope: !5128)
!5130 = !DILocation(line: 148, column: 7, scope: !5128)
!5131 = !DILocation(line: 151, column: 13, scope: !4986)
!5132 = !DILocation(line: 151, column: 21, scope: !4986)
!5133 = !DILocation(line: 151, column: 10, scope: !4986)
!5134 = !DILocation(line: 152, column: 22, scope: !4986)
!5135 = !DILocation(line: 152, column: 59, scope: !4986)
!5136 = !DILocation(line: 152, column: 2, scope: !4986)
!5137 = !DILocation(line: 153, column: 18, scope: !4986)
!5138 = !DILocation(line: 153, column: 2, scope: !4986)
!5139 = !DILocation(line: 153, column: 11, scope: !4986)
!5140 = !DILocation(line: 153, column: 16, scope: !4986)
!5141 = !DILocation(line: 154, column: 2, scope: !4986)
!5142 = !DILocation(line: 154, column: 11, scope: !4986)
!5143 = !DILocation(line: 154, column: 17, scope: !4986)
!5144 = !DILocation(line: 155, column: 6, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 155, column: 6)
!5146 = !DILocation(line: 155, column: 15, scope: !5145)
!5147 = !DILocation(line: 155, column: 21, scope: !5145)
!5148 = !DILocation(line: 155, column: 6, scope: !4986)
!5149 = !DILocation(line: 156, column: 3, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 155, column: 27)
!5151 = !DILocation(line: 157, column: 3, scope: !5150)
!5152 = !DILocation(line: 158, column: 46, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 158, column: 13)
!5154 = !DILocation(line: 158, column: 13, scope: !5153)
!5155 = !DILocation(line: 158, column: 13, scope: !5145)
!5156 = !DILocation(line: 159, column: 3, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 158, column: 56)
!5158 = !DILocation(line: 160, column: 3, scope: !5157)
!5159 = !DILocation(line: 164, column: 8, scope: !4986)
!5160 = !DILocation(line: 164, column: 6, scope: !4986)
!5161 = !DILocation(line: 165, column: 7, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 165, column: 6)
!5163 = !DILocation(line: 165, column: 11, scope: !5162)
!5164 = !DILocation(line: 165, column: 15, scope: !5162)
!5165 = !DILocation(line: 165, column: 20, scope: !5162)
!5166 = !DILocation(line: 165, column: 6, scope: !4986)
!5167 = !DILocation(line: 166, column: 9, scope: !5162)
!5168 = !DILocation(line: 166, column: 7, scope: !5162)
!5169 = !DILocation(line: 166, column: 3, scope: !5162)
!5170 = !DILocation(line: 168, column: 27, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 168, column: 6)
!5172 = !DILocation(line: 168, column: 35, scope: !5171)
!5173 = !DILocation(line: 168, column: 40, scope: !5171)
!5174 = !DILocation(line: 168, column: 52, scope: !5171)
!5175 = !DILocation(line: 168, column: 47, scope: !5171)
!5176 = !DILocation(line: 168, column: 6, scope: !5171)
!5177 = !DILocation(line: 168, column: 6, scope: !4986)
!5178 = !DILocation(line: 169, column: 3, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 168, column: 63)
!5180 = !DILocation(line: 170, column: 3, scope: !5179)
!5181 = !DILocation(line: 168, column: 60, scope: !5171)
!5182 = !DILocation(line: 172, column: 1, scope: !4986)
!5183 = !DILocation(line: 173, column: 12, scope: !4986)
!5184 = !DILocation(line: 173, column: 20, scope: !4986)
!5185 = !DILocation(line: 173, column: 2, scope: !4986)
!5186 = !DILocation(line: 174, column: 2, scope: !4986)
!5187 = !DILocation(line: 176, column: 6, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 176, column: 6)
!5189 = !DILocation(line: 176, column: 6, scope: !4986)
!5190 = !DILocation(line: 177, column: 3, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 177, column: 3)
!5192 = !DILocation(line: 177, column: 3, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 177, column: 3)
!5194 = !DILocation(line: 177, column: 3, scope: !5188)
!5195 = !DILocation(line: 180, column: 3, scope: !5188)
!5196 = !DILocation(line: 183, column: 2, scope: !4986)
!5197 = !DILocation(line: 185, column: 1, scope: !4986)
!5198 = !DILocation(line: 186, column: 6, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 186, column: 6)
!5200 = !DILocation(line: 186, column: 6, scope: !4986)
!5201 = !DILocation(line: 187, column: 22, scope: !5199)
!5202 = !DILocation(line: 187, column: 3, scope: !5199)
!5203 = !DILocation(line: 188, column: 6, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 188, column: 6)
!5205 = !DILocation(line: 188, column: 14, scope: !5204)
!5206 = !DILocation(line: 188, column: 18, scope: !5204)
!5207 = !DILocation(line: 188, column: 24, scope: !5204)
!5208 = !DILocation(line: 188, column: 27, scope: !5204)
!5209 = !DILocation(line: 188, column: 35, scope: !5204)
!5210 = !DILocation(line: 188, column: 39, scope: !5204)
!5211 = !DILocation(line: 188, column: 6, scope: !4986)
!5212 = !DILocation(line: 189, column: 21, scope: !5204)
!5213 = !DILocation(line: 189, column: 29, scope: !5204)
!5214 = !DILocation(line: 189, column: 3, scope: !5204)
!5215 = !DILocation(line: 190, column: 1, scope: !4986)
!5216 = !DILocation(line: 191, column: 6, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 191, column: 6)
!5218 = !DILocation(line: 191, column: 6, scope: !4986)
!5219 = !DILocation(line: 192, column: 22, scope: !5217)
!5220 = !DILocation(line: 192, column: 3, scope: !5217)
!5221 = !DILocation(line: 193, column: 1, scope: !4986)
!5222 = !DILocation(line: 194, column: 14, scope: !4986)
!5223 = !DILocation(line: 194, column: 2, scope: !4986)
!5224 = !DILocation(line: 195, column: 8, scope: !4986)
!5225 = !DILocation(line: 195, column: 2, scope: !4986)
!5226 = !DILocation(line: 196, column: 1, scope: !4986)
!5227 = !DILocation(line: 197, column: 2, scope: !4986)
!5228 = !DILocation(line: 198, column: 18, scope: !4986)
!5229 = !DILocation(line: 198, column: 21, scope: !4986)
!5230 = !DILocation(line: 199, column: 2, scope: !4986)
!5231 = !DILocation(line: 200, column: 1, scope: !4986)
!5232 = distinct !DISubprogram(name: "pci_ioapic_remove", scope: !3, file: !3, line: 213, type: !5233, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5502)
!5233 = !DISubroutineType(types: !5234)
!5234 = !{null, !5235}
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_root", file: !257, line: 611, size: 896, elements: !5237)
!5237 = !{!5238, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5236, file: !257, line: 612, baseType: !5239, size: 64)
!5239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5240, size: 64)
!5240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !257, line: 367, size: 11200, elements: !5241)
!5241 = !{!5242, !5243, !5244, !5245, !5246, !5247, !5248, !5257, !5275, !5350, !5378, !5402, !5423, !5427, !5436, !5468, !5482, !5486, !5487, !5488, !5489, !5490, !5491, !5492}
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !5240, file: !257, line: 368, baseType: !165, size: 32)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !5240, file: !257, line: 369, baseType: !109, size: 32, offset: 32)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !5240, file: !257, line: 370, baseType: !175, size: 64, offset: 64)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5240, file: !257, line: 371, baseType: !4498, size: 512, offset: 128)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !5240, file: !257, line: 372, baseType: !207, size: 128, offset: 640)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !5240, file: !257, line: 373, baseType: !207, size: 128, offset: 768)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5240, file: !257, line: 374, baseType: !5249, size: 32, offset: 896)
!5249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !257, line: 181, size: 32, elements: !5250)
!5250 = !{!5251, !5252, !5253, !5254, !5255, !5256}
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !5249, file: !257, line: 182, baseType: !165, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5249, file: !257, line: 183, baseType: !165, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !5249, file: !257, line: 184, baseType: !165, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !5249, file: !257, line: 185, baseType: !165, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !5249, file: !257, line: 186, baseType: !165, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5249, file: !257, line: 187, baseType: !165, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5240, file: !257, line: 375, baseType: !5258, size: 32, offset: 928)
!5258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !257, line: 192, size: 32, elements: !5259)
!5259 = !{!5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274}
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !5258, file: !257, line: 193, baseType: !165, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !5258, file: !257, line: 194, baseType: !165, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !5258, file: !257, line: 195, baseType: !165, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !5258, file: !257, line: 196, baseType: !165, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !5258, file: !257, line: 197, baseType: !165, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !5258, file: !257, line: 198, baseType: !165, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !5258, file: !257, line: 199, baseType: !165, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !5258, file: !257, line: 200, baseType: !165, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !5258, file: !257, line: 201, baseType: !165, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !5258, file: !257, line: 202, baseType: !165, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !5258, file: !257, line: 203, baseType: !165, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !5258, file: !257, line: 204, baseType: !165, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !5258, file: !257, line: 205, baseType: !165, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !5258, file: !257, line: 206, baseType: !165, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5258, file: !257, line: 207, baseType: !165, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !5240, file: !257, line: 376, baseType: !5276, size: 960, offset: 960)
!5276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !257, line: 238, size: 960, elements: !5277)
!5277 = !{!5278, !5280, !5281, !5289, !5291, !5292, !5293, !5298, !5301}
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !5276, file: !257, line: 239, baseType: !5279, size: 64)
!5279 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !257, line: 220, baseType: !3090)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !5276, file: !257, line: 240, baseType: !109, size: 32, offset: 64)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5276, file: !257, line: 241, baseType: !5282, size: 32, offset: 96)
!5282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !257, line: 230, size: 32, elements: !5283)
!5283 = !{!5284, !5285, !5286, !5287, !5288}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !5282, file: !257, line: 231, baseType: !165, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !5282, file: !257, line: 232, baseType: !165, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !5282, file: !257, line: 233, baseType: !165, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !5282, file: !257, line: 234, baseType: !165, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5282, file: !257, line: 235, baseType: !165, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !5276, file: !257, line: 242, baseType: !5290, size: 64, offset: 128)
!5290 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !257, line: 221, baseType: !186)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !5276, file: !257, line: 243, baseType: !355, size: 64, offset: 192)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !5276, file: !257, line: 244, baseType: !207, size: 128, offset: 256)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !5276, file: !257, line: 245, baseType: !5294, size: 320, offset: 384)
!5294 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !257, line: 222, baseType: !5295)
!5295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 320, elements: !5296)
!5296 = !{!5297}
!5297 = !DISubrange(count: 40)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !5276, file: !257, line: 246, baseType: !5299, size: 160, offset: 704)
!5299 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !257, line: 223, baseType: !5300)
!5300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 160, elements: !3390)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !5276, file: !257, line: 247, baseType: !5302, size: 64, offset: 896)
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !164, line: 908, size: 192, elements: !5304)
!5304 = !{!5305, !5306, !5311, !5317, !5324, !5330, !5336, !5344}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5303, file: !164, line: 909, baseType: !4981, size: 32)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !5303, file: !164, line: 913, baseType: !5307, size: 128)
!5307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5303, file: !164, line: 910, size: 128, elements: !5308)
!5308 = !{!5309, !5310}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5307, file: !164, line: 911, baseType: !4981, size: 32)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5307, file: !164, line: 912, baseType: !186, size: 64, offset: 64)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5303, file: !164, line: 919, baseType: !5312, size: 128)
!5312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5303, file: !164, line: 915, size: 128, elements: !5313)
!5313 = !{!5314, !5315, !5316}
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5312, file: !164, line: 916, baseType: !4981, size: 32)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5312, file: !164, line: 917, baseType: !165, size: 32, offset: 32)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5312, file: !164, line: 918, baseType: !355, size: 64, offset: 64)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5303, file: !164, line: 925, baseType: !5318, size: 128)
!5318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5303, file: !164, line: 921, size: 128, elements: !5319)
!5319 = !{!5320, !5321, !5322}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5318, file: !164, line: 922, baseType: !4981, size: 32)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5318, file: !164, line: 923, baseType: !165, size: 32, offset: 32)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5318, file: !164, line: 924, baseType: !5323, size: 64, offset: 64)
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !5303, file: !164, line: 931, baseType: !5325, size: 128)
!5325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5303, file: !164, line: 927, size: 128, elements: !5326)
!5326 = !{!5327, !5328, !5329}
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5325, file: !164, line: 928, baseType: !4981, size: 32)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5325, file: !164, line: 929, baseType: !165, size: 32, offset: 32)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !5325, file: !164, line: 930, baseType: !5302, size: 64, offset: 64)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !5303, file: !164, line: 937, baseType: !5331, size: 128)
!5331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5303, file: !164, line: 933, size: 128, elements: !5332)
!5332 = !{!5333, !5334, !5335}
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5331, file: !164, line: 934, baseType: !4981, size: 32)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !5331, file: !164, line: 935, baseType: !4981, size: 32, offset: 32)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !5331, file: !164, line: 936, baseType: !175, size: 64, offset: 64)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !5303, file: !164, line: 944, baseType: !5337, size: 192)
!5337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5303, file: !164, line: 939, size: 192, elements: !5338)
!5338 = !{!5339, !5340, !5341, !5343}
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5337, file: !164, line: 940, baseType: !4981, size: 32)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !5337, file: !164, line: 941, baseType: !165, size: 32, offset: 32)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !5337, file: !164, line: 942, baseType: !5342, size: 64, offset: 64)
!5342 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !164, line: 128, baseType: !186)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !5337, file: !164, line: 943, baseType: !165, size: 32, offset: 128)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !5303, file: !164, line: 950, baseType: !5345, size: 96)
!5345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5303, file: !164, line: 946, size: 96, elements: !5346)
!5346 = !{!5347, !5348, !5349}
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5345, file: !164, line: 947, baseType: !4981, size: 32)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !5345, file: !164, line: 948, baseType: !165, size: 32, offset: 32)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !5345, file: !164, line: 949, baseType: !165, size: 32, offset: 64)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5240, file: !257, line: 377, baseType: !5351, size: 1408, offset: 1920)
!5351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !257, line: 280, size: 1408, elements: !5352)
!5352 = !{!5353, !5354, !5364, !5377}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5351, file: !257, line: 281, baseType: !109, size: 32)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5351, file: !257, line: 282, baseType: !5355, size: 32, offset: 32)
!5355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !257, line: 259, size: 32, elements: !5356)
!5356 = !{!5357, !5358, !5359, !5360, !5361, !5362, !5363}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !5355, file: !257, line: 260, baseType: !165, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !5355, file: !257, line: 261, baseType: !165, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !5355, file: !257, line: 262, baseType: !165, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !5355, file: !257, line: 263, baseType: !165, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !5355, file: !257, line: 264, baseType: !165, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !5355, file: !257, line: 265, baseType: !165, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5355, file: !257, line: 266, baseType: !165, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !5351, file: !257, line: 283, baseType: !5365, size: 1280, offset: 64)
!5365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5366, size: 1280, elements: !4895)
!5366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !257, line: 269, size: 256, elements: !5367)
!5367 = !{!5368, !5374, !5375, !5376}
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5366, file: !257, line: 274, baseType: !5369, size: 8)
!5369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5366, file: !257, line: 270, size: 8, elements: !5370)
!5370 = !{!5371, !5372, !5373}
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5369, file: !257, line: 271, baseType: !317, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !5369, file: !257, line: 272, baseType: !317, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5369, file: !257, line: 273, baseType: !317, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5366, file: !257, line: 275, baseType: !109, size: 32, offset: 32)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !5366, file: !257, line: 276, baseType: !109, size: 32, offset: 64)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5366, file: !257, line: 277, baseType: !207, size: 128, offset: 128)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !5351, file: !257, line: 284, baseType: !317, size: 8, offset: 1344)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5240, file: !257, line: 378, baseType: !5379, size: 640, offset: 3328)
!5379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !257, line: 330, size: 640, elements: !5380)
!5380 = !{!5381, !5382, !5383, !5384, !5385, !5390, !5399, !5400, !5401}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !5379, file: !257, line: 331, baseType: !175, size: 64)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !5379, file: !257, line: 332, baseType: !186, size: 64, offset: 64)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !5379, file: !257, line: 333, baseType: !186, size: 64, offset: 128)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5379, file: !257, line: 334, baseType: !207, size: 128, offset: 192)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5379, file: !257, line: 335, baseType: !5386, size: 8, offset: 320)
!5386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !257, line: 320, size: 8, elements: !5387)
!5387 = !{!5388, !5389}
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5386, file: !257, line: 321, baseType: !317, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !5386, file: !257, line: 322, baseType: !317, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5379, file: !257, line: 336, baseType: !5391, size: 128, offset: 384)
!5391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !257, line: 325, size: 128, elements: !5392)
!5392 = !{!5393, !5398}
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5391, file: !257, line: 326, baseType: !5394, size: 64)
!5394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5395, size: 64)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{null, !5397}
!5397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5391, size: 64)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5391, file: !257, line: 327, baseType: !272, size: 64, offset: 64)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !5379, file: !257, line: 337, baseType: !4370, size: 64, offset: 512)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !5379, file: !257, line: 338, baseType: !109, size: 32, offset: 576)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !5379, file: !257, line: 339, baseType: !109, size: 32, offset: 608)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !5240, file: !257, line: 379, baseType: !5403, size: 192, offset: 3968)
!5403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !257, line: 312, size: 192, elements: !5404)
!5404 = !{!5405, !5406, !5410, !5411}
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5403, file: !257, line: 313, baseType: !109, size: 32)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5403, file: !257, line: 314, baseType: !5407, size: 8, offset: 32)
!5407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !257, line: 298, size: 8, elements: !5408)
!5408 = !{!5409}
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5407, file: !257, line: 299, baseType: !317, size: 8, flags: DIFlagBitField, extraData: i64 0)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !5403, file: !257, line: 315, baseType: !109, size: 32, offset: 64)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !5403, file: !257, line: 316, baseType: !5412, size: 64, offset: 128)
!5412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5413, size: 64)
!5413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !257, line: 302, size: 64, elements: !5414)
!5414 = !{!5415, !5420, !5421, !5422}
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5413, file: !257, line: 306, baseType: !5416, size: 8)
!5416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5413, file: !257, line: 303, size: 8, elements: !5417)
!5417 = !{!5418, !5419}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5416, file: !257, line: 304, baseType: !317, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5416, file: !257, line: 305, baseType: !317, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5413, file: !257, line: 307, baseType: !317, size: 8, offset: 8)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !5413, file: !257, line: 308, baseType: !317, size: 8, offset: 16)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !5413, file: !257, line: 309, baseType: !109, size: 32, offset: 32)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5240, file: !257, line: 380, baseType: !5424, size: 64, offset: 4160)
!5424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !257, line: 212, size: 64, elements: !5425)
!5425 = !{!5426}
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5424, file: !257, line: 213, baseType: !255, size: 64)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5240, file: !257, line: 381, baseType: !5428, size: 384, offset: 4224)
!5428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !257, line: 357, size: 384, elements: !5429)
!5429 = !{!5430, !5433, !5434, !5435}
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5428, file: !257, line: 358, baseType: !5431, size: 64)
!5431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5432, size: 64)
!5432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5303)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5428, file: !257, line: 359, baseType: !207, size: 128, offset: 64)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !5428, file: !257, line: 360, baseType: !5431, size: 64, offset: 192)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !5428, file: !257, line: 361, baseType: !207, size: 128, offset: 256)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5240, file: !257, line: 382, baseType: !5437, size: 64, offset: 4608)
!5437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5438, size: 64)
!5438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !257, line: 124, size: 1216, elements: !5439)
!5439 = !{!5440, !5441, !5442, !5447, !5451, !5455, !5456, !5457}
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !5438, file: !257, line: 125, baseType: !4293, size: 64)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !5438, file: !257, line: 126, baseType: !207, size: 128, offset: 64)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5438, file: !257, line: 127, baseType: !5443, size: 64, offset: 192)
!5443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5444, size: 64)
!5444 = !DISubroutineType(types: !5445)
!5445 = !{!770, !191, !5446}
!5446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !5438, file: !257, line: 128, baseType: !5448, size: 64, offset: 256)
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5449, size: 64)
!5449 = !DISubroutineType(types: !5450)
!5450 = !{!109, !5239, !4293}
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5438, file: !257, line: 129, baseType: !5452, size: 64, offset: 320)
!5452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5453, size: 64)
!5453 = !DISubroutineType(types: !5454)
!5454 = !{null, !5239}
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !5438, file: !257, line: 130, baseType: !4221, size: 64, offset: 384)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !5438, file: !257, line: 131, baseType: !4221, size: 64, offset: 448)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !5438, file: !257, line: 132, baseType: !5458, size: 704, offset: 512)
!5458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !257, line: 110, size: 704, elements: !5459)
!5459 = !{!5460, !5461, !5465, !5466, !5467}
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5458, file: !257, line: 111, baseType: !276, size: 512)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !5458, file: !257, line: 112, baseType: !5462, size: 64, offset: 512)
!5462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5463, size: 64)
!5463 = !DISubroutineType(types: !5464)
!5464 = !{!109, !5239}
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !5458, file: !257, line: 113, baseType: !5452, size: 64, offset: 576)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5458, file: !257, line: 114, baseType: !770, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !5458, file: !257, line: 115, baseType: !770, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !5240, file: !257, line: 383, baseType: !5469, size: 64, offset: 4672)
!5469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5470, size: 64)
!5470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !257, line: 140, size: 256, elements: !5471)
!5471 = !{!5472, !5473, !5477, !5481}
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !5470, file: !257, line: 141, baseType: !5239, size: 64)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !5470, file: !257, line: 142, baseType: !5474, size: 64, offset: 64)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = !DISubroutineType(types: !5476)
!5476 = !{!109, !5239, !165}
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5470, file: !257, line: 143, baseType: !5478, size: 64, offset: 128)
!5478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5479, size: 64)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{null, !5239, !165}
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5470, file: !257, line: 144, baseType: !5452, size: 64, offset: 192)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !5240, file: !257, line: 384, baseType: !5483, size: 64, offset: 4736)
!5483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5484, size: 64)
!5484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5485)
!5485 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !257, line: 364, flags: DIFlagFwdDecl)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5240, file: !257, line: 385, baseType: !170, size: 64, offset: 4800)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5240, file: !257, line: 386, baseType: !273, size: 5824, offset: 4864)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !5240, file: !257, line: 387, baseType: !7, size: 32, offset: 10688)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !5240, file: !257, line: 388, baseType: !7, size: 32, offset: 10720)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !5240, file: !257, line: 389, baseType: !207, size: 128, offset: 10752)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !5240, file: !257, line: 390, baseType: !690, size: 256, offset: 10880)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5240, file: !257, line: 391, baseType: !5452, size: 64, offset: 11136)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5236, file: !257, line: 613, baseType: !213, size: 64, offset: 64)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !5236, file: !257, line: 614, baseType: !324, size: 16, offset: 128)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_type", scope: !5236, file: !257, line: 615, baseType: !109, size: 32, offset: 160)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !5236, file: !257, line: 616, baseType: !179, size: 512, offset: 192)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "osc_support_set", scope: !5236, file: !257, line: 618, baseType: !165, size: 32, offset: 704)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "osc_control_set", scope: !5236, file: !257, line: 619, baseType: !165, size: 32, offset: 736)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "osc_ext_support_set", scope: !5236, file: !257, line: 620, baseType: !165, size: 32, offset: 768)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "osc_ext_control_set", scope: !5236, file: !257, line: 621, baseType: !165, size: 32, offset: 800)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "mcfg_addr", scope: !5236, file: !257, line: 622, baseType: !185, size: 64, offset: 832)
!5502 = !{!5503, !5504, !5505, !5506, !5509, !5511}
!5503 = !DILocalVariable(name: "root", arg: 1, scope: !5232, file: !3, line: 213, type: !5235)
!5504 = !DILocalVariable(name: "ioapic", scope: !5232, file: !3, line: 215, type: !171)
!5505 = !DILocalVariable(name: "tmp", scope: !5232, file: !3, line: 215, type: !171)
!5506 = !DILocalVariable(name: "__mptr", scope: !5507, file: !3, line: 218, type: !170)
!5507 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 218, column: 2)
!5508 = distinct !DILexicalBlock(scope: !5232, file: !3, line: 218, column: 2)
!5509 = !DILocalVariable(name: "__mptr", scope: !5510, file: !3, line: 218, type: !170)
!5510 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 218, column: 2)
!5511 = !DILocalVariable(name: "__mptr", scope: !5512, file: !3, line: 218, type: !170)
!5512 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 218, column: 2)
!5513 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 218, column: 2)
!5514 = !DILocation(line: 213, column: 46, scope: !5232)
!5515 = !DILocation(line: 215, column: 2, scope: !5232)
!5516 = !DILocation(line: 215, column: 26, scope: !5232)
!5517 = !DILocation(line: 215, column: 35, scope: !5232)
!5518 = !DILocation(line: 217, column: 2, scope: !5232)
!5519 = !DILocation(line: 218, column: 2, scope: !5507)
!5520 = !DILocation(line: 218, column: 2, scope: !5508)
!5521 = !DILocation(line: 218, column: 2, scope: !5510)
!5522 = !DILocation(line: 218, column: 2, scope: !5513)
!5523 = !DILocation(line: 219, column: 7, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 219, column: 7)
!5525 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 218, column: 60)
!5526 = !DILocation(line: 219, column: 13, scope: !5524)
!5527 = !DILocation(line: 219, column: 21, scope: !5524)
!5528 = !DILocation(line: 219, column: 31, scope: !5524)
!5529 = !DILocation(line: 219, column: 39, scope: !5524)
!5530 = !DILocation(line: 219, column: 28, scope: !5524)
!5531 = !DILocation(line: 219, column: 7, scope: !5525)
!5532 = !DILocation(line: 220, column: 4, scope: !5524)
!5533 = !DILocation(line: 221, column: 7, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 221, column: 7)
!5535 = !DILocation(line: 221, column: 15, scope: !5534)
!5536 = !DILocation(line: 221, column: 7, scope: !5525)
!5537 = !DILocation(line: 222, column: 23, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5534, file: !3, line: 221, column: 21)
!5539 = !DILocation(line: 222, column: 31, scope: !5538)
!5540 = !DILocation(line: 222, column: 4, scope: !5538)
!5541 = !DILocation(line: 223, column: 23, scope: !5538)
!5542 = !DILocation(line: 223, column: 31, scope: !5538)
!5543 = !DILocation(line: 223, column: 4, scope: !5538)
!5544 = !DILocation(line: 224, column: 16, scope: !5538)
!5545 = !DILocation(line: 224, column: 24, scope: !5538)
!5546 = !DILocation(line: 224, column: 4, scope: !5538)
!5547 = !DILocation(line: 225, column: 3, scope: !5538)
!5548 = !DILocation(line: 226, column: 2, scope: !5525)
!5549 = !DILocation(line: 218, column: 2, scope: !5512)
!5550 = distinct !{!5550, !5520, !5551, !5050, !5051}
!5551 = !DILocation(line: 226, column: 2, scope: !5508)
!5552 = !DILocation(line: 227, column: 2, scope: !5232)
!5553 = !DILocation(line: 228, column: 1, scope: !5232)
!5554 = !DISubprogram(name: "mutex_lock", scope: !691, file: !691, line: 227, type: !5555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5555 = !DISubroutineType(types: !5556)
!5556 = !{null, !5557}
!5557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!5558 = !DISubprogram(name: "pci_release_region", scope: !204, file: !204, line: 1448, type: !5559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5559 = !DISubroutineType(types: !5560)
!5560 = !{null, !202, !109}
!5561 = !DISubprogram(name: "pci_disable_device", scope: !204, file: !204, line: 1316, type: !4722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5562 = !DISubprogram(name: "pci_dev_put", scope: !204, file: !204, line: 1148, type: !4722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5563 = !DISubprogram(name: "mutex_unlock", scope: !691, file: !691, line: 246, type: !5555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5564 = distinct !DISubprogram(name: "acpi_ioapic_remove", scope: !3, file: !3, line: 230, type: !5565, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5567)
!5565 = !DISubroutineType(types: !5566)
!5566 = !{!109, !5235}
!5567 = !{!5568, !5569, !5570, !5571, !5572, !5575, !5577}
!5568 = !DILocalVariable(name: "root", arg: 1, scope: !5564, file: !3, line: 230, type: !5235)
!5569 = !DILocalVariable(name: "retval", scope: !5564, file: !3, line: 232, type: !109)
!5570 = !DILocalVariable(name: "ioapic", scope: !5564, file: !3, line: 233, type: !171)
!5571 = !DILocalVariable(name: "tmp", scope: !5564, file: !3, line: 233, type: !171)
!5572 = !DILocalVariable(name: "__mptr", scope: !5573, file: !3, line: 236, type: !170)
!5573 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 236, column: 2)
!5574 = distinct !DILexicalBlock(scope: !5564, file: !3, line: 236, column: 2)
!5575 = !DILocalVariable(name: "__mptr", scope: !5576, file: !3, line: 236, type: !170)
!5576 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 236, column: 2)
!5577 = !DILocalVariable(name: "__mptr", scope: !5578, file: !3, line: 236, type: !170)
!5578 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 236, column: 2)
!5579 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 236, column: 2)
!5580 = !DILocation(line: 230, column: 46, scope: !5564)
!5581 = !DILocation(line: 232, column: 2, scope: !5564)
!5582 = !DILocation(line: 232, column: 6, scope: !5564)
!5583 = !DILocation(line: 233, column: 2, scope: !5564)
!5584 = !DILocation(line: 233, column: 26, scope: !5564)
!5585 = !DILocation(line: 233, column: 35, scope: !5564)
!5586 = !DILocation(line: 235, column: 2, scope: !5564)
!5587 = !DILocation(line: 236, column: 2, scope: !5573)
!5588 = !DILocation(line: 236, column: 2, scope: !5574)
!5589 = !DILocation(line: 236, column: 2, scope: !5576)
!5590 = !DILocation(line: 236, column: 2, scope: !5579)
!5591 = !DILocation(line: 237, column: 7, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 237, column: 7)
!5593 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 236, column: 60)
!5594 = !DILocation(line: 237, column: 13, scope: !5592)
!5595 = !DILocation(line: 237, column: 21, scope: !5592)
!5596 = !DILocation(line: 237, column: 31, scope: !5592)
!5597 = !DILocation(line: 237, column: 39, scope: !5592)
!5598 = !DILocation(line: 237, column: 28, scope: !5592)
!5599 = !DILocation(line: 237, column: 7, scope: !5593)
!5600 = !DILocation(line: 238, column: 4, scope: !5592)
!5601 = !DILocation(line: 239, column: 30, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 239, column: 7)
!5603 = !DILocation(line: 239, column: 38, scope: !5602)
!5604 = !DILocation(line: 239, column: 46, scope: !5602)
!5605 = !DILocation(line: 239, column: 54, scope: !5602)
!5606 = !DILocation(line: 239, column: 7, scope: !5602)
!5607 = !DILocation(line: 239, column: 7, scope: !5593)
!5608 = !DILocation(line: 240, column: 11, scope: !5602)
!5609 = !DILocation(line: 240, column: 4, scope: !5602)
!5610 = !DILocation(line: 241, column: 7, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 241, column: 7)
!5612 = !DILocation(line: 241, column: 15, scope: !5611)
!5613 = !DILocation(line: 241, column: 19, scope: !5611)
!5614 = !DILocation(line: 241, column: 25, scope: !5611)
!5615 = !DILocation(line: 241, column: 28, scope: !5611)
!5616 = !DILocation(line: 241, column: 36, scope: !5611)
!5617 = !DILocation(line: 241, column: 40, scope: !5611)
!5618 = !DILocation(line: 241, column: 7, scope: !5593)
!5619 = !DILocation(line: 242, column: 22, scope: !5611)
!5620 = !DILocation(line: 242, column: 30, scope: !5611)
!5621 = !DILocation(line: 242, column: 4, scope: !5611)
!5622 = !DILocation(line: 243, column: 13, scope: !5593)
!5623 = !DILocation(line: 243, column: 21, scope: !5593)
!5624 = !DILocation(line: 243, column: 3, scope: !5593)
!5625 = !DILocation(line: 244, column: 9, scope: !5593)
!5626 = !DILocation(line: 244, column: 3, scope: !5593)
!5627 = !DILocation(line: 245, column: 2, scope: !5593)
!5628 = !DILocation(line: 236, column: 2, scope: !5578)
!5629 = distinct !{!5629, !5588, !5630, !5050, !5051}
!5630 = !DILocation(line: 245, column: 2, scope: !5574)
!5631 = !DILocation(line: 246, column: 2, scope: !5564)
!5632 = !DILocation(line: 248, column: 9, scope: !5564)
!5633 = !DILocation(line: 249, column: 1, scope: !5564)
!5634 = !DILocation(line: 248, column: 2, scope: !5564)
!5635 = !DISubprogram(name: "acpi_unregister_ioapic", scope: !5636, file: !5636, line: 331, type: !5637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5636 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!5637 = !DISubroutineType(types: !5638)
!5638 = !{!109, !175, !165}
!5639 = !DISubprogram(name: "release_resource", scope: !180, file: !180, line: 197, type: !5640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5640 = !DISubroutineType(types: !5641)
!5641 = !{!109, !198}
!5642 = distinct !DISubprogram(name: "list_del", scope: !5643, file: !5643, line: 227, type: !5644, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5646)
!5643 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5644 = !DISubroutineType(types: !5645)
!5645 = !{null, !210}
!5646 = !{!5647}
!5647 = !DILocalVariable(name: "entry", arg: 1, scope: !5642, file: !5643, line: 227, type: !210)
!5648 = !DILocation(line: 227, column: 47, scope: !5642)
!5649 = !DILocation(line: 229, column: 19, scope: !5642)
!5650 = !DILocation(line: 229, column: 2, scope: !5642)
!5651 = !DILocation(line: 230, column: 2, scope: !5642)
!5652 = !DILocation(line: 230, column: 9, scope: !5642)
!5653 = !DILocation(line: 230, column: 14, scope: !5642)
!5654 = !DILocation(line: 231, column: 2, scope: !5642)
!5655 = !DILocation(line: 231, column: 9, scope: !5642)
!5656 = !DILocation(line: 231, column: 14, scope: !5642)
!5657 = !DILocation(line: 232, column: 1, scope: !5642)
!5658 = !DISubprogram(name: "kfree", scope: !153, file: !153, line: 227, type: !5659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5659 = !DISubroutineType(types: !5660)
!5660 = !{null, !2592}
!5661 = distinct !DISubprogram(name: "acpi_is_ioapic", scope: !3, file: !3, line: 68, type: !5662, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5665)
!5662 = !DISubroutineType(types: !5663)
!5663 = !{!770, !175, !5664}
!5664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!5665 = !{!5666, !5667, !5668, !5669, !5698, !5699}
!5666 = !DILocalVariable(name: "handle", arg: 1, scope: !5661, file: !3, line: 68, type: !175)
!5667 = !DILocalVariable(name: "type", arg: 2, scope: !5661, file: !3, line: 68, type: !5664)
!5668 = !DILocalVariable(name: "status", scope: !5661, file: !3, line: 70, type: !163)
!5669 = !DILocalVariable(name: "info", scope: !5661, file: !3, line: 71, type: !5670)
!5670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5671, size: 64)
!5671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_info", file: !164, line: 1180, size: 768, elements: !5672)
!5672 = !{!5673, !5674, !5675, !5676, !5677, !5678, !5679, !5681, !5683, !5684, !5689, !5690, !5691}
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "info_size", scope: !5671, file: !164, line: 1181, baseType: !165, size: 32)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5671, file: !164, line: 1182, baseType: !165, size: 32, offset: 32)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5671, file: !164, line: 1183, baseType: !4981, size: 32, offset: 64)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !5671, file: !164, line: 1184, baseType: !317, size: 8, offset: 96)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5671, file: !164, line: 1185, baseType: !324, size: 16, offset: 112)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5671, file: !164, line: 1186, baseType: !317, size: 8, offset: 128)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "highest_dstates", scope: !5671, file: !164, line: 1187, baseType: !5680, size: 32, offset: 136)
!5680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 32, elements: !224)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_dstates", scope: !5671, file: !164, line: 1188, baseType: !5682, size: 40, offset: 168)
!5682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 40, elements: !4895)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5671, file: !164, line: 1189, baseType: !186, size: 64, offset: 256)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !5671, file: !164, line: 1190, baseType: !5685, size: 128, offset: 320)
!5685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id", file: !164, line: 1165, size: 128, elements: !5686)
!5686 = !{!5687, !5688}
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5685, file: !164, line: 1166, baseType: !165, size: 32)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5685, file: !164, line: 1167, baseType: !355, size: 64, offset: 64)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !5671, file: !164, line: 1191, baseType: !5685, size: 128, offset: 448)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "class_code", scope: !5671, file: !164, line: 1192, baseType: !5685, size: 128, offset: 576)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "compatible_id_list", scope: !5671, file: !164, line: 1193, baseType: !5692, size: 64, offset: 704)
!5692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id_list", file: !164, line: 1170, size: 64, elements: !5693)
!5693 = !{!5694, !5695, !5696}
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5692, file: !164, line: 1171, baseType: !165, size: 32)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "list_size", scope: !5692, file: !164, line: 1172, baseType: !165, size: 32, offset: 32)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !5692, file: !164, line: 1173, baseType: !5697, offset: 64)
!5697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5685, elements: !1840)
!5698 = !DILocalVariable(name: "hid", scope: !5661, file: !3, line: 72, type: !355)
!5699 = !DILocalVariable(name: "match", scope: !5661, file: !3, line: 73, type: !770)
!5700 = !DILocation(line: 68, column: 40, scope: !5661)
!5701 = !DILocation(line: 68, column: 55, scope: !5661)
!5702 = !DILocation(line: 70, column: 2, scope: !5661)
!5703 = !DILocation(line: 70, column: 14, scope: !5661)
!5704 = !DILocation(line: 71, column: 2, scope: !5661)
!5705 = !DILocation(line: 71, column: 27, scope: !5661)
!5706 = !DILocation(line: 72, column: 2, scope: !5661)
!5707 = !DILocation(line: 72, column: 8, scope: !5661)
!5708 = !DILocation(line: 73, column: 2, scope: !5661)
!5709 = !DILocation(line: 73, column: 7, scope: !5661)
!5710 = !DILocation(line: 75, column: 23, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 75, column: 6)
!5712 = !DILocation(line: 75, column: 7, scope: !5711)
!5713 = !DILocation(line: 75, column: 6, scope: !5661)
!5714 = !DILocation(line: 76, column: 3, scope: !5711)
!5715 = !DILocation(line: 78, column: 32, scope: !5661)
!5716 = !DILocation(line: 78, column: 11, scope: !5661)
!5717 = !DILocation(line: 78, column: 9, scope: !5661)
!5718 = !DILocation(line: 79, column: 6, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 79, column: 6)
!5720 = !DILocation(line: 79, column: 6, scope: !5661)
!5721 = !DILocation(line: 80, column: 7, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5723, file: !3, line: 80, column: 7)
!5723 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 79, column: 28)
!5724 = !DILocation(line: 80, column: 13, scope: !5722)
!5725 = !DILocation(line: 80, column: 19, scope: !5722)
!5726 = !DILocation(line: 80, column: 7, scope: !5723)
!5727 = !DILocation(line: 81, column: 10, scope: !5722)
!5728 = !DILocation(line: 81, column: 16, scope: !5722)
!5729 = !DILocation(line: 81, column: 28, scope: !5722)
!5730 = !DILocation(line: 81, column: 8, scope: !5722)
!5731 = !DILocation(line: 81, column: 4, scope: !5722)
!5732 = !DILocation(line: 82, column: 7, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5723, file: !3, line: 82, column: 7)
!5734 = !DILocation(line: 82, column: 7, scope: !5723)
!5735 = !DILocation(line: 83, column: 15, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5737, file: !3, line: 83, column: 8)
!5737 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 82, column: 12)
!5738 = !DILocation(line: 83, column: 8, scope: !5736)
!5739 = !DILocation(line: 83, column: 32, scope: !5736)
!5740 = !DILocation(line: 83, column: 8, scope: !5737)
!5741 = !DILocation(line: 84, column: 6, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 83, column: 38)
!5743 = !DILocation(line: 84, column: 11, scope: !5742)
!5744 = !DILocation(line: 85, column: 11, scope: !5742)
!5745 = !DILocation(line: 86, column: 4, scope: !5742)
!5746 = !DILocation(line: 86, column: 22, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 86, column: 15)
!5748 = !DILocation(line: 86, column: 15, scope: !5747)
!5749 = !DILocation(line: 86, column: 39, scope: !5747)
!5750 = !DILocation(line: 86, column: 15, scope: !5736)
!5751 = !DILocation(line: 87, column: 6, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !5747, file: !3, line: 86, column: 45)
!5753 = !DILocation(line: 87, column: 11, scope: !5752)
!5754 = !DILocation(line: 88, column: 11, scope: !5752)
!5755 = !DILocation(line: 89, column: 4, scope: !5752)
!5756 = !DILocation(line: 90, column: 3, scope: !5737)
!5757 = !DILocation(line: 91, column: 9, scope: !5723)
!5758 = !DILocation(line: 91, column: 3, scope: !5723)
!5759 = !DILocation(line: 92, column: 2, scope: !5723)
!5760 = !DILocation(line: 94, column: 9, scope: !5661)
!5761 = !{i8 0, i8 2}
!5762 = !DILocation(line: 94, column: 2, scope: !5661)
!5763 = !DILocation(line: 95, column: 1, scope: !5661)
!5764 = !DISubprogram(name: "acpi_evaluate_integer", scope: !257, file: !257, line: 27, type: !5765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5765 = !DISubroutineType(types: !5766)
!5766 = !{!163, !175, !5767, !5768, !5773}
!5767 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !164, line: 423, baseType: !355)
!5768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5769, size: 64)
!5769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !164, line: 956, size: 128, elements: !5770)
!5770 = !{!5771, !5772}
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5769, file: !164, line: 957, baseType: !165, size: 32)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5769, file: !164, line: 958, baseType: !5302, size: 64, offset: 64)
!5773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!5774 = !DISubprogram(name: "acpi_handle_printk", scope: !5636, file: !5636, line: 1180, type: !5775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5775 = !DISubroutineType(types: !5776)
!5776 = !{null, !191, !175, !191, null}
!5777 = distinct !DISubprogram(name: "kzalloc", scope: !153, file: !153, line: 719, type: !5778, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5780)
!5778 = !DISubroutineType(types: !5779)
!5779 = !{!170, !402, !1202}
!5780 = !{!5781, !5782}
!5781 = !DILocalVariable(name: "size", arg: 1, scope: !5777, file: !153, line: 719, type: !402)
!5782 = !DILocalVariable(name: "flags", arg: 2, scope: !5777, file: !153, line: 719, type: !1202)
!5783 = !DILocation(line: 719, column: 52, scope: !5777)
!5784 = !DILocation(line: 719, column: 64, scope: !5777)
!5785 = !DILocation(line: 721, column: 17, scope: !5777)
!5786 = !DILocation(line: 721, column: 23, scope: !5777)
!5787 = !DILocation(line: 721, column: 29, scope: !5777)
!5788 = !DILocation(line: 721, column: 9, scope: !5777)
!5789 = !DILocation(line: 721, column: 2, scope: !5777)
!5790 = !DISubprogram(name: "_printk", scope: !5791, file: !5791, line: 153, type: !5792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5791 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5792 = !DISubroutineType(types: !5793)
!5793 = !{!109, !191, null}
!5794 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5643, file: !5643, line: 35, type: !5644, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5795)
!5795 = !{!5796}
!5796 = !DILocalVariable(name: "list", arg: 1, scope: !5794, file: !5643, line: 35, type: !210)
!5797 = !DILocation(line: 35, column: 53, scope: !5794)
!5798 = !DILocation(line: 37, column: 2, scope: !5794)
!5799 = !DILocation(line: 37, column: 2, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5794, file: !5643, line: 37, column: 2)
!5801 = !DILocation(line: 37, column: 2, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5800, file: !5643, line: 37, column: 2)
!5803 = !DILocation(line: 37, column: 2, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5800, file: !5643, line: 37, column: 2)
!5805 = !DILocation(line: 38, column: 2, scope: !5794)
!5806 = !DILocation(line: 38, column: 2, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5794, file: !5643, line: 38, column: 2)
!5808 = !DILocation(line: 38, column: 2, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5807, file: !5643, line: 38, column: 2)
!5810 = !DILocation(line: 38, column: 2, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5807, file: !5643, line: 38, column: 2)
!5812 = !DILocation(line: 39, column: 1, scope: !5794)
!5813 = !DISubprogram(name: "acpi_ioapic_registered", scope: !5636, file: !5636, line: 332, type: !5637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5814 = !DISubprogram(name: "acpi_get_pci_dev", scope: !5815, file: !5815, line: 62, type: !5816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5815 = !DIFile(filename: "./include/acpi/acpi_drivers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6273b05386994a65b3932c7b24a17050")
!5816 = !DISubroutineType(types: !5817)
!5817 = !{!202, !175}
!5818 = distinct !DISubprogram(name: "resource_size", scope: !180, file: !180, line: 219, type: !5819, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5823)
!5819 = !DISubroutineType(types: !5820)
!5820 = !{!183, !5821}
!5821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5822, size: 64)
!5822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!5823 = !{!5824}
!5824 = !DILocalVariable(name: "res", arg: 1, scope: !5818, file: !180, line: 219, type: !5821)
!5825 = !DILocation(line: 219, column: 68, scope: !5818)
!5826 = !DILocation(line: 221, column: 9, scope: !5818)
!5827 = !DILocation(line: 221, column: 14, scope: !5818)
!5828 = !DILocation(line: 221, column: 20, scope: !5818)
!5829 = !DILocation(line: 221, column: 25, scope: !5818)
!5830 = !DILocation(line: 221, column: 18, scope: !5818)
!5831 = !DILocation(line: 221, column: 31, scope: !5818)
!5832 = !DILocation(line: 221, column: 2, scope: !5818)
!5833 = !DISubprogram(name: "pci_enable_device", scope: !204, file: !204, line: 1290, type: !4730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5834 = !DISubprogram(name: "pci_set_master", scope: !204, file: !204, line: 1319, type: !4722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5835 = !DISubprogram(name: "pci_request_region", scope: !204, file: !204, line: 1447, type: !5836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5836 = !DISubroutineType(types: !5837)
!5837 = !{!109, !202, !109, !191}
!5838 = !DISubprogram(name: "acpi_walk_resources", scope: !4978, file: !4978, line: 819, type: !5839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5839 = !DISubroutineType(types: !5840)
!5840 = !{!163, !175, !355, !5841, !170}
!5841 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_resource_callback", file: !4978, line: 791, baseType: !5842)
!5842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5843, size: 64)
!5843 = !DISubroutineType(types: !5844)
!5844 = !{!163, !5845, !170}
!5845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5846, size: 64)
!5846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !5847, line: 678, size: 544, elements: !5848)
!5847 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e234732d1e15cdbb059f7f7ffd573c0")
!5848 = !{!5849, !5850, !5851}
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5846, file: !5847, line: 679, baseType: !165, size: 32)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5846, file: !5847, line: 680, baseType: !165, size: 32, offset: 32)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5846, file: !5847, line: 681, baseType: !5852, size: 480, offset: 64)
!5852 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !5847, line: 639, size: 480, elements: !5853)
!5853 = !{!5854, !5873, !5890, !5896, !5904, !5909, !5915, !5920, !5927, !5931, !5939, !5947, !5953, !5993, !6011, !6029, !6041, !6062, !6070, !6090, !6106, !6126, !6148, !6163, !6176, !6188, !6201, !6215, !6226, !6238, !6247}
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5852, file: !5847, line: 640, baseType: !5855, size: 56)
!5855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !5847, line: 138, size: 56, elements: !5856)
!5856 = !{!5857, !5858, !5859, !5860, !5861, !5862, !5863}
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !5855, file: !5847, line: 139, baseType: !317, size: 8)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !5855, file: !5847, line: 140, baseType: !317, size: 8, offset: 8)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5855, file: !5847, line: 141, baseType: !317, size: 8, offset: 16)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5855, file: !5847, line: 142, baseType: !317, size: 8, offset: 24)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !5855, file: !5847, line: 143, baseType: !317, size: 8, offset: 32)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !5855, file: !5847, line: 144, baseType: !317, size: 8, offset: 40)
!5863 = !DIDerivedType(tag: DW_TAG_member, scope: !5855, file: !5847, line: 145, baseType: !5864, size: 8, offset: 48)
!5864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5855, file: !5847, line: 145, size: 8, elements: !5865)
!5865 = !{!5866, !5867}
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !5864, file: !5847, line: 146, baseType: !317, size: 8)
!5867 = !DIDerivedType(tag: DW_TAG_member, scope: !5864, file: !5847, line: 147, baseType: !5868)
!5868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5864, file: !5847, line: 147, elements: !5869)
!5869 = !{!5870, !5872}
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !5868, file: !5847, line: 147, baseType: !5871)
!5871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5868, file: !5847, line: 147, elements: !977)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !5868, file: !5847, line: 147, baseType: !3519)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5852, file: !5847, line: 641, baseType: !5874, size: 40)
!5874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !5847, line: 151, size: 40, elements: !5875)
!5875 = !{!5876, !5877, !5878, !5879, !5880}
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5874, file: !5847, line: 152, baseType: !317, size: 8)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !5874, file: !5847, line: 153, baseType: !317, size: 8, offset: 8)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !5874, file: !5847, line: 154, baseType: !317, size: 8, offset: 16)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !5874, file: !5847, line: 155, baseType: !317, size: 8, offset: 24)
!5880 = !DIDerivedType(tag: DW_TAG_member, scope: !5874, file: !5847, line: 156, baseType: !5881, size: 8, offset: 32)
!5881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5874, file: !5847, line: 156, size: 8, elements: !5882)
!5882 = !{!5883, !5884}
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !5881, file: !5847, line: 157, baseType: !317, size: 8)
!5884 = !DIDerivedType(tag: DW_TAG_member, scope: !5881, file: !5847, line: 158, baseType: !5885)
!5885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5881, file: !5847, line: 158, elements: !5886)
!5886 = !{!5887, !5889}
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_channels", scope: !5885, file: !5847, line: 158, baseType: !5888)
!5888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5885, file: !5847, line: 158, elements: !977)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !5885, file: !5847, line: 158, baseType: !3519)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !5852, file: !5847, line: 642, baseType: !5891, size: 24)
!5891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !5847, line: 162, size: 24, elements: !5892)
!5892 = !{!5893, !5894, !5895}
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !5891, file: !5847, line: 163, baseType: !317, size: 8)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !5891, file: !5847, line: 164, baseType: !317, size: 8, offset: 8)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !5891, file: !5847, line: 165, baseType: !317, size: 8, offset: 16)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !5852, file: !5847, line: 643, baseType: !5897, size: 56)
!5897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !5847, line: 173, size: 56, elements: !5898)
!5898 = !{!5899, !5900, !5901, !5902, !5903}
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !5897, file: !5847, line: 174, baseType: !317, size: 8)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5897, file: !5847, line: 175, baseType: !317, size: 8, offset: 8)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5897, file: !5847, line: 176, baseType: !317, size: 8, offset: 16)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5897, file: !5847, line: 177, baseType: !324, size: 16, offset: 24)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5897, file: !5847, line: 178, baseType: !324, size: 16, offset: 40)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !5852, file: !5847, line: 644, baseType: !5905, size: 24)
!5905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !5847, line: 181, size: 24, elements: !5906)
!5906 = !{!5907, !5908}
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5905, file: !5847, line: 182, baseType: !324, size: 16)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5905, file: !5847, line: 183, baseType: !317, size: 8, offset: 16)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !5852, file: !5847, line: 645, baseType: !5910, size: 40)
!5910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !5847, line: 186, size: 40, elements: !5911)
!5911 = !{!5912, !5913, !5914}
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !5910, file: !5847, line: 187, baseType: !324, size: 16)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !5910, file: !5847, line: 188, baseType: !324, size: 16, offset: 16)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5910, file: !5847, line: 189, baseType: !317, size: 8, offset: 32)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5852, file: !5847, line: 646, baseType: !5916, size: 16)
!5916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !5847, line: 201, size: 16, elements: !5917)
!5917 = !{!5918, !5919}
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !5916, file: !5847, line: 202, baseType: !324, size: 16)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !5916, file: !5847, line: 203, baseType: !3519, offset: 16)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !5852, file: !5847, line: 647, baseType: !5921, size: 152)
!5921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !5847, line: 208, size: 152, elements: !5922)
!5922 = !{!5923, !5924, !5925, !5926}
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !5921, file: !5847, line: 209, baseType: !324, size: 16)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !5921, file: !5847, line: 210, baseType: !317, size: 8, offset: 16)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !5921, file: !5847, line: 211, baseType: !3239, size: 128, offset: 24)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !5921, file: !5847, line: 212, baseType: !3519, offset: 152)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !5852, file: !5847, line: 648, baseType: !5928, size: 8)
!5928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !5847, line: 215, size: 8, elements: !5929)
!5929 = !{!5930}
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !5928, file: !5847, line: 216, baseType: !317, size: 8)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !5852, file: !5847, line: 649, baseType: !5932, size: 72)
!5932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !5847, line: 219, size: 72, elements: !5933)
!5933 = !{!5934, !5935, !5936, !5937, !5938}
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5932, file: !5847, line: 220, baseType: !317, size: 8)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5932, file: !5847, line: 221, baseType: !324, size: 16, offset: 8)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5932, file: !5847, line: 222, baseType: !324, size: 16, offset: 24)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5932, file: !5847, line: 223, baseType: !324, size: 16, offset: 40)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5932, file: !5847, line: 224, baseType: !324, size: 16, offset: 56)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !5852, file: !5847, line: 650, baseType: !5940, size: 136)
!5940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !5847, line: 227, size: 136, elements: !5941)
!5941 = !{!5942, !5943, !5944, !5945, !5946}
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5940, file: !5847, line: 228, baseType: !317, size: 8)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5940, file: !5847, line: 229, baseType: !165, size: 32, offset: 8)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5940, file: !5847, line: 230, baseType: !165, size: 32, offset: 40)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5940, file: !5847, line: 231, baseType: !165, size: 32, offset: 72)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5940, file: !5847, line: 232, baseType: !165, size: 32, offset: 104)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !5852, file: !5847, line: 651, baseType: !5948, size: 72)
!5948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !5847, line: 235, size: 72, elements: !5949)
!5949 = !{!5950, !5951, !5952}
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5948, file: !5847, line: 236, baseType: !317, size: 8)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5948, file: !5847, line: 237, baseType: !165, size: 32, offset: 8)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5948, file: !5847, line: 238, baseType: !165, size: 32, offset: 40)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !5852, file: !5847, line: 652, baseType: !5954, size: 240)
!5954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !5847, line: 312, size: 240, elements: !5955)
!5955 = !{!5956, !5957, !5958, !5959, !5960, !5961, !5979, !5987}
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5954, file: !5847, line: 313, baseType: !317, size: 8)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5954, file: !5847, line: 313, baseType: !317, size: 8, offset: 8)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5954, file: !5847, line: 313, baseType: !317, size: 8, offset: 16)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5954, file: !5847, line: 313, baseType: !317, size: 8, offset: 24)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5954, file: !5847, line: 313, baseType: !317, size: 8, offset: 32)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5954, file: !5847, line: 313, baseType: !5962, size: 32, offset: 40)
!5962 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !5847, line: 255, size: 32, elements: !5963)
!5963 = !{!5964, !5971, !5978}
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !5962, file: !5847, line: 256, baseType: !5965, size: 32)
!5965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !5847, line: 241, size: 32, elements: !5966)
!5966 = !{!5967, !5968, !5969, !5970}
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5965, file: !5847, line: 242, baseType: !317, size: 8)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !5965, file: !5847, line: 243, baseType: !317, size: 8, offset: 8)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !5965, file: !5847, line: 244, baseType: !317, size: 8, offset: 16)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !5965, file: !5847, line: 245, baseType: !317, size: 8, offset: 24)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !5962, file: !5847, line: 257, baseType: !5972, size: 32)
!5972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !5847, line: 248, size: 32, elements: !5973)
!5973 = !{!5974, !5975, !5976, !5977}
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !5972, file: !5847, line: 249, baseType: !317, size: 8)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !5972, file: !5847, line: 250, baseType: !317, size: 8, offset: 8)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !5972, file: !5847, line: 251, baseType: !317, size: 8, offset: 16)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !5972, file: !5847, line: 252, baseType: !317, size: 8, offset: 24)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !5962, file: !5847, line: 261, baseType: !317, size: 8)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5954, file: !5847, line: 313, baseType: !5980, size: 80, offset: 72)
!5980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !5847, line: 285, size: 80, elements: !5981)
!5981 = !{!5982, !5983, !5984, !5985, !5986}
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !5980, file: !5847, line: 286, baseType: !324, size: 16)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5980, file: !5847, line: 287, baseType: !324, size: 16, offset: 16)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5980, file: !5847, line: 288, baseType: !324, size: 16, offset: 32)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !5980, file: !5847, line: 289, baseType: !324, size: 16, offset: 48)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5980, file: !5847, line: 290, baseType: !324, size: 16, offset: 64)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5954, file: !5847, line: 314, baseType: !5988, size: 88, offset: 152)
!5988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !5847, line: 269, size: 88, elements: !5989)
!5989 = !{!5990, !5991, !5992}
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5988, file: !5847, line: 270, baseType: !317, size: 8)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !5988, file: !5847, line: 271, baseType: !324, size: 16, offset: 8)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !5988, file: !5847, line: 272, baseType: !355, size: 64, offset: 24)
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !5852, file: !5847, line: 653, baseType: !5994, size: 320)
!5994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !5847, line: 317, size: 320, elements: !5995)
!5995 = !{!5996, !5997, !5998, !5999, !6000, !6001, !6002, !6010}
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5994, file: !5847, line: 318, baseType: !317, size: 8)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5994, file: !5847, line: 318, baseType: !317, size: 8, offset: 8)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5994, file: !5847, line: 318, baseType: !317, size: 8, offset: 16)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5994, file: !5847, line: 318, baseType: !317, size: 8, offset: 24)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5994, file: !5847, line: 318, baseType: !317, size: 8, offset: 32)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5994, file: !5847, line: 318, baseType: !5962, size: 32, offset: 40)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5994, file: !5847, line: 318, baseType: !6003, size: 160, offset: 72)
!6003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !5847, line: 293, size: 160, elements: !6004)
!6004 = !{!6005, !6006, !6007, !6008, !6009}
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !6003, file: !5847, line: 294, baseType: !165, size: 32)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !6003, file: !5847, line: 295, baseType: !165, size: 32, offset: 32)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !6003, file: !5847, line: 296, baseType: !165, size: 32, offset: 64)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !6003, file: !5847, line: 297, baseType: !165, size: 32, offset: 96)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !6003, file: !5847, line: 298, baseType: !165, size: 32, offset: 128)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5994, file: !5847, line: 319, baseType: !5988, size: 88, offset: 232)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !5852, file: !5847, line: 654, baseType: !6012, size: 480)
!6012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !5847, line: 322, size: 480, elements: !6013)
!6013 = !{!6014, !6015, !6016, !6017, !6018, !6019, !6020, !6028}
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !6012, file: !5847, line: 323, baseType: !317, size: 8)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6012, file: !5847, line: 323, baseType: !317, size: 8, offset: 8)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !6012, file: !5847, line: 323, baseType: !317, size: 8, offset: 16)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !6012, file: !5847, line: 323, baseType: !317, size: 8, offset: 24)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !6012, file: !5847, line: 323, baseType: !317, size: 8, offset: 32)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6012, file: !5847, line: 323, baseType: !5962, size: 32, offset: 40)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !6012, file: !5847, line: 323, baseType: !6021, size: 320, offset: 72)
!6021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !5847, line: 301, size: 320, elements: !6022)
!6022 = !{!6023, !6024, !6025, !6026, !6027}
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !6021, file: !5847, line: 302, baseType: !186, size: 64)
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !6021, file: !5847, line: 303, baseType: !186, size: 64, offset: 64)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !6021, file: !5847, line: 304, baseType: !186, size: 64, offset: 128)
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !6021, file: !5847, line: 305, baseType: !186, size: 64, offset: 192)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !6021, file: !5847, line: 306, baseType: !186, size: 64, offset: 256)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6012, file: !5847, line: 324, baseType: !5988, size: 88, offset: 392)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !5852, file: !5847, line: 655, baseType: !6030, size: 464)
!6030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !5847, line: 327, size: 464, elements: !6031)
!6031 = !{!6032, !6033, !6034, !6035, !6036, !6037, !6038, !6039, !6040}
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !6030, file: !5847, line: 328, baseType: !317, size: 8)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6030, file: !5847, line: 328, baseType: !317, size: 8, offset: 8)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !6030, file: !5847, line: 328, baseType: !317, size: 8, offset: 16)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !6030, file: !5847, line: 328, baseType: !317, size: 8, offset: 24)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !6030, file: !5847, line: 328, baseType: !317, size: 8, offset: 32)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6030, file: !5847, line: 328, baseType: !5962, size: 32, offset: 40)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !6030, file: !5847, line: 328, baseType: !317, size: 8, offset: 72)
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !6030, file: !5847, line: 329, baseType: !6021, size: 320, offset: 80)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !6030, file: !5847, line: 330, baseType: !186, size: 64, offset: 400)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !5852, file: !5847, line: 656, baseType: !6042, size: 168)
!6042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !5847, line: 333, size: 168, elements: !6043)
!6043 = !{!6044, !6045, !6046, !6047, !6048, !6049, !6050, !6051}
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6042, file: !5847, line: 334, baseType: !317, size: 8)
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !6042, file: !5847, line: 335, baseType: !317, size: 8, offset: 8)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !6042, file: !5847, line: 336, baseType: !317, size: 8, offset: 16)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !6042, file: !5847, line: 337, baseType: !317, size: 8, offset: 24)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !6042, file: !5847, line: 338, baseType: !317, size: 8, offset: 32)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !6042, file: !5847, line: 339, baseType: !317, size: 8, offset: 40)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6042, file: !5847, line: 340, baseType: !5988, size: 88, offset: 48)
!6051 = !DIDerivedType(tag: DW_TAG_member, scope: !6042, file: !5847, line: 341, baseType: !6052, size: 32, offset: 136)
!6052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6042, file: !5847, line: 341, size: 32, elements: !6053)
!6053 = !{!6054, !6055}
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !6052, file: !5847, line: 342, baseType: !165, size: 32)
!6055 = !DIDerivedType(tag: DW_TAG_member, scope: !6052, file: !5847, line: 343, baseType: !6056)
!6056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6052, file: !5847, line: 343, elements: !6057)
!6057 = !{!6058, !6060}
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !6056, file: !5847, line: 343, baseType: !6059)
!6059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6056, file: !5847, line: 343, elements: !977)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !6056, file: !5847, line: 343, baseType: !6061)
!6061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, elements: !1840)
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !5852, file: !5847, line: 657, baseType: !6063, size: 96)
!6063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !5847, line: 347, size: 96, elements: !6064)
!6064 = !{!6065, !6066, !6067, !6068, !6069}
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !6063, file: !5847, line: 348, baseType: !317, size: 8)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !6063, file: !5847, line: 349, baseType: !317, size: 8, offset: 8)
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !6063, file: !5847, line: 350, baseType: !317, size: 8, offset: 16)
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !6063, file: !5847, line: 351, baseType: !317, size: 8, offset: 24)
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !6063, file: !5847, line: 352, baseType: !186, size: 64, offset: 32)
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !5852, file: !5847, line: 658, baseType: !6071, size: 352)
!6071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !5847, line: 355, size: 352, elements: !6072)
!6072 = !{!6073, !6074, !6075, !6076, !6077, !6078, !6079, !6080, !6081, !6082, !6083, !6084, !6085, !6086, !6087, !6089}
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6071, file: !5847, line: 356, baseType: !317, size: 8)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !6071, file: !5847, line: 357, baseType: !317, size: 8, offset: 8)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6071, file: !5847, line: 358, baseType: !317, size: 8, offset: 16)
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !6071, file: !5847, line: 359, baseType: !317, size: 8, offset: 24)
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !6071, file: !5847, line: 360, baseType: !317, size: 8, offset: 32)
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !6071, file: !5847, line: 361, baseType: !317, size: 8, offset: 40)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !6071, file: !5847, line: 362, baseType: !317, size: 8, offset: 48)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !6071, file: !5847, line: 363, baseType: !317, size: 8, offset: 56)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !6071, file: !5847, line: 364, baseType: !317, size: 8, offset: 64)
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !6071, file: !5847, line: 365, baseType: !324, size: 16, offset: 72)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !6071, file: !5847, line: 366, baseType: !324, size: 16, offset: 88)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !6071, file: !5847, line: 367, baseType: !324, size: 16, offset: 104)
!6085 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6071, file: !5847, line: 368, baseType: !324, size: 16, offset: 120)
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6071, file: !5847, line: 369, baseType: !5988, size: 88, offset: 136)
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !6071, file: !5847, line: 370, baseType: !6088, size: 64, offset: 224)
!6088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6071, file: !5847, line: 371, baseType: !5323, size: 64, offset: 288)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !5852, file: !5847, line: 659, baseType: !6091, size: 288)
!6091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !5847, line: 422, size: 288, elements: !6092)
!6092 = !{!6093, !6094, !6095, !6096, !6097, !6098, !6099, !6100, !6101, !6102, !6103, !6104, !6105}
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6091, file: !5847, line: 423, baseType: !317, size: 8)
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6091, file: !5847, line: 423, baseType: !317, size: 8, offset: 8)
!6095 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6091, file: !5847, line: 423, baseType: !317, size: 8, offset: 16)
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !6091, file: !5847, line: 423, baseType: !317, size: 8, offset: 24)
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !6091, file: !5847, line: 423, baseType: !317, size: 8, offset: 32)
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !6091, file: !5847, line: 423, baseType: !317, size: 8, offset: 40)
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !6091, file: !5847, line: 423, baseType: !324, size: 16, offset: 48)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6091, file: !5847, line: 423, baseType: !324, size: 16, offset: 64)
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6091, file: !5847, line: 423, baseType: !5988, size: 88, offset: 80)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6091, file: !5847, line: 423, baseType: !5323, size: 64, offset: 168)
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !6091, file: !5847, line: 423, baseType: !317, size: 8, offset: 232)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !6091, file: !5847, line: 424, baseType: !324, size: 16, offset: 240)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !6091, file: !5847, line: 425, baseType: !165, size: 32, offset: 256)
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !5852, file: !5847, line: 660, baseType: !6107, size: 320)
!6107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !5847, line: 433, size: 320, elements: !6108)
!6108 = !{!6109, !6110, !6111, !6112, !6113, !6114, !6115, !6116, !6117, !6118, !6119, !6120, !6121, !6122, !6123, !6124, !6125}
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6107, file: !5847, line: 434, baseType: !317, size: 8)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6107, file: !5847, line: 434, baseType: !317, size: 8, offset: 8)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6107, file: !5847, line: 434, baseType: !317, size: 8, offset: 16)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !6107, file: !5847, line: 434, baseType: !317, size: 8, offset: 24)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !6107, file: !5847, line: 434, baseType: !317, size: 8, offset: 32)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !6107, file: !5847, line: 434, baseType: !317, size: 8, offset: 40)
!6115 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !6107, file: !5847, line: 434, baseType: !324, size: 16, offset: 48)
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6107, file: !5847, line: 434, baseType: !324, size: 16, offset: 64)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6107, file: !5847, line: 434, baseType: !5988, size: 88, offset: 80)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6107, file: !5847, line: 434, baseType: !5323, size: 64, offset: 168)
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !6107, file: !5847, line: 434, baseType: !317, size: 8, offset: 232)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !6107, file: !5847, line: 435, baseType: !317, size: 8, offset: 240)
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !6107, file: !5847, line: 436, baseType: !317, size: 8, offset: 248)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !6107, file: !5847, line: 437, baseType: !317, size: 8, offset: 256)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !6107, file: !5847, line: 438, baseType: !317, size: 8, offset: 264)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !6107, file: !5847, line: 439, baseType: !324, size: 16, offset: 272)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !6107, file: !5847, line: 440, baseType: !165, size: 32, offset: 288)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !5852, file: !5847, line: 661, baseType: !6127, size: 344)
!6127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !5847, line: 463, size: 344, elements: !6128)
!6128 = !{!6129, !6130, !6131, !6132, !6133, !6134, !6135, !6136, !6137, !6138, !6139, !6140, !6141, !6142, !6143, !6144, !6145, !6146, !6147}
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6127, file: !5847, line: 464, baseType: !317, size: 8)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6127, file: !5847, line: 464, baseType: !317, size: 8, offset: 8)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6127, file: !5847, line: 464, baseType: !317, size: 8, offset: 16)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !6127, file: !5847, line: 464, baseType: !317, size: 8, offset: 24)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !6127, file: !5847, line: 464, baseType: !317, size: 8, offset: 32)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !6127, file: !5847, line: 464, baseType: !317, size: 8, offset: 40)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !6127, file: !5847, line: 464, baseType: !324, size: 16, offset: 48)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6127, file: !5847, line: 464, baseType: !324, size: 16, offset: 64)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6127, file: !5847, line: 464, baseType: !5988, size: 88, offset: 80)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6127, file: !5847, line: 464, baseType: !5323, size: 64, offset: 168)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !6127, file: !5847, line: 464, baseType: !317, size: 8, offset: 232)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !6127, file: !5847, line: 465, baseType: !317, size: 8, offset: 240)
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !6127, file: !5847, line: 466, baseType: !317, size: 8, offset: 248)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !6127, file: !5847, line: 467, baseType: !317, size: 8, offset: 256)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !6127, file: !5847, line: 468, baseType: !317, size: 8, offset: 264)
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !6127, file: !5847, line: 469, baseType: !317, size: 8, offset: 272)
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !6127, file: !5847, line: 470, baseType: !324, size: 16, offset: 280)
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !6127, file: !5847, line: 471, baseType: !324, size: 16, offset: 296)
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !6127, file: !5847, line: 472, baseType: !165, size: 32, offset: 312)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "csi2_serial_bus", scope: !5852, file: !5847, line: 662, baseType: !6149, size: 248)
!6149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_csi2_serialbus", file: !5847, line: 518, size: 248, elements: !6150)
!6150 = !{!6151, !6152, !6153, !6154, !6155, !6156, !6157, !6158, !6159, !6160, !6161, !6162}
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6149, file: !5847, line: 519, baseType: !317, size: 8)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6149, file: !5847, line: 519, baseType: !317, size: 8, offset: 8)
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6149, file: !5847, line: 519, baseType: !317, size: 8, offset: 16)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !6149, file: !5847, line: 519, baseType: !317, size: 8, offset: 24)
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !6149, file: !5847, line: 519, baseType: !317, size: 8, offset: 32)
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !6149, file: !5847, line: 519, baseType: !317, size: 8, offset: 40)
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !6149, file: !5847, line: 519, baseType: !324, size: 16, offset: 48)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6149, file: !5847, line: 519, baseType: !324, size: 16, offset: 64)
!6159 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6149, file: !5847, line: 519, baseType: !5988, size: 88, offset: 80)
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6149, file: !5847, line: 519, baseType: !5323, size: 64, offset: 168)
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "local_port_instance", scope: !6149, file: !5847, line: 519, baseType: !317, size: 8, offset: 232)
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "phy_type", scope: !6149, file: !5847, line: 520, baseType: !317, size: 8, offset: 240)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !5852, file: !5847, line: 663, baseType: !6164, size: 232)
!6164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !5847, line: 407, size: 232, elements: !6165)
!6165 = !{!6166, !6167, !6168, !6169, !6170, !6171, !6172, !6173, !6174, !6175}
!6166 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6164, file: !5847, line: 408, baseType: !317, size: 8)
!6167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6164, file: !5847, line: 408, baseType: !317, size: 8, offset: 8)
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6164, file: !5847, line: 408, baseType: !317, size: 8, offset: 16)
!6169 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !6164, file: !5847, line: 408, baseType: !317, size: 8, offset: 24)
!6170 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !6164, file: !5847, line: 408, baseType: !317, size: 8, offset: 32)
!6171 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !6164, file: !5847, line: 408, baseType: !317, size: 8, offset: 40)
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !6164, file: !5847, line: 408, baseType: !324, size: 16, offset: 48)
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6164, file: !5847, line: 408, baseType: !324, size: 16, offset: 64)
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6164, file: !5847, line: 408, baseType: !5988, size: 88, offset: 80)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6164, file: !5847, line: 408, baseType: !5323, size: 64, offset: 168)
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !5852, file: !5847, line: 664, baseType: !6177, size: 288)
!6177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !5847, line: 523, size: 288, elements: !6178)
!6178 = !{!6179, !6180, !6181, !6182, !6183, !6184, !6185, !6186, !6187}
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6177, file: !5847, line: 524, baseType: !317, size: 8)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !6177, file: !5847, line: 525, baseType: !317, size: 8, offset: 8)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !6177, file: !5847, line: 526, baseType: !317, size: 8, offset: 16)
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !6177, file: !5847, line: 527, baseType: !324, size: 16, offset: 24)
!6183 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !6177, file: !5847, line: 528, baseType: !324, size: 16, offset: 40)
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6177, file: !5847, line: 529, baseType: !324, size: 16, offset: 56)
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6177, file: !5847, line: 530, baseType: !5988, size: 88, offset: 72)
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !6177, file: !5847, line: 531, baseType: !6088, size: 64, offset: 160)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6177, file: !5847, line: 532, baseType: !5323, size: 64, offset: 224)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !5852, file: !5847, line: 665, baseType: !6189, size: 312)
!6189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !5847, line: 535, size: 312, elements: !6190)
!6190 = !{!6191, !6192, !6193, !6194, !6195, !6196, !6197, !6198, !6199, !6200}
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6189, file: !5847, line: 536, baseType: !317, size: 8)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6189, file: !5847, line: 537, baseType: !317, size: 8, offset: 8)
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !6189, file: !5847, line: 538, baseType: !317, size: 8, offset: 16)
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !6189, file: !5847, line: 539, baseType: !317, size: 8, offset: 24)
!6195 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !6189, file: !5847, line: 540, baseType: !165, size: 32, offset: 32)
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !6189, file: !5847, line: 541, baseType: !324, size: 16, offset: 64)
!6197 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6189, file: !5847, line: 542, baseType: !324, size: 16, offset: 80)
!6198 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6189, file: !5847, line: 543, baseType: !5988, size: 88, offset: 96)
!6199 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !6189, file: !5847, line: 544, baseType: !6088, size: 64, offset: 184)
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6189, file: !5847, line: 545, baseType: !5323, size: 64, offset: 248)
!6201 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !5852, file: !5847, line: 666, baseType: !6202, size: 256)
!6202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !5847, line: 574, size: 256, elements: !6203)
!6203 = !{!6204, !6205, !6206, !6207, !6208, !6209, !6214}
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6202, file: !5847, line: 575, baseType: !317, size: 8)
!6205 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6202, file: !5847, line: 576, baseType: !317, size: 8, offset: 8)
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !6202, file: !5847, line: 577, baseType: !324, size: 16, offset: 16)
!6207 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6202, file: !5847, line: 578, baseType: !324, size: 16, offset: 32)
!6208 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !6202, file: !5847, line: 579, baseType: !6088, size: 64, offset: 48)
!6209 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !6202, file: !5847, line: 580, baseType: !6210, size: 80, offset: 112)
!6210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !5847, line: 264, size: 80, elements: !6211)
!6211 = !{!6212, !6213}
!6212 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !6210, file: !5847, line: 265, baseType: !324, size: 16)
!6213 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !6210, file: !5847, line: 266, baseType: !355, size: 64, offset: 16)
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6202, file: !5847, line: 581, baseType: !5323, size: 64, offset: 192)
!6215 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !5852, file: !5847, line: 667, baseType: !6216, size: 288)
!6216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !5847, line: 584, size: 288, elements: !6217)
!6217 = !{!6218, !6219, !6220, !6221, !6222, !6223, !6224, !6225}
!6218 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6216, file: !5847, line: 585, baseType: !317, size: 8)
!6219 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6216, file: !5847, line: 586, baseType: !317, size: 8, offset: 8)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !6216, file: !5847, line: 587, baseType: !317, size: 8, offset: 16)
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !6216, file: !5847, line: 588, baseType: !324, size: 16, offset: 24)
!6222 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6216, file: !5847, line: 589, baseType: !324, size: 16, offset: 40)
!6223 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6216, file: !5847, line: 590, baseType: !5988, size: 88, offset: 56)
!6224 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !6216, file: !5847, line: 591, baseType: !6210, size: 80, offset: 144)
!6225 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6216, file: !5847, line: 592, baseType: !5323, size: 64, offset: 224)
!6226 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !5852, file: !5847, line: 668, baseType: !6227, size: 312)
!6227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !5847, line: 595, size: 312, elements: !6228)
!6228 = !{!6229, !6230, !6231, !6232, !6233, !6234, !6235, !6236, !6237}
!6229 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6227, file: !5847, line: 596, baseType: !317, size: 8)
!6230 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6227, file: !5847, line: 597, baseType: !317, size: 8, offset: 8)
!6231 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !6227, file: !5847, line: 598, baseType: !317, size: 8, offset: 16)
!6232 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !6227, file: !5847, line: 599, baseType: !317, size: 8, offset: 24)
!6233 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !6227, file: !5847, line: 600, baseType: !165, size: 32, offset: 32)
!6234 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6227, file: !5847, line: 601, baseType: !324, size: 16, offset: 64)
!6235 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6227, file: !5847, line: 602, baseType: !5988, size: 88, offset: 80)
!6236 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !6227, file: !5847, line: 603, baseType: !6210, size: 80, offset: 168)
!6237 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6227, file: !5847, line: 604, baseType: !5323, size: 64, offset: 248)
!6238 = !DIDerivedType(tag: DW_TAG_member, name: "clock_input", scope: !5852, file: !5847, line: 669, baseType: !6239, size: 160)
!6239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_clock_input", file: !5847, line: 548, size: 160, elements: !6240)
!6240 = !{!6241, !6242, !6243, !6244, !6245, !6246}
!6241 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6239, file: !5847, line: 549, baseType: !317, size: 8)
!6242 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !6239, file: !5847, line: 550, baseType: !317, size: 8, offset: 8)
!6243 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !6239, file: !5847, line: 551, baseType: !317, size: 8, offset: 16)
!6244 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_divisor", scope: !6239, file: !5847, line: 552, baseType: !324, size: 16, offset: 24)
!6245 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_numerator", scope: !6239, file: !5847, line: 553, baseType: !165, size: 32, offset: 40)
!6246 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6239, file: !5847, line: 554, baseType: !5988, size: 88, offset: 72)
!6247 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5852, file: !5847, line: 673, baseType: !6248, size: 72)
!6248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !5847, line: 309, size: 72, elements: !6249)
!6249 = !{!6250, !6251, !6252, !6253, !6254, !6255}
!6250 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !6248, file: !5847, line: 310, baseType: !317, size: 8)
!6251 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6248, file: !5847, line: 310, baseType: !317, size: 8, offset: 8)
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !6248, file: !5847, line: 310, baseType: !317, size: 8, offset: 16)
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !6248, file: !5847, line: 310, baseType: !317, size: 8, offset: 24)
!6254 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !6248, file: !5847, line: 310, baseType: !317, size: 8, offset: 32)
!6255 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6248, file: !5847, line: 310, baseType: !5962, size: 32, offset: 40)
!6256 = distinct !DISubprogram(name: "setup_res", scope: !3, file: !3, line: 41, type: !5843, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6257)
!6257 = !{!6258, !6259, !6260, !6261}
!6258 = !DILocalVariable(name: "acpi_res", arg: 1, scope: !6256, file: !3, line: 41, type: !5845)
!6259 = !DILocalVariable(name: "data", arg: 2, scope: !6256, file: !3, line: 41, type: !170)
!6260 = !DILocalVariable(name: "res", scope: !6256, file: !3, line: 43, type: !198)
!6261 = !DILocalVariable(name: "win", scope: !6256, file: !3, line: 44, type: !6262)
!6262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource_win", file: !6263, line: 14, size: 576, elements: !6264)
!6263 = !DIFile(filename: "./include/linux/resource_ext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "38257f3d7ebf1230f659bba39b1a0b6a")
!6264 = !{!6265, !6266}
!6265 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !6262, file: !6263, line: 15, baseType: !179, size: 512)
!6266 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !6262, file: !6263, line: 16, baseType: !183, size: 64, offset: 512)
!6267 = !DILocation(line: 41, column: 52, scope: !6256)
!6268 = !DILocation(line: 41, column: 68, scope: !6256)
!6269 = !DILocation(line: 43, column: 2, scope: !6256)
!6270 = !DILocation(line: 43, column: 19, scope: !6256)
!6271 = !DILocation(line: 43, column: 25, scope: !6256)
!6272 = !DILocation(line: 44, column: 2, scope: !6256)
!6273 = !DILocation(line: 44, column: 22, scope: !6256)
!6274 = !DILocation(line: 50, column: 2, scope: !6256)
!6275 = !DILocation(line: 52, column: 2, scope: !6256)
!6276 = !DILocation(line: 52, column: 7, scope: !6256)
!6277 = !DILocation(line: 52, column: 13, scope: !6256)
!6278 = !DILocation(line: 53, column: 36, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6256, file: !3, line: 53, column: 6)
!6280 = !DILocation(line: 53, column: 6, scope: !6279)
!6281 = !DILocation(line: 53, column: 6, scope: !6256)
!6282 = !DILocation(line: 54, column: 3, scope: !6279)
!6283 = !DILocation(line: 56, column: 32, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6256, file: !3, line: 56, column: 6)
!6285 = !DILocation(line: 56, column: 42, scope: !6284)
!6286 = !DILocation(line: 56, column: 7, scope: !6284)
!6287 = !DILocation(line: 56, column: 6, scope: !6256)
!6288 = !DILocation(line: 57, column: 39, scope: !6289)
!6289 = distinct !DILexicalBlock(scope: !6290, file: !3, line: 57, column: 7)
!6290 = distinct !DILexicalBlock(scope: !6284, file: !3, line: 56, column: 48)
!6291 = !DILocation(line: 57, column: 7, scope: !6289)
!6292 = !DILocation(line: 57, column: 55, scope: !6289)
!6293 = !DILocation(line: 58, column: 43, scope: !6289)
!6294 = !DILocation(line: 58, column: 7, scope: !6289)
!6295 = !DILocation(line: 57, column: 7, scope: !6290)
!6296 = !DILocation(line: 59, column: 5, scope: !6289)
!6297 = !DILocation(line: 59, column: 15, scope: !6289)
!6298 = !DILocation(line: 59, column: 4, scope: !6289)
!6299 = !DILocation(line: 60, column: 2, scope: !6290)
!6300 = !DILocation(line: 61, column: 7, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6256, file: !3, line: 61, column: 6)
!6302 = !DILocation(line: 61, column: 12, scope: !6301)
!6303 = !DILocation(line: 61, column: 18, scope: !6301)
!6304 = !DILocation(line: 61, column: 41, scope: !6301)
!6305 = !DILocation(line: 62, column: 7, scope: !6301)
!6306 = !DILocation(line: 62, column: 12, scope: !6301)
!6307 = !DILocation(line: 62, column: 18, scope: !6301)
!6308 = !DILocation(line: 61, column: 6, scope: !6256)
!6309 = !DILocation(line: 63, column: 3, scope: !6301)
!6310 = !DILocation(line: 63, column: 8, scope: !6301)
!6311 = !DILocation(line: 63, column: 14, scope: !6301)
!6312 = !DILocation(line: 65, column: 2, scope: !6256)
!6313 = !DILocation(line: 66, column: 1, scope: !6256)
!6314 = !DISubprogram(name: "insert_resource", scope: !180, file: !180, line: 203, type: !6315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6315 = !DISubroutineType(types: !6316)
!6316 = !{!109, !198, !198}
!6317 = !DISubprogram(name: "acpi_register_ioapic", scope: !5636, file: !5636, line: 330, type: !6318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6318 = !DISubroutineType(types: !6319)
!6319 = !{!109, !175, !186, !165}
!6320 = distinct !DISubprogram(name: "list_add", scope: !5643, file: !5643, line: 167, type: !6321, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6323)
!6321 = !DISubroutineType(types: !6322)
!6322 = !{null, !210, !210}
!6323 = !{!6324, !6325}
!6324 = !DILocalVariable(name: "new", arg: 1, scope: !6320, file: !5643, line: 167, type: !210)
!6325 = !DILocalVariable(name: "head", arg: 2, scope: !6320, file: !5643, line: 167, type: !210)
!6326 = !DILocation(line: 167, column: 47, scope: !6320)
!6327 = !DILocation(line: 167, column: 70, scope: !6320)
!6328 = !DILocation(line: 169, column: 13, scope: !6320)
!6329 = !DILocation(line: 169, column: 18, scope: !6320)
!6330 = !DILocation(line: 169, column: 24, scope: !6320)
!6331 = !DILocation(line: 169, column: 30, scope: !6320)
!6332 = !DILocation(line: 169, column: 2, scope: !6320)
!6333 = !DILocation(line: 170, column: 1, scope: !6320)
!6334 = !DISubprogram(name: "_dev_info", scope: !6335, file: !6335, line: 56, type: !6336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6335 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6336 = !DISubroutineType(types: !6337)
!6337 = !{null, !4213, !191, null}
!6338 = !DISubprogram(name: "acpi_has_method", scope: !257, file: !257, line: 42, type: !6339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6339 = !DISubroutineType(types: !6340)
!6340 = !{!770, !175, !355}
!6341 = !DISubprogram(name: "acpi_get_object_info", scope: !4978, file: !4978, line: 565, type: !6342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6342 = !DISubroutineType(types: !6343)
!6343 = !{!163, !175, !6344}
!6344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5670, size: 64)
!6345 = !DISubprogram(name: "strcmp", scope: !6346, file: !6346, line: 88, type: !6347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6346 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6347 = !DISubroutineType(types: !6348)
!6348 = !{!109, !191, !191}
!6349 = distinct !DISubprogram(name: "kmalloc", scope: !153, file: !153, line: 591, type: !5778, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6350)
!6350 = !{!6351, !6352, !6353}
!6351 = !DILocalVariable(name: "size", arg: 1, scope: !6349, file: !153, line: 591, type: !402)
!6352 = !DILocalVariable(name: "flags", arg: 2, scope: !6349, file: !153, line: 591, type: !1202)
!6353 = !DILocalVariable(name: "index", scope: !6354, file: !153, line: 594, type: !7)
!6354 = distinct !DILexicalBlock(scope: !6355, file: !153, line: 593, column: 42)
!6355 = distinct !DILexicalBlock(scope: !6349, file: !153, line: 593, column: 6)
!6356 = !DILocation(line: 591, column: 61, scope: !6349)
!6357 = !DILocation(line: 591, column: 73, scope: !6349)
!6358 = !DILocation(line: 593, column: 27, scope: !6355)
!6359 = !DILocation(line: 593, column: 6, scope: !6355)
!6360 = !DILocation(line: 593, column: 33, scope: !6355)
!6361 = !DILocation(line: 593, column: 36, scope: !6355)
!6362 = !DILocation(line: 593, column: 6, scope: !6349)
!6363 = !DILocation(line: 594, column: 3, scope: !6354)
!6364 = !DILocation(line: 594, column: 16, scope: !6354)
!6365 = !DILocation(line: 596, column: 7, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6354, file: !153, line: 596, column: 7)
!6367 = !DILocation(line: 596, column: 12, scope: !6366)
!6368 = !DILocation(line: 596, column: 7, scope: !6354)
!6369 = !DILocation(line: 597, column: 25, scope: !6366)
!6370 = !DILocation(line: 597, column: 31, scope: !6366)
!6371 = !DILocation(line: 597, column: 11, scope: !6366)
!6372 = !DILocation(line: 597, column: 4, scope: !6366)
!6373 = !DILocation(line: 599, column: 11, scope: !6354)
!6374 = !DILocation(line: 599, column: 9, scope: !6354)
!6375 = !DILocation(line: 601, column: 33, scope: !6354)
!6376 = !DILocation(line: 601, column: 40, scope: !6354)
!6377 = !DILocation(line: 601, column: 20, scope: !6354)
!6378 = !DILocation(line: 601, column: 5, scope: !6354)
!6379 = !DILocation(line: 601, column: 51, scope: !6354)
!6380 = !DILocation(line: 602, column: 5, scope: !6354)
!6381 = !DILocation(line: 602, column: 12, scope: !6354)
!6382 = !DILocation(line: 600, column: 10, scope: !6354)
!6383 = !DILocation(line: 600, column: 3, scope: !6354)
!6384 = !DILocation(line: 603, column: 2, scope: !6355)
!6385 = !DILocation(line: 604, column: 19, scope: !6349)
!6386 = !DILocation(line: 604, column: 25, scope: !6349)
!6387 = !DILocation(line: 604, column: 9, scope: !6349)
!6388 = !DILocation(line: 604, column: 2, scope: !6349)
!6389 = !DILocation(line: 605, column: 1, scope: !6349)
!6390 = !DISubprogram(name: "kmalloc_large", scope: !153, file: !153, line: 531, type: !5778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6391 = distinct !DISubprogram(name: "__kmalloc_index", scope: !153, file: !153, line: 444, type: !6392, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6394)
!6392 = !DISubroutineType(types: !6393)
!6393 = !{!7, !402, !770}
!6394 = !{!6395, !6396}
!6395 = !DILocalVariable(name: "size", arg: 1, scope: !6391, file: !153, line: 444, type: !402)
!6396 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6391, file: !153, line: 445, type: !770)
!6397 = !DILocation(line: 444, column: 60, scope: !6391)
!6398 = !DILocation(line: 445, column: 16, scope: !6391)
!6399 = !DILocation(line: 447, column: 7, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 447, column: 6)
!6401 = !DILocation(line: 447, column: 6, scope: !6391)
!6402 = !DILocation(line: 448, column: 3, scope: !6400)
!6403 = !DILocation(line: 450, column: 6, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 450, column: 6)
!6405 = !DILocation(line: 450, column: 11, scope: !6404)
!6406 = !DILocation(line: 450, column: 6, scope: !6391)
!6407 = !DILocation(line: 451, column: 3, scope: !6404)
!6408 = !DILocation(line: 453, column: 32, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 453, column: 6)
!6410 = !DILocation(line: 453, column: 37, scope: !6409)
!6411 = !DILocation(line: 453, column: 42, scope: !6409)
!6412 = !DILocation(line: 453, column: 45, scope: !6409)
!6413 = !DILocation(line: 453, column: 50, scope: !6409)
!6414 = !DILocation(line: 453, column: 6, scope: !6391)
!6415 = !DILocation(line: 454, column: 3, scope: !6409)
!6416 = !DILocation(line: 455, column: 32, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 455, column: 6)
!6418 = !DILocation(line: 455, column: 37, scope: !6417)
!6419 = !DILocation(line: 455, column: 43, scope: !6417)
!6420 = !DILocation(line: 455, column: 46, scope: !6417)
!6421 = !DILocation(line: 455, column: 51, scope: !6417)
!6422 = !DILocation(line: 455, column: 6, scope: !6391)
!6423 = !DILocation(line: 456, column: 3, scope: !6417)
!6424 = !DILocation(line: 457, column: 6, scope: !6425)
!6425 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 457, column: 6)
!6426 = !DILocation(line: 457, column: 11, scope: !6425)
!6427 = !DILocation(line: 457, column: 6, scope: !6391)
!6428 = !DILocation(line: 457, column: 26, scope: !6425)
!6429 = !DILocation(line: 458, column: 6, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 458, column: 6)
!6431 = !DILocation(line: 458, column: 11, scope: !6430)
!6432 = !DILocation(line: 458, column: 6, scope: !6391)
!6433 = !DILocation(line: 458, column: 26, scope: !6430)
!6434 = !DILocation(line: 459, column: 6, scope: !6435)
!6435 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 459, column: 6)
!6436 = !DILocation(line: 459, column: 11, scope: !6435)
!6437 = !DILocation(line: 459, column: 6, scope: !6391)
!6438 = !DILocation(line: 459, column: 26, scope: !6435)
!6439 = !DILocation(line: 460, column: 6, scope: !6440)
!6440 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 460, column: 6)
!6441 = !DILocation(line: 460, column: 11, scope: !6440)
!6442 = !DILocation(line: 460, column: 6, scope: !6391)
!6443 = !DILocation(line: 460, column: 26, scope: !6440)
!6444 = !DILocation(line: 461, column: 6, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 461, column: 6)
!6446 = !DILocation(line: 461, column: 11, scope: !6445)
!6447 = !DILocation(line: 461, column: 6, scope: !6391)
!6448 = !DILocation(line: 461, column: 26, scope: !6445)
!6449 = !DILocation(line: 462, column: 6, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 462, column: 6)
!6451 = !DILocation(line: 462, column: 11, scope: !6450)
!6452 = !DILocation(line: 462, column: 6, scope: !6391)
!6453 = !DILocation(line: 462, column: 26, scope: !6450)
!6454 = !DILocation(line: 463, column: 6, scope: !6455)
!6455 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 463, column: 6)
!6456 = !DILocation(line: 463, column: 11, scope: !6455)
!6457 = !DILocation(line: 463, column: 6, scope: !6391)
!6458 = !DILocation(line: 463, column: 26, scope: !6455)
!6459 = !DILocation(line: 464, column: 6, scope: !6460)
!6460 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 464, column: 6)
!6461 = !DILocation(line: 464, column: 11, scope: !6460)
!6462 = !DILocation(line: 464, column: 6, scope: !6391)
!6463 = !DILocation(line: 464, column: 26, scope: !6460)
!6464 = !DILocation(line: 465, column: 6, scope: !6465)
!6465 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 465, column: 6)
!6466 = !DILocation(line: 465, column: 11, scope: !6465)
!6467 = !DILocation(line: 465, column: 6, scope: !6391)
!6468 = !DILocation(line: 465, column: 26, scope: !6465)
!6469 = !DILocation(line: 466, column: 6, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 466, column: 6)
!6471 = !DILocation(line: 466, column: 11, scope: !6470)
!6472 = !DILocation(line: 466, column: 6, scope: !6391)
!6473 = !DILocation(line: 466, column: 26, scope: !6470)
!6474 = !DILocation(line: 467, column: 6, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 467, column: 6)
!6476 = !DILocation(line: 467, column: 11, scope: !6475)
!6477 = !DILocation(line: 467, column: 6, scope: !6391)
!6478 = !DILocation(line: 467, column: 26, scope: !6475)
!6479 = !DILocation(line: 468, column: 6, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 468, column: 6)
!6481 = !DILocation(line: 468, column: 11, scope: !6480)
!6482 = !DILocation(line: 468, column: 6, scope: !6391)
!6483 = !DILocation(line: 468, column: 26, scope: !6480)
!6484 = !DILocation(line: 469, column: 6, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 469, column: 6)
!6486 = !DILocation(line: 469, column: 11, scope: !6485)
!6487 = !DILocation(line: 469, column: 6, scope: !6391)
!6488 = !DILocation(line: 469, column: 26, scope: !6485)
!6489 = !DILocation(line: 470, column: 6, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 470, column: 6)
!6491 = !DILocation(line: 470, column: 11, scope: !6490)
!6492 = !DILocation(line: 470, column: 6, scope: !6391)
!6493 = !DILocation(line: 470, column: 26, scope: !6490)
!6494 = !DILocation(line: 471, column: 6, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 471, column: 6)
!6496 = !DILocation(line: 471, column: 11, scope: !6495)
!6497 = !DILocation(line: 471, column: 6, scope: !6391)
!6498 = !DILocation(line: 471, column: 26, scope: !6495)
!6499 = !DILocation(line: 472, column: 6, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 472, column: 6)
!6501 = !DILocation(line: 472, column: 11, scope: !6500)
!6502 = !DILocation(line: 472, column: 6, scope: !6391)
!6503 = !DILocation(line: 472, column: 26, scope: !6500)
!6504 = !DILocation(line: 473, column: 6, scope: !6505)
!6505 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 473, column: 6)
!6506 = !DILocation(line: 473, column: 11, scope: !6505)
!6507 = !DILocation(line: 473, column: 6, scope: !6391)
!6508 = !DILocation(line: 473, column: 26, scope: !6505)
!6509 = !DILocation(line: 474, column: 6, scope: !6510)
!6510 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 474, column: 6)
!6511 = !DILocation(line: 474, column: 11, scope: !6510)
!6512 = !DILocation(line: 474, column: 6, scope: !6391)
!6513 = !DILocation(line: 474, column: 27, scope: !6510)
!6514 = !DILocation(line: 475, column: 6, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 475, column: 6)
!6516 = !DILocation(line: 475, column: 11, scope: !6515)
!6517 = !DILocation(line: 475, column: 6, scope: !6391)
!6518 = !DILocation(line: 475, column: 32, scope: !6515)
!6519 = !DILocation(line: 477, column: 50, scope: !6520)
!6520 = distinct !DILexicalBlock(scope: !6391, file: !153, line: 477, column: 6)
!6521 = !DILocation(line: 477, column: 6, scope: !6391)
!6522 = !DILocation(line: 478, column: 3, scope: !6520)
!6523 = !DILocation(line: 478, column: 3, scope: !6524)
!6524 = distinct !DILexicalBlock(scope: !6525, file: !153, line: 478, column: 3)
!6525 = distinct !DILexicalBlock(scope: !6520, file: !153, line: 478, column: 3)
!6526 = !{i32 -2143557087}
!6527 = !DILocation(line: 478, column: 3, scope: !6525)
!6528 = !DILocation(line: 480, column: 3, scope: !6520)
!6529 = !DILocation(line: 480, column: 3, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6520, file: !153, line: 480, column: 3)
!6531 = !DILocation(line: 480, column: 3, scope: !6532)
!6532 = distinct !DILexicalBlock(scope: !6530, file: !153, line: 480, column: 3)
!6533 = !DILocation(line: 480, column: 3, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6530, file: !153, line: 480, column: 3)
!6535 = !{i64 2151410412, i64 2151410441, i64 2151410487, i64 2151410545, i64 2151410599, i64 2151410653, i64 2151410708, i64 2151410739}
!6536 = !DILocation(line: 483, column: 2, scope: !6391)
!6537 = !DILocation(line: 484, column: 1, scope: !6391)
!6538 = !DISubprogram(name: "kmalloc_trace", scope: !153, file: !153, line: 525, type: !6539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6539 = !DISubroutineType(types: !6540)
!6540 = !{!170, !6541, !1202, !402}
!6541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6542, size: 64)
!6542 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6543, line: 11, flags: DIFlagFwdDecl)
!6543 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6544 = distinct !DISubprogram(name: "kmalloc_type", scope: !153, file: !153, line: 401, type: !6545, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6547)
!6545 = !DISubroutineType(types: !6546)
!6546 = !{!152, !1202, !195}
!6547 = !{!6548, !6549}
!6548 = !DILocalVariable(name: "flags", arg: 1, scope: !6544, file: !153, line: 401, type: !1202)
!6549 = !DILocalVariable(name: "caller", arg: 2, scope: !6544, file: !153, line: 401, type: !195)
!6550 = !DILocation(line: 401, column: 67, scope: !6544)
!6551 = !DILocation(line: 401, column: 88, scope: !6544)
!6552 = !DILocation(line: 407, column: 6, scope: !6553)
!6553 = distinct !DILexicalBlock(scope: !6544, file: !153, line: 407, column: 6)
!6554 = !DILocation(line: 407, column: 6, scope: !6544)
!6555 = !DILocation(line: 413, column: 3, scope: !6553)
!6556 = !DILocation(line: 423, column: 38, scope: !6557)
!6557 = distinct !DILexicalBlock(scope: !6544, file: !153, line: 423, column: 6)
!6558 = !DILocation(line: 423, column: 44, scope: !6557)
!6559 = !DILocation(line: 423, column: 6, scope: !6544)
!6560 = !DILocation(line: 424, column: 3, scope: !6557)
!6561 = !DILocation(line: 426, column: 3, scope: !6562)
!6562 = distinct !DILexicalBlock(scope: !6544, file: !153, line: 425, column: 6)
!6563 = !DILocation(line: 429, column: 1, scope: !6544)
!6564 = !DISubprogram(name: "__kmalloc", scope: !153, file: !153, line: 488, type: !5778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6565 = !DISubprogram(name: "__compiletime_assert_117", scope: !153, file: !153, line: 478, type: !1053, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6566 = !DISubprogram(name: "acpi_dev_filter_resource_type", scope: !5636, file: !5636, line: 502, type: !6567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6567 = !DISubroutineType(types: !6568)
!6568 = !{!109, !5845, !195}
!6569 = !DISubprogram(name: "acpi_dev_resource_memory", scope: !5636, file: !5636, line: 484, type: !6570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6570 = !DISubroutineType(types: !6571)
!6571 = !{!770, !5845, !198}
!6572 = !DISubprogram(name: "acpi_dev_resource_address_space", scope: !5636, file: !5636, line: 486, type: !6573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6573 = !DISubroutineType(types: !6574)
!6574 = !{!770, !5845, !6575}
!6575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6262, size: 64)
!6576 = !DISubprogram(name: "acpi_dev_resource_ext_address_space", scope: !5636, file: !5636, line: 488, type: !6573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6577 = distinct !DISubprogram(name: "__list_add", scope: !5643, file: !5643, line: 146, type: !6578, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6580)
!6578 = !DISubroutineType(types: !6579)
!6579 = !{null, !210, !210, !210}
!6580 = !{!6581, !6582, !6583}
!6581 = !DILocalVariable(name: "new", arg: 1, scope: !6577, file: !5643, line: 146, type: !210)
!6582 = !DILocalVariable(name: "prev", arg: 2, scope: !6577, file: !5643, line: 147, type: !210)
!6583 = !DILocalVariable(name: "next", arg: 3, scope: !6577, file: !5643, line: 148, type: !210)
!6584 = !DILocation(line: 146, column: 49, scope: !6577)
!6585 = !DILocation(line: 147, column: 28, scope: !6577)
!6586 = !DILocation(line: 148, column: 28, scope: !6577)
!6587 = !DILocation(line: 150, column: 24, scope: !6588)
!6588 = distinct !DILexicalBlock(scope: !6577, file: !5643, line: 150, column: 6)
!6589 = !DILocation(line: 150, column: 29, scope: !6588)
!6590 = !DILocation(line: 150, column: 35, scope: !6588)
!6591 = !DILocation(line: 150, column: 7, scope: !6588)
!6592 = !DILocation(line: 150, column: 6, scope: !6577)
!6593 = !DILocation(line: 151, column: 3, scope: !6588)
!6594 = !DILocation(line: 153, column: 15, scope: !6577)
!6595 = !DILocation(line: 153, column: 2, scope: !6577)
!6596 = !DILocation(line: 153, column: 8, scope: !6577)
!6597 = !DILocation(line: 153, column: 13, scope: !6577)
!6598 = !DILocation(line: 154, column: 14, scope: !6577)
!6599 = !DILocation(line: 154, column: 2, scope: !6577)
!6600 = !DILocation(line: 154, column: 7, scope: !6577)
!6601 = !DILocation(line: 154, column: 12, scope: !6577)
!6602 = !DILocation(line: 155, column: 14, scope: !6577)
!6603 = !DILocation(line: 155, column: 2, scope: !6577)
!6604 = !DILocation(line: 155, column: 7, scope: !6577)
!6605 = !DILocation(line: 155, column: 12, scope: !6577)
!6606 = !DILocation(line: 156, column: 2, scope: !6577)
!6607 = !DILocation(line: 156, column: 2, scope: !6608)
!6608 = distinct !DILexicalBlock(scope: !6577, file: !5643, line: 156, column: 2)
!6609 = !DILocation(line: 156, column: 2, scope: !6610)
!6610 = distinct !DILexicalBlock(scope: !6608, file: !5643, line: 156, column: 2)
!6611 = !DILocation(line: 156, column: 2, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !6608, file: !5643, line: 156, column: 2)
!6613 = !DILocation(line: 157, column: 1, scope: !6577)
!6614 = distinct !DISubprogram(name: "__list_add_valid", scope: !5643, file: !5643, line: 128, type: !6615, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6617)
!6615 = !DISubroutineType(types: !6616)
!6616 = !{!770, !210, !210, !210}
!6617 = !{!6618, !6619, !6620}
!6618 = !DILocalVariable(name: "new", arg: 1, scope: !6614, file: !5643, line: 128, type: !210)
!6619 = !DILocalVariable(name: "prev", arg: 2, scope: !6614, file: !5643, line: 129, type: !210)
!6620 = !DILocalVariable(name: "next", arg: 3, scope: !6614, file: !5643, line: 130, type: !210)
!6621 = !DILocation(line: 128, column: 55, scope: !6614)
!6622 = !DILocation(line: 129, column: 23, scope: !6614)
!6623 = !DILocation(line: 130, column: 23, scope: !6614)
!6624 = !DILocation(line: 132, column: 2, scope: !6614)
!6625 = distinct !DISubprogram(name: "__list_del_entry", scope: !5643, file: !5643, line: 213, type: !5644, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6626)
!6626 = !{!6627}
!6627 = !DILocalVariable(name: "entry", arg: 1, scope: !6625, file: !5643, line: 213, type: !210)
!6628 = !DILocation(line: 213, column: 55, scope: !6625)
!6629 = !DILocation(line: 215, column: 30, scope: !6630)
!6630 = distinct !DILexicalBlock(scope: !6625, file: !5643, line: 215, column: 6)
!6631 = !DILocation(line: 215, column: 7, scope: !6630)
!6632 = !DILocation(line: 215, column: 6, scope: !6625)
!6633 = !DILocation(line: 216, column: 3, scope: !6630)
!6634 = !DILocation(line: 218, column: 13, scope: !6625)
!6635 = !DILocation(line: 218, column: 20, scope: !6625)
!6636 = !DILocation(line: 218, column: 26, scope: !6625)
!6637 = !DILocation(line: 218, column: 33, scope: !6625)
!6638 = !DILocation(line: 218, column: 2, scope: !6625)
!6639 = !DILocation(line: 219, column: 1, scope: !6625)
!6640 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5643, file: !5643, line: 134, type: !6641, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6643)
!6641 = !DISubroutineType(types: !6642)
!6642 = !{!770, !210}
!6643 = !{!6644}
!6644 = !DILocalVariable(name: "entry", arg: 1, scope: !6640, file: !5643, line: 134, type: !210)
!6645 = !DILocation(line: 134, column: 61, scope: !6640)
!6646 = !DILocation(line: 136, column: 2, scope: !6640)
!6647 = distinct !DISubprogram(name: "__list_del", scope: !5643, file: !5643, line: 193, type: !6321, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6648)
!6648 = !{!6649, !6650}
!6649 = !DILocalVariable(name: "prev", arg: 1, scope: !6647, file: !5643, line: 193, type: !210)
!6650 = !DILocalVariable(name: "next", arg: 2, scope: !6647, file: !5643, line: 193, type: !210)
!6651 = !DILocation(line: 193, column: 50, scope: !6647)
!6652 = !DILocation(line: 193, column: 75, scope: !6647)
!6653 = !DILocation(line: 195, column: 15, scope: !6647)
!6654 = !DILocation(line: 195, column: 2, scope: !6647)
!6655 = !DILocation(line: 195, column: 8, scope: !6647)
!6656 = !DILocation(line: 195, column: 13, scope: !6647)
!6657 = !DILocation(line: 196, column: 2, scope: !6647)
!6658 = !DILocation(line: 196, column: 2, scope: !6659)
!6659 = distinct !DILexicalBlock(scope: !6647, file: !5643, line: 196, column: 2)
!6660 = !DILocation(line: 196, column: 2, scope: !6661)
!6661 = distinct !DILexicalBlock(scope: !6659, file: !5643, line: 196, column: 2)
!6662 = !DILocation(line: 196, column: 2, scope: !6663)
!6663 = distinct !DILexicalBlock(scope: !6659, file: !5643, line: 196, column: 2)
!6664 = !DILocation(line: 197, column: 1, scope: !6647)
